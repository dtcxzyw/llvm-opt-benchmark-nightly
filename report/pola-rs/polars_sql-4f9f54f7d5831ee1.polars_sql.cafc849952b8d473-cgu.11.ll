Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.11?download=true
inline.NumInlined: 2170
inline.NumDeleted: 755
begin_hunk_0_@_RINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB6_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withBV_NtNvMs1_B6_IBH_pppE18get_or_insert_with5NeverNCINvB2_18get_or_insert_withBV_NCNvMB6_INtB6_13LruCachedFuncBV_BX_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB40_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0ECshquuC4dCYVj_10polars_sql:bb.a
  call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.bz, i32 noundef %i.ca), !dbg !2865
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !2866
  %i.ct = load i32, ptr %i.cs, align 4, !dbg !2866, !noundef !534
  %i.cu = zext i32 %i.ct to i64, !dbg !2866
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2867
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !2867, !noundef !534
  %i.cx = icmp ult i64 %i.cw, %i.cu, !dbg !2868
  br i1 %i.cx, label %bb.p, label %bb.q, !dbg !2868

bb.k:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE25find_or_find_insert_indexNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2t_NtNvMs1_BT_IB2f_pppE18get_or_insert_with5NeverNCINvB27_18get_or_insert_withB2t_NCNvMBT_INtBT_13LruCachedFuncB2t_B2v_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5E_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0E0NCB24_s_0E0CshquuC4dCYVj_10polars_sql.exit.i
  %i.cy = load ptr, ptr %i.f, align 8, !dbg !2869, !alias.scope !2749, !noalias !2750, !nonnull !534, !noundef !534
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.z, !dbg !2870 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8, !dbg !2871
  %i.db = load i32, ptr %i.da, align 4, !dbg !2872, !range !578, !noundef !534 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -4, !dbg !2872
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !2872, !noundef !534 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !2769
  %i.df = load i32, ptr %i.de, align 4, !dbg !2769, !noundef !534
  %i.dg = icmp eq i32 %i.dd, %i.df, !dbg !2769
  br i1 %i.dg, label %bb.l, label %bb.m, !dbg !2769

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2769
  %i.di = load i32, ptr %i.dh, align 8, !dbg !2873, !range !578, !noundef !534
  %.not = icmp eq i32 %i.db, %i.di, !dbg !2874
  br i1 %.not, label %bb.n, label %bb.m, !dbg !2766

bb.m:                                             ; preds = %bb.k, %bb.l
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE15lru_list_unlinkCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.db, i32 noundef %i.dd), !dbg !2875
  tail call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE19lru_list_insert_mruCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.db, i32 noundef %i.dd), !dbg !2876
  br label %bb.n, !dbg !2876

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dj = tail call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index8IndexMutBN_E9index_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.db, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !2877
  br label %bb.o, !dbg !2877

bb.o:                                             ; preds = %bb.n, %bb.q
  %.sroa.0.0 = phi ptr [ %i.dj, %bb.n ], [ %i.dk, %bb.q ], !dbg !2878
  ret ptr %.sroa.0.0, !dbg !2879

bb.p:                                             ; preds = %_RNCINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB8_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE18get_or_insert_withBX_NCNvMB8_INtB8_13LruCachedFuncBX_BZ_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB2K_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0CshquuC4dCYVj_10polars_sql.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2880
  call void @_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE7pop_lruCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(96) %0), !dbg !2881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2882
  br label %bb.q, !dbg !2883

bb.q:                                             ; preds = %_RNCINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB8_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE18get_or_insert_withBX_NCNvMB8_INtB8_13LruCachedFuncBX_BZ_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB2K_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0CshquuC4dCYVj_10polars_sql.exit, %bb.p
  %i.dk = call noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index8IndexMutBN_E9index_mutCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.bz, i32 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !2884
  br label %bb.o, !dbg !2884
}

; Function Attrs: nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE12get_index_ofeECshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2885 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2997
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2997, !nonnull !534, !noundef !534
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2998
  %i.d = load i64, ptr %i.c, align 8, !dbg !2998, !noundef !534 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2999
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2984), !dbg !3000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986), !dbg !3001
  %i.f = lshr i64 %1, 57, !dbg !3002
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !3003
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3004
  %i.i = load i64, ptr %i.h, align 8, !dbg !3004, !alias.scope !2987, !noalias !2988, !noundef !534 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !2987, !noalias !2988, !nonnull !534, !noundef !534 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !3005

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.g ], !dbg !3006
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ap, %bb.g ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !3006 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !3007
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !dbg !3008, !noalias !2989 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !3009
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !3010 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.o, 0, !dbg !3011
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !3012

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.an, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !3013
  %i.q = zext nneg i16 %i.p to i64, !dbg !3014
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !3015
  %i.s = and i64 %i.r, %i.i, !dbg !3015
  %i.t = sub nsw i64 0, %i.s, !dbg !3016
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !3017
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !3018
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !3019, !noalias !2990, !noundef !534 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !3020
  br i1 %i.w, label %bb.c, label %bb.f, !dbg !3020

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.val.i.i, !dbg !3021 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48, !dbg !3021 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 71, !dbg !3022
  %i.aa = load i8, ptr %i.z, align 1, !dbg !3022, !range !691, !alias.scope !2992, !noalias !2993, !noundef !534 ; 2 uses
  %i.ab = icmp ugt i8 %i.aa, -41, !dbg !3023
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !3023

bb.d:                                             ; preds = %bb.c
  %i.ac = add i8 %i.aa, 64, !dbg !3024
  %i.ad = tail call i8 @llvm.umin.i8(i8 %i.ac, i8 24), !dbg !3025
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.ad to i64, !dbg !3025
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !3026

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.y, align 8, !dbg !3027, !alias.scope !2992, !noalias !2993, !noundef !534
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56, !dbg !3028
  %i.ag = load i64, ptr %i.af, align 8, !dbg !3028, !alias.scope !2992, !noalias !2993, !noundef !534
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !3029

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.d ], !dbg !3030
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.y, %bb.d ], !dbg !3031
  %i.ah = icmp eq i64 %3, %.sroa.01.0.i.i.i.i.i, !dbg !3032
  br i1 %i.ah, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !3032, !prof !593

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38, !dbg !3020, !noalias !2994
  unreachable, !dbg !3020

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, i64 %3), !dbg !3033, !alias.scope !2995, !noalias !2994
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !3033
  br i1 %i.ai, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0ECshquuC4dCYVj_10polars_sql.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, !dbg !3034, !prof !595

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.b
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !3035
  %i.ak = bitcast <16 x i1> %i.aj to i16, !dbg !3036
  %i.al = icmp eq i16 %i.ak, 0, !dbg !3037
  br i1 %i.al, label %bb.g, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0ECshquuC4dCYVj_10polars_sql.exit.thread, !dbg !3037, !prof !543

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.am = add i16 %.sroa.05.0.i40.i, -1, !dbg !3038
  %i.an = and i16 %i.am, %.sroa.05.0.i40.i, !dbg !3039 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.an, 0, !dbg !3011
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !3012

bb.g:                                             ; preds = %._crit_edge.i
  %i.ao = add i64 %.sroa.011.0.i.i, 16, !dbg !3040 ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i, %i.ao, !dbg !3041
  br label %bb.b, !dbg !3005

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0ECshquuC4dCYVj_10polars_sql.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i ], [ undef, %._crit_edge.i ], !dbg !3042
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeeE0E0CshquuC4dCYVj_10polars_sql.exit.i ], [ 0, %._crit_edge.i ], !dbg !3042
  %i.aq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !3043
  %i.ar = insertvalue { i64, i64 } %i.aq, i64 %.sroa.3.0, 1, !dbg !3043
  ret { i64, i64 } %i.ar, !dbg !3043
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3044 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 71, !dbg !3060
  %i.b = load i8, ptr %i.a, align 1, !dbg !3060, !range !691, !alias.scope !3059, !noundef !534
  %i.c = icmp eq i8 %i.b, -40, !dbg !3061
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !3061, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3062
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !3063

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %0) #39
          to label %bb.e unwind label %bb.d, !dbg !3062

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %0), !dbg !3062
  ret void, !dbg !3062

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3062
  unreachable, !dbg !3062

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !3062
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3064 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3104, !range !695, !noundef !534 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3104
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3104

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3104

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097), !dbg !3104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3105 ; 4 uses
  %1 = icmp eq i64 %i.a, 0, !dbg !3105
  br i1 %1, label %bb.c, label %bb.e, !dbg !3105

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098), !dbg !3105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099), !dbg !3106
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3107, !alias.scope !3100, !nonnull !534, !noundef !534
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3108, !noalias !3100
  %i.f = icmp eq i64 %i.e, 1, !dbg !3109
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3109

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3110
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3111
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3111

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101), !dbg !3105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3102), !dbg !3112
  %i.g = load ptr, ptr %i.c, align 8, !dbg !3113, !alias.scope !3103, !nonnull !534, !noundef !534
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !3114, !noalias !3103
  %i.i = icmp eq i64 %i.h, 1, !dbg !3115
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3115

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3116
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3117
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3117
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3118 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3124, !range !707, !noundef !534
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !3124
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3124

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !3124

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !3125

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.e, !dbg !3126

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3125
  unreachable, !dbg !3125

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !3125

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !3127
  br label %bb.b, !dbg !3124
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !3128 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3178, !range !695, !noundef !534 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3178
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3178

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3178

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169), !dbg !3178
  %1 = icmp eq i64 %i.a, 0, !dbg !3179
  br i1 %1, label %bb.c, label %bb.e, !dbg !3179

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3179 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170), !dbg !3179
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171), !dbg !3180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172), !dbg !3181
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3182, !alias.scope !3173, !nonnull !534, !noundef !534
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3183, !noalias !3173
  %i.f = icmp eq i64 %i.e, 1, !dbg !3184
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3184

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3185
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultTNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider21ObjectStoreCredentialyENtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB59_4SyncEL_EEB57_B5q_EL_E9drop_slowB3b_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !3186
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3186

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174), !dbg !3179
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3187 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175), !dbg !3187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176), !dbg !3188
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3189, !alias.scope !3177, !nonnull !534, !noundef !534
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !3190, !noalias !3177
  %i.j = icmp eq i64 %i.i, 1, !dbg !3191
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3191

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3192
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #41, !dbg !3193
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderECshquuC4dCYVj_10polars_sql.exit, !dbg !3193
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3194 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3227, !range !695, !noundef !534
  %i.b = icmp eq i64 %i.a, 2, !dbg !3227
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3227

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !3227

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !3228
  %i.d = load i64, ptr %i.c, align 8, !dbg !3229, !range !3225, !alias.scope !3226, !noundef !534 ; 2 uses
  %i.e = icmp eq i64 %i.d, 5, !dbg !3229
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit, label %bb.d, !dbg !3229

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !3230 ; 12 uses
  switch i64 %i.d, label %.invoke.i [
    i64 0, label %bb.e
    i64 1, label %bb.h
    i64 2, label %bb.k
  ], !dbg !3230

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.f, !dbg !3231

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.g, !dbg !3232

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3231
  unreachable, !dbg !3231

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3233

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.i, !dbg !3234

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.j, !dbg !3235

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3234
  unreachable, !dbg !3234

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3236

bb.k:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.l, !dbg !3237

bb.l:                                             ; preds = %bb.k
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.m, !dbg !3238

bb.m:                                             ; preds = %bb.l
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3237
  unreachable, !dbg !3237

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3239

.invoke.i:                                        ; preds = %bb.d
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %bb.n, !dbg !3240

bb.n:                                             ; preds = %.invoke.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.p, !dbg !3241

bb.o:                                             ; preds = %.invoke.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit unwind label %bb.q, !dbg !3242

bb.p:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3240
  unreachable, !dbg !3240

bb.q:                                             ; preds = %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !3228

.body.i:                                          ; preds = %bb.q, %bb.n, %bb.l, %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.l ], [ %i.i, %bb.i ], [ %i.g, %bb.f ], [ %i.o, %bb.q ], [ %i.m, %bb.n ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !3228
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #39
          to label %bb.s unwind label %bb.r, !dbg !3228

bb.r:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3228
  unreachable, !dbg !3228

bb.s:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !3228

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.o, %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtBL_6string6StringEEECshquuC4dCYVj_10polars_sql.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !3228
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider20PlCredentialProviderEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.r), !dbg !3228
  br label %bb.b, !dbg !3227
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3243 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3332, !range !3321, !noundef !534 ; 4 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775805, !dbg !3332
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3332

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void, !dbg !3332

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322), !dbg !3332
  %i.c = icmp ne i64 %i.a, -9223372036854775807, !dbg !3333
  tail call void @llvm.assume(i1 %i.c), !dbg !3333
  %i.d = xor i64 %i.a, -9223372036854775808, !dbg !3333
  %i.e = icmp slt i64 %i.a, 0, !dbg !3333
  %i.f = select i1 %i.e, i64 %i.d, i64 1, !dbg !3333
  switch i64 %i.f, label %bb.c [
    i64 0, label %bb.h
    i64 1, label %bb.j
  ], !dbg !3333

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3333 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323), !dbg !3333
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3334, !alias.scope !3324, !noundef !534 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !3334
  br i1 %i.i, label %bb.d, label %bb.f, !dbg !3334

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3334 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3325), !dbg !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326), !dbg !3335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3327), !dbg !3336
  %i.k = load ptr, ptr %i.j, align 8, !dbg !3337, !alias.scope !3328, !nonnull !534, !noundef !534
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !dbg !3338, !noalias !3328
  %i.m = icmp eq i64 %i.l, 1, !dbg !3339
  br i1 %i.m, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3339

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3340
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #41, !dbg !3341
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3341

bb.f:                                             ; preds = %bb.c
  %i.n = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !3342, !noalias !3329
  %i.o = icmp eq i64 %i.n, 1, !dbg !3343
  br i1 %i.o, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3343

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !3344
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderArgsEEp6OutputINtNtBO_6result6ResultNtB1q_18FileProviderReturnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB4m_4SyncEL_E9drop_slowB1w_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #41, !dbg !3345
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3345

bb.h:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !3346
  %i.q = load i8, ptr %i.p, align 1, !dbg !3346, !range !691, !alias.scope !3330, !noundef !534
  %i.r = icmp eq i8 %i.q, -40, !dbg !3347
  br i1 %i.r, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3347, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3333
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s), !dbg !3348
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3348

bb.j:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !3349
  %i.u = load i8, ptr %i.t, align 1, !dbg !3349, !range !691, !alias.scope !3331, !noundef !534
  %i.v = icmp eq i8 %i.u, -40, !dbg !3350
  br i1 %i.v, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3350, !prof !543

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3351
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.l, !dbg !3352

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.m, !dbg !3353

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3351
  unreachable, !dbg !3351

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.l
  resume { ptr, i32 } %i.x, !dbg !3351

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider19IcebergPathProviderECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.k, %bb.j
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0), !dbg !3354
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECshquuC4dCYVj_10polars_sql.exit, !dbg !3333
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 !dbg !3355 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3403, !range !708, !noundef !534 ; 2 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807, !dbg !3403
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3403

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  ret void, !dbg !3403

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3395), !dbg !3403
  %.not.i = icmp eq i64 %i.a, -9223372036854775808, !dbg !3404
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !3404

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options18iceberg_sink_state16IcebergSinkStateECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(192) %0), !dbg !3404
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3404

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3404 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3396), !dbg !3404
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3405, !alias.scope !3397, !noundef !534 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !3405
  br i1 %i.e, label %bb.e, label %bb.g, !dbg !3405

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3405 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398), !dbg !3405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3399), !dbg !3406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3400), !dbg !3407
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3408, !alias.scope !3401, !nonnull !534, !noundef !534
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !3409, !noalias !3401
  %i.i = icmp eq i64 %i.h, 1, !dbg !3410
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3410

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3411
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41, !dbg !3412
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3412

bb.g:                                             ; preds = %bb.d
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3413, !noalias !3402
  %i.k = icmp eq i64 %i.j, 1, !dbg !3414
  br i1 %i.k, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3414

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !3415
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink23SinkedPathsCallbackArgsEEp6OutputINtNtBO_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3U_4SyncEL_E9drop_slowB1w_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !3416
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19SinkedPathsCallbackECshquuC4dCYVj_10polars_sql.exit, !dbg !3416
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3417 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3445, !range !695, !noundef !534 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3445
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3445

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3445

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441), !dbg !3445
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3446 ; 3 uses
  %1 = icmp eq i64 %i.a, 0, !dbg !3446
  br i1 %1, label %bb.c, label %bb.e, !dbg !3446

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442), !dbg !3446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443), !dbg !3447
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3448, !alias.scope !3444, !nonnull !534, !noundef !534
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3449, !noalias !3444
  %i.f = icmp eq i64 %i.e, 1, !dbg !3450
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, !dbg !3450

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3451
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjIBx_SNtNtB7_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3452
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, !dbg !3452

bb.e:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !3446, !alias.scope !3441, !nonnull !534, !noundef !534
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectECshquuC4dCYVj_10polars_sql(ptr nonnull %.val.i), !dbg !3453, !noalias !3441
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListECshquuC4dCYVj_10polars_sql.exit, !dbg !3446
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1W_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB22_9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3454 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3532 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !3532, !noundef !534
  %i.c = icmp eq ptr %i.b, null, !dbg !3532
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !3532

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i, %bb.a
  ret void, !dbg !3532

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3516), !dbg !3532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3517), !dbg !3533
  %i.d = load ptr, ptr %0, align 8, !dbg !3534, !alias.scope !3518, !noundef !534 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !3534
  br i1 %i.e, label %bb.c, label %bb.e, !dbg !3534

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3534 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3519), !dbg !3534
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3520), !dbg !3535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3521), !dbg !3536
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3537, !alias.scope !3522, !nonnull !534, !noundef !534
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !3538, !noalias !3522
  %i.i = icmp eq i64 %i.h, 1, !dbg !3539
  br i1 %i.i, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3539

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3540
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.g, !dbg !3541

bb.e:                                             ; preds = %bb.b
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3542, !noalias !3523
  %i.k = icmp eq i64 %i.j, 1, !dbg !3543
  br i1 %i.k, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3543

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3544
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3F_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.g, !dbg !3545

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524), !dbg !3533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3525), !dbg !3546
  %i.m = load ptr, ptr %i.a, align 8, !dbg !3547, !alias.scope !3526, !nonnull !534, !noundef !534
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !3548, !noalias !3527
  %i.o = icmp eq i64 %i.n, 1, !dbg !3549
  br i1 %i.o, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !3549

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !3550
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.j, !dbg !3551

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528), !dbg !3533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3529), !dbg !3552
  %i.p = load ptr, ptr %i.a, align 8, !dbg !3553, !alias.scope !3530, !nonnull !534, !noundef !534
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !3554, !noalias !3531
  %i.r = icmp eq i64 %i.q, 1, !dbg !3555
  br i1 %i.r, label %bb.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3555

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECshquuC4dCYVj_10polars_sql.exit.i
  fence acquire, !dbg !3556
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41, !dbg !3557
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1A_EINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB1G_9datatypes5dtype8DataTypeuEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3557

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3533
  unreachable, !dbg !3533

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l, !dbg !3533
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap5inner4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3558 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3565
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3566
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !3567

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %0) #39
          to label %bb.d unwind label %bb.c, !dbg !3565

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %0), !dbg !3565
  ret void, !dbg !3565

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !3565
  unreachable, !dbg !3565

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !3565
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1z_EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3568 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3605, !noundef !534 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !3605
  br i1 %i.b, label %bb.b, label %bb.d, !dbg !3605

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3605 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600), !dbg !3605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601), !dbg !3606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3602), !dbg !3607
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3608, !alias.scope !3603, !nonnull !534, !noundef !534
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3609, !noalias !3603
  %i.f = icmp eq i64 %i.e, 1, !dbg !3610
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3610

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3611
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3612
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3612

bb.d:                                             ; preds = %bb.a
  %i.g = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !3613, !noalias !3604
  %i.h = icmp eq i64 %i.g, 1, !dbg !3614
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3614

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3615
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3x_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #41, !dbg !3616
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3616

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !3605
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtBL_3dsl4plan7DslPlanEIB1B_INtNtB1F_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEB27_EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !3617 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3654, !noundef !534 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !3654
  br i1 %i.b, label %bb.b, label %bb.d, !dbg !3654

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3654 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3649), !dbg !3654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3650), !dbg !3655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3651), !dbg !3656
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3657, !alias.scope !3652, !nonnull !534, !noundef !534
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3658, !noalias !3652
  %i.f = icmp eq i64 %i.e, 1, !dbg !3659
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3659

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3660
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3661
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3661

bb.d:                                             ; preds = %bb.a
  %i.g = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !3662, !noalias !3653
  %i.h = icmp eq i64 %i.g, 1, !dbg !3663
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3663

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3664
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTTINtNtB7_3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEIB1q_IBx_INtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEEp6OutputINtNtBO_6result6ResultB1F_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB5K_4SyncEL_E9drop_slowB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #41, !dbg !3665
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3665

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !3654
}
end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql:bb.a
.lr.ph11:                                         ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i
  %.sroa.0.1.i10 = phi i64 [ %i.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.1.i10, !dbg !8975 ; 2 uses
  %i.o = add i64 %.sroa.0.1.i10, 1, !dbg !8975    ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !dbg !8977, !range !8968, !alias.scope !8970, !noalias !8967, !noundef !534
  %i.q = icmp eq i64 %i.p, 4, !dbg !8977
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, label %bb.e, !dbg !8977

bb.e:                                             ; preds = %.lr.ph11
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i unwind label %bb.f, !dbg !8977, !noalias !8967, !inline_history !8890

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i: ; preds = %bb.e, %.lr.ph11
  %i.r = icmp eq i64 %i.o, %i.e, !dbg !8975
  br i1 %i.r, label %common.resume, label %.lr.ph11, !dbg !8975

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8975, !noalias !8967, !inline_history !8894
  unreachable, !dbg !8975

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, %bb.d, %bb.i
  %.sink25 = phi i64 [ %.val1, %bb.i ], [ %i.e, %bb.d ], [ %.val1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %.sink = phi ptr [ %.val, %bb.i ], [ %i.c, %bb.d ], [ %.val, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.l, %bb.d ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %i.t = mul nuw nsw i64 %.sink25, 24, !dbg !8973
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #42, !dbg !8973
  resume { ptr, i32 } %common.resume.op, !dbg !8973

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i
  %i.u = mul nuw nsw i64 %i.e, 24, !dbg !8978
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #42, !dbg !8979, !noalias !8967
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8980

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8973
  %.val = load ptr, ptr %i.v, align 8, !dbg !8973, !nonnull !534, !noundef !534 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8973
  %.val1 = load i64, ptr %i.w, align 8, !dbg !8973, !noundef !534 ; 7 uses
  %i.x = icmp eq i64 %.val1, 0, !dbg !8981
  br i1 %i.x, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph.i.i, !dbg !8981

.lr.ph.i.i:                                       ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.z, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i, !dbg !8981 ; 2 uses
  %i.z = add nuw i64 %.sroa.0.010.i.i, 1, !dbg !8981 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 23, !dbg !8982
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !8982, !range !718, !alias.scope !8971, !noundef !534
  %cond.i.i.i = icmp eq i8 %i.ab, -40, !dbg !8982
  br i1 %cond.i.i.i, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i, !dbg !8982, !prof !719

bb.h:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.i, !dbg !8983

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = icmp eq i64 %i.z, %.val1, !dbg !8981
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, label %.lr.ph.i.i, !dbg !8981

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.z, %.val1, !dbg !8981
  br i1 %i.ae, label %common.resume, label %.lr.ph13.i.i, !dbg !8981

.lr.ph13.i.i:                                     ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %i.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.111.i.i, !dbg !8981 ; 2 uses
  %i.ag = add i64 %.sroa.0.111.i.i, 1, !dbg !8981 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 23, !dbg !8984
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !8984, !range !718, !alias.scope !8972, !noundef !534
  %cond.i7.i.i = icmp eq i8 %i.ai, -40, !dbg !8984
  br i1 %cond.i7.i.i, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, !dbg !8984, !prof !719

bb.j:                                             ; preds = %.lr.ph13.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i unwind label %bb.k, !dbg !8985

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i: ; preds = %bb.j, %.lr.ph13.i.i
  %i.aj = icmp eq i64 %i.ag, %.val1, !dbg !8981
  br i1 %i.aj, label %common.resume, label %.lr.ph13.i.i, !dbg !8981

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8981
  unreachable, !dbg !8981

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %i.al = mul nuw nsw i64 %.val1, 24, !dbg !8986
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef 8) #42, !dbg !8987
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8988

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8973
  %.val3 = load i64, ptr %i.am, align 8, !dbg !8973, !noundef !534 ; 2 uses
  %i.an = icmp eq i64 %.val3, 0, !dbg !8989
  br i1 %i.an, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.m, !dbg !8989

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8973
  %.val2 = load ptr, ptr %i.ao, align 8, !dbg !8973, !nonnull !534, !noundef !534
  %i.ap = shl nuw nsw i64 %.val3, 5, !dbg !8990
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef 16) #42, !dbg !8991
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8992

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8973
  %.val5 = load i64, ptr %i.aq, align 8, !dbg !8973, !noundef !534 ; 2 uses
  %i.ar = icmp eq i64 %.val5, 0, !dbg !8993
  br i1 %i.ar, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.o, !dbg !8993

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8973
  %.val4 = load ptr, ptr %i.as, align 8, !dbg !8973, !nonnull !534, !noundef !534
  %i.at = shl nuw nsw i64 %.val5, 4, !dbg !8994
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef 8) #42, !dbg !8995
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !8996

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b, %bb.o, %bb.n, %bb.m, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !8973
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6schema8FileInfoECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8997 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9012 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9009), !dbg !9012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9010), !dbg !9013
  %i.b = load ptr, ptr %i.a, align 8, !dbg !9014, !alias.scope !9011, !nonnull !534, !noundef !534
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !9015, !noalias !9011
  %i.d = icmp eq i64 %i.c, 1, !dbg !9016
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9016

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !9017
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !9018

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9012
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %i.f) #39
          to label %bb.e unwind label %bb.d, !dbg !9012

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9012
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %i.g), !dbg !9012
  ret void, !dbg !9012

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !9012
  unreachable, !dbg !9012

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !9012
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3cat19CategoricalFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #0 !dbg !9019 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !9022, !range !749, !noundef !534
  switch i8 %i.a, label %bb.b [
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 6, label %bb.e
  ], !dbg !9022

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !9022

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9022
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !9023
  br label %bb.b, !dbg !9022

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9022
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !9024
  br label %bb.b, !dbg !9022

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9022
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.d), !dbg !9022
  br label %bb.b, !dbg !9022
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !9025 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !9073, !range !750, !noundef !534 ; 2 uses
  %i.b = icmp samesign ugt i64 %i.a, 1, !dbg !9073
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !9073

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9065), !dbg !9073
  %1 = icmp eq i64 %i.a, 0, !dbg !9074
  br i1 %1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !9074

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9074 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9066), !dbg !9074
  %i.d = load ptr, ptr %i.c, align 8, !dbg !9075, !alias.scope !9067, !noundef !534 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !9075
  br i1 %i.e, label %bb.d, label %bb.f, !dbg !9075

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9075 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9068), !dbg !9075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9069), !dbg !9076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9070), !dbg !9077
  %i.g = load ptr, ptr %i.f, align 8, !dbg !9078, !alias.scope !9071, !nonnull !534, !noundef !534
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !9079, !noalias !9071
  %i.i = icmp eq i64 %i.h, 1, !dbg !9080
  br i1 %i.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9080

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !9081
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41, !dbg !9082
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9082

bb.f:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !9083, !noalias !9072
  %i.k = icmp eq i64 %i.j, 1, !dbg !9084
  br i1 %i.k, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9084

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !9085
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB30_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !9086
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !9086

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !9073
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5range13RangeFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 !dbg !9087 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !9106, !range !751, !noundef !534
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.f
  ], !dbg !9106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !9106

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9106
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !9106
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9106

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9106
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.c), !dbg !9106
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9106

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9107
  %i.e = load i8, ptr %i.d, align 1, !dbg !9107, !range !718, !alias.scope !9104, !noundef !534
  %cond.i = icmp eq i8 %i.e, -40, !dbg !9107
  br i1 %cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9107, !prof !719

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9106
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !9108
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9108

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9109
  %i.h = load i8, ptr %i.g, align 1, !dbg !9109, !range !718, !alias.scope !9105, !noundef !534
  %cond.i1 = icmp eq i8 %i.h, -40, !dbg !9109
  br i1 %cond.i1, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9109, !prof !719

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9106
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !9110
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !9110
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !9111 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !9153, !range !752, !noundef !534
  %switch = icmp samesign ult i8 %i.a, 11, !dbg !9153
  br i1 %switch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !9153

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9153 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9147), !dbg !9153
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9154, !alias.scope !9147, !noundef !534 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !9154
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !9154

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9154 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9148), !dbg !9154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9149), !dbg !9155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9150), !dbg !9156
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9157, !alias.scope !9151, !nonnull !534, !noundef !534
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !9158, !noalias !9151
  %i.h = icmp eq i64 %i.g, 1, !dbg !9159
  br i1 %i.h, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9159

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !9160
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #41, !dbg !9161
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9161

bb.e:                                             ; preds = %bb.b
  %i.i = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !9162, !noalias !9152
  %i.j = icmp eq i64 %i.i, 1, !dbg !9163
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9163

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !9164
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3r_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #41, !dbg !9165
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !9165

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !9153
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7strings14StringFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9166 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !9303, !range !753, !noundef !534
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 8, label %bb.h
    i8 10, label %bb.i
    i8 14, label %bb.k
    i8 36, label %bb.l
  ], !dbg !9303

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2: ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k, %bb.a
  ret void, !dbg !9303

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !9304
  %i.c = load i8, ptr %i.b, align 1, !dbg !9304, !range !691, !alias.scope !9289, !noundef !534
  %i.d = icmp eq i8 %i.c, -40, !dbg !9305
  br i1 %i.d, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !9305, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9303
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !9306

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9307
  %i.g = load i8, ptr %i.f, align 1, !dbg !9307, !range !691, !alias.scope !9290, !noundef !534
  %i.h = icmp eq i8 %i.g, -40, !dbg !9308
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9308, !prof !543

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9303
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !9309
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9309

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !9310
  %i.k = load i8, ptr %i.j, align 1, !dbg !9310, !range !691, !alias.scope !9291, !noundef !534
  %i.l = icmp eq i8 %i.k, -40, !dbg !9311
  br i1 %i.l, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9311, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9303
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !dbg !9312
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9312

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9303
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n)
          to label %bb.s unwind label %bb.q, !dbg !9303

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9303 ; 2 uses
  %i.p = load i8, ptr %i.o, align 16, !dbg !9313, !range !741, !alias.scope !9292, !noundef !534
  %i.q = icmp eq i8 %i.p, 31, !dbg !9313
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, label %bb.j, !dbg !9313

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.o), !dbg !9313
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9313

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9303
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.r), !dbg !9303
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !9303

bb.l:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9303
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.s)
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptimeNtB2_13StrpTimeState5parse:bb.a
  %i.dj = sub nuw nsw i64 %2, %i.cw, !dbg !15050
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw, !dbg !15051
  %i.dl = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCsh6mDDnHa5nR_14rustc_demangle(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dg), !dbg !15052, !noalias !14829
  %i.dm = select i1 %i.dl, i64 %i.dg, i64 0, !dbg !15053
  %spec.select262 = add i64 %i.dm, %i.cw, !dbg !15053
  br label %.thread259, !dbg !15053

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1145) #38, !dbg !15054, !noalias !14828
  unreachable, !dbg !15054

bb.y:                                             ; preds = %bb.g
  %i.dn = add i64 %.sroa.083.1648, 2, !dbg !15055 ; 2 uses
  %i.do = icmp ugt i64 %.sroa.083.1648, -3, !dbg !15056
  %.not.i251 = icmp ugt i64 %i.dn, %2
  %or.cond.i252 = or i1 %i.do, %.not.i251, !dbg !15056
  br i1 %or.cond.i252, label %.loopexit279, label %bb.z, !dbg !15056

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15057
  %.sroa.034.0.copyload.i12.i253 = load i16, ptr %i.dp, align 1, !dbg !15058, !alias.scope !14832, !noalias !14833
  %i.dq = zext i16 %.sroa.034.0.copyload.i12.i253 to i64, !dbg !15059 ; 3 uses
  %i.dr = add nuw nsw i64 %i.dq, 1542, !dbg !15060
  %i.ds = lshr i64 %i.dr, 4, !dbg !15061
  %i.dt = and i64 %i.ds, 3855, !dbg !15061
  %i.du = and i64 %i.dq, 61680, !dbg !15062
  %i.dv = or disjoint i64 %i.dt, %i.du, !dbg !15063
  %switch673.not = icmp eq i64 %i.dv, 13107, !dbg !15064
  br i1 %switch673.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256, label %.loopexit279, !dbg !15064

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256: ; preds = %bb.z
  %i.dw = shl nuw i64 %i.dq, 48, !dbg !15065
  %i.dx = and i64 %i.dw, 1085086035219578880, !dbg !15066
  %i.dy = mul i64 %i.dx, 2561, !dbg !15067
  %i.dz = lshr exact i64 %i.dy, 8, !dbg !15068
  %i.ea = and i64 %i.dz, 71776119061217280, !dbg !15069
  %i.eb = mul i64 %i.ea, 6553601, !dbg !15070
  %i.ec = lshr exact i64 %i.eb, 16, !dbg !15071
  %i.ed = mul i64 %i.ec, 42949672960001, !dbg !15072
  %i.ee = lshr exact i64 %i.ed, 32, !dbg !15073
  %i.ef = trunc nuw i64 %i.ee to i32, !dbg !15074
  br label %.thread259, !dbg !15075

bb.aa:                                            ; preds = %bb.g
  %i.eg = add i64 %.sroa.083.1648, 2, !dbg !15076 ; 2 uses
  %i.eh = icmp ugt i64 %.sroa.083.1648, -3, !dbg !15077
  %.not.i262 = icmp ugt i64 %i.eg, %2
  %or.cond.i263 = or i1 %i.eh, %.not.i262, !dbg !15077
  br i1 %or.cond.i263, label %.loopexit278, label %bb.ab, !dbg !15077

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15078
  %.sroa.034.0.copyload.i12.i264 = load i16, ptr %i.ei, align 1, !dbg !15079, !alias.scope !14834, !noalias !14835
  %i.ej = zext i16 %.sroa.034.0.copyload.i12.i264 to i64, !dbg !15080 ; 3 uses
  %i.ek = add nuw nsw i64 %i.ej, 1542, !dbg !15081
  %i.el = lshr i64 %i.ek, 4, !dbg !15082
  %i.em = and i64 %i.el, 3855, !dbg !15082
  %i.en = and i64 %i.ej, 61680, !dbg !15083
  %i.eo = or disjoint i64 %i.em, %i.en, !dbg !15084
  %switch674.not = icmp eq i64 %i.eo, 13107, !dbg !15085
  br i1 %switch674.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267, label %.loopexit278, !dbg !15085

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267: ; preds = %bb.ab
  %i.ep = shl nuw i64 %i.ej, 48, !dbg !15086
  %i.eq = and i64 %i.ep, 1085086035219578880, !dbg !15087
  %i.er = mul i64 %i.eq, 2561, !dbg !15088
  %i.es = lshr exact i64 %i.er, 8, !dbg !15089
  %i.et = and i64 %i.es, 71776119061217280, !dbg !15090
  %i.eu = mul i64 %i.et, 6553601, !dbg !15091
  %i.ev = lshr exact i64 %i.eu, 16, !dbg !15092
  %i.ew = mul i64 %i.ev, 42949672960001, !dbg !15093
  %i.ex = lshr exact i64 %i.ew, 32, !dbg !15094
  %i.ey = trunc nuw i64 %i.ex to i32, !dbg !15095
  br label %.thread259, !dbg !15096

bb.ac:                                            ; preds = %bb.g
  %i.ez = add i64 %.sroa.083.1648, 2, !dbg !15097 ; 2 uses
  %i.fa = icmp ugt i64 %.sroa.083.1648, -3, !dbg !15098
  %.not.i273 = icmp ugt i64 %i.ez, %2
  %or.cond.i274 = or i1 %i.fa, %.not.i273, !dbg !15098
  br i1 %or.cond.i274, label %.loopexit277, label %bb.ad, !dbg !15098

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15099
  %.sroa.034.0.copyload.i12.i275 = load i16, ptr %i.fb, align 1, !dbg !15100, !alias.scope !14836, !noalias !14837
  %i.fc = zext i16 %.sroa.034.0.copyload.i12.i275 to i64, !dbg !15101 ; 3 uses
  %i.fd = add nuw nsw i64 %i.fc, 1542, !dbg !15102
  %i.fe = lshr i64 %i.fd, 4, !dbg !15103
  %i.ff = and i64 %i.fe, 3855, !dbg !15103
  %i.fg = and i64 %i.fc, 61680, !dbg !15104
  %i.fh = or disjoint i64 %i.ff, %i.fg, !dbg !15105
  %switch675.not = icmp eq i64 %i.fh, 13107, !dbg !15106
  br i1 %switch675.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278, label %.loopexit277, !dbg !15106

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278: ; preds = %bb.ad
  %i.fi = shl nuw i64 %i.fc, 48, !dbg !15107
  %i.fj = and i64 %i.fi, 1085086035219578880, !dbg !15108
  %i.fk = mul i64 %i.fj, 2561, !dbg !15109
  %i.fl = lshr exact i64 %i.fk, 8, !dbg !15110
  %i.fm = and i64 %i.fl, 71776119061217280, !dbg !15111
  %i.fn = mul i64 %i.fm, 6553601, !dbg !15112
  %i.fo = lshr exact i64 %i.fn, 16, !dbg !15113
  %i.fp = mul i64 %i.fo, 42949672960001, !dbg !15114
  %i.fq = lshr exact i64 %i.fp, 32, !dbg !15115
  %i.fr = trunc nuw i64 %i.fq to i32, !dbg !15116
  br label %.thread259, !dbg !15117

bb.ae:                                            ; preds = %bb.g
  %i.fs = add i64 %.sroa.083.1648, 2, !dbg !15118 ; 2 uses
  %i.ft = icmp ugt i64 %.sroa.083.1648, -3, !dbg !15119
  %.not.i284 = icmp ugt i64 %i.fs, %2
  %or.cond.i285 = or i1 %i.ft, %.not.i284, !dbg !15119
  br i1 %or.cond.i285, label %.loopexit276, label %bb.af, !dbg !15119

bb.af:                                            ; preds = %bb.ae
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15120
  %.sroa.034.0.copyload.i12.i286 = load i16, ptr %i.fu, align 1, !dbg !15121, !alias.scope !14838, !noalias !14839
  %i.fv = zext i16 %.sroa.034.0.copyload.i12.i286 to i64, !dbg !15122 ; 3 uses
  %i.fw = add nuw nsw i64 %i.fv, 1542, !dbg !15123
  %i.fx = lshr i64 %i.fw, 4, !dbg !15124
  %i.fy = and i64 %i.fx, 3855, !dbg !15124
  %i.fz = and i64 %i.fv, 61680, !dbg !15125
  %i.ga = or disjoint i64 %i.fy, %i.fz, !dbg !15126
  %switch676.not = icmp eq i64 %i.ga, 13107, !dbg !15127
  br i1 %switch676.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289, label %.loopexit276, !dbg !15127

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289: ; preds = %bb.af
  %i.gb = shl nuw i64 %i.fv, 48, !dbg !15128
  %i.gc = and i64 %i.gb, 1085086035219578880, !dbg !15129
  %i.gd = mul i64 %i.gc, 2561, !dbg !15130
  %i.ge = lshr exact i64 %i.gd, 8, !dbg !15131
  %i.gf = and i64 %i.ge, 71776119061217280, !dbg !15132
  %i.gg = mul i64 %i.gf, 6553601, !dbg !15133
  %i.gh = lshr exact i64 %i.gg, 16, !dbg !15134
  %i.gi = mul i64 %i.gh, 42949672960001, !dbg !15135
  %i.gj = lshr exact i64 %i.gi, 32, !dbg !15136
  %i.gk = trunc nuw i64 %i.gj to i32, !dbg !15137
  br label %.thread259, !dbg !15138

bb.ag:                                            ; preds = %bb.g
  %i.gl = add i64 %.sroa.083.1648, 2, !dbg !15139 ; 2 uses
  %i.gm = icmp ugt i64 %.sroa.083.1648, -3, !dbg !15140
  %.not = icmp ugt i64 %i.gl, %2
  %or.cond = or i1 %i.gm, %.not, !dbg !15140
  br i1 %or.cond, label %bb.av, label %bb.at, !dbg !15140

bb.ah:                                            ; preds = %bb.g
  %i.gn = add i64 %.sroa.083.1648, 9, !dbg !15141 ; 2 uses
  %i.go = icmp ugt i64 %.sroa.083.1648, -10, !dbg !15142
  %.not.i295 = icmp ugt i64 %i.gn, %2
  %or.cond.i296 = or i1 %i.go, %.not.i295, !dbg !15142
  br i1 %or.cond.i296, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, label %bb.ai, !dbg !15142

bb.ai:                                            ; preds = %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15143 ; 2 uses
  %.sroa.025.0.copyload.i45.i = load i64, ptr %i.gp, align 1, !dbg !15144, !alias.scope !14843, !noalias !14844 ; 3 uses
  %i.gq = add i64 %.sroa.025.0.copyload.i45.i, 434041037028460038, !dbg !15145
  %i.gr = lshr i64 %i.gq, 4, !dbg !15146
  %i.gs = and i64 %i.gr, 1085102592571150095, !dbg !15146
  %i.gt = and i64 %.sroa.025.0.copyload.i45.i, -1085102592571150096, !dbg !15147
  %i.gu = or disjoint i64 %i.gs, %i.gt, !dbg !15148
  %i.gv = xor i64 %i.gu, 3689348814741910323, !dbg !15148
  %i.gw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gv, i1 false), !dbg !15149
  %.mask804 = and i64 %i.gw, 120, !dbg !15150
  %cond = icmp eq i64 %.mask804, 64, !dbg !15150
  br i1 %cond, label %bb.aj, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, !dbg !15150

bb.aj:                                            ; preds = %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8, !dbg !15151
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !15152, !alias.scope !14845, !noalias !14844, !noundef !534 ; 2 uses
  %i.gz = zext i8 %i.gy to i64, !dbg !15152       ; 2 uses
  %i.ha = zext i8 %i.gy to i128, !dbg !15153
  %i.hb = shl nuw nsw i128 %i.ha, 64, !dbg !15154
  %i.hc = zext i64 %.sroa.025.0.copyload.i45.i to i128, !dbg !15155
  %i.hd = or disjoint i128 %i.hb, %i.hc, !dbg !15154
  %i.he = add nuw nsw i64 %i.gz, 6, !dbg !15156
  %i.hf = lshr i64 %i.he, 4, !dbg !15157
  %i.hg = and i64 %i.hf, 15, !dbg !15157
  %i.hh = and i64 %i.gz, 240, !dbg !15158
  %i.hi = or disjoint i64 %i.hg, %i.hh, !dbg !15159
  %i.hj = xor i64 %i.hi, 3689348814741910323, !dbg !15159
  %i.hk = tail call range(i64 0, 9) i64 @llvm.cttz.i64(i64 %i.hj, i1 true), !dbg !15160
  %i.hl = trunc nuw nsw i64 %i.hk to i32, !dbg !15160
  %i.hm = lshr i32 %i.hl, 3, !dbg !15161          ; 2 uses
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
  %i.ic = icmp ult i128 %i.ib, 79228162514264337593543950336, !dbg !15162
  %5 = icmp ne i32 %i.hm, 0
  %or.cond792 = and i1 %i.ic, %5, !dbg !15162
  br i1 %or.cond792, label %bb.ax, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, !dbg !15162

bb.ak:                                            ; preds = %bb.g
  %i.id = add i64 %.sroa.083.1648, 6, !dbg !15163 ; 2 uses
  %i.ie = icmp ugt i64 %.sroa.083.1648, -7, !dbg !15164
  %.not.i305 = icmp ugt i64 %i.id, %2
  %or.cond.i306 = or i1 %i.ie, %.not.i305, !dbg !15164
  br i1 %or.cond.i306, label %.loopexit275, label %bb.al, !dbg !15164

bb.al:                                            ; preds = %bb.ak
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15165 ; 2 uses
  %.sroa.030.0.copyload.i32.i = load i32, ptr %i.if, align 1, !dbg !15166, !alias.scope !14848, !noalias !14849
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2, !dbg !15167
  %.sroa.029.0.copyload.i28.i = load i32, ptr %i.ig, align 1, !dbg !15168, !alias.scope !14848, !noalias !14849
  %i.ih = zext i32 %.sroa.029.0.copyload.i28.i to i64, !dbg !15169
  %i.ii = shl nuw nsw i64 %i.ih, 16, !dbg !15169
  %i.ij = zext i32 %.sroa.030.0.copyload.i32.i to i64, !dbg !15170
  %i.ik = or i64 %i.ii, %i.ij, !dbg !15169        ; 3 uses
  %i.il = add nuw nsw i64 %i.ik, 6622940628486, !dbg !15171
  %i.im = lshr i64 %i.il, 4, !dbg !15172
  %i.in = and i64 %i.im, 16557351571215, !dbg !15172
  %i.io = and i64 %i.ik, 264917625139440, !dbg !15173
  %i.ip = or disjoint i64 %i.in, %i.io, !dbg !15174
  %i.iq = xor i64 %i.ip, 3689348814741910323, !dbg !15174
  %i.ir = tail call range(i64 0, 49) i64 @llvm.cttz.i64(i64 %i.iq, i1 true), !dbg !15175 ; 2 uses
  %switch677 = icmp samesign ugt i64 %i.ir, 15, !dbg !15176
  %.mask680 = and i64 %i.ir, 56
  %i.is = icmp eq i64 %.mask680, 48
  %or.cond793 = and i1 %switch677, %i.is, !dbg !15176
  br i1 %or.cond793, label %bb.bb, label %.loopexit275, !dbg !15176

bb.am:                                            ; preds = %bb.g
  %i.it = add i64 %.sroa.083.1648, 3, !dbg !15177 ; 2 uses
  %i.iu = icmp ugt i64 %.sroa.083.1648, -4, !dbg !15178
  %.not.i315 = icmp ugt i64 %i.it, %2
  %or.cond.i316 = or i1 %i.iu, %.not.i315, !dbg !15178
  br i1 %or.cond.i316, label %.loopexit274, label %bb.an, !dbg !15178

bb.an:                                            ; preds = %bb.am
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15179 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1, !dbg !15180
  %.sroa.033.0.copyload.i16.i = load i16, ptr %i.iw, align 1, !dbg !15181, !alias.scope !14856, !noalias !14857
  %i.ix = zext i16 %.sroa.033.0.copyload.i16.i to i64, !dbg !15182
  %i.iy = shl nuw nsw i64 %i.ix, 8, !dbg !15182
  %i.iz = load i8, ptr %i.iv, align 1, !dbg !15183, !alias.scope !14856, !noalias !14857, !noundef !534
  %i.ja = zext i8 %i.iz to i64, !dbg !15183
  %i.jb = or disjoint i64 %i.iy, %i.ja, !dbg !15182 ; 3 uses
  %i.jc = add nuw nsw i64 %i.jb, 394758, !dbg !15184
  %i.jd = lshr i64 %i.jc, 4, !dbg !15185
  %i.je = and i64 %i.jd, 986895, !dbg !15185
  %i.jf = and i64 %i.jb, 15790320, !dbg !15186
  %i.jg = or disjoint i64 %i.je, %i.jf, !dbg !15187
  %i.jh = xor i64 %i.jg, 3689348814741910323, !dbg !15187
  %i.ji = tail call range(i64 0, 25) i64 @llvm.cttz.i64(i64 %i.jh, i1 true), !dbg !15188 ; 2 uses
  %switch678 = icmp samesign ugt i64 %i.ji, 15, !dbg !15189
  %.mask679 = and i64 %i.ji, 24
  %i.jj = icmp eq i64 %.mask679, 24
  %or.cond794 = and i1 %switch678, %i.jj, !dbg !15189
  br i1 %or.cond794, label %bb.bf, label %.loopexit274, !dbg !15189

_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.l
  %.sroa.66.0306322.i = phi i32 [ %i.bw, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.ar, %bb.l ] ; 2 uses
  %i.jk = sub i32 0, %.sroa.66.0306322.i
  %spec.select111 = select i1 %.sroa.0.0, i32 %i.jk, i32 %.sroa.66.0306322.i, !dbg !15190
  br label %.thread259, !dbg !15190

bb.ao:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit125.i, %bb.j, %bb.l, %bb.m, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit49.i
  store i32 0, ptr %0, align 4, !dbg !15191
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

.loopexit280:                                     ; preds = %bb.n, %bb.o
  store i32 0, ptr %0, align 4, !dbg !15192
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

bb.ap:                                            ; preds = %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i
  store i32 0, ptr %0, align 4, !dbg !15193
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

bb.aq:                                            ; preds = %bb.p
  %i.jl = load i32, ptr %i.i, align 8, !dbg !15194, !noundef !534
  %i.jm = load i64, ptr %i.j, align 8, !dbg !15194, !noundef !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15195
  br label %.thread259, !dbg !15196

bb.ar:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15195
  store i32 0, ptr %0, align 4, !dbg !15197
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

bb.as:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15042, !noalias !14828
  store i32 0, ptr %0, align 4, !dbg !15198
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

.loopexit279:                                     ; preds = %bb.y, %bb.z
  store i32 0, ptr %0, align 4, !dbg !15199
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

.loopexit278:                                     ; preds = %bb.aa, %bb.ab
  store i32 0, ptr %0, align 4, !dbg !15200
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

.loopexit277:                                     ; preds = %bb.ac, %bb.ad
  store i32 0, ptr %0, align 4, !dbg !15201
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

.loopexit276:                                     ; preds = %bb.ae, %bb.af
  store i32 0, ptr %0, align 4, !dbg !15202
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14962

bb.at:                                            ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1648, !dbg !15203 ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !dbg !15204, !alias.scope !14875, !noalias !14876, !noundef !534
  %cond.i = icmp eq i8 %i.jo, 45, !dbg !15204
  br i1 %cond.i, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, !dbg !15204

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244: ; preds = %bb.at
  %.sroa.034.0.copyload.i208 = load i16, ptr %i.jn, align 1, !dbg !15205, !alias.scope !14879, !noalias !14880
  %i.jp = zext i16 %.sroa.034.0.copyload.i208 to i64, !dbg !15206 ; 4 uses
  %i.jq = add nuw nsw i64 %i.jp, 1542, !dbg !15207
  %i.jr = lshr i64 %i.jq, 4, !dbg !15208
  %i.js = and i64 %i.jr, 3855, !dbg !15208
  %i.jt = and i64 %i.jp, 61680, !dbg !15209
  %i.ju = or disjoint i64 %i.js, %i.jt, !dbg !15210
  %i.jv = xor i64 %i.ju, 3689348814741910323, !dbg !15210
  %i.jw = tail call range(i64 0, 17) i64 @llvm.cttz.i64(i64 %i.jv, i1 true), !dbg !15211 ; 2 uses
  %i.jx = trunc nuw nsw i64 %i.jw to i32, !dbg !15211
  %i.jy = lshr i32 %i.jx, 3, !dbg !15212
  switch i32 %i.jy, label %bb.au [
    i32 0, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242
    i32 1, label %.thread153
  ], !dbg !15213

.thread153:                                       ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.jz = and i64 %i.jp, 15, !dbg !15214
  br label %bb.aw, !dbg !15215

bb.au:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.ka = icmp samesign ugt i64 %i.jw, 15, !dbg !15216
  tail call void @llvm.assume(i1 %i.ka), !dbg !15216, !noalias !14881
  %i.kb = shl nuw i64 %i.jp, 48, !dbg !15217
  %i.kc = and i64 %i.kb, 1085086035219578880, !dbg !15218
  %i.kd = mul i64 %i.kc, 2561, !dbg !15219
  %i.ke = lshr exact i64 %i.kd, 8, !dbg !15220
  %i.kf = and i64 %i.ke, 71776119061217280, !dbg !15221
  %i.kg = mul i64 %i.kf, 6553601, !dbg !15222
  %i.kh = lshr exact i64 %i.kg, 16, !dbg !15223
  %i.ki = mul i64 %i.kh, 42949672960001, !dbg !15224 ; 2 uses
  %i.kj = lshr exact i64 %i.ki, 32, !dbg !15225
  %i.kk = icmp ugt i64 %i.ki, 9223372032559808512, !dbg !15215
  br i1 %i.kk, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242, label %bb.aw, !dbg !15215

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168: ; preds = %bb.at
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 1, !dbg !15226
  %i.km = load i8, ptr %i.kl, align 1, !dbg !15227, !alias.scope !14882, !noalias !14883, !noundef !534 ; 2 uses
  %i.kn = zext i8 %i.km to i64, !dbg !15227       ; 2 uses
  %i.ko = add nuw nsw i64 %i.kn, 6, !dbg !15228
  %i.kp = lshr i64 %i.ko, 4, !dbg !15229
  %i.kq = and i64 %i.kp, 15, !dbg !15229
  %i.kr = and i64 %i.kn, 240, !dbg !15230
  %i.ks = or disjoint i64 %i.kq, %i.kr, !dbg !15231
  %trunc.not = icmp eq i64 %i.ks, 51, !dbg !15232
  br i1 %trunc.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242, !dbg !15232

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168
  %i.kt = and i8 %i.km, 15, !dbg !15233
  %i.ku = zext nneg i8 %i.kt to i32, !dbg !15233
  %i.kv = sub nsw i32 0, %i.ku, !dbg !15233
  br label %.thread252, !dbg !15234

bb.av:                                            ; preds = %bb.ag
  store i32 0, ptr %0, align 4, !dbg !15235
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !15236

_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread242: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, %bb.au
  store i32 0, ptr %0, align 4, !dbg !15237
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !15238

bb.aw:                                            ; preds = %bb.au, %.thread153
  %.sroa.11.0.ph151156 = phi i64 [ %i.jz, %.thread153 ], [ %i.kj, %bb.au ]
  %i.kw = trunc nuw nsw i64 %.sroa.11.0.ph151156 to i32, !dbg !15239
  br label %.thread252, !dbg !15240

.thread252:                                       ; preds = %bb.aw, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread
  %.sroa.10.2241255 = phi i32 [ %i.kw, %bb.aw ], [ %i.kv, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread ]
  %.sroa.10.2241255.fr = freeze i32 %.sroa.10.2241255, !dbg !15241 ; 2 uses
  %i.kx = icmp slt i32 %.sroa.10.2241255.fr, 70, !dbg !15241
  %spec.select263.v = select i1 %i.kx, i32 2000, i32 1900, !dbg !15241
  %spec.select263 = add i32 %spec.select263.v, %.sroa.10.2241255.fr, !dbg !15241
  br label %.thread259, !dbg !15241

bb.ax:                                            ; preds = %bb.aj
  %i.ky = lshr i128 %i.ib, 64
  %i.kz = trunc nuw i128 %i.ky to i32, !dbg !15242
  %i.la = icmp eq ptr %i.q, %i.e, !dbg !15243
  br i1 %i.la, label %bb.az, label %bb.ay, !dbg !15244, !prof !543

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread: ; preds = %bb.aj, %bb.ah, %bb.ai
  store i32 0, ptr %0, align 4, !dbg !15245
end_hunk_2
begin_hunk_3_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a
_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit65.a: ; preds = %bb.v
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.p), !dbg !18135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !18135
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18136

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !18137
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18138
  %i.co = load i64, ptr %i.cn, align 8, !dbg !18138, !noundef !534
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !18139
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !18139, !range !802, !noundef !534
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18140
  %i.cs = load ptr, ptr %i.cr, align 16, !dbg !18140, !noundef !534 ; 2 uses
  %.not25 = icmp eq ptr %i.cs, null, !dbg !18140
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %spec.select73 = select i1 %.not25, ptr null, ptr %i.ct, !dbg !18141
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !18137
  store i64 %i.co, ptr %i.cu, align 8, !dbg !18137
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !18137
  store i8 %i.cq, ptr %i.cv, align 1, !dbg !18137
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !18137
  store ptr %spec.select73, ptr %i.cw, align 16, !dbg !18137
  store i8 17, ptr %i.o, align 16, !dbg !18137
  %i.cx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a unwind label %bb.aa, !dbg !18142

bb.z:                                             ; preds = %bb.w
  %i.cy = icmp eq i8 %i.w, 22, !dbg !18079
  br i1 %i.cy, label %bb.ab, label %bb.ac, !dbg !18079

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o) #39
          to label %bb.j unwind label %bb.i, !dbg !18143

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a: ; preds = %bb.y
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o), !dbg !18143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !18143
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18144

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !18146
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !18147
  %i.dc = load i32, ptr %i.db, align 4, !dbg !18147, !noundef !534
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !18146
  store i32 %i.dc, ptr %i.dd, align 4, !dbg !18146
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !18146
  store ptr %i.da, ptr %i.de, align 8, !dbg !18146
  store i8 21, ptr %i.n, align 16, !dbg !18146
  %i.df = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a unwind label %bb.ad, !dbg !18148

bb.ac:                                            ; preds = %bb.z
  %i.dg = icmp eq i8 %i.x, 22, !dbg !18079
  br i1 %i.dg, label %bb.ae, label %bb.af, !dbg !18079

bb.ad:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n) #39
          to label %bb.j unwind label %bb.i, !dbg !18149

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a: ; preds = %bb.ab
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n), !dbg !18149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !18149
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18149

bb.ae:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !18151
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !18152
  %i.dk = load i32, ptr %i.dj, align 4, !dbg !18152, !noundef !534
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !18151
  store i32 %i.dk, ptr %i.dl, align 4, !dbg !18151
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !18151
  store ptr %i.di, ptr %i.dm, align 8, !dbg !18151
  store i8 21, ptr %i.m, align 16, !dbg !18151
  %i.dn = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a unwind label %bb.ag, !dbg !18153

bb.af:                                            ; preds = %bb.ac
  %i.do = icmp eq i8 %i.w, 24, !dbg !18079
  br i1 %i.do, label %bb.ah, label %bb.ai, !dbg !18079

bb.ag:                                            ; preds = %bb.ae
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m) #39
          to label %bb.j unwind label %bb.i, !dbg !18154

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a: ; preds = %bb.ae
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m), !dbg !18154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !18154
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18154

bb.ah:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !18156
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !18157
  %i.ds = load i32, ptr %i.dr, align 4, !dbg !18157, !noundef !534
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !18156
  store i32 %i.ds, ptr %i.dt, align 4, !dbg !18156
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !18156
  store ptr %i.dq, ptr %i.du, align 8, !dbg !18156
  store i8 23, ptr %i.l, align 16, !dbg !18156
  %i.dv = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69 unwind label %bb.aj, !dbg !18158

bb.ai:                                            ; preds = %bb.af
  switch i8 %i.x, label %bb.ak [
    i8 0, label %bb.al
    i8 24, label %bb.am
  ], !dbg !18079

bb.aj:                                            ; preds = %bb.ah
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l) #39
          to label %bb.j unwind label %bb.i, !dbg !18159

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69: ; preds = %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l), !dbg !18159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !18159
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18159

bb.ak:                                            ; preds = %bb.ai
  %i.dx = icmp eq i8 %i.w, 0, !dbg !18079
  br i1 %i.dx, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.ap, !dbg !18079

bb.al:                                            ; preds = %bb.ai
  %i.dy = icmp eq i8 %i.w, 0, !dbg !18079
  br i1 %i.dy, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.an, !dbg !18079

bb.am:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !18161
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !18162
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !18162, !noundef !534
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !18161
  store i32 %i.eb, ptr %i.ec, align 4, !dbg !18161
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !18161
  store ptr %i.dz, ptr %i.ed, align 8, !dbg !18161
  store i8 23, ptr %i.k, align 16, !dbg !18161
  %i.ee = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.k) #37
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70 unwind label %bb.ao, !dbg !18163

bb.an:                                            ; preds = %bb.ap, %bb.al
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18164

bb.ao:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k) #39
          to label %bb.j unwind label %bb.i, !dbg !18165

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70: ; preds = %bb.am
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k), !dbg !18165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18165
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18165

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
  ], !dbg !18079

bb.aq:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18166
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18167
  %i.eg = load i128, ptr %i.b, align 16, !dbg !18167, !range !17968, !noundef !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18167
  %.not23 = icmp eq i128 %i.eg, 0, !dbg !18166
  br i1 %.not23, label %bb.ea, label %bb.du, !dbg !18166

bb.ar:                                            ; preds = %bb.ap
  %i.eh = icmp eq i8 %i.w, 1, !dbg !18079
  br i1 %i.eh, label %bb.bt, label %bb.aq, !dbg !18079

bb.as:                                            ; preds = %bb.ap
  %i.ei = icmp eq i8 %i.w, 2, !dbg !18079
  br i1 %i.ei, label %bb.bu, label %bb.aq, !dbg !18079

bb.at:                                            ; preds = %bb.ap
  %i.ej = icmp eq i8 %i.w, 3, !dbg !18079
  br i1 %i.ej, label %bb.bw, label %bb.aq, !dbg !18079

bb.au:                                            ; preds = %bb.ap
  %i.ek = icmp eq i8 %i.w, 4, !dbg !18079
  br i1 %i.ek, label %bb.bx, label %bb.aq, !dbg !18079

bb.av:                                            ; preds = %bb.ap
  %i.el = icmp eq i8 %i.w, 5, !dbg !18079
  br i1 %i.el, label %bb.by, label %bb.aq, !dbg !18079

bb.aw:                                            ; preds = %bb.ap
  %i.em = icmp eq i8 %i.w, 6, !dbg !18079
  br i1 %i.em, label %bb.bz, label %bb.aq, !dbg !18079

bb.ax:                                            ; preds = %bb.ap
  %i.en = icmp eq i8 %i.w, 7, !dbg !18079
  br i1 %i.en, label %bb.ca, label %bb.aq, !dbg !18079

bb.ay:                                            ; preds = %bb.ap
  %i.eo = icmp eq i8 %i.w, 8, !dbg !18079
  br i1 %i.eo, label %bb.cb, label %bb.aq, !dbg !18079

bb.az:                                            ; preds = %bb.ap
  %i.ep = icmp eq i8 %i.w, 9, !dbg !18079
  br i1 %i.ep, label %bb.cc, label %bb.aq, !dbg !18079

bb.ba:                                            ; preds = %bb.ap
  %i.eq = icmp eq i8 %i.w, 10, !dbg !18079
  br i1 %i.eq, label %bb.cd, label %bb.aq, !dbg !18079

bb.bb:                                            ; preds = %bb.ap
  %i.er = icmp eq i8 %i.w, 11, !dbg !18079
  br i1 %i.er, label %bb.ce, label %bb.aq, !dbg !18079

bb.bc:                                            ; preds = %bb.ap
  %i.es = icmp eq i8 %i.w, 12, !dbg !18079
  br i1 %i.es, label %bb.cf, label %bb.aq, !dbg !18079

bb.bd:                                            ; preds = %bb.ap
  %i.et = icmp eq i8 %i.w, 13, !dbg !18079
  br i1 %i.et, label %bb.cg, label %bb.aq, !dbg !18079

bb.be:                                            ; preds = %bb.ap
  %i.eu = icmp eq i8 %i.w, 14, !dbg !18079
  br i1 %i.eu, label %bb.cj, label %bb.aq, !dbg !18079

bb.bf:                                            ; preds = %bb.ap
  %i.ev = icmp eq i8 %i.w, 15, !dbg !18079
  br i1 %i.ev, label %bb.cm, label %bb.aq, !dbg !18079

bb.bg:                                            ; preds = %bb.ap
  %i.ew = icmp eq i8 %i.w, 16, !dbg !18079
  br i1 %i.ew, label %bb.cp, label %bb.aq, !dbg !18079

bb.bh:                                            ; preds = %bb.ap
  %i.ex = icmp eq i8 %i.w, 17, !dbg !18079
  br i1 %i.ex, label %bb.cq, label %bb.aq, !dbg !18079

bb.bi:                                            ; preds = %bb.ap
  %i.ey = icmp eq i8 %i.w, 19, !dbg !18079
  br i1 %i.ey, label %bb.cu, label %bb.aq, !dbg !18079

bb.bj:                                            ; preds = %bb.ap
  %i.ez = icmp eq i8 %i.w, 20, !dbg !18079
  br i1 %i.ez, label %bb.cw, label %bb.aq, !dbg !18079

bb.bk:                                            ; preds = %bb.ap
  %i.fa = icmp eq i8 %i.w, 21, !dbg !18079
  br i1 %i.fa, label %bb.cx, label %bb.aq, !dbg !18079

bb.bl:                                            ; preds = %bb.ap
  %i.fb = icmp eq i8 %i.w, 23, !dbg !18079
  br i1 %i.fb, label %bb.da, label %bb.aq, !dbg !18079

bb.bm:                                            ; preds = %bb.ap
  %i.fc = icmp eq i8 %i.w, 25, !dbg !18079
  br i1 %i.fc, label %bb.dd, label %bb.aq, !dbg !18079

bb.bn:                                            ; preds = %bb.ap
  %i.fd = icmp eq i8 %i.w, 26, !dbg !18079
  br i1 %i.fd, label %bb.de, label %bb.aq, !dbg !18079

bb.bo:                                            ; preds = %bb.ap
  %i.fe = icmp eq i8 %i.w, 27, !dbg !18079
  br i1 %i.fe, label %bb.dm, label %bb.aq, !dbg !18079

bb.bp:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dn
    i8 30, label %bb.do
  ], !dbg !18079

bb.bq:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dp
    i8 30, label %bb.dq
  ], !dbg !18079

bb.br:                                            ; preds = %bb.ap
  %i.ff = icmp eq i8 %i.w, 32, !dbg !18079
  br i1 %i.ff, label %bb.dr, label %bb.aq, !dbg !18079

bb.bs:                                            ; preds = %bb.ap
  %i.fg = icmp eq i8 %i.w, 34, !dbg !18079
  br i1 %i.fg, label %bb.dt, label %bb.aq, !dbg !18079

bb.bt:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !18168
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !18168, !range !659, !noundef !534
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !18169
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !18169, !range !659, !noundef !534
  %i.fl = icmp eq i8 %i.fi, %i.fk, !dbg !18168
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18170

bb.bu:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18171
  %.val29.a = load i64, ptr %i.fm, align 16, !dbg !18171, !noundef !534 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18171
  %.val31 = load i64, ptr %i.fn, align 16, !dbg !18171, !noundef !534
  %i.fo = icmp eq i64 %.val29.a, %.val31, !dbg !18172
  br i1 %i.fo, label %bb.bv, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18172

bb.bv:                                            ; preds = %bb.bu
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18173
  %.val30 = load ptr, ptr %i.fp, align 8, !dbg !18171, !nonnull !534, !noundef !534
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18174
  %.val = load ptr, ptr %i.fq, align 8, !dbg !18171, !nonnull !534, !noundef !534
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val30, i64 %.val29.a), !dbg !18175, !alias.scope !17970
  %i.fr = icmp eq i32 %bcmp.i.i, 0, !dbg !18175
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18176

bb.bw:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !18177
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !18177, !noundef !534
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !18178
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !18178, !noundef !534
  %i.fw = icmp eq i8 %i.ft, %i.fv, !dbg !18177
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18179

bb.bx:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !18180
  %i.fy = load i16, ptr %i.fx, align 2, !dbg !18180, !noundef !534
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !18181
  %i.ga = load i16, ptr %i.fz, align 2, !dbg !18181, !noundef !534
  %i.gb = icmp eq i16 %i.fy, %i.ga, !dbg !18180
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18182

bb.by:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !18183
  %i.gd = load i32, ptr %i.gc, align 4, !dbg !18183, !noundef !534
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !18184
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !18184, !noundef !534
  %i.gg = icmp eq i32 %i.gd, %i.gf, !dbg !18183
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18185

bb.bz:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18186
  %i.gi = load i64, ptr %i.gh, align 8, !dbg !18186, !noundef !534
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18187
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !18187, !noundef !534
  %i.gl = icmp eq i64 %i.gi, %i.gk, !dbg !18186
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18188

bb.ca:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18189
  %i.gn = load i128, ptr %i.gm, align 16, !dbg !18189, !noundef !534
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18190
  %i.gp = load i128, ptr %i.go, align 16, !dbg !18190, !noundef !534
  %i.gq = icmp eq i128 %i.gn, %i.gp, !dbg !18189
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18191

bb.cb:                                            ; preds = %bb.ay
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !18192
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !18192, !noundef !534
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !18193
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !18193, !noundef !534
  %i.gv = icmp eq i8 %i.gs, %i.gu, !dbg !18192
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18194

bb.cc:                                            ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !18195
  %i.gx = load i16, ptr %i.gw, align 2, !dbg !18195, !noundef !534
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !18196
  %i.gz = load i16, ptr %i.gy, align 2, !dbg !18196, !noundef !534
  %i.ha = icmp eq i16 %i.gx, %i.gz, !dbg !18195
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18197

bb.cd:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !18198
end_hunk_3
begin_hunk_4_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a

bb.dd:                                            ; preds = %bb.bm
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18268
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18269
  %i.kw = tail call noundef zeroext i1 @_RNvXs_NtCs1LHh8CLbVkQ_11polars_core7testingNtNtB6_6series6SeriesNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kv), !dbg !18270
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18270

bb.de:                                            ; preds = %bb.bn
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18271
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18272
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18273
  %i.la = load i64, ptr %i.kz, align 8, !dbg !18273, !noundef !534 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18274
  %i.lc = load i64, ptr %i.lb, align 8, !dbg !18274, !noundef !534
  %.not = icmp eq i64 %i.la, %i.lc, !dbg !18273
  br i1 %.not, label %.preheader, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18043

.preheader:                                       ; preds = %bb.de
  %.not78 = icmp eq i64 %i.la, 0, !dbg !18275
  br i1 %.not78, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph, !dbg !18049

.lr.ph:                                           ; preds = %.preheader
  %.val42.a = load ptr, ptr %i.kx, align 16, !nonnull !534, !noundef !534
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val43.a = load ptr, ptr %i.ld, align 8, !nonnull !534, !align !601, !noundef !534 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.val43.a, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !range !732, !invariant.load !534
  %i.lg = add nsw i64 %i.lf, -1
  %i.lh = and i64 %i.lg, -16
  %i.li = getelementptr inbounds nuw i8, ptr %.val42.a, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %.val43.a, i64 584
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !534, !nonnull !534
  %.val40 = load ptr, ptr %i.ky, align 16, !nonnull !534
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val41 = load ptr, ptr %i.lm, align 8, !nonnull !534, !align !601 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val41, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.val41, i64 584
  br label %bb.dh, !dbg !18049

bb.df:                                            ; preds = %bb.dj, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.lp, %bb.dg ], [ %i.ly, %bb.dj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f) #39
          to label %bb.j unwind label %bb.i, !dbg !18276

bb.dg:                                            ; preds = %bb.dk, %bb.dh
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %.lr.ph, %bb.dl
  %.sroa.0.177 = phi i1 [ true, %.lr.ph ], [ %i.lz, %bb.dl ]
  %.sroa.013.076 = phi i64 [ 0, %.lr.ph ], [ %i.lq, %bb.dl ] ; 3 uses
  %i.lq = add nuw i64 %.sroa.013.076, 1, !dbg !18277 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18278
  call void %i.ll(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.lj, i64 noundef %.sroa.013.076) #37, !dbg !18279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18280
  %i.lr = load i64, ptr %i.ln, align 8, !dbg !18281, !range !732, !invariant.load !534
  %i.ls = add nsw i64 %i.lr, -1, !dbg !18281
  %i.lt = and i64 %i.ls, -16, !dbg !18281
  %i.lu = getelementptr inbounds nuw i8, ptr %.val40, i64 %i.lt, !dbg !18281
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16, !dbg !18281
  %i.lw = load ptr, ptr %i.lo, align 8, !dbg !18282, !invariant.load !534, !nonnull !534
  invoke void %i.lw(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.lv, i64 noundef %.sroa.013.076)
          to label %bb.di unwind label %bb.dg, !dbg !18283

bb.di:                                            ; preds = %bb.dh
  %i.lx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.dk unwind label %bb.dj, !dbg !18284

bb.dj:                                            ; preds = %bb.di
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e) #39
          to label %bb.df unwind label %bb.i, !dbg !18285

bb.dk:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e)
          to label %bb.dl unwind label %bb.dg, !dbg !18285

bb.dl:                                            ; preds = %bb.dk
  %i.lz = select i1 %i.lx, i1 %.sroa.0.177, i1 false, !dbg !18286 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18285
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f), !dbg !18276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18276
  %exitcond.not = icmp eq i64 %i.lq, %i.la, !dbg !18275
  br i1 %exitcond.not, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.dh, !dbg !18049

bb.dm:                                            ; preds = %bb.bo
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18287
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18288
  %i.mc = tail call noundef zeroext i1 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6objectRDNtB2_16PolarsObjectSafeEL_NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ma, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mb), !dbg !18289
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18289

bb.dn:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18290
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18291
  %i.me = load i64, ptr %i.md, align 8, !dbg !18291, !noundef !534
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18292
  %i.mg = load ptr, ptr %i.mf, align 16, !dbg !18292, !nonnull !534, !align !601, !noundef !534
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.me, ptr noundef nonnull align 8 %i.mg), !dbg !18290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18293
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18294
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !18294, !noundef !534
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18295
  %i.mk = load ptr, ptr %i.mj, align 16, !dbg !18295, !nonnull !534, !align !601, !noundef !534
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.mi, ptr noundef nonnull align 8 %i.mk), !dbg !18293
  %i.ml = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true), !dbg !18296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18297
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18298

bb.do:                                            ; preds = %bb.bp
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18299
  %i.mn = load ptr, ptr %i.mm, align 8, !dbg !18299, !nonnull !534, !noundef !534 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 8, !dbg !18300
  %.val50.a = load ptr, ptr %i.mo, align 8, !dbg !18300, !nonnull !534, !noundef !534 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 16, !dbg !18300
  %.val51.a = load i64, ptr %i.mp, align 8, !dbg !18300, !noundef !534
  %i.mq = getelementptr inbounds nuw [48 x i8], ptr %.val50.a, i64 %.val51.a, !dbg !18301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18302
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18303
  %i.ms = load i64, ptr %i.mr, align 8, !dbg !18303, !noundef !534
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18304
  %i.mu = load ptr, ptr %i.mt, align 16, !dbg !18304, !nonnull !534, !align !601, !noundef !534
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.ms, ptr noundef nonnull align 8 %i.mu), !dbg !18302
  %i.mv = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EIB1H_IB2v_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val50.a, ptr noundef nonnull %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i1 noundef zeroext true), !dbg !18305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18306
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18307

bb.dp:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18308
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18309
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !18309, !noundef !534
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18310
  %i.mz = load ptr, ptr %i.my, align 16, !dbg !18310, !nonnull !534, !align !601, !noundef !534
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.mx, ptr noundef nonnull align 8 %i.mz), !dbg !18308
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18311
  %i.nb = load ptr, ptr %i.na, align 8, !dbg !18311, !nonnull !534, !noundef !534 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 8, !dbg !18312
  %.val48 = load ptr, ptr %i.nc, align 8, !dbg !18312, !nonnull !534, !noundef !534 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nb, i64 16, !dbg !18312
  %.val49 = load i64, ptr %i.nd, align 8, !dbg !18312, !noundef !534
  %i.ne = getelementptr inbounds nuw [48 x i8], ptr %.val48, i64 %.val49, !dbg !18313
  %i.nf = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EIB1H_IB2v_BX_ENCNvB2_23struct_owned_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %.val48, ptr noundef nonnull %i.ne, i1 noundef zeroext true), !dbg !18314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18315
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18316

bb.dq:                                            ; preds = %bb.bq
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18317
  %i.nh = load ptr, ptr %i.ng, align 8, !dbg !18317, !nonnull !534, !noundef !534 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8, !dbg !18318
  %.val46 = load ptr, ptr %i.ni, align 8, !dbg !18318, !nonnull !534, !noundef !534 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 16, !dbg !18318
  %.val47 = load i64, ptr %i.nj, align 8, !dbg !18318, !noundef !534
  %i.nk = getelementptr inbounds nuw [48 x i8], ptr %.val46, i64 %.val47, !dbg !18319
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18320
  %i.nm = load ptr, ptr %i.nl, align 8, !dbg !18320, !nonnull !534, !noundef !534 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 8, !dbg !18321
  %.val44 = load ptr, ptr %i.nn, align 8, !dbg !18321, !nonnull !534, !noundef !534 ; 2 uses
  %i.no = getelementptr i8, ptr %i.nm, i64 16, !dbg !18321
  %.val45 = load i64, ptr %i.no, align 8, !dbg !18321, !noundef !534
  %i.np = getelementptr inbounds nuw [48 x i8], ptr %.val44, i64 %.val45, !dbg !18322
  %i.nq = tail call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val46, ptr noundef nonnull %i.nk, ptr noundef nonnull %.val44, ptr noundef nonnull %i.np, i1 noundef zeroext true), !dbg !18323
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18324

bb.dr:                                            ; preds = %bb.br
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18325
  %.val53.a = load i64, ptr %i.nr, align 16, !dbg !18325, !noundef !534 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18325
  %.val55 = load i64, ptr %i.ns, align 16, !dbg !18325, !noundef !534
  %i.nt = icmp eq i64 %.val53.a, %.val55, !dbg !18326
  br i1 %i.nt, label %bb.ds, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18326

bb.ds:                                            ; preds = %bb.dr
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18327
  %.val54 = load ptr, ptr %i.nu, align 8, !dbg !18325, !nonnull !534, !noundef !534
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18328
  %.val52 = load ptr, ptr %i.nv, align 8, !dbg !18325, !nonnull !534, !noundef !534
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val52, ptr nonnull readonly %.val54, i64 range(i64 0, -9223372036854775808) %.val53.a), !dbg !18329, !alias.scope !18063
  %i.nw = icmp eq i32 %bcmp.i.i.i, 0, !dbg !18329
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18330

bb.dt:                                            ; preds = %bb.bs
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18331
  %i.ny = load i128, ptr %i.nx, align 16, !dbg !18331, !noundef !534
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18332
  %i.oa = load i64, ptr %i.nz, align 16, !dbg !18332, !noundef !534
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18333
  %i.oc = load i128, ptr %i.ob, align 16, !dbg !18333, !noundef !534
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18334
  %i.oe = load i64, ptr %i.od, align 16, !dbg !18334, !noundef !534
  %i.of = tail call fastcc noundef zeroext i1 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal9dec128_eq(i128 noundef %i.ny, i64 noundef %i.oa, i128 noundef %i.oc, i64 noundef %i.oe) #37, !dbg !18335
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18336

bb.du:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18337
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18338
  %i.og = load i128, ptr %i.a, align 16, !dbg !18338, !range !17968, !noundef !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18338
  %.not24 = icmp eq i128 %i.og, 0, !dbg !18337
  br i1 %.not24, label %bb.ea, label %bb.dv, !dbg !18337

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18064
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18340
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18341
  %i.oh = load i128, ptr %i.d, align 16, !dbg !18342, !range !17968, !noundef !534
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18342
  %i.oj = trunc nuw i128 %i.oh to i1, !dbg !18343
  %i.ok = load i128, ptr %i.c, align 16, !dbg !18342, !range !17968, !noundef !534
  %i.ol = trunc nuw i128 %i.ok to i1, !dbg !18343 ; 2 uses
  br i1 %i.oj, label %bb.dw, label %bb.dx, !dbg !18343

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.ol, label %bb.dz, label %bb.dy, !dbg !18343

bb.dx:                                            ; preds = %bb.dv
  %i.om = xor i1 %i.ol, true, !dbg !18343
  br label %bb.dy, !dbg !18343

bb.dy:                                            ; preds = %bb.dw, %bb.dz, %bb.dx
  %.sroa.0.2 = phi i1 [ %i.oq, %bb.dz ], [ %i.om, %bb.dx ], [ false, %bb.dw ], !dbg !18344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18345
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18345

bb.dz:                                            ; preds = %bb.dw
  %i.on = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18342
  %i.oo = load i128, ptr %i.oi, align 16, !dbg !18346, !noundef !534
  %i.op = load i128, ptr %i.on, align 16, !dbg !18347, !noundef !534
  %i.oq = icmp eq i128 %i.oo, %i.op, !dbg !18346
  br label %bb.dy, !dbg !18348

bb.ea:                                            ; preds = %bb.du, %bb.aq
  %i.or = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18349
  %i.os = extractvalue { i64, double } %i.or, 0, !dbg !18349
  %i.ot = icmp eq i64 %i.os, 1, !dbg !18350
  br i1 %i.ot, label %bb.eb, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18350

bb.eb:                                            ; preds = %bb.ea
  %i.ou = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18351
  %i.ov = extractvalue { i64, double } %i.ou, 0, !dbg !18351
  %i.ow = icmp eq i64 %i.ov, 1, !dbg !18352
  br i1 %i.ow, label %bb.ec, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18352

bb.ec:                                            ; preds = %bb.eb
  %i.ox = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !18353 ; 2 uses
  %i.oy = extractvalue { i64, double } %i.ox, 0, !dbg !18353
  %i.oz = extractvalue { i64, double } %i.ox, 1, !dbg !18353 ; 2 uses
  %i.pa = trunc nuw i64 %i.oy to i1, !dbg !18354
  br i1 %i.pa, label %bb.ed, label %bb.ee, !dbg !18354, !prof !807

bb.ed:                                            ; preds = %bb.ec
  %i.pb = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !18355 ; 2 uses
  %i.pc = extractvalue { i64, double } %i.pb, 0, !dbg !18355
  %i.pd = extractvalue { i64, double } %i.pb, 1, !dbg !18355 ; 2 uses
  %i.pe = trunc nuw i64 %i.pc to i1, !dbg !18356
  br i1 %i.pe, label %bb.ef, label %bb.eg, !dbg !18356, !prof !807

bb.ee:                                            ; preds = %bb.ec
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #38, !dbg !18357
  unreachable, !dbg !18357

bb.ef:                                            ; preds = %bb.ed
  %i.pf = fcmp uno double %i.oz, 0.000000e+00, !dbg !18358
  br i1 %i.pf, label %bb.ei, label %bb.eh, !dbg !18359

bb.eg:                                            ; preds = %bb.ed
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38, !dbg !18360
  unreachable, !dbg !18360

bb.eh:                                            ; preds = %bb.ef
  %i.pg = fcmp oeq double %i.oz, %i.pd, !dbg !18361
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18362

bb.ei:                                            ; preds = %bb.ef
  %i.ph = fcmp uno double %i.pd, 0.000000e+00, !dbg !18363
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !18362
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind optsize memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvMsb_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10take_frontCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #5 !dbg !18364 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8, !dbg !18398
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18398
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18398 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18398
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !18398 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18398
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !18398 ; 3 uses
  store i64 0, ptr %1, align 8, !dbg !18399
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1, !dbg !18400
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !18400

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null, !dbg !18386
  br i1 %.not, label %bb.f, label %bb.e, !dbg !18401

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !18402
  br label %bb.d, !dbg !18403

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void, !dbg !18403

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8, !dbg !18404
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18404
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !18404
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18404
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8, !dbg !18404
  br label %bb.d, !dbg !18405

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0, !dbg !18406
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !18406

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.sroa.020.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %i.d, %.lr.ph ], !dbg !18407
  store ptr %.sroa.020.0.lcssa, ptr %0, align 8, !dbg !18408
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !18408
  br label %bb.d, !dbg !18409

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.020.023 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.5.sroa.5.0.copyload, %bb.f ]
  %.sroa.018.022 = phi i64 [ %i.e, %.lr.ph ], [ %.sroa.5.sroa.6.0.copyload, %bb.f ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.020.023, i64 544, !dbg !18410
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18411, !nonnull !534, !noundef !534 ; 2 uses
  %i.e = add i64 %.sroa.018.022, -1, !dbg !18412  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !18406
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !18406
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #6 !dbg !18413 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !18427, !range !849, !noundef !534
  %i.b = trunc nuw i64 %i.a to i1, !dbg !18428    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !18428

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18427 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18427, !noundef !534
  %.not = icmp eq ptr %i.d, null, !dbg !18427
  br i1 %.not, label %bb.d, label %bb.c, !dbg !18428

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18429
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !18429
  ret ptr %.sroa.0.0, !dbg !18430

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18431 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18431
  %i.h = load i64, ptr %i.g, align 8, !dbg !18431, !noundef !534 ; 2 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !18432, !nonnull !534, !noundef !534 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !18433
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !18433

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0, %.lr.ph ], !dbg !18432
  store i64 1, ptr %0, align 8, !dbg !18434
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !18434
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !18434
  br label %bb.c, !dbg !18435

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0, %.lr.ph ], [ %.sroa.013.015, %bb.d ]
  %.sroa.011.016 = phi i64 [ %i.k, %.lr.ph ], [ %i.h, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544, !dbg !18436
  %i.k = add i64 %.sroa.011.016, -1, !dbg !18437  ; 2 uses
  %.sroa.013.0 = load ptr, ptr %i.j, align 8, !dbg !18432, !nonnull !534, !noundef !534 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !18433
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !18433
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #6 !dbg !18438 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !18452, !range !849, !noundef !534
  %i.b = trunc nuw i64 %i.a to i1, !dbg !18453    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !18453

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18452 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18452, !noundef !534
  %.not = icmp eq ptr %i.d, null, !dbg !18452
  br i1 %.not, label %bb.d, label %bb.c, !dbg !18453

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18454
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !18454
  ret ptr %.sroa.0.0, !dbg !18455

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18456 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18456
  %i.h = load i64, ptr %i.g, align 8, !dbg !18456, !noundef !534 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !30928
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30928
  store ptr %i.al, ptr %i.bg, align 8, !dbg !30928
  store i8 29, ptr %0, align 16, !dbg !30928
  br label %bb.aj, !dbg !30857

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !30855
  unreachable, !dbg !30855
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsk_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB5_15StrptimeOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !30929 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30964
  %i.b = load i8, ptr %i.a, align 8, !dbg !30964, !range !659, !noundef !534
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30964
  %i.d = load i8, ptr %i.c, align 8, !dbg !30964, !range !659, !noundef !534
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !30964
  br i1 %i.e, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30964

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25, !dbg !30965
  %i.g = load i8, ptr %i.f, align 1, !dbg !30965, !range !659, !noundef !534
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25, !dbg !30965
  %i.i = load i8, ptr %i.h, align 1, !dbg !30965, !range !659, !noundef !534
  %i.j = icmp eq i8 %i.g, %i.i, !dbg !30965
  br i1 %i.j, label %bb.c, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30965

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26, !dbg !30966
  %i.l = load i8, ptr %i.k, align 2, !dbg !30966, !range !659, !noundef !534
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !30966
  %i.n = load i8, ptr %i.m, align 2, !dbg !30966, !range !659, !noundef !534
  %i.o = icmp eq i8 %i.l, %i.n, !dbg !30966
  br i1 %i.o, label %bb.d, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30966

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !30967
  %i.q = load i8, ptr %i.p, align 1, !dbg !30967, !range !718, !noundef !534 ; 3 uses
  %.not = icmp eq i8 %i.q, -38, !dbg !30967       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !30967
  %i.s = load i8, ptr %i.r, align 1, !dbg !30967, !range !718, !noundef !534 ; 3 uses
  %i.t = icmp eq i8 %i.s, -38, !dbg !30967        ; 2 uses
  %brmerge = or i1 %.not, %i.t, !dbg !30968
  %.mux = and i1 %.not, %i.t, !dbg !30968
  br i1 %brmerge, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.e, !dbg !30968

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.j, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.d ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6 ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ah, %bb.j ]
  ret i1 %.sroa.0.0.shrunk, !dbg !30969

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i8 %i.q, -41, !dbg !30970
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !30970

bb.f:                                             ; preds = %bb.e
  %i.v = add i8 %i.q, 64, !dbg !30971
  %i.w = tail call i8 @llvm.umin.i8(i8 %i.v, i8 24), !dbg !30972
  %.sroa.0.0.i.i = zext nneg i8 %i.w to i64, !dbg !30972
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !30973

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !dbg !30974, !alias.scope !30961, !noalias !30962, !noundef !534
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30975
  %i.z = load i64, ptr %i.y, align 8, !dbg !30975, !alias.scope !30961, !noalias !30962, !noundef !534
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !30976

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ], !dbg !30977 ; 2 uses
  %.sroa.0.0.i2 = phi ptr [ %i.x, %bb.g ], [ %0, %bb.f ], !dbg !30978
  %i.aa = icmp ugt i8 %i.s, -41, !dbg !30979
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !30979

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ab = add i8 %i.s, 64, !dbg !30980
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 24), !dbg !30981
  %.sroa.0.0.i.i3 = zext nneg i8 %i.ac to i64, !dbg !30981
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !30982

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ad = load ptr, ptr %1, align 8, !dbg !30983, !alias.scope !30963, !noundef !534
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30984
  %i.af = load i64, ptr %i.ae, align 8, !dbg !30984, !alias.scope !30963, !noundef !534
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !30985

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i4 = phi i64 [ %i.af, %bb.i ], [ %.sroa.0.0.i.i3, %bb.h ], !dbg !30986
  %.sroa.0.0.i5 = phi ptr [ %i.ad, %bb.i ], [ %1, %bb.h ], !dbg !30987
  %i.ag = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i4, !dbg !30988
  br i1 %i.ag, label %bb.j, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30988

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i2, ptr %.sroa.0.0.i5, i64 %.sroa.01.0.i), !dbg !30989
  %i.ah = icmp eq i32 %bcmp.i, 0, !dbg !30989
  br label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !30990
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3opsNtB5_16FillNullStrategyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #14 !dbg !30991 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !31011, !range !31002, !noundef !534 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !dbg !31012, !range !31002, !noundef !534
  %i.c = icmp eq i32 %i.a, %i.b, !dbg !31013
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !31013

bb.b:                                             ; preds = %bb.i, %bb.f, %bb.c, %bb.a, %bb.j, %bb.k, %bb.g, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.v, %bb.h ], [ true, %bb.c ], [ %i.r, %bb.g ], [ %i.aa, %bb.k ], [ false, %bb.f ], [ %i.w, %bb.j ], [ false, %bb.i ], !dbg !31014
  ret i1 %.sroa.0.0, !dbg !31015

bb.c:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ], !dbg !31013

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !31016
  %i.e = load i32, ptr %i.d, align 4, !dbg !31016, !range !848, !noundef !534
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31016
  %i.g = trunc nuw i32 %i.e to i1, !dbg !31017
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !31016
  %i.i = load i32, ptr %i.h, align 4, !dbg !31016, !range !848, !noundef !534
  %i.j = trunc nuw i32 %i.i to i1, !dbg !31017    ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g, !dbg !31017

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !31018
  %i.l = load i32, ptr %i.k, align 4, !dbg !31018, !range !848, !noundef !534
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31018
  %i.n = trunc nuw i32 %i.l to i1, !dbg !31019
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !31018
  %i.p = load i32, ptr %i.o, align 4, !dbg !31018, !range !848, !noundef !534
  %i.q = trunc nuw i32 %i.p to i1, !dbg !31019    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j, !dbg !31019

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.h, label %bb.b, !dbg !31017

bb.g:                                             ; preds = %bb.d
  %i.r = xor i1 %i.j, true, !dbg !31017
  br label %bb.b, !dbg !31017

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31016
  %i.t = load i32, ptr %i.f, align 4, !dbg !31020, !noundef !534
  %i.u = load i32, ptr %i.s, align 4, !dbg !31021, !noundef !534
  %i.v = icmp eq i32 %i.t, %i.u, !dbg !31020
  br label %bb.b, !dbg !31022

bb.i:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.k, label %bb.b, !dbg !31019

bb.j:                                             ; preds = %bb.e
  %i.w = xor i1 %i.q, true, !dbg !31019
  br label %bb.b, !dbg !31019

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31018
  %i.y = load i32, ptr %i.m, align 4, !dbg !31023, !noundef !534
  %i.z = load i32, ptr %i.x, align 4, !dbg !31024, !noundef !534
  %i.aa = icmp eq i32 %i.y, %i.z, !dbg !31023
  br label %bb.b, !dbg !31025
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !31026 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31042
  %i.b = load ptr, ptr %i.a, align 8, !dbg !31042, !nonnull !534, !noundef !534
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31043
  %i.d = load i64, ptr %i.c, align 8, !dbg !31043, !noundef !534
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !31044
  ret i1 %i.e, !dbg !31045
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_15FunctionOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #14 !dbg !31046 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !31088
  %i.b = load i8, ptr %i.a, align 2, !dbg !31088, !range !659, !noundef !534
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !31088
  %i.d = load i8, ptr %i.c, align 2, !dbg !31088, !range !659, !noundef !534
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !31088
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !31066

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !31089
  %i.g = load i16, ptr %i.f, align 2, !dbg !31089, !noundef !534
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !31089
  %i.i = load i16, ptr %i.h, align 2, !dbg !31089, !noundef !534
  %i.j = icmp eq i16 %i.g, %i.i, !dbg !31089
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !31070

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 2, !dbg !31090, !range !802, !noundef !534 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !31090
  %.not = icmp eq i8 %i.k, 2, !dbg !31090
  %i.m = load i8, ptr %1, align 2, !dbg !31090, !range !802, !noundef !534 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !31091

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !31092

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !31090
  %i.o = icmp eq i8 %i.k, %i.m
  br i1 %i.o, label %bb.g, label %bb.d, !dbg !31091

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.m, 2, !dbg !31090
  br label %bb.d, !dbg !31091

bb.g:                                             ; preds = %bb.e
  %or.cond.not = icmp eq i8 %i.k, 0, !dbg !31093
  br i1 %or.cond.not, label %bb.d, label %bb.h, !dbg !31093

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.l, align 1, !dbg !31094, !noundef !534
  %i.r = load i8, ptr %i.n, align 1, !dbg !31094, !noundef !534
  %i.s = icmp eq i8 %i.q, %i.r, !dbg !31094
  br label %bb.d, !dbg !31093
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsy_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #2 !dbg !31095 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !31120, !range !724, !noundef !534 ; 3 uses
  %i.b = icmp ne i8 %i.a, 32, !dbg !31120
  tail call void @llvm.assume(i1 %i.b), !dbg !31120
  %i.c = add nsw i8 %i.a, -31, !dbg !31120
  %i.d = icmp samesign ugt i8 %i.a, 30, !dbg !31120
  %narrow = select i1 %i.d, i8 %i.c, i8 1, !dbg !31120 ; 2 uses
  %i.e = load i8, ptr %1, align 16, !dbg !31121, !range !724, !noundef !534 ; 3 uses
  %i.f = icmp ne i8 %i.e, 32, !dbg !31121
  tail call void @llvm.assume(i1 %i.f), !dbg !31121
  %i.g = add nsw i8 %i.e, -31, !dbg !31121
  %i.h = icmp samesign ugt i8 %i.e, 30, !dbg !31121
  %narrow2 = select i1 %i.h, i8 %i.g, i8 1, !dbg !31121
  %i.i = icmp eq i8 %narrow, %narrow2, !dbg !31122
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !31122

bb.b:                                             ; preds = %bb.a
  switch i8 %narrow, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ], !dbg !31122

bb.c:                                             ; preds = %bb.h, %bb.j, %bb.f, %bb.a, %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.e ], [ %i.z, %bb.i ], [ false, %bb.a ], [ %i.p, %bb.g ], [ %i.af, %bb.k ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.shrunk, !dbg !31123

bb.d:                                             ; preds = %bb.b
  unreachable, !dbg !31120

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31124
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31124
  %i.l = tail call noundef zeroext i1 @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB2_15DynLiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !31125
  br label %bb.c, !dbg !31125

bb.f:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !31119
  br i1 %i.m, label %bb.i, label %bb.c, !dbg !31119

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31126
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31126
  %i.p = tail call noundef zeroext i1 @_RNvXs5_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !dbg !31127
  br label %bb.c, !dbg !31127

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !31128
  %i.s = load i128, ptr %i.r, align 16, !dbg !31128, !noundef !534
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31128
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31128
  %i.v = load i128, ptr %i.u, align 16, !dbg !31128, !noundef !534
  %i.w = icmp eq i128 %i.s, %i.v, !dbg !31128
  br i1 %i.w, label %bb.j, label %bb.c, !dbg !31128

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !31119
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !31119
  %i.z = tail call fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.y) #37, !dbg !31129
  br label %bb.c, !dbg !31119

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !31128
  %i.ab = load i128, ptr %i.aa, align 16, !dbg !31128, !noundef !534
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !31128
  %i.ad = load i128, ptr %i.ac, align 16, !dbg !31128, !noundef !534
  %i.ae = icmp eq i128 %i.ab, %i.ad, !dbg !31128
  br i1 %i.ae, label %bb.k, label %bb.c, !dbg !31128

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t), !dbg !31128
  br label %bb.c, !dbg !31128
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
