Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.11?download=true
inline.NumInlined: 2170
inline.NumDeleted: 755
begin_hunk_0_@_RINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB6_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withBV_NtNvMs1_B6_IBH_pppE18get_or_insert_with5NeverNCINvB2_18get_or_insert_withBV_NCNvMB6_INtB6_13LruCachedFuncBV_BX_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB40_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0ECshquuC4dCYVj_10polars_sql:bb.a
  call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.bz, i32 noundef %i.ca), !dbg !2824
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !2825
  %i.ct = load i32, ptr %i.cs, align 4, !dbg !2825, !noundef !531
  %i.cu = zext i32 %i.ct to i64, !dbg !2825
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2826
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !2826, !noundef !531
  %i.cx = icmp ult i64 %i.cw, %i.cu, !dbg !2827
  br i1 %i.cx, label %bb.p, label %bb.q, !dbg !2827

bb.k:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2t_NtNvMs1_BT_IB2f_pppE18get_or_insert_with5NeverNCINvB27_18get_or_insert_withB2t_NCNvMBT_INtBT_13LruCachedFuncB2t_B2v_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5E_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0E0NCB24_s_0E0CshquuC4dCYVj_10polars_sql.exit.i
  %i.cy = load ptr, ptr %i.f, align 8, !dbg !2828, !alias.scope !2709, !nonnull !531, !noundef !531
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.z, !dbg !2829 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8, !dbg !2830
  %i.db = load i32, ptr %i.da, align 4, !dbg !2831, !range !575, !noundef !531 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -4, !dbg !2831
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !2831, !noundef !531 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !2728
  %i.df = load i32, ptr %i.de, align 4, !dbg !2728, !noundef !531
  %i.dg = icmp eq i32 %i.dd, %i.df, !dbg !2728
  br i1 %i.dg, label %bb.l, label %bb.m, !dbg !2728

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2728
  %i.di = load i32, ptr %i.dh, align 8, !dbg !2832, !range !575, !noundef !531
  %.not = icmp eq i32 %i.db, %i.di, !dbg !2833
  br i1 %.not, label %bb.n, label %bb.m, !dbg !2725

bb.m:                                             ; preds = %bb.k, %bb.l
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.db, i32 noundef %i.dd), !dbg !2834
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.db, i32 noundef %i.dd), !dbg !2835
  br label %bb.n, !dbg !2835

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dj = tail call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index8IndexMutBN_E9index_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.db, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !2836
  br label %bb.o, !dbg !2836

bb.o:                                             ; preds = %bb.q, %bb.n
  %.sroa.0.0 = phi ptr [ %i.dj, %bb.n ], [ %i.dk, %bb.q ], !dbg !2837
  ret ptr %.sroa.0.0, !dbg !2838

bb.p:                                             ; preds = %_RNCINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB8_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE18get_or_insert_withBX_NCNvMB8_INtB8_13LruCachedFuncBX_BZ_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB2K_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0CshquuC4dCYVj_10polars_sql.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2839
  call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lruCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(96) %0), !dbg !2840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2841
  br label %bb.q, !dbg !2842

bb.q:                                             ; preds = %_RNCINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB8_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE18get_or_insert_withBX_NCNvMB8_INtB8_13LruCachedFuncBX_BZ_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB2K_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0CshquuC4dCYVj_10polars_sql.exit, %bb.p
  %i.dk = call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index8IndexMutBN_E9index_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.bz, i32 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !2843
  br label %bb.o, !dbg !2843
}

; Function Attrs: nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE12get_index_ofeECshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2844 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2953
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2953, !nonnull !531, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2954
  %i.d = load i64, ptr %i.c, align 8, !dbg !2954, !noundef !531 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942), !dbg !2956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944), !dbg !2957
  %i.f = lshr i64 %1, 57, !dbg !2958
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !2959
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2960
  %i.i = load i64, ptr %i.h, align 8, !dbg !2960, !alias.scope !2945, !noundef !531 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !2945, !nonnull !531, !noundef !531 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !2961

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.g ], !dbg !2962
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ap, %bb.g ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !2962 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !2963
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !dbg !2964, !noalias !2946 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !2965
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !2966 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.o, 0, !dbg !2967
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !2968

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.an, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !2969
  %i.q = zext nneg i16 %i.p to i64, !dbg !2970
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !2971
  %i.s = and i64 %i.r, %i.i, !dbg !2971
  %i.t = sub nsw i64 0, %i.s, !dbg !2972
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !2973
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !2974
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !2975, !noalias !2947, !noundef !531 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !2976
  br i1 %i.w, label %bb.c, label %bb.f, !dbg !2976

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.val.i.i, !dbg !2977 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48, !dbg !2977 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 71, !dbg !2978
  %i.aa = load i8, ptr %i.z, align 1, !dbg !2978, !range !688, !alias.scope !2949, !noalias !2950, !noundef !531 ; 2 uses
  %i.ab = icmp ugt i8 %i.aa, -41, !dbg !2979
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !2979

bb.d:                                             ; preds = %bb.c
  %i.ac = add i8 %i.aa, 64, !dbg !2980
  %i.ad = tail call i8 @llvm.umin.i8(i8 %i.ac, i8 24), !dbg !2981
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.ad to i64, !dbg !2981
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !2982

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.y, align 8, !dbg !2983, !alias.scope !2949, !noalias !2950, !noundef !531
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56, !dbg !2984
  %i.ag = load i64, ptr %i.af, align 8, !dbg !2984, !alias.scope !2949, !noalias !2950, !noundef !531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !2985

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.d ], !dbg !2986
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.y, %bb.d ], !dbg !2987
  %i.ah = icmp eq i64 %3, %.sroa.01.0.i.i.i.i.i, !dbg !2988
  br i1 %i.ah, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !2988, !prof !590

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38, !dbg !2976, !noalias !2950
  unreachable, !dbg !2976

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, i64 %3), !dbg !2989, !alias.scope !2951, !noalias !2950
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !2989
  br i1 %i.ai, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0ECshquuC4dCYVj_10polars_sql.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !2990, !prof !592

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.b
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !2991
  %i.ak = bitcast <16 x i1> %i.aj to i16, !dbg !2992
  %i.al = icmp eq i16 %i.ak, 0, !dbg !2993
  br i1 %i.al, label %bb.g, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0ECshquuC4dCYVj_10polars_sql.exit.thread, !dbg !2993, !prof !540

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.am = add i16 %.sroa.05.0.i40.i, -1, !dbg !2994
  %i.an = and i16 %i.am, %.sroa.05.0.i40.i, !dbg !2995 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.an, 0, !dbg !2967
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !2968

bb.g:                                             ; preds = %._crit_edge.i
  %i.ao = add i64 %.sroa.011.0.i.i, 16, !dbg !2996 ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao, !dbg !2997
  br label %bb.b, !dbg !2961

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0ECshquuC4dCYVj_10polars_sql.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i ], [ undef, %._crit_edge.i ], !dbg !2998
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i ], [ 0, %._crit_edge.i ], !dbg !2998
  %i.aq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !2999
  %i.ar = insertvalue { i64, i64 } %i.aq, i64 %.sroa.3.0, 1, !dbg !2999
  ret { i64, i64 } %i.ar, !dbg !2999
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3000 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 71, !dbg !3016
  %i.b = load i8, ptr %i.a, align 1, !dbg !3016, !range !688, !alias.scope !3015, !noundef !531
  %i.c = icmp eq i8 %i.b, -40, !dbg !3017
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !3017, !prof !540

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3018
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !3019

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %0) #39
          to label %bb.e unwind label %bb.d, !dbg !3018

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %0), !dbg !3018
  ret void, !dbg !3018

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3018
  unreachable, !dbg !3018

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !3018
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3020 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3060, !range !692, !noundef !531 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3060
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3060

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3060

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053), !dbg !3060
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3061 ; 4 uses
  %1 = icmp eq i64 %i.a, 0, !dbg !3061
  br i1 %1, label %bb.c, label %bb.e, !dbg !3061

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054), !dbg !3061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055), !dbg !3062
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3063, !alias.scope !3056, !nonnull !531, !noundef !531
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3064, !noalias !3056
  %i.f = icmp eq i64 %i.e, 1, !dbg !3065
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3065

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3066
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3067
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3067

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057), !dbg !3061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3058), !dbg !3068
  %i.g = load ptr, ptr %i.c, align 8, !dbg !3069, !alias.scope !3059, !nonnull !531, !noundef !531
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !3070, !noalias !3059
  %i.i = icmp eq i64 %i.h, 1, !dbg !3071
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3071

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3072
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3073
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3073
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3074 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3080, !range !704, !noundef !531
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !3080
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3080

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !3080

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !3081

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.e, !dbg !3082

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3081
  unreachable, !dbg !3081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !3081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !3083
  br label %bb.b, !dbg !3080
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !3084 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3134, !range !692, !noundef !531 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3134
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3134

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3134

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125), !dbg !3134
  %1 = icmp eq i64 %i.a, 0, !dbg !3135
  br i1 %1, label %bb.c, label %bb.e, !dbg !3135

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3135 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126), !dbg !3135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3127), !dbg !3136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128), !dbg !3137
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3138, !alias.scope !3129, !nonnull !531, !noundef !531
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3139, !noalias !3129
  %i.f = icmp eq i64 %i.e, 1, !dbg !3140
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3140

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3141
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultTNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider21ObjectStoreCredentialyENtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB59_4SyncEL_EEB57_B5q_EL_E9drop_slowB3b_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !3142
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3142

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3130), !dbg !3135
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3143 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131), !dbg !3143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132), !dbg !3144
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3145, !alias.scope !3133, !nonnull !531, !noundef !531
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !3146, !noalias !3133
  %i.j = icmp eq i64 %i.i, 1, !dbg !3147
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3147

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3148
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #41, !dbg !3149
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3149
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3150 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3183, !range !692, !noundef !531
  %i.b = icmp eq i64 %i.a, 2, !dbg !3183
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3183

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !3183

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !3184
  %i.d = load i64, ptr %i.c, align 8, !dbg !3185, !range !3181, !alias.scope !3182, !noundef !531 ; 2 uses
  %i.e = icmp eq i64 %i.d, 5, !dbg !3185
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit, label %bb.d, !dbg !3185

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !3186 ; 12 uses
  switch i64 %i.d, label %.invoke.i [
    i64 0, label %bb.e
    i64 1, label %bb.h
    i64 2, label %bb.k
  ], !dbg !3186

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.f, !dbg !3187

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.g, !dbg !3188

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3187
  unreachable, !dbg !3187

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3189

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.i, !dbg !3190

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.j, !dbg !3191

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3190
  unreachable, !dbg !3190

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3192

bb.k:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.l, !dbg !3193

bb.l:                                             ; preds = %bb.k
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.m, !dbg !3194

bb.m:                                             ; preds = %bb.l
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3193
  unreachable, !dbg !3193

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3195

.invoke.i:                                        ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %bb.n, !dbg !3196

bb.n:                                             ; preds = %.invoke.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.p, !dbg !3197

bb.o:                                             ; preds = %.invoke.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3198

bb.p:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3196
  unreachable, !dbg !3196

bb.q:                                             ; preds = %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !3184

.body.i:                                          ; preds = %bb.q, %bb.n, %bb.l, %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.l ], [ %i.i, %bb.i ], [ %i.g, %bb.f ], [ %i.o, %bb.q ], [ %i.m, %bb.n ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !3184
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #39
          to label %bb.s unwind label %bb.r, !dbg !3184

bb.r:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3184
  unreachable, !dbg !3184

bb.s:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !3184

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.o, %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !3184
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.r), !dbg !3184
  br label %bb.b, !dbg !3183
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3199 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3288, !range !3277, !noundef !531 ; 4 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775805, !dbg !3288
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3288

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void, !dbg !3288

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3278), !dbg !3288
  %i.c = icmp ne i64 %i.a, -9223372036854775807, !dbg !3289
  tail call void @llvm.assume(i1 %i.c), !dbg !3289
  %i.d = xor i64 %i.a, -9223372036854775808, !dbg !3289
  %i.e = icmp slt i64 %i.a, 0, !dbg !3289
  %i.f = select i1 %i.e, i64 %i.d, i64 1, !dbg !3289
  switch i64 %i.f, label %bb.c [
    i64 0, label %bb.h
    i64 1, label %bb.j
  ], !dbg !3289

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3289 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3279), !dbg !3289
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3290, !alias.scope !3280, !noundef !531 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !3290
  br i1 %i.i, label %bb.d, label %bb.f, !dbg !3290

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3290 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281), !dbg !3290
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282), !dbg !3291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3283), !dbg !3292
  %i.k = load ptr, ptr %i.j, align 8, !dbg !3293, !alias.scope !3284, !nonnull !531, !noundef !531
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !dbg !3294, !noalias !3284
  %i.m = icmp eq i64 %i.l, 1, !dbg !3295
  br i1 %i.m, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3295

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3296
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #41, !dbg !3297
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3297

bb.f:                                             ; preds = %bb.c
  %i.n = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !3298, !noalias !3285
  %i.o = icmp eq i64 %i.n, 1, !dbg !3299
  br i1 %i.o, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3299

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !3300
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderArgsEEp6OutputINtNtBO_6result6ResultNtB1q_18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB4m_4SyncEL_E9drop_slowB1w_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #41, !dbg !3301
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3301

bb.h:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !3302
  %i.q = load i8, ptr %i.p, align 1, !dbg !3302, !range !688, !alias.scope !3286, !noundef !531
  %i.r = icmp eq i8 %i.q, -40, !dbg !3303
  br i1 %i.r, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3303, !prof !540

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3289
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s), !dbg !3304
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3304

bb.j:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !3305
  %i.u = load i8, ptr %i.t, align 1, !dbg !3305, !range !688, !alias.scope !3287, !noundef !531
  %i.v = icmp eq i8 %i.u, -40, !dbg !3306
  br i1 %i.v, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3306, !prof !540

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3307
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.l, !dbg !3308

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.m, !dbg !3309

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3307
  unreachable, !dbg !3307

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.l
  resume { ptr, i32 } %i.x, !dbg !3307

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.k, %bb.j
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0), !dbg !3310
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3289
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 !dbg !3311 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3359, !range !705, !noundef !531 ; 2 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807, !dbg !3359
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3359

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  ret void, !dbg !3359

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3351), !dbg !3359
  %.not.i = icmp eq i64 %i.a, -9223372036854775808, !dbg !3360
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !3360

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state16IcebergSinkStateECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(192) %0), !dbg !3360
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3360

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3352), !dbg !3360
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3361, !alias.scope !3353, !noundef !531 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !3361
  br i1 %i.e, label %bb.e, label %bb.g, !dbg !3361

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3361 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354), !dbg !3361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3355), !dbg !3362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356), !dbg !3363
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3364, !alias.scope !3357, !nonnull !531, !noundef !531
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !3365, !noalias !3357
  %i.i = icmp eq i64 %i.h, 1, !dbg !3366
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3366

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3367
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41, !dbg !3368
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3368

bb.g:                                             ; preds = %bb.d
  %i.j = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3369, !noalias !3358
  %i.k = icmp eq i64 %i.j, 1, !dbg !3370
  br i1 %i.k, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3370

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !3371
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink23SinkedPathsCallbackArgsEEp6OutputINtNtBO_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3U_4SyncEL_E9drop_slowB1w_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !3372
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3372
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3373 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3401, !range !692, !noundef !531 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3401
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3401

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3401

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3397), !dbg !3401
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3402 ; 3 uses
  %1 = icmp eq i64 %i.a, 0, !dbg !3402
  br i1 %1, label %bb.c, label %bb.e, !dbg !3402

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398), !dbg !3402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3399), !dbg !3403
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3404, !alias.scope !3400, !nonnull !531, !noundef !531
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3405, !noalias !3400
  %i.f = icmp eq i64 %i.e, 1, !dbg !3406
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, !dbg !3406

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3407
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjIBx_SNtNtB7_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3408
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, !dbg !3408

bb.e:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !3402, !alias.scope !3397, !nonnull !531, !noundef !531
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectECshquuC4dCYVj_10polars_sql(ptr nonnull %.val.i), !dbg !3409, !noalias !3397
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, !dbg !3402
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1W_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB22_9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3410 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3488 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !3488, !noundef !531
  %i.c = icmp eq ptr %i.b, null, !dbg !3488
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3488

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i, %bb.a
  ret void, !dbg !3488

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472), !dbg !3488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473), !dbg !3489
  %i.d = load ptr, ptr %0, align 8, !dbg !3490, !alias.scope !3474, !noundef !531 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !3490
  br i1 %i.e, label %bb.c, label %bb.e, !dbg !3490

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3490 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475), !dbg !3490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476), !dbg !3491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3477), !dbg !3492
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3493, !alias.scope !3478, !nonnull !531, !noundef !531
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !3494, !noalias !3478
  %i.i = icmp eq i64 %i.h, 1, !dbg !3495
  br i1 %i.i, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3495

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3496
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.g, !dbg !3497

bb.e:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3498, !noalias !3479
  %i.k = icmp eq i64 %i.j, 1, !dbg !3499
  br i1 %i.k, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3499

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3500
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3F_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.g, !dbg !3501

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480), !dbg !3489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481), !dbg !3502
  %i.m = load ptr, ptr %i.a, align 8, !dbg !3503, !alias.scope !3482, !nonnull !531, !noundef !531
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !3504, !noalias !3483
  %i.o = icmp eq i64 %i.n, 1, !dbg !3505
  br i1 %i.o, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3505

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !3506
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.j, !dbg !3507

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484), !dbg !3489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485), !dbg !3508
  %i.p = load ptr, ptr %i.a, align 8, !dbg !3509, !alias.scope !3486, !nonnull !531, !noundef !531
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !3510, !noalias !3487
  %i.r = icmp eq i64 %i.q, 1, !dbg !3511
  br i1 %i.r, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3511

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i
  fence acquire, !dbg !3512
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41, !dbg !3513
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3513

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3489
  unreachable, !dbg !3489

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l, !dbg !3489
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap5inner4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3514 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3521
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3522
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !3523

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %0) #39
          to label %bb.d unwind label %bb.c, !dbg !3521

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %0), !dbg !3521
  ret void, !dbg !3521

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3521
  unreachable, !dbg !3521

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !3521
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1z_EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3524 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3561, !noundef !531 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !3561
  br i1 %i.b, label %bb.b, label %bb.d, !dbg !3561

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3561 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3556), !dbg !3561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557), !dbg !3562
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3558), !dbg !3563
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3564, !alias.scope !3559, !nonnull !531, !noundef !531
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3565, !noalias !3559
  %i.f = icmp eq i64 %i.e, 1, !dbg !3566
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3566

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3567
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3568
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3568

bb.d:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %i.a, i64 -1 release, align 8, !dbg !3569, !noalias !3560
  %i.h = icmp eq i64 %i.g, 1, !dbg !3570
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3570

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3571
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3x_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #41, !dbg !3572
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3572

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !3561
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBL_3dsl4plan7DslPlanEIB1B_INtNtB1F_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEB27_EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3573 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3610, !noundef !531 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !3610
  br i1 %i.b, label %bb.b, label %bb.d, !dbg !3610

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3610 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3605), !dbg !3610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3606), !dbg !3611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3607), !dbg !3612
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3613, !alias.scope !3608, !nonnull !531, !noundef !531
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !3614, !noalias !3608
  %i.f = icmp eq i64 %i.e, 1, !dbg !3615
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3615

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3616
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3617
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3617

bb.d:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %i.a, i64 -1 release, align 8, !dbg !3618, !noalias !3609
  %i.h = icmp eq i64 %i.g, 1, !dbg !3619
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3619

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3620
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTTINtNtB7_3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEIB1q_IBx_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEp6OutputINtNtBO_6result6ResultB1F_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB5K_4SyncEL_E9drop_slowB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #41, !dbg !3621
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3621

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !3610
}
end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql:bb.a
.lr.ph11:                                         ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i
  %.sroa.0.1.i10 = phi i64 [ %i.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.1.i10, !dbg !8931 ; 2 uses
  %i.o = add i64 %.sroa.0.1.i10, 1, !dbg !8931    ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !dbg !8933, !range !8924, !alias.scope !8926, !noalias !8923, !noundef !531
  %i.q = icmp eq i64 %i.p, 4, !dbg !8933
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, label %bb.e, !dbg !8933

bb.e:                                             ; preds = %.lr.ph11
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i unwind label %bb.f, !dbg !8933, !noalias !8923, !inline_history !8846

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i: ; preds = %bb.e, %.lr.ph11
  %i.r = icmp eq i64 %i.o, %i.e, !dbg !8931
  br i1 %i.r, label %common.resume, label %.lr.ph11, !dbg !8931

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8931, !noalias !8923, !inline_history !8850
  unreachable, !dbg !8931

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, %bb.d, %bb.i
  %.sink25 = phi i64 [ %.val1, %bb.i ], [ %i.e, %bb.d ], [ %.val1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %.sink = phi ptr [ %.val, %bb.i ], [ %i.c, %bb.d ], [ %.val, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.l, %bb.d ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %i.t = mul nuw nsw i64 %.sink25, 24, !dbg !8929
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #42, !dbg !8929
  resume { ptr, i32 } %common.resume.op, !dbg !8929

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i
  %i.u = mul nuw nsw i64 %i.e, 24, !dbg !8934
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #42, !dbg !8935, !noalias !8923
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8936

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8929
  %.val = load ptr, ptr %i.v, align 8, !dbg !8929, !nonnull !531, !noundef !531 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8929
  %.val1 = load i64, ptr %i.w, align 8, !dbg !8929, !noundef !531 ; 7 uses
  %i.x = icmp eq i64 %.val1, 0, !dbg !8937
  br i1 %i.x, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph.i.i, !dbg !8937

.lr.ph.i.i:                                       ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.z, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i, !dbg !8937 ; 2 uses
  %i.z = add nuw i64 %.sroa.0.010.i.i, 1, !dbg !8937 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 23, !dbg !8938
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !8938, !range !715, !alias.scope !8927, !noundef !531
  %cond.i.i.i = icmp eq i8 %i.ab, -40, !dbg !8938
  br i1 %cond.i.i.i, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i, !dbg !8938, !prof !716

bb.h:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.i, !dbg !8939

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = icmp eq i64 %i.z, %.val1, !dbg !8937
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, label %.lr.ph.i.i, !dbg !8937

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.z, %.val1, !dbg !8937
  br i1 %i.ae, label %common.resume, label %.lr.ph13.i.i, !dbg !8937

.lr.ph13.i.i:                                     ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %i.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.111.i.i, !dbg !8937 ; 2 uses
  %i.ag = add i64 %.sroa.0.111.i.i, 1, !dbg !8937 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 23, !dbg !8940
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !8940, !range !715, !alias.scope !8928, !noundef !531
  %cond.i7.i.i = icmp eq i8 %i.ai, -40, !dbg !8940
  br i1 %cond.i7.i.i, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, !dbg !8940, !prof !716

bb.j:                                             ; preds = %.lr.ph13.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i unwind label %bb.k, !dbg !8941

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i: ; preds = %bb.j, %.lr.ph13.i.i
  %i.aj = icmp eq i64 %i.ag, %.val1, !dbg !8937
  br i1 %i.aj, label %common.resume, label %.lr.ph13.i.i, !dbg !8937

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8937
  unreachable, !dbg !8937

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %i.al = mul nuw nsw i64 %.val1, 24, !dbg !8942
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef 8) #42, !dbg !8943
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8944

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8929
  %.val3 = load i64, ptr %i.am, align 8, !dbg !8929, !noundef !531 ; 2 uses
  %i.an = icmp eq i64 %.val3, 0, !dbg !8945
  br i1 %i.an, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.m, !dbg !8945

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8929
  %.val2 = load ptr, ptr %i.ao, align 8, !dbg !8929, !nonnull !531, !noundef !531
  %i.ap = shl nuw nsw i64 %.val3, 5, !dbg !8946
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef 16) #42, !dbg !8947
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8948

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8929
  %.val5 = load i64, ptr %i.aq, align 8, !dbg !8929, !noundef !531 ; 2 uses
  %i.ar = icmp eq i64 %.val5, 0, !dbg !8949
  br i1 %i.ar, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.o, !dbg !8949

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8929
  %.val4 = load ptr, ptr %i.as, align 8, !dbg !8929, !nonnull !531, !noundef !531
  %i.at = shl nuw nsw i64 %.val5, 4, !dbg !8950
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef 8) #42, !dbg !8951
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8952

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b, %bb.o, %bb.n, %bb.m, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !8929
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6schema8FileInfoECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8953 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !8968 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8965), !dbg !8968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8966), !dbg !8969
  %i.b = load ptr, ptr %i.a, align 8, !dbg !8970, !alias.scope !8967, !nonnull !531, !noundef !531
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !dbg !8971, !noalias !8967
  %i.d = icmp eq i64 %i.c, 1, !dbg !8972
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit, !dbg !8972

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !8973
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !8974

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8968
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %i.f) #39
          to label %bb.e unwind label %bb.d, !dbg !8968

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8968
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %i.g), !dbg !8968
  ret void, !dbg !8968

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8968
  unreachable, !dbg !8968

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !8968
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3cat19CategoricalFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #0 !dbg !8975 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !8978, !range !746, !noundef !531
  switch i8 %i.a, label %bb.b [
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 6, label %bb.e
  ], !dbg !8978

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !8978

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8978
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !8979
  br label %bb.b, !dbg !8978

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8978
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !8980
  br label %bb.b, !dbg !8978

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8978
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.d), !dbg !8978
  br label %bb.b, !dbg !8978
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !8981 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !9029, !range !747, !noundef !531 ; 2 uses
  %i.b = icmp samesign ugt i64 %i.a, 1, !dbg !9029
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !9029

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9021), !dbg !9029
  %1 = icmp eq i64 %i.a, 0, !dbg !9030
  br i1 %1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !9030

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9030 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9022), !dbg !9030
  %i.d = load ptr, ptr %i.c, align 8, !dbg !9031, !alias.scope !9023, !noundef !531 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !9031
  br i1 %i.e, label %bb.d, label %bb.f, !dbg !9031

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9031 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9024), !dbg !9031
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9025), !dbg !9032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9026), !dbg !9033
  %i.g = load ptr, ptr %i.f, align 8, !dbg !9034, !alias.scope !9027, !nonnull !531, !noundef !531
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !9035, !noalias !9027
  %i.i = icmp eq i64 %i.h, 1, !dbg !9036
  br i1 %i.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9036

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !9037
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41, !dbg !9038
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9038

bb.f:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !9039, !noalias !9028
  %i.k = icmp eq i64 %i.j, 1, !dbg !9040
  br i1 %i.k, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9040

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !9041
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB30_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !9042
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9042

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !9029
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5range13RangeFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 !dbg !9043 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !9062, !range !748, !noundef !531
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.f
  ], !dbg !9062

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !9062

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9062
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !9062
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9062

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9062
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.c), !dbg !9062
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9062

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9063
  %i.e = load i8, ptr %i.d, align 1, !dbg !9063, !range !715, !alias.scope !9060, !noundef !531
  %cond.i = icmp eq i8 %i.e, -40, !dbg !9063
  br i1 %cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9063, !prof !716

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9062
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !9064
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9064

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9065
  %i.h = load i8, ptr %i.g, align 1, !dbg !9065, !range !715, !alias.scope !9061, !noundef !531
  %cond.i1 = icmp eq i8 %i.h, -40, !dbg !9065
  br i1 %cond.i1, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9065, !prof !716

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9062
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !9066
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9066
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !9067 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !9109, !range !749, !noundef !531
  %switch = icmp samesign ult i8 %i.a, 11, !dbg !9109
  br i1 %switch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !9109

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9109 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9103), !dbg !9109
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9110, !alias.scope !9103, !noundef !531 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !9110
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !9110

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9110 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9104), !dbg !9110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9105), !dbg !9111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9106), !dbg !9112
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9113, !alias.scope !9107, !nonnull !531, !noundef !531
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !9114, !noalias !9107
  %i.h = icmp eq i64 %i.g, 1, !dbg !9115
  br i1 %i.h, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9115

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !9116
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #41, !dbg !9117
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9117

bb.e:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !9118, !noalias !9108
  %i.j = icmp eq i64 %i.i, 1, !dbg !9119
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9119

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !9120
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3r_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #41, !dbg !9121
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9121

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !9109
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7strings14StringFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9122 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !9259, !range !750, !noundef !531
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 8, label %bb.h
    i8 10, label %bb.i
    i8 14, label %bb.k
    i8 36, label %bb.l
  ], !dbg !9259

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2: ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k, %bb.a
  ret void, !dbg !9259

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !9260
  %i.c = load i8, ptr %i.b, align 1, !dbg !9260, !range !688, !alias.scope !9245, !noundef !531
  %i.d = icmp eq i8 %i.c, -40, !dbg !9261
  br i1 %i.d, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !9261, !prof !540

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9259
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !9262

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9263
  %i.g = load i8, ptr %i.f, align 1, !dbg !9263, !range !688, !alias.scope !9246, !noundef !531
  %i.h = icmp eq i8 %i.g, -40, !dbg !9264
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9264, !prof !540

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9259
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !9265
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9265

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9266
  %i.k = load i8, ptr %i.j, align 1, !dbg !9266, !range !688, !alias.scope !9247, !noundef !531
  %i.l = icmp eq i8 %i.k, -40, !dbg !9267
  br i1 %i.l, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9267, !prof !540

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9259
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !dbg !9268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9268

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9259
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n)
          to label %bb.s unwind label %bb.q, !dbg !9259

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9259 ; 2 uses
  %i.p = load i8, ptr %i.o, align 16, !dbg !9269, !range !738, !alias.scope !9248, !noundef !531
  %i.q = icmp eq i8 %i.p, 31, !dbg !9269
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, label %bb.j, !dbg !9269

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.o), !dbg !9269
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9269

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9259
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.r), !dbg !9259
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9259

bb.l:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9259
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.s)
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptimeNtB2_13StrpTimeState5parse:bb.a
  %i.dj = sub nuw nsw i64 %2, %i.cw, !dbg !14859
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw, !dbg !14860
  %i.dl = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCsh6mDDnHa5nR_14rustc_demangle(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dg), !dbg !14861, !noalias !14639
  %i.dm = select i1 %i.dl, i64 %i.dg, i64 0, !dbg !14862
  %spec.select262 = add i64 %i.dm, %i.cw, !dbg !14862
  br label %.thread259, !dbg !14862

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1145) #38, !dbg !14863, !noalias !14638
  unreachable, !dbg !14863

bb.y:                                             ; preds = %bb.g
  %i.dn = add i64 %.sroa.083.1648, 2, !dbg !14864 ; 2 uses
  %i.do = icmp ugt i64 %.sroa.083.1648, -3, !dbg !14865
  %.not.i251 = icmp ugt i64 %i.dn, %2
  %or.cond.i252 = or i1 %i.do, %.not.i251, !dbg !14865
  br i1 %or.cond.i252, label %.loopexit279, label %bb.z, !dbg !14865

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14866
  %.sroa.034.0.copyload.i12.i253 = load i16, ptr %i.dp, align 1, !dbg !14867, !alias.scope !14642, !noalias !14643
  %i.dq = zext i16 %.sroa.034.0.copyload.i12.i253 to i64, !dbg !14868 ; 3 uses
  %i.dr = add nuw nsw i64 %i.dq, 1542, !dbg !14869
  %i.ds = lshr i64 %i.dr, 4, !dbg !14870
  %i.dt = and i64 %i.ds, 3855, !dbg !14870
  %i.du = and i64 %i.dq, 61680, !dbg !14871
  %i.dv = or disjoint i64 %i.dt, %i.du, !dbg !14872
  %switch673.not = icmp eq i64 %i.dv, 13107, !dbg !14873
  br i1 %switch673.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256, label %.loopexit279, !dbg !14873

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256: ; preds = %bb.z
  %i.dw = shl nuw i64 %i.dq, 48, !dbg !14874
  %i.dx = and i64 %i.dw, 1085086035219578880, !dbg !14875
  %i.dy = mul i64 %i.dx, 2561, !dbg !14876
  %i.dz = lshr exact i64 %i.dy, 8, !dbg !14877
  %i.ea = and i64 %i.dz, 71776119061217280, !dbg !14878
  %i.eb = mul i64 %i.ea, 6553601, !dbg !14879
  %i.ec = lshr exact i64 %i.eb, 16, !dbg !14880
  %i.ed = mul i64 %i.ec, 42949672960001, !dbg !14881
  %i.ee = lshr exact i64 %i.ed, 32, !dbg !14882
  %i.ef = trunc nuw i64 %i.ee to i32, !dbg !14883
  br label %.thread259, !dbg !14884

bb.aa:                                            ; preds = %bb.g
  %i.eg = add i64 %.sroa.083.1648, 2, !dbg !14885 ; 2 uses
  %i.eh = icmp ugt i64 %.sroa.083.1648, -3, !dbg !14886
  %.not.i262 = icmp ugt i64 %i.eg, %2
  %or.cond.i263 = or i1 %i.eh, %.not.i262, !dbg !14886
  br i1 %or.cond.i263, label %.loopexit278, label %bb.ab, !dbg !14886

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14887
  %.sroa.034.0.copyload.i12.i264 = load i16, ptr %i.ei, align 1, !dbg !14888, !alias.scope !14644, !noalias !14645
  %i.ej = zext i16 %.sroa.034.0.copyload.i12.i264 to i64, !dbg !14889 ; 3 uses
  %i.ek = add nuw nsw i64 %i.ej, 1542, !dbg !14890
  %i.el = lshr i64 %i.ek, 4, !dbg !14891
  %i.em = and i64 %i.el, 3855, !dbg !14891
  %i.en = and i64 %i.ej, 61680, !dbg !14892
  %i.eo = or disjoint i64 %i.em, %i.en, !dbg !14893
  %switch674.not = icmp eq i64 %i.eo, 13107, !dbg !14894
  br i1 %switch674.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267, label %.loopexit278, !dbg !14894

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267: ; preds = %bb.ab
  %i.ep = shl nuw i64 %i.ej, 48, !dbg !14895
  %i.eq = and i64 %i.ep, 1085086035219578880, !dbg !14896
  %i.er = mul i64 %i.eq, 2561, !dbg !14897
  %i.es = lshr exact i64 %i.er, 8, !dbg !14898
  %i.et = and i64 %i.es, 71776119061217280, !dbg !14899
  %i.eu = mul i64 %i.et, 6553601, !dbg !14900
  %i.ev = lshr exact i64 %i.eu, 16, !dbg !14901
  %i.ew = mul i64 %i.ev, 42949672960001, !dbg !14902
  %i.ex = lshr exact i64 %i.ew, 32, !dbg !14903
  %i.ey = trunc nuw i64 %i.ex to i32, !dbg !14904
  br label %.thread259, !dbg !14905

bb.ac:                                            ; preds = %bb.g
  %i.ez = add i64 %.sroa.083.1648, 2, !dbg !14906 ; 2 uses
  %i.fa = icmp ugt i64 %.sroa.083.1648, -3, !dbg !14907
  %.not.i273 = icmp ugt i64 %i.ez, %2
  %or.cond.i274 = or i1 %i.fa, %.not.i273, !dbg !14907
  br i1 %or.cond.i274, label %.loopexit277, label %bb.ad, !dbg !14907

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14908
  %.sroa.034.0.copyload.i12.i275 = load i16, ptr %i.fb, align 1, !dbg !14909, !alias.scope !14646, !noalias !14647
  %i.fc = zext i16 %.sroa.034.0.copyload.i12.i275 to i64, !dbg !14910 ; 3 uses
  %i.fd = add nuw nsw i64 %i.fc, 1542, !dbg !14911
  %i.fe = lshr i64 %i.fd, 4, !dbg !14912
  %i.ff = and i64 %i.fe, 3855, !dbg !14912
  %i.fg = and i64 %i.fc, 61680, !dbg !14913
  %i.fh = or disjoint i64 %i.ff, %i.fg, !dbg !14914
  %switch675.not = icmp eq i64 %i.fh, 13107, !dbg !14915
  br i1 %switch675.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278, label %.loopexit277, !dbg !14915

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278: ; preds = %bb.ad
  %i.fi = shl nuw i64 %i.fc, 48, !dbg !14916
  %i.fj = and i64 %i.fi, 1085086035219578880, !dbg !14917
  %i.fk = mul i64 %i.fj, 2561, !dbg !14918
  %i.fl = lshr exact i64 %i.fk, 8, !dbg !14919
  %i.fm = and i64 %i.fl, 71776119061217280, !dbg !14920
  %i.fn = mul i64 %i.fm, 6553601, !dbg !14921
  %i.fo = lshr exact i64 %i.fn, 16, !dbg !14922
  %i.fp = mul i64 %i.fo, 42949672960001, !dbg !14923
  %i.fq = lshr exact i64 %i.fp, 32, !dbg !14924
  %i.fr = trunc nuw i64 %i.fq to i32, !dbg !14925
  br label %.thread259, !dbg !14926

bb.ae:                                            ; preds = %bb.g
  %i.fs = add i64 %.sroa.083.1648, 2, !dbg !14927 ; 2 uses
  %i.ft = icmp ugt i64 %.sroa.083.1648, -3, !dbg !14928
  %.not.i284 = icmp ugt i64 %i.fs, %2
  %or.cond.i285 = or i1 %i.ft, %.not.i284, !dbg !14928
  br i1 %or.cond.i285, label %.loopexit276, label %bb.af, !dbg !14928

bb.af:                                            ; preds = %bb.ae
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14929
  %.sroa.034.0.copyload.i12.i286 = load i16, ptr %i.fu, align 1, !dbg !14930, !alias.scope !14648, !noalias !14649
  %i.fv = zext i16 %.sroa.034.0.copyload.i12.i286 to i64, !dbg !14931 ; 3 uses
  %i.fw = add nuw nsw i64 %i.fv, 1542, !dbg !14932
  %i.fx = lshr i64 %i.fw, 4, !dbg !14933
  %i.fy = and i64 %i.fx, 3855, !dbg !14933
  %i.fz = and i64 %i.fv, 61680, !dbg !14934
  %i.ga = or disjoint i64 %i.fy, %i.fz, !dbg !14935
  %switch676.not = icmp eq i64 %i.ga, 13107, !dbg !14936
  br i1 %switch676.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289, label %.loopexit276, !dbg !14936

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289: ; preds = %bb.af
  %i.gb = shl nuw i64 %i.fv, 48, !dbg !14937
  %i.gc = and i64 %i.gb, 1085086035219578880, !dbg !14938
  %i.gd = mul i64 %i.gc, 2561, !dbg !14939
  %i.ge = lshr exact i64 %i.gd, 8, !dbg !14940
  %i.gf = and i64 %i.ge, 71776119061217280, !dbg !14941
  %i.gg = mul i64 %i.gf, 6553601, !dbg !14942
  %i.gh = lshr exact i64 %i.gg, 16, !dbg !14943
  %i.gi = mul i64 %i.gh, 42949672960001, !dbg !14944
  %i.gj = lshr exact i64 %i.gi, 32, !dbg !14945
  %i.gk = trunc nuw i64 %i.gj to i32, !dbg !14946
  br label %.thread259, !dbg !14947

bb.ag:                                            ; preds = %bb.g
  %i.gl = add i64 %.sroa.083.1648, 2, !dbg !14948 ; 2 uses
  %i.gm = icmp ugt i64 %.sroa.083.1648, -3, !dbg !14949
  %.not = icmp ugt i64 %i.gl, %2
  %or.cond = or i1 %i.gm, %.not, !dbg !14949
  br i1 %or.cond, label %bb.av, label %bb.at, !dbg !14949

bb.ah:                                            ; preds = %bb.g
  %i.gn = add i64 %.sroa.083.1648, 9, !dbg !14950 ; 2 uses
  %i.go = icmp ugt i64 %.sroa.083.1648, -10, !dbg !14951
  %.not.i295 = icmp ugt i64 %i.gn, %2
  %or.cond.i296 = or i1 %i.go, %.not.i295, !dbg !14951
  br i1 %or.cond.i296, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, label %bb.ai, !dbg !14951

bb.ai:                                            ; preds = %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14952 ; 2 uses
  %.sroa.025.0.copyload.i45.i = load i64, ptr %i.gp, align 1, !dbg !14953, !alias.scope !14653, !noalias !14654 ; 3 uses
  %i.gq = add i64 %.sroa.025.0.copyload.i45.i, 434041037028460038, !dbg !14954
  %i.gr = lshr i64 %i.gq, 4, !dbg !14955
  %i.gs = and i64 %i.gr, 1085102592571150095, !dbg !14955
  %i.gt = and i64 %.sroa.025.0.copyload.i45.i, -1085102592571150096, !dbg !14956
  %i.gu = or disjoint i64 %i.gs, %i.gt, !dbg !14957
  %i.gv = xor i64 %i.gu, 3689348814741910323, !dbg !14957
  %i.gw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gv, i1 false), !dbg !14958
  %.mask804 = and i64 %i.gw, 120, !dbg !14959
  %cond = icmp eq i64 %.mask804, 64, !dbg !14959
  br i1 %cond, label %bb.aj, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, !dbg !14959

bb.aj:                                            ; preds = %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8, !dbg !14960
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !14961, !alias.scope !14655, !noalias !14654, !noundef !531 ; 2 uses
  %i.gz = zext i8 %i.gy to i64, !dbg !14961       ; 2 uses
  %i.ha = zext i8 %i.gy to i128, !dbg !14962
  %i.hb = shl nuw nsw i128 %i.ha, 64, !dbg !14963
  %i.hc = zext i64 %.sroa.025.0.copyload.i45.i to i128, !dbg !14964
  %i.hd = or disjoint i128 %i.hb, %i.hc, !dbg !14963
  %i.he = add nuw nsw i64 %i.gz, 6, !dbg !14965
  %i.hf = lshr i64 %i.he, 4, !dbg !14966
  %i.hg = and i64 %i.hf, 15, !dbg !14966
  %i.hh = and i64 %i.gz, 240, !dbg !14967
  %i.hi = or disjoint i64 %i.hg, %i.hh, !dbg !14968
  %i.hj = xor i64 %i.hi, 3689348814741910323, !dbg !14968
  %i.hk = tail call range(i64 0, 9) i64 @llvm.cttz.i64(i64 %i.hj, i1 true), !dbg !14969
  %i.hl = trunc nuw nsw i64 %i.hk to i32, !dbg !14969
  %i.hm = lshr i32 %i.hl, 3, !dbg !14970          ; 2 uses
  %i.hn = mul nuw nsw i32 %i.hm, 120
  %i.ho = xor i32 %i.hn, 64
  %i.hp = zext nneg i32 %i.ho to i128
  %i.hq = shl i128 %i.hd, %i.hp
  %i.hr = and i128 %i.hq, 20016609818878733144904388672456953615
  %i.hs = mul i128 %i.hr, 2561
  %i.ht = lshr i128 %i.hs, 8
  %i.hu = and i128 %i.ht, 1324055902416102970674609367438786815
  %i.hv = mul i128 %i.hu, 6553601
  %i.hw = lshr i128 %i.hv, 16
  %i.hx = and i128 %i.hw, 5192217631581220737344928932233215
  %i.hy = mul i128 %i.hx, 42949672960001
  %i.hz = lshr i128 %i.hy, 32
  %i.ia = and i128 %i.hz, 79228162495817593524129366015
  %i.ib = mul i128 %i.ia, 1844674407370955161600000001 ; 2 uses
  %i.ic = icmp ult i128 %i.ib, 79228162514264337593543950336, !dbg !14971
  %5 = icmp ne i32 %i.hm, 0
  %or.cond792 = and i1 %i.ic, %5, !dbg !14971
  br i1 %or.cond792, label %bb.ax, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, !dbg !14971

bb.ak:                                            ; preds = %bb.g
  %i.id = add i64 %.sroa.083.1648, 6, !dbg !14972 ; 2 uses
  %i.ie = icmp ugt i64 %.sroa.083.1648, -7, !dbg !14973
  %.not.i305 = icmp ugt i64 %i.id, %2
  %or.cond.i306 = or i1 %i.ie, %.not.i305, !dbg !14973
  br i1 %or.cond.i306, label %.loopexit275, label %bb.al, !dbg !14973

bb.al:                                            ; preds = %bb.ak
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14974 ; 2 uses
  %.sroa.030.0.copyload.i32.i = load i32, ptr %i.if, align 1, !dbg !14975, !alias.scope !14658, !noalias !14659
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2, !dbg !14976
  %.sroa.029.0.copyload.i28.i = load i32, ptr %i.ig, align 1, !dbg !14977, !alias.scope !14658, !noalias !14659
  %i.ih = zext i32 %.sroa.029.0.copyload.i28.i to i64, !dbg !14978
  %i.ii = shl nuw nsw i64 %i.ih, 16, !dbg !14978
  %i.ij = zext i32 %.sroa.030.0.copyload.i32.i to i64, !dbg !14979
  %i.ik = or i64 %i.ii, %i.ij, !dbg !14978        ; 3 uses
  %i.il = add nuw nsw i64 %i.ik, 6622940628486, !dbg !14980
  %i.im = lshr i64 %i.il, 4, !dbg !14981
  %i.in = and i64 %i.im, 16557351571215, !dbg !14981
  %i.io = and i64 %i.ik, 264917625139440, !dbg !14982
  %i.ip = or disjoint i64 %i.in, %i.io, !dbg !14983
  %i.iq = xor i64 %i.ip, 3689348814741910323, !dbg !14983
  %i.ir = tail call range(i64 0, 49) i64 @llvm.cttz.i64(i64 %i.iq, i1 true), !dbg !14984 ; 2 uses
  %switch677 = icmp samesign ugt i64 %i.ir, 15, !dbg !14985
  %.mask680 = and i64 %i.ir, 56
  %i.is = icmp eq i64 %.mask680, 48
  %or.cond793 = and i1 %switch677, %i.is, !dbg !14985
  br i1 %or.cond793, label %bb.bb, label %.loopexit275, !dbg !14985

bb.am:                                            ; preds = %bb.g
  %i.it = add i64 %.sroa.083.1648, 3, !dbg !14986 ; 2 uses
  %i.iu = icmp ugt i64 %.sroa.083.1648, -4, !dbg !14987
  %.not.i315 = icmp ugt i64 %i.it, %2
  %or.cond.i316 = or i1 %i.iu, %.not.i315, !dbg !14987
  br i1 %or.cond.i316, label %.loopexit274, label %bb.an, !dbg !14987

bb.an:                                            ; preds = %bb.am
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !14988 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1, !dbg !14989
  %.sroa.033.0.copyload.i16.i = load i16, ptr %i.iw, align 1, !dbg !14990, !alias.scope !14666, !noalias !14667
  %i.ix = zext i16 %.sroa.033.0.copyload.i16.i to i64, !dbg !14991
  %i.iy = shl nuw nsw i64 %i.ix, 8, !dbg !14991
  %i.iz = load i8, ptr %i.iv, align 1, !dbg !14992, !alias.scope !14666, !noalias !14667, !noundef !531
  %i.ja = zext i8 %i.iz to i64, !dbg !14992
  %i.jb = or disjoint i64 %i.iy, %i.ja, !dbg !14991 ; 3 uses
  %i.jc = add nuw nsw i64 %i.jb, 394758, !dbg !14993
  %i.jd = lshr i64 %i.jc, 4, !dbg !14994
  %i.je = and i64 %i.jd, 986895, !dbg !14994
  %i.jf = and i64 %i.jb, 15790320, !dbg !14995
  %i.jg = or disjoint i64 %i.je, %i.jf, !dbg !14996
  %i.jh = xor i64 %i.jg, 3689348814741910323, !dbg !14996
  %i.ji = tail call range(i64 0, 25) i64 @llvm.cttz.i64(i64 %i.jh, i1 true), !dbg !14997 ; 2 uses
  %switch678 = icmp samesign ugt i64 %i.ji, 15, !dbg !14998
  %.mask679 = and i64 %i.ji, 24
  %i.jj = icmp eq i64 %.mask679, 24
  %or.cond794 = and i1 %switch678, %i.jj, !dbg !14998
  br i1 %or.cond794, label %bb.bf, label %.loopexit274, !dbg !14998

_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.l
  %.sroa.66.0306322.i = phi i32 [ %i.bw, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.ar, %bb.l ] ; 2 uses
  %i.jk = sub i32 0, %.sroa.66.0306322.i
  %spec.select111 = select i1 %.sroa.0.0, i32 %i.jk, i32 %.sroa.66.0306322.i, !dbg !14999
  br label %.thread259, !dbg !14999

bb.ao:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit125.i, %bb.j, %bb.l, %bb.m, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit49.i
  store i32 0, ptr %0, align 4, !dbg !15000
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

.loopexit280:                                     ; preds = %bb.n, %bb.o
  store i32 0, ptr %0, align 4, !dbg !15001
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

bb.ap:                                            ; preds = %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i
  store i32 0, ptr %0, align 4, !dbg !15002
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

bb.aq:                                            ; preds = %bb.p
  %i.jl = load i32, ptr %i.i, align 8, !dbg !15003, !noundef !531
  %i.jm = load i64, ptr %i.j, align 8, !dbg !15003, !noundef !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15004
  br label %.thread259, !dbg !15005

bb.ar:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15004
  store i32 0, ptr %0, align 4, !dbg !15006
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

bb.as:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14851, !noalias !14638
  store i32 0, ptr %0, align 4, !dbg !15007
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

.loopexit279:                                     ; preds = %bb.y, %bb.z
  store i32 0, ptr %0, align 4, !dbg !15008
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

.loopexit278:                                     ; preds = %bb.aa, %bb.ab
  store i32 0, ptr %0, align 4, !dbg !15009
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

.loopexit277:                                     ; preds = %bb.ac, %bb.ad
  store i32 0, ptr %0, align 4, !dbg !15010
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

.loopexit276:                                     ; preds = %bb.ae, %bb.af
  store i32 0, ptr %0, align 4, !dbg !15011
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14771

bb.at:                                            ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15012 ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !dbg !15013, !alias.scope !14685, !noundef !531
  %cond.i = icmp eq i8 %i.jo, 45, !dbg !15013
  br i1 %cond.i, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, !dbg !15013

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244: ; preds = %bb.at
  %.sroa.034.0.copyload.i208 = load i16, ptr %i.jn, align 1, !dbg !15014, !alias.scope !14688, !noalias !14689
  %i.jp = zext i16 %.sroa.034.0.copyload.i208 to i64, !dbg !15015 ; 4 uses
  %i.jq = add nuw nsw i64 %i.jp, 1542, !dbg !15016
  %i.jr = lshr i64 %i.jq, 4, !dbg !15017
  %i.js = and i64 %i.jr, 3855, !dbg !15017
  %i.jt = and i64 %i.jp, 61680, !dbg !15018
  %i.ju = or disjoint i64 %i.js, %i.jt, !dbg !15019
  %i.jv = xor i64 %i.ju, 3689348814741910323, !dbg !15019
  %i.jw = tail call range(i64 0, 17) i64 @llvm.cttz.i64(i64 %i.jv, i1 true), !dbg !15020 ; 2 uses
  %i.jx = trunc nuw nsw i64 %i.jw to i32, !dbg !15020
  %i.jy = lshr i32 %i.jx, 3, !dbg !15021
  switch i32 %i.jy, label %bb.au [
    i32 0, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242
    i32 1, label %.thread153
  ], !dbg !15022

.thread153:                                       ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.jz = and i64 %i.jp, 15, !dbg !15023
  br label %bb.aw, !dbg !15024

bb.au:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.ka = icmp samesign ugt i64 %i.jw, 15, !dbg !15025
  tail call void @llvm.assume(i1 %i.ka), !dbg !15025, !noalias !14690
  %i.kb = shl nuw i64 %i.jp, 48, !dbg !15026
  %i.kc = and i64 %i.kb, 1085086035219578880, !dbg !15027
  %i.kd = mul i64 %i.kc, 2561, !dbg !15028
  %i.ke = lshr exact i64 %i.kd, 8, !dbg !15029
  %i.kf = and i64 %i.ke, 71776119061217280, !dbg !15030
  %i.kg = mul i64 %i.kf, 6553601, !dbg !15031
  %i.kh = lshr exact i64 %i.kg, 16, !dbg !15032
  %i.ki = mul i64 %i.kh, 42949672960001, !dbg !15033 ; 2 uses
  %i.kj = lshr exact i64 %i.ki, 32, !dbg !15034
  %i.kk = icmp ugt i64 %i.ki, 9223372032559808512, !dbg !15024
  br i1 %i.kk, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242, label %bb.aw, !dbg !15024

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168: ; preds = %bb.at
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 1, !dbg !15035
  %i.km = load i8, ptr %i.kl, align 1, !dbg !15036, !alias.scope !14691, !noalias !14692, !noundef !531 ; 2 uses
  %i.kn = zext i8 %i.km to i64, !dbg !15036       ; 2 uses
  %i.ko = add nuw nsw i64 %i.kn, 6, !dbg !15037
  %i.kp = lshr i64 %i.ko, 4, !dbg !15038
  %i.kq = and i64 %i.kp, 15, !dbg !15038
  %i.kr = and i64 %i.kn, 240, !dbg !15039
  %i.ks = or disjoint i64 %i.kq, %i.kr, !dbg !15040
  %trunc.not = icmp eq i64 %i.ks, 51, !dbg !15041
  br i1 %trunc.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242, !dbg !15041

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168
  %i.kt = and i8 %i.km, 15, !dbg !15042
  %i.ku = zext nneg i8 %i.kt to i32, !dbg !15042
  %i.kv = sub nsw i32 0, %i.ku, !dbg !15042
  br label %.thread252, !dbg !15043

bb.av:                                            ; preds = %bb.ag
  store i32 0, ptr %0, align 4, !dbg !15044
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !15045

_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, %bb.au
  store i32 0, ptr %0, align 4, !dbg !15046
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !15047

bb.aw:                                            ; preds = %bb.au, %.thread153
  %.sroa.11.0.ph151156 = phi i64 [ %i.jz, %.thread153 ], [ %i.kj, %bb.au ]
  %i.kw = trunc nuw nsw i64 %.sroa.11.0.ph151156 to i32, !dbg !15048
  br label %.thread252, !dbg !15049

.thread252:                                       ; preds = %bb.aw, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread
  %.sroa.10.2241255 = phi i32 [ %i.kw, %bb.aw ], [ %i.kv, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread ]
  %.sroa.10.2241255.fr = freeze i32 %.sroa.10.2241255, !dbg !15050 ; 2 uses
  %i.kx = icmp slt i32 %.sroa.10.2241255.fr, 70, !dbg !15050
  %spec.select263.v = select i1 %i.kx, i32 2000, i32 1900, !dbg !15050
  %spec.select263 = add i32 %spec.select263.v, %.sroa.10.2241255.fr, !dbg !15050
  br label %.thread259, !dbg !15050

bb.ax:                                            ; preds = %bb.aj
  %i.ky = lshr i128 %i.ib, 64
  %i.kz = trunc nuw i128 %i.ky to i32, !dbg !15051
  %i.la = icmp eq ptr %i.q, %i.e, !dbg !15052
  br i1 %i.la, label %bb.az, label %bb.ay, !dbg !15053, !prof !540

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread: ; preds = %bb.aj, %bb.ah, %bb.ai
  store i32 0, ptr %0, align 4, !dbg !15054
end_hunk_2
begin_hunk_3_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a
_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit65.a: ; preds = %bb.v
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.p), !dbg !17917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !17917
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17918

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !17919
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17920
  %i.co = load i64, ptr %i.cn, align 8, !dbg !17920, !noundef !531
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !17921
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !17921, !range !799, !noundef !531
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17922
  %i.cs = load ptr, ptr %i.cr, align 16, !dbg !17922, !noundef !531 ; 2 uses
  %.not25 = icmp eq ptr %i.cs, null, !dbg !17922
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %spec.select73 = select i1 %.not25, ptr null, ptr %i.ct, !dbg !17923
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !17919
  store i64 %i.co, ptr %i.cu, align 8, !dbg !17919
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !17919
  store i8 %i.cq, ptr %i.cv, align 1, !dbg !17919
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !17919
  store ptr %spec.select73, ptr %i.cw, align 16, !dbg !17919
  store i8 17, ptr %i.o, align 16, !dbg !17919
  %i.cx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a unwind label %bb.aa, !dbg !17924

bb.z:                                             ; preds = %bb.w
  %i.cy = icmp eq i8 %i.w, 22, !dbg !17861
  br i1 %i.cy, label %bb.ab, label %bb.ac, !dbg !17861

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o) #39
          to label %bb.j unwind label %bb.i, !dbg !17925

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a: ; preds = %bb.y
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o), !dbg !17925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !17925
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17926

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !17928
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !17929
  %i.dc = load i32, ptr %i.db, align 4, !dbg !17929, !noundef !531
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !17928
  store i32 %i.dc, ptr %i.dd, align 4, !dbg !17928
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !17928
  store ptr %i.da, ptr %i.de, align 8, !dbg !17928
  store i8 21, ptr %i.n, align 16, !dbg !17928
  %i.df = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a unwind label %bb.ad, !dbg !17930

bb.ac:                                            ; preds = %bb.z
  %i.dg = icmp eq i8 %i.x, 22, !dbg !17861
  br i1 %i.dg, label %bb.ae, label %bb.af, !dbg !17861

bb.ad:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n) #39
          to label %bb.j unwind label %bb.i, !dbg !17931

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a: ; preds = %bb.ab
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n), !dbg !17931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !17931
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17931

bb.ae:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !17933
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !17934
  %i.dk = load i32, ptr %i.dj, align 4, !dbg !17934, !noundef !531
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !17933
  store i32 %i.dk, ptr %i.dl, align 4, !dbg !17933
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !17933
  store ptr %i.di, ptr %i.dm, align 8, !dbg !17933
  store i8 21, ptr %i.m, align 16, !dbg !17933
  %i.dn = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a unwind label %bb.ag, !dbg !17935

bb.af:                                            ; preds = %bb.ac
  %i.do = icmp eq i8 %i.w, 24, !dbg !17861
  br i1 %i.do, label %bb.ah, label %bb.ai, !dbg !17861

bb.ag:                                            ; preds = %bb.ae
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m) #39
          to label %bb.j unwind label %bb.i, !dbg !17936

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a: ; preds = %bb.ae
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m), !dbg !17936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !17936
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17936

bb.ah:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !17938
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !17939
  %i.ds = load i32, ptr %i.dr, align 4, !dbg !17939, !noundef !531
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !17938
  store i32 %i.ds, ptr %i.dt, align 4, !dbg !17938
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !17938
  store ptr %i.dq, ptr %i.du, align 8, !dbg !17938
  store i8 23, ptr %i.l, align 16, !dbg !17938
  %i.dv = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69 unwind label %bb.aj, !dbg !17940

bb.ai:                                            ; preds = %bb.af
  switch i8 %i.x, label %bb.ak [
    i8 0, label %bb.al
    i8 24, label %bb.am
  ], !dbg !17861

bb.aj:                                            ; preds = %bb.ah
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l) #39
          to label %bb.j unwind label %bb.i, !dbg !17941

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69: ; preds = %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l), !dbg !17941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !17941
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17941

bb.ak:                                            ; preds = %bb.ai
  %i.dx = icmp eq i8 %i.w, 0, !dbg !17861
  br i1 %i.dx, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.ap, !dbg !17861

bb.al:                                            ; preds = %bb.ai
  %i.dy = icmp eq i8 %i.w, 0, !dbg !17861
  br i1 %i.dy, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.an, !dbg !17861

bb.am:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17943
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !17944
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !17944, !noundef !531
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !17943
  store i32 %i.eb, ptr %i.ec, align 4, !dbg !17943
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17943
  store ptr %i.dz, ptr %i.ed, align 8, !dbg !17943
  store i8 23, ptr %i.k, align 16, !dbg !17943
  %i.ee = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.k) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70 unwind label %bb.ao, !dbg !17945

bb.an:                                            ; preds = %bb.ap, %bb.al
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17946

bb.ao:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k) #39
          to label %bb.j unwind label %bb.i, !dbg !17947

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70: ; preds = %bb.am
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k), !dbg !17947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17947
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17947

bb.ap:                                            ; preds = %bb.ak
  switch i8 %i.x, label %bb.aq [
    i8 0, label %bb.an
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.au
    i8 5, label %bb.av
    i8 6, label %bb.aw
    i8 7, label %bb.ax
    i8 8, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.ba
    i8 11, label %bb.bb
    i8 12, label %bb.bc
    i8 13, label %bb.bd
    i8 14, label %bb.be
    i8 15, label %bb.bf
    i8 16, label %bb.bg
    i8 17, label %bb.bh
    i8 19, label %bb.bi
    i8 20, label %bb.bj
    i8 21, label %bb.bk
    i8 23, label %bb.bl
    i8 25, label %bb.bm
    i8 26, label %bb.bn
    i8 27, label %bb.bo
    i8 29, label %bb.bp
    i8 30, label %bb.bq
    i8 32, label %bb.br
    i8 34, label %bb.bs
  ], !dbg !17861

bb.aq:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17948
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !17949
  %i.eg = load i128, ptr %i.b, align 16, !dbg !17949, !range !17750, !noundef !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17949
  %.not23 = icmp eq i128 %i.eg, 0, !dbg !17948
  br i1 %.not23, label %bb.ea, label %bb.du, !dbg !17948

bb.ar:                                            ; preds = %bb.ap
  %i.eh = icmp eq i8 %i.w, 1, !dbg !17861
  br i1 %i.eh, label %bb.bt, label %bb.aq, !dbg !17861

bb.as:                                            ; preds = %bb.ap
  %i.ei = icmp eq i8 %i.w, 2, !dbg !17861
  br i1 %i.ei, label %bb.bu, label %bb.aq, !dbg !17861

bb.at:                                            ; preds = %bb.ap
  %i.ej = icmp eq i8 %i.w, 3, !dbg !17861
  br i1 %i.ej, label %bb.bw, label %bb.aq, !dbg !17861

bb.au:                                            ; preds = %bb.ap
  %i.ek = icmp eq i8 %i.w, 4, !dbg !17861
  br i1 %i.ek, label %bb.bx, label %bb.aq, !dbg !17861

bb.av:                                            ; preds = %bb.ap
  %i.el = icmp eq i8 %i.w, 5, !dbg !17861
  br i1 %i.el, label %bb.by, label %bb.aq, !dbg !17861

bb.aw:                                            ; preds = %bb.ap
  %i.em = icmp eq i8 %i.w, 6, !dbg !17861
  br i1 %i.em, label %bb.bz, label %bb.aq, !dbg !17861

bb.ax:                                            ; preds = %bb.ap
  %i.en = icmp eq i8 %i.w, 7, !dbg !17861
  br i1 %i.en, label %bb.ca, label %bb.aq, !dbg !17861

bb.ay:                                            ; preds = %bb.ap
  %i.eo = icmp eq i8 %i.w, 8, !dbg !17861
  br i1 %i.eo, label %bb.cb, label %bb.aq, !dbg !17861

bb.az:                                            ; preds = %bb.ap
  %i.ep = icmp eq i8 %i.w, 9, !dbg !17861
  br i1 %i.ep, label %bb.cc, label %bb.aq, !dbg !17861

bb.ba:                                            ; preds = %bb.ap
  %i.eq = icmp eq i8 %i.w, 10, !dbg !17861
  br i1 %i.eq, label %bb.cd, label %bb.aq, !dbg !17861

bb.bb:                                            ; preds = %bb.ap
  %i.er = icmp eq i8 %i.w, 11, !dbg !17861
  br i1 %i.er, label %bb.ce, label %bb.aq, !dbg !17861

bb.bc:                                            ; preds = %bb.ap
  %i.es = icmp eq i8 %i.w, 12, !dbg !17861
  br i1 %i.es, label %bb.cf, label %bb.aq, !dbg !17861

bb.bd:                                            ; preds = %bb.ap
  %i.et = icmp eq i8 %i.w, 13, !dbg !17861
  br i1 %i.et, label %bb.cg, label %bb.aq, !dbg !17861

bb.be:                                            ; preds = %bb.ap
  %i.eu = icmp eq i8 %i.w, 14, !dbg !17861
  br i1 %i.eu, label %bb.cj, label %bb.aq, !dbg !17861

bb.bf:                                            ; preds = %bb.ap
  %i.ev = icmp eq i8 %i.w, 15, !dbg !17861
  br i1 %i.ev, label %bb.cm, label %bb.aq, !dbg !17861

bb.bg:                                            ; preds = %bb.ap
  %i.ew = icmp eq i8 %i.w, 16, !dbg !17861
  br i1 %i.ew, label %bb.cp, label %bb.aq, !dbg !17861

bb.bh:                                            ; preds = %bb.ap
  %i.ex = icmp eq i8 %i.w, 17, !dbg !17861
  br i1 %i.ex, label %bb.cq, label %bb.aq, !dbg !17861

bb.bi:                                            ; preds = %bb.ap
  %i.ey = icmp eq i8 %i.w, 19, !dbg !17861
  br i1 %i.ey, label %bb.cu, label %bb.aq, !dbg !17861

bb.bj:                                            ; preds = %bb.ap
  %i.ez = icmp eq i8 %i.w, 20, !dbg !17861
  br i1 %i.ez, label %bb.cw, label %bb.aq, !dbg !17861

bb.bk:                                            ; preds = %bb.ap
  %i.fa = icmp eq i8 %i.w, 21, !dbg !17861
  br i1 %i.fa, label %bb.cx, label %bb.aq, !dbg !17861

bb.bl:                                            ; preds = %bb.ap
  %i.fb = icmp eq i8 %i.w, 23, !dbg !17861
  br i1 %i.fb, label %bb.da, label %bb.aq, !dbg !17861

bb.bm:                                            ; preds = %bb.ap
  %i.fc = icmp eq i8 %i.w, 25, !dbg !17861
  br i1 %i.fc, label %bb.dd, label %bb.aq, !dbg !17861

bb.bn:                                            ; preds = %bb.ap
  %i.fd = icmp eq i8 %i.w, 26, !dbg !17861
  br i1 %i.fd, label %bb.de, label %bb.aq, !dbg !17861

bb.bo:                                            ; preds = %bb.ap
  %i.fe = icmp eq i8 %i.w, 27, !dbg !17861
  br i1 %i.fe, label %bb.dm, label %bb.aq, !dbg !17861

bb.bp:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dn
    i8 30, label %bb.do
  ], !dbg !17861

bb.bq:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dp
    i8 30, label %bb.dq
  ], !dbg !17861

bb.br:                                            ; preds = %bb.ap
  %i.ff = icmp eq i8 %i.w, 32, !dbg !17861
  br i1 %i.ff, label %bb.dr, label %bb.aq, !dbg !17861

bb.bs:                                            ; preds = %bb.ap
  %i.fg = icmp eq i8 %i.w, 34, !dbg !17861
  br i1 %i.fg, label %bb.dt, label %bb.aq, !dbg !17861

bb.bt:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17950
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !17950, !range !656, !noundef !531
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !17951
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !17951, !range !656, !noundef !531
  %i.fl = icmp eq i8 %i.fi, %i.fk, !dbg !17950
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17952

bb.bu:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17953
  %.val29.a = load i64, ptr %i.fm, align 16, !dbg !17953, !noundef !531 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17953
  %.val31 = load i64, ptr %i.fn, align 16, !dbg !17953, !noundef !531
  %i.fo = icmp eq i64 %.val29.a, %.val31, !dbg !17954
  br i1 %i.fo, label %bb.bv, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17954

bb.bv:                                            ; preds = %bb.bu
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17955
  %.val30 = load ptr, ptr %i.fp, align 8, !dbg !17953, !nonnull !531, !noundef !531
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17956
  %.val = load ptr, ptr %i.fq, align 8, !dbg !17953, !nonnull !531, !noundef !531
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val30, i64 %.val29.a), !dbg !17957, !alias.scope !17752
  %i.fr = icmp eq i32 %bcmp.i.i, 0, !dbg !17957
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17958

bb.bw:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17959
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !17959, !noundef !531
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !17960
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !17960, !noundef !531
  %i.fw = icmp eq i8 %i.ft, %i.fv, !dbg !17959
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17961

bb.bx:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !17962
  %i.fy = load i16, ptr %i.fx, align 2, !dbg !17962, !noundef !531
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !17963
  %i.ga = load i16, ptr %i.fz, align 2, !dbg !17963, !noundef !531
  %i.gb = icmp eq i16 %i.fy, %i.ga, !dbg !17962
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17964

bb.by:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !17965
  %i.gd = load i32, ptr %i.gc, align 4, !dbg !17965, !noundef !531
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !17966
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !17966, !noundef !531
  %i.gg = icmp eq i32 %i.gd, %i.gf, !dbg !17965
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17967

bb.bz:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17968
  %i.gi = load i64, ptr %i.gh, align 8, !dbg !17968, !noundef !531
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17969
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !17969, !noundef !531
  %i.gl = icmp eq i64 %i.gi, %i.gk, !dbg !17968
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17970

bb.ca:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17971
  %i.gn = load i128, ptr %i.gm, align 16, !dbg !17971, !noundef !531
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17972
  %i.gp = load i128, ptr %i.go, align 16, !dbg !17972, !noundef !531
  %i.gq = icmp eq i128 %i.gn, %i.gp, !dbg !17971
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17973

bb.cb:                                            ; preds = %bb.ay
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17974
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !17974, !noundef !531
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !17975
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !17975, !noundef !531
  %i.gv = icmp eq i8 %i.gs, %i.gu, !dbg !17974
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17976

bb.cc:                                            ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !17977
  %i.gx = load i16, ptr %i.gw, align 2, !dbg !17977, !noundef !531
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !17978
  %i.gz = load i16, ptr %i.gy, align 2, !dbg !17978, !noundef !531
  %i.ha = icmp eq i16 %i.gx, %i.gz, !dbg !17977
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17979

bb.cd:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !17980
end_hunk_3
begin_hunk_4_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a

bb.dd:                                            ; preds = %bb.bm
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18050
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18051
  %i.kw = tail call noundef zeroext i1 @_RNvXs_NtCs1LHh8CLbVkQ_11polars_core7testingNtNtB6_6series6SeriesNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kv), !dbg !18052
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18052

bb.de:                                            ; preds = %bb.bn
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18053
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18054
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18055
  %i.la = load i64, ptr %i.kz, align 8, !dbg !18055, !noundef !531 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18056
  %i.lc = load i64, ptr %i.lb, align 8, !dbg !18056, !noundef !531
  %.not = icmp eq i64 %i.la, %i.lc, !dbg !18055
  br i1 %.not, label %.preheader, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !17825

.preheader:                                       ; preds = %bb.de
  %.not78 = icmp eq i64 %i.la, 0, !dbg !18057
  br i1 %.not78, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph, !dbg !17831

.lr.ph:                                           ; preds = %.preheader
  %.val42.a = load ptr, ptr %i.kx, align 16, !nonnull !531, !noundef !531
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val43.a = load ptr, ptr %i.ld, align 8, !nonnull !531, !align !598, !noundef !531 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.val43.a, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !range !729, !invariant.load !531
  %i.lg = add nsw i64 %i.lf, -1
  %i.lh = and i64 %i.lg, -16
  %i.li = getelementptr inbounds nuw i8, ptr %.val42.a, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %.val43.a, i64 584
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !531, !nonnull !531
  %.val40 = load ptr, ptr %i.ky, align 16, !nonnull !531
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val41 = load ptr, ptr %i.lm, align 8, !nonnull !531, !align !598 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val41, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.val41, i64 584
  br label %bb.dh, !dbg !17831

bb.df:                                            ; preds = %bb.dj, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.lp, %bb.dg ], [ %i.ly, %bb.dj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f) #39
          to label %bb.j unwind label %bb.i, !dbg !18058

bb.dg:                                            ; preds = %bb.dk, %bb.dh
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %.lr.ph, %bb.dl
  %.sroa.0.177 = phi i1 [ true, %.lr.ph ], [ %i.lz, %bb.dl ]
  %.sroa.013.076 = phi i64 [ 0, %.lr.ph ], [ %i.lq, %bb.dl ] ; 3 uses
  %i.lq = add nuw i64 %.sroa.013.076, 1, !dbg !18059 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18060
  call void %i.ll(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.lj, i64 noundef %.sroa.013.076) #37, !dbg !18061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18062
  %i.lr = load i64, ptr %i.ln, align 8, !dbg !18063, !range !729, !invariant.load !531
  %i.ls = add nsw i64 %i.lr, -1, !dbg !18063
  %i.lt = and i64 %i.ls, -16, !dbg !18063
  %i.lu = getelementptr inbounds nuw i8, ptr %.val40, i64 %i.lt, !dbg !18063
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16, !dbg !18063
  %i.lw = load ptr, ptr %i.lo, align 8, !dbg !18064, !invariant.load !531, !nonnull !531
  invoke void %i.lw(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.lv, i64 noundef %.sroa.013.076)
          to label %bb.di unwind label %bb.dg, !dbg !18065

bb.di:                                            ; preds = %bb.dh
  %i.lx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.dk unwind label %bb.dj, !dbg !18066

bb.dj:                                            ; preds = %bb.di
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e) #39
          to label %bb.df unwind label %bb.i, !dbg !18067

bb.dk:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e)
          to label %bb.dl unwind label %bb.dg, !dbg !18067

bb.dl:                                            ; preds = %bb.dk
  %i.lz = select i1 %i.lx, i1 %.sroa.0.177, i1 false, !dbg !18068 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18067
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f), !dbg !18058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18058
  %exitcond.not = icmp eq i64 %i.lq, %i.la, !dbg !18057
  br i1 %exitcond.not, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.dh, !dbg !17831

bb.dm:                                            ; preds = %bb.bo
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18069
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18070
  %i.mc = tail call noundef zeroext i1 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6objectRDNtB2_16PolarsObjectSafeEL_NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ma, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mb), !dbg !18071
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18071

bb.dn:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18072
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18073
  %i.me = load i64, ptr %i.md, align 8, !dbg !18073, !noundef !531
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18074
  %i.mg = load ptr, ptr %i.mf, align 16, !dbg !18074, !nonnull !531, !align !598, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.me, ptr noundef nonnull align 8 %i.mg), !dbg !18072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18075
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18076
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !18076, !noundef !531
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18077
  %i.mk = load ptr, ptr %i.mj, align 16, !dbg !18077, !nonnull !531, !align !598, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.mi, ptr noundef nonnull align 8 %i.mk), !dbg !18075
  %i.ml = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true), !dbg !18078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18079
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18080

bb.do:                                            ; preds = %bb.bp
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18081
  %i.mn = load ptr, ptr %i.mm, align 8, !dbg !18081, !nonnull !531, !noundef !531 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 8, !dbg !18082
  %.val50.a = load ptr, ptr %i.mo, align 8, !dbg !18082, !nonnull !531, !noundef !531 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 16, !dbg !18082
  %.val51.a = load i64, ptr %i.mp, align 8, !dbg !18082, !noundef !531
  %i.mq = getelementptr inbounds nuw [48 x i8], ptr %.val50.a, i64 %.val51.a, !dbg !18083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18084
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18085
  %i.ms = load i64, ptr %i.mr, align 8, !dbg !18085, !noundef !531
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18086
  %i.mu = load ptr, ptr %i.mt, align 16, !dbg !18086, !nonnull !531, !align !598, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.ms, ptr noundef nonnull align 8 %i.mu), !dbg !18084
  %i.mv = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EIB1H_IB2v_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val50.a, ptr noundef nonnull %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i1 noundef zeroext true), !dbg !18087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18088
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18089

bb.dp:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18090
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18091
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !18091, !noundef !531
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18092
  %i.mz = load ptr, ptr %i.my, align 16, !dbg !18092, !nonnull !531, !align !598, !noundef !531
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.mx, ptr noundef nonnull align 8 %i.mz), !dbg !18090
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18093
  %i.nb = load ptr, ptr %i.na, align 8, !dbg !18093, !nonnull !531, !noundef !531 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 8, !dbg !18094
  %.val48 = load ptr, ptr %i.nc, align 8, !dbg !18094, !nonnull !531, !noundef !531 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nb, i64 16, !dbg !18094
  %.val49 = load i64, ptr %i.nd, align 8, !dbg !18094, !noundef !531
  %i.ne = getelementptr inbounds nuw [48 x i8], ptr %.val48, i64 %.val49, !dbg !18095
  %i.nf = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EIB1H_IB2v_BX_ENCNvB2_23struct_owned_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %.val48, ptr noundef nonnull %i.ne, i1 noundef zeroext true), !dbg !18096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18097
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18098

bb.dq:                                            ; preds = %bb.bq
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18099
  %i.nh = load ptr, ptr %i.ng, align 8, !dbg !18099, !nonnull !531, !noundef !531 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8, !dbg !18100
  %.val46 = load ptr, ptr %i.ni, align 8, !dbg !18100, !nonnull !531, !noundef !531 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 16, !dbg !18100
  %.val47 = load i64, ptr %i.nj, align 8, !dbg !18100, !noundef !531
  %i.nk = getelementptr inbounds nuw [48 x i8], ptr %.val46, i64 %.val47, !dbg !18101
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18102
  %i.nm = load ptr, ptr %i.nl, align 8, !dbg !18102, !nonnull !531, !noundef !531 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 8, !dbg !18103
  %.val44 = load ptr, ptr %i.nn, align 8, !dbg !18103, !nonnull !531, !noundef !531 ; 2 uses
  %i.no = getelementptr i8, ptr %i.nm, i64 16, !dbg !18103
  %.val45 = load i64, ptr %i.no, align 8, !dbg !18103, !noundef !531
  %i.np = getelementptr inbounds nuw [48 x i8], ptr %.val44, i64 %.val45, !dbg !18104
  %i.nq = tail call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val46, ptr noundef nonnull %i.nk, ptr noundef nonnull %.val44, ptr noundef nonnull %i.np, i1 noundef zeroext true), !dbg !18105
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18106

bb.dr:                                            ; preds = %bb.br
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18107
  %.val53.a = load i64, ptr %i.nr, align 16, !dbg !18107, !noundef !531 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18107
  %.val55 = load i64, ptr %i.ns, align 16, !dbg !18107, !noundef !531
  %i.nt = icmp eq i64 %.val53.a, %.val55, !dbg !18108
  br i1 %i.nt, label %bb.ds, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18108

bb.ds:                                            ; preds = %bb.dr
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18109
  %.val54 = load ptr, ptr %i.nu, align 8, !dbg !18107, !nonnull !531, !noundef !531
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18110
  %.val52 = load ptr, ptr %i.nv, align 8, !dbg !18107, !nonnull !531, !noundef !531
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val52, ptr nonnull readonly %.val54, i64 range(i64 0, -9223372036854775808) %.val53.a), !dbg !18111, !alias.scope !17845
  %i.nw = icmp eq i32 %bcmp.i.i.i, 0, !dbg !18111
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18112

bb.dt:                                            ; preds = %bb.bs
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18113
  %i.ny = load i128, ptr %i.nx, align 16, !dbg !18113, !noundef !531
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18114
  %i.oa = load i64, ptr %i.nz, align 16, !dbg !18114, !noundef !531
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18115
  %i.oc = load i128, ptr %i.ob, align 16, !dbg !18115, !noundef !531
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18116
  %i.oe = load i64, ptr %i.od, align 16, !dbg !18116, !noundef !531
  %i.of = tail call fastcc noundef zeroext i1 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal9dec128_eq(i128 noundef %i.ny, i64 noundef %i.oa, i128 noundef %i.oc, i64 noundef %i.oe) #37, !dbg !18117
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18118

bb.du:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18119
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18120
  %i.og = load i128, ptr %i.a, align 16, !dbg !18120, !range !17750, !noundef !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18120
  %.not24 = icmp eq i128 %i.og, 0, !dbg !18119
  br i1 %.not24, label %bb.ea, label %bb.dv, !dbg !18119

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17846
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18122
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18123
  %i.oh = load i128, ptr %i.d, align 16, !dbg !18124, !range !17750, !noundef !531
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18124
  %i.oj = trunc nuw i128 %i.oh to i1, !dbg !18125
  %i.ok = load i128, ptr %i.c, align 16, !dbg !18124, !range !17750, !noundef !531
  %i.ol = trunc nuw i128 %i.ok to i1, !dbg !18125 ; 2 uses
  br i1 %i.oj, label %bb.dw, label %bb.dx, !dbg !18125

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.ol, label %bb.dz, label %bb.dy, !dbg !18125

bb.dx:                                            ; preds = %bb.dv
  %i.om = xor i1 %i.ol, true, !dbg !18125
  br label %bb.dy, !dbg !18125

bb.dy:                                            ; preds = %bb.dw, %bb.dz, %bb.dx
  %.sroa.0.2 = phi i1 [ %i.oq, %bb.dz ], [ %i.om, %bb.dx ], [ false, %bb.dw ], !dbg !18126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18127
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18127

bb.dz:                                            ; preds = %bb.dw
  %i.on = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18124
  %i.oo = load i128, ptr %i.oi, align 16, !dbg !18128, !noundef !531
  %i.op = load i128, ptr %i.on, align 16, !dbg !18129, !noundef !531
  %i.oq = icmp eq i128 %i.oo, %i.op, !dbg !18128
  br label %bb.dy, !dbg !18130

bb.ea:                                            ; preds = %bb.du, %bb.aq
  %i.or = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18131
  %i.os = extractvalue { i64, double } %i.or, 0, !dbg !18131
  %i.ot = icmp eq i64 %i.os, 1, !dbg !18132
  br i1 %i.ot, label %bb.eb, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18132

bb.eb:                                            ; preds = %bb.ea
  %i.ou = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18133
  %i.ov = extractvalue { i64, double } %i.ou, 0, !dbg !18133
  %i.ow = icmp eq i64 %i.ov, 1, !dbg !18134
  br i1 %i.ow, label %bb.ec, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18134

bb.ec:                                            ; preds = %bb.eb
  %i.ox = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18135 ; 2 uses
  %i.oy = extractvalue { i64, double } %i.ox, 0, !dbg !18135
  %i.oz = extractvalue { i64, double } %i.ox, 1, !dbg !18135 ; 2 uses
  %i.pa = trunc nuw i64 %i.oy to i1, !dbg !18136
  br i1 %i.pa, label %bb.ed, label %bb.ee, !dbg !18136, !prof !804

bb.ed:                                            ; preds = %bb.ec
  %i.pb = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18137 ; 2 uses
  %i.pc = extractvalue { i64, double } %i.pb, 0, !dbg !18137
  %i.pd = extractvalue { i64, double } %i.pb, 1, !dbg !18137 ; 2 uses
  %i.pe = trunc nuw i64 %i.pc to i1, !dbg !18138
  br i1 %i.pe, label %bb.ef, label %bb.eg, !dbg !18138, !prof !804

bb.ee:                                            ; preds = %bb.ec
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #38, !dbg !18139
  unreachable, !dbg !18139

bb.ef:                                            ; preds = %bb.ed
  %i.pf = fcmp uno double %i.oz, 0.000000e+00, !dbg !18140
  br i1 %i.pf, label %bb.ei, label %bb.eh, !dbg !18141

bb.eg:                                            ; preds = %bb.ed
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38, !dbg !18142
  unreachable, !dbg !18142

bb.eh:                                            ; preds = %bb.ef
  %i.pg = fcmp oeq double %i.oz, %i.pd, !dbg !18143
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18144

bb.ei:                                            ; preds = %bb.ef
  %i.ph = fcmp uno double %i.pd, 0.000000e+00, !dbg !18145
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18144
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind optsize memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvMsb_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10take_frontCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #5 !dbg !18146 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8, !dbg !18180
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18180
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18180 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18180
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !18180 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18180
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !18180 ; 3 uses
  store i64 0, ptr %1, align 8, !dbg !18181
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1, !dbg !18182
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !18182

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null, !dbg !18168
  br i1 %.not, label %bb.f, label %bb.e, !dbg !18183

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !18184
  br label %bb.d, !dbg !18185

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void, !dbg !18185

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8, !dbg !18186
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18186
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !18186
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18186
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8, !dbg !18186
  br label %bb.d, !dbg !18187

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0, !dbg !18188
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !18188

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.sroa.020.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %i.d, %.lr.ph ], !dbg !18189
  store ptr %.sroa.020.0.lcssa, ptr %0, align 8, !dbg !18190
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !18190
  br label %bb.d, !dbg !18191

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.020.023 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.5.sroa.5.0.copyload, %bb.f ]
  %.sroa.018.022 = phi i64 [ %i.e, %.lr.ph ], [ %.sroa.5.sroa.6.0.copyload, %bb.f ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.020.023, i64 544, !dbg !18192
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18193, !nonnull !531, !noundef !531 ; 2 uses
  %i.e = add i64 %.sroa.018.022, -1, !dbg !18194  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !18188
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !18188
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #6 !dbg !18195 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !18209, !range !846, !noundef !531
  %i.b = trunc nuw i64 %i.a to i1, !dbg !18210    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !18210

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18209 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18209, !noundef !531
  %.not = icmp eq ptr %i.d, null, !dbg !18209
  br i1 %.not, label %bb.d, label %bb.c, !dbg !18210

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18211
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !18211
  ret ptr %.sroa.0.0, !dbg !18212

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18213 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18213
  %i.h = load i64, ptr %i.g, align 8, !dbg !18213, !noundef !531 ; 2 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !18214, !nonnull !531, !noundef !531 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !18215
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !18215

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0, %.lr.ph ], !dbg !18214
  store i64 1, ptr %0, align 8, !dbg !18216
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !18216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !18216
  br label %bb.c, !dbg !18217

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0, %.lr.ph ], [ %.sroa.013.015, %bb.d ]
  %.sroa.011.016 = phi i64 [ %i.k, %.lr.ph ], [ %i.h, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544, !dbg !18218
  %i.k = add i64 %.sroa.011.016, -1, !dbg !18219  ; 2 uses
  %.sroa.013.0 = load ptr, ptr %i.j, align 8, !dbg !18214, !nonnull !531, !noundef !531 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !18215
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !18215
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #6 !dbg !18220 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !18234, !range !846, !noundef !531
  %i.b = trunc nuw i64 %i.a to i1, !dbg !18235    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !18235

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18234 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18234, !noundef !531
  %.not = icmp eq ptr %i.d, null, !dbg !18234
  br i1 %.not, label %bb.d, label %bb.c, !dbg !18235

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18236
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !18236
  ret ptr %.sroa.0.0, !dbg !18237

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18238 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18238
  %i.h = load i64, ptr %i.g, align 8, !dbg !18238, !noundef !531 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !30680
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30680
  store ptr %i.al, ptr %i.bg, align 8, !dbg !30680
  store i8 29, ptr %0, align 16, !dbg !30680
  br label %bb.aj, !dbg !30609

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !30607
  unreachable, !dbg !30607
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsk_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB5_15StrptimeOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !30681 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30716
  %i.b = load i8, ptr %i.a, align 8, !dbg !30716, !range !656, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30716
  %i.d = load i8, ptr %i.c, align 8, !dbg !30716, !range !656, !noundef !531
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !30716
  br i1 %i.e, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30716

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25, !dbg !30717
  %i.g = load i8, ptr %i.f, align 1, !dbg !30717, !range !656, !noundef !531
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25, !dbg !30717
  %i.i = load i8, ptr %i.h, align 1, !dbg !30717, !range !656, !noundef !531
  %i.j = icmp eq i8 %i.g, %i.i, !dbg !30717
  br i1 %i.j, label %bb.c, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30717

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26, !dbg !30718
  %i.l = load i8, ptr %i.k, align 2, !dbg !30718, !range !656, !noundef !531
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !30718
  %i.n = load i8, ptr %i.m, align 2, !dbg !30718, !range !656, !noundef !531
  %i.o = icmp eq i8 %i.l, %i.n, !dbg !30718
  br i1 %i.o, label %bb.d, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30718

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !30719
  %i.q = load i8, ptr %i.p, align 1, !dbg !30719, !range !715, !noundef !531 ; 3 uses
  %.not = icmp eq i8 %i.q, -38, !dbg !30719       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !30719
  %i.s = load i8, ptr %i.r, align 1, !dbg !30719, !range !715, !noundef !531 ; 3 uses
  %i.t = icmp eq i8 %i.s, -38, !dbg !30719        ; 2 uses
  %brmerge = or i1 %.not, %i.t, !dbg !30720
  %.mux = and i1 %.not, %i.t, !dbg !30720
  br i1 %brmerge, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.e, !dbg !30720

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.j, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.d ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6 ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ah, %bb.j ]
  ret i1 %.sroa.0.0.shrunk, !dbg !30721

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i8 %i.q, -41, !dbg !30722
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !30722

bb.f:                                             ; preds = %bb.e
  %i.v = add i8 %i.q, 64, !dbg !30723
  %i.w = tail call i8 @llvm.umin.i8(i8 %i.v, i8 24), !dbg !30724
  %.sroa.0.0.i.i = zext nneg i8 %i.w to i64, !dbg !30724
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !30725

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !dbg !30726, !alias.scope !30713, !noalias !30714, !noundef !531
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30727
  %i.z = load i64, ptr %i.y, align 8, !dbg !30727, !alias.scope !30713, !noalias !30714, !noundef !531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !30728

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ], !dbg !30729 ; 2 uses
  %.sroa.0.0.i2 = phi ptr [ %i.x, %bb.g ], [ %0, %bb.f ], !dbg !30730
  %i.aa = icmp ugt i8 %i.s, -41, !dbg !30731
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !30731

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ab = add i8 %i.s, 64, !dbg !30732
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 24), !dbg !30733
  %.sroa.0.0.i.i3 = zext nneg i8 %i.ac to i64, !dbg !30733
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !30734

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ad = load ptr, ptr %1, align 8, !dbg !30735, !alias.scope !30715, !noundef !531
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30736
  %i.af = load i64, ptr %i.ae, align 8, !dbg !30736, !alias.scope !30715, !noundef !531
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !30737

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i4 = phi i64 [ %i.af, %bb.i ], [ %.sroa.0.0.i.i3, %bb.h ], !dbg !30738
  %.sroa.0.0.i5 = phi ptr [ %i.ad, %bb.i ], [ %1, %bb.h ], !dbg !30739
  %i.ag = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i4, !dbg !30740
  br i1 %i.ag, label %bb.j, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30740

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i2, ptr %.sroa.0.0.i5, i64 %.sroa.01.0.i), !dbg !30741
  %i.ah = icmp eq i32 %bcmp.i, 0, !dbg !30741
  br label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30742
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3opsNtB5_16FillNullStrategyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #14 !dbg !30743 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !30763, !range !30754, !noundef !531 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !dbg !30764, !range !30754, !noundef !531
  %i.c = icmp eq i32 %i.a, %i.b, !dbg !30765
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !30765

bb.b:                                             ; preds = %bb.i, %bb.f, %bb.c, %bb.a, %bb.j, %bb.k, %bb.g, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.v, %bb.h ], [ true, %bb.c ], [ %i.r, %bb.g ], [ %i.aa, %bb.k ], [ false, %bb.f ], [ %i.w, %bb.j ], [ false, %bb.i ], !dbg !30766
  ret i1 %.sroa.0.0, !dbg !30767

bb.c:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ], !dbg !30765

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !30768
  %i.e = load i32, ptr %i.d, align 4, !dbg !30768, !range !845, !noundef !531
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30768
  %i.g = trunc nuw i32 %i.e to i1, !dbg !30769
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !30768
  %i.i = load i32, ptr %i.h, align 4, !dbg !30768, !range !845, !noundef !531
  %i.j = trunc nuw i32 %i.i to i1, !dbg !30769    ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g, !dbg !30769

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !30770
  %i.l = load i32, ptr %i.k, align 4, !dbg !30770, !range !845, !noundef !531
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30770
  %i.n = trunc nuw i32 %i.l to i1, !dbg !30771
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !30770
  %i.p = load i32, ptr %i.o, align 4, !dbg !30770, !range !845, !noundef !531
  %i.q = trunc nuw i32 %i.p to i1, !dbg !30771    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j, !dbg !30771

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.h, label %bb.b, !dbg !30769

bb.g:                                             ; preds = %bb.d
  %i.r = xor i1 %i.j, true, !dbg !30769
  br label %bb.b, !dbg !30769

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30768
  %i.t = load i32, ptr %i.f, align 4, !dbg !30772, !noundef !531
  %i.u = load i32, ptr %i.s, align 4, !dbg !30773, !noundef !531
  %i.v = icmp eq i32 %i.t, %i.u, !dbg !30772
  br label %bb.b, !dbg !30774

bb.i:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.k, label %bb.b, !dbg !30771

bb.j:                                             ; preds = %bb.e
  %i.w = xor i1 %i.q, true, !dbg !30771
  br label %bb.b, !dbg !30771

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30770
  %i.y = load i32, ptr %i.m, align 4, !dbg !30775, !noundef !531
  %i.z = load i32, ptr %i.x, align 4, !dbg !30776, !noundef !531
  %i.aa = icmp eq i32 %i.y, %i.z, !dbg !30775
  br label %bb.b, !dbg !30777
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !30778 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30794
  %i.b = load ptr, ptr %i.a, align 8, !dbg !30794, !nonnull !531, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30795
  %i.d = load i64, ptr %i.c, align 8, !dbg !30795, !noundef !531
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !30796
  ret i1 %i.e, !dbg !30797
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_15FunctionOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #14 !dbg !30798 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !30840
  %i.b = load i8, ptr %i.a, align 2, !dbg !30840, !range !656, !noundef !531
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !30840
  %i.d = load i8, ptr %i.c, align 2, !dbg !30840, !range !656, !noundef !531
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !30840
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !30818

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !30841
  %i.g = load i16, ptr %i.f, align 2, !dbg !30841, !noundef !531
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !30841
  %i.i = load i16, ptr %i.h, align 2, !dbg !30841, !noundef !531
  %i.j = icmp eq i16 %i.g, %i.i, !dbg !30841
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !30822

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 2, !dbg !30842, !range !799, !noundef !531 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !30842
  %.not = icmp eq i8 %i.k, 2, !dbg !30842
  %i.m = load i8, ptr %1, align 2, !dbg !30842, !range !799, !noundef !531 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !30843

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !30844

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !30842
  %i.o = icmp eq i8 %i.k, %i.m
  br i1 %i.o, label %bb.g, label %bb.d, !dbg !30843

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.m, 2, !dbg !30842
  br label %bb.d, !dbg !30843

bb.g:                                             ; preds = %bb.e
  %or.cond.not = icmp eq i8 %i.k, 0, !dbg !30845
  br i1 %or.cond.not, label %bb.d, label %bb.h, !dbg !30845

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.l, align 1, !dbg !30846, !noundef !531
  %i.r = load i8, ptr %i.n, align 1, !dbg !30846, !noundef !531
  %i.s = icmp eq i8 %i.q, %i.r, !dbg !30846
  br label %bb.d, !dbg !30845
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsy_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #2 !dbg !30847 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !30872, !range !721, !noundef !531 ; 3 uses
  %i.b = icmp ne i8 %i.a, 32, !dbg !30872
  tail call void @llvm.assume(i1 %i.b), !dbg !30872
  %i.c = add nsw i8 %i.a, -31, !dbg !30872
  %i.d = icmp samesign ugt i8 %i.a, 30, !dbg !30872
  %narrow = select i1 %i.d, i8 %i.c, i8 1, !dbg !30872 ; 2 uses
  %i.e = load i8, ptr %1, align 16, !dbg !30873, !range !721, !noundef !531 ; 3 uses
  %i.f = icmp ne i8 %i.e, 32, !dbg !30873
  tail call void @llvm.assume(i1 %i.f), !dbg !30873
  %i.g = add nsw i8 %i.e, -31, !dbg !30873
  %i.h = icmp samesign ugt i8 %i.e, 30, !dbg !30873
  %narrow2 = select i1 %i.h, i8 %i.g, i8 1, !dbg !30873
  %i.i = icmp eq i8 %narrow, %narrow2, !dbg !30874
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !30874

bb.b:                                             ; preds = %bb.a
  switch i8 %narrow, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ], !dbg !30874

bb.c:                                             ; preds = %bb.h, %bb.j, %bb.f, %bb.a, %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.e ], [ %i.z, %bb.i ], [ false, %bb.a ], [ %i.p, %bb.g ], [ %i.af, %bb.k ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.shrunk, !dbg !30875

bb.d:                                             ; preds = %bb.b
  unreachable, !dbg !30872

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30876
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30876
  %i.l = tail call noundef zeroext i1 @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB2_15DynLiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !30877
  br label %bb.c, !dbg !30877

bb.f:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !30871
  br i1 %i.m, label %bb.i, label %bb.c, !dbg !30871

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30878
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30878
  %i.p = tail call noundef zeroext i1 @_RNvXs5_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !dbg !30879
  br label %bb.c, !dbg !30879

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30880
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !30880
  %i.s = load i128, ptr %i.r, align 16, !dbg !30880, !noundef !531
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30880
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30880
  %i.v = load i128, ptr %i.u, align 16, !dbg !30880, !noundef !531
  %i.w = icmp eq i128 %i.s, %i.v, !dbg !30880
  br i1 %i.w, label %bb.j, label %bb.c, !dbg !30880

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30871
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30871
  %i.z = tail call fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.y) #37, !dbg !30881
  br label %bb.c, !dbg !30871

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !30880
  %i.ab = load i128, ptr %i.aa, align 16, !dbg !30880, !noundef !531
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !30880
  %i.ad = load i128, ptr %i.ac, align 16, !dbg !30880, !noundef !531
  %i.ae = icmp eq i128 %i.ab, %i.ad, !dbg !30880
  br i1 %i.ae, label %bb.k, label %bb.c, !dbg !30880

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t), !dbg !30880
  br label %bb.c, !dbg !30880
}

; Function Attrs: nounwind nonlazybind optsize uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #21

; Function Attrs: nonlazybind optsize uwtable
declare { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #21

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2g_15IndexConstraintNtNtB2i_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3Y_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs1f_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2g_20PrimaryKeyConstraintNtNtB2i_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB43_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs1p_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2g_16UniqueConstraintNtNtB2i_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3Z_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs1z_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2g_20ConstraintUsingIndexNtNtB2i_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB43_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsB_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2f_15CheckConstraintNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3X_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsE_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB2f_18FileStagingCommandNtNtB2j_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB4a_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsL_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2f_20ForeignKeyConstraintNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB42_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsV_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2f_27FullTextOrSpatialConstraintNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsa_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB2f_17StageParamsObjectNtNtB2j_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB49_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsk_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB2f_23StageLoadSelectItemKindNtNtB2j_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB4f_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsr_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2f_15TableConstraintNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3X_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsu_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB2f_19StageLoadSelectItemNtNtB2j_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB4b_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_15IndexConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3i_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_15IndexConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3i_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_15IndexConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3i_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_15IndexConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3i_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1f_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20PrimaryKeyConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1f_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20PrimaryKeyConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1f_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20PrimaryKeyConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1f_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20PrimaryKeyConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1p_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_16UniqueConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3j_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1p_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_16UniqueConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3j_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1p_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_16UniqueConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3j_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1p_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_16UniqueConstraintNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3j_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1z_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20ConstraintUsingIndexNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1z_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20ConstraintUsingIndexNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1z_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20ConstraintUsingIndexNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1z_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1A_20ConstraintUsingIndexNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3n_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsB_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1z_15CheckConstraintNtNtB1B_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3h_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsB_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1z_15CheckConstraintNtNtB1B_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3h_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsB_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1z_15CheckConstraintNtNtB1B_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB3h_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsB_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB1z_15CheckConstraintNtNtB1B_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB3h_(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsE_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB1z_18FileStagingCommandNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB3u_(i64 noundef, ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXsE_NtNtNtCsaRr8xKSRVhT_9sqlparser3ast7helpers17stmt_data_loadingNtB1z_18FileStagingCommandNtNtB1D_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB3u_(i64 noundef, ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

end_hunk_5
