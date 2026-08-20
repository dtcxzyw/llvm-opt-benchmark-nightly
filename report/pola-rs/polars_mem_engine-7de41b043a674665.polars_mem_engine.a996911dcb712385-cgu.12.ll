inline.NumInlined: 2792
inline.NumDeleted: 1412
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !211, !noalias !197
  store ptr %i.d, ptr %i.c, align 8, !dbg !217, !noalias !197
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !217 ; 2 uses
  store i64 240, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !217, !noalias !197
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !217 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !217, !noalias !197
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !217 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !217, !noalias !197
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !217 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !217, !noalias !197
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !217 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !217, !noalias !197
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !217 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !217, !noalias !197
  %i.x = load i64, ptr %i.e, align 8, !dbg !220, !alias.scope !225, !noalias !226, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !227
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !227

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !233, !alias.scope !225, !noalias !226, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !236
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !244
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !259
  br label %.preheader, !dbg !227

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !260
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !274

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !275 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !282
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !285
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !292 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !293     ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !260
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !274

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !294, !alias.scope !225, !noalias !226
  br label %._crit_edge64, !dbg !294

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !294 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !295
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !295, !noalias !197
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !296, !noalias !197
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.h, !dbg !297, !noalias !214

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !320, !noalias !214
  unreachable, !dbg !320

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !321), !dbg !212
  call void @llvm.experimental.noalias.scope.decl(metadata !324), !dbg !327, !noalias !214
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !330, !alias.scope !336, !noalias !214 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !330, !alias.scope !336, !noalias !214, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337), !dbg !330, !noalias !214
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !340
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !340

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !345, !alias.scope !346, !noalias !214, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !345, !alias.scope !346, !noalias !214, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !347
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !354     ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !363
  %i.ap = add i64 %i.ao, %i.an, !dbg !364         ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !364
  call void @llvm.assume(i1 %i.aq), !dbg !367, !noalias !214
  %i.ar = sub i64 0, %i.al, !dbg !370
  %i.as = and i64 %i.ap, %i.ar, !dbg !371         ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !372
  %i.au = add i64 %i.at, %i.as, !dbg !374         ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !374
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !376, !noalias !214
  call void @llvm.assume(i1 %i.ax), !dbg !376, !noalias !214
  %i.ay = icmp ne i64 %i.al, 0, !dbg !379
  call void @llvm.assume(i1 %i.ay), !dbg !386, !noalias !214
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !214
  %i.az = icmp eq i64 %i.au, 0, !dbg !387
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !387

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !397
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !401
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #31, !dbg !402, !noalias !409
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !410

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !212, !noalias !197
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !213

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !411 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !411 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !411
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !412
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !422
  %i.be = zext nneg i16 %i.bd to i64, !dbg !423
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !424
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !428 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !429     ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !431, !alias.scope !441, !noalias !444, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !446
  %i.bk = getelementptr inbounds [240 x i8], ptr %i.bi, i64 %i.bj, !dbg !452
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -240, !dbg !453
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(240) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.f, !dbg !459 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !467  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !473
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !479, !noalias !487
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !490
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !490 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !498
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !502, !prof !503

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !467
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %i.cg, %.lr.ph.i ], !dbg !490
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !504
  %i.br = zext nneg i16 %i.bq to i64, !dbg !509
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !510
  %i.bt = and i64 %i.bs, %i.t, !dbg !510          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !512
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !522, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !523
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !523, !prof !170

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !528
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !531
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !531 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !536
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !540
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !540
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !541
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !544

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !545            ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !549
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !467 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !473
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !479, !noalias !487
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !490
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !490 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !498
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !502, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !551
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !561 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !563
  %i.ck = and i64 %i.cj, %i.t, !dbg !568
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !569
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !575, !noalias !214
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !576
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !576
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !580, !noalias !214
  %i.co = load ptr, ptr %0, align 8, !dbg !581, !alias.scope !225, !noalias !226, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !587
  %.neg61.i.i = mul i64 %.neg.i.i, 240, !dbg !587
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !589
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !592
  %.neg63.i.i = mul i64 %.neg62.i.i, 240, !dbg !592
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !595
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(240) %i.cq, ptr noundef nonnull align 1 dereferenceable(240) %i.cp, i64 range(i64 8, 241) 240, i1 false), !dbg !598, !noalias !214
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !227
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !227

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !601

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !dbg !605
  %.val11 = load ptr, ptr %0, align 8, !dbg !606  ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !609
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !609

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !624             ; 2 uses
  %i.ct = and i64 %i.l, 15, !dbg !636
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !638
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !638 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !638 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %4 = add nuw nsw i64 %i.cs, %i.cu, !dbg !609
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !609
  %i.cv = icmp eq i64 %4, 1, !dbg !609
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !609

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !609
  br label %bb.l, !dbg !609

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !609
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !609

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !609
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !609
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !640 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !646
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !649
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !657
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !657
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !661
  br label %._crit_edge.i18, !dbg !667

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !667
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !668, !prof !671

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !640 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !646
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !649
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !657
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !657
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !661
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !672   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !640
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !640 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !646
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !649
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !657
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !657
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !661
  %niter.next.1 = add i64 %niter, 2, !dbg !609    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !609
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !609

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !676

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !677
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !684, !noalias !685
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !687
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtB3p_3ops8function6FnOnceTOhEE9call_onceCseyIfFeUOWMb_17polars_mem_engine, ptr %i.dj, align 8, !dbg !687, !noalias !685
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !687
  store i64 240, ptr %i.dk, align 8, !dbg !687, !noalias !685
  store ptr %0, ptr %i.a, align 8, !dbg !687, !noalias !685
  %i.dl = load i64, ptr %i.i, align 8, !dbg !690, !alias.scope !602, !noalias !694, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !695
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !710

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !711
  %i.dn = load ptr, ptr %0, align 8, !dbg !718, !noalias !694, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !722
  %i.dp = load i8, ptr %i.do, align 1, !dbg !725, !noalias !694, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !725
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !732

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !711
  %.neg11.i = mul i64 %.neg.i, 240, !dbg !733
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !737 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !740

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !742, !alias.scope !746, !noalias !749, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [240 x i8], ptr %i.ds, i64 %i.dr, !dbg !751
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -240, !dbg !754
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(240) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 unwind label %bb.n, !dbg !758 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.u, !dbg !761, !noalias !694

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !762, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !762, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !764 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !766
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !769, !noalias !773
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !776
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !776 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !780
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !782, !prof !503

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !764
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !776
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !783
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !786
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !787
  %i.ed = and i64 %i.ec, %.val9, !dbg !787        ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !788
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !793, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !794
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !794, !prof !170

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !796
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !798
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !798 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !801
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !803
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !803
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !804
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !806

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslpwjCj2YNBy_9polars_io10predicates26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !807            ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !809
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !764 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !766
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !769, !noalias !773
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !776
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !776 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !780
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !782, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !810
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !821
  %i.et = xor i64 %i.es, %i.er, !dbg !825
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !825
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !825
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !826, !prof !829

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !830
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !835 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !837
  %i.ey = and i64 %.val9, %i.ex, !dbg !841
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !842
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !847, !noalias !694
  %i.fa = load ptr, ptr %0, align 8, !dbg !848, !noalias !694, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !850
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !850
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !853, !noalias !694
  br label %bb.s, !dbg !854

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !857
  %.neg13.i = mul i64 %.neg12.i, 240, !dbg !857
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !860 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !863 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !870, !noalias !694, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !871
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !876 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !878
  %i.fj = and i64 %i.fi, %.val9, !dbg !882
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !883, !noalias !694
  %i.fk = load ptr, ptr %0, align 8, !dbg !885, !noalias !694, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !888
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !888
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !891, !noalias !694
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !892
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !892

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !894
  %i.fp = load i64, ptr %i.i, align 8, !dbg !898, !noalias !694, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !899
  %i.fr = load ptr, ptr %0, align 8, !dbg !900, !noalias !694, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !904
  store i8 -1, ptr %i.fs, align 1, !dbg !907, !noalias !694
  %i.ft = load ptr, ptr %0, align 8, !dbg !908, !noalias !694, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !910
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !910
  store i8 -1, ptr %i.fv, align 1, !dbg !913, !noalias !694
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(240) %i.fd, ptr noundef nonnull align 1 dereferenceable(240) %i.dq, i64 240, i1 false), !dbg !914, !noalias !694
  br label %bb.s, !dbg !917

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !695
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !710

bb.t:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2h_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !983, !noalias !974
  store ptr %i.d, ptr %i.c, align 8, !dbg !989, !noalias !974
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !989 ; 2 uses
  store i64 240, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !989, !noalias !974
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !989 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !989, !noalias !974
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !989 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !989, !noalias !974
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !989 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !989, !noalias !974
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !989 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !989, !noalias !974
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !989 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !989, !noalias !974
  %i.x = load i64, ptr %i.e, align 8, !dbg !990, !alias.scope !992, !noalias !993, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !994
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !994

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !996, !alias.scope !992, !noalias !993, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !998
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1000
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1004
  br label %.preheader, !dbg !994

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1005
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1009

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1010 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1012
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1014
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1018 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1019    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1005
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1009

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1020, !alias.scope !992, !noalias !993
  br label %._crit_edge64, !dbg !1020

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1020 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1021
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1021, !noalias !974
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1022, !noalias !974
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.h, !dbg !1023, !noalias !986

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !1029, !noalias !986
  unreachable, !dbg !1029

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !1030), !dbg !984
  call void @llvm.experimental.noalias.scope.decl(metadata !1033), !dbg !1036, !noalias !986
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1038, !alias.scope !1040, !noalias !986 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1038, !alias.scope !1040, !noalias !986, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041), !dbg !1038, !noalias !986
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !1044
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1044

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1046, !alias.scope !1047, !noalias !986, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1046, !alias.scope !1047, !noalias !986, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !1048
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !1052    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !1056
  %i.ap = add i64 %i.ao, %i.an, !dbg !1057        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !1057
  call void @llvm.assume(i1 %i.aq), !dbg !1059, !noalias !986
  %i.ar = sub i64 0, %i.al, !dbg !1061
  %i.as = and i64 %i.ap, %i.ar, !dbg !1062        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !1063
  %i.au = add i64 %i.at, %i.as, !dbg !1064        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !1064
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !1066, !noalias !986
  call void @llvm.assume(i1 %i.ax), !dbg !1066, !noalias !986
  %i.ay = icmp ne i64 %i.al, 0, !dbg !1068
  call void @llvm.assume(i1 %i.ay), !dbg !1070, !noalias !986
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !986
  %i.az = icmp eq i64 %i.au, 0, !dbg !1071
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !1071

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !1073
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !1075
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #31, !dbg !1076, !noalias !1079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !1080

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !984, !noalias !974
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !985

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1081 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1081 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1081
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !1082
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1086
  %i.be = zext nneg i16 %i.bd to i64, !dbg !1087
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !1088
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !1090 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !1091    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !1092, !alias.scope !1099, !noalias !1102, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !1104
  %i.bk = getelementptr inbounds [240 x i8], ptr %i.bi, i64 %i.bj, !dbg !1109
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -240, !dbg !1110
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(240) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.f, !dbg !1116 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !1121 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1124
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !1127, !noalias !1131
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1134
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !1134 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !1138
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1140, !prof !503

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1121
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %i.cg, %.lr.ph.i ], !dbg !1134
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1141
  %i.br = zext nneg i16 %i.bq to i64, !dbg !1144
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !1145
  %i.bt = and i64 %i.bs, %i.t, !dbg !1145         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !1146
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !1151, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !1152
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1152, !prof !170

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1154
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1156
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !1156 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !1159
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !1161
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !1161
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1162
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1164

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !1165           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !1167
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !1121 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1124
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !1127, !noalias !1131
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1134
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !1134 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !1138
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1140, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !1168
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !1171 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !1172
  %i.ck = and i64 %i.cj, %i.t, !dbg !1175
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1176
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !1179, !noalias !986
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !1180
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !1180
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !1183, !noalias !986
  %i.co = load ptr, ptr %0, align 8, !dbg !1184, !alias.scope !992, !noalias !993, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !1187
  %.neg61.i.i = mul i64 %.neg.i.i, 240, !dbg !1187
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !1188
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1190
  %.neg63.i.i = mul i64 %.neg62.i.i, 240, !dbg !1190
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(240) %i.cq, ptr noundef nonnull align 1 dereferenceable(240) %i.cp, i64 range(i64 8, 241) 240, i1 false), !dbg !1194, !noalias !986
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !994
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !994

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !1196

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197), !dbg !1200
  %.val11 = load ptr, ptr %0, align 8, !dbg !1201 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1203
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1203

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !1207            ; 2 uses
  %i.ct = and i64 %i.l, 15, !dbg !1212
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !1213
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !1213 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !1213 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %4 = add nuw nsw i64 %i.cs, %i.cu, !dbg !1203
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1203
  %i.cv = icmp eq i64 %4, 1, !dbg !1203
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !1203

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1203
  br label %bb.l, !dbg !1203

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1203
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !1203

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1203
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !1203
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1214 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !1217
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1219
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1222
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !1222
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !1224
  br label %._crit_edge.i18, !dbg !1227

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !1227
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1228, !prof !671

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1214 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !1217
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1219
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1222
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !1222
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !1224
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !1230  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1214
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !1214 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !1217
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1219
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1222
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !1222
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !1224
  %niter.next.1 = add i64 %niter, 2, !dbg !1203   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1203
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !1203

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1232

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1233
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1238, !noalias !1239
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1241
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2m_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtB3n_3ops8function6FnOnceTOhEE9call_onceCseyIfFeUOWMb_17polars_mem_engine, ptr %i.dj, align 8, !dbg !1241, !noalias !1239
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1241
  store i64 240, ptr %i.dk, align 8, !dbg !1241, !noalias !1239
  store ptr %0, ptr %i.a, align 8, !dbg !1241, !noalias !1239
  %i.dl = load i64, ptr %i.i, align 8, !dbg !1243, !alias.scope !1197, !noalias !1245, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !1246
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1250

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1251
  %i.dn = load ptr, ptr %0, align 8, !dbg !1254, !noalias !1245, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !1256
  %i.dp = load i8, ptr %i.do, align 1, !dbg !1258, !noalias !1245, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !1258
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !1261

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1251
  %.neg11.i = mul i64 %.neg.i, 240, !dbg !1262
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !1264 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1266

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !1267, !alias.scope !1271, !noalias !1274, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [240 x i8], ptr %i.ds, i64 %i.dr, !dbg !1276
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -240, !dbg !1279
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(240) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 unwind label %bb.n, !dbg !1283 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.u, !dbg !1286, !noalias !1245

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1287, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1287, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !1288 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1290
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !1293, !noalias !1297
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1300
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !1300 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !1304
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1306, !prof !503

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1288
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !1300
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1307
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !1310
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !1311
  %i.ed = and i64 %i.ec, %.val9, !dbg !1311       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !1312
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !1317, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !1318
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1318, !prof !170

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1320
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !1322
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !1322 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !1325
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !1327
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !1327
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1328
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1330

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCslpwjCj2YNBy_9polars_io10predicates14PhysicalIoExprEL_EINtNtCscgRAwXFJnXP_4core6option6OptionNtB2j_26SpecializedColumnPredicateEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !1331           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !1333
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !1288 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1290
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !1293, !noalias !1297
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1300
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !1300 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !1304
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1306, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1334
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1338
  %i.et = xor i64 %i.es, %i.er, !dbg !1341
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !1341
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !1341
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !1342, !prof !829

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !1344
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !1347 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !1348
  %i.ey = and i64 %.val9, %i.ex, !dbg !1351
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1352
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !1355, !noalias !1245
  %i.fa = load ptr, ptr %0, align 8, !dbg !1356, !noalias !1245, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !1358
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !1358
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !1360, !noalias !1245
  br label %bb.s, !dbg !1361

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1362
  %.neg13.i = mul i64 %.neg12.i, 240, !dbg !1362
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1364 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1366 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !1370, !noalias !1245, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !1371
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !1374 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1375
  %i.fj = and i64 %i.fi, %.val9, !dbg !1378
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !1379, !noalias !1245
  %i.fk = load ptr, ptr %0, align 8, !dbg !1380, !noalias !1245, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !1382
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !1382
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !1384, !noalias !1245
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !1385
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !1385

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !1386
  %i.fp = load i64, ptr %i.i, align 8, !dbg !1389, !noalias !1245, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !1390
  %i.fr = load ptr, ptr %0, align 8, !dbg !1391, !noalias !1245, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !1393
  store i8 -1, ptr %i.fs, align 1, !dbg !1395, !noalias !1245
  %i.ft = load ptr, ptr %0, align 8, !dbg !1396, !noalias !1245, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !1398
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !1398
  store i8 -1, ptr %i.fv, align 1, !dbg !1400, !noalias !1245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(240) %i.fd, ptr noundef nonnull align 1 dereferenceable(240) %i.dq, i64 240, i1 false), !dbg !1401, !noalias !1245
  br label %bb.s, !dbg !1403

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !1246
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1250

bb.t:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBU_3vec3VecTmINtNtBU_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1460, !noalias !1451
  store ptr %i.d, ptr %i.c, align 8, !dbg !1466, !noalias !1451
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1466 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1466, !noalias !1451
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1466 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1466, !noalias !1451
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1466 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1466, !noalias !1451
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1466 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1466, !noalias !1451
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1466 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1466, !noalias !1451
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1466 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1466, !noalias !1451
  %i.x = load i64, ptr %i.e, align 8, !dbg !1467, !alias.scope !1469, !noalias !1470, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1471
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1471

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1473, !alias.scope !1469, !noalias !1470, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1475
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1477
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1481
  br label %.preheader, !dbg !1471

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1482
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1486

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1487 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1489
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1491
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1495 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1496    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1482
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1486

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1497, !alias.scope !1469, !noalias !1470
  br label %._crit_edge64, !dbg !1497

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1497 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1498
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1498, !noalias !1451
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1499, !noalias !1451
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.h, !dbg !1500, !noalias !1463

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !1506, !noalias !1463
  unreachable, !dbg !1506

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !1507), !dbg !1461
  call void @llvm.experimental.noalias.scope.decl(metadata !1510), !dbg !1513, !noalias !1463
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1515, !alias.scope !1517, !noalias !1463 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1515, !alias.scope !1517, !noalias !1463, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1518), !dbg !1515, !noalias !1463
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !1521
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1521

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1523, !alias.scope !1524, !noalias !1463, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1523, !alias.scope !1524, !noalias !1463, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !1525
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !1529    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !1533
  %i.ap = add i64 %i.ao, %i.an, !dbg !1534        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !1534
  call void @llvm.assume(i1 %i.aq), !dbg !1536, !noalias !1463
  %i.ar = sub i64 0, %i.al, !dbg !1538
  %i.as = and i64 %i.ap, %i.ar, !dbg !1539        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !1540
  %i.au = add i64 %i.at, %i.as, !dbg !1541        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !1541
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !1543, !noalias !1463
  call void @llvm.assume(i1 %i.ax), !dbg !1543, !noalias !1463
  %i.ay = icmp ne i64 %i.al, 0, !dbg !1545
  call void @llvm.assume(i1 %i.ay), !dbg !1547, !noalias !1463
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !1463
  %i.az = icmp eq i64 %i.au, 0, !dbg !1548
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !1548

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !1550
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !1552
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #31, !dbg !1553, !noalias !1556
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !1557

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1461, !noalias !1451
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !1462

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1558 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1558 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1558
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !1559
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1563
  %i.be = zext nneg i16 %i.bd to i64, !dbg !1564
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !1565
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !1567 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !1568    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !1569, !alias.scope !1576, !noalias !1579, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !1581
  %i.bk = getelementptr inbounds [48 x i8], ptr %i.bi, i64 %i.bj, !dbg !1586
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -48, !dbg !1587
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.f, !dbg !1593 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !1598 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1601
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !1604, !noalias !1608
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1611
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !1611 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !1615
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1617, !prof !503

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1598
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %i.cg, %.lr.ph.i ], !dbg !1611
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1618
  %i.br = zext nneg i16 %i.bq to i64, !dbg !1621
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !1622
  %i.bt = and i64 %i.bs, %i.t, !dbg !1622         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !1623
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !1628, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !1629
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1629, !prof !170

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1631
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1633
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !1633 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !1636
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !1638
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !1638
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1639
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1641

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !1642           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !1644
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !1598 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1601
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !1604, !noalias !1608
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1611
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !1611 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !1615
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1617, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !1645
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !1648 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !1649
  %i.ck = and i64 %i.cj, %i.t, !dbg !1652
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1653
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !1656, !noalias !1463
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !1657
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !1657
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !1660, !noalias !1463
  %i.co = load ptr, ptr %0, align 8, !dbg !1661, !alias.scope !1469, !noalias !1470, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !1664
  %.neg61.i.i = mul i64 %.neg.i.i, 48, !dbg !1664
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !1665
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1667
  %.neg63.i.i = mul i64 %.neg62.i.i, 48, !dbg !1667
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1669
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.cq, ptr noundef nonnull align 1 dereferenceable(48) %i.cp, i64 range(i64 8, 241) 48, i1 false), !dbg !1671, !noalias !1463
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !1471
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !1471

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !1673

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674), !dbg !1677
  %.val11 = load ptr, ptr %0, align 8, !dbg !1678 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1680
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1680

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !1684            ; 2 uses
  %i.ct = and i64 %i.l, 15, !dbg !1689
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !1690
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !1690 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !1690 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %4 = add nuw nsw i64 %i.cs, %i.cu, !dbg !1680
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1680
  %i.cv = icmp eq i64 %4, 1, !dbg !1680
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !1680

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1680
  br label %bb.l, !dbg !1680

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1680
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !1680

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1680
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !1680
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1691 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !1694
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1696
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1699
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !1699
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !1701
  br label %._crit_edge.i18, !dbg !1704

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !1704
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1705, !prof !671

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1691 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !1694
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1696
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1699
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !1699
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !1701
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !1707  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1691
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !1691 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !1694
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1696
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1699
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !1699
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !1701
  %niter.next.1 = add i64 %niter, 2, !dbg !1680   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1680
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !1680

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1709

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1710
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1715, !noalias !1716
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1718
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBZ_3vec3VecTmINtNtBZ_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCseyIfFeUOWMb_17polars_mem_engine, ptr %i.dj, align 8, !dbg !1718, !noalias !1716
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1718
  store i64 48, ptr %i.dk, align 8, !dbg !1718, !noalias !1716
  store ptr %0, ptr %i.a, align 8, !dbg !1718, !noalias !1716
  %i.dl = load i64, ptr %i.i, align 8, !dbg !1720, !alias.scope !1674, !noalias !1722, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !1723
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1727

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1728
  %i.dn = load ptr, ptr %0, align 8, !dbg !1731, !noalias !1722, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !1733
  %i.dp = load i8, ptr %i.do, align 1, !dbg !1735, !noalias !1722, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !1735
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !1738

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1728
  %.neg11.i = mul i64 %.neg.i, 48, !dbg !1739
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !1741 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1743

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !1744, !alias.scope !1748, !noalias !1751, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [48 x i8], ptr %i.ds, i64 %i.dr, !dbg !1753
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -48, !dbg !1756
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 unwind label %bb.n, !dbg !1760 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.u, !dbg !1763, !noalias !1722

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1764, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1764, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !1765 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1767
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !1770, !noalias !1774
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1777
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !1777 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !1781
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1783, !prof !503

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1765
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !1777
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1784
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !1787
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !1788
  %i.ed = and i64 %i.ec, %.val9, !dbg !1788       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !1789
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !1794, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !1795
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1795, !prof !170

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1797
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !1799
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !1799 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !1802
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !1804
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !1804
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1805
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1807

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBW_3vec3VecTmINtNtBW_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !1808           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !1810
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !1765 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1767
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !1770, !noalias !1774
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1777
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !1777 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !1781
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1783, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1811
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1815
  %i.et = xor i64 %i.es, %i.er, !dbg !1818
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !1818
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !1818
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !1819, !prof !829

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !1821
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !1824 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !1825
  %i.ey = and i64 %.val9, %i.ex, !dbg !1828
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1829
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !1832, !noalias !1722
  %i.fa = load ptr, ptr %0, align 8, !dbg !1833, !noalias !1722, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !1835
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !1835
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !1837, !noalias !1722
  br label %bb.s, !dbg !1838

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1839
  %.neg13.i = mul i64 %.neg12.i, 48, !dbg !1839
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1841 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1843 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !1847, !noalias !1722, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !1848
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !1851 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1852
  %i.fj = and i64 %i.fi, %.val9, !dbg !1855
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !1856, !noalias !1722
  %i.fk = load ptr, ptr %0, align 8, !dbg !1857, !noalias !1722, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !1859
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !1859
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !1861, !noalias !1722
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !1862
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !1862

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !1863
  %i.fp = load i64, ptr %i.i, align 8, !dbg !1866, !noalias !1722, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !1867
  %i.fr = load ptr, ptr %0, align 8, !dbg !1868, !noalias !1722, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !1870
  store i8 -1, ptr %i.fs, align 1, !dbg !1872, !noalias !1722
  %i.ft = load ptr, ptr %0, align 8, !dbg !1873, !noalias !1722, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !1875
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !1875
  store i8 -1, ptr %i.fv, align 1, !dbg !1877, !noalias !1722
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.fd, ptr noundef nonnull align 1 dereferenceable(48) %i.dq, i64 48, i1 false), !dbg !1878, !noalias !1722
  br label %bb.s, !dbg !1880

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !1723
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1727

bb.t:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB24_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1Z_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1937, !noalias !1928
  store ptr %i.d, ptr %i.c, align 8, !dbg !1943, !noalias !1928
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1943 ; 2 uses
  store i64 136, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1943, !noalias !1928
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1943 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1943, !noalias !1928
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1943 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1943, !noalias !1928
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1943 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1943, !noalias !1928
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1943 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1943, !noalias !1928
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1943 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1943, !noalias !1928
  %i.x = load i64, ptr %i.e, align 8, !dbg !1944, !alias.scope !1946, !noalias !1947, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1948
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1948

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1950, !alias.scope !1946, !noalias !1947, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1952
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1954
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1958
  br label %.preheader, !dbg !1948

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1959
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1963

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1964 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1966
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1968
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1972 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1973    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1959
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1963

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1974, !alias.scope !1946, !noalias !1947
  br label %._crit_edge64, !dbg !1974

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1974 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1975
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1975, !noalias !1928
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1976, !noalias !1928
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.h, !dbg !1977, !noalias !1940

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !1983, !noalias !1940
  unreachable, !dbg !1983

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !1984), !dbg !1938
  call void @llvm.experimental.noalias.scope.decl(metadata !1987), !dbg !1990, !noalias !1940
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1992, !alias.scope !1994, !noalias !1940 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1992, !alias.scope !1994, !noalias !1940, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1995), !dbg !1992, !noalias !1940
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !1998
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1998

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2000, !alias.scope !2001, !noalias !1940, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2000, !alias.scope !2001, !noalias !1940, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !2002
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !2006    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !2010
  %i.ap = add i64 %i.ao, %i.an, !dbg !2011        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !2011
  call void @llvm.assume(i1 %i.aq), !dbg !2013, !noalias !1940
  %i.ar = sub i64 0, %i.al, !dbg !2015
  %i.as = and i64 %i.ap, %i.ar, !dbg !2016        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !2017
  %i.au = add i64 %i.at, %i.as, !dbg !2018        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !2018
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !2020, !noalias !1940
  call void @llvm.assume(i1 %i.ax), !dbg !2020, !noalias !1940
  %i.ay = icmp ne i64 %i.al, 0, !dbg !2022
  call void @llvm.assume(i1 %i.ay), !dbg !2024, !noalias !1940
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !1940
  %i.az = icmp eq i64 %i.au, 0, !dbg !2025
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !2025

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !2027
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !2029
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #31, !dbg !2030, !noalias !2033
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2034

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1938, !noalias !1928
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !1939

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !2035 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2035 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2035
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !2036
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2040
  %i.be = zext nneg i16 %i.bd to i64, !dbg !2041
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !2042
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !2044 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !2045    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !2046, !alias.scope !2053, !noalias !2056, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !2058
  %i.bk = getelementptr inbounds [136 x i8], ptr %i.bi, i64 %i.bj, !dbg !2063
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -136, !dbg !2064
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.f, !dbg !2070 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !2075 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2078
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !2081, !noalias !2085
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2088
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !2088 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !2092
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2094, !prof !503

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2075
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %i.cg, %.lr.ph.i ], !dbg !2088
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2095
  %i.br = zext nneg i16 %i.bq to i64, !dbg !2098
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !2099
  %i.bt = and i64 %i.bs, %i.t, !dbg !2099         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !2100
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !2105, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !2106
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2106, !prof !170

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2108
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2110
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !2110 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !2113
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !2115
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !2115
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2116
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2118

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !2119           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !2121
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !2075 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2078
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !2081, !noalias !2085
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2088
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !2088 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !2092
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2094, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !2122
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !2125 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !2126
  %i.ck = and i64 %i.cj, %i.t, !dbg !2129
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2130
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !2133, !noalias !1940
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !2134
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !2134
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !2137, !noalias !1940
  %i.co = load ptr, ptr %0, align 8, !dbg !2138, !alias.scope !1946, !noalias !1947, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !2141
  %.neg61.i.i = mul i64 %.neg.i.i, 136, !dbg !2141
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !2142
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2144
  %.neg63.i.i = mul i64 %.neg62.i.i, 136, !dbg !2144
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.cq, ptr noundef nonnull align 1 dereferenceable(136) %i.cp, i64 range(i64 8, 241) 136, i1 false), !dbg !2148, !noalias !1940
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !1948
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !1948

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !2150

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151), !dbg !2154
  %.val11 = load ptr, ptr %0, align 8, !dbg !2155 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2157
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2157

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !2161            ; 2 uses
  %i.ct = and i64 %i.l, 15, !dbg !2166
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !2167
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !2167 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !2167 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %4 = add nuw nsw i64 %i.cs, %i.cu, !dbg !2157
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2157
  %i.cv = icmp eq i64 %4, 1, !dbg !2157
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2157

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2157
  br label %bb.l, !dbg !2157

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2157
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2157

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2157
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !2157
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2168 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !2171
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2173
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2176
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !2176
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !2178
  br label %._crit_edge.i18, !dbg !2181

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !2181
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2182, !prof !671

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2168 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !2171
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2173
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2176
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !2176
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !2178
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !2184  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2168
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !2168 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !2171
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2173
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2176
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !2176
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !2178
  %niter.next.1 = add i64 %niter, 2, !dbg !2157   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2157
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !2157

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2186

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2187
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2192, !noalias !2193
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2195
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB29_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B24_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCseyIfFeUOWMb_17polars_mem_engine, ptr %i.dj, align 8, !dbg !2195, !noalias !2193
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2195
  store i64 136, ptr %i.dk, align 8, !dbg !2195, !noalias !2193
  store ptr %0, ptr %i.a, align 8, !dbg !2195, !noalias !2193
  %i.dl = load i64, ptr %i.i, align 8, !dbg !2197, !alias.scope !2151, !noalias !2199, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !2200
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2204

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2205
  %i.dn = load ptr, ptr %0, align 8, !dbg !2208, !noalias !2199, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !2210
  %i.dp = load i8, ptr %i.do, align 1, !dbg !2212, !noalias !2199, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !2212
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !2215

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2205
  %.neg11.i = mul i64 %.neg.i, 136, !dbg !2216
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !2218 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2220

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !2221, !alias.scope !2225, !noalias !2228, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [136 x i8], ptr %i.ds, i64 %i.dr, !dbg !2230
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -136, !dbg !2233
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 unwind label %bb.n, !dbg !2237 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.u, !dbg !2240, !noalias !2199

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2241, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2241, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !2242 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2244
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !2247, !noalias !2251
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2254
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !2254 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !2258
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2260, !prof !503

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2242
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !2254
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2261
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !2264
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !2265
  %i.ed = and i64 %i.ec, %.val9, !dbg !2265       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !2266
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !2271, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !2272
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2272, !prof !170

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2274
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !2276
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !2276 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !2279
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !2281
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !2281
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2282
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2284

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamic19RollingGroupOptionsINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmINtNtB26_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B21_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !2285           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !2287
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !2242 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2244
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !2247, !noalias !2251
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2254
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !2254 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !2258
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2260, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2288
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2292
  %i.et = xor i64 %i.es, %i.er, !dbg !2295
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !2295
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !2295
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !2296, !prof !829

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !2298
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !2301 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !2302
  %i.ey = and i64 %.val9, %i.ex, !dbg !2305
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2306
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !2309, !noalias !2199
  %i.fa = load ptr, ptr %0, align 8, !dbg !2310, !noalias !2199, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !2312
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !2312
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !2314, !noalias !2199
  br label %bb.s, !dbg !2315

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2316
  %.neg13.i = mul i64 %.neg12.i, 136, !dbg !2316
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2318 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2320 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !2324, !noalias !2199, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !2325
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !2328 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2329
  %i.fj = and i64 %i.fi, %.val9, !dbg !2332
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !2333, !noalias !2199
  %i.fk = load ptr, ptr %0, align 8, !dbg !2334, !noalias !2199, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !2336
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !2336
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !2338, !noalias !2199
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !2339
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !2339

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !2340
  %i.fp = load i64, ptr %i.i, align 8, !dbg !2343, !noalias !2199, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !2344
  %i.fr = load ptr, ptr %0, align 8, !dbg !2345, !noalias !2199, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !2347
  store i8 -1, ptr %i.fs, align 1, !dbg !2349, !noalias !2199
  %i.ft = load ptr, ptr %0, align 8, !dbg !2350, !noalias !2199, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !2352
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !2352
  store i8 -1, ptr %i.fv, align 1, !dbg !2354, !noalias !2199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.fd, ptr noundef nonnull align 1 dereferenceable(136) %i.dq, i64 136, i1 false), !dbg !2355, !noalias !2199
  br label %bb.s, !dbg !2357

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !2200
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !2204

bb.t:                                             ; preds = %bb.q
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBW_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2414, !noalias !2405
  store ptr %i.d, ptr %i.c, align 8, !dbg !2420, !noalias !2405
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2420 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2420, !noalias !2405
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2420 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2420, !noalias !2405
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2420 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2420, !noalias !2405
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2420 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2420, !noalias !2405
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2420 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2420, !noalias !2405
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2420 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2420, !noalias !2405
  %i.x = load i64, ptr %i.e, align 8, !dbg !2421, !alias.scope !2423, !noalias !2424, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !2425
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !2425

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !2427, !alias.scope !2423, !noalias !2424, !nonnull !14, !noundef !14 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !2429
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !2431
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !2435
  br label %.preheader, !dbg !2425

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !2436
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !2440

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !2441 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !2443
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !2445
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !2449 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !2450    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !2436
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2440

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !2451, !alias.scope !2423, !noalias !2424
  br label %._crit_edge64, !dbg !2451

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !2451 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !2452
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2452, !noalias !2405
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2453, !noalias !2405
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.h, !dbg !2454, !noalias !2417

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !2460, !noalias !2417
  unreachable, !dbg !2460

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !2461), !dbg !2415
  call void @llvm.experimental.noalias.scope.decl(metadata !2464), !dbg !2467, !noalias !2417
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2469, !alias.scope !2471, !noalias !2417 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2469, !alias.scope !2471, !noalias !2417, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2472), !dbg !2469, !noalias !2417
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !2475
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2475

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2477, !alias.scope !2478, !noalias !2417, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2477, !alias.scope !2478, !noalias !2417, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !2479
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !2483    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !2487
  %i.ap = add i64 %i.ao, %i.an, !dbg !2488        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !2488
  call void @llvm.assume(i1 %i.aq), !dbg !2490, !noalias !2417
  %i.ar = sub i64 0, %i.al, !dbg !2492
  %i.as = and i64 %i.ap, %i.ar, !dbg !2493        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !2494
  %i.au = add i64 %i.at, %i.as, !dbg !2495        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !2495
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !2497, !noalias !2417
  call void @llvm.assume(i1 %i.ax), !dbg !2497, !noalias !2417
  %i.ay = icmp ne i64 %i.al, 0, !dbg !2499
  call void @llvm.assume(i1 %i.ay), !dbg !2501, !noalias !2417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !2417
  %i.az = icmp eq i64 %i.au, 0, !dbg !2502
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !2502

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !2504
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !2506
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #31, !dbg !2507, !noalias !2510
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2511

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2415, !noalias !2405
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2416

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !2512 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2512 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2512
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !2513
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2517
  %i.be = zext nneg i16 %i.bd to i64, !dbg !2518
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !2519
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !2521 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !2522    ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !2523, !alias.scope !2530, !noalias !2533, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !2535
  %i.bk = getelementptr inbounds [64 x i8], ptr %i.bi, i64 %i.bj, !dbg !2540
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -64, !dbg !2541
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.f, !dbg !2547 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !2552 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2555
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !2558, !noalias !2562
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2565
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !2565 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !2569
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2571, !prof !503

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2552
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ], [ %i.cg, %.lr.ph.i ], !dbg !2565
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2572
  %i.br = zext nneg i16 %i.bq to i64, !dbg !2575
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !2576
  %i.bt = and i64 %i.bs, %i.t, !dbg !2576         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !2577
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !2582, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !2583
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2583, !prof !170

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2585
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2587
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !2587 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !2590
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !2592
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !2592
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2593
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2595

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !2596           ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !2598
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !2552 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2555
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !2558, !noalias !2562
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2565
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !2565 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !2569
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2571, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !2599
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !2602 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !2603
  %i.ck = and i64 %i.cj, %i.t, !dbg !2606
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2607
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !2610, !noalias !2417
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !2611
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !2611
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !2614, !noalias !2417
  %i.co = load ptr, ptr %0, align 8, !dbg !2615, !alias.scope !2423, !noalias !2424, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !2618
  %.neg61.i.i = shl i64 %.neg.i.i, 6, !dbg !2618
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !2619
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2621
  %.neg63.i.i = shl i64 %.neg62.i.i, 6, !dbg !2621
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cq, ptr noundef nonnull align 1 dereferenceable(64) %i.cp, i64 range(i64 8, 241) 64, i1 false), !dbg !2625, !noalias !2417
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !2425
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !2425

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !2627

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628), !dbg !2631
  %.val11 = load ptr, ptr %0, align 8, !dbg !2632 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2634
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2634

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !2638            ; 2 uses
  %i.ct = and i64 %i.l, 15, !dbg !2643
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !2644
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !2644 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !2644 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %4 = add nuw nsw i64 %i.cs, %i.cu, !dbg !2634
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2634
  %i.cv = icmp eq i64 %4, 1, !dbg !2634
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2634

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2634
  br label %bb.l, !dbg !2634

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2634
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2634

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2634
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !2634
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2645 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !2648
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2650
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2653
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !2653
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !2655
  br label %._crit_edge.i18, !dbg !2658

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !2658
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2659, !prof !671

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2645 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !2648
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2650
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2653
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !2653
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !2655
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !2661  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2645
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !2645 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !2648
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2650
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2653
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !2653
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !2655
  %niter.next.1 = add i64 %niter, 2, !dbg !2634   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2634
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !2634

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2663

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2664
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2669, !noalias !2670
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2672
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB11_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCseyIfFeUOWMb_17polars_mem_engine, ptr %i.dj, align 8, !dbg !2672, !noalias !2670
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2672
  store i64 64, ptr %i.dk, align 8, !dbg !2672, !noalias !2670
  store ptr %0, ptr %i.a, align 8, !dbg !2672, !noalias !2670
  %i.dl = load i64, ptr %i.i, align 8, !dbg !2674, !alias.scope !2628, !noalias !2676, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !2677
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2681

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2682
  %i.dn = load ptr, ptr %0, align 8, !dbg !2685, !noalias !2676, !nonnull !14, !noundef !14 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !2687
  %i.dp = load i8, ptr %i.do, align 1, !dbg !2689, !noalias !2676, !noundef !14
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !2689
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !2692

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2682
  %.neg11.i = shl i64 %.neg.i, 6, !dbg !2693
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !2695 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2697

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !2698, !alias.scope !2702, !noalias !2705, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds [64 x i8], ptr %i.ds, i64 %i.dr, !dbg !2707
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -64, !dbg !2710
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 unwind label %bb.n, !dbg !2714 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.u, !dbg !2717, !noalias !2676

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2718, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2718, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !2719 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2721
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !2724, !noalias !2728
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2731
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !2731 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !2735
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2737, !prof !503

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2719
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !2731
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2738
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !2741
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !2742
  %i.ed = and i64 %i.ec, %.val9, !dbg !2742       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !2743
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !2748, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !2749
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2749, !prof !170

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2751
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !2753
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !2753 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !2756
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !2758
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !2758
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2759
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2761

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !2762           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !2764
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !2719 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2721
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !2724, !noalias !2728
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2731
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !2731 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !2735
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2737, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2765
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2769
  %i.et = xor i64 %i.es, %i.er, !dbg !2772
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !2772
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !2772
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !2773, !prof !829

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !2775
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !2778 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !2779
  %i.ey = and i64 %.val9, %i.ex, !dbg !2782
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2783
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !2786, !noalias !2676
  %i.fa = load ptr, ptr %0, align 8, !dbg !2787, !noalias !2676, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !2789
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !2789
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !2791, !noalias !2676
  br label %bb.s, !dbg !2792

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2793
  %.neg13.i = shl i64 %.neg12.i, 6, !dbg !2793
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2795 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2797 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !2801, !noalias !2676, !noundef !14
  %i.fg = lshr i64 %i.dv, 57, !dbg !2802
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !2805 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2806
  %i.fj = and i64 %i.fi, %.val9, !dbg !2809
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !2810, !noalias !2676
  %i.fk = load ptr, ptr %0, align 8, !dbg !2811, !noalias !2676, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !2813
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !2813
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !2815, !noalias !2676
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !2816
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !2816

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !2817
  %i.fp = load i64, ptr %i.i, align 8, !dbg !2820, !noalias !2676, !noundef !14
  %i.fq = and i64 %i.fp, %i.fo, !dbg !2821
  %i.fr = load ptr, ptr %0, align 8, !dbg !2822, !noalias !2676, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !2824
  store i8 -1, ptr %i.fs, align 1, !dbg !2826, !noalias !2676
  %i.ft = load ptr, ptr %0, align 8, !dbg !2827, !noalias !2676, !nonnull !14, !noundef !14
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !2829
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !2829
  store i8 -1, ptr %i.fv, align 1, !dbg !2831, !noalias !2676
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.fd, ptr noundef nonnull align 1 dereferenceable(64) %i.dq, i64 64, i1 false), !dbg !2832, !noalias !2676
  br label %bb.s, !dbg !2834

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !2677
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !2681

bb.t:                                             ; preds = %bb.q
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBW_9datatypes10UInt32TypeEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n, !dbg !2835

bb.u:                                             ; preds = %bb.n
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !2839, !noalias !2676
  unreachable, !dbg !2839

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.s
  %.pre = load i64, ptr %i.i, align 8, !dbg !2840, !noalias !2676 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !2841
  %i.fx = lshr i64 %.pre77, 3, !dbg !2841
  %i.fy = mul nuw i64 %i.fx, 7, !dbg !2841
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !2840

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fy, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !2841
  %i.fz = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !2840 ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 8, !dbg !2841
  %.sroa.01.0.i = select i1 %i.ga, i64 %i.fz, i64 %.pre-phi, !dbg !2841
  %i.gb = load i64, ptr %i.e, align 8, !dbg !2843, !noalias !2676, !noundef !14
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2844
  %i.gd = sub i64 %.sroa.01.0.i, %i.gb, !dbg !2844
  store i64 %i.gd, ptr %i.gc, align 8, !dbg !2844, !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2717, !noalias !2670
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2845

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #32, !dbg !2846, !noalias !2847
  unreachable, !dbg !2846

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit ], !dbg !2848
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit ], !dbg !2848
  %i.ge = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !2849
  %i.gf = insertvalue { i64, i64 } %i.ge, i64 %.sroa.4.0.i, 1, !dbg !2849
  ret { i64, i64 } %i.gf, !dbg !2850
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner19insert_bulk_no_growNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors5cache12CachePrefillE0EB2X_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2851 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2853), !dbg !2856
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2857 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !2857, !alias.scope !2853, !noalias !2859, !noundef !14 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !2862             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !2862
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !2864, !prof !170

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2866 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !2866, !alias.scope !2853, !noalias !2859, !noundef !14 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !2867
  %i.l = add i64 %i.j, 1, !dbg !2867              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !2867
  %i.n = mul nuw i64 %i.m, 7, !dbg !2867
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !2867 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !2869
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !2870
  br i1 %.not.i, label %bb.d, label %bb.m, !dbg !2870

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.s, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2871, !prof !170

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !2873
  %.sroa.0.0.i13 = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.g), !dbg !2874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876), !dbg !2879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2880, !noalias !2882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2885, !noalias !2882
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 241) 8, i64 noundef %.sroa.0.0.i13, i1 noundef zeroext %2) #28, !dbg !2885
  %i.q = load ptr, ptr %i.b, align 8, !dbg !2887, !noalias !2882, !noundef !14 ; 2 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !2887
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2889
  %i.t = load i64, ptr %i.s, align 8, !dbg !2889, !noalias !2882 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2889
  %i.v = load i64, ptr %i.u, align 8, !dbg !2889, !noalias !2882 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !2890

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2891, !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2892, !noalias !2882
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2893

bb.f:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.c) #29, !dbg !2892, !noalias !2894
  br label %common.resume, !dbg !2895

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2896
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !2896, !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2891, !noalias !2882
  store ptr %i.d, ptr %i.c, align 8, !dbg !2897, !noalias !2882
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2897 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2897, !noalias !2882
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2897 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2897, !noalias !2882
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2897 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2897, !noalias !2882
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2897 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2897, !noalias !2882
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2897
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2897, !noalias !2882
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2897 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2897, !noalias !2882
  %i.x = load i64, ptr %i.e, align 8, !dbg !2898, !alias.scope !2900, !noalias !2901, !noundef !14
  %i.y = icmp eq i64 %i.x, 0, !dbg !2902
  br i1 %i.y, label %bb.i, label %bb.h, !dbg !2902

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !2904, !alias.scope !2900, !noalias !2901, !nonnull !14, !noundef !14
  br label %.noexc4, !dbg !2906

.noexc4:                                          ; preds = %.noexc4, %bb.h
  %.sroa.036.0 = phi ptr [ %i.z, %bb.h ], [ %i.aa, %.noexc4 ], !dbg !2908 ; 2 uses
  %.sroa.13.0.in.in = load <16 x i8>, ptr %.sroa.036.0, align 16, !dbg !2909
  %.sroa.13.0.in = icmp sgt <16 x i8> %.sroa.13.0.in.in, splat (i8 -1), !dbg !2909
  %.sroa.13.0 = bitcast <16 x i1> %.sroa.13.0.in to i16, !dbg !2909
  %.not.i3 = icmp eq i16 %.sroa.13.0, 0, !dbg !2910
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 16, !dbg !2913
  br i1 %.not.i3, label %.noexc4, label %bb.l, !dbg !2915

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2916, !noalias !2882
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.j, !dbg !2917, !noalias !2894

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !2923, !noalias !2894
  unreachable, !dbg !2923

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2924), !dbg !2892
  call void @llvm.experimental.noalias.scope.decl(metadata !2927), !dbg !2930, !noalias !2894
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2932, !alias.scope !2934, !noalias !2894 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2932, !alias.scope !2934, !noalias !2894, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2935), !dbg !2932, !noalias !2894
  %i.ac = icmp eq i64 %.val1.i.i, 0, !dbg !2938
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2938

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ad = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2940, !alias.scope !2941, !noalias !2894, !noundef !14
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2940, !alias.scope !2941, !noalias !2894, !noundef !14 ; 5 uses
  %i.af = add i64 %.val1.i.i, 1, !dbg !2942
  %i.ag = mul nuw i64 %i.ad, %i.af, !dbg !2946    ; 2 uses
  %i.ah = add i64 %i.ae, -1, !dbg !2950
  %i.ai = add i64 %i.ah, %i.ag, !dbg !2951        ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag, !dbg !2951
  call void @llvm.assume(i1 %i.aj), !dbg !2953, !noalias !2894
  %i.ak = sub i64 0, %i.ae, !dbg !2955
  %i.al = and i64 %i.ai, %i.ak, !dbg !2956        ; 3 uses
  %i.am = add i64 %.val1.i.i, 17, !dbg !2957
  %i.an = add i64 %i.am, %i.al, !dbg !2958        ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al, !dbg !2958
  %i.ap = sub nuw i64 -9223372036854775808, %i.ae
  %i.aq = icmp ule i64 %i.an, %i.ap
  call void @llvm.assume(i1 %i.ao), !dbg !2960, !noalias !2894
  call void @llvm.assume(i1 %i.aq), !dbg !2960, !noalias !2894
  %i.ar = icmp ne i64 %i.ae, 0, !dbg !2962
  call void @llvm.assume(i1 %i.ar), !dbg !2964, !noalias !2894
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !2894
  %i.as = icmp eq i64 %i.an, 0, !dbg !2965
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.k, !dbg !2965

bb.k:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.at = sub nsw i64 0, %i.al, !dbg !2967
  %i.au = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.at, !dbg !2969
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #31, !dbg !2970, !noalias !2973
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2974

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2892, !noalias !2882
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !2893

bb.l:                                             ; preds = %.noexc4
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #32
          to label %.noexc14 unwind label %bb.f, !dbg !2975

.noexc14:                                         ; preds = %bb.l
  unreachable, !dbg !2975

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.bu, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !2984

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2985), !dbg !2988
  %.val11 = load ptr, ptr %0, align 8, !dbg !2989 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2991
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2991

.lr.ph.i16:                                       ; preds = %bb.m
  %i.av = lshr i64 %i.l, 4, !dbg !2995            ; 2 uses
  %i.aw = and i64 %i.l, 15, !dbg !3000
  %.not10.i.i.i = icmp ne i64 %i.aw, 0, !dbg !3001
  %i.ax = zext i1 %.not10.i.i.i to i64, !dbg !3001 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.av, %i.ax, !dbg !3001 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %3 = add nuw nsw i64 %i.av, %i.ax, !dbg !2991
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2991
  %i.ay = icmp eq i64 %3, 1, !dbg !2991
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2991

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2991
  br label %bb.n, !dbg !2991

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2991
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2991

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.bg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2991
  tail call void @llvm.assume(i1 %lcmp.mod51), !dbg !2991
  %i.az = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3002 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.az, align 16, !dbg !3005
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3007
  %i.ba = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3010
  %i.bb = or <2 x i64> %i.ba, splat (i64 -9187201950435737472), !dbg !3010
  store <2 x i64> %i.bb, ptr %i.az, align 16, !dbg !3012
  br label %._crit_edge.i18, !dbg !3015

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.bc = icmp ult i64 %i.l, 16, !dbg !3015
  br i1 %i.bc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3016, !prof !671

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.bg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3002 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.bd, align 16, !dbg !3005
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3007
  %i.be = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3010
  %i.bf = or <2 x i64> %i.be, splat (i64 -9187201950435737472), !dbg !3010
  store <2 x i64> %i.bf, ptr %i.bd, align 16, !dbg !3012
  %i.bg = add i64 %.sroa.01.08.i, 32, !dbg !3018  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3002
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !3002 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.bi, align 16, !dbg !3005
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3007
  %i.bj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3010
  %i.bk = or <2 x i64> %i.bj, splat (i64 -9187201950435737472), !dbg !3010
  store <2 x i64> %i.bk, ptr %i.bi, align 16, !dbg !3012
  %niter.next.1 = add i64 %niter, 2, !dbg !2991   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2991
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n, !dbg !2991

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3020

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3021
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3026, !noalias !3027
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3029
  store ptr null, ptr %i.bm, align 8, !dbg !3029, !noalias !3027
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3029
  store i64 8, ptr %i.bn, align 8, !dbg !3029, !noalias !3027
  store ptr %0, ptr %i.a, align 8, !dbg !3029, !noalias !3027
  %i.bo = load i64, ptr %i.i, align 8, !dbg !3031, !alias.scope !2985, !noalias !3033, !noundef !14 ; 4 uses
  %i.bp = add i64 %i.bo, 1, !dbg !3031            ; 2 uses
  %exitcond.not49 = icmp eq i64 %i.bp, 0, !dbg !3034
  br i1 %exitcond.not49, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.preheader, !dbg !3038

.lr.ph.preheader:                                 ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.bq = load ptr, ptr %0, align 8, !noalias !3033, !nonnull !14, !noundef !14
  br label %.lr.ph, !dbg !3039

bb.o:                                             ; preds = %.lr.ph
  %i.br = add i64 %.sroa.04.0.i50, 1, !dbg !3040
  %exitcond.not = icmp eq i64 %.sroa.04.0.i50, %i.bo, !dbg !3034
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3038

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.04.0.i50 = phi i64 [ %i.br, %bb.o ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.i50, !dbg !3043
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !3046, !noalias !3033, !noundef !14
  %.not.i2 = icmp eq i8 %i.bt, -128, !dbg !3046
  br i1 %.not.i2, label %bb.p, label %bb.o, !dbg !3039

bb.p:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #32
          to label %.noexc19 unwind label %bb.q, !dbg !3049

.noexc19:                                         ; preds = %bb.p
  unreachable, !dbg !3049

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.r, !dbg !3052, !noalias !3033

bb.r:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !3053, !noalias !3033
  unreachable, !dbg !3053

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.o, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.bw = icmp ult i64 %i.bo, 8, !dbg !3054
  %i.bx = lshr i64 %i.bp, 3, !dbg !3054
  %i.by = mul nuw i64 %i.bx, 7, !dbg !3054
  %.sroa.01.0.i = select i1 %i.bw, i64 %i.bo, i64 %i.by, !dbg !3054
  %i.bz = load i64, ptr %i.e, align 8, !dbg !3056, !noalias !3033, !noundef !14
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3057
  %i.cb = sub i64 %.sroa.01.0.i, %i.bz, !dbg !3057
  store i64 %i.cb, ptr %i.ca, align 8, !dbg !3057, !noalias !3033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3052, !noalias !3027
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3058

bb.s:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #32, !dbg !3059, !noalias !3060
  unreachable, !dbg !3059

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit ], !dbg !3061
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit ], !dbg !3061
  %i.cc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !3062
  %i.cd = insertvalue { i64, i64 } %i.cc, i64 %.sroa.4.0.i, 1, !dbg !3062
  ret { i64, i64 } %i.cd, !dbg !3063
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors5cache12CachePrefillE0EB2L_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3064 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3066), !dbg !3069
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3070 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !3070, !alias.scope !3066, !noalias !3072, !noundef !14 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !3075             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !3075
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !3077, !prof !170

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !3079, !alias.scope !3066, !noalias !3072, !noundef !14 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !3080
  %i.l = add i64 %i.j, 1, !dbg !3080              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !3080
  %i.n = mul nuw i64 %i.m, 7, !dbg !3080
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !3080 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !3082
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !3083
  br i1 %.not.i, label %bb.d, label %bb.m, !dbg !3083

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %bb.z, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3084, !prof !170

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !3086
  %.sroa.0.0.i13 = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.g), !dbg !3087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089), !dbg !3092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3093, !noalias !3095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3098, !noalias !3095
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 241) 8, i64 noundef %.sroa.0.0.i13, i1 noundef zeroext %4) #28, !dbg !3098
  %i.q = load ptr, ptr %i.b, align 8, !dbg !3100, !noalias !3095, !noundef !14 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !3100
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3102
  %i.t = load i64, ptr %i.s, align 8, !dbg !3102, !noalias !3095 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3102
  %i.v = load i64, ptr %i.u, align 8, !dbg !3102, !noalias !3095 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !3103

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3104, !noalias !3095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3105, !noalias !3095
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3106

bb.f:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.c) #29, !dbg !3105, !noalias !3107
  br label %common.resume, !dbg !3108

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3109
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !3109, !noalias !3095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3104, !noalias !3095
  store ptr %i.d, ptr %i.c, align 8, !dbg !3110, !noalias !3095
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3110 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3110, !noalias !3095
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3110 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3110, !noalias !3095
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3110 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3110, !noalias !3095
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !3110 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3110, !noalias !3095
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3110 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3110, !noalias !3095
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3110 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3110, !noalias !3095
  %i.x = load i64, ptr %i.e, align 8, !dbg !3111, !alias.scope !3113, !noalias !3114, !noundef !14 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !3115
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph, !dbg !3115

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !3117, !alias.scope !3113, !noalias !3114, !nonnull !14, !noundef !14 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16, !dbg !3119
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1), !dbg !3121
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !3125
  br label %.preheader, !dbg !3115

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0, !dbg !3126
  br i1 %.not.i367, label %.noexc4, label %._crit_edge, !dbg !3130

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16, !dbg !3131 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16, !dbg !3133
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1), !dbg !3135
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !3139 ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16, !dbg !3140    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !3126
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3130

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !dbg !3141, !alias.scope !3113, !noalias !3114
  br label %._crit_edge76, !dbg !3141

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ], !dbg !3141 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !3142
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3142, !noalias !3095
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3143, !noalias !3095
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.h, !dbg !3144, !noalias !3107

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #30, !dbg !3150, !noalias !3107
  unreachable, !dbg !3150

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !3151), !dbg !3105
  call void @llvm.experimental.noalias.scope.decl(metadata !3154), !dbg !3157, !noalias !3107
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3159, !alias.scope !3161, !noalias !3107 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3159, !alias.scope !3161, !noalias !3107, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3162), !dbg !3159, !noalias !3107
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !3165
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3165

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3167, !alias.scope !3168, !noalias !3107, !noundef !14
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3167, !alias.scope !3168, !noalias !3107, !noundef !14 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !3169
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !3173    ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !3177
  %i.ap = add i64 %i.ao, %i.an, !dbg !3178        ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !3178
  call void @llvm.assume(i1 %i.aq), !dbg !3180, !noalias !3107
  %i.ar = sub i64 0, %i.al, !dbg !3182
  %i.as = and i64 %i.ap, %i.ar, !dbg !3183        ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !3184
  %i.au = add i64 %i.at, %i.as, !dbg !3185        ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !3185
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !3187, !noalias !3107
  call void @llvm.assume(i1 %i.ax), !dbg !3187, !noalias !3107
  %i.ay = icmp ne i64 %i.al, 0, !dbg !3189
  call void @llvm.assume(i1 %i.ay), !dbg !3191, !noalias !3107
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !3107
  %i.az = icmp eq i64 %i.au, 0, !dbg !3192
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.i, !dbg !3192

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !3194
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !3196
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #31, !dbg !3197, !noalias !3200
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3201

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECseyIfFeUOWMb_17polars_mem_engine.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3105, !noalias !3095
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3106

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !3202 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3202 ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !3202
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !3203
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3207
  %i.be = zext nneg i16 %i.bd to i64, !dbg !3208
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !3209
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !3211 ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1, !dbg !3212    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3213), !dbg !3216
  %i.bi = load ptr, ptr %0, align 8, !dbg !3217, !alias.scope !3213, !noalias !3224, !nonnull !14, !noundef !14
  %i.bj = sub nsw i64 0, %i.bg, !dbg !3226
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj, !dbg !3231
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !3232
  %.val3.i = load i64, ptr %i.bl, align 8, !dbg !3238, !noalias !3239, !noundef !14 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3, !dbg !3240
  br i1 %i.bm, label %bb.k, label %bb.j, !dbg !3240

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #32
          to label %.noexc14 unwind label %bb.f, !dbg !3240

.noexc14:                                         ; preds = %bb.j
  unreachable, !dbg !3240

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %.val3.i, !dbg !3240
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !3240
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !3240, !noalias !3239, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bp, !dbg !3245 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3248
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !3251, !noalias !3255
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3258
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !3258 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0, !dbg !3262
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3264, !prof !503

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !3245
  %.lcssa.i = phi i16 [ %i.bs, %bb.k ], [ %i.cj, %.lr.ph.i ], !dbg !3258
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3265
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !3268
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu, !dbg !3269
  %i.bw = and i64 %i.bv, %i.t, !dbg !3269         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw, !dbg !3270
  %i.by = load i8, ptr %i.bx, align 1, !dbg !3275, !noundef !14
  %i.bz = icmp sgt i8 %i.by, -1, !dbg !3276
  br i1 %i.bz, label %bb.l, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3276, !prof !170

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3278
  %i.ca = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !3280
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !3280 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0, !dbg !3283
  %i.cc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true), !dbg !3285
  %i.cd = zext nneg i16 %i.cc to i64, !dbg !3285
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3286
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3288

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %bb.k ]
  %i.cf = add i64 %i.ce, 16, !dbg !3289           ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i, !dbg !3291
  %.sroa.0.0.i15 = and i64 %i.cg, %i.t, !dbg !3245 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !3248
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !3251, !noalias !3255
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3258
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !3258 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0, !dbg !3262
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3264, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.l ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.ck = lshr i64 %i.bp, 57, !dbg !3292
  %i.cl = trunc nuw nsw i64 %i.ck to i8, !dbg !3295 ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16, !dbg !3296
  %i.cn = and i64 %i.cm, %i.t, !dbg !3299
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3300
  store i8 %i.cl, ptr %i.co, align 1, !dbg !3303, !noalias !3107
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn, !dbg !3304
  %i.cq = getelementptr i8, ptr %i.cp, i64 16, !dbg !3304
  store i8 %i.cl, ptr %i.cq, align 1, !dbg !3307, !noalias !3107
  %i.cr = load ptr, ptr %0, align 8, !dbg !3308, !alias.scope !3113, !noalias !3114, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !3311
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !3311
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i, !dbg !3312
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3314
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !3314
  %i.ct = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3316
  %i.cu = load i64, ptr %i.cs, align 1, !dbg !3318, !noalias !3107
  store i64 %i.cu, ptr %i.ct, align 1, !dbg !3318, !noalias !3107
  %i.cv = icmp eq i64 %i.bh, 0, !dbg !3115
  br i1 %i.cv, label %._crit_edge76.loopexit, label %.preheader, !dbg !3115

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !3320

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3321), !dbg !3324
  %.val11 = load ptr, ptr %0, align 8, !dbg !3325 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3327
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !3327

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cw = lshr i64 %i.l, 4, !dbg !3331            ; 2 uses
  %i.cx = and i64 %i.l, 15, !dbg !3336
  %.not10.i.i.i = icmp ne i64 %i.cx, 0, !dbg !3337
  %i.cy = zext i1 %.not10.i.i.i to i64, !dbg !3337 ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cw, %i.cy, !dbg !3337 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %5 = add nuw nsw i64 %i.cw, %i.cy, !dbg !3327
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !3327
  %i.cz = icmp eq i64 %5, 1, !dbg !3327
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !3327

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !3327
  br label %bb.n, !dbg !3327

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3327
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !3327

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dh, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !3327
  tail call void @llvm.assume(i1 %lcmp.mod171), !dbg !3327
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3338 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.da, align 16, !dbg !3341
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3343
  %i.db = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3346
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !3346
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !3348
  br label %._crit_edge.i18, !dbg !3351

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dd = icmp ult i64 %i.l, 16, !dbg !3351
  br i1 %i.dd, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3352, !prof !671

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dh, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3338 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.de, align 16, !dbg !3341
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3343
  %i.df = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3346
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !3346
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !3348
  %i.dh = add i64 %.sroa.01.08.i, 32, !dbg !3354  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3338
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !3338 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dj, align 16, !dbg !3341
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3343
  %i.dk = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3346
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472), !dbg !3346
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !dbg !3348
  %niter.next.1 = add i64 %niter, 2, !dbg !3327   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3327
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n, !dbg !3327

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3356

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3357
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3362, !noalias !3363
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3365
  store ptr null, ptr %i.dn, align 8, !dbg !3365, !noalias !3363
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3365
  store i64 8, ptr %i.do, align 8, !dbg !3365, !noalias !3363
  store ptr %0, ptr %i.a, align 8, !dbg !3365, !noalias !3363
  %i.dp = load i64, ptr %i.i, align 8, !dbg !3367, !alias.scope !3321, !noalias !3369, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dp, -1, !dbg !3370
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3374

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.w
  %.sroa.04.0.i66 = phi i64 [ %i.dq, %bb.w ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dq = add nuw i64 %.sroa.04.0.i66, 1, !dbg !3375
  %i.dr = load ptr, ptr %0, align 8, !dbg !3378, !noalias !3369, !nonnull !14, !noundef !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i66, !dbg !3380
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !3382, !noalias !3369, !noundef !14
  %.not.i2 = icmp eq i8 %i.dt, -128, !dbg !3382
  br i1 %.not.i2, label %bb.o, label %bb.w, !dbg !3385

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1, !dbg !3375
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !3386
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %.neg11.i, !dbg !3388 ; 2 uses
  %i.dv = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3390

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.x, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3391), !dbg !3394
  %i.dw = load ptr, ptr %0, align 8, !dbg !3395, !alias.scope !3391, !noalias !3399, !nonnull !14, !noundef !14 ; 8 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv, !dbg !3401
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8, !dbg !3404
  %.val3.i20 = load i64, ptr %i.dy, align 8, !dbg !3408, !noalias !3409, !noundef !14 ; 3 uses
  %i.dz = icmp ult i64 %.val3.i20, %3, !dbg !3410
  br i1 %i.dz, label %bb.r, label %bb.p, !dbg !3410

bb.p:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #32
          to label %.noexc22 unwind label %.loopexit.split-lp, !dbg !3410

.noexc22:                                         ; preds = %bb.p
  unreachable, !dbg !3410

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.y, !dbg !3412, !noalias !3369

bb.r:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ea = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %.val3.i20, !dbg !3410
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !3410
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !3410, !noalias !3409, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3413, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ec, !dbg !3414 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.07.i24, !dbg !3416
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.ed, align 1, !dbg !3419, !noalias !3423
  %i.ee = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !3426
  %i.ef = bitcast <16 x i1> %i.ee to i16, !dbg !3426 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ef, 0, !dbg !3430
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !3432, !prof !503

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !3414
  %.lcssa.i29 = phi i16 [ %i.ef, %bb.r ], [ %i.ew, %.lr.ph.i33 ], !dbg !3426
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !3433
  %i.eh = zext nneg i16 %i.eg to i64, !dbg !3436
  %i.ei = add i64 %.sroa.0.0.lcssa.i28, %i.eh, !dbg !3437
  %i.ej = and i64 %i.ei, %.val9, !dbg !3437       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ej, !dbg !3438
  %i.el = load i8, ptr %i.ek, align 1, !dbg !3443, !noundef !14
  %i.em = icmp sgt i8 %i.el, -1, !dbg !3444
  br i1 %i.em, label %bb.s, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !3444, !prof !170

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dw, align 16, !dbg !3446
  %i.en = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer, !dbg !3448
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !3448 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.eo, 0, !dbg !3451
  %i.ep = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eo, i1 true), !dbg !3453
  %i.eq = zext nneg i16 %i.ep to i64, !dbg !3453
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !3454
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !3456

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.er = phi i64 [ %i.es, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.es = add i64 %i.er, 16, !dbg !3457           ; 2 uses
  %i.et = add i64 %i.es, %.sroa.0.010.i34, !dbg !3459
  %.sroa.0.0.i35 = and i64 %i.et, %.val9, !dbg !3414 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.0.i35, !dbg !3416
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eu, align 1, !dbg !3419, !noalias !3423
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !3426
  %i.ew = bitcast <16 x i1> %i.ev to i16, !dbg !3426 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.ew, 0, !dbg !3430
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !3432, !prof !550

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eq, %bb.s ], [ %i.ej, %._crit_edge.i27 ] ; 4 uses
  %i.ex = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24, !dbg !3460
  %i.ey = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !3464
  %i.ez = xor i64 %i.ey, %i.ex, !dbg !3467
  %.unshifted.i = and i64 %i.ez, %.val9, !dbg !3467
  %i.fa = icmp ult i64 %.unshifted.i, 16, !dbg !3467
  br i1 %i.fa, label %bb.t, label %bb.u, !dbg !3468, !prof !829

bb.t:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.fb = lshr i64 %i.ec, 57, !dbg !3470
  %i.fc = trunc nuw nsw i64 %i.fb to i8, !dbg !3473 ; 2 uses
  %i.fd = add i64 %.sroa.04.0.i66, -16, !dbg !3474
  %i.fe = and i64 %.val9, %i.fd, !dbg !3477
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.04.0.i66, !dbg !3478
  store i8 %i.fc, ptr %i.ff, align 1, !dbg !3481, !noalias !3369
  %i.fg = load ptr, ptr %0, align 8, !dbg !3482, !noalias !3369, !nonnull !14, !noundef !14
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe, !dbg !3484
  %i.fi = getelementptr i8, ptr %i.fh, i64 16, !dbg !3484
  store i8 %i.fc, ptr %i.fi, align 1, !dbg !3486, !noalias !3369
  br label %bb.w, !dbg !3487

bb.u:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !3488
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !3488
  %i.fj = getelementptr inbounds i8, ptr %i.dw, i64 %.neg13.i, !dbg !3490 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.0.0.i5.i30, !dbg !3492 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !3496, !noalias !3369, !noundef !14
  %i.fm = lshr i64 %i.ec, 57, !dbg !3497
  %i.fn = trunc nuw nsw i64 %i.fm to i8, !dbg !3500 ; 2 uses
  %i.fo = add i64 %.sroa.0.0.i5.i30, -16, !dbg !3501
  %i.fp = and i64 %i.fo, %.val9, !dbg !3504
  store i8 %i.fn, ptr %i.fk, align 1, !dbg !3505, !noalias !3369
  %i.fq = load ptr, ptr %0, align 8, !dbg !3506, !noalias !3369, !nonnull !14, !noundef !14
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fp, !dbg !3508
  %i.fs = getelementptr i8, ptr %i.fr, i64 16, !dbg !3508
  store i8 %i.fn, ptr %i.fs, align 1, !dbg !3510, !noalias !3369
  %i.ft = icmp eq i8 %i.fl, -1, !dbg !3511
  br i1 %i.ft, label %bb.v, label %bb.x, !dbg !3511
end_hunk_5
