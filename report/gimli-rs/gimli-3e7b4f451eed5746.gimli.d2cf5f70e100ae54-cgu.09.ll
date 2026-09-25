Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/gimli-3e7b4f451eed5746.gimli.d2cf5f70e100ae54-cgu.09?download=true
inline.NumInlined: 180
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0EBU_:bb.a
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !76
  call void @llvm.assume(i1 %i.bs), !noalias !76
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !76
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !76
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !80
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.az, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.cc = load ptr, ptr %0, align 8, !alias.scope !81, !noalias !82, !nonnull !4, !noundef !4
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [32 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -32
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !83, !nonnull !4, !noundef !4
  %i.cg = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetEB1R_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.aq, %i.cg            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !84
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit ], [ %i.da, %.lr.ph.i ]
  %i.ck = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cl
  %i.cn = and i64 %i.cm, %i.aq                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !4
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.m, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.m:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ao, align 16
  %i.cr = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cs, 0
  %i.ct = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_.exit ]
  %i.cw = add i64 %i.cv, 16                       ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cx, %i.aq            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !noalias !84
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.m, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cu, %bb.m ], [ %i.cn, %._crit_edge.i ] ; 3 uses
  %i.db = lshr i64 %i.cg, 57
  %i.dc = trunc nuw nsw i64 %i.db to i8           ; 2 uses
  %i.dd = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.de = and i64 %i.dd, %i.aq
  %i.df = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i5.i
  store i8 %i.dc, ptr %i.df, align 1, !noalias !76
  %i.dg = getelementptr i8, ptr %i.ao, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store i8 %i.dc, ptr %i.dh, align 1, !noalias !76
  %i.di = load ptr, ptr %0, align 8, !alias.scope !74, !noalias !75, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.dk = getelementptr inbounds i8, ptr %i.ao, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dk, ptr noundef nonnull align 1 dereferenceable(32) %i.dj, i64 range(i64 8, 33) 32, i1 false), !noalias !76
  %i.dl = icmp eq i64 %i.cb, 0
  br i1 %i.dl, label %._crit_edge36.loopexit, label %.preheader

bb.n:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtBb_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBV_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0Es_0INtNtNtB3f_3ops8function6FnOnceTOhEE9call_onceBZ_) #18
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, %bb.c, %bb.n
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.n ], [ %.sroa.12.023, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.n ], [ %.sroa.7.024, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %i.dm = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dn = insertvalue { i64, i64 } %i.dm, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0EBU_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuE0EB1W_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !106, !noalias !107, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !106, !noalias !107, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !108 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !6

.thread:                                          ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ugt i64 %i.ac, 2305843009213693950
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ad, %bb.f ] ; 5 uses
  %i.af = shl nuw i64 %.sroa.4.0.i.ph.i54, 3
  %5 = add nuw i64 %i.af, 8
  %6 = and i64 %5, -16                            ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ah = add i64 %6, %i.ag                       ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %6
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !111
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !111 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !111
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ah), !noalias !111
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !112
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %6 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !112
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 6 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !110
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !110
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !110
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !110
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !110
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !110
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !113, !noalias !114, !noundef !4 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !113, !noalias !114, !nonnull !4, !noundef !4 ; 4 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !115, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.023 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.k:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !116
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.035 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.033 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.032 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i127 = icmp eq i16 %.sroa.13.032, 0
  br i1 %.not.i127, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.129 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.035, %.preheader ] ; 2 uses
  %.sroa.5.128 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.034, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.129) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.129, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.128, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge36:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.be = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !110
  store i64 %i.au, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !110
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit unwind label %bb.l, !noalias !116

bb.l:                                             ; preds = %._crit_edge36
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17, !noalias !116
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit: ; preds = %._crit_edge36
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118), !noalias !116
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !119, !noalias !116, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !119, !noalias !116 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !119, !noalias !116 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !119, !noalias !116
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !116
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !116
  call void @llvm.assume(i1 %i.bs), !noalias !116
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !116
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !120
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.val3.i = load i64, ptr %i.ce, align 8, !noalias !115, !noundef !4 ; 3 uses
  %i.cf = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.val3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !115, !noundef !4 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !121
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %bb.n ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ar                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.o:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.ct = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cz, %i.ar            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !121
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !116
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !116
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dk = getelementptr inbounds i8, ptr %i.aw, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.dl = getelementptr inbounds i8, ptr %i.ap, i64 %.neg64.i.i
  %i.dm = load i64, ptr %i.dk, align 1, !noalias !116
  store i64 %i.dm, ptr %i.dl, align 8, !noalias !116
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge36, label %.preheader

bb.p:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuE0E0B1Y_, i64 noundef 8, ptr noundef null) #18
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, %bb.c, %bb.p
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.p ], [ %.sroa.12.023, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.p ], [ %.sroa.7.024, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %i.do = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dp = insertvalue { i64, i64 } %i.do, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuE0EB1W_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !143, !noalias !144, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !143, !noalias !144, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !145 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !6

.thread:                                          ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ugt i64 %i.ac, 2305843009213693950
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ad, %bb.f ] ; 5 uses
  %i.af = shl nuw i64 %.sroa.4.0.i.ph.i54, 3
  %5 = add nuw i64 %i.af, 8
  %6 = and i64 %5, -16                            ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ah = add i64 %6, %i.ag                       ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %6
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !148
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !148 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !148
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ah), !noalias !148
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !149
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %6 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !149
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 6 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !147
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !147
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !147
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !147
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !150, !noalias !151, !noundef !4 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !150, !noalias !151, !nonnull !4, !noundef !4 ; 4 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !152, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.023 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.k:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !153
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.035 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.033 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.032 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i127 = icmp eq i16 %.sroa.13.032, 0
  br i1 %.not.i127, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.129 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.035, %.preheader ] ; 2 uses
  %.sroa.5.128 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.034, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.129) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.129, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.128, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge36:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.be = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  store i64 %i.au, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !147
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit unwind label %bb.l, !noalias !153

bb.l:                                             ; preds = %._crit_edge36
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17, !noalias !153
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit: ; preds = %._crit_edge36
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155), !noalias !153
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !156, !noalias !153, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !156, !noalias !153 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !156, !noalias !153 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !156, !noalias !153
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !153
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !153
  call void @llvm.assume(i1 %i.bs), !noalias !153
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !153
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !157
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.val3.i = load i64, ptr %i.ce, align 8, !noalias !152, !noundef !4 ; 3 uses
  %i.cf = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !152, !noundef !4 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !158
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %bb.n ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ar                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.o:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.ct = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cz, %i.ar            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !158
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !153
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !153
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dk = getelementptr inbounds i8, ptr %i.aw, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.dl = getelementptr inbounds i8, ptr %i.ap, i64 %.neg64.i.i
  %i.dm = load i64, ptr %i.dk, align 1, !noalias !153
  store i64 %i.dm, ptr %i.dl, align 8, !noalias !153
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge36, label %.preheader

bb.p:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuE0E0B1Y_, i64 noundef 8, ptr noundef null) #18
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, %bb.c, %bb.p
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.p ], [ %.sroa.12.023, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.p ], [ %.sroa.7.024, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %i.do = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dp = insertvalue { i64, i64 } %i.do, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuE0EB1W_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !180, !noalias !181, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !180, !noalias !181, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !182 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !184
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !6

.thread:                                          ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ugt i64 %i.ac, 2305843009213693950
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ad, %bb.f ] ; 5 uses
  %i.af = shl nuw i64 %.sroa.4.0.i.ph.i54, 3
  %5 = add nuw i64 %i.af, 8
  %6 = and i64 %5, -16                            ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ah = add i64 %6, %i.ag                       ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %6
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !185
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !185 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !185
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ah), !noalias !185
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !186
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %6 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !186
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 6 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !184
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !184
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !184
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !184
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !184
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !184
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !184
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !187, !noalias !188, !noundef !4 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !187, !noalias !188, !nonnull !4, !noundef !4 ; 4 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !189, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.023 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !184
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.k:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !190
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.035 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.033 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.032 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i127 = icmp eq i16 %.sroa.13.032, 0
  br i1 %.not.i127, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.129 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.035, %.preheader ] ; 2 uses
  %.sroa.5.128 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.034, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.129) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.129, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.128, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge36:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.be = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !184
  store i64 %i.au, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !184
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit unwind label %bb.l, !noalias !190

bb.l:                                             ; preds = %._crit_edge36
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17, !noalias !190
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit: ; preds = %._crit_edge36
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !192), !noalias !190
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !193, !noalias !190, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !193, !noalias !190 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !193, !noalias !190 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !193, !noalias !190
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !190
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !190
  call void @llvm.assume(i1 %i.bs), !noalias !190
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !190
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !190
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !194
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !184
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.val3.i = load i64, ptr %i.ce, align 8, !noalias !189, !noundef !4 ; 3 uses
  %i.cf = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !189, !noundef !4 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !195
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %bb.n ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ar                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.o:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.ct = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cz, %i.ar            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !195
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !190
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !190
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dk = getelementptr inbounds i8, ptr %i.aw, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.dl = getelementptr inbounds i8, ptr %i.ap, i64 %.neg64.i.i
  %i.dm = load i64, ptr %i.dk, align 1, !noalias !190
  store i64 %i.dm, ptr %i.dl, align 8, !noalias !190
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge36, label %.preheader

bb.p:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuE0E0B1Y_, i64 noundef 8, ptr noundef null) #18
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, %bb.c, %bb.p
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.p ], [ %.sroa.12.023, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.p ], [ %.sroa.7.024, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %i.do = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dp = insertvalue { i64, i64 } %i.do, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write5range9RangeListuE0EB1W_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !217, !noalias !218, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !217, !noalias !218, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !219 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !6

.thread:                                          ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ugt i64 %i.ac, 2305843009213693950
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ad, %bb.f ] ; 5 uses
  %i.af = shl nuw i64 %.sroa.4.0.i.ph.i54, 3
  %5 = add nuw i64 %i.af, 8
  %6 = and i64 %5, -16                            ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ah = add i64 %6, %i.ag                       ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %6
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !222
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !222 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !222
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ah), !noalias !222
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !223
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %6 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !223
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 6 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !221
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !221
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !224, !noalias !225, !nonnull !4, !noundef !4 ; 4 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !226, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.023 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.k:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !227
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.035 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.033 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.032 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i127 = icmp eq i16 %.sroa.13.032, 0
  br i1 %.not.i127, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.129 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.035, %.preheader ] ; 2 uses
  %.sroa.5.128 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.034, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.129) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.129, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.128, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge36:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.be = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  store i64 %i.au, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit unwind label %bb.l, !noalias !227

bb.l:                                             ; preds = %._crit_edge36
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17, !noalias !227
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit: ; preds = %._crit_edge36
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !229), !noalias !227
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !230, !noalias !227, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !230, !noalias !227 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !230, !noalias !227 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !230, !noalias !227
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !227
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !227
  call void @llvm.assume(i1 %i.bs), !noalias !227
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !227
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !231
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.val3.i = load i64, ptr %i.ce, align 8, !noalias !226, !noundef !4 ; 3 uses
  %i.cf = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !226, !noundef !4 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !232
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %bb.n ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ar                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.o:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.ct = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cz, %i.ar            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !232
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !227
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !227
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dk = getelementptr inbounds i8, ptr %i.aw, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.dl = getelementptr inbounds i8, ptr %i.ap, i64 %.neg64.i.i
  %i.dm = load i64, ptr %i.dk, align 1, !noalias !227
  store i64 %i.dm, ptr %i.dl, align 8, !noalias !227
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge36, label %.preheader

bb.p:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write5range9RangeListuE0E0B1Y_, i64 noundef 8, ptr noundef null) #18
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, %bb.c, %bb.p
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.p ], [ %.sroa.12.023, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.p ], [ %.sroa.7.024, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %i.do = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dp = insertvalue { i64, i64 } %i.do, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationuE0EB1W_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !254, !noalias !255, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !254, !noalias !255, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !256 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !6

.thread:                                          ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ugt i64 %i.ac, 2305843009213693950
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ad, %bb.f ] ; 5 uses
  %i.af = shl nuw i64 %.sroa.4.0.i.ph.i54, 3
  %5 = add nuw i64 %i.af, 8
  %6 = and i64 %5, -16                            ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ah = add i64 %6, %i.ag                       ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %6
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !259
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !259 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !259
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ah), !noalias !259
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !260
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %6 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !260
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 6 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !258
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !258
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !261, !noalias !262, !noundef !4 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !261, !noalias !262, !nonnull !4, !noundef !4 ; 4 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !263, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.023 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.k:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !264
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.035 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.033 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.032 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i127 = icmp eq i16 %.sroa.13.032, 0
  br i1 %.not.i127, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.129 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.035, %.preheader ] ; 2 uses
  %.sroa.5.128 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.034, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.129) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.129, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.128, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge36:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.be = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  store i64 %i.au, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !258
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit unwind label %bb.l, !noalias !264

bb.l:                                             ; preds = %._crit_edge36
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17, !noalias !264
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit: ; preds = %._crit_edge36
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !266), !noalias !264
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !267, !noalias !264, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !267, !noalias !264 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !267, !noalias !264 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !267, !noalias !264
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !264
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !264
  call void @llvm.assume(i1 %i.bs), !noalias !264
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !264
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !264
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !268
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.val3.i = load i64, ptr %i.ce, align 8, !noalias !263, !noundef !4 ; 3 uses
  %i.cf = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.val3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !263, !noundef !4 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !269
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %bb.n ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ar                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.o:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.ct = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cz, %i.ar            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !269
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !264
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !264
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dk = getelementptr inbounds i8, ptr %i.aw, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.dl = getelementptr inbounds i8, ptr %i.ap, i64 %.neg64.i.i
  %i.dm = load i64, ptr %i.dk, align 1, !noalias !264
  store i64 %i.dm, ptr %i.dl, align 8, !noalias !264
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge36, label %.preheader

bb.p:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationuE0E0B1Y_, i64 noundef 8, ptr noundef null) #18
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, %bb.c, %bb.p
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.p ], [ %.sroa.12.023, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.p ], [ %.sroa.7.024, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit ]
  %i.do = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dp = insertvalue { i64, i64 } %i.do, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1T_11DirectoryIdENtB1T_8FileInfoE0EB1X_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !291, !noalias !292, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !291, !noalias !292, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !293 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !6

.thread:                                          ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ugt i64 %i.ac, 2305843009213693950
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ad, %bb.f ] ; 5 uses
  %i.af = shl nuw i64 %.sroa.4.0.i.ph.i54, 3
  %5 = add nuw i64 %i.af, 8
  %6 = and i64 %5, -16                            ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ah = add i64 %6, %i.ag                       ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %6
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !296
  %i.ak = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !296 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !296
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ah), !noalias !296
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !297
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %6 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !297
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 6 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !295
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !295
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !295
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !295
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !295
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !295
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !295
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !298, !noalias !299, !noundef !4 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge36, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !298, !noalias !299, !nonnull !4, !noundef !4 ; 4 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !300, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.j ], [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.12.023 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

bb.k:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !301
  resume { ptr, i32 } %i.az

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.035 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.033 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.032 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i127 = icmp eq i16 %.sroa.13.032, 0
  br i1 %.not.i127, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.129 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.035, %.preheader ] ; 2 uses
  %.sroa.5.128 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.034, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.129) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.129, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.128, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge36:                                    ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit
  %i.be = sub i64 %.sroa.09.0.i.i, %i.au
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !295
  store i64 %i.au, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !295
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit unwind label %bb.l, !noalias !301

bb.l:                                             ; preds = %._crit_edge36
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17, !noalias !301
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit: ; preds = %._crit_edge36
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303), !noalias !301
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !304, !noalias !301, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !304, !noalias !301 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !304, !noalias !301 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !304, !noalias !301
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !301
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !301
  call void @llvm.assume(i1 %i.bs), !noalias !301
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !301
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !301
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !305
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsi68uqYEhoRA_5gimli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECsi68uqYEhoRA_5gimli.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.032, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.034, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.035, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.033, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.val3.i = load i64, ptr %i.ce, align 8, !noalias !300, !noundef !4 ; 3 uses
  %i.cf = icmp ult i64 %.val3.i, %.val2.i
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.val3.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !300, !noundef !4 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !306
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %bb.n ], [ %i.dc, %.lr.ph.i ]
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ar                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.o, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.o:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.ct = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.cx = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ]
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = add i64 %i.cy, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cz, %i.ar            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.da, align 1, !noalias !306
  %i.db = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cw, %bb.o ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.dd = lshr i64 %i.ci, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.ar
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.de, ptr %i.dh, align 1, !noalias !301
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !301
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetINtNtCsexYYUdYSQU6_5alloc3vec3VecBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherEE0E0BW_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetEB1R_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuE0E0B1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val3, %.val2
  br i1 %i.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuE0BO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3cfi22CommonInformationEntryuE0BO_.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuE0E0B1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val3, %.val2
  br i1 %i.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuE0BO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write3loc12LocationListuE0BO_.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuE0E0B1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val3, %.val2
  br i1 %i.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuE0BO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringuE0BO_.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write5range9RangeListuE0E0B1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val3, %.val2
  br i1 %i.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write5range9RangeListuE0BO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write5range9RangeListuE0BO_.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationuE0E0B1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val3, %.val2
  br i1 %i.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationuE0BO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationuE0BO_.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtB1V_11DirectoryIdENtB1V_8FileInfoE0E0B1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %.val3, %.val2
  br i1 %i.g, label %_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBL_11DirectoryIdENtBL_8FileInfoE0BP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashTNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringNtBL_11DirectoryIdENtBL_8FileInfoE0BP_.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  ret i64 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCsi68uqYEhoRA_5gimli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.h, label %bb.d, !prof !6

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
  br i1 %i.l, label %bb.f, label %bb.e, !prof !7

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
  br i1 %or.cond.i.i, label %bb.f, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !325
  %i.r = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !325 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !325
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i

bb.g:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.o), !noalias !325
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i

bb.h:                                             ; preds = %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !326 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i: ; preds = %bb.g, %bb.f
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.i: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.y = icmp samesign ult i64 %.sroa.4.0.i.ph.i10, 9
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i10, -1      ; 2 uses
  %i.aa = lshr i64 %.sroa.4.0.i.ph.i10, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.09.0.i.i = select i1 %i.y, i64 %i.z, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ac, i8 -1, i64 %i.n, i1 false), !noalias !326
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit: ; preds = %bb.a, %bb.h, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.i
  %.sroa.10.0 = phi i64 [ %i.x, %bb.h ], [ %.sroa.12.09.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i ], [ %.sroa.09.0.i.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.w, %bb.h ], [ %.sroa.7.010.i, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i ], [ %i.z, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.thread.i ], [ %i.ac, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsi68uqYEhoRA_5gimli.exit.i ], [ @0, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 33) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val14 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
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
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val14, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.01.08.i, 32               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val14, i64 %.sroa.01.08.i
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

._crit_edge:                                      ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.01.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.01.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.04.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.04.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.04.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.04.06, -1
  %.neg10 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg10 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.04.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsi68uqYEhoRA_5gimli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val13 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i = and i64 %.val13, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !329
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i17, label %._crit_edge.i16, !prof !9

._crit_edge.i16:                                  ; preds = %.lr.ph.i17, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i17 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i17 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val13                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.g:                                             ; preds = %._crit_edge.i16
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i17:                                       ; preds = %bb.f, %.lr.ph.i17
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i17 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i17 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val13           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !329
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i17, label %._crit_edge.i16, !prof !10

_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i16
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i16 ] ; 4 uses
  %i.bf = sub i64 %.sroa.04.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val13
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !5

end_hunk_1
