Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/unicode_normalization-a179ee859572004d.unicode_normalization.58c0cbf6fe635b77-cgu.0?download=true
inline.NumInlined: 27
inline.NumDeleted: 24
begin_hunk_0_@_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups17composition_table:bb.a
bb.l:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %1, 70587
  %spec.select10.i = select i1 %i.j, i32 70533, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.m:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %1, 70594
  %spec.select11.i = select i1 %i.k, i32 70542, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.n:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %1, 70601
  %spec.select12.i = select i1 %i.l, i32 70545, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.o:                                             ; preds = %bb.b
  %switch.tableidx = add nsw i32 %1, -70584       ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 18
  br i1 %i.m, label %switch.lookup, label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.p:                                             ; preds = %bb.b
  %switch.tableidx3 = add nsw i32 %1, -70832      ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx3, 14
  br i1 %i.n, label %switch.lookup4, label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.q:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %1, 71087
  %spec.select13.i = select i1 %i.o, i32 71098, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.r:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %1, 71087
  %spec.select14.i = select i1 %i.p, i32 71099, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.s:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %1, 71984
  %spec.select15.i = select i1 %i.q, i32 71992, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.t:                                             ; preds = %bb.b
  %switch.tableidx7 = add nsw i32 %1, -90398      ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx7, 12
  br i1 %i.r, label %switch.lookup8, label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.u:                                             ; preds = %bb.b
  %switch.selectcmp16.i = icmp eq i32 %1, 90400
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 90408, i32 -1
  %switch.selectcmp18.i = icmp eq i32 %1, 90399
  %switch.select19.i = select i1 %switch.selectcmp18.i, i32 90406, i32 %switch.select17.i
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.v:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %1, 90399
  %spec.select20.i = select i1 %i.s, i32 90407, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.w:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %1, 90399
  %spec.select21.i = select i1 %i.t, i32 90404, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.x:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %1, 93543
  %spec.select22.i = select i1 %i.u, i32 93545, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.y:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %1, 93543
  %spec.select23.i = select i1 %i.v, i32 93544, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.z:                                             ; preds = %bb.b
  %i.w = icmp eq i32 %1, 93543
  %spec.select24.i = select i1 %i.w, i32 93546, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

bb.aa:                                            ; preds = %bb.a
  %i.x = shl nuw i32 %0, 16
  %i.y = or disjoint i32 %i.x, %1                 ; 4 uses
  %i.z = mul i32 %i.y, -1640531527
  %i.aa = mul i32 %i.y, 826366246                 ; 2 uses
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 928
  %i.ae = lshr i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @10, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !noundef !3
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %i.y, %i.ah
  %i.aj = mul i32 %i.ai, -1640531527
  %i.ak = xor i32 %i.aj, %i.aa
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 928
  %i.an = lshr i64 %i.am, 32
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @11, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !range !6, !noundef !3
  %i.as = icmp eq i32 %i.y, %i.ap
  %spec.select.i2 = select i1 %i.as, i32 %i.ar, i32 -1
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

switch.lookup:                                    ; preds = %bb.o
  %i.at = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups17composition_table, i64 %i.at
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

switch.lookup4:                                   ; preds = %bb.p
  %i.au = zext nneg i32 %switch.tableidx3 to i64
  %switch.gep5 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups17composition_table.11, i64 %i.au
  %switch.load6 = load i32, ptr %switch.gep5, align 4
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

switch.lookup8:                                   ; preds = %bb.t
  %i.av = zext nneg i32 %switch.tableidx7 to i64
  %switch.gep9 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups17composition_table.12, i64 %i.av
  %switch.load10 = load i32, ptr %switch.gep9, align 4
  br label %_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit

_RNvNtCs7CqHJXwM7TD_21unicode_normalization6tables24composition_table_astral.exit: ; preds = %switch.lookup8, %bb.t, %switch.lookup4, %bb.p, %switch.lookup, %bb.o, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.aa
  %.sroa.0.0 = phi i32 [ %spec.select.i2, %bb.aa ], [ %spec.select21.i, %bb.w ], [ %switch.select19.i, %bb.u ], [ %spec.select22.i, %bb.x ], [ -1, %bb.b ], [ -1, %bb.o ], [ -1, %bb.p ], [ %spec.select4.i, %bb.g ], [ %spec.select5.i, %bb.h ], [ %spec.select6.i, %bb.i ], [ %spec.select.i, %bb.c ], [ %spec.select1.i, %bb.d ], [ %spec.select9.i, %bb.k ], [ %spec.select10.i, %bb.l ], [ %spec.select11.i, %bb.m ], [ %switch.load10, %switch.lookup8 ], [ %switch.load6, %switch.lookup4 ], [ %switch.load, %switch.lookup ], [ %spec.select23.i, %bb.y ], [ %spec.select24.i, %bb.z ], [ %spec.select20.i, %bb.v ], [ %spec.select12.i, %bb.n ], [ %spec.select13.i, %bb.q ], [ %spec.select14.i, %bb.r ], [ %switch.select8.i, %bb.j ], [ -1, %bb.t ], [ %spec.select3.i, %bb.f ], [ %spec.select2.i, %bb.e ], [ %spec.select15.i, %bb.s ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups17is_combining_mark(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = mul i32 %0, -1640531527
  %i.b = mul i32 %0, 826366246                    ; 2 uses
  %i.c = xor i32 %i.a, %i.b
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 2501
  %i.f = lshr i64 %i.e, 32
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @12, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !noundef !3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %0, %i.i
  %i.k = mul i32 %i.j, -1640531527
  %i.l = xor i32 %i.k, %i.b
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 2501
  %i.o = lshr i64 %i.n, 32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @13, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !noundef !3
  %i.r = icmp eq i32 %0, %i.q
  ret i1 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef i8 @_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups25canonical_combining_class(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.a = mul i32 %0, -1640531527
  %i.b = mul i32 %0, 826366246                    ; 2 uses
  %i.c = xor i32 %i.a, %i.b
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 934
  %i.f = lshr i64 %i.e, 32
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @14, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !10, !noalias !11, !noundef !3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %0, %i.i
  %i.k = mul i32 %i.j, -1640531527
  %i.l = xor i32 %i.k, %i.b
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 934
  %i.o = lshr i64 %i.n, 32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @15, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !11, !noalias !10, !noundef !3 ; 2 uses
  %i.r = lshr i32 %i.q, 8
  %i.s = icmp eq i32 %0, %i.r
  %i.t = trunc i32 %i.q to i8
  %spec.select.i = select i1 %i.s, i8 %i.t, i8 0
  ret i8 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups26canonical_fully_decomposed(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.a = mul i32 %0, -1640531527
  %i.b = mul i32 %0, 826366246                    ; 2 uses
  %i.c = xor i32 %i.a, %i.b
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 2081
  %i.f = lshr i64 %i.e, 32
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @16, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !15, !noalias !16, !noundef !3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %0, %i.i
  %i.k = mul i32 %i.j, -1640531527
  %i.l = xor i32 %i.k, %i.b
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 2081
  %i.o = lshr i64 %i.n, 32
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @17, i64 %i.o
  %.sroa.03.0.copyload.i = load i64, ptr %i.p, align 4, !alias.scope !16, !noalias !15 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i64 %.sroa.03.0.copyload.i to i32
  %i.q = icmp eq i32 %0, %.sroa.01.0.extract.trunc.i.i.i
  %sh.diff.i.i.i = lshr i64 %.sroa.03.0.copyload.i, 16
  %tr.sh.diff.i.i.i = trunc nuw i64 %sh.diff.i.i.i to i48
  %.sroa.02.0.insert.insert.i.i.i = or i48 %tr.sh.diff.i.i.i, 1
  %.sroa.02.0.i = select i1 %i.q, i48 %.sroa.02.0.insert.insert.i.i.i, i48 0 ; 3 uses
  %1 = trunc i48 %.sroa.02.0.i to i1
  br i1 %1, label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit, label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread

_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit: ; preds = %bb.a
  %.sroa.06.2.extract.shift = lshr i48 %.sroa.02.0.i, 16 ; 2 uses
  %.sroa.06.2.extract.trunc = trunc i48 %.sroa.06.2.extract.shift to i16
  %.sroa.06.2.extract.trunc.mask = and i48 %.sroa.06.2.extract.shift, 65535
  %2 = zext nneg i48 %.sroa.06.2.extract.trunc.mask to i64 ; 3 uses
  %i.r = icmp ugt i16 %.sroa.06.2.extract.trunc, 3450
  br i1 %i.r, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit
  %.sroa.06.4.extract.shift = lshr i48 %.sroa.02.0.i, 32
  %.sroa.06.4.extract.trunc = zext nneg i48 %.sroa.06.4.extract.shift to i64 ; 3 uses
  %i.s = sub nuw nsw i64 3450, %2                 ; 2 uses
  %.not.i = icmp samesign ult i64 %i.s, %.sroa.06.4.extract.trunc
  br i1 %.not.i, label %bb.d, label %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups26canonical_fully_decomposed0B5_.exit, !prof !5

bb.c:                                             ; preds = %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef 3450, i64 noundef 3450, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.06.4.extract.trunc, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #6
  unreachable

_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups26canonical_fully_decomposed0B5_.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @0, i64 %2
  br label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread

_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread: ; preds = %bb.a, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups26canonical_fully_decomposed0B5_.exit
  %.sroa.3.0 = phi i64 [ %.sroa.06.4.extract.trunc, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups26canonical_fully_decomposed0B5_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.t, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups26canonical_fully_decomposed0B5_.exit ], [ null, %bb.a ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups30compatibility_fully_decomposed(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.a = mul i32 %0, -1640531527
  %i.b = mul i32 %0, 826366246                    ; 2 uses
  %i.c = xor i32 %i.a, %i.b
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 3848
  %i.f = lshr i64 %i.e, 32
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @18, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !20, !noalias !21, !noundef !3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %0, %i.i
  %i.k = mul i32 %i.j, -1640531527
  %i.l = xor i32 %i.k, %i.b
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 3848
  %i.o = lshr i64 %i.n, 32
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @19, i64 %i.o
  %.sroa.03.0.copyload.i = load i64, ptr %i.p, align 4, !alias.scope !21, !noalias !20 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i64 %.sroa.03.0.copyload.i to i32
  %i.q = icmp eq i32 %0, %.sroa.01.0.extract.trunc.i.i.i
  %sh.diff.i.i.i = lshr i64 %.sroa.03.0.copyload.i, 16
  %tr.sh.diff.i.i.i = trunc nuw i64 %sh.diff.i.i.i to i48
  %.sroa.02.0.insert.insert.i.i.i = or i48 %tr.sh.diff.i.i.i, 1
  %.sroa.02.0.i = select i1 %i.q, i48 %.sroa.02.0.insert.insert.i.i.i, i48 0 ; 3 uses
  %1 = trunc i48 %.sroa.02.0.i to i1
  br i1 %1, label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit, label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread

_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit: ; preds = %bb.a
  %.sroa.06.2.extract.shift = lshr i48 %.sroa.02.0.i, 16 ; 2 uses
  %.sroa.06.2.extract.trunc = trunc i48 %.sroa.06.2.extract.shift to i16
  %.sroa.06.2.extract.trunc.mask = and i48 %.sroa.06.2.extract.shift, 65535
  %2 = zext nneg i48 %.sroa.06.2.extract.trunc.mask to i64 ; 3 uses
  %i.r = icmp ugt i16 %.sroa.06.2.extract.trunc, 5771
  br i1 %i.r, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit
  %.sroa.06.4.extract.shift = lshr i48 %.sroa.02.0.i, 32
  %.sroa.06.4.extract.trunc = zext nneg i48 %.sroa.06.4.extract.shift to i64 ; 3 uses
  %i.s = sub nuw nsw i64 5771, %2                 ; 2 uses
  %.not.i = icmp samesign ult i64 %i.s, %.sroa.06.4.extract.trunc
  br i1 %.not.i, label %bb.d, label %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups30compatibility_fully_decomposed0B5_.exit, !prof !5

bb.c:                                             ; preds = %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef 5771, i64 noundef 5771, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.06.4.extract.trunc, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #6
  unreachable

_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups30compatibility_fully_decomposed0B5_.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @4, i64 %2
  br label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread

_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread: ; preds = %bb.a, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups30compatibility_fully_decomposed0B5_.exit
  %.sroa.3.0 = phi i64 [ %.sroa.06.4.extract.trunc, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups30compatibility_fully_decomposed0B5_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.t, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups30compatibility_fully_decomposed0B5_.exit ], [ null, %bb.a ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef range(i64 0, 256) i64 @_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups32stream_safe_trailing_nonstarters(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = mul i32 %0, -1640531527
  %i.b = mul i32 %0, 826366246                    ; 2 uses
  %i.c = xor i32 %i.a, %i.b
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 1092
  %i.f = lshr i64 %i.e, 32
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @20, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !25, !noalias !26, !noundef !3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %0, %i.i
  %i.k = mul i32 %i.j, -1640531527
  %i.l = xor i32 %i.k, %i.b
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1092
  %i.o = lshr i64 %i.n, 32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @21, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !26, !noalias !25, !noundef !3 ; 2 uses
  %i.r = lshr i32 %i.q, 8
  %i.s = icmp eq i32 %0, %i.r
  %i.t = and i32 %i.q, 255
  %narrow = select i1 %i.s, i32 %i.t, i32 0
  %i.u = zext nneg i32 %narrow to i64
  ret i64 %i.u
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups36cjk_compat_variants_fully_decomposed(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.a = mul i32 %0, -1640531527
  %i.b = mul i32 %0, 826366246                    ; 2 uses
  %i.c = xor i32 %i.a, %i.b
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 1002
  %i.f = lshr i64 %i.e, 32
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @22, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !30, !noalias !31, !noundef !3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %0, %i.i
  %i.k = mul i32 %i.j, -1640531527
  %i.l = xor i32 %i.k, %i.b
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1002
  %i.o = lshr i64 %i.n, 32
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @23, i64 %i.o
  %.sroa.03.0.copyload.i = load i64, ptr %i.p, align 4, !alias.scope !31, !noalias !30 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i64 %.sroa.03.0.copyload.i to i32
  %i.q = icmp eq i32 %0, %.sroa.01.0.extract.trunc.i.i.i
  %sh.diff.i.i.i = lshr i64 %.sroa.03.0.copyload.i, 16
  %tr.sh.diff.i.i.i = trunc nuw i64 %sh.diff.i.i.i to i48
  %.sroa.02.0.insert.insert.i.i.i = or i48 %tr.sh.diff.i.i.i, 1
  %.sroa.02.0.i = select i1 %i.q, i48 %.sroa.02.0.insert.insert.i.i.i, i48 0 ; 3 uses
  %1 = trunc i48 %.sroa.02.0.i to i1
  br i1 %1, label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit, label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread

_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit: ; preds = %bb.a
  %.sroa.06.2.extract.shift = lshr i48 %.sroa.02.0.i, 16 ; 2 uses
  %.sroa.06.2.extract.trunc = trunc i48 %.sroa.06.2.extract.shift to i16
  %.sroa.06.2.extract.trunc.mask = and i48 %.sroa.06.2.extract.shift, 65535
  %2 = zext nneg i48 %.sroa.06.2.extract.trunc.mask to i64 ; 3 uses
  %i.r = icmp ugt i16 %.sroa.06.2.extract.trunc, 2004
  br i1 %i.r, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit
  %.sroa.06.4.extract.shift = lshr i48 %.sroa.02.0.i, 32
  %.sroa.06.4.extract.trunc = zext nneg i48 %.sroa.06.4.extract.shift to i64 ; 3 uses
  %i.s = sub nuw nsw i64 2004, %2                 ; 2 uses
  %.not.i = icmp samesign ult i64 %i.s, %.sroa.06.4.extract.trunc
  br i1 %.not.i, label %bb.d, label %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups36cjk_compat_variants_fully_decomposed0B5_.exit, !prof !5

bb.c:                                             ; preds = %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef 2004, i64 noundef 2004, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.06.4.extract.trunc, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #6
  unreachable

_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups36cjk_compat_variants_fully_decomposed0B5_.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @7, i64 %2
  br label %_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread

_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_.exit.thread: ; preds = %bb.a, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups36cjk_compat_variants_fully_decomposed0B5_.exit
  %.sroa.3.0 = phi i64 [ %.sroa.06.4.extract.trunc, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups36cjk_compat_variants_fully_decomposed0B5_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.t, %_RNCNvNtCs7CqHJXwM7TD_21unicode_normalization7lookups36cjk_compat_variants_fully_decomposed0B5_.exit ], [ null, %bb.a ]
  %i.u = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", i32 4001, i32 4000000}
!6 = !{i32 0, i32 1114112}
!7 = distinct !{!7, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_"}
!8 = distinct !{!8, !7, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_: argument 0"}
!9 = distinct !{!9, !7, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_: argument 1"}
!10 = !{!8}
!11 = !{!9}
!12 = distinct !{!12, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_"}
!13 = distinct !{!13, !12, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_: argument 0"}
!14 = distinct !{!14, !12, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_: argument 1"}
!15 = !{!13}
!16 = !{!14}
!17 = distinct !{!17, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_"}
!18 = distinct !{!18, !17, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_: argument 0"}
!19 = distinct !{!19, !17, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_: argument 1"}
!20 = !{!18}
!21 = !{!19}
!22 = distinct !{!22, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_"}
!23 = distinct !{!23, !22, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_: argument 0"}
!24 = distinct !{!24, !22, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupmhNvNtB4_7lookups12u8_lookup_fkNvB19_12u8_lookup_fvEB4_: argument 1"}
!25 = !{!23}
!26 = !{!24}
!27 = distinct !{!27, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_"}
!28 = distinct !{!28, !27, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_: argument 0"}
!29 = distinct !{!29, !27, !"_RINvNtCs7CqHJXwM7TD_21unicode_normalization12perfect_hash10mph_lookupTmTttEEINtNtCs4NRVxsYgnAr_4core6option6OptionB17_EINvNtB4_7lookups14pair_lookup_fkB17_EINvB1W_18pair_lookup_fv_optB17_EEB4_: argument 1"}
!30 = !{!28}
!31 = !{!29}
end_hunk_0
