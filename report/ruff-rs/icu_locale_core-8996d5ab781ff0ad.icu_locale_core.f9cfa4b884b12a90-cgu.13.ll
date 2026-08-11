inline.NumInlined: 94
inline.NumDeleted: 38
begin_hunk_0_@_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB2K_3cmp15WriteComparatorE0EB9_:bb.a
  br i1 %or.cond, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_.exit, label %.lr.ph

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.q, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNCNvXs9_NtB5_8keywordsNtB2p_8KeywordsNtCs1T0VX6PLzHG_9writeable9Writeable21writeable_length_hint0EB9_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1, !range !3, !noundef !4
  %.not = icmp eq i8 %i.c, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !3
  %.not3.not = icmp eq i8 %i.e, -1                ; 3 uses
  %.4 = select i1 %.not3.not, ptr inttoptr (i64 1 to ptr), ptr %i.d
  %.sroa.0.0 = select i1 %.not, ptr %.4, ptr %0   ; 3 uses
  %i.f = select i1 %.not3.not, i64 0, i64 8
  %.idx = select i1 %.not, i64 %i.f, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx ; 2 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !noalias !90
  %i.k = select i1 %.not, i1 %.not3.not, i1 false
  br i1 %i.k, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs1T0VX6PLzHG_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.l = phi ptr [ %i.m, %.lr.ph.i ], [ %.sroa.0.0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !95, !noalias !104
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = lshr i32 %i.o, 3
  %i.q = sub nuw nsw i32 8, %i.p
  %i.r = zext nneg i32 %i.q to i64
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs9_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode8keywordsNtBW_8KeywordsNtCs1T0VX6PLzHG_9writeable9Writeable21writeable_length_hint0INtB7_5FnMutTReEE8call_mutB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.l, i64 noundef range(i64 0, 9) %i.r), !noalias !106
  %i.s = icmp eq ptr %i.m, %i.g
  br i1 %i.s, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs1T0VX6PLzHG_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs1T0VX6PLzHG_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECslrJNpMdrWwK_15icu_locale_core(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsa_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB6_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB1k_3cmp15WriteComparatorEBc_(ptr noalias noundef readonly captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.a = load i8, ptr %0, align 1, !range !3, !alias.scope !108, !noundef !4
  %.not.i = icmp eq i8 %i.a, -1                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !3, !alias.scope !108
  %.not3.not.i = icmp eq i8 %i.c, -1              ; 3 uses
  %.4.i = select i1 %.not3.not.i, ptr inttoptr (i64 1 to ptr), ptr %i.b
  %.sroa.0.0.i = select i1 %.not.i, ptr %.4.i, ptr %0 ; 4 uses
  %i.d = select i1 %.not3.not.i, i64 0, i64 8
  %.idx.i = select i1 %.not.i, i64 %i.d, i64 16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx.i
  %.not.i.i = select i1 %.not.i, i1 %.not3.not.i, i1 false
  br i1 %.not.i.i, label %_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core3fmt5ErrorNCINvXsa_B3_B14_NtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB2p_3cmp15WriteComparatorE0EB9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %.val.i.i.i.i.i.peel = load i64, ptr %.sroa.0.0.i, align 1, !alias.scope !114, !noalias !121
  %.pre = load i8, ptr %i.f, align 8, !range !125, !alias.scope !126, !noalias !129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %.not.i.i.i.i.i.i.i.peel = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i.i.peel, i1 false)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = lshr i32 %i.j, 3
  %i.l = sub nuw nsw i32 8, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 5 uses
  %i.n = load ptr, ptr %1, align 8, !alias.scope !126, !noalias !129, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = load i64, ptr %i.g, align 8, !alias.scope !126, !noalias !129, !noundef !4 ; 3 uses
  %.not18.i.i.i.i.i.i.i.peel = icmp ult i64 %i.o, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %.sroa.02.0.i.i.i.i.i.i.i.peel = select i1 %.not18.i.i.i.i.i.i.i.peel, ptr inttoptr (i64 1 to ptr), ptr %i.p
  %.sroa.3.0.i.i.i.i.i.i.i.peel = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 range(i64 0, 9) %i.m)
  %.sroa.45.0.i.i.i.i.i.i.i.peel = tail call i64 @llvm.umin.i64(i64 range(i64 0, 9) %i.m, i64 %i.o) ; 2 uses
  store ptr %.sroa.02.0.i.i.i.i.i.i.i.peel, ptr %1, align 8, !alias.scope !126, !noalias !129
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.peel, ptr %i.g, align 8, !alias.scope !126, !noalias !129
  %i.q = tail call i32 @memcmp(ptr nonnull %i.n, ptr nonnull readonly dereferenceable(8) %.sroa.0.0.i, i64 %.sroa.45.0.i.i.i.i.i.i.i.peel), !noalias !137 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub nsw i64 %.sroa.45.0.i.i.i.i.i.i.i.peel, %i.m
  %.sroa.013.0.i.i.i.i.i.i.i.peel = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.013.0.i.i.i.i.i.i.i.peel, i64 0)
  store i8 %i.u, ptr %i.f, align 8, !alias.scope !126, !noalias !129
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel: ; preds = %bb.c, %bb.b
  %.not14.i.i.peel = icmp samesign eq i64 %.idx.i, 8
  br i1 %.not14.i.i.peel, label %_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core3fmt5ErrorNCINvXsa_B3_B14_NtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB2p_3cmp15WriteComparatorE0EB9_.exit, label %.peel.next

.peel.next:                                       ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i
  %i.v = phi ptr [ %i.w, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i ], [ %i.h, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %.val.i.i.i.i.i = load i64, ptr %i.v, align 1, !alias.scope !140, !noalias !121
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i.i, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = lshr i32 %i.y, 3
  %i.aa = sub nuw nsw i32 8, %i.z
  %i.ab = zext nneg i32 %i.aa to i64              ; 5 uses
  %i.ac = tail call noundef zeroext i1 @_RNvYNtNtCs1T0VX6PLzHG_9writeable3cmp15WriteComparatorNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charCslrJNpMdrWwK_15icu_locale_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 45), !noalias !141 ; 3 uses
  br i1 %i.ac, label %_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core3fmt5ErrorNCINvXsa_B3_B14_NtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB2p_3cmp15WriteComparatorE0EB9_.exit, label %._crit_edge4

._crit_edge4:                                     ; preds = %.peel.next
  %.pre5 = load i8, ptr %i.f, align 8, !range !125, !alias.scope !142, !noalias !144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.pre5, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i

bb.d:                                             ; preds = %._crit_edge4
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !142, !noalias !144, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.g, align 8, !alias.scope !142, !noalias !144, !noundef !4 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp ult i64 %i.ae, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  %.sroa.02.0.i.i.i.i.i.i.i = select i1 %.not18.i.i.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.af
  %.sroa.3.0.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 range(i64 0, 9) %i.ab)
  %.sroa.45.0.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 9) %i.ab, i64 %i.ae) ; 2 uses
  store ptr %.sroa.02.0.i.i.i.i.i.i.i, ptr %1, align 8, !alias.scope !142, !noalias !144
  store i64 %.sroa.3.0.i.i.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !142, !noalias !144
  %i.ag = tail call i32 @memcmp(ptr nonnull %i.ad, ptr nonnull readonly dereferenceable(8) %i.v, i64 %.sroa.45.0.i.i.i.i.i.i.i), !noalias !145 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub nsw i64 %.sroa.45.0.i.i.i.i.i.i.i, %i.ab
  %.sroa.013.0.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ah
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.013.0.i.i.i.i.i.i.i, i64 0)
  store i8 %i.ak, ptr %i.f, align 8, !alias.scope !142, !noalias !144
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i: ; preds = %bb.d, %._crit_edge4
  %.not14.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not14.i.i, label %_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core3fmt5ErrorNCINvXsa_B3_B14_NtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB2p_3cmp15WriteComparatorE0EB9_.exit, label %.peel.next, !llvm.loop !146

_RINvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCs4NRVxsYgnAr_4core3fmt5ErrorNCINvXsa_B3_B14_NtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB2p_3cmp15WriteComparatorE0EB9_.exit: ; preds = %.peel.next, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel, %bb.a
  %.lcssa.i.i = phi i1 [ false, %bb.a ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i.peel ], [ %i.ac, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsa_NtNtNtB14_10extensions7unicode5valueNtB47_5ValueNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB4V_3cmp15WriteComparatorE0E0E0B14_.exit.i.i ], [ %i.ac, %.peel.next ]
  ret i1 %.lcssa.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB2_5Value13remove_subtag(ptr noalias noundef dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !3, !noundef !4
  %.not = icmp eq i8 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !3
  %i.d = icmp ne i8 %i.c, -1
  %i.e = zext i1 %i.d to i64
  %.sroa.01.0 = select i1 %.not, i64 %i.e, i64 2
  %i.f = icmp ult i64 %.sroa.01.0, %1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_RNvMs0_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_13ShortBoxSliceNtNtB7_7subtags6SubtagE6removeB7_(ptr noalias noundef nonnull dereferenceable(16) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert = phi i64 [ %i.g, %bb.b ], [ 255, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB2_5Value13try_from_utf8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.0.sroa.8.0 = phi i64 [ 255, %bb.a ], [ %.sroa.0.sroa.8.2, %._crit_edge ]
  %.sroa.0.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %.sroa.0.sroa.0.2, %._crit_edge ]
  %.sroa.19.0 = phi i48 [ undef, %bb.a ], [ %.sroa.19.1.lcssa, %._crit_edge ]
  %.sroa.16.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.1.lcssa, %._crit_edge ]
  store i8 %.sroa.0.sroa.0.0, ptr %0, align 1
  %.sroa.091.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.0.sroa.8.0, ptr %.sroa.091.sroa.4.0..sroa_idx, align 1
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.16.0, ptr %.sroa.492.0..sroa_idx, align 1
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i48 %.sroa.19.0, ptr %.sroa.593.0..sroa_idx, align 1
  br label %bb.f

bb.c:                                             ; preds = %.preheader, %bb.d
  %.sroa.037.0.lcssa = phi i64 [ %.sroa.037.0107, %.preheader ], [ %2, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.037.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call { ptr, i64 } @_RNvXs_NtCslrJNpMdrWwK_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not108 = icmp eq ptr %i.e, null
  br i1 %.not108, label %._crit_edge, label %bb.e

.preheader:                                       ; preds = %bb.a, %bb.d
  %.sroa.037.0107 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.037.0107
  %i.g = load i8, ptr %i.f, align 1, !noundef !4
  %i.h = icmp eq i8 %i.g, 45
  br i1 %i.h, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.i = add nuw nsw i64 %.sroa.037.0107, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %bb.c, %bb.h
  %.sroa.0.sroa.8.1 = phi i64 [ %.sroa.0.sroa.8.3, %bb.h ], [ 255, %bb.c ] ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.118, %bb.h ], [ -1, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.q, %bb.h ], [ %i.e, %bb.c ]
  %i.k = phi { ptr, i64 } [ %i.p, %bb.h ], [ %i.d, %bb.c ]
  %.sroa.16.1110 = phi i8 [ %.sroa.16.2, %bb.h ], [ undef, %bb.c ]
  %.sroa.19.1109 = phi i48 [ %.sroa.19.2, %bb.h ], [ undef, %bb.c ]
  %i.l = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RNvMs1_NtCslrJNpMdrWwK_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) ; 6 uses
  %.sroa.468.0.extract.shift = lshr i64 %i.m, 8
  %.sroa.468.0.extract.trunc = trunc i64 %.sroa.468.0.extract.shift to i8 ; 2 uses
  %.sroa.569.0.extract.shift = lshr i64 %i.m, 16
  %.sroa.569.0.extract.trunc = trunc nuw i64 %.sroa.569.0.extract.shift to i48
  %3 = and i64 %i.m, 255
  %i.n = icmp eq i64 %3, 255
  br i1 %i.n, label %bb.l, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.sroa.0.sroa.8.2 = phi i64 [ 255, %bb.c ], [ %.sroa.0.sroa.8.3, %bb.h ]
  %.sroa.0.sroa.0.2 = phi i8 [ -1, %bb.c ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.118, %bb.h ]
  %.sroa.19.1.lcssa = phi i48 [ undef, %bb.c ], [ %.sroa.19.2, %bb.h ]
  %.sroa.16.1.lcssa = phi i8 [ undef, %bb.c ], [ %.sroa.16.2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.l, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  store i64 %i.m, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @0, i64 noundef 8)
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.k, %bb.g
  %.sroa.0.sroa.8.3 = phi i64 [ %.sroa.0.sroa.8.1, %bb.g ], [ %.sroa.0.sroa.8.8.insert.insert, %bb.k ], [ %i.m, %bb.i ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.118 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., %bb.g ], [ %.sroa.0.sroa.8.1.extract.trunc120, %bb.k ], [ -1, %bb.i ] ; 2 uses
  %.sroa.19.2 = phi i48 [ %.sroa.19.1109, %bb.g ], [ %.sroa.569.0.extract.trunc, %bb.k ], [ undef, %bb.i ] ; 2 uses
  %.sroa.16.2 = phi i8 [ %.sroa.16.1110, %bb.g ], [ %.sroa.468.0.extract.trunc, %bb.k ], [ undef, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call { ptr, i64 } @_RNvXs_NtCslrJNpMdrWwK_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.e

bb.i:                                             ; preds = %bb.g
  %.not94 = icmp eq i8 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., -1 ; 2 uses
  %.sroa.0.sroa.8.1.extract.trunc120 = trunc i64 %.sroa.0.sroa.8.1 to i8 ; 2 uses
  %i.r = icmp eq i8 %.sroa.0.sroa.8.1.extract.trunc120, -1 ; 2 uses
  %or.cond = select i1 %.not94, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %not..not94 = xor i1 %.not94, true
  %i.s = select i1 %not..not94, i1 true, i1 %i.r
  br i1 %i.s, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.sroa.8.2.extract.shift = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.1.insert.ext = and i64 %.sroa.0.sroa.8.2.extract.shift, 281474976710655
  %4 = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.7.insert.shift = and i64 %4, 71776119061217280
  %.sroa.0.sroa.8.7.insert.insert = or disjoint i64 %.sroa.0.sroa.8.1.insert.ext, %.sroa.0.sroa.8.7.insert.shift
  %.sroa.0.sroa.8.8.insert.ext = shl i64 %i.m, 56
  %.sroa.0.sroa.8.8.insert.insert = or disjoint i64 %.sroa.0.sroa.8.7.insert.insert, %.sroa.0.sroa.8.8.insert.ext
  br label %bb.h

bb.l:                                             ; preds = %bb.j, %bb.e
  %.sink = phi i8 [ %.sroa.468.0.extract.trunc, %bb.e ], [ 1, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.t, align 1
  store i8 -2, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB2_5Value22parse_subtag_from_utf8(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs1_NtCslrJNpMdrWwK_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 7 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 255
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.760.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.861.0.extract.shift = lshr i64 %i.a, 40
  %.sroa.962.0.extract.shift = lshr i64 %i.a, 48
  %.sroa.1063.0.extract.shift = lshr i64 %i.a, 56
  %i.d = and i64 %i.a, 4294967295
  %or.cond8 = icmp eq i64 %i.d, 1702195828
  %i.e = or i64 %.sroa.962.0.extract.shift, %.sroa.861.0.extract.shift
  %i.f = or i64 %i.e, %.sroa.760.0.extract.shift
  %i.g = and i64 %i.f, 255
  %i.h = or i64 %i.g, %.sroa.1063.0.extract.shift
  %i.i = icmp eq i64 %i.h, 0
  %or.cond20 = and i1 %or.cond8, %i.i
  %. = select i1 %or.cond20, i64 255, i64 %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.sroa.0.0 = phi i64 [ %., %bb.b ], [ 510, %bb.a ]
  ret i64 %.sroa.5.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 3) i8 @_RNvXNtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB2_14LineBreakStyleNtBa_13PreferenceKey18try_from_key_value(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef readonly captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull @1, ptr noundef nonnull %0, i64 noundef 2)
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  %i.c = load i8, ptr %1, align 1, !range !3, !alias.scope !148, !noundef !4
  %.not.not.not.not.i = icmp ne i8 %i.c, -1       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !3, !alias.scope !148
  %.not17.i = icmp ne i8 %i.e, -1                 ; 2 uses
  %i.f = select i1 %.not.not.not.not.i, i1 true, i1 %.not17.i
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.20.i = select i1 %.not17.i, ptr %i.d, ptr inttoptr (i64 1 to ptr)
  %.sroa.05.0.i = select i1 %.not.not.not.not.i, ptr %1, ptr %.20.i
  %.sroa.08.0.copyload.i = load i64, ptr %.sroa.05.0.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi i64 [ %.sroa.08.0.copyload.i, %bb.c ], [ 1702195828, %bb.b ]
  store i64 %storemerge.i, ptr %i.a, align 8, !noalias !148
  %i.g = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @2, i64 noundef 8), !noalias !148
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @3, i64 noundef 8), !noalias !148
  br i1 %i.h, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %.not.not.not.not.i, label %_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from.exit.thread, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.i = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @4, i64 noundef 8), !noalias !148
  %.not.i = xor i1 %i.i, true
  %brmerge.i = or i1 %.not.not.not.not.i, %.not.i
  br i1 %brmerge.i, label %_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from.exit.thread, label %.sink.split

bb.h:                                             ; preds = %bb.e
  br i1 %.not.not.not.not.i, label %_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from.exit.thread, label %.sink.split

_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from.exit.thread: ; preds = %bb.g, %bb.f, %bb.h
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h, %_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from.exit.thread
  %.sroa.0.0.ph = phi i8 [ -2, %_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from.exit.thread ], [ 1, %bb.h ], [ 2, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB2_14LineBreakStyleNtBa_13PreferenceKey23unicode_extension_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %1, align 1, !range !151, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_14LineBreakStyleE4from, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  store i8 -1, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %switch.load, ptr %.sroa.4.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5valueNtB5_5ValueINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef i8 @_RINvNtCs1T0VX6PLzHG_9writeable3cmp8cmp_utf8NtNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5value5ValueEBN_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  %i.e = icmp eq i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords10line_breakNtB5_14LineBreakStyleINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtNtBf_10extensions7unicode5value5ValueE8try_from(ptr noalias noundef readonly captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !range !3, !noundef !4
  %.not.not.not.not = icmp ne i8 %i.b, -1         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !3
  %.not17 = icmp ne i8 %i.d, -1                   ; 2 uses
  %i.e = select i1 %.not.not.not.not, i1 true, i1 %.not17
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.20 = select i1 %.not17, ptr %i.c, ptr inttoptr (i64 1 to ptr)
  %.sroa.05.0 = select i1 %.not.not.not.not, ptr %0, ptr %.20
  %.sroa.08.0.copyload = load i64, ptr %.sroa.05.0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %.sroa.08.0.copyload, %bb.b ], [ 1702195828, %bb.a ]
  store i64 %storemerge, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @2, i64 noundef 8)
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @3, i64 noundef 8)
  br i1 %i.g, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %.not.not.not.not, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsjAQzpv9Sak5_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCslrJNpMdrWwK_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @4, i64 noundef 8)
  %.not = xor i1 %i.h, true
  %brmerge = or i1 %.not.not.not.not, %.not
  br i1 %brmerge, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  br i1 %.not.not.not.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %.sroa.01.0 = phi i8 [ 1, %bb.g ], [ 2, %bb.f ], [ 0, %bb.e ]
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.h
  %.sroa.0.1 = phi i8 [ %.sroa.01.0, %bb.h ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords15region_overrideNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_14RegionOverrideE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 9)) %0, i56 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.a = tail call noundef i64 @_RNvMs_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode11subdivisionNtB4_13SubdivisionId11into_subtag(i56 noundef %1), !noalias !155 ; 7 uses
  %i.b = and i64 %i.a, 255
  %.not.i.i = icmp eq i64 %i.b, 255
  br i1 %.not.i.i, label %_RNvXs1_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords15region_overrideNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB5_14RegionOverrideE4from.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.1058.0.extract.shift.i.i = lshr i64 %i.a, 56
  %.sroa.957.0.extract.shift.i.i = lshr i64 %i.a, 48
  %.sroa.856.0.extract.shift.i.i = lshr i64 %i.a, 40
  %.sroa.755.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.c = and i64 %i.a, 4294967295
  %or.cond8.i.i = icmp eq i64 %i.c, 1702195828
  %i.d = or i64 %.sroa.856.0.extract.shift.i.i, %.sroa.755.0.extract.shift.i.i
  %i.e = or i64 %i.d, %.sroa.957.0.extract.shift.i.i
  %i.f = and i64 %i.e, 255
  %i.g = or i64 %i.f, %.sroa.1058.0.extract.shift.i.i
  %i.h = icmp eq i64 %i.g, 0
  %or.cond20.i.i = and i1 %or.cond8.i.i, %i.h
  %spec.select.i.i = select i1 %or.cond20.i.i, i64 255, i64 %i.a
  br label %_RNvXs1_NtNtNtNtNtCslrJNpMdrWwK_15icu_locale_core11preferences10extensions7unicode8keywords15region_overrideNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB5_14RegionOverrideE4from.exit

end_hunk_0
