inline.NumInlined: 1159
inline.NumDeleted: 543
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1s_Cs33K2ylI4knu_10hir_expandNtB6_11MacroCallId27parse_macro_expansion_error:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.e
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !1302, !noundef !24
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsqiF3OZxLbD_3mbe11ValueResultINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorENtCs33K2ylI4knu_10hir_expand11ExpandErrorEEB2C_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEECs33K2ylI4knu_10hir_expand.exit.i
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsqiF3OZxLbD_3mbe11ValueResultINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorENtCs33K2ylI4knu_10hir_expand11ExpandErrorEEB2C_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEEBZ_.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsqiF3OZxLbD_3mbe11ValueResultINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorENtCs33K2ylI4knu_10hir_expand11ExpandErrorEEB2C_.exit: ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEECs33K2ylI4knu_10hir_expand.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs1s_Cs33K2ylI4knu_10hir_expandNtB6_11MacroCallId29macro_arg_considering_derives(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %4, align 8, !range !522, !noundef !24
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1305
  %i.h = load <2 x i32>, ptr %i.g, align 4
  store <2 x i32> %i.h, ptr %i.d, align 8, !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1308
  store ptr %2, ptr %i.c, align 8, !noalias !1308
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.i, align 8, !noalias !1308
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.j, align 8, !noalias !1308
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1308
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1308
  %i.k = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRTNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtCs33K2ylI4knu_10hir_expand5fixup19SyntaxFixupUndoInfoNtCsdovh4xi6v3I_4span4SpanEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs1s_B2D_NtB2D_11MacroCallId9macro_arg10macro_arg_0E0B1T_EB2D_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @98, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1305
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1311
  store i32 %0, ptr %i.b, align 4, !noalias !1314
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %1, ptr %i.l, align 4, !noalias !1314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1314
  store ptr %2, ptr %i.a, align 8, !noalias !1314
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.m, align 8, !noalias !1314
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.n, align 8, !noalias !1314
  %.sroa.4.0..sroa_idx.i.i1 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i.i1, align 8, !noalias !1314
  %.sroa.5.0..sroa_idx.i.i2 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i2, align 8, !noalias !1314
  %i.o = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRTNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtCs33K2ylI4knu_10hir_expand5fixup19SyntaxFixupUndoInfoNtCsdovh4xi6v3I_4span4SpanEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs1s_B2D_NtB2D_11MacroCallId9macro_arg10macro_arg_0E0B1T_EB2D_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @98, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1311
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs1s_Cs33K2ylI4knu_10hir_expandNtB6_11MacroCallId9macro_arg(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %0, ptr %i.b, align 4, !noalias !1317
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %1, ptr %i.c, align 4, !noalias !1317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1317
  store ptr %2, ptr %i.a, align 8, !noalias !1317
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.d, align 8, !noalias !1317
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 8, !noalias !1317
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1317
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1317
  %i.f = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRTNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtCs33K2ylI4knu_10hir_expand5fixup19SyntaxFixupUndoInfoNtCsdovh4xi6v3I_4span4SpanEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs1s_B2D_NtB2D_11MacroCallId9macro_arg10macro_arg_0E0B1T_EB2D_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @98, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB7_11MacroCallId10ingredient(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE13get_or_createNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE24get_or_create_index_slowNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE, ptr noundef nonnull align 8 %0) #37
  br label %_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE13get_or_createNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_.exit

_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE13get_or_createNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_.exit: ; preds = %bb.a, %bb.b
  %.sink5.i = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !24
  %i.h = zext i32 %.sink5.i to i64                ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h
  %.sroa.0.0.i = load ptr, ptr %i.j, align 8, !nonnull !24, !noundef !24
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs33K2ylI4knu_10hir_expand(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #37
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId14expansion_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %4) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsd_Cs33K2ylI4knu_10hir_expandNtB5_13ExpansionInfo3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %4, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId15expansion_level(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !alias.scope !1320, !nonnull !24
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.sroa.01.0 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.h ]
  %.sroa.3.0 = phi i32 [ %1, %bb.a ], [ %.sroa.8.0, %bb.h ]
  %.sroa.0.0 = phi i32 [ %0, %bb.a ], [ %.sroa.7.0, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #36, !noalias !1320, !inline_history !1323 ; 4 uses
  %i.d = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4, !noalias !1320 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE24get_or_create_index_slowNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE, ptr noundef nonnull align 8 %i.c) #37, !noalias !1320
  br label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit

_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit: ; preds = %bb.b, %bb.c
  %.sink5.i.i.i = phi i32 [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1320, !nonnull !24, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !1320, !noundef !24
  %i.k = zext i32 %.sink5.i.i.i to i64            ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %.sroa.0.0.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1320, !nonnull !24, !noundef !24
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdE6fieldsBY_(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %.sroa.0.0, i32 noundef %.sroa.3.0), !noalias !1320 ; 4 uses
  %i.o = add i32 %.sroa.01.0, 1                   ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !range !522, !noundef !24 ; 3 uses
  %i.q = add nsw i32 %i.p, -2
  %.inv = icmp samesign ult i32 %i.p, 2
  %narrow = select i1 %.inv, i32 2, i32 %i.q
  switch i32 %narrow, label %bb.d [
    i32 0, label %bb.f
    i32 1, label %bb.e
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  unreachable

bb.e:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  br label %bb.f

bb.f:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, %bb.e
  %.sink19 = phi i64 [ 4, %bb.e ], [ 8, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ]
  %.sink17.ph = phi i64 [ 8, %bb.e ], [ 12, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ]
  %.sink.ph = phi i64 [ 12, %bb.e ], [ 16, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink19
  %.sroa.03.0.copyload4 = load i32, ptr %i.r, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %.sink17 = phi i64 [ 4, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %.sink17.ph, %bb.f ]
  %.sink = phi i64 [ 8, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %.sink.ph, %bb.f ]
  %.sroa.03.0 = phi i32 [ %i.p, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %.sroa.03.0.copyload4, %bb.f ]
  %i.s = trunc i32 %.sroa.03.0 to i1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink17
  %.sroa.7.0 = load i32, ptr %.sroa.7.0..sroa_idx8, align 4
  %.sroa.8.0 = load i32, ptr %.sroa.8.0..sroa_idx12, align 4
  br label %bb.b

bb.i:                                             ; preds = %bb.g
  ret i32 %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId16is_include_macro(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !alias.scope !1324, !nonnull !24
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #36, !noalias !1324, !inline_history !1323 ; 4 uses
  %i.d = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4, !noalias !1324 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE24get_or_create_index_slowNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE, ptr noundef nonnull align 8 %i.c) #37, !noalias !1324
  br label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit

_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit: ; preds = %bb.a, %bb.b
  %.sink5.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1324, !nonnull !24, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !1324, !noundef !24
  %i.k = zext i32 %.sink5.i.i.i to i64            ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %.sroa.0.0.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1324, !nonnull !24, !noundef !24
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdE6fieldsBY_(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !1324 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !390, !noundef !24
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.s = load i8, ptr %i.r, align 4, !range !1327, !noundef !24
  %i.t = icmp eq i8 %i.s, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %i.t, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId20is_env_or_option_env(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !alias.scope !1328, !nonnull !24
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #36, !noalias !1328, !inline_history !1323 ; 4 uses
  %i.d = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4, !noalias !1328 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE24get_or_create_index_slowNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE, ptr noundef nonnull align 8 %i.c) #37, !noalias !1328
  br label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit

_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit: ; preds = %bb.a, %bb.b
  %.sink5.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1328, !nonnull !24, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !1328, !noundef !24
  %i.k = zext i32 %.sink5.i.i.i to i64            ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %.sroa.0.0.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1328, !nonnull !24, !noundef !24
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdE6fieldsBY_(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !1328 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !390, !noundef !24
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.s = load i8, ptr %i.r, align 4, !range !1327, !noundef !24
  %i.t = and i8 %i.s, 6
  %switch = icmp eq i8 %i.t, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %switch, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId21is_include_like_macro(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !alias.scope !1331, !nonnull !24
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #36, !noalias !1331, !inline_history !1323 ; 4 uses
  %i.d = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4, !noalias !1331 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE24get_or_create_index_slowNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE, ptr noundef nonnull align 8 %i.c) #37, !noalias !1331
  br label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit

_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit: ; preds = %bb.a, %bb.b
  %.sink5.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1331, !nonnull !24, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !1331, !noundef !24
  %i.k = zext i32 %.sink5.i.i.i to i64            ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %.sroa.0.0.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1331, !nonnull !24, !noundef !24
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdE6fieldsBY_(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !1331 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !390, !noundef !24
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.s = load i8, ptr %i.r, align 4, !range !1327, !noundef !24
  %.off = add nsw i8 %i.s, -3
  %switch = icmp ult i8 %.off, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %switch, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId31is_derive_attr_pseudo_expansion(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !alias.scope !1334, !nonnull !24
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #36, !noalias !1334, !inline_history !1323 ; 4 uses
  %i.d = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4, !noalias !1334 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdEE24get_or_create_index_slowNCNvMs2_NvB1L_1__B1J_10ingredient0EB1L_(ptr noundef nonnull align 4 @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE, ptr noundef nonnull align 8 %i.c) #37, !noalias !1334
  br label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit

_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit: ; preds = %bb.a, %bb.b
  %.sink5.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1334, !nonnull !24, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !1334, !noundef !24
  %i.k = zext i32 %.sink5.i.i.i to i64            ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %.sroa.0.0.i.i.i = load ptr, ptr %i.m, align 8, !noalias !1334, !nonnull !24, !noundef !24
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtCs33K2ylI4knu_10hir_expand11MacroCallIdE6fieldsBY_(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, ptr noundef nonnull align 8 %i.c, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !1334 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !390, !noundef !24
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.s = load i8, ptr %i.r, align 4, !range !1337, !noundef !24
  %.off = add nsw i8 %i.s, -3
  %switch = icmp ult i8 %.off, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit ], [ %switch, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 7) i8 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId4kind(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !alias.scope !1338, !nonnull !24
  %i.c = tail call noundef nonnull align 8 ptr %i.b(ptr noundef nonnull %2) #36, !noalias !1338, !inline_history !1323 ; 4 uses
  %i.d = load atomic i32, ptr @_RNvNvMs2_NvCs33K2ylI4knu_10hir_expand1__NtB9_11MacroCallId10ingredient5CACHE acquire, align 4, !noalias !1338 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EB8_.exit, !prof !7

end_hunk_0
