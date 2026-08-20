inline.NumInlined: 100
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBS_10CategoriesEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1O_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBU_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !79, !noalias !65
  store ptr %i.d, ptr %i.c, align 8, !dbg !85, !noalias !65
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !85 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !85, !noalias !65
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !85 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !85, !noalias !65
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !85 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !85, !noalias !65
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !85 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !85, !noalias !65
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !85 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !85, !noalias !65
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !85 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !85, !noalias !65
  %i.x = load i64, ptr %i.e, align 8, !dbg !88, !alias.scope !93, !noalias !94, !noundef !13 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !95
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !95

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !101, !alias.scope !93, !noalias !94, !nonnull !13, !noundef !13 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !104
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !112
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !127
  br label %.preheader, !dbg !95

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !128
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !142

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !143 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !150
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !153
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !160 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !161     ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !128
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !142

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !162, !alias.scope !93, !noalias !94
  br label %._crit_edge64, !dbg !162

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !162 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !163
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !163, !noalias !65
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !164, !noalias !65
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.h, !dbg !165, !noalias !82

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #18, !dbg !188, !noalias !82
  unreachable, !dbg !188

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !189), !dbg !80
  call void @llvm.experimental.noalias.scope.decl(metadata !192), !dbg !195, !noalias !82
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !198, !alias.scope !204, !noalias !82 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !198, !alias.scope !204, !noalias !82, !noundef !13 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205), !dbg !198, !noalias !82
  %i.aj = icmp eq i64 %.val1.i.i, 0, !dbg !208
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !208

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !213, !alias.scope !214, !noalias !82, !noundef !13
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !213, !alias.scope !214, !noalias !82, !noundef !13 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1, !dbg !215
  %i.an = mul nuw i64 %i.ak, %i.am, !dbg !222     ; 2 uses
  %i.ao = add i64 %i.al, -1, !dbg !231
  %i.ap = add i64 %i.ao, %i.an, !dbg !232         ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an, !dbg !232
  call void @llvm.assume(i1 %i.aq), !dbg !235, !noalias !82
  %i.ar = sub i64 0, %i.al, !dbg !238
  %i.as = and i64 %i.ap, %i.ar, !dbg !239         ; 3 uses
  %i.at = add i64 %.val1.i.i, 17, !dbg !240
  %i.au = add i64 %i.at, %i.as, !dbg !242         ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as, !dbg !242
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !dbg !244, !noalias !82
  call void @llvm.assume(i1 %i.ax), !dbg !244, !noalias !82
  %i.ay = icmp ne i64 %i.al, 0, !dbg !247
  call void @llvm.assume(i1 %i.ay), !dbg !254, !noalias !82
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !82
  %i.az = icmp eq i64 %i.au, 0, !dbg !255
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit, label %bb.i, !dbg !255

bb.i:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as, !dbg !265
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba, !dbg !269
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #19, !dbg !270, !noalias !278
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit, !dbg !279

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !80, !noalias !65
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs80wj1cxFixi_12polars_dtype.exit, !dbg !81

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !280 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !280 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !280
  %i.bc = add i16 %.sroa.13.1.lcssa, -1, !dbg !281
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !291
  %i.be = zext nneg i16 %i.bd to i64, !dbg !292
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa, !dbg !293
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be, !dbg !297 ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1, !dbg !298     ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !dbg !300, !alias.scope !310, !noalias !313, !nonnull !13, !noundef !13
  %i.bj = sub nsw i64 0, %i.bg, !dbg !315
  %i.bk = getelementptr inbounds [64 x i8], ptr %i.bi, i64 %i.bj, !dbg !321
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -64, !dbg !322
  %i.bm = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bl)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit unwind label %bb.f, !dbg !328 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm, !dbg !336  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !342
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !dbg !348, !noalias !356
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !359
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !359 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0, !dbg !367
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !371, !prof !372

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !336
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ], [ %i.cg, %.lr.ph.i ], !dbg !359
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !373
  %i.br = zext nneg i16 %i.bq to i64, !dbg !378
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br, !dbg !379
  %i.bt = and i64 %i.bs, %i.t, !dbg !379          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt, !dbg !381
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !391, !noundef !13
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !392
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !392, !prof !38

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !397
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !400
  %i.by = bitcast <16 x i1> %i.bx to i16, !dbg !400 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0, !dbg !405
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true), !dbg !409
  %i.ca = zext nneg i16 %i.bz to i64, !dbg !409
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !410
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !413

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ]
  %i.cc = add i64 %i.cb, 16, !dbg !414            ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i, !dbg !418
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t, !dbg !336 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !342
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !348, !noalias !356
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !359
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !359 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0, !dbg !367
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !371, !prof !419

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57, !dbg !420
  %i.ci = trunc nuw nsw i64 %i.ch to i8, !dbg !430 ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16, !dbg !432
  %i.ck = and i64 %i.cj, %i.t, !dbg !437
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !438
  store i8 %i.ci, ptr %i.cl, align 1, !dbg !444, !noalias !82
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck, !dbg !445
  %i.cn = getelementptr i8, ptr %i.cm, i64 16, !dbg !445
  store i8 %i.ci, ptr %i.cn, align 1, !dbg !449, !noalias !82
  %i.co = load ptr, ptr %0, align 8, !dbg !450, !alias.scope !93, !noalias !94, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bg, -1, !dbg !456
  %.neg61.i.i = shl i64 %.neg.i.i, 6, !dbg !456
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg61.i.i, !dbg !458
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !461
  %.neg63.i.i = shl i64 %.neg62.i.i, 6, !dbg !461
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cq, ptr noundef nonnull align 1 dereferenceable(64) %i.cp, i64 range(i64 16, 65) 64, i1 false), !dbg !467, !noalias !82
  %i.cr = icmp eq i64 %i.bh, 0, !dbg !95
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader, !dbg !95

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !470

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471), !dbg !474
  %.val11 = load ptr, ptr %0, align 8, !dbg !475  ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !478
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !478

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4, !dbg !495
  %i.ct = and i64 %i.l, 15, !dbg !511
  %.not10.i.i.i = icmp ne i64 %i.ct, 0, !dbg !513
  %i.cu = zext i1 %.not10.i.i.i to i64, !dbg !513
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu, !dbg !513 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !478
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !478
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !478

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !478
  br label %bb.l, !dbg !478

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !478
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !478

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !478
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !478
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !515 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16, !dbg !521
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !524
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !532
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !532
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !536
  br label %._crit_edge.i18, !dbg !542

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16, !dbg !542
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !543, !prof !546

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !515 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16, !dbg !521
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !524
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !532
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !532
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !536
  %i.dd = add i64 %.sroa.01.08.i, 32, !dbg !547   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !515
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !515 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16, !dbg !521
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !524
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !532
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472), !dbg !532
  store <2 x i64> %i.dh, ptr %i.df, align 16, !dbg !536
  %niter.next.1 = add i64 %niter, 2, !dbg !478    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !478
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l, !dbg !478

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !551

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !552
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !559, !noalias !560
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !562
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBX_10CategoriesEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1T_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceBZ_, ptr %i.dj, align 8, !dbg !562, !noalias !560
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !562
  store i64 64, ptr %i.dk, align 8, !dbg !562, !noalias !560
  store ptr %0, ptr %i.a, align 8, !dbg !562, !noalias !560
  %i.dl = load i64, ptr %i.i, align 8, !dbg !565, !alias.scope !471, !noalias !569, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1, !dbg !570
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !585

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.s ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !586
  %i.dn = load ptr, ptr %0, align 8, !dbg !593, !noalias !569, !nonnull !13, !noundef !13 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54, !dbg !597
  %i.dp = load i8, ptr %i.do, align 1, !dbg !600, !noalias !569, !noundef !13
  %.not.i2 = icmp eq i8 %i.dp, -128, !dbg !600
  br i1 %.not.i2, label %bb.m, label %bb.s, !dbg !607

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !586
  %.neg11.i = shl i64 %.neg.i, 6, !dbg !608
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i, !dbg !612 ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !615

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.t, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !dbg !617, !alias.scope !621, !noalias !624, !nonnull !13, !noundef !13
  %i.dt = getelementptr inbounds [64 x i8], ptr %i.ds, i64 %i.dr, !dbg !626
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -64, !dbg !629
  %i.dv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.du)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 unwind label %bb.n, !dbg !633 ; 3 uses

bb.n:                                             ; preds = %bb.t, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17
          to label %common.resume unwind label %bb.u, !dbg !636, !noalias !569

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !637, !nonnull !13, !noundef !13 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !637, !noundef !13 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv, !dbg !639 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !641
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !dbg !644, !noalias !648
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !651
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !651 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0, !dbg !655
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !657, !prof !372

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !639
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ], [ %i.eq, %.lr.ph.i31 ], !dbg !651
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !658
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !661
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb, !dbg !662
  %i.ed = and i64 %i.ec, %.val9, !dbg !662        ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed, !dbg !663
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !668, !noundef !13
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !669
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !669, !prof !38

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !671
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !673
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !673 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0, !dbg !676
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !678
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !678
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !679
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !681

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs80wj1cxFixi_12polars_dtype11categorical13CategoricalIdINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtBU_10CategoriesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ]
  %i.em = add i64 %i.el, 16, !dbg !682            ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32, !dbg !684
  %.sroa.0.0.i33 = and i64 %i.en, %.val9, !dbg !639 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !641
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !dbg !644, !noalias !648
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !651
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !651 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0, !dbg !655
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !657, !prof !419

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !685
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !696
  %i.et = xor i64 %i.es, %i.er, !dbg !700
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !700
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !700
  br i1 %i.eu, label %bb.p, label %bb.q, !dbg !701, !prof !704

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57, !dbg !705
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !710 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16, !dbg !712
  %i.ey = and i64 %.val9, %i.ex, !dbg !716
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !717
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !722, !noalias !569
  %i.fa = load ptr, ptr %0, align 8, !dbg !723, !noalias !569, !nonnull !13, !noundef !13
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !725
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !725
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !728, !noalias !569
  br label %bb.s, !dbg !729

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !732
  %.neg13.i = shl i64 %.neg12.i, 6, !dbg !732
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !735 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !738 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !745, !noalias !569, !noundef !13
  %i.fg = lshr i64 %i.dv, 57, !dbg !746
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !751 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16, !dbg !753
  %i.fj = and i64 %i.fi, %.val9, !dbg !757
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !758, !noalias !569
  %i.fk = load ptr, ptr %0, align 8, !dbg !760, !noalias !569, !nonnull !13, !noundef !13
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !763
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !763
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !766, !noalias !569
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !767
  br i1 %i.fn, label %bb.r, label %bb.t, !dbg !767

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16, !dbg !769
  %i.fp = load i64, ptr %i.i, align 8, !dbg !773, !noalias !569, !noundef !13
  %i.fq = and i64 %i.fp, %i.fo, !dbg !774
  %i.fr = load ptr, ptr %0, align 8, !dbg !775, !noalias !569, !nonnull !13, !noundef !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54, !dbg !779
  store i8 -1, ptr %i.fs, align 1, !dbg !782, !noalias !569
  %i.ft = load ptr, ptr %0, align 8, !dbg !783, !noalias !569, !nonnull !13, !noundef !13
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq, !dbg !785
  %i.fv = getelementptr i8, ptr %i.fu, i64 16, !dbg !785
  store i8 -1, ptr %i.fv, align 1, !dbg !788, !noalias !569
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.fd, ptr noundef nonnull align 1 dereferenceable(64) %i.dq, i64 64, i1 false), !dbg !789, !noalias !569
  br label %bb.s, !dbg !792

bb.s:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl, !dbg !570
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !585

bb.t:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEEE14reserve_rehashNCINvMs4_B1s_B1q_3newINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtNtB3e_3ops5range5RangejEINtNtB3e_6option6OptionReENCNvMs1_B1s_NtB1s_10Categories6freeze0EEs_0EB1u_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !859, !noalias !849
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs80wj1cxFixi_12polars_dtype.exit, !dbg !860

bb.f:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !861
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !861, !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !858, !noalias !849
  store ptr %i.d, ptr %i.c, align 8, !dbg !862, !noalias !849
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !862 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !862, !noalias !849
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !862 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !862, !noalias !849
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !862 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !862, !noalias !849
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !862 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !862, !noalias !849
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !862 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !862, !noalias !849
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !862 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !862, !noalias !849
  %i.w = load i64, ptr %i.e, align 8, !dbg !863, !alias.scope !865, !noalias !866, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !867
  br i1 %i.x, label %._crit_edge64, label %.preheader.lr.ph, !dbg !867

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !dbg !869, !alias.scope !865, !noalias !866, !nonnull !13, !noundef !13 ; 2 uses
  %.val542 = load <16 x i8>, ptr %i.y, align 16, !dbg !871
  %i.z = icmp sgt <16 x i8> %.val542, splat (i8 -1), !dbg !873
  %i.aa = bitcast <16 x i1> %i.z to i16, !dbg !877
  br label %.preheader, !dbg !867

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.035.063 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.sroa.035.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.w, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.aa, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !878
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !882

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.035.157 = phi ptr [ %i.ab, %.noexc4 ], [ %.sroa.035.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ae, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.157) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.035.157, i64 16, !dbg !883 ; 3 uses
  %.val43 = load <16 x i8>, ptr %i.ab, align 16, !dbg !885
  %i.ac = icmp sgt <16 x i8> %.val43, splat (i8 -1), !dbg !887
  %i.ad = bitcast <16 x i1> %i.ac to i16, !dbg !891 ; 2 uses
  %i.ae = add i64 %.sroa.5.156, 16, !dbg !892     ; 2 uses
  %.not.i3 = icmp eq i16 %i.ad, 0, !dbg !878
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !882

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre80 = load i64, ptr %i.e, align 8, !dbg !893, !alias.scope !865, !noalias !866
  br label %._crit_edge64, !dbg !893

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.f
  %i.af = phi i64 [ %.pre80, %._crit_edge64.loopexit ], [ 0, %bb.f ], !dbg !893 ; 2 uses
  %i.ag = sub i64 %i.v, %i.af, !dbg !894
  store i64 %i.ag, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !894, !noalias !849
  store i64 %i.af, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !895, !noalias !849
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.g, !dbg !896, !noalias !902

bb.g:                                             ; preds = %._crit_edge64
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #18, !dbg !903, !noalias !902
  unreachable, !dbg !903

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !904), !dbg !859
  call void @llvm.experimental.noalias.scope.decl(metadata !907), !dbg !910, !noalias !902
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !912, !alias.scope !914, !noalias !902 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !912, !alias.scope !914, !noalias !902, !noundef !13 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !915), !dbg !912, !noalias !902
  %i.ai = icmp eq i64 %.val1.i.i, 0, !dbg !918
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !918

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit
  %i.aj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !920, !alias.scope !921, !noalias !902, !noundef !13
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !920, !alias.scope !921, !noalias !902, !noundef !13 ; 5 uses
  %i.al = add i64 %.val1.i.i, 1, !dbg !922
  %i.am = mul nuw i64 %i.aj, %i.al, !dbg !926     ; 2 uses
  %i.an = add i64 %i.ak, -1, !dbg !930
  %i.ao = add i64 %i.an, %i.am, !dbg !931         ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am, !dbg !931
  call void @llvm.assume(i1 %i.ap), !dbg !933, !noalias !902
  %i.aq = sub i64 0, %i.ak, !dbg !935
  %i.ar = and i64 %i.ao, %i.aq, !dbg !936         ; 3 uses
  %i.as = add i64 %.val1.i.i, 17, !dbg !937
  %i.at = add i64 %i.as, %i.ar, !dbg !938         ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar, !dbg !938
  %i.av = sub nuw i64 -9223372036854775808, %i.ak
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !dbg !940, !noalias !902
  call void @llvm.assume(i1 %i.aw), !dbg !940, !noalias !902
  %i.ax = icmp ne i64 %i.ak, 0, !dbg !942
  call void @llvm.assume(i1 %i.ax), !dbg !944, !noalias !902
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !902
  %i.ay = icmp eq i64 %i.at, 0, !dbg !945
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit, label %bb.h, !dbg !945

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar, !dbg !947
  %i.ba = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.az, !dbg !949
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #19, !dbg !950, !noalias !953
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit, !dbg !954

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs80wj1cxFixi_12polars_dtype.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECs80wj1cxFixi_12polars_dtype.exit, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !859, !noalias !849
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs80wj1cxFixi_12polars_dtype.exit, !dbg !860

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !955 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !955 ; 2 uses
  %.sroa.035.1.lcssa = phi ptr [ %.sroa.035.063, %.preheader ], [ %i.ab, %.noexc4 ], !dbg !955
  %i.bb = add i16 %.sroa.13.1.lcssa, -1, !dbg !956
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !960
  %i.bd = zext nneg i16 %i.bc to i64, !dbg !961
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa, !dbg !962
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd, !dbg !964 ; 2 uses
  %i.bg = add i64 %.sroa.9.061, -1, !dbg !965     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966), !dbg !969
  %i.bh = load ptr, ptr %0, align 8, !dbg !970, !alias.scope !966, !noalias !902, !nonnull !13, !noundef !13
  %i.bi = sub nsw i64 0, %i.bf, !dbg !977
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bi, !dbg !982
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16, !dbg !983
  %.val.i = load i64, ptr %i.bk, align 8, !dbg !989, !noalias !990, !noundef !13 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %.val.i, !dbg !991 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !994
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !997, !noalias !1001
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1004
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !1004 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !1008
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1010, !prof !372

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ], !dbg !991
  %.lcssa.i = phi i16 [ %i.bn, %._crit_edge ], [ %i.ce, %.lr.ph.i ], !dbg !1004
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1011
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !1014
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !1015
  %i.br = and i64 %i.bq, %i.t, !dbg !1015         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !1016
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !1021, !noundef !13
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !1022
  br i1 %i.bu, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1022, !prof !38

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1024
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1026
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !1026 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !1029
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !1031
  %i.by = zext nneg i16 %i.bx to i64, !dbg !1031
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1032
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1034

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ca = add i64 %i.bz, 16, !dbg !1035           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !1037
  %.sroa.0.0.i14 = and i64 %i.cb, %i.t, !dbg !991 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i14, !dbg !994
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !997, !noalias !1001
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1004
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !1004 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !1008
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1010, !prof !419

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.i ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %.val.i, 57, !dbg !1038
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !1041 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !1042
  %i.ci = and i64 %i.ch, %i.t, !dbg !1045
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1046
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !1049, !noalias !902
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !1050
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !1050
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !1053, !noalias !902
  %i.cm = load ptr, ptr %0, align 8, !dbg !1054, !alias.scope !865, !noalias !866, !nonnull !13, !noundef !13
  %.neg.i.i = xor i64 %i.bf, -1, !dbg !1057
  %.neg61.i.i = shl i64 %.neg.i.i, 4, !dbg !1057
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !1058
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1060
  %.neg63.i.i = shl i64 %.neg62.i.i, 4, !dbg !1060
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1062
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(16) %i.cn, i64 range(i64 16, 65) 16, i1 false), !dbg !1064, !noalias !902
  %i.cp = icmp eq i64 %i.bg, 0, !dbg !867
  br i1 %i.cp, label %._crit_edge64.loopexit, label %.preheader, !dbg !867

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066), !dbg !1069
  %.val11 = load ptr, ptr %0, align 8, !dbg !1070 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1072
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i15, !dbg !1072

.lr.ph.i15:                                       ; preds = %bb.j
  %i.cq = lshr i64 %i.l, 4, !dbg !1076
  %i.cr = and i64 %i.l, 15, !dbg !1081
  %.not10.i.i.i = icmp ne i64 %i.cr, 0, !dbg !1082
  %i.cs = zext i1 %.not10.i.i.i to i64, !dbg !1082
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs, !dbg !1082 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1072
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !1072
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i15.new, !dbg !1072

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1072
  br label %bb.k, !dbg !1072

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1072
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader, !dbg !1072

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.db, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1072
  tail call void @llvm.assume(i1 %lcmp.mod133), !dbg !1072
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1083 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16, !dbg !1086
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1088
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1091
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472), !dbg !1091
  store <2 x i64> %i.cw, ptr %i.cu, align 16, !dbg !1093
  br label %._crit_edge.i17, !dbg !1096

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.l, 16, !dbg !1096
  br i1 %i.cx, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1097, !prof !546

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.db, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1083 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16, !dbg !1086
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1088
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1091
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472), !dbg !1091
  store <2 x i64> %i.da, ptr %i.cy, align 16, !dbg !1093
  %i.db = add i64 %.sroa.01.08.i, 32, !dbg !1099  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1083
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !1083 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16, !dbg !1086
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1088
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1091
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472), !dbg !1091
  store <2 x i64> %i.df, ptr %i.dd, align 16, !dbg !1093
  %niter.next.1 = add i64 %niter, 2, !dbg !1072   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1072
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k, !dbg !1072

._crit_edge.thread.i:                             ; preds = %._crit_edge.i17, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1101

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i17, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i17 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i17 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1102
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1107, !noalias !1108
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1110
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTyINtNtCsgZ49sUHp3tW_5alloc4sync4WeakNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEEE14reserve_rehashNCINvMs4_B1x_B1v_3newINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtNtB3j_3ops5range5RangejEINtNtB3j_6option6OptionReENCNvMs1_B1x_NtB1x_10Categories6freeze0EEs_0Es_0INtNtB4b_8function6FnOnceTOhEE9call_onceB1z_, ptr %i.dh, align 8, !dbg !1110, !noalias !1108
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1110
  store i64 16, ptr %i.di, align 8, !dbg !1110, !noalias !1108
  store ptr %0, ptr %i.a, align 8, !dbg !1110, !noalias !1108
  %i.dj = load i64, ptr %i.i, align 8, !dbg !1112, !alias.scope !1066, !noalias !1114, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.dj, -1, !dbg !1115
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1119

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dk, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dk = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1120
  %i.dl = load ptr, ptr %0, align 8, !dbg !1123, !noalias !1114, !nonnull !13, !noundef !13 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i54, !dbg !1125
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !1127, !noalias !1114, !noundef !13
  %.not.i2 = icmp eq i8 %i.dn, -128, !dbg !1127
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !1130

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1120
  %.neg11.i = shl i64 %.neg.i, 4, !dbg !1131
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg11.i, !dbg !1133 ; 2 uses
  %i.dp = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1135

bb.m:                                             ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17
          to label %bb.u unwind label %bb.t, !dbg !1136, !noalias !1114

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137), !dbg !1140
  %i.dr = load ptr, ptr %0, align 8, !dbg !1141, !alias.scope !1137, !noalias !1114, !nonnull !13, !noundef !13 ; 8 uses
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.dp, !dbg !1145
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -16, !dbg !1148
  %.val.i18 = load i64, ptr %i.dt, align 8, !dbg !1152, !noalias !1153, !noundef !13 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1154, !noundef !13 ; 6 uses
  %.sroa.0.07.i19 = and i64 %.val9, %.val.i18, !dbg !1155 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.07.i19, !dbg !1157
  %.sroa.0.0.copyload.i68.i20 = load <16 x i8>, ptr %i.du, align 1, !dbg !1160, !noalias !1164
  %i.dv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i20, zeroinitializer, !dbg !1167
  %i.dw = bitcast <16 x i1> %i.dv to i16, !dbg !1167 ; 2 uses
  %.not.i9.i21 = icmp eq i16 %i.dw, 0, !dbg !1171
  br i1 %.not.i9.i21, label %.lr.ph.i28, label %._crit_edge.i22, !dbg !1173, !prof !372

._crit_edge.i22:                                  ; preds = %.lr.ph.i28, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i23 = phi i64 [ %.sroa.0.07.i19, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i30, %.lr.ph.i28 ], !dbg !1155
  %.lcssa.i24 = phi i16 [ %i.dw, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.en, %.lr.ph.i28 ], !dbg !1167
  %i.dx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i24, i1 true), !dbg !1174
  %i.dy = zext nneg i16 %i.dx to i64, !dbg !1177
  %i.dz = add i64 %.sroa.0.0.lcssa.i23, %i.dy, !dbg !1178
  %i.ea = and i64 %i.dz, %.val9, !dbg !1178       ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ea, !dbg !1179
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !1184, !noundef !13
  %i.ed = icmp sgt i8 %i.ec, -1, !dbg !1185
  br i1 %i.ed, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33, !dbg !1185, !prof !38

bb.n:                                             ; preds = %._crit_edge.i22
  %.val2.i.i26 = load <16 x i8>, ptr %i.dr, align 16, !dbg !1187
  %i.ee = icmp slt <16 x i8> %.val2.i.i26, zeroinitializer, !dbg !1189
  %i.ef = bitcast <16 x i1> %i.ee to i16, !dbg !1189 ; 2 uses
  %.not.i6.i27 = icmp ne i16 %i.ef, 0, !dbg !1192
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true), !dbg !1194
  %i.eh = zext nneg i16 %i.eg to i64, !dbg !1194
  tail call void @llvm.assume(i1 %.not.i6.i27), !dbg !1195
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33, !dbg !1197

.lr.ph.i28:                                       ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i28
  %.sroa.0.010.i29 = phi i64 [ %.sroa.0.0.i30, %.lr.ph.i28 ], [ %.sroa.0.07.i19, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ei = phi i64 [ %i.ej, %.lr.ph.i28 ], [ 0, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ej = add i64 %i.ei, 16, !dbg !1198           ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.010.i29, !dbg !1200
  %.sroa.0.0.i30 = and i64 %i.ek, %.val9, !dbg !1155 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i30, !dbg !1157
  %.sroa.0.0.copyload.i6.i31 = load <16 x i8>, ptr %i.el, align 1, !dbg !1160, !noalias !1164
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i31, zeroinitializer, !dbg !1167
  %i.en = bitcast <16 x i1> %i.em to i16, !dbg !1167 ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.en, 0, !dbg !1171
  br i1 %.not.i.i32, label %.lr.ph.i28, label %._crit_edge.i22, !dbg !1173, !prof !419

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33: ; preds = %bb.n, %._crit_edge.i22
  %.sroa.0.0.i5.i25 = phi i64 [ %i.eh, %bb.n ], [ %i.ea, %._crit_edge.i22 ] ; 4 uses
  %i.eo = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i19, !dbg !1201
  %i.ep = sub i64 %.sroa.0.0.i5.i25, %.sroa.0.07.i19, !dbg !1205
  %i.eq = xor i64 %i.ep, %i.eo, !dbg !1208
  %.unshifted.i = and i64 %i.eq, %.val9, !dbg !1208
  %i.er = icmp ult i64 %.unshifted.i, 16, !dbg !1208
  br i1 %i.er, label %bb.o, label %bb.p, !dbg !1209, !prof !704

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %i.es = lshr i64 %.val.i18, 57, !dbg !1211
  %i.et = trunc nuw nsw i64 %i.es to i8, !dbg !1214 ; 2 uses
  %i.eu = add i64 %.sroa.04.0.i54, -16, !dbg !1215
  %i.ev = and i64 %.val9, %i.eu, !dbg !1218
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i54, !dbg !1219
  store i8 %i.et, ptr %i.ew, align 1, !dbg !1222, !noalias !1114
  %i.ex = load ptr, ptr %0, align 8, !dbg !1223, !noalias !1114, !nonnull !13, !noundef !13
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ev, !dbg !1225
  %i.ez = getelementptr i8, ptr %i.ey, i64 16, !dbg !1225
  store i8 %i.et, ptr %i.ez, align 1, !dbg !1227, !noalias !1114
  br label %bb.r, !dbg !1228

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %.neg12.i = xor i64 %.sroa.0.0.i5.i25, -1, !dbg !1229
  %.neg13.i = shl i64 %.neg12.i, 4, !dbg !1229
  %i.fa = getelementptr inbounds i8, ptr %i.dr, i64 %.neg13.i, !dbg !1231 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i5.i25, !dbg !1233 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !1237, !noalias !1114, !noundef !13
  %i.fd = lshr i64 %.val.i18, 57, !dbg !1238
  %i.fe = trunc nuw nsw i64 %i.fd to i8, !dbg !1241 ; 2 uses
  %i.ff = add i64 %.sroa.0.0.i5.i25, -16, !dbg !1242
  %i.fg = and i64 %i.ff, %.val9, !dbg !1245
  store i8 %i.fe, ptr %i.fb, align 1, !dbg !1246, !noalias !1114
  %i.fh = load ptr, ptr %0, align 8, !dbg !1247, !noalias !1114, !nonnull !13, !noundef !13
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fg, !dbg !1249
  %i.fj = getelementptr i8, ptr %i.fi, i64 16, !dbg !1249
  store i8 %i.fe, ptr %i.fj, align 1, !dbg !1251, !noalias !1114
  %i.fk = icmp eq i8 %i.fc, -1, !dbg !1252
  br i1 %i.fk, label %bb.q, label %bb.s, !dbg !1252

bb.q:                                             ; preds = %bb.p
  %i.fl = add i64 %.sroa.04.0.i54, -16, !dbg !1253
  %i.fm = load i64, ptr %i.i, align 8, !dbg !1256, !noalias !1114, !noundef !13
  %i.fn = and i64 %i.fm, %i.fl, !dbg !1257
  %i.fo = load ptr, ptr %0, align 8, !dbg !1258, !noalias !1114, !nonnull !13, !noundef !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.04.0.i54, !dbg !1260
  store i8 -1, ptr %i.fp, align 1, !dbg !1262, !noalias !1114
  %i.fq = load ptr, ptr %0, align 8, !dbg !1263, !noalias !1114, !nonnull !13, !noundef !13
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fn, !dbg !1265
  %i.fs = getelementptr i8, ptr %i.fr, i64 16, !dbg !1265
  store i8 -1, ptr %i.fs, align 1, !dbg !1267, !noalias !1114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fa, ptr noundef nonnull align 1 dereferenceable(16) %i.do, i64 16, i1 false), !dbg !1268, !noalias !1114
  br label %bb.r, !dbg !1270

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dj, !dbg !1115
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1119

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs80wj1cxFixi_12polars_dtype(ptr noundef nonnull %i.do, ptr noundef nonnull %i.fa, i64 noundef 2)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !1271

end_hunk_1
