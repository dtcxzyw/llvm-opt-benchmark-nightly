Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.10?download=true
inline.NumInlined: 203
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBU_5write4unit6UnitIdNtB1H_11UnitEntryIdEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0ECs8GyQQEoxZtT_7convert:bb.a
  call void @llvm.assume(i1 %i.bn), !noalias !160
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !160
  call void @llvm.assume(i1 %i.bu), !noalias !160
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !160
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #20, !noalias !164
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECs8GyQQEoxZtT_7convert.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bd, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.be, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.bb, %.noexc2 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.034, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.ce = load ptr, ptr %0, align 8, !alias.scope !165, !noalias !166, !nonnull !6, !noundef !6
  %i.cf = sub nsw i64 0, %i.cc
  %i.cg = getelementptr inbounds [24 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -24
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !167, !nonnull !6, !noundef !6
  %i.ci = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
          to label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit unwind label %bb.m ; 2 uses

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.as, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !168
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.as                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !6
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.aq, align 16
  %i.ct = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert.exit ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cz, %i.as           ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !168
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.as
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !160
  %i.di = getelementptr i8, ptr %i.aq, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !160
  %i.dk = load ptr, ptr %0, align 8, !alias.scope !158, !noalias !159, !nonnull !6, !noundef !6
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.dm = getelementptr inbounds i8, ptr %i.aq, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 1 dereferenceable(24) %i.dl, i64 range(i64 8, 25) 24, i1 false), !noalias !160
  %i.dn = icmp eq i64 %i.cd, 0
  br i1 %i.dn, label %._crit_edge37.loopexit, label %.preheader

bb.p:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBW_5write4unit6UnitIdNtB1J_11UnitEntryIdEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0Cs8GyQQEoxZtT_7convert, i64 noundef 24) #21
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit, %bb.c, %bb.p
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.p ], [ %.sroa.7.025, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBU_5write4unit6UnitIdNtB1H_11UnitEntryIdEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0ECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetTNtNtNtBU_5write4unit6UnitIdNtB1H_11UnitEntryIdEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0ECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !190, !noalias !191, !noundef !6 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !190, !noalias !191, !noundef !6 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !192
  %i.r = extractvalue { i64, i64 } %i.q, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.t = icmp ult i64 %..i, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !9

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %..i, 4
  %i.w = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %..i, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 2305843009213693950
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i55 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i55, 3
  %4 = add nuw i64 %i.ae, 8
  %5 = and i64 %4, -16                            ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i55, 16 ; 2 uses
  %i.ag = add i64 %5, %i.af                       ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %5
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !10

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !195
  %i.aj = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !195 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !195
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ag), !noalias !195
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !196
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %5 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ao, i8 -1, i64 %i.af, i1 false), !noalias !196
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i55, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i55, -1     ; 6 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i55, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.09.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !194
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ao, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %i.at = load i64, ptr %i.f, align 8, !alias.scope !197, !noalias !198, !noundef !6 ; 4 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit
  %i.av = load ptr, ptr %0, align 8, !alias.scope !197, !noalias !198, !nonnull !6, !noundef !6 ; 4 uses
  %.val326 = load <16 x i8>, ptr %i.av, align 16
  %i.aw = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !199, !noundef !6 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !6
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.al, %bb.h ], [ %i.am, %bb.i ]
  %.sroa.7.025 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

bb.k:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #18, !noalias !200
  resume { ptr, i32 } %i.ay

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.036 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.by, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit
  %i.bd = sub i64 %.sroa.09.0.i.i, %i.at
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  store i64 %i.at, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8GyQQEoxZtT_7convert(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECs8GyQQEoxZtT_7convert.exit unwind label %bb.l, !noalias !200

bb.l:                                             ; preds = %._crit_edge37
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #19, !noalias !200
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECs8GyQQEoxZtT_7convert.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202), !noalias !200
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !203, !noalias !200, !noundef !6 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECs8GyQQEoxZtT_7convert.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !203, !noalias !200 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !203, !noalias !200 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !203, !noalias !200
  %i.bg = add i64 %.val3.i.i, 1
  %i.bh = mul nuw i64 %.val.i.i, %i.bg            ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  call void @llvm.assume(i1 %i.bk), !noalias !200
  %i.bl = sub i64 0, %.val1.i.i
  %i.bm = and i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !noalias !200
  call void @llvm.assume(i1 %i.br), !noalias !200
  %i.bs = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bs), !noalias !200
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !200
  %i.bt = sub nsw i64 0, %i.bm
  %i.bu = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bt
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #20, !noalias !204
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs8GyQQEoxZtT_7convert.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECs8GyQQEoxZtT_7convert.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.az, %.noexc2 ]
  %i.bv = add i16 %.sroa.13.1.lcssa, -1
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.sroa.13.1.lcssa
  %i.bz = add i64 %.sroa.5.1.lcssa, %i.bx         ; 2 uses
  %i.ca = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cb = sub nsw i64 0, %i.bz
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.val3.i = load i64, ptr %i.cd, align 8, !noalias !199, !noundef !6 ; 3 uses
  %i.ce = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val3.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !199, !noundef !6 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ch            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !205
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ck, %bb.n ], [ %i.db, %.lr.ph.i ]
  %i.cl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cm
  %i.co = and i64 %i.cn, %i.aq                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !6
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.ao, align 16
  %i.cs = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ct, 0
  %i.cu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ct, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cw = phi i64 [ %i.cx, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cx = add i64 %i.cw, 16                       ; 2 uses
  %i.cy = add i64 %i.cx, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cy, %i.aq           ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !205
  %i.da = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cv, %bb.o ], [ %i.co, %._crit_edge.i ] ; 3 uses
  %i.dc = lshr i64 %i.ch, 57
  %i.dd = trunc nuw nsw i64 %i.dc to i8           ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.df = and i64 %i.de, %i.aq
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i5.i
  store i8 %i.dd, ptr %i.dg, align 1, !noalias !200
  %i.dh = getelementptr i8, ptr %i.ao, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store i8 %i.dd, ptr %i.di, align 1, !noalias !200
  %.neg.i.i = xor i64 %i.bz, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dj = getelementptr inbounds i8, ptr %i.av, i64 %.neg62.i.i
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_12DwarfPackageINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7find_cuCs8GyQQEoxZtT_7convert:bb.a
  %.sroa.01.1.i.i = phi i32 [ %.sroa.01.0326.i.i, %bb.aj ], [ %.sroa.01.0326.i.i, %bb.ab ], [ %.sroa.01.0326.i.i, %bb.ac ], [ %.sroa.01.0326.i.i, %bb.ad ], [ %.sroa.01.0326.i.i, %bb.ae ], [ %.sroa.01.0326.i.i, %bb.af ], [ %.sroa.01.0326.i.i, %bb.ag ], [ %.sroa.01.0326.i.i, %bb.ah ], [ %.sroa.01.0326.i.i, %bb.ai ], [ %i.z, %bb.e ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0327.i.i, %bb.aj ], [ %.sroa.0.0327.i.i, %bb.ab ], [ %.sroa.0.0327.i.i, %bb.ac ], [ %.sroa.0.0327.i.i, %bb.ad ], [ %.sroa.0.0327.i.i, %bb.ae ], [ %.sroa.0.0327.i.i, %bb.af ], [ %.sroa.0.0327.i.i, %bb.ag ], [ %.sroa.0.0327.i.i, %bb.ah ], [ %.sroa.0.0327.i.i, %bb.ai ], [ %i.y, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !362
  call void @_RNvXs9_NtNtCsi68uqYEhoRA_5gimli4read5indexINtB5_24UnitIndexSectionIteratorINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.l), !noalias !368
  %i.cl = load i8, ptr %i.u, align 4, !range !367, !noalias !362, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i8 %i.cl, -1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.e

bb.al:                                            ; preds = %bb.a, %bb.am, %bb.an
  %.sink.sink = phi i8 [ -1, %bb.am ], [ 1, %bb.an ], [ 2, %bb.a ]
  %.sroa.57129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i8 %.sink.sink, ptr %.sroa.57129.0..sroa_idx, align 8
  ret void

bb.am:                                            ; preds = %bb.c, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x
  %.sroa.16.0.ph = phi ptr [ %.sroa.0123.i.i.sroa.6.0.copyload, %bb.x ], [ %.sroa.0111.i.i.sroa.6.0.copyload, %bb.v ], [ %.sroa.099.i.i.sroa.6.0.copyload, %bb.t ], [ %.sroa.087.i.i.sroa.6.0.copyload, %bb.r ], [ %.sroa.075.i.i.sroa.6.0.copyload, %bb.p ], [ %.sroa.063.i.i.sroa.6.0.copyload, %bb.n ], [ %.sroa.051.i.i.sroa.6.0.copyload, %bb.l ], [ %.sroa.039.i.i.sroa.6.0.copyload, %bb.j ], [ %.sroa.027.i.i.sroa.6.0.copyload, %bb.h ], [ %.sroa.020.i.i.sroa.6.0.copyload, %bb.f ], [ %.sroa.0.i.sroa.6.0.copyload138, %bb.c ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0123.i.i.sroa.0.0.copyload, %bb.x ], [ %.sroa.0111.i.i.sroa.0.0.copyload, %bb.v ], [ %.sroa.099.i.i.sroa.0.0.copyload, %bb.t ], [ %.sroa.087.i.i.sroa.0.0.copyload, %bb.r ], [ %.sroa.075.i.i.sroa.0.0.copyload, %bb.p ], [ %.sroa.063.i.i.sroa.0.0.copyload, %bb.n ], [ %.sroa.051.i.i.sroa.0.0.copyload, %bb.l ], [ %.sroa.039.i.i.sroa.0.0.copyload, %bb.j ], [ %.sroa.027.i.i.sroa.0.0.copyload, %bb.h ], [ %.sroa.020.i.i.sroa.0.0.copyload, %bb.f ], [ %.sroa.0.i.sroa.0.0.copyload134, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6122.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.662.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.674.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6110.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.686.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.638.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.16.0.ph, ptr %.sroa.4132.0..sroa_idx, align 8
  br label %bb.al

bb.an:                                            ; preds = %bb.z, %bb.y
  %.sroa.981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.981.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i, i64 7, i1 false)
  %.sroa.1991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1991.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.638.i.i, i64 7, i1 false)
  %.sroa.2294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2294.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.650.i.i, i64 7, i1 false)
  %.sroa.28100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28100.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.686.i.i, i64 7, i1 false)
  %.sroa.31103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.31103.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.698.i.i, i64 7, i1 false)
  %.sroa.41113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.41113.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6110.i.i, i64 7, i1 false)
  %.sroa.44116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.44116.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.i.i, i64 7, i1 false)
  %.sroa.47119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47119.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.662.i.i, i64 7, i1 false)
  %.sroa.50122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.50122.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.674.i.i, i64 7, i1 false)
  %.sroa.56128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56128.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6122.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5161.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6122.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.662.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.674.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6110.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.686.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.638.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %i.ci, ptr %0, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.678.0..sroa_idx, align 8
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.020.i.i.sroa.0.0.copyload, ptr %.sroa.779.0..sroa_idx, align 8
  %.sroa.779.sroa.4.0..sroa.779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.020.i.i.sroa.6.0.copyload, ptr %.sroa.779.sroa.4.0..sroa.779.0..sroa_idx.sroa_idx, align 8
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ac, ptr %.sroa.880.0..sroa_idx, align 8
  %.sroa.1082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bu, ptr %.sroa.1082.0..sroa_idx, align 8
  %.sroa.1183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bw, ptr %.sroa.1183.0..sroa_idx, align 8
  %.sroa.1284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.val.i216.i.i, ptr %.sroa.1284.0..sroa_idx, align 8
  %.sroa.1486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ce, ptr %.sroa.1486.0..sroa_idx, align 8
  %.sroa.1587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cg, ptr %.sroa.1587.0..sroa_idx, align 8
  %.sroa.1688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.val.i218.i.i, ptr %.sroa.1688.0..sroa_idx, align 8
  %.sroa.1789.sroa.4.0..sroa.1789.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.027.i.i.sroa.0.0.copyload, ptr %.sroa.1789.sroa.4.0..sroa.1789.0..sroa_idx.sroa_idx, align 8
  %.sroa.1789.sroa.5.0..sroa.1789.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.027.i.i.sroa.6.0.copyload, ptr %.sroa.1789.sroa.5.0..sroa.1789.0..sroa_idx.sroa_idx, align 8
  %.sroa.1890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.ag, ptr %.sroa.1890.0..sroa_idx, align 8
  %.sroa.2092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.039.i.i.sroa.0.0.copyload, ptr %.sroa.2092.0..sroa_idx, align 8
  %.sroa.2092.sroa.4.0..sroa.2092.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.039.i.i.sroa.6.0.copyload, ptr %.sroa.2092.sroa.4.0..sroa.2092.0..sroa_idx.sroa_idx, align 8
  %.sroa.2193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ak, ptr %.sroa.2193.0..sroa_idx, align 8
  %.sroa.2395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ce, ptr %.sroa.2395.0..sroa_idx, align 8
  %.sroa.2496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.cg, ptr %.sroa.2496.0..sroa_idx, align 8
  %.sroa.2597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %.val.i218.i.i, ptr %.sroa.2597.0..sroa_idx, align 8
  %.sroa.2698.sroa.4.0..sroa.2698.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sroa.075.i.i.sroa.0.0.copyload, ptr %.sroa.2698.sroa.4.0..sroa.2698.0..sroa_idx.sroa_idx, align 8
  %.sroa.2698.sroa.5.0..sroa.2698.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.075.i.i.sroa.6.0.copyload, ptr %.sroa.2698.sroa.5.0..sroa.2698.0..sroa_idx.sroa_idx, align 8
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %i.aw, ptr %.sroa.2799.0..sroa_idx, align 8
  %.sroa.29101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.087.i.i.sroa.0.0.copyload, ptr %.sroa.29101.0..sroa_idx, align 8
  %.sroa.29101.sroa.4.0..sroa.29101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.087.i.i.sroa.6.0.copyload, ptr %.sroa.29101.sroa.4.0..sroa.29101.0..sroa_idx.sroa_idx, align 8
  %.sroa.30102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.ba, ptr %.sroa.30102.0..sroa_idx, align 8
  %.sroa.32104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ce, ptr %.sroa.32104.0..sroa_idx, align 8
  %.sroa.33105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.cg, ptr %.sroa.33105.0..sroa_idx, align 8
  %.sroa.34106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.val.i218.i.i, ptr %.sroa.34106.0..sroa_idx, align 8
  %.sroa.36108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.bp, ptr %.sroa.36108.0..sroa_idx, align 8
  %.sroa.37109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.br, ptr %.sroa.37109.0..sroa_idx, align 8
  %.sroa.38110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %.val.i.i.i, ptr %.sroa.38110.0..sroa_idx, align 8
  %.sroa.39111.sroa.4.0..sroa.39111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.sroa.099.i.i.sroa.0.0.copyload, ptr %.sroa.39111.sroa.4.0..sroa.39111.0..sroa_idx.sroa_idx, align 8
  %.sroa.39111.sroa.5.0..sroa.39111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.099.i.i.sroa.6.0.copyload, ptr %.sroa.39111.sroa.5.0..sroa.39111.0..sroa_idx.sroa_idx, align 8
  %.sroa.40112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.be, ptr %.sroa.40112.0..sroa_idx, align 8
  %.sroa.42114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %.sroa.0123.i.i.sroa.0.0.copyload, ptr %.sroa.42114.0..sroa_idx, align 8
  %.sroa.42114.sroa.4.0..sroa.42114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.0123.i.i.sroa.6.0.copyload, ptr %.sroa.42114.sroa.4.0..sroa.42114.0..sroa_idx.sroa_idx, align 8
  %.sroa.43115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.bm, ptr %.sroa.43115.0..sroa_idx, align 8
  %.sroa.45117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %.sroa.051.i.i.sroa.0.0.copyload, ptr %.sroa.45117.0..sroa_idx, align 8
  %.sroa.45117.sroa.4.0..sroa.45117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %.sroa.051.i.i.sroa.6.0.copyload, ptr %.sroa.45117.sroa.4.0..sroa.45117.0..sroa_idx.sroa_idx, align 8
  %.sroa.46118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 %i.ao, ptr %.sroa.46118.0..sroa_idx, align 8
  %.sroa.48120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %.sroa.063.i.i.sroa.0.0.copyload, ptr %.sroa.48120.0..sroa_idx, align 8
  %.sroa.48120.sroa.4.0..sroa.48120.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %.sroa.063.i.i.sroa.6.0.copyload, ptr %.sroa.48120.sroa.4.0..sroa.48120.0..sroa_idx.sroa_idx, align 8
  %.sroa.49121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 %i.as, ptr %.sroa.49121.0..sroa_idx, align 8
  %.sroa.51123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.bz, ptr %.sroa.51123.0..sroa_idx, align 8
  %.sroa.52124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.cb, ptr %.sroa.52124.0..sroa_idx, align 8
  %.sroa.53125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 %.val.i217.i.i, ptr %.sroa.53125.0..sroa_idx, align 8
  %.sroa.54126.sroa.4.0..sroa.54126.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %.sroa.0111.i.i.sroa.0.0.copyload, ptr %.sroa.54126.sroa.4.0..sroa.54126.0..sroa_idx.sroa_idx, align 8
  %.sroa.54126.sroa.5.0..sroa.54126.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.0111.i.i.sroa.6.0.copyload, ptr %.sroa.54126.sroa.5.0..sroa.54126.0..sroa_idx.sroa_idx, align 8
  %.sroa.55127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 %i.bi, ptr %.sroa.55127.0..sroa_idx, align 8
  br label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.h, label %bb.d, !prof !9

.thread:                                          ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4
  %i.e = and i64 %1, 8
  %..i.i = add nuw nsw i64 %i.e, 8
  %.sroa.03.0.i.i = select i1 %i.d, i64 4, i64 %..i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %1, 3
  %i.g = udiv i64 %i.f, 7
  %i.h = add nsw i64 %i.g, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = icmp ugt i64 %i.j, 2305843009213693950
  br i1 %i.l, label %bb.f, label %bb.e, !prof !13

bb.e:                                             ; preds = %.thread, %bb.d
  %.sroa.4.0.i.ph.i10 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.k, %bb.d ] ; 5 uses
  %i.m = shl nuw i64 %.sroa.4.0.i.ph.i10, 3
  %2 = add nuw i64 %i.m, 8
  %3 = and i64 %2, -16                            ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.4.0.i.ph.i10, 16  ; 2 uses
  %i.o = add i64 %3, %i.n                         ; 4 uses
  %i.p = icmp ult i64 %i.o, %3
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.f, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !10

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !383
  %i.r = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !383 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !383
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i

bb.g:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.o), !noalias !383
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i

bb.h:                                             ; preds = %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !384 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i: ; preds = %bb.g, %bb.f
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.i: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.y = icmp samesign ult i64 %.sroa.4.0.i.ph.i10, 9
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i10, -1      ; 2 uses
  %i.aa = lshr i64 %.sroa.4.0.i.ph.i10, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.09.0.i.i = select i1 %i.y, i64 %i.z, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ac, i8 -1, i64 %i.n, i1 false), !noalias !384
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.a, %bb.h, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.i
  %.sroa.10.0 = phi i64 [ %i.x, %bb.h ], [ %.sroa.12.09.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i ], [ %.sroa.09.0.i.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.w, %bb.h ], [ %.sroa.7.010.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i ], [ %i.z, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.thread.i ], [ %i.ac, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECs8GyQQEoxZtT_7convert.exit.i ], [ @0, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13ranges_offsetCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !14, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !18, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8rnglistsINtB5_10RangeListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10get_offsetCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, i32 noundef %.sroa.0.0.copyload, i64 noundef %i.g, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !18, !noundef !6
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %.val = load i32, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.f = load i8, ptr %i.e, align 8, !range !15, !alias.scope !388, !noalias !389, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE17raw_locations_dwoCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, i64 noundef %2, i32 noundef %.val)
  br label %_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCs8GyQQEoxZtT_7convert.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, i64 noundef %2, i32 noundef %.val)
  br label %_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCs8GyQQEoxZtT_7convert.exit

_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13raw_locationsCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16locations_offsetCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !14, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !18, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.g = load i64, ptr %i.f, align 16, !noundef !6
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE10get_offsetCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, i32 noundef %.sroa.0.0.copyload, i64 noundef %i.g, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE22ranges_offset_from_rawCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !14, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !18, !noundef !6 ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 416
  %.val = load i8, ptr %i.d, align 8, !range !15, !noundef !6
  %i.e = getelementptr i8, ptr %i.c, i64 90
  %.val1 = load i16, ptr %i.e, align 2
  %i.f = getelementptr i8, ptr %i.c, i64 504
  %.val2 = load i64, ptr %i.f, align 8
  %i.g = trunc nuw i8 %.val to i1
  %i.h = icmp ult i16 %.val1, 5
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  %i.i = select i1 %or.cond.i, i64 %.val2, i64 0
  %spec.select.i = add i64 %i.i, %1
  ret i64 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE7addressCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !14, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !18, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load i8, ptr %i.e, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  tail call void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEE11get_addressCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, i8 noundef %i.f, i64 noundef %i.h, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_7UnitRefINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE9locationsCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !18, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.e = load i8, ptr %i.d, align 8, !range !15, !alias.scope !394, !noalias !396, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.02.0.copyload.i = load i32, ptr %i.h, align 8, !alias.scope !395, !noalias !397 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !395, !noalias !397, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !395, !noalias !397, !noundef !6 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE13locations_dwoCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i64 noundef %2, i32 noundef %.sroa.02.0.copyload.i, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.m), !noalias !395
  br label %_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE9locationsCs8GyQQEoxZtT_7convert.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8loclistsINtB5_13LocationListsINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE9locationsCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i64 noundef %2, i32 noundef %.sroa.02.0.copyload.i, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.m), !noalias !395
  br label %_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE9locationsCs8GyQQEoxZtT_7convert.exit

_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE9locationsCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 25) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val14 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.c = add i64 %.val15, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val14, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
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
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val14, i64 %.sroa.01.08.i.epil.init ; 2 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %.val14, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val14, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
end_hunk_1
