Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.00?download=true
inline.NumInlined: 639
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3g_21insert_hashed_nocheck0E0EB2s_:bb.a
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !46, !noalias !47, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge65, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !3, !noundef !3 ; 2 uses
  %.val547 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val547, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.064 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.040.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.063 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.062 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.061 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i356 = icmp eq i16 %.sroa.13.061, 0
  br i1 %.not.i356, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.158 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.040.064, %.preheader ] ; 2 uses
  %.sroa.5.157 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.063, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.158) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.040.158, i64 16 ; 3 uses
  %.val48 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val48, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.157, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge65.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre77 = load i64, ptr %i.e, align 8, !alias.scope !46, !noalias !47
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre77, %._crit_edge65.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !45

bb.h:                                             ; preds = %._crit_edge65
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !45
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge65
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !45
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !50, !noalias !45 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !50, !noalias !45, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !45
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !52, !noalias !45, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !52, !noalias !45, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !45
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !45
  call void @llvm.assume(i1 %i.ax), !noalias !45
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !45
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !53
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.061, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.063, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.064, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.062, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !54, !noalias !55, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val2.i = load ptr, ptr %i.bl, align 8, !noalias !56, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.bn = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bm)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bn             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !57
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ], [ %i.ch, %.lr.ph.i ]
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %i.bs
  %i.bu = and i64 %i.bt, %i.t                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !3
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.by = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.ce, %i.t            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !57
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = lshr i64 %i.bn, 57
  %i.cj = trunc nuw nsw i64 %i.ci to i8           ; 2 uses
  %i.ck = add i64 %.sroa.0.0.i5.i, -16
  %i.cl = and i64 %i.ck, %i.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cj, ptr %i.cm, align 1, !noalias !45
  %i.cn = getelementptr i8, ptr %i.q, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store i8 %i.cj, ptr %i.co, align 1, !noalias !45
  %i.cp = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  %i.cs = load i64, ptr %i.cq, align 1, !noalias !45
  store i64 %i.cs, ptr %i.cr, align 1, !noalias !45
  %i.ct = icmp eq i64 %i.bh, 0
  br i1 %i.ct, label %._crit_edge65.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dz, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cu = lshr i64 %i.l, 4
  %i.cv = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cv, 0
  %i.cw = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cu, %i.cw ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cx = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.df, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod118 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.db = icmp ult i64 %i.l, 16
  br i1 %i.db, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.df, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dc, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.dd = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.de = or <2 x i64> %i.dd, splat (i64 -9187201950435737472)
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dh, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.di = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dj = or <2 x i64> %i.di, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dj, ptr %i.dh, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dk, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dl, align 8, !noalias !59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dm, align 8, !noalias !59
  store ptr %0, ptr %i.a, align 8, !noalias !59
  %i.dn = load i64, ptr %i.i, align 8, !alias.scope !58, !noalias !60, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dn, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i55 = phi i64 [ %i.do, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.do = add nuw i64 %.sroa.04.0.i55, 1
  %i.dp = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.04.0.i55
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !60, !noundef !3
  %.not.i2 = icmp eq i8 %i.dr, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i55, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %.neg11.i ; 2 uses
  %i.dt = sub nsw i64 0, %.sroa.04.0.i55
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.du = load ptr, ptr %0, align 8, !alias.scope !61, !noalias !62, !nonnull !3, !noundef !3
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -8
  %.val2.i20 = load ptr, ptr %i.dw, align 8, !noalias !63, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %.val2.i20, i64 16
  %i.dy = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dx)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !60

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i23 = and i64 %.val9, %i.dy         ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i23
  %.sroa.0.0.copyload.i68.i24 = load <16 x i8>, ptr %i.ea, align 1, !noalias !64
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i24, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i9.i25 = icmp eq i16 %i.ec, 0
  br i1 %.not.i9.i25, label %.lr.ph.i32, label %._crit_edge.i26, !prof !5

._crit_edge.i26:                                  ; preds = %.lr.ph.i32, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22
  %.sroa.0.0.lcssa.i27 = phi i64 [ %.sroa.0.07.i23, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ], [ %.sroa.0.0.i34, %.lr.ph.i32 ]
  %.lcssa.i28 = phi i16 [ %i.ec, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ], [ %i.et, %.lr.ph.i32 ]
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i28, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.0.0.lcssa.i27, %i.ee
  %i.eg = and i64 %i.ef, %.val9                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !3
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37, !prof !4

bb.o:                                             ; preds = %._crit_edge.i26
  %.val2.i.i30 = load <16 x i8>, ptr %.val8, align 16
  %i.ek = icmp slt <16 x i8> %.val2.i.i30, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i6.i31 = icmp ne i16 %i.el, 0
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  tail call void @llvm.assume(i1 %.not.i6.i31)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37

.lr.ph.i32:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22, %.lr.ph.i32
  %.sroa.0.010.i33 = phi i64 [ %.sroa.0.0.i34, %.lr.ph.i32 ], [ %.sroa.0.07.i23, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i32 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ]
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i33
  %.sroa.0.0.i34 = and i64 %i.eq, %.val9          ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i34
  %.sroa.0.0.copyload.i6.i35 = load <16 x i8>, ptr %i.er, align 1, !noalias !64
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i35, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i.i36 = icmp eq i16 %i.et, 0
  br i1 %.not.i.i36, label %.lr.ph.i32, label %._crit_edge.i26, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37: ; preds = %bb.o, %._crit_edge.i26
  %.sroa.0.0.i5.i29 = phi i64 [ %i.en, %bb.o ], [ %i.eg, %._crit_edge.i26 ] ; 4 uses
  %i.eu = sub i64 %.sroa.04.0.i55, %.sroa.0.07.i23
  %i.ev = sub i64 %.sroa.0.0.i5.i29, %.sroa.0.07.i23
  %i.ew = xor i64 %i.ev, %i.eu
  %.unshifted.i = and i64 %i.ew, %.val9
  %i.ex = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ex, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37
  %i.ey = lshr i64 %i.dy, 57
  %i.ez = trunc nuw nsw i64 %i.ey to i8           ; 2 uses
  %i.fa = add i64 %.sroa.04.0.i55, -16
  %i.fb = and i64 %.val9, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i55
  store i8 %i.ez, ptr %i.fc, align 1, !noalias !60
  %i.fd = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store i8 %i.ez, ptr %i.ff, align 1, !noalias !60
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37
  %.neg12.i = xor i64 %.sroa.0.0.i5.i29, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fg = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i29 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !60, !noundef !3
  %i.fj = lshr i64 %i.dy, 57
  %i.fk = trunc nuw nsw i64 %i.fj to i8           ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i5.i29, -16
  %i.fm = and i64 %i.fl, %.val9
  store i8 %i.fk, ptr %i.fh, align 1, !noalias !60
  %i.fn = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fk, ptr %i.fp, align 1, !noalias !60
  %i.fq = icmp eq i8 %i.fi, -1
  br i1 %i.fq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fr = add i64 %.sroa.04.0.i55, -16
  %i.fs = load i64, ptr %i.i, align 8, !noalias !60, !noundef !3
  %i.ft = and i64 %i.fs, %i.fr
  %i.fu = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sroa.04.0.i55
  store i8 -1, ptr %i.fv, align 1, !noalias !60
  %i.fw = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.ft
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 -1, ptr %i.fy, align 1, !noalias !60
  %i.fz = load i64, ptr %i.ds, align 1, !noalias !60
  store i64 %i.fz, ptr %i.fg, align 1, !noalias !60
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.fg, i64 noundef 1)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i55, %i.dn
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.ga = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE14reserve_rehashNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  store ptr %i.d, ptr %i.c, align 8, !noalias !94
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !94
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !95, !noalias !96, !noundef !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !alias.scope !95, !noalias !96, !nonnull !3, !noundef !3 ; 2 uses
  %.val542 = load <16 x i8>, ptr %i.y, align 16
  %i.z = icmp sgt <16 x i8> %.val542, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.035.063 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.sroa.035.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.w, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.aa, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.035.157 = phi ptr [ %i.ab, %.noexc4 ], [ %.sroa.035.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ae, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.157) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.035.157, i64 16 ; 3 uses
  %.val43 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val43, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ad, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre80 = load i64, ptr %i.e, align 8, !alias.scope !95, !noalias !96
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.f
  %i.af = phi i64 [ %.pre80, %._crit_edge64.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ag = sub i64 %i.v, %i.af
  store i64 %i.ag, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  store i64 %i.af, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.g, !noalias !97

bb.g:                                             ; preds = %._crit_edge64
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !97
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99), !noalias !97
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !97 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !100, !noalias !97, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101), !noalias !97
  %i.ai = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.aj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !102, !noalias !97, !noundef !3
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !102, !noalias !97, !noundef !3 ; 5 uses
  %i.al = add i64 %.val1.i.i, 1
  %i.am = mul nuw i64 %i.aj, %i.al                ; 2 uses
  %i.an = add i64 %i.ak, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !97
  %i.aq = sub i64 0, %i.ak
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val1.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %i.ak
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !97
  call void @llvm.assume(i1 %i.aw), !noalias !97
  %i.ax = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %i.ax), !noalias !97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !97
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #29, !noalias !103
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ad, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ae, %.noexc4 ] ; 2 uses
  %.sroa.035.1.lcssa = phi ptr [ %.sroa.035.063, %.preheader ], [ %i.ab, %.noexc4 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.061, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !104, !noalias !97, !nonnull !3, !noundef !3
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %.val.i = load i64, ptr %i.bk, align 8, !noalias !105, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %.val.i           ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !106
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %._crit_edge ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i
  %.sroa.0.0.i14 = and i64 %i.cb, %i.t            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i14
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !106
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.i ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %.val.i, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !97
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.cg, ptr %i.cl, align 1, !noalias !97
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !95, !noalias !96, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.co, ptr noundef nonnull align 1 dereferenceable(32) %i.cn, i64 range(i64 8, 145) 32, i1 false), !noalias !97
  %i.cp = icmp eq i64 %i.bg, 0
  br i1 %i.cp, label %._crit_edge64.loopexit, label %.preheader

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.j
  %i.cq = lshr i64 %i.l, 4
  %i.cr = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cr, 0
  %i.cs = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i15.new

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.k

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.db, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  br label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.l, 16
  br i1 %i.cx, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.db, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i17, %bb.j
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i17, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i17 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i17 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dh, align 8, !noalias !108
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.di, align 8, !noalias !108
  store ptr %0, ptr %i.a, align 8, !noalias !108
  %i.dj = load i64, ptr %i.i, align 8, !alias.scope !107, !noalias !109, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dj, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dk, %bb.s ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dk = add nuw i64 %.sroa.04.0.i54, 1
  %i.dl = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i54
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !109, !noundef !3
  %.not.i2 = icmp eq i8 %i.dn, -128
  br i1 %.not.i2, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = shl i64 %.neg.i, 5
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg11.i ; 2 uses
  %i.dp = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

bb.m:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.u unwind label %bb.t, !noalias !109

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.r, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.dr = load ptr, ptr %0, align 8, !alias.scope !110, !noalias !109, !nonnull !3, !noundef !3 ; 8 uses
  %i.ds = getelementptr inbounds [32 x i8], ptr %i.dr, i64 %i.dp
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %.val.i18 = load i64, ptr %i.dt, align 8, !noalias !111, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i19 = and i64 %.val9, %.val.i18     ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.07.i19
  %.sroa.0.0.copyload.i68.i20 = load <16 x i8>, ptr %i.du, align 1, !noalias !112
  %i.dv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i20, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i9.i21 = icmp eq i16 %i.dw, 0
  br i1 %.not.i9.i21, label %.lr.ph.i28, label %._crit_edge.i22, !prof !5

._crit_edge.i22:                                  ; preds = %.lr.ph.i28, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i23 = phi i64 [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i30, %.lr.ph.i28 ]
  %.lcssa.i24 = phi i16 [ %i.dw, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.en, %.lr.ph.i28 ]
  %i.dx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i24, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = add i64 %.sroa.0.0.lcssa.i23, %i.dy
  %i.ea = and i64 %i.dz, %.val9                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !3
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.n, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33, !prof !4

bb.n:                                             ; preds = %._crit_edge.i22
  %.val2.i.i26 = load <16 x i8>, ptr %i.dr, align 16
  %i.ee = icmp slt <16 x i8> %.val2.i.i26, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i6.i27 = icmp ne i16 %i.ef, 0
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64
  tail call void @llvm.assume(i1 %.not.i6.i27)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33

.lr.ph.i28:                                       ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i28
  %.sroa.0.010.i29 = phi i64 [ %.sroa.0.0.i30, %.lr.ph.i28 ], [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ei = phi i64 [ %i.ej, %.lr.ph.i28 ], [ 0, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ej = add i64 %i.ei, 16                       ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.010.i29
  %.sroa.0.0.i30 = and i64 %i.ek, %.val9          ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i30
  %.sroa.0.0.copyload.i6.i31 = load <16 x i8>, ptr %i.el, align 1, !noalias !112
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i31, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.en, 0
  br i1 %.not.i.i32, label %.lr.ph.i28, label %._crit_edge.i22, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33: ; preds = %bb.n, %._crit_edge.i22
  %.sroa.0.0.i5.i25 = phi i64 [ %i.eh, %bb.n ], [ %i.ea, %._crit_edge.i22 ] ; 4 uses
  %i.eo = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i19
  %i.ep = sub i64 %.sroa.0.0.i5.i25, %.sroa.0.07.i19
  %i.eq = xor i64 %i.ep, %i.eo
  %.unshifted.i = and i64 %i.eq, %.val9
  %i.er = icmp ult i64 %.unshifted.i, 16
  br i1 %i.er, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %i.es = lshr i64 %.val.i18, 57
  %i.et = trunc nuw nsw i64 %i.es to i8           ; 2 uses
  %i.eu = add i64 %.sroa.04.0.i54, -16
  %i.ev = and i64 %.val9, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i54
  store i8 %i.et, ptr %i.ew, align 1, !noalias !109
  %i.ex = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  store i8 %i.et, ptr %i.ez, align 1, !noalias !109
  br label %bb.s

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %.neg12.i = xor i64 %.sroa.0.0.i5.i25, -1
  %.neg13.i = shl i64 %.neg12.i, 5
  %i.fa = getelementptr inbounds i8, ptr %i.dr, i64 %.neg13.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i5.i25 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !109, !noundef !3
  %i.fd = lshr i64 %.val.i18, 57
  %i.fe = trunc nuw nsw i64 %i.fd to i8           ; 2 uses
  %i.ff = add i64 %.sroa.0.0.i5.i25, -16
  %i.fg = and i64 %i.ff, %.val9
  store i8 %i.fe, ptr %i.fb, align 1, !noalias !109
  %i.fh = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store i8 %i.fe, ptr %i.fj, align 1, !noalias !109
  %i.fk = icmp eq i8 %i.fc, -1
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fl = add i64 %.sroa.04.0.i54, -16
  %i.fm = load i64, ptr %i.i, align 8, !noalias !109, !noundef !3
  %i.fn = and i64 %i.fm, %i.fl
  %i.fo = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fp, align 1, !noalias !109
  %i.fq = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fn
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 -1, ptr %i.fs, align 1, !noalias !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fa, ptr noundef nonnull align 1 dereferenceable(32) %i.do, i64 32, i1 false), !noalias !109
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.do, ptr noundef nonnull %i.fa, i64 noundef 4)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m

bb.s:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dj
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.m
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !109
  unreachable

bb.u:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.dq

end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_:bb.a
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %i.z = load i64, ptr %i.g, align 8, !alias.scope !146, !noalias !147, !noundef !3 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge63, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !146, !noalias !147, !nonnull !3, !noundef !3 ; 2 uses
  %.val545 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val545, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.062 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.038.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.061 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.060 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.059 = phi i16 [ %i.ad, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i354 = icmp eq i16 %.sroa.13.059, 0
  br i1 %.not.i354, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.156 = phi ptr [ %i.ae, %.noexc4 ], [ %.sroa.038.062, %.preheader ] ; 2 uses
  %.sroa.5.155 = phi i64 [ %i.ah, %.noexc4 ], [ %.sroa.5.061, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.156) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.038.156, i64 16 ; 3 uses
  %.val46 = load <16 x i8>, ptr %i.ae, align 16
  %i.af = icmp sgt <16 x i8> %.val46, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %i.ah = add i64 %.sroa.5.155, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ag, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge63.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.g, align 8, !alias.scope !146, !noalias !147
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %bb.g
  %i.ai = phi i64 [ %.pre75, %._crit_edge63.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.aj = sub i64 %i.x, %i.ai
  store i64 %i.aj, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  store i64 %i.ai, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !145

bb.h:                                             ; preds = %._crit_edge63
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !145
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge63
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149), !noalias !145
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !150, !noalias !145 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !150, !noalias !145, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151), !noalias !145
  %i.al = icmp eq i64 %.val1.i.i, 0
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.am = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !145, !noundef !3
  %i.an = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !145, !noundef !3 ; 5 uses
  %i.ao = add i64 %.val1.i.i, 1
  %i.ap = mul nuw i64 %i.am, %i.ao                ; 2 uses
  %i.aq = add i64 %i.an, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !145
  %i.at = sub i64 0, %i.an
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val1.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %i.an
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !145
  call void @llvm.assume(i1 %i.az), !noalias !145
  %i.ba = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %i.ba), !noalias !145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !145
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bc
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %i.an) #29, !noalias !153
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !144
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.059, %.preheader ], [ %i.ag, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.061, %.preheader ], [ %i.ah, %.noexc4 ] ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.062, %.preheader ], [ %i.ae, %.noexc4 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.060, -1                ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !154, !noalias !155, !nonnull !3, !noundef !3
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = invoke noundef i64 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRDG_INtB4_2FnTRL0_NtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEp6OutputyEL_IBP_TRB12_EE4callB16_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !156
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cf, %i.v            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !156
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.ck, ptr %i.cn, align 1, !noalias !145
  %i.co = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1, !noalias !145
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !146, !noalias !147, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.s, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !145
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !145
  %i.cu = icmp eq i64 %i.bj, 0
  br i1 %i.cu, label %._crit_edge63.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.dz, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cv = lshr i64 %i.n, 4
  %i.cw = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.cw, 0
  %i.cx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod116 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.n, 16
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %i.dg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dm, align 8, !noalias !158
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dn, align 8, !noalias !158
  store ptr %0, ptr %i.a, align 8, !noalias !158
  %i.do = load i64, ptr %i.k, align 8, !alias.scope !157, !noalias !159, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.do, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i53 = phi i64 [ %i.dp, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i53, 1
  %i.dq = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i53
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !159, !noundef !3
  %.not.i2 = icmp eq i8 %i.ds, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i53, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i53
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  %i.dv = load ptr, ptr %0, align 8, !alias.scope !160, !noalias !161, !nonnull !3, !noundef !3
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.dy = invoke noundef i64 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRDG_INtB4_2FnTRL0_NtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEp6OutputyEL_IBP_TRB12_EE4callB16_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dx)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !159

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.k, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i21 = and i64 %.val9, %i.dy         ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i21
  %.sroa.0.0.copyload.i68.i22 = load <16 x i8>, ptr %i.ea, align 1, !noalias !162
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i22, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i9.i23 = icmp eq i16 %i.ec, 0
  br i1 %.not.i9.i23, label %.lr.ph.i30, label %._crit_edge.i24, !prof !5

._crit_edge.i24:                                  ; preds = %.lr.ph.i30, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.07.i21, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ], [ %.sroa.0.0.i32, %.lr.ph.i30 ]
  %.lcssa.i26 = phi i16 [ %i.ec, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ], [ %i.et, %.lr.ph.i30 ]
  %i.ed = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i26, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.0.0.lcssa.i25, %i.ee
  %i.eg = and i64 %i.ef, %.val9                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !3
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35, !prof !4

bb.o:                                             ; preds = %._crit_edge.i24
  %.val2.i.i28 = load <16 x i8>, ptr %.val8, align 16
  %i.ek = icmp slt <16 x i8> %.val2.i.i28, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i6.i29 = icmp ne i16 %i.el, 0
  %i.em = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  call void @llvm.assume(i1 %.not.i6.i29)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35

.lr.ph.i30:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20, %.lr.ph.i30
  %.sroa.0.010.i31 = phi i64 [ %.sroa.0.0.i32, %.lr.ph.i30 ], [ %.sroa.0.07.i21, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i30 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ]
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i31
  %.sroa.0.0.i32 = and i64 %i.eq, %.val9          ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i32
  %.sroa.0.0.copyload.i6.i33 = load <16 x i8>, ptr %i.er, align 1, !noalias !162
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i33, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i.i34 = icmp eq i16 %i.et, 0
  br i1 %.not.i.i34, label %.lr.ph.i30, label %._crit_edge.i24, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35: ; preds = %bb.o, %._crit_edge.i24
  %.sroa.0.0.i5.i27 = phi i64 [ %i.en, %bb.o ], [ %i.eg, %._crit_edge.i24 ] ; 4 uses
  %i.eu = sub i64 %.sroa.04.0.i53, %.sroa.0.07.i21
  %i.ev = sub i64 %.sroa.0.0.i5.i27, %.sroa.0.07.i21
  %i.ew = xor i64 %i.ev, %i.eu
  %.unshifted.i = and i64 %i.ew, %.val9
  %i.ex = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ex, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %i.ey = lshr i64 %i.dy, 57
  %i.ez = trunc nuw nsw i64 %i.ey to i8           ; 2 uses
  %i.fa = add i64 %.sroa.04.0.i53, -16
  %i.fb = and i64 %.val9, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i53
  store i8 %i.ez, ptr %i.fc, align 1, !noalias !159
  %i.fd = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store i8 %i.ez, ptr %i.ff, align 1, !noalias !159
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %.neg12.i = xor i64 %.sroa.0.0.i5.i27, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fg = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i27 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !159, !noundef !3
  %i.fj = lshr i64 %i.dy, 57
  %i.fk = trunc nuw nsw i64 %i.fj to i8           ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i5.i27, -16
  %i.fm = and i64 %i.fl, %.val9
  store i8 %i.fk, ptr %i.fh, align 1, !noalias !159
  %i.fn = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fk, ptr %i.fp, align 1, !noalias !159
  %i.fq = icmp eq i8 %i.fi, -1
  br i1 %i.fq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fr = add i64 %.sroa.04.0.i53, -16
  %i.fs = load i64, ptr %i.k, align 8, !noalias !159, !noundef !3
  %i.ft = and i64 %i.fs, %i.fr
  %i.fu = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sroa.04.0.i53
  store i8 -1, ptr %i.fv, align 1, !noalias !159
  %i.fw = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.ft
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 -1, ptr %i.fy, align 1, !noalias !159
  %i.fz = load i64, ptr %i.dt, align 1, !noalias !159
  store i64 %i.fz, ptr %i.fg, align 1, !noalias !159
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.fg, i64 noundef 1)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i53, %i.do
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !159
  unreachable
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtB1s_4hash12TypeIdHasherEE0EB1s_:bb.a
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !196, !noalias !197, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !196, !noalias !197, !nonnull !3, !noundef !3 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !alias.scope !196, !noalias !197
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !195

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !195
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199), !noalias !195
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !200, !noalias !195 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !200, !noalias !195, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201), !noalias !195
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !202, !noalias !195, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !202, !noalias !195, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !195
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !195
  call void @llvm.assume(i1 %i.ax), !noalias !195
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !195
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !203
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !204, !noalias !205, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24
  %i.bm = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCsC8CapfvpQ1_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdEBU_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !noalias !206
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ], [ %i.cg, %.lr.ph.i ]
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br
  %i.bt = and i64 %i.bs, %i.t                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ]
  %i.cc = add i64 %i.cb, 16                       ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !206
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ci, ptr %i.cl, align 1, !noalias !195
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 %i.ci, ptr %i.cn, align 1, !noalias !195
  %i.co = load ptr, ptr %0, align 8, !alias.scope !196, !noalias !197, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 1 dereferenceable(24) %i.cp, i64 range(i64 8, 145) 24, i1 false), !noalias !195
  %i.cr = icmp eq i64 %i.bh, 0
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4
  %i.ct = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.ct, 0
  %i.cu = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dc, ptr %i.da, align 16
  %i.dd = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dh, ptr %i.df, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dj, align 8, !noalias !208
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 24, ptr %i.dk, align 8, !noalias !208
  store ptr %0, ptr %i.a, align 8, !noalias !208
  %i.dl = load i64, ptr %i.i, align 8, !alias.scope !207, !noalias !209, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1
  %i.dn = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54
  %i.dp = load i8, ptr %i.do, align 1, !noalias !209, !noundef !3
  %.not.i2 = icmp eq i8 %i.dp, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = mul i64 %.neg.i, 24
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !alias.scope !210, !noalias !211, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds [24 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -24
  %i.dv = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCsC8CapfvpQ1_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdEBU_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !209

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv         ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !noalias !212
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer
  %i.dz = bitcast <16 x i1> %i.dy to i16          ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !prof !5

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ]
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ], [ %i.eq, %.lr.ph.i31 ]
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb
  %i.ed = and i64 %i.ec, %.val9                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !noundef !3
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !prof !4

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  tail call void @llvm.assume(i1 %.not.i6.i30)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ]
  %i.em = add i64 %i.el, 16                       ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32
  %.sroa.0.0.i33 = and i64 %i.en, %.val9          ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !noalias !212
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22
  %i.et = xor i64 %i.es, %i.er
  %.unshifted.i = and i64 %i.et, %.val9
  %i.eu = icmp ult i64 %.unshifted.i, 16
  br i1 %i.eu, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8           ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16
  %i.ey = and i64 %.val9, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54
  store i8 %i.ew, ptr %i.ez, align 1, !noalias !209
  %i.fa = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  store i8 %i.ew, ptr %i.fc, align 1, !noalias !209
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1
  %.neg13.i = mul i64 %.neg12.i, 24
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !209, !noundef !3
  %i.fg = lshr i64 %i.dv, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i8           ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16
  %i.fj = and i64 %i.fi, %.val9
  store i8 %i.fh, ptr %i.fe, align 1, !noalias !209
  %i.fk = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store i8 %i.fh, ptr %i.fm, align 1, !noalias !209
  %i.fn = icmp eq i8 %i.ff, -1
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16
  %i.fp = load i64, ptr %i.i, align 8, !noalias !209, !noundef !3
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fs, align 1, !noalias !209
  %i.ft = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 -1, ptr %i.fv, align 1, !noalias !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fd, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !209
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.fd, i64 noundef 3)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !209
  unreachable

end_hunk_3
begin_hunk_4_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE14reserve_rehashNCINvMs6_NtB8_9raw_entryINtB2s_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !242
  store ptr %i.d, ptr %i.c, align 8, !noalias !242
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !243, !noalias !244, !noundef !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !alias.scope !243, !noalias !244, !nonnull !3, !noundef !3 ; 2 uses
  %.val542 = load <16 x i8>, ptr %i.y, align 16
  %i.z = icmp sgt <16 x i8> %.val542, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.035.063 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.sroa.035.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.w, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.aa, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.035.157 = phi ptr [ %i.ab, %.noexc4 ], [ %.sroa.035.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ae, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.157) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.035.157, i64 16 ; 3 uses
  %.val43 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val43, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ad, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre80 = load i64, ptr %i.e, align 8, !alias.scope !243, !noalias !244
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.f
  %i.af = phi i64 [ %.pre80, %._crit_edge64.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ag = sub i64 %i.v, %i.af
  store i64 %i.ag, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  store i64 %i.af, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.g, !noalias !245

bb.g:                                             ; preds = %._crit_edge64
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !245
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !245
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !248, !noalias !245 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !248, !noalias !245, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249), !noalias !245
  %i.ai = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.aj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !250, !noalias !245, !noundef !3
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !250, !noalias !245, !noundef !3 ; 5 uses
  %i.al = add i64 %.val1.i.i, 1
  %i.am = mul nuw i64 %i.aj, %i.al                ; 2 uses
  %i.an = add i64 %i.ak, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !245
  %i.aq = sub i64 0, %i.ak
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val1.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %i.ak
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !245
  call void @llvm.assume(i1 %i.aw), !noalias !245
  %i.ax = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %i.ax), !noalias !245
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !245
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #29, !noalias !251
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ad, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ae, %.noexc4 ] ; 2 uses
  %.sroa.035.1.lcssa = phi ptr [ %.sroa.035.063, %.preheader ], [ %i.ab, %.noexc4 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.061, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !252, !noalias !245, !nonnull !3, !noundef !3
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -24
  %.val.i = load i64, ptr %i.bk, align 8, !noalias !253, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %.val.i           ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !254
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %._crit_edge ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i
  %.sroa.0.0.i14 = and i64 %i.cb, %i.t            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i14
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !254
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.i ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %.val.i, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !245
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.cg, ptr %i.cl, align 1, !noalias !245
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !243, !noalias !244, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(24) %i.cn, i64 range(i64 8, 145) 24, i1 false), !noalias !245
  %i.cp = icmp eq i64 %i.bg, 0
  br i1 %i.cp, label %._crit_edge64.loopexit, label %.preheader

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.j
  %i.cq = lshr i64 %i.l, 4
  %i.cr = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cr, 0
  %i.cs = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i15.new

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.k

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.db, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  br label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.l, 16
  br i1 %i.cx, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.db, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i17, %bb.j
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i17, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i17 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i17 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dh, align 8, !noalias !256
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 24, ptr %i.di, align 8, !noalias !256
  store ptr %0, ptr %i.a, align 8, !noalias !256
  %i.dj = load i64, ptr %i.i, align 8, !alias.scope !255, !noalias !257, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dj, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dk, %bb.s ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dk = add nuw i64 %.sroa.04.0.i54, 1
  %i.dl = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i54
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !257, !noundef !3
  %.not.i2 = icmp eq i8 %i.dn, -128
  br i1 %.not.i2, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = mul i64 %.neg.i, 24
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg11.i ; 2 uses
  %i.dp = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

bb.m:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.u unwind label %bb.t, !noalias !257

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.r, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.dr = load ptr, ptr %0, align 8, !alias.scope !258, !noalias !257, !nonnull !3, !noundef !3 ; 8 uses
  %i.ds = getelementptr inbounds [24 x i8], ptr %i.dr, i64 %i.dp
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -24
  %.val.i18 = load i64, ptr %i.dt, align 8, !noalias !259, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i19 = and i64 %.val9, %.val.i18     ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.07.i19
  %.sroa.0.0.copyload.i68.i20 = load <16 x i8>, ptr %i.du, align 1, !noalias !260
  %i.dv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i20, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i9.i21 = icmp eq i16 %i.dw, 0
  br i1 %.not.i9.i21, label %.lr.ph.i28, label %._crit_edge.i22, !prof !5

._crit_edge.i22:                                  ; preds = %.lr.ph.i28, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i23 = phi i64 [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i30, %.lr.ph.i28 ]
  %.lcssa.i24 = phi i16 [ %i.dw, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.en, %.lr.ph.i28 ]
  %i.dx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i24, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = add i64 %.sroa.0.0.lcssa.i23, %i.dy
  %i.ea = and i64 %i.dz, %.val9                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !3
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.n, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33, !prof !4

bb.n:                                             ; preds = %._crit_edge.i22
  %.val2.i.i26 = load <16 x i8>, ptr %i.dr, align 16
  %i.ee = icmp slt <16 x i8> %.val2.i.i26, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i6.i27 = icmp ne i16 %i.ef, 0
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64
  tail call void @llvm.assume(i1 %.not.i6.i27)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33

.lr.ph.i28:                                       ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i28
  %.sroa.0.010.i29 = phi i64 [ %.sroa.0.0.i30, %.lr.ph.i28 ], [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ei = phi i64 [ %i.ej, %.lr.ph.i28 ], [ 0, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ej = add i64 %i.ei, 16                       ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.010.i29
  %.sroa.0.0.i30 = and i64 %i.ek, %.val9          ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i30
  %.sroa.0.0.copyload.i6.i31 = load <16 x i8>, ptr %i.el, align 1, !noalias !260
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i31, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.en, 0
  br i1 %.not.i.i32, label %.lr.ph.i28, label %._crit_edge.i22, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33: ; preds = %bb.n, %._crit_edge.i22
  %.sroa.0.0.i5.i25 = phi i64 [ %i.eh, %bb.n ], [ %i.ea, %._crit_edge.i22 ] ; 4 uses
  %i.eo = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i19
  %i.ep = sub i64 %.sroa.0.0.i5.i25, %.sroa.0.07.i19
  %i.eq = xor i64 %i.ep, %i.eo
  %.unshifted.i = and i64 %i.eq, %.val9
  %i.er = icmp ult i64 %.unshifted.i, 16
  br i1 %i.er, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %i.es = lshr i64 %.val.i18, 57
  %i.et = trunc nuw nsw i64 %i.es to i8           ; 2 uses
  %i.eu = add i64 %.sroa.04.0.i54, -16
  %i.ev = and i64 %.val9, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i54
  store i8 %i.et, ptr %i.ew, align 1, !noalias !257
  %i.ex = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  store i8 %i.et, ptr %i.ez, align 1, !noalias !257
  br label %bb.s

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %.neg12.i = xor i64 %.sroa.0.0.i5.i25, -1
  %.neg13.i = mul i64 %.neg12.i, 24
  %i.fa = getelementptr inbounds i8, ptr %i.dr, i64 %.neg13.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i5.i25 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !257, !noundef !3
  %i.fd = lshr i64 %.val.i18, 57
  %i.fe = trunc nuw nsw i64 %i.fd to i8           ; 2 uses
  %i.ff = add i64 %.sroa.0.0.i5.i25, -16
  %i.fg = and i64 %i.ff, %.val9
  store i8 %i.fe, ptr %i.fb, align 1, !noalias !257
  %i.fh = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store i8 %i.fe, ptr %i.fj, align 1, !noalias !257
  %i.fk = icmp eq i8 %i.fc, -1
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fl = add i64 %.sroa.04.0.i54, -16
  %i.fm = load i64, ptr %i.i, align 8, !noalias !257, !noundef !3
  %i.fn = and i64 %i.fm, %i.fl
  %i.fo = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fp, align 1, !noalias !257
  %i.fq = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fn
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 -1, ptr %i.fs, align 1, !noalias !257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fa, ptr noundef nonnull align 1 dereferenceable(24) %i.do, i64 24, i1 false), !noalias !257
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.do, ptr noundef nonnull %i.fa, i64 noundef 3)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m

bb.s:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dj
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.m
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !257
  unreachable

bb.u:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.dq

end_hunk_4
begin_hunk_5_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_:bb.a
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !294, !noalias !295, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !294, !noalias !295, !nonnull !3, !noundef !3 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !alias.scope !294, !noalias !295
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !293

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !293
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.experimental.noalias.scope.decl(metadata !297), !noalias !293
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !298, !noalias !293 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !298, !noalias !293, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299), !noalias !293
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !300, !noalias !293, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !300, !noalias !293, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !293
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !293
  call void @llvm.assume(i1 %i.ax), !noalias !293
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !293
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !293
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !301
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !302, !noalias !303, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [144 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -144
  %i.bm = invoke noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bl)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !noalias !304
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ], [ %i.cg, %.lr.ph.i ]
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br
  %i.bt = and i64 %i.bs, %i.t                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ]
  %i.cc = add i64 %i.cb, 16                       ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !304
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ci, ptr %i.cl, align 1, !noalias !293
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 %i.ci, ptr %i.cn, align 1, !noalias !293
  %i.co = load ptr, ptr %0, align 8, !alias.scope !294, !noalias !295, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 144
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 144
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.cq, ptr noundef nonnull align 1 dereferenceable(144) %i.cp, i64 range(i64 8, 145) 144, i1 false), !noalias !293
  %i.cr = icmp eq i64 %i.bh, 0
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4
  %i.ct = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.ct, 0
  %i.cu = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dc, ptr %i.da, align 16
  %i.dd = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dh, ptr %i.df, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dj, align 8, !noalias !306
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 144, ptr %i.dk, align 8, !noalias !306
  store ptr %0, ptr %i.a, align 8, !noalias !306
  %i.dl = load i64, ptr %i.i, align 8, !alias.scope !305, !noalias !307, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1
  %i.dn = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54
  %i.dp = load i8, ptr %i.do, align 1, !noalias !307, !noundef !3
  %.not.i2 = icmp eq i8 %i.dp, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = mul i64 %.neg.i, 144
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !alias.scope !308, !noalias !309, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds [144 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -144
  %i.dv = invoke noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.du)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !307

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv         ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !noalias !310
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer
  %i.dz = bitcast <16 x i1> %i.dy to i16          ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !prof !5

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ]
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ], [ %i.eq, %.lr.ph.i31 ]
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb
  %i.ed = and i64 %i.ec, %.val9                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !noundef !3
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !prof !4

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  tail call void @llvm.assume(i1 %.not.i6.i30)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ]
  %i.em = add i64 %i.el, 16                       ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32
  %.sroa.0.0.i33 = and i64 %i.en, %.val9          ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !noalias !310
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22
  %i.et = xor i64 %i.es, %i.er
  %.unshifted.i = and i64 %i.et, %.val9
  %i.eu = icmp ult i64 %.unshifted.i, 16
  br i1 %i.eu, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8           ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16
  %i.ey = and i64 %.val9, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54
  store i8 %i.ew, ptr %i.ez, align 1, !noalias !307
  %i.fa = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  store i8 %i.ew, ptr %i.fc, align 1, !noalias !307
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1
  %.neg13.i = mul i64 %.neg12.i, 144
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !307, !noundef !3
  %i.fg = lshr i64 %i.dv, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i8           ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16
  %i.fj = and i64 %i.fi, %.val9
  store i8 %i.fh, ptr %i.fe, align 1, !noalias !307
  %i.fk = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store i8 %i.fh, ptr %i.fm, align 1, !noalias !307
  %i.fn = icmp eq i8 %i.ff, -1
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16
  %i.fp = load i64, ptr %i.i, align 8, !noalias !307, !noundef !3
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fs, align 1, !noalias !307
  %i.ft = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 -1, ptr %i.fv, align 1, !noalias !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.fd, ptr noundef nonnull align 1 dereferenceable(144) %i.dq, i64 144, i1 false), !noalias !307
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.fd, i64 noundef 18)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !307
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.t
  %.pre = load i64, ptr %i.i, align 8, !noalias !307 ; 2 uses
  %.pre77 = add i64 %.pre, 1
  %i.fx = lshr i64 %.pre77, 3
  %i.fy = mul nuw i64 %i.fx, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fy, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.fz = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 8
  %.sroa.01.0.i = select i1 %i.ga, i64 %i.fz, i64 %.pre-phi
  %i.gb = load i64, ptr %i.e, align 8, !noalias !307, !noundef !3
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = sub i64 %.sroa.01.0.i, %i.gb
  store i64 %i.gd, ptr %i.gc, align 8, !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !311
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.ge = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gf = insertvalue { i64, i64 } %i.ge, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gf
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB26_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !329, !noalias !330, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !329, !noalias !330, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.s, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !332
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %2)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !332, !noundef !3 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !332 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !332 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !332
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !333
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !332
  store ptr %i.d, ptr %i.c, align 8, !noalias !332
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !334, !noalias !335, !noundef !3
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !334, !noalias !335, !nonnull !3, !noundef !3
  br label %.noexc4

.noexc4:                                          ; preds = %.noexc4, %bb.h
  %.sroa.036.0 = phi ptr [ %i.z, %bb.h ], [ %i.aa, %.noexc4 ] ; 2 uses
  %.sroa.13.0.in.in = load <16 x i8>, ptr %.sroa.036.0, align 16
  %.sroa.13.0.in = icmp sgt <16 x i8> %.sroa.13.0.in.in, splat (i8 -1)
  %.sroa.13.0 = bitcast <16 x i1> %.sroa.13.0.in to i16
  %.not.i3 = icmp eq i16 %.sroa.13.0, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 16
  br i1 %.not.i3, label %.noexc4, label %bb.l

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.j, !noalias !333

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !333
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !333
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !338, !noalias !333 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !338, !noalias !333, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339), !noalias !333
  %i.ac = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ad = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !340, !noalias !333, !noundef !3
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !340, !noalias !333, !noundef !3 ; 5 uses
  %i.af = add i64 %.val1.i.i, 1
  %i.ag = mul nuw i64 %i.ad, %i.af                ; 2 uses
  %i.ah = add i64 %i.ae, -1
  %i.ai = add i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  call void @llvm.assume(i1 %i.aj), !noalias !333
  %i.ak = sub i64 0, %i.ae
  %i.al = and i64 %i.ai, %i.ak                    ; 3 uses
  %i.am = add i64 %.val1.i.i, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = sub nuw i64 -9223372036854775808, %i.ae
  %i.aq = icmp ule i64 %i.an, %i.ap
  call void @llvm.assume(i1 %i.ao), !noalias !333
  call void @llvm.assume(i1 %i.aq), !noalias !333
  %i.ar = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %i.ar), !noalias !333
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !333
  %i.as = icmp eq i64 %i.an, 0
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.at = sub nsw i64 0, %i.al
  %i.au = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.at
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #29, !noalias !341
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !332
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %.noexc4
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.l
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.bu, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.m
  %i.av = lshr i64 %i.l, 4
  %i.aw = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.aw, 0
  %i.ax = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.av, %i.ax ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ay = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.bg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.az = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.az, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ba = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.bb = or <2 x i64> %i.ba, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bb, ptr %i.az, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.bc = icmp ult i64 %i.l, 16
  br i1 %i.bc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.bg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.bd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.be = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.bf = or <2 x i64> %i.be, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bf, ptr %i.bd, align 16
  %i.bg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.bi, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.bj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.bk = or <2 x i64> %i.bj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bk, ptr %i.bi, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !343
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.bm, align 8, !noalias !343
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.bn, align 8, !noalias !343
  store ptr %0, ptr %i.a, align 8, !noalias !343
  %i.bo = load i64, ptr %i.i, align 8, !alias.scope !342, !noalias !344, !noundef !3 ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %exitcond.not49 = icmp eq i64 %i.bp, 0
  br i1 %exitcond.not49, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.bq = load ptr, ptr %0, align 8, !noalias !344, !nonnull !3, !noundef !3
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.br = add i64 %.sroa.04.0.i50, 1
  %exitcond.not = icmp eq i64 %.sroa.04.0.i50, %i.bo
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.04.0.i50 = phi i64 [ %i.br, %bb.o ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.i50
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !344, !noundef !3
  %.not.i2 = icmp eq i8 %i.bt, -128
  br i1 %.not.i2, label %bb.p, label %bb.o

bb.p:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
          to label %.noexc19 unwind label %bb.q

.noexc19:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.r, !noalias !344

bb.r:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !344
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.o, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.bw = icmp ult i64 %i.bo, 8
  %i.bx = lshr i64 %i.bp, 3
  %i.by = mul nuw i64 %i.bx, 7
  %.sroa.01.0.i = select i1 %i.bw, i64 %i.bo, i64 %i.by
  %i.bz = load i64, ptr %i.e, align 8, !noalias !344, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = sub i64 %.sroa.01.0.i, %i.bz
  store i64 %i.cb, ptr %i.ca, align 8, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !343
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.s:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !345
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.cc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cd = insertvalue { i64, i64 } %i.cc, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.cd
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1U_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !373, !noalias !374, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !373, !noalias !374, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %bb.z, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !376
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %4)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !376, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !376 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !376 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !377
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  store ptr %i.d, ptr %i.c, align 8, !noalias !376
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !376
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !378, !noalias !379, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !378, !noalias !379, !nonnull !3, !noundef !3 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0
  br i1 %.not.i367, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !alias.scope !378, !noalias !379
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !377

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !377
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381), !noalias !377
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !382, !noalias !377 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !382, !noalias !377, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !383), !noalias !377
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !384, !noalias !377, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !384, !noalias !377, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !377
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !377
  call void @llvm.assume(i1 %i.ax), !noalias !377
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !377
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !377
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !385
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !386, !noalias !387, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val3.i = load i64, ptr %i.bl, align 8, !noalias !388, !noundef !3 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !388, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !389
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %bb.k ], [ %i.ci, %.lr.ph.i ]
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.t                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.l, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %bb.k ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cf, %i.t            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !389
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ck, ptr %i.cn, align 1, !noalias !377
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1, !noalias !377
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !378, !noalias !379, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !377
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !377
  %i.cu = icmp eq i64 %i.bh, 0
  br i1 %i.cu, label %._crit_edge76.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cv = lshr i64 %i.l, 4
  %i.cw = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cw, 0
  %i.cx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.l, 16
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %i.dg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dm, align 8, !noalias !391
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dn, align 8, !noalias !391
  store ptr %0, ptr %i.a, align 8, !noalias !391
  %i.do = load i64, ptr %i.i, align 8, !alias.scope !390, !noalias !392, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.do, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.x
  %.sroa.04.0.i66 = phi i64 [ %i.dp, %bb.x ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i66, 1
  %i.dq = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i66
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !392, !noundef !3
  %.not.i2 = icmp eq i8 %i.ds, -128
  br i1 %.not.i2, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.w, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.dv = load ptr, ptr %0, align 8, !alias.scope !393, !noalias !394, !nonnull !3, !noundef !3 ; 8 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %.val3.i20 = load i64, ptr %i.dx, align 8, !noalias !395, !noundef !3 ; 3 uses
  %i.dy = icmp ult i64 %.val3.i20, %3
  br i1 %i.dy, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.p
  unreachable

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.y, !noalias !392

bb.r:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i20
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !395, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ea         ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.eb, align 1, !noalias !396
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !prof !5

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ]
  %.lcssa.i29 = phi i16 [ %i.ed, %bb.r ], [ %i.eu, %.lr.ph.i33 ]
  %i.ee = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i28, %i.ef
  %i.eh = and i64 %i.eg, %.val9                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !3
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !prof !4

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dv, align 16
  %i.el = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.em, 0
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  tail call void @llvm.assume(i1 %.not.i6.i32)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i34
  %.sroa.0.0.i35 = and i64 %i.er, %.val9          ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.es, align 1, !noalias !396
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eo, %bb.s ], [ %i.eh, %._crit_edge.i27 ] ; 4 uses
  %i.ev = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24
  %i.ew = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24
  %i.ex = xor i64 %i.ew, %i.ev
  %.unshifted.i = and i64 %i.ex, %.val9
  %i.ey = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ez = lshr i64 %i.ea, 57
  %i.fa = trunc nuw nsw i64 %i.ez to i8           ; 2 uses
  %i.fb = add i64 %.sroa.04.0.i66, -16
  %i.fc = and i64 %.val9, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i66
  store i8 %i.fa, ptr %i.fd, align 1, !noalias !392
  %i.fe = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  store i8 %i.fa, ptr %i.fg, align 1, !noalias !392
  br label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fh = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !392, !noundef !3
  %i.fk = lshr i64 %i.ea, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i30, -16
  %i.fn = and i64 %i.fm, %.val9
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !392
  %i.fo = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store i8 %i.fl, ptr %i.fq, align 1, !noalias !392
  %i.fr = icmp eq i8 %i.fj, -1
  br i1 %i.fr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fs = add i64 %.sroa.04.0.i66, -16
  %i.ft = load i64, ptr %i.i, align 8, !noalias !392, !noundef !3
  %i.fu = and i64 %i.ft, %i.fs
  %i.fv = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.sroa.04.0.i66
  store i8 -1, ptr %i.fw, align 1, !noalias !392
  %i.fx = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fu
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE0EB1U_:bb.a
.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !430, !noalias !431, !nonnull !3, !noundef !3 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0
  br i1 %.not.i367, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !alias.scope !430, !noalias !431
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !429

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !429
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433), !noalias !429
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !434, !noalias !429 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !434, !noalias !429, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !435), !noalias !429
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !436, !noalias !429, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !436, !noalias !429, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !429
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !429
  call void @llvm.assume(i1 %i.ax), !noalias !429
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !429
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !429
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !437
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !428
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !438, !noalias !439, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val3.i = load i64, ptr %i.bl, align 8, !noalias !440, !noundef !3 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !440, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !441
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %bb.k ], [ %i.ci, %.lr.ph.i ]
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.t                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.l, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %bb.k ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cf, %i.t            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !441
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ck, ptr %i.cn, align 1, !noalias !429
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1, !noalias !429
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !430, !noalias !431, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !429
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !429
  %i.cu = icmp eq i64 %i.bh, 0
  br i1 %i.cu, label %._crit_edge76.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cv = lshr i64 %i.l, 4
  %i.cw = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cw, 0
  %i.cx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.l, 16
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %i.dg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !443
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dm, align 8, !noalias !443
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dn, align 8, !noalias !443
  store ptr %0, ptr %i.a, align 8, !noalias !443
  %i.do = load i64, ptr %i.i, align 8, !alias.scope !442, !noalias !444, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.do, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.x
  %.sroa.04.0.i66 = phi i64 [ %i.dp, %bb.x ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i66, 1
  %i.dq = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i66
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !444, !noundef !3
  %.not.i2 = icmp eq i8 %i.ds, -128
  br i1 %.not.i2, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.w, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.dv = load ptr, ptr %0, align 8, !alias.scope !445, !noalias !446, !nonnull !3, !noundef !3 ; 8 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %.val3.i20 = load i64, ptr %i.dx, align 8, !noalias !447, !noundef !3 ; 3 uses
  %i.dy = icmp ult i64 %.val3.i20, %3
  br i1 %i.dy, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.p
  unreachable

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.y, !noalias !444

bb.r:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i20
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !447, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ea         ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.eb, align 1, !noalias !448
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !prof !5

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ]
  %.lcssa.i29 = phi i16 [ %i.ed, %bb.r ], [ %i.eu, %.lr.ph.i33 ]
  %i.ee = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i28, %i.ef
  %i.eh = and i64 %i.eg, %.val9                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !3
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !prof !4

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dv, align 16
  %i.el = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.em, 0
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  tail call void @llvm.assume(i1 %.not.i6.i32)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i34
  %.sroa.0.0.i35 = and i64 %i.er, %.val9          ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.es, align 1, !noalias !448
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eo, %bb.s ], [ %i.eh, %._crit_edge.i27 ] ; 4 uses
  %i.ev = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24
  %i.ew = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24
  %i.ex = xor i64 %i.ew, %i.ev
  %.unshifted.i = and i64 %i.ex, %.val9
  %i.ey = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ez = lshr i64 %i.ea, 57
  %i.fa = trunc nuw nsw i64 %i.ez to i8           ; 2 uses
  %i.fb = add i64 %.sroa.04.0.i66, -16
  %i.fc = and i64 %.val9, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i66
  store i8 %i.fa, ptr %i.fd, align 1, !noalias !444
  %i.fe = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  store i8 %i.fa, ptr %i.fg, align 1, !noalias !444
  br label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fh = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !444, !noundef !3
  %i.fk = lshr i64 %i.ea, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i30, -16
  %i.fn = and i64 %i.fm, %.val9
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !444
  %i.fo = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store i8 %i.fl, ptr %i.fq, align 1, !noalias !444
  %i.fr = icmp eq i8 %i.fj, -1
  br i1 %i.fr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fs = add i64 %.sroa.04.0.i66, -16
  %i.ft = load i64, ptr %i.i, align 8, !noalias !444, !noundef !3
  %i.fu = and i64 %i.ft, %i.fs
  %i.fv = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.sroa.04.0.i66
  store i8 -1, ptr %i.fw, align 1, !noalias !444
  %i.fx = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fu
end_hunk_6
begin_hunk_7_@_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEE14insert_no_growBT_:bb.a
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !3  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1273
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !1276
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !3  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1276
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE5drainBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 26), (32, 80)) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1279
  %i.f = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 12, 81) %2, ptr noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !3
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !1282
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !5

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !3
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !1282
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !3
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !3
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE3newBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBY_7runtime16dependency_graph8SmallSetBU_Kj4_EEE3newBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBU_EEE3newBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE3newB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE3newB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvMsn_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_7RawIterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE13drop_elementsBR_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 8, 145) %2) unnamed_addr #4 {
bb.a:
  %i.a = and i64 %2, 7                            ; 2 uses
  %i.b = lshr i64 %2, 3
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 248                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !alias.scope !1292, !noalias !1293
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !alias.scope !1293, !noalias !1292
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !1292, !noalias !1293
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !1293, !noalias !1292
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !alias.scope !1294, !noalias !1295
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !alias.scope !1295, !noalias !1294
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !alias.scope !1294, !noalias !1295
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !alias.scope !1295, !noalias !1294
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %3 = and i64 %2, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.l, align 1, !alias.scope !1296, !noalias !1297
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.m, align 1, !alias.scope !1297, !noalias !1296
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.l, align 1, !alias.scope !1296, !noalias !1297
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.m, align 1, !alias.scope !1297, !noalias !1296
  br label %_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1302, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE13drop_elementsBS_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !1303
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %.not12.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1303 ; 2 uses
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted14.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1303
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !1303
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !1303
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted14.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val10.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !1303
  %i.k = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1303
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1302
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i unwind label %bb.d, !noalias !1302

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsC8CapfvpQ1_5salsa.exit.i.i.i unwind label %bb.e, !noalias !1302

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1302
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !1302
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE13drop_elementsBS_.exit, label %bb.b

_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE13drop_elementsBS_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i, %bb.a
  %i.y = load i64, ptr %0, align 8, !range !1305, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE13drop_elementsBS_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.y) #29
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.g, %bb.f, %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE13drop_elementsBS_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !1308, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !1308 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !1308
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !1308
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !1308
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !1308
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !1308
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsK_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawDrainTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) initializes((56, 72)) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 -1, i64 %i.f, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.g, align 8
  %i.h = icmp ult i64 %i.c, 8
  %i.i = add i64 %i.c, 1
end_hunk_7
