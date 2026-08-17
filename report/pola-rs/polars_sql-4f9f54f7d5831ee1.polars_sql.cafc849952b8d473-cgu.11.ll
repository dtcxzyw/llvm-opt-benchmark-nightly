inline.NumInlined: 2170
inline.NumDeleted: 755
begin_hunk_0_@_RNvMs0_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE24with_capacity_and_hasherCshquuC4dCYVj_10polars_sql:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !14837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !14837
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14837
  store i64 %.sroa.0.0.i, ptr %i.g, align 8, !dbg !14837
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14837
  store <4 x i32> <i32 1, i32 -1, i32 1, i32 -1>, ptr %i.h, align 8, !dbg !14837
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14837
  store i64 %2, ptr %i.i, align 8, !dbg !14837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14838
  ret void, !dbg !14839

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14828
  unreachable, !dbg !14828
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE24with_capacity_and_hasherCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14840 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !14841 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14843
  %i.c = add i64 %.sroa.0.0.i, 1, !dbg !14845     ; 2 uses
  call void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE16with_capacity_inCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.c), !dbg !14846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14850
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE21with_capacity_and_keyCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.c)
          to label %bb.d unwind label %bb.c, !dbg !14850

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !14851

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !14852
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %bb.b unwind label %bb.e, !dbg !14856

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !14857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !14857
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14857
  store i64 %.sroa.0.0.i, ptr %i.g, align 8, !dbg !14857
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14857
  store <4 x i32> <i32 1, i32 -1, i32 1, i32 -1>, ptr %i.h, align 8, !dbg !14857
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14857
  store i64 %2, ptr %i.i, align 8, !dbg !14857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14858
  ret void, !dbg !14859

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14851
  unreachable, !dbg !14851
}

; Function Attrs: nonlazybind optsize uwtable
define hidden void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_17QualifyExpression7analyze(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14860 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14865
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(48) %i.a), !dbg !14866
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !14869 ; 2 uses
  store i8 0, ptr %i.b, align 8, !dbg !14869, !alias.scope !14870
  %i.c = invoke noundef zeroext i1 @_RINvXs7S_NtCsaRr8xKSRVhT_9sqlparser3astNtB7_4ExprNtNtB7_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !14873 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14875
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEBK_.exit unwind label %bb.d, !dbg !14886

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 8, !dbg !14887, !range !1917, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !14890
  store i8 %i.f, ptr %0, align 8, !dbg !14889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14891
  ret void, !dbg !14892

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14893
  unreachable, !dbg !14893

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEBK_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !14893
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 !dbg !14894 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !dbg !14895 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14896
  %i.c = load i32, ptr %i.b, align 8, !dbg !14896, !range !171, !noundef !13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28, !dbg !14896
  %i.e = load i32, ptr %i.d, align 4, !dbg !14896, !noundef !13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14896
  %i.g = load i32, ptr %i.f, align 8, !dbg !14896, !range !171, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !14896
  %i.i = load i32, ptr %i.h, align 4, !dbg !14896, !noundef !13 ; 3 uses
  %i.j = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c, i32 noundef %i.e), !dbg !14897 ; 3 uses
  %.not = icmp eq ptr %i.j, null, !dbg !14900
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14901

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !14902
  store i32 %i.g, ptr %i.k, align 8, !dbg !14902
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !14902
  store i32 %i.i, ptr %i.l, align 4, !dbg !14902
  br label %bb.d, !dbg !14903

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14904
  store i32 %i.g, ptr %i.m, align 8, !dbg !14904
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !14904
  store i32 %i.i, ptr %i.n, align 4, !dbg !14904
  br label %bb.d, !dbg !14903

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g, i32 noundef %i.i), !dbg !14905 ; 3 uses
  %.not4 = icmp eq ptr %i.o, null, !dbg !14907
  br i1 %.not4, label %bb.f, label %bb.e, !dbg !14908

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !14909
  store i32 %i.c, ptr %i.p, align 8, !dbg !14909
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 28, !dbg !14909
  store i32 %i.e, ptr %i.q, align 4, !dbg !14909
  br label %bb.g, !dbg !14910

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14911
  store i32 %i.c, ptr %i.r, align 8, !dbg !14911
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !14911
  store i32 %i.e, ptr %i.s, align 4, !dbg !14911
  br label %bb.g, !dbg !14910

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void, !dbg !14912
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 !dbg !14913 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14914 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !dbg !14914, !range !171, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !14914 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !dbg !14914, !noundef !13 ; 2 uses
  store i32 %1, ptr %i.a, align 8, !dbg !14915
  store i32 %2, ptr %i.c, align 4, !dbg !14915
  %i.e = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.b, i32 noundef %i.d), !dbg !14917 ; 3 uses
  %.not = icmp eq ptr %i.e, null, !dbg !14919
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14920

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !14921
  store i32 %1, ptr %i.f, align 8, !dbg !14921
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 28, !dbg !14921
  store i32 %2, ptr %i.g, align 4, !dbg !14921
  br label %bb.d, !dbg !14922

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14923
  store i32 %1, ptr %i.h, align 8, !dbg !14923
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !14923
  store i32 %2, ptr %i.i, align 4, !dbg !14923
  br label %bb.d, !dbg !14922

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index8IndexMutBN_E9index_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !dbg !14924 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !14925
  store i32 1, ptr %i.k, align 8, !dbg !14925
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 28, !dbg !14925
  store i32 -1, ptr %i.l, align 4, !dbg !14925
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !14927
  store i32 %i.b, ptr %i.m, align 8, !dbg !14927
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !14927
  store i32 %i.d, ptr %i.n, align 4, !dbg !14927
  ret void, !dbg !14928
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lruCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14929 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !14930
  %i.d = load i32, ptr %i.c, align 4, !dbg !14930, !noundef !13
  %i.e = icmp eq i32 %i.d, 0, !dbg !14933
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !14933

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !14934
  %i.g = load i32, ptr %i.f, align 8, !dbg !14934, !range !171, !noundef !13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76, !dbg !14934
  %i.i = load i32, ptr %i.h, align 4, !dbg !14934, !noundef !13 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !14935
  %i.k = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !dbg !14937
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14938
  %i.m = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !dbg !14939 ; 2 uses
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.g, i32 noundef %i.i), !dbg !14940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14942
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE6removeCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.i), !dbg !14943
  %i.n = load i32, ptr %i.b, align 8, !dbg !14944, !range !7202, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.n, 2, !dbg !14944
  br i1 %.not, label %bb.g, label %bb.d, !dbg !14947, !prof !50

bb.c:                                             ; preds = %bb.a, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit
  %.sink = phi i64 [ 20, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit ], [ 16, %bb.a ]
  %.sroa.4.0.copyload.sink = phi i32 [ %.sroa.4.0.copyload, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit ], [ 2, %bb.a ]
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !14948
  store i32 %.sroa.4.0.copyload.sink, ptr %.sroa.64.0..sroa_idx, align 4, !dbg !14948
  ret void, !dbg !14949

bb.d:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !14950
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !14950
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14950
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14950 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14950
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14951
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14954), !dbg !14957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14960), !dbg !14963
  %i.p = lshr i64 %i.m, 57, !dbg !14966
  %i.q = trunc nuw nsw i64 %i.p to i8, !dbg !14969
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !14970
  %i.s = load i64, ptr %i.r, align 8, !dbg !14970, !alias.scope !14972, !noalias !14973, !noundef !13 ; 3 uses
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !14972, !noalias !14973, !nonnull !13, !noundef !13 ; 4 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e, !dbg !14976

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.f ], !dbg !14977
  %.pn.i.i = phi i64 [ %i.m, %bb.d ], [ %i.ap, %bb.f ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.s, !dbg !14977 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i, !dbg !14978
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.w, align 1, !dbg !14981, !noalias !14985 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.v, !dbg !14988
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !14991 ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.y, 0, !dbg !14993
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !14996

.lr.ph.i:                                         ; preds = %bb.e, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.an, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true), !dbg !14997
  %i.aa = zext nneg i16 %i.z to i64, !dbg !15000
  %i.ab = add i64 %.sroa.01.0.i.i, %i.aa, !dbg !15001
  %i.ac = and i64 %i.ab, %i.s, !dbg !15001        ; 3 uses
  %i.ad = sub nsw i64 0, %i.ac, !dbg !15002
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad, !dbg !15011 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -4, !dbg !15012
  %.val3.i.i = load i32, ptr %i.af, align 4, !dbg !15012, !noalias !15013, !noundef !13
  %i.ag = icmp eq i32 %.val3.i.i, %i.i, !dbg !15016
  br i1 %i.ag, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !15016, !prof !203

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i: ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8, !dbg !15025
  %.val2.i.i = load i32, ptr %i.ah, align 4, !dbg !15012, !noalias !15013
  %i.ai = icmp eq i32 %.val2.i.i, %i.g, !dbg !15031
  br i1 %i.ai, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !15036, !prof !217

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.e
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !15038
  %i.ak = bitcast <16 x i1> %i.aj to i16, !dbg !15042
  %i.al = icmp eq i16 %i.ak, 0, !dbg !15044
  br i1 %i.al, label %bb.f, label %bb.h, !dbg !15044, !prof !50

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i, %.lr.ph.i
  %i.am = add i16 %.sroa.05.0.i34.i, -1, !dbg !15046
  %i.an = and i16 %i.am, %.sroa.05.0.i34.i, !dbg !15048 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.an, 0, !dbg !14993
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !14996

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = add i64 %.sroa.011.0.i.i, 16, !dbg !15050 ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao, !dbg !15052
  br label %bb.e, !dbg !14976

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #38, !dbg !15053
  unreachable, !dbg !15053

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15054, !noalias !15057
  store ptr %i.o, ptr %i.a, align 8, !dbg !15054, !noalias !15057
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #43, !dbg !15060, !noalias !15057
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15062), !dbg !15065
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac, !dbg !15068 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15076), !dbg !15079
  %i.ar = add nsw i64 %i.ac, -16, !dbg !15081
  %i.as = and i64 %i.ar, %i.s, !dbg !15086
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.as, !dbg !15087 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.at, align 1, !dbg !15094, !noalias !15099
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1), !dbg !15103
  %i.av = bitcast <16 x i1> %i.au to i16, !dbg !15110
  %.sroa.0.0.copyload.i926.i.i = load <16 x i8>, ptr %i.aq, align 1, !dbg !15113, !noalias !15117
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i, splat (i8 -1), !dbg !15120
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !15126
  %i.ay = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.av, i1 false), !dbg !15129
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 false), !dbg !15136
  %narrow.i.i = add nuw nsw i16 %i.az, %i.ay, !dbg !15141
  %i.ba = icmp samesign ugt i16 %narrow.i.i, 15, !dbg !15141
  br i1 %i.ba, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit, label %bb.i, !dbg !15141

bb.i:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !15142 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !15142, !alias.scope !15143, !noalias !15144, !noundef !13
  %i.bd = add i64 %i.bc, 1, !dbg !15142
  store i64 %i.bd, ptr %i.bb, align 8, !dbg !15142, !alias.scope !15143, !noalias !15144
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit, !dbg !15145

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit, %bb.i
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.i ], [ -128, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit ], !dbg !15146 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.aq, align 1, !dbg !15147, !noalias !15152
  %i.be = getelementptr i8, ptr %i.at, i64 16, !dbg !15153
  store i8 %.sroa.0.0.i.i, ptr %i.be, align 1, !dbg !15157, !noalias !15152
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !15158 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !15158, !alias.scope !15143, !noalias !15144, !noundef !13
  %i.bh = add i64 %i.bg, -1, !dbg !15158
  store i64 %i.bh, ptr %i.bf, align 8, !dbg !15158, !alias.scope !15143, !noalias !15144
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store ptr %.sroa.5.0.copyload, ptr %0, align 8, !dbg !15159
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15159
  store i64 %.sroa.6.0.copyload, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !15159
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15159
  store i32 %i.n, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !15159
  br label %bb.c, !dbg !14949
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 !dbg !15160 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !dbg !15161 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !15162
  %i.c = load i32, ptr %i.b, align 8, !dbg !15162, !range !171, !noundef !13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !15162
  %i.e = load i32, ptr %i.d, align 4, !dbg !15162, !noundef !13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !15162
  %i.g = load i32, ptr %i.f, align 8, !dbg !15162, !range !171, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 44, !dbg !15162
  %i.i = load i32, ptr %i.h, align 4, !dbg !15162, !noundef !13 ; 3 uses
  %i.j = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c, i32 noundef %i.e), !dbg !15163 ; 3 uses
  %.not = icmp eq ptr %i.j, null, !dbg !15166
  br i1 %.not, label %bb.c, label %bb.b, !dbg !15167

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !15168
  store i32 %i.g, ptr %i.k, align 8, !dbg !15168
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 44, !dbg !15168
  store i32 %i.i, ptr %i.l, align 4, !dbg !15168
  br label %bb.d, !dbg !15169

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15170
  store i32 %i.g, ptr %i.m, align 8, !dbg !15170
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !15170
  store i32 %i.i, ptr %i.n, align 4, !dbg !15170
  br label %bb.d, !dbg !15169

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g, i32 noundef %i.i), !dbg !15171 ; 3 uses
  %.not4 = icmp eq ptr %i.o, null, !dbg !15173
  br i1 %.not4, label %bb.f, label %bb.e, !dbg !15174

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !15175
  store i32 %i.c, ptr %i.p, align 8, !dbg !15175
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 36, !dbg !15175
  store i32 %i.e, ptr %i.q, align 4, !dbg !15175
  br label %bb.g, !dbg !15176

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15177
  store i32 %i.c, ptr %i.r, align 8, !dbg !15177
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !15177
  store i32 %i.e, ptr %i.s, align 4, !dbg !15177
  br label %bb.g, !dbg !15176

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void, !dbg !15178
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 !dbg !15179 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !15180 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !dbg !15180, !range !171, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !15180 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !dbg !15180, !noundef !13 ; 2 uses
  store i32 %1, ptr %i.a, align 8, !dbg !15181
  store i32 %2, ptr %i.c, align 4, !dbg !15181
  %i.e = tail call noundef align 8 ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE7get_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.b, i32 noundef %i.d), !dbg !15183 ; 3 uses
  %.not = icmp eq ptr %i.e, null, !dbg !15185
  br i1 %.not, label %bb.c, label %bb.b, !dbg !15186

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !15187
  store i32 %1, ptr %i.f, align 8, !dbg !15187
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36, !dbg !15187
  store i32 %2, ptr %i.g, align 4, !dbg !15187
  br label %bb.d, !dbg !15188

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15189
  store i32 %1, ptr %i.h, align 8, !dbg !15189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !15189
  store i32 %2, ptr %i.i, align 4, !dbg !15189
  br label %bb.d, !dbg !15188

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index8IndexMutBN_E9index_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !dbg !15190 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !15191
  store i32 1, ptr %i.k, align 8, !dbg !15191
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !15191
  store i32 -1, ptr %i.l, align 4, !dbg !15191
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !15193
  store i32 %i.b, ptr %i.m, align 8, !dbg !15193
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44, !dbg !15193
  store i32 %i.d, ptr %i.n, align 4, !dbg !15193
  ret void, !dbg !15194
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lruCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15195 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !15196
  %i.d = load i32, ptr %i.c, align 4, !dbg !15196, !noundef !13
  %i.e = icmp eq i32 %i.d, 0, !dbg !15199
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !15199

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !15200
  %i.g = load i32, ptr %i.f, align 8, !dbg !15200, !range !171, !noundef !13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76, !dbg !15200
  %i.i = load i32, ptr %i.h, align 4, !dbg !15200, !noundef !13 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !15201
  %i.k = tail call noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !dbg !15203
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15204
  %i.m = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !dbg !15205 ; 2 uses
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.g, i32 noundef %i.i), !dbg !15206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15208
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE6removeCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.i), !dbg !15209
  %i.n = load i64, ptr %i.b, align 8, !dbg !15210, !range !2305, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.n, 2, !dbg !15210
  br i1 %.not, label %bb.g, label %bb.d, !dbg !15213, !prof !50

bb.c:                                             ; preds = %bb.a, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit
  %.sink = phi i64 [ 24, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit ], [ 16, %bb.a ]
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql.exit ], [ 2, %bb.a ]
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !15214
  store i64 %.sroa.4.0.copyload.sink, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !15214
  ret void, !dbg !15215

bb.d:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15216
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15216
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15216
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15216 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !15216
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15217
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15218 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15220), !dbg !15223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15226), !dbg !15229
  %i.p = lshr i64 %i.m, 57, !dbg !15232
  %i.q = trunc nuw nsw i64 %i.p to i8, !dbg !15235
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15236
  %i.s = load i64, ptr %i.r, align 8, !dbg !15236, !alias.scope !15238, !noalias !15239, !noundef !13 ; 3 uses
  %i.t = load ptr, ptr %i.o, align 8, !alias.scope !15238, !noalias !15239, !nonnull !13, !noundef !13 ; 4 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e, !dbg !15242

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.f ], !dbg !15243
  %.pn.i.i = phi i64 [ %i.m, %bb.d ], [ %i.ap, %bb.f ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.s, !dbg !15243 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i, !dbg !15244
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.w, align 1, !dbg !15247, !noalias !15251 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.v, !dbg !15254
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !15257 ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.y, 0, !dbg !15259
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !15262

.lr.ph.i:                                         ; preds = %bb.e, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.an, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true), !dbg !15263
  %i.aa = zext nneg i16 %i.z to i64, !dbg !15266
  %i.ab = add i64 %.sroa.01.0.i.i, %i.aa, !dbg !15267
  %i.ac = and i64 %i.ab, %i.s, !dbg !15267        ; 3 uses
  %i.ad = sub nsw i64 0, %i.ac, !dbg !15268
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad, !dbg !15277 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -4, !dbg !15278
  %.val3.i.i = load i32, ptr %i.af, align 4, !dbg !15278, !noalias !15279, !noundef !13
  %i.ag = icmp eq i32 %.val3.i.i, %i.i, !dbg !15282
  br i1 %i.ag, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !15282, !prof !203

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i: ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8, !dbg !15290
  %.val2.i.i = load i32, ptr %i.ah, align 4, !dbg !15278, !noalias !15279
  %i.ai = icmp eq i32 %.val2.i.i, %i.g, !dbg !15296
  br i1 %i.ai, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql.exit, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !15301, !prof !217

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.e
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !15303
  %i.ak = bitcast <16 x i1> %i.aj to i16, !dbg !15307
  %i.al = icmp eq i16 %i.ak, 0, !dbg !15309
  br i1 %i.al, label %bb.f, label %bb.h, !dbg !15309, !prof !50

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0E0CshquuC4dCYVj_10polars_sql.exit.i, %.lr.ph.i
  %i.am = add i16 %.sroa.05.0.i34.i, -1, !dbg !15311
  %i.an = and i16 %i.am, %.sroa.05.0.i34.i, !dbg !15313 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.an, 0, !dbg !15259
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !15262

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = add i64 %.sroa.011.0.i.i, 16, !dbg !15315 ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao, !dbg !15317
  br label %bb.e, !dbg !15242

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #38, !dbg !15318
  unreachable, !dbg !15318

bb.h:                                             ; preds = %._crit_edge.i
end_hunk_0
begin_hunk_1_@memcmp
!14734 = !DILocation(line: 2587, column: 13, scope: !13826, inlinedAt: !14735)
!14735 = distinct !DILocation(line: 88, column: 41, scope: !13817, inlinedAt: !14728)
!14736 = !DILocation(line: 88, column: 5, scope: !13817, inlinedAt: !14728)
!14737 = !DILocation(line: 89, column: 5, scope: !13817, inlinedAt: !14728)
!14738 = !DILocation(line: 2587, column: 13, scope: !13826, inlinedAt: !14739)
!14739 = distinct !DILocation(line: 89, column: 35, scope: !13817, inlinedAt: !14728)
!14740 = !DILocation(line: 98, column: 75, scope: !14007, inlinedAt: !14741)
!14741 = distinct !DILocation(line: 836, column: 25, scope: !14011, inlinedAt: !14742)
!14742 = distinct !DILocation(line: 98, column: 61, scope: !13961, inlinedAt: !14461)
!14743 = !DILocation(line: 195, column: 25, scope: !13682)
!14744 = !DILocation(line: 1717, column: 9, scope: !13676, inlinedAt: !14745)
!14745 = !DILocation(line: 180, column: 28, scope: !14746, inlinedAt: !14749)
!14746 = !DILexicalBlockFile(scope: !14747, file: !13290, discriminator: 8)
!14747 = distinct !DILexicalBlock(scope: !14748, file: !13290, line: 162, column: 17)
!14748 = distinct !DILexicalBlock(scope: !13680, file: !13290, line: 161, column: 17)
!14749 = !DILocation(line: 196, column: 42, scope: !13682)
!14750 = !DILocation(line: 180, column: 28, scope: !14747, inlinedAt: !14749)
!14751 = !DILocation(line: 2793, column: 21, scope: !13714, inlinedAt: !14752)
!14752 = !DILocation(line: 194, column: 42, scope: !14753)
!14753 = !DILexicalBlockFile(scope: !14754, file: !13648, discriminator: 2)
!14754 = distinct !DILexicalBlock(scope: !14755, file: !13648, line: 194, column: 74)
!14755 = distinct !DILexicalBlock(scope: !13682, file: !13648, line: 194, column: 74)
!14756 = !DILocation(line: 1879, column: 54, scope: !14674, inlinedAt: !14757)
!14757 = !DILocation(line: 2124, column: 13, scope: !14758, inlinedAt: !14759)
!14758 = !DILexicalBlockFile(scope: !14677, file: !180, discriminator: 4)
!14759 = !DILocation(line: 2443, column: 35, scope: !14760, inlinedAt: !14762)
!14760 = !DILexicalBlockFile(scope: !14761, file: !222, discriminator: 4)
!14761 = distinct !DILexicalBlock(scope: !14680, file: !222, line: 2443, column: 13)
!14762 = !DILocation(line: 196, column: 33, scope: !13682)
!14763 = !DILocation(line: 196, column: 25, scope: !13682)
!14764 = !DILocation(line: 659, column: 28, scope: !13685, inlinedAt: !14765)
!14765 = !DILocation(line: 185, column: 40, scope: !14746, inlinedAt: !14749)
!14766 = !DILocation(line: 193, column: 29, scope: !13682)
!14767 = !DILocation(line: 0, scope: !13682)
!14768 = !DILocation(line: 185, column: 25, scope: !13680, inlinedAt: !14767)
!14769 = !DILocation(line: 221, column: 27, scope: !13704, inlinedAt: !13706)
!14770 = !DILocation(line: 1879, column: 54, scope: !14674, inlinedAt: !14771)
!14771 = !DILocation(line: 2124, column: 13, scope: !14772, inlinedAt: !14773)
!14772 = !DILexicalBlockFile(scope: !14677, file: !180, discriminator: 6)
!14773 = !DILocation(line: 2443, column: 35, scope: !14774, inlinedAt: !14776)
!14774 = !DILexicalBlockFile(scope: !14775, file: !222, discriminator: 6)
!14775 = distinct !DILexicalBlock(scope: !14680, file: !222, line: 2443, column: 13)
!14776 = !DILocation(line: 200, column: 23, scope: !13682)
!14777 = !DILocation(line: 204, column: 24, scope: !13682)
!14778 = !DILocation(line: 202, column: 17, scope: !13682)
!14779 = !DILocation(line: 135, column: 13, scope: !13682)
!14780 = !DILocation(line: 216, column: 6, scope: !13647)
!14781 = !DILocation(line: 214, column: 13, scope: !13683)
!14782 = !DILocation(line: 208, column: 9, scope: !13683)
!14783 = !DILocation(line: 209, column: 13, scope: !13683)
!14784 = !DILocation(line: 1545, column: 15, scope: !14785, inlinedAt: !14786)
!14785 = distinct !DISubprogram(name: "and_then<chrono::naive::date::NaiveDate, chrono::naive::datetime::NaiveDateTime, polars_time::chunkedarray::string::strptime::{impl#0}::parse::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCs9o5SvTbM2BP_6chrono5naive4date9NaiveDateE8and_thenNtNtBM_8datetime13NaiveDateTimeNCNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptimeNtB2e_13StrpTimeState5parse0ECshquuC4dCYVj_10polars_sql", scope: !223, file: !222, line: 1541, type: !12, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14786 = !DILocation(line: 210, column: 18, scope: !13683)
!14787 = !DILocation(line: 1545, column: 9, scope: !14785, inlinedAt: !14786)
!14788 = !DILocation(line: 429, column: 13, scope: !14789, inlinedAt: !14790)
!14789 = distinct !DISubprogram(name: "from_hms_nano_opt", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4timeNtB2_9NaiveTime17from_hms_nano_opt", scope: !1926, file: !1924, line: 428, type: !12, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14790 = distinct !DILocation(line: 945, column: 29, scope: !14791, inlinedAt: !14795)
!14791 = distinct !DISubprogram(name: "and_hms_nano_opt", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt", scope: !14793, file: !14792, line: 938, type: !67, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14792 = !DIFile(filename: "src/naive/date/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chrono-0.4.44", checksumkind: CSK_MD5, checksum: "a2e2aaaee33cc569168e06d36a9da36d")
!14793 = !DINamespace(name: "NaiveDate", scope: !14794)
!14794 = !DINamespace(name: "date", scope: !1928)
!14795 = distinct !DILocation(line: 210, column: 35, scope: !14796, inlinedAt: !14799)
!14796 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptimeNtB4_13StrpTimeState5parse0CshquuC4dCYVj_10polars_sql", scope: !14797, file: !13648, line: 210, type: !12, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14797 = !DINamespace(name: "parse", scope: !14798)
!14798 = !DINamespace(name: "{impl#0}", scope: !13650)
!14799 = !DILocation(line: 1546, column: 24, scope: !14800, inlinedAt: !14786)
!14800 = distinct !DILexicalBlock(scope: !14785, file: !222, line: 1546, column: 13)
!14801 = !DILocation(line: 708, column: 28, scope: !14802, inlinedAt: !14795)
!14802 = !DILexicalBlockFile(scope: !14791, file: !14803, discriminator: 0)
!14803 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chrono-0.4.44", checksumkind: CSK_MD5, checksum: "c19528b85d2d2edee25023f934f0481a")
!14804 = !{!14805}
!14805 = distinct !{!14805, !14806, !"_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt: argument 0"}
!14806 = distinct !{!14806, !"_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt"}
!14807 = !DILocation(line: 947, column: 6, scope: !14791, inlinedAt: !14795)
!14808 = !DILocation(line: 430, column: 17, scope: !14789, inlinedAt: !14790)
!14809 = !DILocation(line: 430, column: 42, scope: !14789, inlinedAt: !14790)
!14810 = !DILocation(line: 435, column: 20, scope: !14789, inlinedAt: !14790)
!14811 = !DILocation(line: 435, column: 34, scope: !14789, inlinedAt: !14790)
!14812 = !DILocation(line: 946, column: 9, scope: !14813, inlinedAt: !14795)
!14813 = distinct !DILexicalBlock(scope: !14791, file: !14792, line: 945, column: 9)
!14814 = !DILocation(line: 1547, column: 21, scope: !14785, inlinedAt: !14786)
!14815 = !DILocation(line: 1549, column: 5, scope: !14785, inlinedAt: !14786)
!14816 = distinct !DISubprogram(name: "with_capacity_and_hasher<&str, core::option::Option<i32>, foldhash::fast::RandomState>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE24with_capacity_and_hasherCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 71, type: !12, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14817 = !DILocation(line: 1038, column: 12, scope: !14818, inlinedAt: !14819)
!14818 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCshquuC4dCYVj_10polars_sql", scope: !2224, file: !180, line: 1034, type: !12, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14819 = distinct !DILocation(line: 72, column: 41, scope: !14816)
!14820 = !DILocation(line: 76, column: 20, scope: !14821)
!14821 = distinct !DILexicalBlock(scope: !14816, file: !8, line: 72, column: 9)
!14822 = !DILocation(line: 76, column: 45, scope: !14821)
!14823 = !DILocation(line: 601, column: 9, scope: !14824, inlinedAt: !14825)
!14824 = distinct !DISubprogram(name: "with_capacity<polars_utils::cache::LruKey>", linkageName: "_RNvMs5_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13with_capacityCshquuC4dCYVj_10polars_sql", scope: !21, file: !20, line: 600, type: !12, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14825 = !DILocation(line: 92, column: 18, scope: !14826, inlinedAt: !14820)
!14826 = distinct !DISubprogram(name: "with_capacity<polars_utils::cache::LruKey>", linkageName: "_RNvMNtCs7tGzs63DEEy_9hashbrown5tableINtB2_9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13with_capacityCshquuC4dCYVj_10polars_sql", scope: !29, file: !28, line: 90, type: !12, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14827 = !DILocation(line: 77, column: 23, scope: !14821)
!14828 = !DILocation(line: 71, column: 5, scope: !14816)
!14829 = !DILocation(line: 3513, column: 43, scope: !14830, inlinedAt: !14831)
!14830 = distinct !DISubprogram(name: "drop<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXsf_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql", scope: !2830, file: !20, line: 3503, type: !12, scopeLine: 3503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14831 = distinct !DILocation(line: 810, column: 1, scope: !14832, inlinedAt: !14833)
!14832 = distinct !DISubprogram(name: "drop_in_place<hashbrown::raw::RawTable<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3raw8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEECshquuC4dCYVj_10polars_sql", scope: !81, file: !88, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14833 = distinct !DILocation(line: 810, column: 1, scope: !14834, inlinedAt: !14835)
!14834 = distinct !DISubprogram(name: "drop_in_place<hashbrown::table::HashTable<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEECshquuC4dCYVj_10polars_sql", scope: !81, file: !88, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14835 = distinct !DILocation(line: 82, column: 9, scope: !14821)
!14836 = !DILocation(line: 3513, column: 18, scope: !14830, inlinedAt: !14831)
!14837 = !DILocation(line: 73, column: 9, scope: !14821)
!14838 = !DILocation(line: 82, column: 9, scope: !14821)
!14839 = !DILocation(line: 83, column: 6, scope: !14816)
!14840 = distinct !DISubprogram(name: "with_capacity_and_hasher<&str, core::option::Option<i64>, foldhash::fast::RandomState>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE24with_capacity_and_hasherCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 71, type: !12, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14841 = !DILocation(line: 1038, column: 12, scope: !14818, inlinedAt: !14842)
!14842 = distinct !DILocation(line: 72, column: 41, scope: !14840)
!14843 = !DILocation(line: 76, column: 20, scope: !14844)
!14844 = distinct !DILexicalBlock(scope: !14840, file: !8, line: 72, column: 9)
!14845 = !DILocation(line: 76, column: 45, scope: !14844)
!14846 = !DILocation(line: 601, column: 9, scope: !14847, inlinedAt: !14848)
!14847 = distinct !DISubprogram(name: "with_capacity<polars_utils::cache::LruKey>", linkageName: "_RNvMs5_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13with_capacityCshquuC4dCYVj_10polars_sql", scope: !21, file: !20, line: 600, type: !12, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14848 = !DILocation(line: 92, column: 18, scope: !14849, inlinedAt: !14843)
!14849 = distinct !DISubprogram(name: "with_capacity<polars_utils::cache::LruKey>", linkageName: "_RNvMNtCs7tGzs63DEEy_9hashbrown5tableINtB2_9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13with_capacityCshquuC4dCYVj_10polars_sql", scope: !29, file: !28, line: 90, type: !12, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14850 = !DILocation(line: 77, column: 23, scope: !14844)
!14851 = !DILocation(line: 71, column: 5, scope: !14840)
!14852 = !DILocation(line: 3513, column: 43, scope: !14830, inlinedAt: !14853)
!14853 = distinct !DILocation(line: 810, column: 1, scope: !14832, inlinedAt: !14854)
!14854 = distinct !DILocation(line: 810, column: 1, scope: !14834, inlinedAt: !14855)
!14855 = distinct !DILocation(line: 82, column: 9, scope: !14844)
!14856 = !DILocation(line: 3513, column: 18, scope: !14830, inlinedAt: !14853)
!14857 = !DILocation(line: 73, column: 9, scope: !14844)
!14858 = !DILocation(line: 82, column: 9, scope: !14844)
!14859 = !DILocation(line: 83, column: 6, scope: !14840)
!14860 = distinct !DISubprogram(name: "analyze", linkageName: "_RNvMs0_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_17QualifyExpression7analyze", scope: !14862, file: !14861, line: 71, type: !12, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14861 = !DIFile(filename: "crates/polars-sql/src/sql_visitors.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "0a34be12d4e1747467b2ee4d845d6558")
!14862 = !DINamespace(name: "QualifyExpression", scope: !14863)
!14863 = !DINamespace(name: "sql_visitors", scope: !14864)
!14864 = !DINamespace(name: "polars_sql", scope: null)
!14865 = !DILocation(line: 72, column: 13, scope: !14860)
!14866 = !DILocation(line: 67, column: 26, scope: !14867, inlinedAt: !14868)
!14867 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_17QualifyExpression3new", scope: !14862, file: !14861, line: 64, type: !12, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14868 = distinct !DILocation(line: 72, column: 28, scope: !14860)
!14869 = !DILocation(line: 65, column: 9, scope: !14867, inlinedAt: !14868)
!14870 = !{!14871}
!14871 = distinct !{!14871, !14872, !"_RNvMs0_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_17QualifyExpression3new: argument 0"}
!14872 = distinct !{!14872, !"_RNvMs0_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_17QualifyExpression3new"}
!14873 = !DILocation(line: 73, column: 22, scope: !14874)
!14874 = distinct !DILexicalBlock(scope: !14860, file: !14861, line: 72, column: 9)
!14875 = !DILocation(line: 3513, column: 43, scope: !14876, inlinedAt: !14877)
!14876 = distinct !DISubprogram(name: "drop<(alloc::string::String, ()), allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXsf_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql", scope: !2830, file: !20, line: 3503, type: !12, scopeLine: 3503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14877 = distinct !DILocation(line: 810, column: 1, scope: !14878, inlinedAt: !14879)
!14878 = distinct !DISubprogram(name: "drop_in_place<hashbrown::raw::RawTable<(alloc::string::String, ()), allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3raw8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEEECshquuC4dCYVj_10polars_sql", scope: !81, file: !88, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14879 = distinct !DILocation(line: 810, column: 1, scope: !14880, inlinedAt: !14881)
!14880 = distinct !DISubprogram(name: "drop_in_place<hashbrown::map::HashMap<alloc::string::String, (), foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql", scope: !81, file: !88, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14881 = distinct !DILocation(line: 810, column: 1, scope: !14882, inlinedAt: !14883)
!14882 = distinct !DISubprogram(name: "drop_in_place<hashbrown::set::HashSet<alloc::string::String, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql", scope: !81, file: !88, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14883 = distinct !DILocation(line: 810, column: 1, scope: !14884, inlinedAt: !14885)
!14884 = distinct !DISubprogram(name: "drop_in_place<polars_sql::sql_visitors::QualifyExpression>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEBK_", scope: !81, file: !88, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14885 = distinct !DILocation(line: 75, column: 5, scope: !14860)
!14886 = !DILocation(line: 3513, column: 18, scope: !14876, inlinedAt: !14877)
!14887 = !DILocation(line: 74, column: 10, scope: !14888)
!14888 = distinct !DILexicalBlock(scope: !14874, file: !14861, line: 73, column: 9)
!14889 = !DILocation(line: 74, column: 9, scope: !14888)
!14890 = !DILocation(line: 74, column: 41, scope: !14888)
!14891 = !DILocation(line: 75, column: 5, scope: !14860)
!14892 = !DILocation(line: 75, column: 6, scope: !14860)
!14893 = !DILocation(line: 71, column: 5, scope: !14860)
!14894 = distinct !DISubprogram(name: "lru_list_unlink<&str, core::option::Option<i32>, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 87, type: !12, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14895 = !DILocation(line: 88, column: 33, scope: !14894)
!14896 = !DILocation(line: 88, column: 20, scope: !14894)
!14897 = !DILocation(line: 89, column: 50, scope: !14898)
!14898 = distinct !DILexicalBlock(scope: !14899, file: !8, line: 89, column: 76)
!14899 = distinct !DILexicalBlock(scope: !14894, file: !8, line: 88, column: 9)
!14900 = !DILocation(line: 89, column: 36, scope: !14898)
!14901 = !DILocation(line: 89, column: 16, scope: !14898)
!14902 = !DILocation(line: 90, column: 13, scope: !14898)
!14903 = !DILocation(line: 89, column: 9, scope: !14899)
!14904 = !DILocation(line: 92, column: 13, scope: !14899)
!14905 = !DILocation(line: 94, column: 50, scope: !14906)
!14906 = distinct !DILexicalBlock(scope: !14899, file: !8, line: 94, column: 76)
!14907 = !DILocation(line: 94, column: 36, scope: !14906)
!14908 = !DILocation(line: 94, column: 16, scope: !14906)
!14909 = !DILocation(line: 95, column: 13, scope: !14906)
!14910 = !DILocation(line: 94, column: 9, scope: !14899)
!14911 = !DILocation(line: 97, column: 13, scope: !14899)
!14912 = !DILocation(line: 99, column: 6, scope: !14894)
!14913 = distinct !DISubprogram(name: "lru_list_insert_mru<&str, core::option::Option<i32>, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 101, type: !12, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14914 = !DILocation(line: 102, column: 36, scope: !14913)
!14915 = !DILocation(line: 103, column: 9, scope: !14916)
!14916 = distinct !DILexicalBlock(scope: !14913, file: !8, line: 102, column: 9)
!14917 = !DILocation(line: 104, column: 55, scope: !14918)
!14918 = distinct !DILexicalBlock(scope: !14916, file: !8, line: 104, column: 85)
!14919 = !DILocation(line: 104, column: 41, scope: !14918)
!14920 = !DILocation(line: 104, column: 16, scope: !14918)
!14921 = !DILocation(line: 105, column: 13, scope: !14918)
!14922 = !DILocation(line: 104, column: 9, scope: !14916)
!14923 = !DILocation(line: 107, column: 13, scope: !14916)
!14924 = !DILocation(line: 109, column: 38, scope: !14916)
!14925 = !DILocation(line: 110, column: 9, scope: !14926)
!14926 = distinct !DILexicalBlock(scope: !14916, file: !8, line: 109, column: 9)
!14927 = !DILocation(line: 111, column: 9, scope: !14926)
!14928 = !DILocation(line: 112, column: 6, scope: !14913)
!14929 = distinct !DISubprogram(name: "pop_lru<&str, core::option::Option<i32>, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lruCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 114, type: !12, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14930 = !DILocation(line: 247, column: 9, scope: !14931, inlinedAt: !14932)
!14931 = distinct !DISubprogram(name: "is_empty<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE8is_emptyCshquuC4dCYVj_10polars_sql", scope: !397, file: !396, line: 246, type: !12, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14932 = !DILocation(line: 115, column: 26, scope: !14929)
!14933 = !DILocation(line: 115, column: 12, scope: !14929)
!14934 = !DILocation(line: 118, column: 23, scope: !14929)
!14935 = !DILocation(line: 119, column: 20, scope: !14936)
!14936 = distinct !DILexicalBlock(scope: !14929, file: !8, line: 118, column: 9)
!14937 = !DILocation(line: 119, column: 61, scope: !14936)
!14938 = !DILocation(line: 119, column: 47, scope: !14936)
!14939 = !DILocation(line: 119, column: 38, scope: !14936)
!14940 = !DILocation(line: 120, column: 14, scope: !14941)
!14941 = distinct !DILexicalBlock(scope: !14936, file: !8, line: 119, column: 9)
!14942 = !DILocation(line: 121, column: 25, scope: !14941)
!14943 = !DILocation(line: 121, column: 39, scope: !14941)
!14944 = !DILocation(line: 1014, column: 15, scope: !14945, inlinedAt: !14946)
!14945 = distinct !DISubprogram(name: "unwrap<polars_utils::cache::LruEntry<&str, core::option::Option<i32>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBv_lEEE6unwrapCshquuC4dCYVj_10polars_sql", scope: !223, file: !222, line: 1013, type: !12, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14946 = !DILocation(line: 121, column: 55, scope: !14941)
!14947 = !DILocation(line: 1014, column: 9, scope: !14945, inlinedAt: !14946)
!14948 = !DILocation(line: 0, scope: !14929)
!14949 = !DILocation(line: 127, column: 6, scope: !14929)
!14950 = !DILocation(line: 1015, column: 18, scope: !14945, inlinedAt: !14946)
!14951 = !DILocation(line: 121, column: 62, scope: !14941)
!14952 = !DILocation(line: 122, column: 9, scope: !14953)
!14953 = distinct !DILexicalBlock(scope: !14941, file: !8, line: 121, column: 9)
!14954 = !{!14955}
!14955 = distinct !{!14955, !14956, !"_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0ECshquuC4dCYVj_10polars_sql: argument 0"}
!14956 = distinct !{!14956, !"_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0ECshquuC4dCYVj_10polars_sql"}
!14957 = !DILocation(line: 309, column: 24, scope: !14958, inlinedAt: !14959)
!14958 = distinct !DISubprogram(name: "find_entry<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global, polars_utils::cache::{impl#3}::pop_lru::{closure_env#0}<&str, core::option::Option<i32>, foldhash::fast::RandomState>>", linkageName: "_RINvMs_NtCs7tGzs63DEEy_9hashbrown5tableINtB5_9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE10find_entryNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0ECshquuC4dCYVj_10polars_sql", scope: !29, file: !28, line: 304, type: !12, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14959 = !DILocation(line: 123, column: 14, scope: !14953)
!14960 = !{!14961}
!14961 = distinct !{!14961, !14962, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!14962 = distinct !{!14962, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!14963 = !DILocation(line: 1202, column: 18, scope: !14964, inlinedAt: !14965)
!14964 = distinct !DISubprogram(name: "find<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global, polars_utils::cache::{impl#3}::pop_lru::{closure_env#0}<&str, core::option::Option<i32>, foldhash::fast::RandomState>>", linkageName: "_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0ECshquuC4dCYVj_10polars_sql", scope: !21, file: !20, line: 1192, type: !12, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!14965 = distinct !DILocation(line: 309, column: 24, scope: !14958, inlinedAt: !14959)
!14966 = !DILocation(line: 47, column: 20, scope: !2093, inlinedAt: !14967)
!14967 = distinct !DILocation(line: 2009, column: 24, scope: !2095, inlinedAt: !14968)
!14968 = distinct !DILocation(line: 1202, column: 18, scope: !14964, inlinedAt: !14965)
!14969 = !DILocation(line: 48, column: 13, scope: !2098, inlinedAt: !14967)
!14970 = !DILocation(line: 2452, column: 29, scope: !2100, inlinedAt: !14971)
!14971 = distinct !DILocation(line: 2010, column: 34, scope: !2102, inlinedAt: !14968)
!14972 = !{!14961, !14955}
!14973 = !{!14974, !14975}
!14974 = distinct !{!14974, !14962, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!14975 = distinct !{!14975, !14956, !"_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0ECshquuC4dCYVj_10polars_sql: argument 1"}
!14976 = !DILocation(line: 2012, column: 9, scope: !2108, inlinedAt: !14968)
!14977 = !DILocation(line: 0, scope: !2102, inlinedAt: !14968)
!14978 = !DILocation(line: 961, column: 18, scope: !2111, inlinedAt: !14979)
!14979 = distinct !DILocation(line: 2624, column: 37, scope: !2113, inlinedAt: !14980)
!14980 = distinct !DILocation(line: 2027, column: 51, scope: !2108, inlinedAt: !14968)
!14981 = !DILocation(line: 552, column: 14, scope: !87, inlinedAt: !14982)
!14982 = distinct !DILocation(line: 1335, column: 5, scope: !90, inlinedAt: !14983)
!14983 = distinct !DILocation(line: 49, column: 24, scope: !2118, inlinedAt: !14984)
!14984 = distinct !DILocation(line: 2027, column: 34, scope: !2108, inlinedAt: !14968)
!14985 = !{!14986, !14961, !14974, !14955, !14975}
!14986 = distinct !{!14986, !14987, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!14987 = distinct !{!14987, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!14988 = !DILocation(line: 914, column: 36, scope: !107, inlinedAt: !14989)
!14989 = distinct !DILocation(line: 83, column: 23, scope: !2125, inlinedAt: !14990)
!14990 = distinct !DILocation(line: 2029, column: 30, scope: !2128, inlinedAt: !14968)
!14991 = !DILocation(line: 1615, column: 9, scope: !114, inlinedAt: !14992)
!14992 = distinct !DILocation(line: 84, column: 21, scope: !2131, inlinedAt: !14990)
!14993 = !DILocation(line: 40, column: 32, scope: !2133, inlinedAt: !14994)
!14994 = distinct !DILocation(line: 103, column: 26, scope: !2136, inlinedAt: !14995)
!14995 = distinct !DILocation(line: 2029, column: 24, scope: !2138, inlinedAt: !14968)
!14996 = !DILocation(line: 40, column: 16, scope: !2133, inlinedAt: !14994)
!14997 = !DILocation(line: 642, column: 21, scope: !2142, inlinedAt: !14998)
!14998 = distinct !DILocation(line: 70, column: 21, scope: !2144, inlinedAt: !14999)
!14999 = distinct !DILocation(line: 41, column: 18, scope: !2133, inlinedAt: !14994)
!15000 = !DILocation(line: 70, column: 13, scope: !2144, inlinedAt: !14999)
!15001 = !DILocation(line: 2032, column: 29, scope: !2148, inlinedAt: !14968)
!15002 = !DILocation(line: 1072, column: 47, scope: !15003, inlinedAt: !15004)
!15003 = distinct !DISubprogram(name: "sub<polars_utils::cache::LruKey>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils5cache6LruKey3subCshquuC4dCYVj_10polars_sql", scope: !79, file: !78, line: 1033, type: !12, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15004 = distinct !DILocation(line: 329, column: 36, scope: !15005, inlinedAt: !15006)
!15005 = distinct !DISubprogram(name: "from_base_index<polars_utils::cache::LruKey>", linkageName: "_RNvMs4_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_6BucketNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE15from_base_indexCshquuC4dCYVj_10polars_sql", scope: !161, file: !20, line: 302, type: !12, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15006 = distinct !DILocation(line: 765, column: 18, scope: !15007, inlinedAt: !15008)
!15007 = distinct !DISubprogram(name: "bucket<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE6bucketCshquuC4dCYVj_10polars_sql", scope: !21, file: !20, line: 738, type: !12, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15008 = distinct !DILocation(line: 1202, column: 56, scope: !15009, inlinedAt: !15010)
!15009 = distinct !DISubprogram(name: "{closure#0}<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global, polars_utils::cache::{impl#3}::pop_lru::{closure_env#0}<&str, core::option::Option<i32>, foldhash::fast::RandomState>>", linkageName: "_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql", scope: !2157, file: !20, line: 1202, type: !12, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15010 = distinct !DILocation(line: 2034, column: 27, scope: !2159, inlinedAt: !14968)
!15011 = !DILocation(line: 1072, column: 22, scope: !15003, inlinedAt: !15004)
!15012 = !DILocation(line: 1202, column: 48, scope: !15009, inlinedAt: !15010)
!15013 = !{!15014, !14961, !14974, !14955, !14975}
!15014 = distinct !{!15014, !15015, !"_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql: argument 0"}
!15015 = distinct !{!15015, !"_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0E0CshquuC4dCYVj_10polars_sql"}
!15016 = !DILocation(line: 245, column: 23, scope: !15017, inlinedAt: !15018)
!15017 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs7_Cs5ERpa6sqwDS_7slotmapNtB5_7KeyDataNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !501, file: !500, line: 245, type: !12, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15018 = distinct !DILocation(line: 39, column: 1, scope: !15019, inlinedAt: !15021)
!15019 = !DILexicalBlockFile(scope: !15020, file: !8, discriminator: 0)
!15020 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsa_NtCs2mZqlW55729_12polars_utils5cacheNtB5_6LruKeyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !505, file: !500, line: 449, type: !12, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15021 = distinct !DILocation(line: 123, column: 35, scope: !15022, inlinedAt: !15024)
!15022 = distinct !DISubprogram(name: "{closure#0}<&str, core::option::Option<i32>, foldhash::fast::RandomState>", linkageName: "_RNCNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB7_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE7pop_lru0CshquuC4dCYVj_10polars_sql", scope: !15023, file: !8, line: 123, type: !67, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15023 = !DINamespace(name: "pop_lru", scope: !176)
!15024 = distinct !DILocation(line: 1202, column: 48, scope: !15009, inlinedAt: !15010)
!15025 = !DILocation(line: 1072, column: 22, scope: !15003, inlinedAt: !15026)
!15026 = distinct !DILocation(line: 418, column: 40, scope: !15027, inlinedAt: !15028)
!15027 = distinct !DISubprogram(name: "as_ptr<polars_utils::cache::LruKey>", linkageName: "_RNvMs4_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_6BucketNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE6as_ptrCshquuC4dCYVj_10polars_sql", scope: !161, file: !20, line: 412, type: !12, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15028 = distinct !DILocation(line: 535, column: 25, scope: !15029, inlinedAt: !15030)
!15029 = distinct !DISubprogram(name: "as_ref<polars_utils::cache::LruKey>", linkageName: "_RNvMs4_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_6BucketNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE6as_refCshquuC4dCYVj_10polars_sql", scope: !161, file: !20, line: 534, type: !12, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15030 = distinct !DILocation(line: 1202, column: 70, scope: !15009, inlinedAt: !15010)
!15031 = !DILocation(line: 1879, column: 54, scope: !15032, inlinedAt: !15033)
!15032 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsm_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB7_9PartialEq2eq", scope: !516, file: !180, line: 1879, type: !12, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15033 = distinct !DILocation(line: 215, column: 9, scope: !15034, inlinedAt: !15035)
!15034 = distinct !DISubprogram(name: "eq<u32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql", scope: !513, file: !134, line: 214, type: !12, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15035 = distinct !DILocation(line: 245, column: 23, scope: !15017, inlinedAt: !15018)
!15036 = !DILocation(line: 13, column: 8, scope: !2248, inlinedAt: !15037)
!15037 = distinct !DILocation(line: 2034, column: 20, scope: !2159, inlinedAt: !14968)
!15038 = !DILocation(line: 914, column: 36, scope: !107, inlinedAt: !15039)
!15039 = distinct !DILocation(line: 83, column: 23, scope: !2252, inlinedAt: !15040)
!15040 = distinct !DILocation(line: 92, column: 14, scope: !2254, inlinedAt: !15041)
!15041 = distinct !DILocation(line: 2039, column: 29, scope: !2128, inlinedAt: !14968)
!15042 = !DILocation(line: 1615, column: 9, scope: !114, inlinedAt: !15043)
!15043 = distinct !DILocation(line: 84, column: 21, scope: !2258, inlinedAt: !15040)
!15044 = !DILocation(line: 13, column: 8, scope: !2248, inlinedAt: !15045)
!15045 = distinct !DILocation(line: 2039, column: 16, scope: !2128, inlinedAt: !14968)
!15046 = !DILocation(line: 500, column: 18, scope: !2262, inlinedAt: !15047)
!15047 = distinct !DILocation(line: 642, column: 51, scope: !2142, inlinedAt: !14998)
!15048 = !DILocation(line: 28, column: 17, scope: !2265, inlinedAt: !15049)
!15049 = distinct !DILocation(line: 104, column: 25, scope: !2267, inlinedAt: !14995)
!15050 = !DILocation(line: 89, column: 9, scope: !2269, inlinedAt: !15051)
!15051 = distinct !DILocation(line: 2043, column: 23, scope: !2128, inlinedAt: !14968)
!15052 = !DILocation(line: 90, column: 9, scope: !2269, inlinedAt: !15051)
!15053 = !DILocation(line: 1016, column: 21, scope: !14945, inlinedAt: !14946)
!15054 = !DILocation(line: 1233, column: 17, scope: !15055, inlinedAt: !15056)
!15055 = distinct !DISubprogram(name: "unwrap<hashbrown::table::OccupiedEntry<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>, hashbrown::table::AbsentEntry<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql", scope: !375, file: !374, line: 1227, type: !12, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15056 = distinct !DILocation(line: 124, column: 14, scope: !14953)
!15057 = !{!15058}
!15058 = distinct !{!15058, !15059, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql: argument 0"}
!15059 = distinct !{!15059, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCs7tGzs63DEEy_9hashbrown5table13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyEINtBK_11AbsentEntryB1v_EE6unwrapCshquuC4dCYVj_10polars_sql"}
!15060 = !DILocation(line: 1233, column: 23, scope: !15061, inlinedAt: !15056)
!15061 = distinct !DILexicalBlock(scope: !15055, file: !374, line: 1233, column: 13)
!15062 = !{!15063}
!15063 = distinct !{!15063, !15064, !"_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql: argument 1"}
!15064 = distinct !{!15064, !"_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql"}
!15065 = !DILocation(line: 2082, column: 57, scope: !15066, inlinedAt: !15067)
!15066 = distinct !DISubprogram(name: "remove<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMsb_NtCs7tGzs63DEEy_9hashbrown5tableINtB5_13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE6removeCshquuC4dCYVj_10polars_sql", scope: !494, file: !28, line: 2081, type: !12, scopeLine: 2081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15067 = !DILocation(line: 125, column: 14, scope: !14953)
!15068 = !DILocation(line: 961, column: 18, scope: !15069, inlinedAt: !15070)
!15069 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCshquuC4dCYVj_10polars_sql", scope: !79, file: !78, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15070 = distinct !DILocation(line: 2624, column: 37, scope: !15071, inlinedAt: !15072)
!15071 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !66, file: !20, line: 2621, type: !12, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15072 = distinct !DILocation(line: 809, column: 35, scope: !15073, inlinedAt: !15075)
!15073 = distinct !DILexicalBlock(scope: !15074, file: !20, line: 808, column: 13)
!15074 = distinct !DISubprogram(name: "remove_tagged<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql", scope: !21, file: !20, line: 806, type: !12, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15075 = distinct !DILocation(line: 2082, column: 57, scope: !15066, inlinedAt: !15067)
!15076 = !{!15077}
!15077 = distinct !{!15077, !15078, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!15078 = distinct !{!15078, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner5erase"}
!15079 = !DILocation(line: 810, column: 24, scope: !15080, inlinedAt: !15075)
!15080 = distinct !DILexicalBlock(scope: !15073, file: !20, line: 809, column: 13)
!15081 = !DILocation(line: 2548, column: 13, scope: !15082, inlinedAt: !15083)
!15082 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !435, file: !434, line: 2547, type: !12, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15083 = distinct !DILocation(line: 3231, column: 34, scope: !15084, inlinedAt: !15085)
!15084 = distinct !DISubprogram(name: "erase", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner5erase", scope: !66, file: !20, line: 3224, type: !12, scopeLine: 3224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15085 = distinct !DILocation(line: 810, column: 24, scope: !15080, inlinedAt: !15075)
!15086 = !DILocation(line: 3231, column: 28, scope: !15084, inlinedAt: !15085)
!15087 = !DILocation(line: 961, column: 18, scope: !15088, inlinedAt: !15089)
!15088 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCshquuC4dCYVj_10polars_sql", scope: !79, file: !78, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15089 = distinct !DILocation(line: 2624, column: 37, scope: !15090, inlinedAt: !15092)
!15090 = !DILexicalBlockFile(scope: !15091, file: !20, discriminator: 2)
!15091 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !66, file: !20, line: 2621, type: !12, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15092 = distinct !DILocation(line: 3237, column: 34, scope: !15093, inlinedAt: !15085)
!15093 = distinct !DILexicalBlock(scope: !15084, file: !20, line: 3231, column: 9)
!15094 = !DILocation(line: 552, column: 14, scope: !87, inlinedAt: !15095)
!15095 = distinct !DILocation(line: 1335, column: 5, scope: !90, inlinedAt: !15096)
!15096 = distinct !DILocation(line: 49, column: 24, scope: !15097, inlinedAt: !15098)
!15097 = distinct !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !99, file: !98, line: 48, type: !12, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15098 = distinct !DILocation(line: 3237, column: 17, scope: !15093, inlinedAt: !15085)
!15099 = !{!15100, !15077, !15102, !15063}
!15100 = distinct !{!15100, !15101, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!15101 = distinct !{!15101, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!15102 = distinct !{!15102, !15064, !"_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE13remove_taggedCshquuC4dCYVj_10polars_sql: argument 0"}
!15103 = !DILocation(line: 914, column: 36, scope: !107, inlinedAt: !15104)
!15104 = distinct !DILocation(line: 83, column: 23, scope: !15105, inlinedAt: !15107)
!15105 = distinct !DILexicalBlock(scope: !15106, file: !98, line: 82, column: 9)
!15106 = distinct !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !99, file: !98, line: 73, type: !12, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15107 = distinct !DILocation(line: 92, column: 14, scope: !15108, inlinedAt: !15109)
!15108 = distinct !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !99, file: !98, line: 91, type: !12, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15109 = distinct !DILocation(line: 3237, column: 54, scope: !15093, inlinedAt: !15085)
!15110 = !DILocation(line: 1615, column: 9, scope: !114, inlinedAt: !15111)
!15111 = distinct !DILocation(line: 84, column: 21, scope: !15112, inlinedAt: !15107)
!15112 = distinct !DILexicalBlock(scope: !15105, file: !98, line: 83, column: 13)
!15113 = !DILocation(line: 552, column: 14, scope: !87, inlinedAt: !15114)
!15114 = distinct !DILocation(line: 1335, column: 5, scope: !90, inlinedAt: !15115)
!15115 = distinct !DILocation(line: 49, column: 24, scope: !15097, inlinedAt: !15116)
!15116 = distinct !DILocation(line: 3238, column: 17, scope: !15093, inlinedAt: !15085)
!15117 = !{!15118, !15077, !15102, !15063}
!15118 = distinct !{!15118, !15119, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!15119 = distinct !{!15119, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!15120 = !DILocation(line: 914, column: 36, scope: !107, inlinedAt: !15121)
!15121 = distinct !DILocation(line: 83, column: 23, scope: !15122, inlinedAt: !15123)
!15122 = distinct !DILexicalBlock(scope: !15106, file: !98, line: 82, column: 9)
!15123 = distinct !DILocation(line: 92, column: 14, scope: !15124, inlinedAt: !15125)
!15124 = !DILexicalBlockFile(scope: !15108, file: !98, discriminator: 2)
!15125 = distinct !DILocation(line: 3238, column: 47, scope: !15093, inlinedAt: !15085)
!15126 = !DILocation(line: 1615, column: 9, scope: !114, inlinedAt: !15127)
!15127 = distinct !DILocation(line: 84, column: 21, scope: !15128, inlinedAt: !15123)
!15128 = distinct !DILexicalBlock(scope: !15122, file: !98, line: 83, column: 13)
!15129 = !DILocation(line: 154, column: 20, scope: !15130, inlinedAt: !15132)
!15130 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3numt13leading_zeros", scope: !15131, file: !434, line: 153, type: !12, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15131 = !DINamespace(name: "{impl#7}", scope: !137)
!15132 = distinct !DILocation(line: 77, column: 16, scope: !15133, inlinedAt: !15134)
!15133 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask13leading_zeros", scope: !123, file: !121, line: 76, type: !12, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15134 = distinct !DILocation(line: 3278, column: 36, scope: !15135, inlinedAt: !15085)
!15135 = distinct !DILexicalBlock(scope: !15093, file: !20, line: 3235, column: 9)
!15136 = !DILocation(line: 178, column: 20, scope: !15137, inlinedAt: !15138)
!15137 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3numt14trailing_zeros", scope: !15131, file: !434, line: 177, type: !12, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15138 = distinct !DILocation(line: 58, column: 20, scope: !15139, inlinedAt: !15140)
!15139 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask14trailing_zeros", scope: !123, file: !121, line: 49, type: !12, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15140 = distinct !DILocation(line: 3278, column: 66, scope: !15135, inlinedAt: !15085)
!15141 = !DILocation(line: 3278, column: 23, scope: !15135, inlinedAt: !15085)
!15142 = !DILocation(line: 3281, column: 13, scope: !15135, inlinedAt: !15085)
!15143 = !{!15077, !15063}
!15144 = !{!15102}
!15145 = !DILocation(line: 3278, column: 20, scope: !15135, inlinedAt: !15085)
!15146 = !DILocation(line: 0, scope: !15135, inlinedAt: !15085)
!15147 = !DILocation(line: 2593, column: 13, scope: !15148, inlinedAt: !15150)
!15148 = distinct !DILexicalBlock(scope: !15149, file: !20, line: 2589, column: 9)
!15149 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !66, file: !20, line: 2564, type: !12, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15150 = distinct !DILocation(line: 3286, column: 18, scope: !15151, inlinedAt: !15085)
!15151 = distinct !DILexicalBlock(scope: !15135, file: !20, line: 3278, column: 9)
!15152 = !{!15077, !15102, !15063}
!15153 = !DILocation(line: 961, column: 18, scope: !15088, inlinedAt: !15154)
!15154 = distinct !DILocation(line: 2624, column: 37, scope: !15155, inlinedAt: !15156)
!15155 = !DILexicalBlockFile(scope: !15091, file: !20, discriminator: 8)
!15156 = distinct !DILocation(line: 2594, column: 19, scope: !15148, inlinedAt: !15150)
!15157 = !DILocation(line: 2594, column: 13, scope: !15148, inlinedAt: !15150)
!15158 = !DILocation(line: 3288, column: 9, scope: !15151, inlinedAt: !15085)
!15159 = !DILocation(line: 126, column: 9, scope: !14953)
!15160 = distinct !DISubprogram(name: "lru_list_unlink<&str, core::option::Option<i64>, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 87, type: !12, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15161 = !DILocation(line: 88, column: 33, scope: !15160)
!15162 = !DILocation(line: 88, column: 20, scope: !15160)
!15163 = !DILocation(line: 89, column: 50, scope: !15164)
!15164 = distinct !DILexicalBlock(scope: !15165, file: !8, line: 89, column: 76)
!15165 = distinct !DILexicalBlock(scope: !15160, file: !8, line: 88, column: 9)
!15166 = !DILocation(line: 89, column: 36, scope: !15164)
!15167 = !DILocation(line: 89, column: 16, scope: !15164)
!15168 = !DILocation(line: 90, column: 13, scope: !15164)
!15169 = !DILocation(line: 89, column: 9, scope: !15165)
!15170 = !DILocation(line: 92, column: 13, scope: !15165)
!15171 = !DILocation(line: 94, column: 50, scope: !15172)
!15172 = distinct !DILexicalBlock(scope: !15165, file: !8, line: 94, column: 76)
!15173 = !DILocation(line: 94, column: 36, scope: !15172)
!15174 = !DILocation(line: 94, column: 16, scope: !15172)
!15175 = !DILocation(line: 95, column: 13, scope: !15172)
!15176 = !DILocation(line: 94, column: 9, scope: !15165)
!15177 = !DILocation(line: 97, column: 13, scope: !15165)
!15178 = !DILocation(line: 99, column: 6, scope: !15160)
!15179 = distinct !DISubprogram(name: "lru_list_insert_mru<&str, core::option::Option<i64>, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 101, type: !12, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15180 = !DILocation(line: 102, column: 36, scope: !15179)
!15181 = !DILocation(line: 103, column: 9, scope: !15182)
!15182 = distinct !DILexicalBlock(scope: !15179, file: !8, line: 102, column: 9)
!15183 = !DILocation(line: 104, column: 55, scope: !15184)
!15184 = distinct !DILexicalBlock(scope: !15182, file: !8, line: 104, column: 85)
!15185 = !DILocation(line: 104, column: 41, scope: !15184)
!15186 = !DILocation(line: 104, column: 16, scope: !15184)
!15187 = !DILocation(line: 105, column: 13, scope: !15184)
!15188 = !DILocation(line: 104, column: 9, scope: !15182)
!15189 = !DILocation(line: 107, column: 13, scope: !15182)
!15190 = !DILocation(line: 109, column: 38, scope: !15182)
!15191 = !DILocation(line: 110, column: 9, scope: !15192)
!15192 = distinct !DILexicalBlock(scope: !15182, file: !8, line: 109, column: 9)
!15193 = !DILocation(line: 111, column: 9, scope: !15192)
!15194 = !DILocation(line: 112, column: 6, scope: !15179)
!15195 = distinct !DISubprogram(name: "pop_lru<&str, core::option::Option<i64>, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lruCshquuC4dCYVj_10polars_sql", scope: !9, file: !8, line: 114, type: !12, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15196 = !DILocation(line: 247, column: 9, scope: !15197, inlinedAt: !15198)
!15197 = distinct !DISubprogram(name: "is_empty<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE8is_emptyCshquuC4dCYVj_10polars_sql", scope: !397, file: !396, line: 246, type: !12, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15198 = !DILocation(line: 115, column: 26, scope: !15195)
!15199 = !DILocation(line: 115, column: 12, scope: !15195)
!15200 = !DILocation(line: 118, column: 23, scope: !15195)
!15201 = !DILocation(line: 119, column: 20, scope: !15202)
!15202 = distinct !DILexicalBlock(scope: !15195, file: !8, line: 118, column: 9)
!15203 = !DILocation(line: 119, column: 61, scope: !15202)
!15204 = !DILocation(line: 119, column: 47, scope: !15202)
!15205 = !DILocation(line: 119, column: 38, scope: !15202)
!15206 = !DILocation(line: 120, column: 14, scope: !15207)
!15207 = distinct !DILexicalBlock(scope: !15202, file: !8, line: 119, column: 9)
!15208 = !DILocation(line: 121, column: 25, scope: !15207)
!15209 = !DILocation(line: 121, column: 39, scope: !15207)
!15210 = !DILocation(line: 1014, column: 15, scope: !15211, inlinedAt: !15212)
!15211 = distinct !DISubprogram(name: "unwrap<polars_utils::cache::LruEntry<&str, core::option::Option<i64>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryReIBv_xEEE6unwrapCshquuC4dCYVj_10polars_sql", scope: !223, file: !222, line: 1013, type: !12, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15212 = !DILocation(line: 121, column: 55, scope: !15207)
!15213 = !DILocation(line: 1014, column: 9, scope: !15211, inlinedAt: !15212)
!15214 = !DILocation(line: 0, scope: !15195)
!15215 = !DILocation(line: 127, column: 6, scope: !15195)
!15216 = !DILocation(line: 1015, column: 18, scope: !15211, inlinedAt: !15212)
!15217 = !DILocation(line: 121, column: 62, scope: !15207)
!15218 = !DILocation(line: 122, column: 9, scope: !15219)
!15219 = distinct !DILexicalBlock(scope: !15207, file: !8, line: 121, column: 9)
!15220 = !{!15221}
!15221 = distinct !{!15221, !15222, !"_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0ECshquuC4dCYVj_10polars_sql: argument 0"}
!15222 = distinct !{!15222, !"_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0ECshquuC4dCYVj_10polars_sql"}
!15223 = !DILocation(line: 309, column: 24, scope: !15224, inlinedAt: !15225)
!15224 = distinct !DISubprogram(name: "find_entry<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global, polars_utils::cache::{impl#3}::pop_lru::{closure_env#0}<&str, core::option::Option<i64>, foldhash::fast::RandomState>>", linkageName: "_RINvMs_NtCs7tGzs63DEEy_9hashbrown5tableINtB5_9HashTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE10find_entryNCNvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0ECshquuC4dCYVj_10polars_sql", scope: !29, file: !28, line: 304, type: !12, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15225 = !DILocation(line: 123, column: 14, scope: !15219)
!15226 = !{!15227}
!15227 = distinct !{!15227, !15228, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!15228 = distinct !{!15228, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!15229 = !DILocation(line: 1202, column: 18, scope: !15230, inlinedAt: !15231)
!15230 = distinct !DISubprogram(name: "find<polars_utils::cache::LruKey, allocator_api2::stable::alloc::global::Global, polars_utils::cache::{impl#3}::pop_lru::{closure_env#0}<&str, core::option::Option<i64>, foldhash::fast::RandomState>>", linkageName: "_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0ECshquuC4dCYVj_10polars_sql", scope: !21, file: !20, line: 1192, type: !12, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!15231 = distinct !DILocation(line: 309, column: 24, scope: !15224, inlinedAt: !15225)
!15232 = !DILocation(line: 47, column: 20, scope: !2093, inlinedAt: !15233)
!15233 = distinct !DILocation(line: 2009, column: 24, scope: !2095, inlinedAt: !15234)
!15234 = distinct !DILocation(line: 1202, column: 18, scope: !15230, inlinedAt: !15231)
!15235 = !DILocation(line: 48, column: 13, scope: !2098, inlinedAt: !15233)
!15236 = !DILocation(line: 2452, column: 29, scope: !2100, inlinedAt: !15237)
!15237 = distinct !DILocation(line: 2010, column: 34, scope: !2102, inlinedAt: !15234)
!15238 = !{!15227, !15221}
!15239 = !{!15240, !15241}
!15240 = distinct !{!15240, !15228, !"_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!15241 = distinct !{!15241, !15222, !"_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE4findNCNvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lru0ECshquuC4dCYVj_10polars_sql: argument 1"}
!15242 = !DILocation(line: 2012, column: 9, scope: !2108, inlinedAt: !15234)
!15243 = !DILocation(line: 0, scope: !2102, inlinedAt: !15234)
!15244 = !DILocation(line: 961, column: 18, scope: !2111, inlinedAt: !15245)
!15245 = distinct !DILocation(line: 2624, column: 37, scope: !2113, inlinedAt: !15246)
!15246 = distinct !DILocation(line: 2027, column: 51, scope: !2108, inlinedAt: !15234)
!15247 = !DILocation(line: 552, column: 14, scope: !87, inlinedAt: !15248)
!15248 = distinct !DILocation(line: 1335, column: 5, scope: !90, inlinedAt: !15249)
!15249 = distinct !DILocation(line: 49, column: 24, scope: !2118, inlinedAt: !15250)
!15250 = distinct !DILocation(line: 2027, column: 34, scope: !2108, inlinedAt: !15234)
!15251 = !{!15252, !15227, !15240, !15221, !15241}
!15252 = distinct !{!15252, !15253, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!15253 = distinct !{!15253, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
end_hunk_1
