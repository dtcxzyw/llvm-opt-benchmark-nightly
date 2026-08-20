inline.NumInlined: 3784
inline.NumDeleted: 1574
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2g_NtNvMs1_BR_IB22_pppE18get_or_insert_with5NeverNCINvB1U_18get_or_insert_withB2g_NCNvMBR_INtBR_13LruCachedFuncB2g_B2i_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5r_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2190 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2190, !noalias !2173
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2190 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2190, !noalias !2173
  %i.x = load i64, ptr %i.e, align 8, !dbg !2193, !alias.scope !2198, !noalias !2199, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !2200
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !2200

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !2206, !alias.scope !2198, !noalias !2199, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !2209
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !2217
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !2227
  br label %.preheader, !dbg !2200

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !2228
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !2242

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !2243 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !2246
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !2249
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !2256 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !2257    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !2228
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2242

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !2258, !alias.scope !2198, !noalias !2199
  br label %._crit_edge69, !dbg !2258

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !2258 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !2259
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2259, !noalias !2173
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2260, !noalias !2173
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !2261, !noalias !2187

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !2281, !noalias !2187
  unreachable, !dbg !2281

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !2282), !dbg !2185
  call void @llvm.experimental.noalias.scope.decl(metadata !2285), !dbg !2288, !noalias !2187
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2291, !alias.scope !2297, !noalias !2187 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2291, !alias.scope !2297, !noalias !2187, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2298), !dbg !2291, !noalias !2187
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !2301
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2301

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2306, !alias.scope !2307, !noalias !2187, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2306, !alias.scope !2307, !noalias !2187, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !2308
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !2315    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !2324
  %i.ap = add i64 %i.ao, %i.an, !dbg !2325        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !2325
  call void @llvm.assume(i1 %i.aq), !dbg !2328, !noalias !2187
  %i.ar = sub i64 0, %i.al, !dbg !2331
  %i.as = and i64 %i.ap, %i.ar, !dbg !2332        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !2333
  %i.au = add i64 %i.at, %i.as, !dbg !2335        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !2335
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !2337, !noalias !2187
  call void @llvm.assume(i1 %i.ax), !dbg !2337, !noalias !2187
  %i.ay = icmp ne i64 %i.al, 0, !dbg !2340
  call void @llvm.assume(i1 %i.ay), !dbg !2344, !noalias !2187
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !2187
  %i.az = icmp eq i64 %i.au, 0, !dbg !2345
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !2345

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !2355
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !2359
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !2360, !noalias !2367
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !2368

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2185, !noalias !2173
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !2186

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !2369 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2369 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2369
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !2370
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2380
  %i.be = zext nneg i16 %i.bd to i64, !dbg !2381
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !2382
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !2386 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !2387    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389), !dbg !2392
  %i.bi = load ptr, ptr %0, align 8, !dbg !2394, !alias.scope !2389, !noalias !2403, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !2405
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !2411 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !2412
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !2418, !range !2419, !noalias !2420, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !2418
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !2418, !noalias !2420, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc14 unwind label %bb.f, !dbg !2421

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !2429
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !2430 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !2431 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2437
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !2443, !noalias !2451
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2454
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !2454 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !2462
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2466, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !2431
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !2454
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2468
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !2473
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !2474
  %i.bw = and i64 %i.bv, %i.t, !dbg !2474         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !2476
  %i.by = load i8, ptr %i.bx, align 1, !dbg !2486, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !2487
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2487, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2492
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2495
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !2495 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !2500
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !2504
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !2504
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2505
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2508

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !2509           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !2513
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !2431 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !2437
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !2443, !noalias !2451
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2454
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !2454 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !2462
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2466, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !2515
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !2525 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !2527
  %i.cn = and i64 %i.cm, %i.t, !dbg !2532
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2533
  store i8 %i.cl, ptr %i.co, align 1, !dbg !2539, !noalias !2187
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !2540
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !2540
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !2544, !noalias !2187
  %i.cr = load ptr, ptr %0, align 8, !dbg !2545, !alias.scope !2198, !noalias !2199, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !2551
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !2551
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !2553
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2556
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !2556
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2559
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !2562, !noalias !2187
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !2562, !noalias !2187
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !2200
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !2200

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !2565

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566), !dbg !2569
  %.val11 = load ptr, ptr %0, align 8, !dbg !2570 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2573
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !2573

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !2589
  %i.cx = and i64 %i.l, 15, !dbg !2605
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !2607
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !2607
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !2607 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2573
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !2573
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !2573

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2573
  br label %bb.l, !dbg !2573

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2573
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !2573

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2573
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !2573
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2609 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !2615
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2618
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2626
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !2626
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !2630
  br label %._crit_edge.i19, !dbg !2636

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !2636
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2637, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2609 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !2615
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2618
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2626
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !2626
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !2630
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !2641  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2609
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !2609 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !2615
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2618
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2626
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !2626
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !2630
  %niter.next.1 = add i64 %niter, 2, !dbg !2573   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2573
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !2573

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2645

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2646
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2653, !noalias !2654
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2656
  store ptr null, ptr %i.dn, align 8, !dbg !2656, !noalias !2654
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2656
  store i64 8, ptr %i.do, align 8, !dbg !2656, !noalias !2654
  store ptr %0, ptr %i.a, align 8, !dbg !2656, !noalias !2654
  %i.dp = load i64, ptr %i.i, align 8, !dbg !2659, !alias.scope !2566, !noalias !2663, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !2664
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2674

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !2675
  %i.dr = load ptr, ptr %0, align 8, !dbg !2682, !noalias !2663, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !2686
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !2689, !noalias !2663, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !2689
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !2696

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !2675
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !2697
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !2701 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2704

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2706), !dbg !2709
  %i.dw = load ptr, ptr %0, align 8, !dbg !2710, !alias.scope !2706, !noalias !2714, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !2716 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !2719
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !2723, !range !2419, !noalias !2724, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !2723
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !2723, !noalias !2724, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc24 unwind label %bb.n, !dbg !2725

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !2727
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !2728 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !2729, !noalias !2663

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !2730, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2730, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !2732 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !2734
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !2737, !noalias !2741
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !2744
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !2744 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !2748
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !2750, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !2732
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !2744
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !2751
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !2754
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !2755
  %i.ek = and i64 %i.ej, %.val9, !dbg !2755       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !2756
  %i.em = load i8, ptr %i.el, align 1, !dbg !2761, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !2762
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !2762, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !2764
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !2766
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !2766 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !2769
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !2771
  %i.er = zext nneg i16 %i.eq to i64, !dbg !2771
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !2772
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !2774

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_date0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !2775           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !2777
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !2732 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !2734
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !2737, !noalias !2741
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !2744
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !2744 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !2748
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !2750, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !2778
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !2789
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !2793
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !2793
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !2793
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !2794, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !2797
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !2802 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !2804
  %i.ff = and i64 %.val9, %i.fe, !dbg !2808
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !2809
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !2814, !noalias !2663
  %i.fh = load ptr, ptr %0, align 8, !dbg !2815, !noalias !2663, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !2817
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !2817
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !2820, !noalias !2663
  br label %bb.s, !dbg !2821

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !2823
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !2823
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2826 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !2829 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !2836, !noalias !2663, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !2837
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !2842 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !2844
  %i.fq = and i64 %i.fp, %.val9, !dbg !2848
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !2849, !noalias !2663
  %i.fr = load ptr, ptr %0, align 8, !dbg !2851, !noalias !2663, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !2854
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !2854
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !2857, !noalias !2663
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !2858
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !2858

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !2860
  %i.fw = load i64, ptr %i.i, align 8, !dbg !2864, !noalias !2663, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !2865
  %i.fy = load ptr, ptr %0, align 8, !dbg !2866, !noalias !2663, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !2870
  store i8 -1, ptr %i.fz, align 1, !dbg !2873, !noalias !2663
  %i.ga = load ptr, ptr %0, align 8, !dbg !2874, !noalias !2663, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !2876
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !2876
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2g_NtNvMs1_BR_IB22_pppE18get_or_insert_with5NeverNCINvB1U_18get_or_insert_withB2g_NCNvMBR_INtBR_13LruCachedFuncB2g_B2i_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5r_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2955 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2955, !noalias !2940
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2955 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2955, !noalias !2940
  %i.x = load i64, ptr %i.e, align 8, !dbg !2956, !alias.scope !2958, !noalias !2959, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !2960
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !2960

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !2962, !alias.scope !2958, !noalias !2959, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !2964
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !2966
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !2970
  br label %.preheader, !dbg !2960

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !2971
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !2975

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !2976 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !2978
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !2980
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !2984 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !2985    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !2971
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2975

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !2986, !alias.scope !2958, !noalias !2959
  br label %._crit_edge69, !dbg !2986

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !2986 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !2987
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2987, !noalias !2940
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2988, !noalias !2940
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !2989, !noalias !2952

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !2995, !noalias !2952
  unreachable, !dbg !2995

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !2996), !dbg !2950
  call void @llvm.experimental.noalias.scope.decl(metadata !2999), !dbg !3002, !noalias !2952
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3004, !alias.scope !3006, !noalias !2952 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3004, !alias.scope !3006, !noalias !2952, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3007), !dbg !3004, !noalias !2952
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !3010
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3010

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3012, !alias.scope !3013, !noalias !2952, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3012, !alias.scope !3013, !noalias !2952, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !3014
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !3018    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !3022
  %i.ap = add i64 %i.ao, %i.an, !dbg !3023        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !3023
  call void @llvm.assume(i1 %i.aq), !dbg !3025, !noalias !2952
  %i.ar = sub i64 0, %i.al, !dbg !3027
  %i.as = and i64 %i.ap, %i.ar, !dbg !3028        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !3029
  %i.au = add i64 %i.at, %i.as, !dbg !3030        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !3030
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !3032, !noalias !2952
  call void @llvm.assume(i1 %i.ax), !dbg !3032, !noalias !2952
  %i.ay = icmp ne i64 %i.al, 0, !dbg !3034
  call void @llvm.assume(i1 %i.ay), !dbg !3036, !noalias !2952
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !2952
  %i.az = icmp eq i64 %i.au, 0, !dbg !3037
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !3037

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !3039
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !3041
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !3042, !noalias !3045
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !3046

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2950, !noalias !2940
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !2951

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !3047 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3047 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !3047
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !3048
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3052
  %i.be = zext nneg i16 %i.bd to i64, !dbg !3053
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !3054
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !3056 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !3057    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3058), !dbg !3061
  %i.bi = load ptr, ptr %0, align 8, !dbg !3062, !alias.scope !3058, !noalias !3069, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !3071
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !3076 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !3077
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !3083, !range !2419, !noalias !3084, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !3083
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !3083, !noalias !3084, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc14 unwind label %bb.f, !dbg !3085

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !3088
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !3089 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !3090 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3093
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !3096, !noalias !3100
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3103
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !3103 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !3107
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3109, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !3090
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !3103
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3110
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !3113
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !3114
  %i.bw = and i64 %i.bv, %i.t, !dbg !3114         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !3115
  %i.by = load i8, ptr %i.bx, align 1, !dbg !3120, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !3121
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3121, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3123
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !3125
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !3125 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !3128
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !3130
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !3130
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3131
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3133

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !3134           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !3136
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !3090 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !3093
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !3096, !noalias !3100
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3103
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !3103 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !3107
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3109, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !3137
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !3140 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !3141
  %i.cn = and i64 %i.cm, %i.t, !dbg !3144
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3145
  store i8 %i.cl, ptr %i.co, align 1, !dbg !3148, !noalias !2952
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !3149
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !3149
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !3152, !noalias !2952
  %i.cr = load ptr, ptr %0, align 8, !dbg !3153, !alias.scope !2958, !noalias !2959, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !3156
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !3156
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !3157
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3159
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !3159
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3161
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !3163, !noalias !2952
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !3163, !noalias !2952
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !2960
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !2960

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !3165

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3166), !dbg !3169
  %.val11 = load ptr, ptr %0, align 8, !dbg !3170 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3172
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !3172

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !3176
  %i.cx = and i64 %i.l, 15, !dbg !3181
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !3182
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !3182
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !3182 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !3172
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !3172
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !3172

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !3172
  br label %bb.l, !dbg !3172

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3172
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !3172

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !3172
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !3172
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3183 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !3186
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3188
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3191
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !3191
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !3193
  br label %._crit_edge.i19, !dbg !3196

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !3196
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3197, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3183 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !3186
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3188
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3191
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !3191
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !3193
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !3199  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3183
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !3183 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !3186
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3188
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3191
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !3191
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !3193
  %niter.next.1 = add i64 %niter, 2, !dbg !3172   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3172
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !3172

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3201

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3202
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3207, !noalias !3208
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3210
  store ptr null, ptr %i.dn, align 8, !dbg !3210, !noalias !3208
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3210
  store i64 8, ptr %i.do, align 8, !dbg !3210, !noalias !3208
  store ptr %0, ptr %i.a, align 8, !dbg !3210, !noalias !3208
  %i.dp = load i64, ptr %i.i, align 8, !dbg !3212, !alias.scope !3166, !noalias !3214, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !3215
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3219

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !3220
  %i.dr = load ptr, ptr %0, align 8, !dbg !3223, !noalias !3214, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !3225
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !3227, !noalias !3214, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !3227
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !3230

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !3220
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !3231
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !3233 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3235

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3236), !dbg !3239
  %i.dw = load ptr, ptr %0, align 8, !dbg !3240, !alias.scope !3236, !noalias !3244, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !3246 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !3249
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !3253, !range !2419, !noalias !3254, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !3253
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !3253, !noalias !3254, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc24 unwind label %bb.n, !dbg !3255

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !3257
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !3258 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !3259, !noalias !3214

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !3260, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3260, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !3261 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !3263
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !3266, !noalias !3270
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !3273
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !3273 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !3277
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !3279, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !3261
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !3273
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !3280
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !3283
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !3284
  %i.ek = and i64 %i.ej, %.val9, !dbg !3284       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !3285
  %i.em = load i8, ptr %i.el, align 1, !dbg !3290, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !3291
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !3291, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !3293
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !3295
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !3295 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !3298
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !3300
  %i.er = zext nneg i16 %i.eq to i64, !dbg !3300
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !3301
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !3303

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_dates0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !3304           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !3306
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !3261 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !3263
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !3266, !noalias !3270
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !3273
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !3273 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !3277
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !3279, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !3307
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !3311
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !3314
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !3314
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !3314
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !3315, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !3317
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !3320 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !3321
  %i.ff = and i64 %.val9, %i.fe, !dbg !3324
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !3325
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !3328, !noalias !3214
  %i.fh = load ptr, ptr %0, align 8, !dbg !3329, !noalias !3214, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !3331
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !3331
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !3333, !noalias !3214
  br label %bb.s, !dbg !3334

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !3335
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !3335
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3337 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !3339 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !3343, !noalias !3214, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !3344
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !3347 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !3348
  %i.fq = and i64 %i.fp, %.val9, !dbg !3351
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !3352, !noalias !3214
  %i.fr = load ptr, ptr %0, align 8, !dbg !3353, !noalias !3214, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !3355
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !3355
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !3357, !noalias !3214
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !3358
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !3358

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !3359
  %i.fw = load i64, ptr %i.i, align 8, !dbg !3362, !noalias !3214, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !3363
  %i.fy = load ptr, ptr %0, align 8, !dbg !3364, !noalias !3214, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !3366
  store i8 -1, ptr %i.fz, align 1, !dbg !3368, !noalias !3214
  %i.ga = load ptr, ptr %0, align 8, !dbg !3369, !noalias !3214, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !3371
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !3371
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2g_NtNvMs1_BR_IB22_pppE18get_or_insert_with5NeverNCINvB1U_18get_or_insert_withB2g_NCNvMBR_INtBR_13LruCachedFuncB2g_B2i_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5r_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3439 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3439, !noalias !3424
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3439 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3439, !noalias !3424
  %i.x = load i64, ptr %i.e, align 8, !dbg !3440, !alias.scope !3442, !noalias !3443, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !3444
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !3444

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !3446, !alias.scope !3442, !noalias !3443, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !3448
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !3450
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !3454
  br label %.preheader, !dbg !3444

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !3455
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !3459

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !3460 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !3462
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !3464
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !3468 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !3469    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !3455
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3459

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !3470, !alias.scope !3442, !noalias !3443
  br label %._crit_edge69, !dbg !3470

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !3470 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !3471
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3471, !noalias !3424
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3472, !noalias !3424
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !3473, !noalias !3436

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !3479, !noalias !3436
  unreachable, !dbg !3479

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !3480), !dbg !3434
  call void @llvm.experimental.noalias.scope.decl(metadata !3483), !dbg !3486, !noalias !3436
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3488, !alias.scope !3490, !noalias !3436 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3488, !alias.scope !3490, !noalias !3436, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3491), !dbg !3488, !noalias !3436
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !3494
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3494

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3496, !alias.scope !3497, !noalias !3436, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3496, !alias.scope !3497, !noalias !3436, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !3498
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !3502    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !3506
  %i.ap = add i64 %i.ao, %i.an, !dbg !3507        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !3507
  call void @llvm.assume(i1 %i.aq), !dbg !3509, !noalias !3436
  %i.ar = sub i64 0, %i.al, !dbg !3511
  %i.as = and i64 %i.ap, %i.ar, !dbg !3512        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !3513
  %i.au = add i64 %i.at, %i.as, !dbg !3514        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !3514
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !3516, !noalias !3436
  call void @llvm.assume(i1 %i.ax), !dbg !3516, !noalias !3436
  %i.ay = icmp ne i64 %i.al, 0, !dbg !3518
  call void @llvm.assume(i1 %i.ay), !dbg !3520, !noalias !3436
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !3436
  %i.az = icmp eq i64 %i.au, 0, !dbg !3521
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !3521

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !3523
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !3525
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !3526, !noalias !3529
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !3530

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3434, !noalias !3424
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !3435

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !3531 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3531 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !3531
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !3532
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3536
  %i.be = zext nneg i16 %i.bd to i64, !dbg !3537
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !3538
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !3540 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !3541    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3542), !dbg !3545
  %i.bi = load ptr, ptr %0, align 8, !dbg !3546, !alias.scope !3542, !noalias !3553, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !3555
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !3560 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !3561
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !3567, !range !2419, !noalias !3568, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !3567
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !3567, !noalias !3568, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc14 unwind label %bb.f, !dbg !3569

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !3572
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !3573 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !3574 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3577
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !3580, !noalias !3584
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3587
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !3587 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !3591
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3593, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !3574
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !3587
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3594
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !3597
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !3598
  %i.bw = and i64 %i.bv, %i.t, !dbg !3598         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !3599
  %i.by = load i8, ptr %i.bx, align 1, !dbg !3604, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !3605
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3605, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3607
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !3609
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !3609 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !3612
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !3614
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !3614
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3615
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3617

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !3618           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !3620
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !3574 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !3577
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !3580, !noalias !3584
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3587
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !3587 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !3591
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3593, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !3621
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !3624 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !3625
  %i.cn = and i64 %i.cm, %i.t, !dbg !3628
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3629
  store i8 %i.cl, ptr %i.co, align 1, !dbg !3632, !noalias !3436
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !3633
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !3633
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !3636, !noalias !3436
  %i.cr = load ptr, ptr %0, align 8, !dbg !3637, !alias.scope !3442, !noalias !3443, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !3640
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !3640
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !3641
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3643
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !3643
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3645
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !3647, !noalias !3436
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !3647, !noalias !3436
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !3444
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !3444

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !3649

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3650), !dbg !3653
  %.val11 = load ptr, ptr %0, align 8, !dbg !3654 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3656
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !3656

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !3660
  %i.cx = and i64 %i.l, 15, !dbg !3665
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !3666
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !3666
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !3666 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !3656
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !3656
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !3656

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !3656
  br label %bb.l, !dbg !3656

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3656
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !3656

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !3656
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !3656
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3667 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !3670
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3672
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3675
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !3675
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !3677
  br label %._crit_edge.i19, !dbg !3680

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !3680
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3681, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3667 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !3670
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3672
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3675
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !3675
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !3677
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !3683  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3667
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !3667 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !3670
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3672
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3675
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !3675
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !3677
  %niter.next.1 = add i64 %niter, 2, !dbg !3656   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3656
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !3656

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3685

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3686
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3691, !noalias !3692
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3694
  store ptr null, ptr %i.dn, align 8, !dbg !3694, !noalias !3692
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3694
  store i64 8, ptr %i.do, align 8, !dbg !3694, !noalias !3692
  store ptr %0, ptr %i.a, align 8, !dbg !3694, !noalias !3692
  %i.dp = load i64, ptr %i.i, align 8, !dbg !3696, !alias.scope !3650, !noalias !3698, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !3699
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3703

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !3704
  %i.dr = load ptr, ptr %0, align 8, !dbg !3707, !noalias !3698, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !3709
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !3711, !noalias !3698, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !3711
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !3714

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !3704
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !3715
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !3717 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3719

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3720), !dbg !3723
  %i.dw = load ptr, ptr %0, align 8, !dbg !3724, !alias.scope !3720, !noalias !3728, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !3730 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !3733
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !3737, !range !2419, !noalias !3738, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !3737
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !3737, !noalias !3738, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc24 unwind label %bb.n, !dbg !3739

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !3741
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !3742 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !3743, !noalias !3698

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !3744, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3744, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !3745 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !3747
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !3750, !noalias !3754
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !3757
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !3757 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !3761
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !3763, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !3745
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !3757
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !3764
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !3767
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !3768
  %i.ek = and i64 %i.ej, %.val9, !dbg !3768       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !3769
  %i.em = load i8, ptr %i.el, align 1, !dbg !3774, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !3775
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !3775, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !3777
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !3779
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !3779 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !3782
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !3784
  %i.er = zext nneg i16 %i.eq to i64, !dbg !3784
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !3785
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !3787

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetime0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !3788           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !3790
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !3745 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !3747
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !3750, !noalias !3754
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !3757
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !3757 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !3761
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !3763, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !3791
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !3795
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !3798
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !3798
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !3798
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !3799, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !3801
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !3804 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !3805
  %i.ff = and i64 %.val9, %i.fe, !dbg !3808
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !3809
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !3812, !noalias !3698
  %i.fh = load ptr, ptr %0, align 8, !dbg !3813, !noalias !3698, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !3815
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !3815
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !3817, !noalias !3698
  br label %bb.s, !dbg !3818

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !3819
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !3819
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3821 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !3823 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !3827, !noalias !3698, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !3828
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !3831 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !3832
  %i.fq = and i64 %i.fp, %.val9, !dbg !3835
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !3836, !noalias !3698
  %i.fr = load ptr, ptr %0, align 8, !dbg !3837, !noalias !3698, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !3839
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !3839
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !3841, !noalias !3698
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !3842
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !3842

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !3843
  %i.fw = load i64, ptr %i.i, align 8, !dbg !3846, !noalias !3698, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !3847
  %i.fy = load ptr, ptr %0, align 8, !dbg !3848, !noalias !3698, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !3850
  store i8 -1, ptr %i.fz, align 1, !dbg !3852, !noalias !3698
  %i.ga = load ptr, ptr %0, align 8, !dbg !3853, !noalias !3698, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !3855
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !3855
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2g_NtNvMs1_BR_IB22_pppE18get_or_insert_with5NeverNCINvB1U_18get_or_insert_withB2g_NCNvMBR_INtBR_13LruCachedFuncB2g_B2i_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5r_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3923 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3923, !noalias !3908
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3923 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3923, !noalias !3908
  %i.x = load i64, ptr %i.e, align 8, !dbg !3924, !alias.scope !3926, !noalias !3927, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !3928
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !3928

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !3930, !alias.scope !3926, !noalias !3927, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !3932
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !3934
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !3938
  br label %.preheader, !dbg !3928

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !3939
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !3943

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !3944 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !3946
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !3948
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !3952 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !3953    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !3939
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3943

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !3954, !alias.scope !3926, !noalias !3927
  br label %._crit_edge69, !dbg !3954

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !3954 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !3955
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3955, !noalias !3908
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3956, !noalias !3908
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !3957, !noalias !3920

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !3963, !noalias !3920
  unreachable, !dbg !3963

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !3964), !dbg !3918
  call void @llvm.experimental.noalias.scope.decl(metadata !3967), !dbg !3970, !noalias !3920
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3972, !alias.scope !3974, !noalias !3920 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3972, !alias.scope !3974, !noalias !3920, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3975), !dbg !3972, !noalias !3920
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !3978
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3978

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3980, !alias.scope !3981, !noalias !3920, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3980, !alias.scope !3981, !noalias !3920, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !3982
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !3986    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !3990
  %i.ap = add i64 %i.ao, %i.an, !dbg !3991        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !3991
  call void @llvm.assume(i1 %i.aq), !dbg !3993, !noalias !3920
  %i.ar = sub i64 0, %i.al, !dbg !3995
  %i.as = and i64 %i.ap, %i.ar, !dbg !3996        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !3997
  %i.au = add i64 %i.at, %i.as, !dbg !3998        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !3998
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !4000, !noalias !3920
  call void @llvm.assume(i1 %i.ax), !dbg !4000, !noalias !3920
  %i.ay = icmp ne i64 %i.al, 0, !dbg !4002
  call void @llvm.assume(i1 %i.ay), !dbg !4004, !noalias !3920
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !3920
  %i.az = icmp eq i64 %i.au, 0, !dbg !4005
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !4005

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !4007
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !4009
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !4010, !noalias !4013
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !4014

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3918, !noalias !3908
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !3919

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !4015 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4015 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !4015
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !4016
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4020
  %i.be = zext nneg i16 %i.bd to i64, !dbg !4021
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !4022
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !4024 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !4025    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026), !dbg !4029
  %i.bi = load ptr, ptr %0, align 8, !dbg !4030, !alias.scope !4026, !noalias !4037, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !4039
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !4044 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !4045
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !4051, !range !2419, !noalias !4052, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !4051
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !4051, !noalias !4052, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc14 unwind label %bb.f, !dbg !4053

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !4056
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !4057 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !4058 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4061
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !4064, !noalias !4068
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4071
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !4071 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !4075
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4077, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !4058
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !4071
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4078
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !4081
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !4082
  %i.bw = and i64 %i.bv, %i.t, !dbg !4082         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !4083
  %i.by = load i8, ptr %i.bx, align 1, !dbg !4088, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !4089
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4089, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4091
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !4093
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !4093 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !4096
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !4098
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !4098
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4099
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4101

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !4102           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !4104
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !4058 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !4061
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !4064, !noalias !4068
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4071
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !4071 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !4075
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4077, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !4105
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !4108 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !4109
  %i.cn = and i64 %i.cm, %i.t, !dbg !4112
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4113
  store i8 %i.cl, ptr %i.co, align 1, !dbg !4116, !noalias !3920
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !4117
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !4117
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !4120, !noalias !3920
  %i.cr = load ptr, ptr %0, align 8, !dbg !4121, !alias.scope !3926, !noalias !3927, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !4124
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !4124
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !4125
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4127
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !4127
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4129
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !4131, !noalias !3920
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !4131, !noalias !3920
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !3928
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !3928

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !4133

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4134), !dbg !4137
  %.val11 = load ptr, ptr %0, align 8, !dbg !4138 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4140
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !4140

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !4144
  %i.cx = and i64 %i.l, 15, !dbg !4149
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !4150
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !4150
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !4150 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !4140
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !4140
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !4140

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !4140
  br label %bb.l, !dbg !4140

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4140
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !4140

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !4140
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !4140
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !4151 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !4154
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !4156
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !4159
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !4159
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !4161
  br label %._crit_edge.i19, !dbg !4164

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !4164
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4165, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4151 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !4154
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4156
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4159
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !4159
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !4161
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !4167  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4151
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !4151 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !4154
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !4156
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !4159
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !4159
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !4161
  %niter.next.1 = add i64 %niter, 2, !dbg !4140   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !4140
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !4140

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4169

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4170
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4175, !noalias !4176
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4178
  store ptr null, ptr %i.dn, align 8, !dbg !4178, !noalias !4176
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4178
  store i64 8, ptr %i.do, align 8, !dbg !4178, !noalias !4176
  store ptr %0, ptr %i.a, align 8, !dbg !4178, !noalias !4176
  %i.dp = load i64, ptr %i.i, align 8, !dbg !4180, !alias.scope !4134, !noalias !4182, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !4183
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4187

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !4188
  %i.dr = load ptr, ptr %0, align 8, !dbg !4191, !noalias !4182, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !4193
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !4195, !noalias !4182, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !4195
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !4198

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !4188
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !4199
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !4201 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4203

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4204), !dbg !4207
  %i.dw = load ptr, ptr %0, align 8, !dbg !4208, !alias.scope !4204, !noalias !4212, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !4214 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !4217
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !4221, !range !2419, !noalias !4222, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !4221
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !4221, !noalias !4222, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc24 unwind label %bb.n, !dbg !4223

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !4225
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !4226 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !4227, !noalias !4182

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !4228, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4228, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !4229 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !4231
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !4234, !noalias !4238
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !4241
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !4241 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !4245
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !4247, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !4229
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !4241
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !4248
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !4251
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !4252
  %i.ek = and i64 %i.ej, %.val9, !dbg !4252       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !4253
  %i.em = load i8, ptr %i.el, align 1, !dbg !4258, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !4259
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !4259, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !4261
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !4263
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !4263 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !4266
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !4268
  %i.er = zext nneg i16 %i.eq to i64, !dbg !4268
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !4269
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !4271

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes0_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !4272           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !4274
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !4229 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !4231
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !4234, !noalias !4238
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !4241
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !4241 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !4245
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !4247, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !4275
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !4279
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !4282
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !4282
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !4282
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !4283, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !4285
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !4288 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !4289
  %i.ff = and i64 %.val9, %i.fe, !dbg !4292
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !4293
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !4296, !noalias !4182
  %i.fh = load ptr, ptr %0, align 8, !dbg !4297, !noalias !4182, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !4299
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !4299
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !4301, !noalias !4182
  br label %bb.s, !dbg !4302

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !4303
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !4303
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !4305 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !4307 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !4311, !noalias !4182, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !4312
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !4315 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !4316
  %i.fq = and i64 %i.fp, %.val9, !dbg !4319
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !4320, !noalias !4182
  %i.fr = load ptr, ptr %0, align 8, !dbg !4321, !noalias !4182, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !4323
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !4323
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !4325, !noalias !4182
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !4326
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !4326

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !4327
  %i.fw = load i64, ptr %i.i, align 8, !dbg !4330, !noalias !4182, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !4331
  %i.fy = load ptr, ptr %0, align 8, !dbg !4332, !noalias !4182, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !4334
  store i8 -1, ptr %i.fz, align 1, !dbg !4336, !noalias !4182
  %i.ga = load ptr, ptr %0, align 8, !dbg !4337, !noalias !4182, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !4339
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !4339
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2g_NtNvMs1_BR_IB22_pppE18get_or_insert_with5NeverNCINvB1U_18get_or_insert_withB2g_NCNvMBR_INtBR_13LruCachedFuncB2g_B2i_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5r_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4407 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4407, !noalias !4392
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !4407 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4407, !noalias !4392
  %i.x = load i64, ptr %i.e, align 8, !dbg !4408, !alias.scope !4410, !noalias !4411, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !4412
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !4412

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !4414, !alias.scope !4410, !noalias !4411, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !4416
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !4418
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !4422
  br label %.preheader, !dbg !4412

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !4423
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !4427

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !4428 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !4430
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !4432
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !4436 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !4437    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !4423
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !4427

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !4438, !alias.scope !4410, !noalias !4411
  br label %._crit_edge69, !dbg !4438

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !4438 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !4439
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4439, !noalias !4392
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4440, !noalias !4392
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !4441, !noalias !4404

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !4447, !noalias !4404
  unreachable, !dbg !4447

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !4448), !dbg !4402
  call void @llvm.experimental.noalias.scope.decl(metadata !4451), !dbg !4454, !noalias !4404
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !4456, !alias.scope !4458, !noalias !4404 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4456, !alias.scope !4458, !noalias !4404, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4459), !dbg !4456, !noalias !4404
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !4462
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !4462

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4464, !alias.scope !4465, !noalias !4404, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4464, !alias.scope !4465, !noalias !4404, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !4466
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !4470    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !4474
  %i.ap = add i64 %i.ao, %i.an, !dbg !4475        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !4475
  call void @llvm.assume(i1 %i.aq), !dbg !4477, !noalias !4404
  %i.ar = sub i64 0, %i.al, !dbg !4479
  %i.as = and i64 %i.ap, %i.ar, !dbg !4480        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !4481
  %i.au = add i64 %i.at, %i.as, !dbg !4482        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !4482
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !4484, !noalias !4404
  call void @llvm.assume(i1 %i.ax), !dbg !4484, !noalias !4404
  %i.ay = icmp ne i64 %i.al, 0, !dbg !4486
  call void @llvm.assume(i1 %i.ay), !dbg !4488, !noalias !4404
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !4404
  %i.az = icmp eq i64 %i.au, 0, !dbg !4489
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !4489

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !4491
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !4493
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !4494, !noalias !4497
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !4498

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4402, !noalias !4392
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !4403

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !4499 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4499 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !4499
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !4500
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4504
  %i.be = zext nneg i16 %i.bd to i64, !dbg !4505
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !4506
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !4508 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !4509    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4510), !dbg !4513
  %i.bi = load ptr, ptr %0, align 8, !dbg !4514, !alias.scope !4510, !noalias !4521, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !4523
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !4528 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !4529
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !4535, !range !2419, !noalias !4536, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !4535
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !4535, !noalias !4536, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc14 unwind label %bb.f, !dbg !4537

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !4540
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !4541 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !4542 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4545
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !4548, !noalias !4552
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4555
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !4555 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !4559
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4561, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !4542
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !4555
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4562
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !4565
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !4566
  %i.bw = and i64 %i.bv, %i.t, !dbg !4566         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !4567
  %i.by = load i8, ptr %i.bx, align 1, !dbg !4572, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !4573
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4573, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4575
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !4577
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !4577 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !4580
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !4582
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !4582
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4583
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4585

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !4586           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !4588
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !4542 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !4545
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !4548, !noalias !4552
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4555
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !4555 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !4559
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4561, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !4589
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !4592 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !4593
  %i.cn = and i64 %i.cm, %i.t, !dbg !4596
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4597
  store i8 %i.cl, ptr %i.co, align 1, !dbg !4600, !noalias !4404
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !4601
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !4601
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !4604, !noalias !4404
  %i.cr = load ptr, ptr %0, align 8, !dbg !4605, !alias.scope !4410, !noalias !4411, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !4608
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !4608
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !4609
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4611
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !4611
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4613
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !4615, !noalias !4404
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !4615, !noalias !4404
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !4412
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !4412

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !4617

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4618), !dbg !4621
  %.val11 = load ptr, ptr %0, align 8, !dbg !4622 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4624
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !4624

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !4628
  %i.cx = and i64 %i.l, 15, !dbg !4633
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !4634
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !4634
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !4634 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !4624
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !4624
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !4624

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !4624
  br label %bb.l, !dbg !4624

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4624
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !4624

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !4624
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !4624
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !4635 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !4638
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !4640
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !4643
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !4643
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !4645
  br label %._crit_edge.i19, !dbg !4648

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !4648
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4649, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4635 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !4638
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4640
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4643
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !4643
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !4645
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !4651  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4635
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !4635 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !4638
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !4640
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !4643
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !4643
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !4645
  %niter.next.1 = add i64 %niter, 2, !dbg !4624   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !4624
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !4624

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4653

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4654
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4659, !noalias !4660
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4662
  store ptr null, ptr %i.dn, align 8, !dbg !4662, !noalias !4660
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4662
  store i64 8, ptr %i.do, align 8, !dbg !4662, !noalias !4660
  store ptr %0, ptr %i.a, align 8, !dbg !4662, !noalias !4660
  %i.dp = load i64, ptr %i.i, align 8, !dbg !4664, !alias.scope !4618, !noalias !4666, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !4667
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4671

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !4672
  %i.dr = load ptr, ptr %0, align 8, !dbg !4675, !noalias !4666, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !4677
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !4679, !noalias !4666, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !4679
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !4682

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !4672
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !4683
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !4685 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4687

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4688), !dbg !4691
  %i.dw = load ptr, ptr %0, align 8, !dbg !4692, !alias.scope !4688, !noalias !4696, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !4698 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !4701
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !4705, !range !2419, !noalias !4706, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !4705
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !4705, !noalias !4706, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc24 unwind label %bb.n, !dbg !4707

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !4709
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !4710 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !4711, !noalias !4666

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !4712, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4712, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !4713 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !4715
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !4718, !noalias !4722
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !4725
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !4725 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !4729
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !4731, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !4713
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !4725
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !4732
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !4735
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !4736
  %i.ek = and i64 %i.ej, %.val9, !dbg !4736       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !4737
  %i.em = load i8, ptr %i.el, align 1, !dbg !4742, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !4743
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !4743, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !4745
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !4747
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !4747 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !4750
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !4752
  %i.er = zext nneg i16 %i.eq to i64, !dbg !4752
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !4753
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !4755

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods11as_datetimes2_0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !4756           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !4758
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !4713 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !4715
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !4718, !noalias !4722
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !4725
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !4725 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !4729
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !4731, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !4759
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !4763
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !4766
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !4766
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !4766
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !4767, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !4769
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !4772 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !4773
  %i.ff = and i64 %.val9, %i.fe, !dbg !4776
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !4777
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !4780, !noalias !4666
  %i.fh = load ptr, ptr %0, align 8, !dbg !4781, !noalias !4666, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !4783
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !4783
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !4785, !noalias !4666
  br label %bb.s, !dbg !4786

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !4787
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !4787
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !4789 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !4791 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !4795, !noalias !4666, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !4796
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !4799 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !4800
  %i.fq = and i64 %i.fp, %.val9, !dbg !4803
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !4804, !noalias !4666
  %i.fr = load ptr, ptr %0, align 8, !dbg !4805, !noalias !4666, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !4807
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !4807
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !4809, !noalias !4666
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !4810
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !4810

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !4811
  %i.fw = load i64, ptr %i.i, align 8, !dbg !4814, !noalias !4666, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !4815
  %i.fy = load ptr, ptr %0, align 8, !dbg !4816, !noalias !4666, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !4818
  store i8 -1, ptr %i.fz, align 1, !dbg !4820, !noalias !4666
  %i.ga = load ptr, ptr %0, align 8, !dbg !4821, !noalias !4666, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !4823
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !4823
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BR_INtBR_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2g_NtNvMs1_BR_IB22_pppE18get_or_insert_with5NeverNCINvB1U_18get_or_insert_withB2g_NCNvMBR_INtBR_13LruCachedFuncB2g_B2i_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5r_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4891 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4891, !noalias !4876
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !4891 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4891, !noalias !4876
  %i.x = load i64, ptr %i.e, align 8, !dbg !4892, !alias.scope !4894, !noalias !4895, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !4896
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !4896

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !4898, !alias.scope !4894, !noalias !4895, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !4900
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !4902
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !4906
  br label %.preheader, !dbg !4896

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !4907
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !4911

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !4912 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !4914
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !4916
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !4920 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !4921    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !4907
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !4911

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !4922, !alias.scope !4894, !noalias !4895
  br label %._crit_edge69, !dbg !4922

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !4922 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !4923
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4923, !noalias !4876
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4924, !noalias !4876
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !4925, !noalias !4888

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !4931, !noalias !4888
  unreachable, !dbg !4931

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !4932), !dbg !4886
  call void @llvm.experimental.noalias.scope.decl(metadata !4935), !dbg !4938, !noalias !4888
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !4940, !alias.scope !4942, !noalias !4888 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4940, !alias.scope !4942, !noalias !4888, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4943), !dbg !4940, !noalias !4888
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !4946
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !4946

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4948, !alias.scope !4949, !noalias !4888, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4948, !alias.scope !4949, !noalias !4888, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !4950
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !4954    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !4958
  %i.ap = add i64 %i.ao, %i.an, !dbg !4959        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !4959
  call void @llvm.assume(i1 %i.aq), !dbg !4961, !noalias !4888
  %i.ar = sub i64 0, %i.al, !dbg !4963
  %i.as = and i64 %i.ap, %i.ar, !dbg !4964        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !4965
  %i.au = add i64 %i.at, %i.as, !dbg !4966        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !4966
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !4968, !noalias !4888
  call void @llvm.assume(i1 %i.ax), !dbg !4968, !noalias !4888
  %i.ay = icmp ne i64 %i.al, 0, !dbg !4970
  call void @llvm.assume(i1 %i.ay), !dbg !4972, !noalias !4888
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !4888
  %i.az = icmp eq i64 %i.au, 0, !dbg !4973
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !4973

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !4975
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !4977
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !4978, !noalias !4981
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !4982

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4886, !noalias !4876
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !4887

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !4983 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4983 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !4983
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !4984
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4988
  %i.be = zext nneg i16 %i.bd to i64, !dbg !4989
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !4990
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !4992 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !4993    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4994), !dbg !4997
  %i.bi = load ptr, ptr %0, align 8, !dbg !4998, !alias.scope !4994, !noalias !5005, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !5007
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !5012 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !5013
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !5019, !range !2419, !noalias !5020, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !5019
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !5019, !noalias !5020, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc14 unwind label %bb.f, !dbg !5021

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !5024
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !5025 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !5026 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !5029
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !5032, !noalias !5036
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !5039
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !5039 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !5043
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5045, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !5026
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !5039
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !5046
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !5049
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !5050
  %i.bw = and i64 %i.bv, %i.t, !dbg !5050         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !5051
  %i.by = load i8, ptr %i.bx, align 1, !dbg !5056, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !5057
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5057, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !5059
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !5061
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !5061 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !5064
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !5066
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !5066
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !5067
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5069

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !5070           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !5072
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !5026 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !5029
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !5032, !noalias !5036
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !5039
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !5039 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !5043
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5045, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !5073
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !5076 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !5077
  %i.cn = and i64 %i.cm, %i.t, !dbg !5080
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !5081
  store i8 %i.cl, ptr %i.co, align 1, !dbg !5084, !noalias !4888
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !5085
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !5085
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !5088, !noalias !4888
  %i.cr = load ptr, ptr %0, align 8, !dbg !5089, !alias.scope !4894, !noalias !4895, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !5092
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !5092
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !5093
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !5095
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !5095
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !5097
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !5099, !noalias !4888
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !5099, !noalias !4888
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !4896
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !4896

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !5101

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5102), !dbg !5105
  %.val11 = load ptr, ptr %0, align 8, !dbg !5106 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !5108
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !5108

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !5112
  %i.cx = and i64 %i.l, 15, !dbg !5117
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !5118
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !5118
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !5118 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !5108
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !5108
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !5108

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !5108
  br label %bb.l, !dbg !5108

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !5108
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !5108

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !5108
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !5108
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !5119 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !5122
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !5124
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !5127
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !5127
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !5129
  br label %._crit_edge.i19, !dbg !5132

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !5132
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5133, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5119 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !5122
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !5124
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !5127
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !5127
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !5129
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !5135  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5119
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !5119 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !5122
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !5124
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !5127
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !5127
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !5129
  %niter.next.1 = add i64 %niter, 2, !dbg !5108   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !5108
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !5108

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5137

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !5138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !5141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5143, !noalias !5144
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5146
  store ptr null, ptr %i.dn, align 8, !dbg !5146, !noalias !5144
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5146
  store i64 8, ptr %i.do, align 8, !dbg !5146, !noalias !5144
  store ptr %0, ptr %i.a, align 8, !dbg !5146, !noalias !5144
  %i.dp = load i64, ptr %i.i, align 8, !dbg !5148, !alias.scope !5102, !noalias !5150, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !5151
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !5155

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !5156
  %i.dr = load ptr, ptr %0, align 8, !dbg !5159, !noalias !5150, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !5161
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !5163, !noalias !5150, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !5163
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !5166

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !5156
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !5167
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !5169 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !5171

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5172), !dbg !5175
  %i.dw = load ptr, ptr %0, align 8, !dbg !5176, !alias.scope !5172, !noalias !5180, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !5182 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !5185
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !5189, !range !2419, !noalias !5190, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !5189
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !5189, !noalias !5190, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEEINtNtNtB1S_3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc24 unwind label %bb.n, !dbg !5191

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !5193
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !5194 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !5195, !noalias !5150

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !5196, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !5196, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !5197 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !5199
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !5202, !noalias !5206
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !5209
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !5209 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !5213
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !5215, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !5197
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !5209
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !5216
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !5219
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !5220
  %i.ek = and i64 %i.ej, %.val9, !dbg !5220       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !5221
  %i.em = load i8, ptr %i.el, align 1, !dbg !5226, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !5227
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !5227, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !5229
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !5231
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !5231 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !5234
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !5236
  %i.er = zext nneg i16 %i.eq to i64, !dbg !5236
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !5237
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !5239

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCINvMs1_BT_INtBT_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE22try_get_or_insert_withB2i_NtNvMs1_BT_IB24_pppE18get_or_insert_with5NeverNCINvB1W_18get_or_insert_withB2i_NCNvMBT_INtBT_13LruCachedFuncB2i_B2k_NCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB5t_9datatypes10StringTypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string13StringMethods7as_time0E4eval0E0Es_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !5240           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !5242
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !5197 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !5199
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !5202, !noalias !5206
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !5209
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !5209 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !5213
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !5215, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !5243
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !5247
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !5250
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !5250
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !5250
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !5251, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !5253
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !5256 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !5257
  %i.ff = and i64 %.val9, %i.fe, !dbg !5260
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !5261
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !5264, !noalias !5150
  %i.fh = load ptr, ptr %0, align 8, !dbg !5265, !noalias !5150, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !5267
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !5267
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !5269, !noalias !5150
  br label %bb.s, !dbg !5270

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !5271
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !5271
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !5273 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !5275 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !5279, !noalias !5150, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !5280
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !5283 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !5284
  %i.fq = and i64 %i.fp, %.val9, !dbg !5287
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !5288, !noalias !5150
  %i.fr = load ptr, ptr %0, align 8, !dbg !5289, !noalias !5150, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !5291
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !5291
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !5293, !noalias !5150
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !5294
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !5294

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !5295
  %i.fw = load i64, ptr %i.i, align 8, !dbg !5298, !noalias !5150, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !5299
  %i.fy = load ptr, ptr %0, align 8, !dbg !5300, !noalias !5150, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !5302
  store i8 -1, ptr %i.fz, align 1, !dbg !5304, !noalias !5150
  %i.ga = load ptr, ptr %0, align 8, !dbg !5305, !noalias !5150, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !5307
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !5307
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BR_INtBR_8LruCacheNtNtBT_6pl_str10PlSmallStrB2f_E6inserts_0ECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !5375 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5375, !noalias !5360
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !5375 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5375, !noalias !5360
  %i.x = load i64, ptr %i.e, align 8, !dbg !5376, !alias.scope !5378, !noalias !5379, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !5380
  br i1 %i.y, label %._crit_edge69, label %.preheader.lr.ph, !dbg !5380

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !5382, !alias.scope !5378, !noalias !5379, !nonnull !14, !noundef !14 ; 2 uses
  %.val551 = load <16 x i8>, ptr %i.z, align 16, !dbg !5384
  %i.aa = icmp sgt <16 x i8> %.val551, splat (i8 -1), !dbg !5386
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !5390
  br label %.preheader, !dbg !5380

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.044.068 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.044.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.066 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.065 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i360 = icmp eq i16 %.sroa.13.065, 0, !dbg !5391
  br i1 %.not.i360, label %.noexc4, label %._crit_edge, !dbg !5395

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.044.162 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.044.068, %.preheader ] ; 2 uses
  %.sroa.5.161 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.067, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.162) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.162, i64 16, !dbg !5396 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.ac, align 16, !dbg !5398
  %i.ad = icmp sgt <16 x i8> %.val52, splat (i8 -1), !dbg !5400
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !5404 ; 2 uses
  %i.af = add i64 %.sroa.5.161, 16, !dbg !5405    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !5391
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !5395

._crit_edge69.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.e, align 8, !dbg !5406, !alias.scope !5378, !noalias !5379
  br label %._crit_edge69, !dbg !5406

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre81, %._crit_edge69.loopexit ], [ 0, %bb.g ], !dbg !5406 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !5407
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5407, !noalias !5360
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5408, !noalias !5360
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !5409, !noalias !5372

bb.h:                                             ; preds = %._crit_edge69
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !5415, !noalias !5372
  unreachable, !dbg !5415

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge69
  call void @llvm.experimental.noalias.scope.decl(metadata !5416), !dbg !5370
  call void @llvm.experimental.noalias.scope.decl(metadata !5419), !dbg !5422, !noalias !5372
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !5424, !alias.scope !5426, !noalias !5372 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5424, !alias.scope !5426, !noalias !5372, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5427), !dbg !5424, !noalias !5372
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !5430
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !5430

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5432, !alias.scope !5433, !noalias !5372, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5432, !alias.scope !5433, !noalias !5372, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !5434
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !5438    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !5442
  %i.ap = add i64 %i.ao, %i.an, !dbg !5443        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !5443
  call void @llvm.assume(i1 %i.aq), !dbg !5445, !noalias !5372
  %i.ar = sub i64 0, %i.al, !dbg !5447
  %i.as = and i64 %i.ap, %i.ar, !dbg !5448        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !5449
  %i.au = add i64 %i.at, %i.as, !dbg !5450        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !5450
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !5452, !noalias !5372
  call void @llvm.assume(i1 %i.ax), !dbg !5452, !noalias !5372
  %i.ay = icmp ne i64 %i.al, 0, !dbg !5454
  call void @llvm.assume(i1 %i.ay), !dbg !5456, !noalias !5372
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !5372
  %i.az = icmp eq i64 %i.au, 0, !dbg !5457
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !5457

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !5459
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !5461
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !5462, !noalias !5465
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !5466

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5370, !noalias !5360
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !5371

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.065, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !5467 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.067, %.preheader ], [ %i.af, %.noexc4 ], !dbg !5467 ; 2 uses
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.068, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !5467
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !5468
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !5472
  %i.be = zext nneg i16 %i.bd to i64, !dbg !5473
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !5474
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !5476 ; 2 uses
  %i.bh = add i64 %.sroa.9.066, -1, !dbg !5477    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5478), !dbg !5481
  %i.bi = load ptr, ptr %0, align 8, !dbg !5482, !alias.scope !5478, !noalias !5489, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !5491
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !5496 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !5497
  %.val3.i = load i32, ptr %i.bl, align 4, !dbg !5503, !range !2419, !noalias !5504, !noundef !14
  %i.bm = getelementptr i8, ptr %i.bk, i64 -4, !dbg !5503
  %.val4.i = load i32, ptr %i.bm, align 4, !dbg !5503, !noalias !5504, !noundef !14
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i, i32 noundef %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50)
          to label %.noexc14 unwind label %bb.f, !dbg !5505

.noexc14:                                         ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !5509
  %i.bp = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit unwind label %bb.f, !dbg !5510 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc14
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !5511 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !5514
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !5517, !noalias !5521
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !5524
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !5524 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !5528
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5530, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.0.0.i16, %.lr.ph.i ], !dbg !5511
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit ], [ %i.cj, %.lr.ph.i ], !dbg !5524
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !5531
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !5534
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !5535
  %i.bw = and i64 %i.bv, %i.t, !dbg !5535         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !5536
  %i.by = load i8, ptr %i.bx, align 1, !dbg !5541, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !5542
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5542, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !5544
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !5546
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !5546 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !5549
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !5551
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !5551
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !5552
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5554

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit ]
  %i.cf = add i64 %i.ce, 16, !dbg !5555           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !5557
  %.sroa.0.0.i16 = and i64 %i.cg, %i.t, !dbg !5511 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16, !dbg !5514
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !5517, !noalias !5521
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !5524
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !5524 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !5528
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5530, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !5558
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !5561 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !5562
  %i.cn = and i64 %i.cm, %i.t, !dbg !5565
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !5566
  store i8 %i.cl, ptr %i.co, align 1, !dbg !5569, !noalias !5372
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !5570
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !5570
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !5573, !noalias !5372
  %i.cr = load ptr, ptr %0, align 8, !dbg !5574, !alias.scope !5378, !noalias !5379, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !5577
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !5577
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !5578
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !5580
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !5580
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !5582
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !5584, !noalias !5372
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !5584, !noalias !5372
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !5380
  br i1 %i.cv, label %._crit_edge69.loopexit, label %.preheader, !dbg !5380

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ed, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !5586

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5587), !dbg !5590
  %.val11 = load ptr, ptr %0, align 8, !dbg !5591 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !5593
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17, !dbg !5593

.lr.ph.i17:                                       ; preds = %bb.k
  %i.cw = lshr i64 %i.l, 4, !dbg !5597
  %i.cx = and i64 %i.l, 15, !dbg !5602
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !5603
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !5603
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !5603 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !5593
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !5593
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i17.new, !dbg !5593

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !5593
  br label %bb.l, !dbg !5593

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !5593
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader, !dbg !5593

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dh, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !5593
  tail call void @llvm.assume(i1 %lcmp.mod122), !dbg !5593
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !5604 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !5607
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !5609
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !5612
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !5612
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !5614
  br label %._crit_edge.i19, !dbg !5617

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !5617
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5618, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dh, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5604 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !5607
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !5609
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !5612
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !5612
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !5614
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !5620  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5604
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !5604 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !5607
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !5609
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !5612
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !5612
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !5614
  %niter.next.1 = add i64 %niter, 2, !dbg !5593   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !5593
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.l, !dbg !5593

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5622

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !5623
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !5626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5628, !noalias !5629
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5631
  store ptr null, ptr %i.dn, align 8, !dbg !5631, !noalias !5629
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5631
  store i64 8, ptr %i.do, align 8, !dbg !5631, !noalias !5629
  store ptr %0, ptr %i.a, align 8, !dbg !5631, !noalias !5629
  %i.dp = load i64, ptr %i.i, align 8, !dbg !5633, !alias.scope !5587, !noalias !5635, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !5636
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !5640

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i59 = phi i64 [ %i.dq, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i59, 1, !dbg !5641
  %i.dr = load ptr, ptr %0, align 8, !dbg !5644, !noalias !5635, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i59, !dbg !5646
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !5648, !noalias !5635, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !5648
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !5651

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i59, -1, !dbg !5641
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !5652
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !5654 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i59
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !5656

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5657), !dbg !5660
  %i.dw = load ptr, ptr %0, align 8, !dbg !5661, !alias.scope !5657, !noalias !5665, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !5667 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !5670
  %.val3.i22 = load i32, ptr %i.dy, align 4, !dbg !5674, !range !2419, !noalias !5675, !noundef !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4, !dbg !5674
  %.val4.i23 = load i32, ptr %i.dz, align 4, !dbg !5674, !noalias !5675, !noundef !14
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i32 noundef %.val3.i22, i32 noundef %.val4.i23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50)
          to label %.noexc24 unwind label %bb.n, !dbg !5676

.noexc24:                                         ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !5678
  %i.ec = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26 unwind label %bb.n, !dbg !5679 ; 3 uses

bb.n:                                             ; preds = %bb.t, %.noexc24, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !5680, !noalias !5635

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26: ; preds = %.noexc24
  %.val8 = load ptr, ptr %0, align 8, !dbg !5681, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !5681, !noundef !14 ; 6 uses
  %.sroa.0.07.i27 = and i64 %.val9, %i.ec, !dbg !5682 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i27, !dbg !5684
  %.sroa.0.0.copyload.i68.i28 = load <16 x i8>, ptr %i.ee, align 1, !dbg !5687, !noalias !5691
  %i.ef = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i28, zeroinitializer, !dbg !5694
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !5694 ; 2 uses
  %.not.i9.i29 = icmp eq i16 %i.eg, 0, !dbg !5698
  br i1 %.not.i9.i29, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !5700, !prof !2467

._crit_edge.i30:                                  ; preds = %.lr.ph.i36, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26
  %.sroa.0.0.lcssa.i31 = phi i64 [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %.sroa.0.0.i38, %.lr.ph.i36 ], !dbg !5682
  %.lcssa.i32 = phi i16 [ %i.eg, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26 ], [ %i.ex, %.lr.ph.i36 ], !dbg !5694
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i32, i1 true), !dbg !5701
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !5704
  %i.ej = add i64 %.sroa.0.0.lcssa.i31, %i.ei, !dbg !5705
  %i.ek = and i64 %i.ej, %.val9, !dbg !5705       ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ek, !dbg !5706
  %i.em = load i8, ptr %i.el, align 1, !dbg !5711, !noundef !14
  %i.en = icmp sgt i8 %i.em, -1, !dbg !5712
  br i1 %i.en, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !5712, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i30
  %.val2.i.i34 = load <16 x i8>, ptr %.val8, align 16, !dbg !5714
  %i.eo = icmp slt <16 x i8> %.val2.i.i34, zeroinitializer, !dbg !5716
  %i.ep = bitcast <16 x i1> %i.eo to i16, !dbg !5716 ; 2 uses
  %.not.i6.i35 = icmp ne i16 %i.ep, 0, !dbg !5719
  %i.eq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ep, i1 true), !dbg !5721
  %i.er = zext nneg i16 %i.eq to i64, !dbg !5721
  tail call void @llvm.assume(i1 %.not.i6.i35), !dbg !5722
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41, !dbg !5724

.lr.ph.i36:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26, %.lr.ph.i36
  %.sroa.0.010.i37 = phi i64 [ %.sroa.0.0.i38, %.lr.ph.i36 ], [ %.sroa.0.07.i27, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.es = phi i64 [ %i.et, %.lr.ph.i36 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE14reserve_rehashNCNvMs1_BT_INtBT_8LruCacheNtNtBV_6pl_str10PlSmallStrB2h_E6inserts_0E0CslpwjCj2YNBy_9polars_io.exit26 ]
  %i.et = add i64 %i.es, 16, !dbg !5725           ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.010.i37, !dbg !5727
  %.sroa.0.0.i38 = and i64 %i.eu, %.val9, !dbg !5682 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i38, !dbg !5684
  %.sroa.0.0.copyload.i6.i39 = load <16 x i8>, ptr %i.ev, align 1, !dbg !5687, !noalias !5691
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i39, zeroinitializer, !dbg !5694
  %i.ex = bitcast <16 x i1> %i.ew to i16, !dbg !5694 ; 2 uses
  %.not.i.i40 = icmp eq i16 %i.ex, 0, !dbg !5698
  br i1 %.not.i.i40, label %.lr.ph.i36, label %._crit_edge.i30, !dbg !5700, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41: ; preds = %bb.o, %._crit_edge.i30
  %.sroa.0.0.i5.i33 = phi i64 [ %i.er, %bb.o ], [ %i.ek, %._crit_edge.i30 ] ; 4 uses
  %i.ey = sub i64 %.sroa.04.0.i59, %.sroa.0.07.i27, !dbg !5728
  %i.ez = sub i64 %.sroa.0.0.i5.i33, %.sroa.0.07.i27, !dbg !5732
  %i.fa = xor i64 %i.ez, %i.ey, !dbg !5735
  %.unshifted.i = and i64 %i.fa, %.val9, !dbg !5735
  %i.fb = icmp ult i64 %.unshifted.i, 16, !dbg !5735
  br i1 %i.fb, label %bb.p, label %bb.q, !dbg !5736, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %i.fc = lshr i64 %i.ec, 57, !dbg !5738
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !5741 ; 2 uses
  %i.fe = add i64 %.sroa.04.0.i59, -16, !dbg !5742
  %i.ff = and i64 %.val9, %i.fe, !dbg !5745
  %i.fg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i59, !dbg !5746
  store i8 %i.fd, ptr %i.fg, align 1, !dbg !5749, !noalias !5635
  %i.fh = load ptr, ptr %0, align 8, !dbg !5750, !noalias !5635, !nonnull !14, !noundef !14
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff, !dbg !5752
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !5752
  store i8 %i.fd, ptr %i.fj, align 1, !dbg !5754, !noalias !5635
  br label %bb.s, !dbg !5755

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit41
  %.neg12.i = xor i64 %.sroa.0.0.i5.i33, -1, !dbg !5756
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !5756
  %i.fk = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !5758 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i33, !dbg !5760 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !5764, !noalias !5635, !noundef !14
  %i.fn = lshr i64 %i.ec, 57, !dbg !5765
  %i.fo = trunc nuw nsw i64 %i.fn to i8, !dbg !5768 ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i33, -16, !dbg !5769
  %i.fq = and i64 %i.fp, %.val9, !dbg !5772
  store i8 %i.fo, ptr %i.fl, align 1, !dbg !5773, !noalias !5635
  %i.fr = load ptr, ptr %0, align 8, !dbg !5774, !noalias !5635, !nonnull !14, !noundef !14
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq, !dbg !5776
  %i.ft = getelementptr i8, ptr %i.fs, i64 16, !dbg !5776
  store i8 %i.fo, ptr %i.ft, align 1, !dbg !5778, !noalias !5635
  %i.fu = icmp eq i8 %i.fm, -1, !dbg !5779
  br i1 %i.fu, label %bb.r, label %bb.t, !dbg !5779

bb.r:                                             ; preds = %bb.q
  %i.fv = add i64 %.sroa.04.0.i59, -16, !dbg !5780
  %i.fw = load i64, ptr %i.i, align 8, !dbg !5783, !noalias !5635, !noundef !14
  %i.fx = and i64 %i.fw, %i.fv, !dbg !5784
  %i.fy = load ptr, ptr %0, align 8, !dbg !5785, !noalias !5635, !nonnull !14, !noundef !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.04.0.i59, !dbg !5787
  store i8 -1, ptr %i.fz, align 1, !dbg !5789, !noalias !5635
  %i.ga = load ptr, ptr %0, align 8, !dbg !5790, !noalias !5635, !nonnull !14, !noundef !14
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fx, !dbg !5792
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !5792
end_hunk_6
begin_hunk_7_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB1x_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5854, !noalias !5845
  store ptr %i.d, ptr %i.c, align 8, !dbg !5860, !noalias !5845
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5860 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5860, !noalias !5845
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5860 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5860, !noalias !5845
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !5860 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !5860, !noalias !5845
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !5860 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5860, !noalias !5845
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !5860 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5860, !noalias !5845
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !5860 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5860, !noalias !5845
  %i.x = load i64, ptr %i.e, align 8, !dbg !5861, !alias.scope !5863, !noalias !5864, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !5865
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !5865

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !5867, !alias.scope !5863, !noalias !5864, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !5869
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !5871
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !5875
  br label %.preheader, !dbg !5865

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !5876
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !5880

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !5881 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !5883
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !5885
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !5889 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !5890    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !5876
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !5880

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !5891, !alias.scope !5863, !noalias !5864
  br label %._crit_edge64, !dbg !5891

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !5891 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !5892
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5892, !noalias !5845
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5893, !noalias !5845
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !5894, !noalias !5857

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !5900, !noalias !5857
  unreachable, !dbg !5900

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !5901), !dbg !5855
  call void @llvm.experimental.noalias.scope.decl(metadata !5904), !dbg !5907, !noalias !5857
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !5909, !alias.scope !5911, !noalias !5857 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5909, !alias.scope !5911, !noalias !5857, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5912), !dbg !5909, !noalias !5857
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !5915
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !5915

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5917, !alias.scope !5918, !noalias !5857, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5917, !alias.scope !5918, !noalias !5857, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !5919
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !5923    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !5927
  %i.ap = add i64 %i.ao, %i.an, !dbg !5928        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !5928
  call void @llvm.assume(i1 %i.aq), !dbg !5930, !noalias !5857
  %i.ar = sub i64 0, %i.al, !dbg !5932
  %i.as = and i64 %i.ap, %i.ar, !dbg !5933        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !5934
  %i.au = add i64 %i.at, %i.as, !dbg !5935        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !5935
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !5937, !noalias !5857
  call void @llvm.assume(i1 %i.ax), !dbg !5937, !noalias !5857
  %i.ay = icmp ne i64 %i.al, 0, !dbg !5939
  call void @llvm.assume(i1 %i.ay), !dbg !5941, !noalias !5857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !5857
  %i.az = icmp eq i64 %i.au, 0, !dbg !5942
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !5942

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !5944
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !5946
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !5947, !noalias !5950
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !5951

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5855, !noalias !5845
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !5856

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !5952 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !5952 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !5952
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !5953
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !5957
  %i.be = zext nneg i16 %i.bd to i64, !dbg !5958
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !5959
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !5961 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !5962    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !5963, !alias.scope !5970, !noalias !5973, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !5975
  %i.bk = getelementptr inbounds [64 x i8], ptr %i.bi, i64 %i.bj, !dbg !5980
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -64, !dbg !5981
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit unwind label %bb.f, !dbg !5987 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !5995 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !5998
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !6001, !noalias !6005
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6008
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !6008 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !6012
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6014, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !5995
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit ], [ %i.cg, %.lr.ph.i ], !dbg !6008
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6015
  %i.br = zext nneg i16 %i.bq to i64, !dbg !6018
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !6019
  %i.bt = and i64 %i.bs, %i.t, !dbg !6019         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !6020
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !6025, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !6026
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6026, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !6028
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !6030
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !6030 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !6033
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !6035
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !6035
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !6036
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6038

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !6039           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !6041
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !5995 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !5998
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !6001, !noalias !6005
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6008
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !6008 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !6012
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6014, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !6042
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !6045 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !6046
  %i.ck = and i64 %i.cj, %i.t, !dbg !6049
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !6050
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !6053, !noalias !5857
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !6054
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !6054
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !6057, !noalias !5857
  %i.co = load ptr, ptr %0, align 8, !dbg !6058, !alias.scope !5863, !noalias !5864, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !6061
  %.neg61.i.i = shl i64 %.neg.i.i, 6, !dbg !6061
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !6062
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !6064
  %.neg63.i.i = shl i64 %.neg62.i.i, 6, !dbg !6064
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !6066
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cq, ptr noundef nonnull align 1 dereferenceable(64) %i.cp, i64 range(i64 8, 65) 64, i1 false), !dbg !6068, !noalias !5857
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !5865
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !5865

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !6070

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6071), !dbg !6074
  %.val11 = load ptr, ptr %0, align 8, !dbg !6075 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !6077
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !6077

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !6081
  %i.ct = and i64 %i.l, 15, !dbg !6086
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !6087
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !6087
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !6087 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !6077
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !6077
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !6077

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !6077
  br label %bb.l, !dbg !6077

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6077
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !6077

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !6077
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !6077
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !6088 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !6091
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !6093
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !6096
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !6096
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !6098
  br label %._crit_edge.i18, !dbg !6101

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !6101
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6102, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6088 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !6091
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !6093
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !6096
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !6096
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !6098
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !6104  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6088
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !6088 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !6091
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !6093
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !6096
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !6096
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !6098
  %niter.next.1 = add i64 %niter, 2, !dbg !6077   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !6077
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !6077

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6106

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !6107
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !6110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6112, !noalias !6113
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6115
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceB1C_, ptr %i.dj, align 8, !dbg !6115, !noalias !6113
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6115
  store i64 64, ptr %i.dk, align 8, !dbg !6115, !noalias !6113
  store ptr %0, ptr %i.a, align 8, !dbg !6115, !noalias !6113
  %i.dl = load i64, ptr %i.i, align 8, !dbg !6117, !alias.scope !6071, !noalias !6119, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !6120
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !6124

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !6125
  %i.dn = load ptr, ptr %0, align 8, !dbg !6128, !noalias !6119, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !6130
  %i.dp = load i8, ptr %i.do, align 1, !dbg !6132, !noalias !6119, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !6132
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !6135

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !6125
  %.neg11.i = shl i64 %.neg.i, 6, !dbg !6136
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !6138 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !6140

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !6141, !alias.scope !6145, !noalias !6148, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [64 x i8], ptr %i.ds, i64 %i.dr, !dbg !6150
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -64, !dbg !6153
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21 unwind label %bb.n, !dbg !6157 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !6160, !noalias !6119

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !6161, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !6161, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !6162 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !6164
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !6167, !noalias !6171
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !6174
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !6174 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !6178
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !6180, !prof !2467

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !6162
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !6174
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !6181
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !6184
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !6185
  %i.ed = and i64 %i.ec, %.val9, !dbg !6185       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !6186
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !6191, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !6192
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !6192, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !6194
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !6196
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !6196 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !6199
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !6201
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !6201
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !6202
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !6204

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner17PolarsObjectStoreEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1z_.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !6205           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !6207
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !6162 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !6164
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !6167, !noalias !6171
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !6174
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !6174 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !6178
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !6180, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !6208
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !6212
  %i.et = xor i64 %i.es, %i.er, !dbg !6215
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !6215
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !6215
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !6216, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !6218
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !6221 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !6222
  %i.ey = and i64 %.val9, %i.ex, !dbg !6225
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !6226
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !6229, !noalias !6119
  %i.fa = load ptr, ptr %0, align 8, !dbg !6230, !noalias !6119, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !6232
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !6232
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !6234, !noalias !6119
  br label %bb.s, !dbg !6235

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !6236
  %.neg13.i = shl i64 %.neg12.i, 6, !dbg !6236
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !6238 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !6240 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !6244, !noalias !6119, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !6245
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !6248 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !6249
  %i.fj = and i64 %i.fi, %.val9, !dbg !6252
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !6253, !noalias !6119
  %i.fk = load ptr, ptr %0, align 8, !dbg !6254, !noalias !6119, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !6256
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !6256
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !6258, !noalias !6119
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !6259
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !6259

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !6260
  %i.fp = load i64, ptr %i.i, align 8, !dbg !6263, !noalias !6119, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !6264
  %i.fr = load ptr, ptr %0, align 8, !dbg !6265, !noalias !6119, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !6267
  store i8 -1, ptr %i.fs, align 1, !dbg !6269, !noalias !6119
  %i.ft = load ptr, ptr %0, align 8, !dbg !6270, !noalias !6119, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !6272
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !6272
  store i8 -1, ptr %i.fv, align 1, !dbg !6274, !noalias !6119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.fd, ptr noundef nonnull align 1 dereferenceable(64) %i.dq, i64 64, i1 false), !dbg !6275, !noalias !6119
  br label %bb.s, !dbg !6277

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !6120
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !6124

bb.t:                                             ; preds = %bb.q
end_hunk_7
begin_hunk_8_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3x_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB2k_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6334, !noalias !6325
  store ptr %i.d, ptr %i.c, align 8, !dbg !6340, !noalias !6325
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6340 ; 2 uses
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6340, !noalias !6325
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6340 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6340, !noalias !6325
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6340 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6340, !noalias !6325
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !6340 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6340, !noalias !6325
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !6340 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6340, !noalias !6325
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !6340 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6340, !noalias !6325
  %i.x = load i64, ptr %i.e, align 8, !dbg !6341, !alias.scope !6343, !noalias !6344, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !6345
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !6345

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !6347, !alias.scope !6343, !noalias !6344, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !6349
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !6351
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !6355
  br label %.preheader, !dbg !6345

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !6356
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !6360

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !6361 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !6363
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !6365
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !6369 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !6370    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !6356
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !6360

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !6371, !alias.scope !6343, !noalias !6344
  br label %._crit_edge64, !dbg !6371

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !6371 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !6372
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6372, !noalias !6325
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6373, !noalias !6325
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !6374, !noalias !6337

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !6380, !noalias !6337
  unreachable, !dbg !6380

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !6381), !dbg !6335
  call void @llvm.experimental.noalias.scope.decl(metadata !6384), !dbg !6387, !noalias !6337
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6389, !alias.scope !6391, !noalias !6337 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6389, !alias.scope !6391, !noalias !6337, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6392), !dbg !6389, !noalias !6337
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !6395
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !6395

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6397, !alias.scope !6398, !noalias !6337, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6397, !alias.scope !6398, !noalias !6337, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !6399
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !6403    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !6407
  %i.ap = add i64 %i.ao, %i.an, !dbg !6408        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !6408
  call void @llvm.assume(i1 %i.aq), !dbg !6410, !noalias !6337
  %i.ar = sub i64 0, %i.al, !dbg !6412
  %i.as = and i64 %i.ap, %i.ar, !dbg !6413        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !6414
  %i.au = add i64 %i.at, %i.as, !dbg !6415        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !6415
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !6417, !noalias !6337
  call void @llvm.assume(i1 %i.ax), !dbg !6417, !noalias !6337
  %i.ay = icmp ne i64 %i.al, 0, !dbg !6419
  call void @llvm.assume(i1 %i.ay), !dbg !6421, !noalias !6337
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !6337
  %i.az = icmp eq i64 %i.au, 0, !dbg !6422
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !6422

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !6424
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !6426
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !6427, !noalias !6430
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !6431

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6335, !noalias !6325
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !6336

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !6432 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !6432 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !6432
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !6433
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !6437
  %i.be = zext nneg i16 %i.bd to i64, !dbg !6438
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !6439
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !6441 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !6442    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !6443, !alias.scope !6450, !noalias !6453, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !6455
  %i.bk = getelementptr inbounds [40 x i8], ptr %i.bi, i64 %i.bj, !dbg !6460
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -40, !dbg !6461
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit unwind label %bb.f, !dbg !6467 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !6472 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !6475
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !6478, !noalias !6482
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6485
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !6485 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !6489
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6491, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !6472
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit ], [ %i.cg, %.lr.ph.i ], !dbg !6485
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6492
  %i.br = zext nneg i16 %i.bq to i64, !dbg !6495
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !6496
  %i.bt = and i64 %i.bs, %i.t, !dbg !6496         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !6497
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !6502, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !6503
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6503, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !6505
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !6507
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !6507 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !6510
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !6512
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !6512
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !6513
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6515

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !6516           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !6518
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !6472 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !6475
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !6478, !noalias !6482
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6485
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !6485 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !6489
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6491, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !6519
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !6522 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !6523
  %i.ck = and i64 %i.cj, %i.t, !dbg !6526
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !6527
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !6530, !noalias !6337
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !6531
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !6531
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !6534, !noalias !6337
  %i.co = load ptr, ptr %0, align 8, !dbg !6535, !alias.scope !6343, !noalias !6344, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !6538
  %.neg61.i.i = mul i64 %.neg.i.i, 40, !dbg !6538
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !6539
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !6541
  %.neg63.i.i = mul i64 %.neg62.i.i, 40, !dbg !6541
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !6543
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cq, ptr noundef nonnull align 1 dereferenceable(40) %i.cp, i64 range(i64 8, 65) 40, i1 false), !dbg !6545, !noalias !6337
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !6345
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !6345

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !6547

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6548), !dbg !6551
  %.val11 = load ptr, ptr %0, align 8, !dbg !6552 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !6554
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !6554

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !6558
  %i.ct = and i64 %i.l, 15, !dbg !6563
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !6564
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !6564
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !6564 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !6554
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !6554
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !6554

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !6554
  br label %bb.l, !dbg !6554

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6554
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !6554

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !6554
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !6554
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !6565 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !6568
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !6570
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !6573
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !6573
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !6575
  br label %._crit_edge.i18, !dbg !6578

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !6578
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6579, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6565 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !6568
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !6570
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !6573
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !6573
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !6575
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !6581  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6565
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !6565 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !6568
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !6570
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !6573
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !6573
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !6575
  %niter.next.1 = add i64 %niter, 2, !dbg !6554   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !6554
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !6554

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6583

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !6584
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !6587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6589, !noalias !6590
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6592
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3C_4SyncEL_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtB3E_3ops8function6FnOnceTOhEE9call_onceB2p_, ptr %i.dj, align 8, !dbg !6592, !noalias !6590
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6592
  store i64 40, ptr %i.dk, align 8, !dbg !6592, !noalias !6590
  store ptr %0, ptr %i.a, align 8, !dbg !6592, !noalias !6590
  %i.dl = load i64, ptr %i.i, align 8, !dbg !6594, !alias.scope !6548, !noalias !6596, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !6597
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !6601

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !6602
  %i.dn = load ptr, ptr %0, align 8, !dbg !6605, !noalias !6596, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !6607
  %i.dp = load i8, ptr %i.do, align 1, !dbg !6609, !noalias !6596, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !6609
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !6612

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !6602
  %.neg11.i = mul i64 %.neg.i, 40, !dbg !6613
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !6615 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !6617

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !6618, !alias.scope !6622, !noalias !6625, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [40 x i8], ptr %i.ds, i64 %i.dr, !dbg !6627
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -40, !dbg !6630
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21 unwind label %bb.n, !dbg !6634 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !6637, !noalias !6596

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !6638, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !6638, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !6639 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !6641
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !6644, !noalias !6648
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !6651
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !6651 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !6655
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !6657, !prof !2467

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !6639
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !6651
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !6658
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !6661
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !6662
  %i.ed = and i64 %i.ec, %.val9, !dbg !6662       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !6663
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !6668, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !6669
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !6669, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !6671
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !6673
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !6673 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !6676
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !6678
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !6678
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !6679
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !6681

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCslpwjCj2YNBy_9polars_io5cloud18object_store_setup21ExtObjectStoreBuilderNtNtCscgRAwXFJnXP_4core6marker4SendNtB3z_4SyncEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2m_.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !6682           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !6684
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !6639 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !6641
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !6644, !noalias !6648
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !6651
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !6651 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !6655
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !6657, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !6685
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !6689
  %i.et = xor i64 %i.es, %i.er, !dbg !6692
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !6692
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !6692
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !6693, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !6695
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !6698 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !6699
  %i.ey = and i64 %.val9, %i.ex, !dbg !6702
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !6703
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !6706, !noalias !6596
  %i.fa = load ptr, ptr %0, align 8, !dbg !6707, !noalias !6596, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !6709
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !6709
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !6711, !noalias !6596
  br label %bb.s, !dbg !6712

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !6713
  %.neg13.i = mul i64 %.neg12.i, 40, !dbg !6713
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !6715 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !6717 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !6721, !noalias !6596, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !6722
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !6725 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !6726
  %i.fj = and i64 %i.fi, %.val9, !dbg !6729
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !6730, !noalias !6596
  %i.fk = load ptr, ptr %0, align 8, !dbg !6731, !noalias !6596, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !6733
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !6733
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !6735, !noalias !6596
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !6736
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !6736

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !6737
  %i.fp = load i64, ptr %i.i, align 8, !dbg !6740, !noalias !6596, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !6741
  %i.fr = load ptr, ptr %0, align 8, !dbg !6742, !noalias !6596, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !6744
  store i8 -1, ptr %i.fs, align 1, !dbg !6746, !noalias !6596
  %i.ft = load ptr, ptr %0, align 8, !dbg !6747, !noalias !6596, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !6749
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !6749
  store i8 -1, ptr %i.fv, align 1, !dbg !6751, !noalias !6596
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.fd, ptr noundef nonnull align 1 dereferenceable(40) %i.dq, i64 40, i1 false), !dbg !6752, !noalias !6596
  br label %bb.s, !dbg !6754

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !6597
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !6601

bb.t:                                             ; preds = %bb.q
end_hunk_8
begin_hunk_9_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB2i_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6811, !noalias !6802
  store ptr %i.d, ptr %i.c, align 8, !dbg !6817, !noalias !6802
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6817 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6817, !noalias !6802
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6817 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6817, !noalias !6802
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6817 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6817, !noalias !6802
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !6817 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6817, !noalias !6802
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !6817 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6817, !noalias !6802
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !6817 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6817, !noalias !6802
  %i.x = load i64, ptr %i.e, align 8, !dbg !6818, !alias.scope !6820, !noalias !6821, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !6822
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !6822

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !6824, !alias.scope !6820, !noalias !6821, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !6826
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !6828
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !6832
  br label %.preheader, !dbg !6822

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !6833
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !6837

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !6838 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !6840
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !6842
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !6846 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !6847    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !6833
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !6837

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !6848, !alias.scope !6820, !noalias !6821
  br label %._crit_edge64, !dbg !6848

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !6848 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !6849
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6849, !noalias !6802
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6850, !noalias !6802
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !6851, !noalias !6814

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !6857, !noalias !6814
  unreachable, !dbg !6857

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !6858), !dbg !6812
  call void @llvm.experimental.noalias.scope.decl(metadata !6861), !dbg !6864, !noalias !6814
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6866, !alias.scope !6868, !noalias !6814 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6866, !alias.scope !6868, !noalias !6814, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6869), !dbg !6866, !noalias !6814
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !6872
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !6872

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6874, !alias.scope !6875, !noalias !6814, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6874, !alias.scope !6875, !noalias !6814, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !6876
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !6880    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !6884
  %i.ap = add i64 %i.ao, %i.an, !dbg !6885        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !6885
  call void @llvm.assume(i1 %i.aq), !dbg !6887, !noalias !6814
  %i.ar = sub i64 0, %i.al, !dbg !6889
  %i.as = and i64 %i.ap, %i.ar, !dbg !6890        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !6891
  %i.au = add i64 %i.at, %i.as, !dbg !6892        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !6892
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !6894, !noalias !6814
  call void @llvm.assume(i1 %i.ax), !dbg !6894, !noalias !6814
  %i.ay = icmp ne i64 %i.al, 0, !dbg !6896
  call void @llvm.assume(i1 %i.ay), !dbg !6898, !noalias !6814
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !6814
  %i.az = icmp eq i64 %i.au, 0, !dbg !6899
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !6899

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !6901
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !6903
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !6904, !noalias !6907
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !6908

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6812, !noalias !6802
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !6813

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !6909 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !6909 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !6909
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !6910
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !6914
  %i.be = zext nneg i16 %i.bd to i64, !dbg !6915
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !6916
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !6918 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !6919    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !6920, !alias.scope !6927, !noalias !6930, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !6932
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj, !dbg !6937
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24, !dbg !6938
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit unwind label %bb.f, !dbg !6944 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !6949 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !6952
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !6955, !noalias !6959
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6962
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !6962 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !6966
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6968, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !6949
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit ], [ %i.cg, %.lr.ph.i ], !dbg !6962
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6969
  %i.br = zext nneg i16 %i.bq to i64, !dbg !6972
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !6973
  %i.bt = and i64 %i.bs, %i.t, !dbg !6973         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !6974
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !6979, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !6980
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6980, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !6982
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !6984
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !6984 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !6987
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !6989
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !6989
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !6990
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6992

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !6993           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !6995
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !6949 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !6952
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !6955, !noalias !6959
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6962
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !6962 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !6966
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6968, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !6996
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !6999 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !7000
  %i.ck = and i64 %i.cj, %i.t, !dbg !7003
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !7004
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !7007, !noalias !6814
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !7008
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !7008
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !7011, !noalias !6814
  %i.co = load ptr, ptr %0, align 8, !dbg !7012, !alias.scope !6820, !noalias !6821, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !7015
  %.neg61.i.i = mul i64 %.neg.i.i, 24, !dbg !7015
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !7016
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !7018
  %.neg63.i.i = mul i64 %.neg62.i.i, 24, !dbg !7018
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !7020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 1 dereferenceable(24) %i.cp, i64 range(i64 8, 65) 24, i1 false), !dbg !7022, !noalias !6814
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !6822
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !6822

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !7024

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7025), !dbg !7028
  %.val11 = load ptr, ptr %0, align 8, !dbg !7029 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !7031
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !7031

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !7035
  %i.ct = and i64 %i.l, 15, !dbg !7040
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !7041
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !7041
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !7041 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !7031
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !7031
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !7031

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !7031
  br label %bb.l, !dbg !7031

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7031
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !7031

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !7031
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !7031
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !7042 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !7045
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !7047
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !7050
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !7050
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !7052
  br label %._crit_edge.i18, !dbg !7055

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !7055
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7056, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7042 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !7045
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !7047
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !7050
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !7050
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !7052
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !7058  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7042
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !7042 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !7045
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !7047
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !7050
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !7050
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !7052
  %niter.next.1 = add i64 %niter, 2, !dbg !7031   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !7031
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !7031

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7060

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !7061
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !7064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7066, !noalias !7067
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7069
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceB2n_, ptr %i.dj, align 8, !dbg !7069, !noalias !7067
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7069
  store i64 24, ptr %i.dk, align 8, !dbg !7069, !noalias !7067
  store ptr %0, ptr %i.a, align 8, !dbg !7069, !noalias !7067
  %i.dl = load i64, ptr %i.i, align 8, !dbg !7071, !alias.scope !7025, !noalias !7073, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !7074
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !7078

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !7079
  %i.dn = load ptr, ptr %0, align 8, !dbg !7082, !noalias !7073, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !7084
  %i.dp = load i8, ptr %i.do, align 1, !dbg !7086, !noalias !7073, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !7086
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !7089

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !7079
  %.neg11.i = mul i64 %.neg.i, 24, !dbg !7090
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !7092 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !7094

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !7095, !alias.scope !7099, !noalias !7102, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [24 x i8], ptr %i.ds, i64 %i.dr, !dbg !7104
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -24, !dbg !7107
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21 unwind label %bb.n, !dbg !7111 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !7114, !noalias !7073

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !7115, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !7115, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !7116 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !7118
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !7121, !noalias !7125
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !7128
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !7128 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !7132
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !7134, !prof !2467

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !7116
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !7128
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !7135
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !7138
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !7139
  %i.ed = and i64 %i.ec, %.val9, !dbg !7139       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !7140
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !7145, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !7146
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !7146, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !7148
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !7150
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !7150 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !7153
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !7155
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !7155
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !7156
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !7158

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B2k_.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !7159           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !7161
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !7116 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !7118
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !7121, !noalias !7125
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !7128
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !7128 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !7132
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !7134, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !7162
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !7166
  %i.et = xor i64 %i.es, %i.er, !dbg !7169
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !7169
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !7169
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !7170, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !7172
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !7175 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !7176
  %i.ey = and i64 %.val9, %i.ex, !dbg !7179
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !7180
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !7183, !noalias !7073
  %i.fa = load ptr, ptr %0, align 8, !dbg !7184, !noalias !7073, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !7186
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !7186
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !7188, !noalias !7073
  br label %bb.s, !dbg !7189

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !7190
  %.neg13.i = mul i64 %.neg12.i, 24, !dbg !7190
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !7192 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !7194 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !7198, !noalias !7073, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !7199
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !7202 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !7203
  %i.fj = and i64 %i.fi, %.val9, !dbg !7206
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !7207, !noalias !7073
  %i.fk = load ptr, ptr %0, align 8, !dbg !7208, !noalias !7073, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !7210
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !7210
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !7212, !noalias !7073
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !7213
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !7213

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !7214
  %i.fp = load i64, ptr %i.i, align 8, !dbg !7217, !noalias !7073, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !7218
  %i.fr = load ptr, ptr %0, align 8, !dbg !7219, !noalias !7073, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !7221
  store i8 -1, ptr %i.fs, align 1, !dbg !7223, !noalias !7073
  %i.ft = load ptr, ptr %0, align 8, !dbg !7224, !noalias !7073, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !7226
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !7226
  store i8 -1, ptr %i.fv, align 1, !dbg !7228, !noalias !7073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fd, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 24, i1 false), !dbg !7229, !noalias !7073
  br label %bb.s, !dbg !7231

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !7074
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !7078

bb.t:                                             ; preds = %bb.q
end_hunk_9
begin_hunk_10_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtB8_6hasher18DefaultHashBuilderE0EB1y_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7288, !noalias !7279
  store ptr %i.d, ptr %i.c, align 8, !dbg !7294, !noalias !7279
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7294 ; 2 uses
  store i64 56, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7294, !noalias !7279
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7294 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7294, !noalias !7279
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !7294 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7294, !noalias !7279
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !7294 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7294, !noalias !7279
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !7294 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7294, !noalias !7279
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !7294 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7294, !noalias !7279
  %i.x = load i64, ptr %i.e, align 8, !dbg !7295, !alias.scope !7297, !noalias !7298, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !7299
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !7299

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !7301, !alias.scope !7297, !noalias !7298, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !7303
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !7305
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !7309
  br label %.preheader, !dbg !7299

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !7310
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !7314

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !7315 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !7317
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !7319
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !7323 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !7324    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !7310
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !7314

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !7325, !alias.scope !7297, !noalias !7298
  br label %._crit_edge64, !dbg !7325

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !7325 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !7326
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7326, !noalias !7279
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7327, !noalias !7279
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !7328, !noalias !7291

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !7334, !noalias !7291
  unreachable, !dbg !7334

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !7335), !dbg !7289
  call void @llvm.experimental.noalias.scope.decl(metadata !7338), !dbg !7341, !noalias !7291
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7343, !alias.scope !7345, !noalias !7291 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7343, !alias.scope !7345, !noalias !7291, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7346), !dbg !7343, !noalias !7291
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !7349
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !7349

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7351, !alias.scope !7352, !noalias !7291, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7351, !alias.scope !7352, !noalias !7291, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !7353
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !7357    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !7361
  %i.ap = add i64 %i.ao, %i.an, !dbg !7362        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !7362
  call void @llvm.assume(i1 %i.aq), !dbg !7364, !noalias !7291
  %i.ar = sub i64 0, %i.al, !dbg !7366
  %i.as = and i64 %i.ap, %i.ar, !dbg !7367        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !7368
  %i.au = add i64 %i.at, %i.as, !dbg !7369        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !7369
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !7371, !noalias !7291
  call void @llvm.assume(i1 %i.ax), !dbg !7371, !noalias !7291
  %i.ay = icmp ne i64 %i.al, 0, !dbg !7373
  call void @llvm.assume(i1 %i.ay), !dbg !7375, !noalias !7291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !7291
  %i.az = icmp eq i64 %i.au, 0, !dbg !7376
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !7376

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !7378
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !7380
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !7381, !noalias !7384
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !7385

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7289, !noalias !7279
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !7290

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !7386 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !7386 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !7386
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !7387
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !7391
  %i.be = zext nneg i16 %i.bd to i64, !dbg !7392
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !7393
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !7395 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !7396    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !7397, !alias.scope !7404, !noalias !7407, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !7409
  %i.bk = getelementptr inbounds [56 x i8], ptr %i.bi, i64 %i.bj, !dbg !7414
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -56, !dbg !7415
  %i.bm = invoke noundef i64 @_RINvYNtNtCs7tGzs63DEEy_9hashbrown6hasher18DefaultHashBuilderNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit unwind label %bb.f, !dbg !7421 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !7426 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !7429
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !7432, !noalias !7436
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !7439
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !7439 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !7443
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7445, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !7426
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit ], [ %i.cg, %.lr.ph.i ], !dbg !7439
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !7446
  %i.br = zext nneg i16 %i.bq to i64, !dbg !7449
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !7450
  %i.bt = and i64 %i.bs, %i.t, !dbg !7450         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !7451
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !7456, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !7457
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7457, !prof !1726

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !7459
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !7461
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !7461 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !7464
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !7466
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !7466
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !7467
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7469

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !7470           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !7472
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !7426 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !7429
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !7432, !noalias !7436
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7439
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !7439 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !7443
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7445, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !7473
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !7476 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !7477
  %i.ck = and i64 %i.cj, %i.t, !dbg !7480
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !7481
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !7484, !noalias !7291
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !7485
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !7485
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !7488, !noalias !7291
  %i.co = load ptr, ptr %0, align 8, !dbg !7489, !alias.scope !7297, !noalias !7298, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !7492
  %.neg61.i.i = mul i64 %.neg.i.i, 56, !dbg !7492
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !7493
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !7495
  %.neg63.i.i = mul i64 %.neg62.i.i, 56, !dbg !7495
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !7497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.cq, ptr noundef nonnull align 1 dereferenceable(56) %i.cp, i64 range(i64 8, 65) 56, i1 false), !dbg !7499, !noalias !7291
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !7299
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !7299

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !7501

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7502), !dbg !7505
  %.val11 = load ptr, ptr %0, align 8, !dbg !7506 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !7508
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !7508

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !7512
  %i.ct = and i64 %i.l, 15, !dbg !7517
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !7518
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !7518
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !7518 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !7508
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !7508
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !7508

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !7508
  br label %bb.l, !dbg !7508

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7508
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !7508

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !7508
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !7508
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !7519 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !7522
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !7524
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !7527
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !7527
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !7529
  br label %._crit_edge.i18, !dbg !7532

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !7532
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7533, !prof !2640

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7519 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !7522
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !7524
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !7527
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !7527
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !7529
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !7535  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7519
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !7519 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !7522
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !7524
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !7527
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !7527
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !7529
  %niter.next.1 = add i64 %niter, 2, !dbg !7508   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !7508
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !7508

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7537

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !7538
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !7541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7543, !noalias !7544
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7546
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtBd_6hasher18DefaultHashBuilderE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceB1D_, ptr %i.dj, align 8, !dbg !7546, !noalias !7544
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7546
  store i64 56, ptr %i.dk, align 8, !dbg !7546, !noalias !7544
  store ptr %0, ptr %i.a, align 8, !dbg !7546, !noalias !7544
  %i.dl = load i64, ptr %i.i, align 8, !dbg !7548, !alias.scope !7502, !noalias !7550, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !7551
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !7555

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !7556
  %i.dn = load ptr, ptr %0, align 8, !dbg !7559, !noalias !7550, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !7561
  %i.dp = load i8, ptr %i.do, align 1, !dbg !7563, !noalias !7550, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !7563
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !7566

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !7556
  %.neg11.i = mul i64 %.neg.i, 56, !dbg !7567
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !7569 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !7571

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !7572, !alias.scope !7576, !noalias !7579, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [56 x i8], ptr %i.ds, i64 %i.dr, !dbg !7581
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -56, !dbg !7584
  %i.dv = invoke noundef i64 @_RINvYNtNtCs7tGzs63DEEy_9hashbrown6hasher18DefaultHashBuilderNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21 unwind label %bb.n, !dbg !7588 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.u, !dbg !7591, !noalias !7550

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !7592, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !7592, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !7593 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !7595
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !7598, !noalias !7602
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !7605
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !7605 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !7609
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !7611, !prof !2467

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !7593
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !7605
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !7612
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !7615
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !7616
  %i.ed = and i64 %i.ec, %.val9, !dbg !7616       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !7617
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !7622, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !7623
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !7623, !prof !1726

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !7625
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !7627
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !7627 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !7630
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !7632
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !7632
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !7633
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !7635

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtBa_6hasher18DefaultHashBuilderE0E0B1A_.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !7636           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !7638
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !7593 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !7595
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !7598, !noalias !7602
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !7605
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !7605 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !7609
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !7611, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !7639
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !7643
  %i.et = xor i64 %i.es, %i.er, !dbg !7646
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !7646
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !7646
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !7647, !prof !1398

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !7649
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !7652 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !7653
  %i.ey = and i64 %.val9, %i.ex, !dbg !7656
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !7657
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !7660, !noalias !7550
  %i.fa = load ptr, ptr %0, align 8, !dbg !7661, !noalias !7550, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !7663
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !7663
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !7665, !noalias !7550
  br label %bb.s, !dbg !7666

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !7667
  %.neg13.i = mul i64 %.neg12.i, 56, !dbg !7667
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !7669 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !7671 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !7675, !noalias !7550, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !7676
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !7679 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !7680
  %i.fj = and i64 %i.fi, %.val9, !dbg !7683
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !7684, !noalias !7550
  %i.fk = load ptr, ptr %0, align 8, !dbg !7685, !noalias !7550, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !7687
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !7687
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !7689, !noalias !7550
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !7690
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !7690

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !7691
  %i.fp = load i64, ptr %i.i, align 8, !dbg !7694, !noalias !7550, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !7695
  %i.fr = load ptr, ptr %0, align 8, !dbg !7696, !noalias !7550, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !7698
  store i8 -1, ptr %i.fs, align 1, !dbg !7700, !noalias !7550
  %i.ft = load ptr, ptr %0, align 8, !dbg !7701, !noalias !7550, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !7703
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !7703
  store i8 -1, ptr %i.fv, align 1, !dbg !7705, !noalias !7550
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.fd, ptr noundef nonnull align 1 dereferenceable(56) %i.dq, i64 56, i1 false), !dbg !7706, !noalias !7550
  br label %bb.s, !dbg !7708

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !7551
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !7555

bb.t:                                             ; preds = %bb.q
end_hunk_10
begin_hunk_11_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtNtCslpwjCj2YNBy_9polars_io6ndjson6buffer9BufferKeyNtB1S_6BufferE0EB1W_:bb.a
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7771, !noalias !7756
  %i.x = load i64, ptr %i.e, align 8, !dbg !7772, !alias.scope !7774, !noalias !7775, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !7776
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph, !dbg !7776

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !7778, !alias.scope !7774, !noalias !7775, !nonnull !14, !noundef !14 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16, !dbg !7780
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1), !dbg !7782
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !7786
  br label %.preheader, !dbg !7776

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0, !dbg !7787
  br i1 %.not.i367, label %.noexc4, label %._crit_edge, !dbg !7791

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16, !dbg !7792 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16, !dbg !7794
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1), !dbg !7796
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !7800 ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16, !dbg !7801    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !7787
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !7791

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !dbg !7802, !alias.scope !7774, !noalias !7775
  br label %._crit_edge76, !dbg !7802

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ], !dbg !7802 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !7803
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7803, !noalias !7756
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7804, !noalias !7756
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !7805, !noalias !7768

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !7811, !noalias !7768
  unreachable, !dbg !7811

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !7812), !dbg !7766
  call void @llvm.experimental.noalias.scope.decl(metadata !7815), !dbg !7818, !noalias !7768
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7820, !alias.scope !7822, !noalias !7768 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7820, !alias.scope !7822, !noalias !7768, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7823), !dbg !7820, !noalias !7768
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !7826
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !7826

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7828, !alias.scope !7829, !noalias !7768, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7828, !alias.scope !7829, !noalias !7768, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !7830
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !7834    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !7838
  %i.ap = add i64 %i.ao, %i.an, !dbg !7839        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !7839
  call void @llvm.assume(i1 %i.aq), !dbg !7841, !noalias !7768
  %i.ar = sub i64 0, %i.al, !dbg !7843
  %i.as = and i64 %i.ap, %i.ar, !dbg !7844        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !7845
  %i.au = add i64 %i.at, %i.as, !dbg !7846        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !7846
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !7848, !noalias !7768
  call void @llvm.assume(i1 %i.ax), !dbg !7848, !noalias !7768
  %i.ay = icmp ne i64 %i.al, 0, !dbg !7850
  call void @llvm.assume(i1 %i.ay), !dbg !7852, !noalias !7768
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !7768
  %i.az = icmp eq i64 %i.au, 0, !dbg !7853
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, label %bb.i, !dbg !7853

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !7855
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !7857
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !dbg !7858, !noalias !7861
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit, !dbg !7862

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECslpwjCj2YNBy_9polars_io.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7766, !noalias !7756
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io.exit, !dbg !7767

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !7863 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !7863 ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !7863
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !7864
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !7868
  %i.be = zext nneg i16 %i.bd to i64, !dbg !7869
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !7870
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !7872 ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1, !dbg !7873    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7874), !dbg !7877
  %i.bi = load ptr, ptr %0, align 8, !dbg !7878, !alias.scope !7874, !noalias !7885, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !7887
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !7892
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !7893
  %.val3.i = load i64, ptr %i.bl, align 8, !dbg !7899, !noalias !7900, !noundef !14 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3, !dbg !7901
  br i1 %i.bm, label %bb.k, label %bb.j, !dbg !7901

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #39
          to label %.noexc14 unwind label %bb.f, !dbg !7901

.noexc14:                                         ; preds = %bb.j
  unreachable, !dbg !7901

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [288 x i8], ptr %2, i64 %.val3.i, !dbg !7901
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 272, !dbg !7901
  %i.bp = load i64, ptr %i.bo, align 16, !dbg !7901, !noalias !7900, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !7909 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !7912
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !7915, !noalias !7919
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !7922
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !7922 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !7926
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7928, !prof !2467

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !7909
  %.lcssa.i = phi i16 [ %i.bs, %bb.k ], [ %i.cj, %.lr.ph.i ], !dbg !7922
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !7929
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !7932
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !7933
  %i.bw = and i64 %i.bv, %i.t, !dbg !7933         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !7934
  %i.by = load i8, ptr %i.bx, align 1, !dbg !7939, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !7940
  br i1 %i.bz, label %bb.l, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7940, !prof !1726

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !7942
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !7944
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !7944 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !7947
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !7949
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !7949
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !7950
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7952

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %bb.k ]
  %i.cf = add i64 %i.ce, 16, !dbg !7953           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !7955
  %.sroa.0.0.i15 = and i64 %i.cg, %i.t, !dbg !7909 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !7912
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !7915, !noalias !7919
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7922
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !7922 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !7926
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7928, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.l ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !7956
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !7959 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !7960
  %i.cn = and i64 %i.cm, %i.t, !dbg !7963
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !7964
  store i8 %i.cl, ptr %i.co, align 1, !dbg !7967, !noalias !7768
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !7968
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !7968
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !7971, !noalias !7768
  %i.cr = load ptr, ptr %0, align 8, !dbg !7972, !alias.scope !7774, !noalias !7775, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !7975
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !7975
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !7976
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !7978
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !7978
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !7980
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !7982, !noalias !7768
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !7982, !noalias !7768
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !7776
  br i1 %i.cv, label %._crit_edge76.loopexit, label %.preheader, !dbg !7776

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !7984

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7985), !dbg !7988
  %.val11 = load ptr, ptr %0, align 8, !dbg !7989 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !7991
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !7991

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cw = lshr i64 %i.l, 4, !dbg !7995
  %i.cx = and i64 %i.l, 15, !dbg !8000
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !8001
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !8001
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !8001 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !7991
  %i.cz = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !7991
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !7991

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !7991
  br label %bb.n, !dbg !7991

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7991
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !7991

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dh, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !7991
  tail call void @llvm.assume(i1 %lcmp.mod171), !dbg !7991
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !8002 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !8005
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !8007
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !8010
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !8010
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !8012
  br label %._crit_edge.i18, !dbg !8015

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !8015
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !8016, !prof !2640

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dh, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !8002 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !8005
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !8007
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !8010
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !8010
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !8012
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !8018  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !8002
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !8002 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !8005
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !8007
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !8010
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !8010
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !8012
  %niter.next.1 = add i64 %niter, 2, !dbg !7991   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !7991
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n, !dbg !7991

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !8020

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !8021
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !8024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8026, !noalias !8027
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8029
  store ptr null, ptr %i.dn, align 8, !dbg !8029, !noalias !8027
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8029
  store i64 8, ptr %i.do, align 8, !dbg !8029, !noalias !8027
  store ptr %0, ptr %i.a, align 8, !dbg !8029, !noalias !8027
  %i.dp = load i64, ptr %i.i, align 8, !dbg !8031, !alias.scope !7985, !noalias !8033, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !8034
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !8038

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.w
  %.sroa.04.0.i66 = phi i64 [ %i.dq, %bb.w ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i66, 1, !dbg !8039
  %i.dr = load ptr, ptr %0, align 8, !dbg !8042, !noalias !8033, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i66, !dbg !8044
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !8046, !noalias !8033, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !8046
  br i1 %.not.i2, label %bb.o, label %bb.w, !dbg !8049

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1, !dbg !8039
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !8050
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !8052 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !8054

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.x, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8055), !dbg !8058
  %i.dw = load ptr, ptr %0, align 8, !dbg !8059, !alias.scope !8055, !noalias !8063, !nonnull !14, !noundef !14 ; 8 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !8065
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !8068
  %.val3.i20 = load i64, ptr %i.dy, align 8, !dbg !8072, !noalias !8073, !noundef !14 ; 3 uses
  %i.dz = icmp ult i64 %.val3.i20, %3, !dbg !8074
  br i1 %i.dz, label %bb.r, label %bb.p, !dbg !8074

bb.p:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #39
          to label %.noexc22 unwind label %.loopexit.split-lp, !dbg !8074

.noexc22:                                         ; preds = %bb.p
  unreachable, !dbg !8074

.loopexit:                                        ; preds = %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.y, !dbg !8076, !noalias !8033

bb.r:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ea = getelementptr inbounds nuw [288 x i8], ptr %2, i64 %.val3.i20, !dbg !8074
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 272, !dbg !8074
  %i.ec = load i64, ptr %i.eb, align 16, !dbg !8074, !noalias !8073, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !8077, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ec, !dbg !8078 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.07.i24, !dbg !8080
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.ed, align 1, !dbg !8083, !noalias !8087
  %i.ee = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !8090
  %i.ef = bitcast <16 x i1> %i.ee to i16, !dbg !8090 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ef, 0, !dbg !8094
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !8096, !prof !2467

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !8078
  %.lcssa.i29 = phi i16 [ %i.ef, %bb.r ], [ %i.ew, %.lr.ph.i33 ], !dbg !8090
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !8097
  %i.eh = zext nneg i16 %i.eg to i64, !dbg !8100
  %i.ei = add i64 %.sroa.0.0.lcssa.i28, %i.eh, !dbg !8101
  %i.ej = and i64 %i.ei, %.val9, !dbg !8101       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ej, !dbg !8102
  %i.el = load i8, ptr %i.ek, align 1, !dbg !8107, !noundef !14
  %i.em = icmp sgt i8 %i.el, -1, !dbg !8108
  br i1 %i.em, label %bb.s, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !8108, !prof !1726

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dw, align 16, !dbg !8110
  %i.en = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer, !dbg !8112
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !8112 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.eo, 0, !dbg !8115
  %i.ep = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eo, i1 true), !dbg !8117
  %i.eq = zext nneg i16 %i.ep to i64, !dbg !8117
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !8118
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !8120

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.er = phi i64 [ %i.es, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.es = add i64 %i.er, 16, !dbg !8121           ; 2 uses
  %i.et = add i64 %i.es, %.sroa.0.010.i34, !dbg !8123
  %.sroa.0.0.i35 = and i64 %i.et, %.val9, !dbg !8078 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.0.i35, !dbg !8080
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eu, align 1, !dbg !8083, !noalias !8087
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !8090
  %i.ew = bitcast <16 x i1> %i.ev to i16, !dbg !8090 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.ew, 0, !dbg !8094
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !8096, !prof !2514

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eq, %bb.s ], [ %i.ej, %._crit_edge.i27 ] ; 4 uses
  %i.ex = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24, !dbg !8124
  %i.ey = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !8128
  %i.ez = xor i64 %i.ey, %i.ex, !dbg !8131
  %.unshifted.i = and i64 %i.ez, %.val9, !dbg !8131
  %i.fa = icmp ult i64 %.unshifted.i, 16, !dbg !8131
  br i1 %i.fa, label %bb.t, label %bb.u, !dbg !8132, !prof !1398

bb.t:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.fb = lshr i64 %i.ec, 57, !dbg !8134
  %i.fc = trunc nuw nsw i64 %i.fb to i8, !dbg !8137 ; 2 uses
  %i.fd = add i64 %.sroa.04.0.i66, -16, !dbg !8138
  %i.fe = and i64 %.val9, %i.fd, !dbg !8141
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.04.0.i66, !dbg !8142
  store i8 %i.fc, ptr %i.ff, align 1, !dbg !8145, !noalias !8033
  %i.fg = load ptr, ptr %0, align 8, !dbg !8146, !noalias !8033, !nonnull !14, !noundef !14
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe, !dbg !8148
  %i.fi = getelementptr i8, ptr %i.fh, i64 16, !dbg !8148
  store i8 %i.fc, ptr %i.fi, align 1, !dbg !8150, !noalias !8033
  br label %bb.w, !dbg !8151

bb.u:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !8152
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !8152
  %i.fj = getelementptr inbounds i8, ptr %i.dw, i64 %.neg13.i, !dbg !8154 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.0.i5.i30, !dbg !8156 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !8160, !noalias !8033, !noundef !14
  %i.fm = lshr i64 %i.ec, 57, !dbg !8161
  %i.fn = trunc nuw nsw i64 %i.fm to i8, !dbg !8164 ; 2 uses
  %i.fo = add i64 %.sroa.0.0.i5.i30, -16, !dbg !8165
  %i.fp = and i64 %i.fo, %.val9, !dbg !8168
  store i8 %i.fn, ptr %i.fk, align 1, !dbg !8169, !noalias !8033
  %i.fq = load ptr, ptr %0, align 8, !dbg !8170, !noalias !8033, !nonnull !14, !noundef !14
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fp, !dbg !8172
  %i.fs = getelementptr i8, ptr %i.fr, i64 16, !dbg !8172
  store i8 %i.fn, ptr %i.fs, align 1, !dbg !8174, !noalias !8033
  %i.ft = icmp eq i8 %i.fl, -1, !dbg !8175
  br i1 %i.ft, label %bb.v, label %bb.x, !dbg !8175
end_hunk_11
