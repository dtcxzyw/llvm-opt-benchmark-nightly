Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/nom-237f780225fdc3b7.nom.4406358c661c4cda-cgu.0?download=true
inline.NumInlined: 139
inline.NumDeleted: 41
begin_hunk_0_@_RNvXsu_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB5_9FindTokencE10find_token:bb.a
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i
  %i.t = icmp ne ptr %i.l, %i.d
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !501, !noundef !6
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i, label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.d
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !501, !noundef !6
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i, %bb.d, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i ], [ %i.f, %bb.d ]
  %spec.select.i.ph.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i ], [ %i.s, %bb.d ]
  %i.ao = icmp eq i32 %spec.select.i.ph.i, %1
  br i1 %i.ao, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvXsu_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB1Z_9FindTokencE10find_token0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB21_.exit, label %bb.b

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvXsu_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB1Z_9FindTokencE10find_token0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB21_.exit: ; preds = %bb.b, %bb.e
  ret i1 %.not.i.not.not.not.i.not.not.not.not.not
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokencE10find_token(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !505 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not.not.not.i.not.not.not2.not = icmp eq i64 %i.c, 0
  br i1 %.not.not.not.i.not.not.not2.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.val3.i = load i32, ptr %i.e, align 4, !range !10, !noalias !506, !noundef !6
  %i.f = icmp eq i32 %.val3.i, %1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.g, %i.d
  %or.cond = select i1 %i.f, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.f, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXsw_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokenRcE10find_token(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !512 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !10, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !513, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !513, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not1.not, label %_RNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokencE10find_token.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.val3.i.i = load i32, ptr %i.f, align 4, !range !10, !noalias !514, !noundef !6
  %i.g = icmp eq i32 %.val3.i.i, %i.a             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.e
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokencE10find_token.exit, label %.lr.ph

_RNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokencE10find_token.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsx_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_13FindSubstringBw_E14find_substring(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !519 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 8 uses
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = add nsw i64 %2, -1                       ; 5 uses
  %i.f = load i8, ptr %1, align 1, !noundef !6    ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 6 uses
  br i1 %i.g, label %bb.d, label %.preheader

_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27: ; preds = %bb.g, %bb.m, %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.6.0 = phi i64 [ undef, %bb.a ], [ %i.q, %bb.e ], [ undef, %bb.d ], [ 0, %bb.b ], [ undef, %bb.g ], [ %i.ac, %bb.m ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %bb.d ], [ 1, %bb.b ], [ 0, %bb.g ], [ 1, %bb.m ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.j

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.l = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !520, !nonnull !6, !noundef !6
  %i.m = tail call { i64, ptr } %i.l(i8 noundef %i.f, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.k), !noalias !520, !inline_history !0 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.e, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i64, ptr } %i.m, 1
  %i.q = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs5Q5FLCJ3YzS_3nom(ptr noundef %i.p, ptr noundef nonnull readonly %i.h) ; 2 uses
  %.not.i26 = icmp ult i64 %i.q, %i.b
  tail call void @llvm.assume(i1 %.not.i26)
  br label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27

.preheader:                                       ; preds = %bb.c
  %i.r = sub nuw i64 %i.b, %i.e                   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.m
  %.sroa.04.0 = phi i64 [ %i.ad, %bb.m ], [ 0, %.preheader ] ; 5 uses
  %i.t = icmp ugt i64 %.sroa.04.0, %i.r
  br i1 %i.t, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.04.0 ; 2 uses
  %i.v = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !521, !nonnull !6, !noundef !6
  %i.w = tail call { i64, ptr } %i.v(i8 noundef %i.f, ptr noundef nonnull readonly %i.u, ptr noundef nonnull readonly %i.s), !noalias !521, !inline_history !0 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0, i64 noundef %i.r, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = sub nuw i64 %i.r, %.sroa.04.0
  %i.aa = extractvalue { i64, ptr } %i.w, 1
  %i.ab = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs5Q5FLCJ3YzS_3nom(ptr noundef %i.aa, ptr noundef nonnull readonly %i.u) ; 2 uses
  %.not.i = icmp ult i64 %i.ab, %i.z
  tail call void @llvm.assume(i1 %.not.i)
  %i.ac = add i64 %i.ab, %.sroa.04.0              ; 2 uses
  %i.ad = add i64 %i.ac, 1                        ; 5 uses
  %i.ae = icmp ugt i64 %i.ad, %i.b
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.af = sub nuw i64 %i.b, %i.ad                 ; 2 uses
  %.not23 = icmp ugt i64 %i.e, %i.af
  br i1 %.not23, label %bb.l, label %bb.m, !prof !522

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %i.b, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull %i.d, i64 %i.e)
  %i.ah = icmp eq i32 %bcmp, 0
  br i1 %i.ah, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs5Q5FLCJ3YzS_3nom.exit27, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsy_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_13FindSubstringReE14find_substring(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 !guid !523 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvXsx_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_13FindSubstringBw_E14find_substring(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsz_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB5_13FindSubstringBw_E14find_substring(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !549 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 19 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !550
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !alias.scope !551, !noalias !550, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.f, label %bb.k, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.i = load i8, ptr %i.h, align 2, !range !552, !alias.scope !553, !noalias !550, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !551, !noalias !550 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !553, !noalias !550, !nonnull !6, !noundef !6 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !553, !noalias !550, !noundef !6 ; 15 uses
  %.promoted26.i.i = load i8, ptr %i.k, align 8, !alias.scope !553, !noalias !550 ; 2 uses
  %i.p = trunc nuw i8 %.promoted26.i.i to i1
  %i.q = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.q, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %i.o
  br i1 %.not.i.i.i.peel.i, label %bb.c, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.b
  %i.r = icmp eq i64 %.promoted.i.i, %i.o
  br i1 %i.r, label %bb.d, label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !554, !noalias !555, !noundef !6
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted.i.i ; 4 uses
  %i.w = icmp samesign eq i64 %.promoted.i.i, %i.o
  br i1 %i.w, label %.loopexit133.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.v, align 1, !noalias !556, !noundef !6 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.peel.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.aa = and i8 %i.x, 31
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = add nuw nsw i64 %.promoted.i.i, 1
  %i.ad = icmp samesign ne i64 %i.ac, %i.o
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load i8, ptr %i.z, align 1, !noalias !556, !noundef !6
  %i.af = shl nuw nsw i32 %i.ab, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32               ; 2 uses
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = icmp samesign ugt i8 %i.x, -33
  br i1 %i.aj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.peel.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.al = add nuw nsw i64 %.promoted.i.i, 2
  %i.am = icmp samesign ne i64 %i.al, %i.o
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i8, ptr %i.ak, align 1, !noalias !556, !noundef !6
  %i.ao = shl nuw nsw i32 %i.ah, 6
  %i.ap = and i8 %i.an, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq            ; 2 uses
  %i.as = shl nuw nsw i32 %i.ab, 12
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = icmp samesign ugt i8 %i.x, -17
  br i1 %i.au, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.peel.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.aw = add nuw nsw i64 %.promoted.i.i, 3
  %i.ax = icmp samesign ne i64 %i.aw, %i.o
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = load i8, ptr %i.av, align 1, !noalias !556, !noundef !6
  %i.az = shl nuw nsw i32 %i.ab, 18
  %i.ba = and i32 %i.az, 1835008
  %i.bb = shl nuw nsw i32 %i.ar, 6
  %i.bc = and i8 %i.ay, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.ba
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = zext nneg i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.at, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.peel.i ], [ %i.bf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.peel.i ], [ %i.ai, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.peel.i ], [ %i.bg, %bb.f ] ; 4 uses
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bh)
  br i1 %i.p, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bi, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bk, i64 3, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !551, !noalias !550, !noundef !6 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !551, !noalias !550, !nonnull !6, !noundef !6 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !551, !noalias !550, !noundef !6 ; 16 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !551, !noalias !550, !nonnull !6, !noundef !6 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !551, !noalias !550, !noundef !6 ; 14 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.bx = add nsw i64 %i.bv, -1                   ; 5 uses
  br i1 %i.bn, label %bb.q, label %bb.ab

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.i ], [ %..i.i.peel.i, %bb.j ], [ 1, %bb.h ]
  %i.by = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp ult i64 %i.by, %i.o
  br i1 %.not.i.i.i.i, label %bb.n, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.m
  %i.ca = icmp eq i64 %i.by, %i.o
  br i1 %i.ca, label %bb.o, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.by
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !554, !noalias !558, !noundef !6
  %i.cd = icmp sgt i8 %i.cc, -65
  br i1 %i.cd, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n, %.split.i.i.i.i, %bb.l
  %i.ce = icmp samesign eq i64 %i.by, %i.o
  br i1 %i.ce, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.by
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !559, !noundef !6 ; 3 uses
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.i: ; preds = %bb.p
  %i.ci = add nuw nsw i64 %i.by, 1
  %i.cj = icmp samesign ne i64 %i.ci, %i.o
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i8 %i.cg, -33
  br i1 %i.ck, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.i
  %i.cl = add nuw nsw i64 %i.by, 2
  %i.cm = icmp samesign ne i64 %i.cl, %i.o
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ugt i8 %i.cg, -17
  br i1 %i.cn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.i
  %i.co = add nuw nsw i64 %i.by, 3
  %i.cp = icmp samesign ne i64 %i.co, %i.o
  tail call void @llvm.assume(i1 %i.cp)
  br label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.loopexit.i:                                      ; preds = %bb.n, %.split.i.i.i.i, %bb.c, %.split.i.i.i.peel.i
  %.lcssa129.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.c ], [ %i.by, %.split.i.i.i.i ], [ %i.by, %bb.n ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, i64 noundef %.lcssa129.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16, !noalias !558
  unreachable

.loopexit133.i:                                   ; preds = %bb.d
  %.mask.i = and i8 %.promoted26.i.i, 1
  %spec.select189.i = zext nneg i8 %.mask.i to i64
  br label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

bb.q:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %.promoted.i5.i = load i64, ptr %i.bw, align 8, !alias.scope !560, !noalias !550 ; 3 uses
  %i.cq = add i64 %.promoted.i5.i, %i.bx          ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.br
  br i1 %i.cr, label %.lr.ph.i8.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.lr.ph.i8.i:                                      ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !560, !noalias !550, !noundef !6 ; 2 uses
  %i.cu = load i64, ptr %i.g, align 8, !alias.scope !560, !noalias !550
  %.fr46 = freeze i64 %i.cu                       ; 11 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !560, !noalias !550
  %umax49.i11.i = tail call i64 @llvm.umax.i64(i64 %.fr46, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.cx = add i64 %.fr46, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.cx, %i.bv
  %reass.sub190.i = sub i64 1, %.fr46             ; 2 uses
  br i1 %.first_iter.i, label %.lr.ph.i8.i.split.us.preheader, label %.lr.ph.i8.i.split.preheader

.lr.ph.i8.i.split.preheader:                      ; preds = %.lr.ph.i8.i
  %exitcond.not.i13.i174.not = icmp ult i64 %.fr46, %i.bv
  br label %.lr.ph.i8.i.split

.lr.ph.i8.i.split.us.preheader:                   ; preds = %.lr.ph.i8.i
  %exitcond.not.i13.i.us179.not = icmp ult i64 %.fr46, %i.bv
  %.not.i.us.us182 = icmp eq i64 %.fr46, 0
  br label %.lr.ph.i8.i.split.us

.lr.ph.i8.i.split.us:                             ; preds = %.lr.ph.i8.i.split.us.preheader, %bb.v
  %i.cy = phi i64 [ %i.dy, %bb.v ], [ %.promoted.i5.i, %.lr.ph.i8.i.split.us.preheader ] ; 9 uses
  %i.cz = phi i64 [ %i.dz, %bb.v ], [ %i.cq, %.lr.ph.i8.i.split.us.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !561, !noundef !6
  %i.dc = and i8 %i.db, 63
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.de, %i.ct
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.u, label %.preheader77.i.us.preheader

.preheader77.i.us.preheader:                      ; preds = %.lr.ph.i8.i.split.us
  br i1 %exitcond.not.i13.i.us179.not, label %.lr.ph181, label %.preheader.i.us.us.preheader

.preheader77.i.us:                                ; preds = %bb.r
  %i.dh = add nuw i64 %.sroa.02.0.i12.i.us180, 1  ; 2 uses
  %exitcond.not.i13.i.us = icmp eq i64 %i.dh, %umax49.i11.i
  br i1 %exitcond.not.i13.i.us, label %.preheader.i.us.us.preheader, label %.lr.ph181

.preheader.i.us.us.preheader:                     ; preds = %.preheader77.i.us, %.preheader77.i.us.preheader
  br i1 %.not.i.us.us182, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %.lr.ph184

.lr.ph181:                                        ; preds = %.preheader77.i.us.preheader, %.preheader77.i.us
  %.sroa.02.0.i12.i.us180 = phi i64 [ %i.dh, %.preheader77.i.us ], [ %.fr46, %.preheader77.i.us.preheader ] ; 4 uses
  %i.di = add i64 %.sroa.02.0.i12.i.us180, %i.cy  ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.br
  br i1 %i.dj, label %bb.r, label %.split.us39

bb.r:                                             ; preds = %.lr.ph181
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.02.0.i12.i.us180
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !562, !noundef !6
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.di
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !561, !noundef !6
  %.not21.i15.i.us = icmp eq i8 %i.dl, %i.dn
  br i1 %.not21.i15.i.us, label %.preheader77.i.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.reass188.i.us = add i64 %reass.sub190.i, %i.cy
  %i.do = add i64 %.reass188.i.us, %.sroa.02.0.i12.i.us180
  br label %bb.v

.preheader.i.us.us:                               ; preds = %bb.t
  %.not.i.us.us = icmp eq i64 %i.dp, 0
  br i1 %.not.i.us.us, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %.lr.ph184

.lr.ph184:                                        ; preds = %.preheader.i.us.us.preheader, %.preheader.i.us.us
  %.sroa.2.0.i16.i.us.us183 = phi i64 [ %i.dp, %.preheader.i.us.us ], [ %.fr46, %.preheader.i.us.us.preheader ]
  %i.dp = add i64 %.sroa.2.0.i16.i.us.us183, -1   ; 4 uses
  %i.dq = add i64 %i.dp, %i.cy                    ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.br
  br i1 %i.dr, label %bb.t, label %.split.us

bb.t:                                             ; preds = %.lr.ph184
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !562, !noundef !6
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dq
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !561, !noundef !6
  %.not.i17.i.us.us = icmp eq i8 %i.dt, %i.dv
  br i1 %.not.i17.i.us.us, label %.preheader.i.us.us, label %.split33.us.us

.split33.us.us:                                   ; preds = %bb.t
  %i.dw = add i64 %i.cy, %i.cw
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i8.i.split.us
  %i.dx = add i64 %i.cy, %i.bv
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split33.us.us, %bb.s
  %i.dy = phi i64 [ %i.do, %bb.s ], [ %i.dx, %bb.u ], [ %i.dw, %.split33.us.us ] ; 2 uses
  %i.dz = add i64 %i.dy, %i.bx                    ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.br
  br i1 %i.ea, label %.lr.ph.i8.i.split.us, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.lr.ph.i8.i.split:                                ; preds = %.lr.ph.i8.i.split.preheader, %bb.x
  %i.eb = phi i64 [ %i.el, %bb.x ], [ %.promoted.i5.i, %.lr.ph.i8.i.split.preheader ] ; 5 uses
  %i.ec = phi i64 [ %i.em, %bb.x ], [ %i.cq, %.lr.ph.i8.i.split.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !561, !noundef !6
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.ct
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.w, label %.preheader77.i.preheader

.preheader77.i.preheader:                         ; preds = %.lr.ph.i8.i.split
  br i1 %exitcond.not.i13.i174.not, label %.lr.ph176, label %.preheader.i

bb.w:                                             ; preds = %.lr.ph.i8.i.split
  %i.ek = add i64 %i.eb, %i.bv
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.w
  %i.el = phi i64 [ %i.ew, %bb.aa ], [ %i.ek, %bb.w ] ; 2 uses
  %i.em = add i64 %i.el, %i.bx                    ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.br
  br i1 %i.en, label %.lr.ph.i8.i.split, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.preheader77.i:                                   ; preds = %bb.z
  %i.eo = add nuw i64 %.sroa.02.0.i12.i175, 1     ; 2 uses
  %exitcond.not.i13.i = icmp eq i64 %i.eo, %umax49.i11.i
  br i1 %exitcond.not.i13.i, label %.preheader.i, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader77.i.preheader, %.preheader77.i
  %.sroa.02.0.i12.i175 = phi i64 [ %i.eo, %.preheader77.i ], [ %.fr46, %.preheader77.i.preheader ] ; 4 uses
  %i.ep = add i64 %.sroa.02.0.i12.i175, %i.eb     ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.br
  br i1 %i.eq, label %bb.z, label %.split.us39

.preheader.i:                                     ; preds = %.preheader77.i.preheader, %.preheader77.i
  %.not.i = icmp eq i64 %.fr46, 0
  br i1 %.not.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit, label %bb.y

bb.y:                                             ; preds = %.preheader.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef range(i64 0, -9223372036854775808) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !563
  unreachable

.split.us:                                        ; preds = %.lr.ph184
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !563
  unreachable

bb.z:                                             ; preds = %.lr.ph176
  %i.er = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.02.0.i12.i175
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !562, !noundef !6
  %i.et = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ep
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !561, !noundef !6
  %.not21.i15.i = icmp eq i8 %i.es, %i.eu
  br i1 %.not21.i15.i, label %.preheader77.i, label %bb.aa

.split.us39:                                      ; preds = %.lr.ph176, %.lr.ph181
  %.us-phi40 = phi i64 [ %i.cy, %.lr.ph181 ], [ %i.eb, %.lr.ph176 ]
  %i.ev = add i64 %.us-phi40, %.fr46
  %umax.i14.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %i.ev)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i14.i, i64 noundef range(i64 0, -9223372036854775808) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16, !noalias !563
  unreachable

bb.aa:                                            ; preds = %bb.z
  %.reass188.i = add i64 %reass.sub190.i, %i.eb
  %i.ew = add i64 %.reass188.i, %.sroa.02.0.i12.i175
  br label %bb.x

bb.ab:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %.promoted.i2.i = load i64, ptr %i.bw, align 8, !alias.scope !564, !noalias !550 ; 2 uses
  %i.ex = add i64 %.promoted.i2.i, %i.bx          ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.br
  br i1 %i.ey, label %.lr.ph.i4.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.lr.ph.i4.i:                                      ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !564, !noalias !550, !noundef !6
  %i.fb = load i64, ptr %i.g, align 8, !alias.scope !564, !noalias !550 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !564, !noalias !550 ; 2 uses
  %i.fe = sub i64 %i.bv, %i.fd
  %invariant.op = sub i64 1, %i.fb
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %.lr.ph.i4.i
  %i.ff = phi i64 [ %.promoted.i2.i, %.lr.ph.i4.i ], [ %.ph71.i.i, %.sink.split.i.i ] ; 9 uses
  %i.fg = phi i64 [ %i.bm, %.lr.ph.i4.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 3 uses
  %i.fh = phi i64 [ %i.ex, %.lr.ph.i4.i ], [ %i.fq, %.sink.split.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !565, !noundef !6
  %i.fk = and i8 %i.fj, 63
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.fa
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fp = add i64 %i.ff, %i.bv
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.ac
  %.sroa.0.0.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 %i.fb) ; 4 uses
  %umax49.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bv)
  %exitcond.not.i.i169.not = icmp ult i64 %.sroa.0.0.i.i.i, %i.bv
  br i1 %exitcond.not.i.i169.not, label %.lr.ph, label %.preheader21.i.preheader

.sink.split.i.i:                                  ; preds = %bb.an, %bb.ak, %bb.ad
  %.sink.i.i = phi i64 [ %i.fe, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.ad ]
  %.ph71.i.i = phi i64 [ %i.gf, %bb.ak ], [ %i.gl, %bb.an ], [ %i.fp, %bb.ad ] ; 2 uses
  %i.fq = add i64 %.ph71.i.i, %i.bx               ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.br
  br i1 %i.fr, label %bb.ac, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

bb.af:                                            ; preds = %bb.al
  %i.fs = add nuw i64 %.sroa.02.0.i.i170, 1       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fs, %umax49.i.i
  br i1 %exitcond.not.i.i, label %.preheader21.i.preheader, label %.lr.ph

.preheader21.i.preheader:                         ; preds = %bb.af, %bb.ae
  %i.ft = icmp ult i64 %i.fg, %i.fb
  br i1 %i.ft, label %.lr.ph172, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.02.0.i.i170 = phi i64 [ %i.fs, %bb.af ], [ %.sroa.0.0.i.i.i, %bb.ae ] ; 4 uses
  %i.fu = add i64 %.sroa.02.0.i.i170, %i.ff       ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.br
  br i1 %i.fv, label %bb.al, label %bb.am

.preheader21.i:                                   ; preds = %bb.ai
  %i.fw = icmp ult i64 %i.fg, %i.fx
  br i1 %i.fw, label %.lr.ph172, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit

.lr.ph172:                                        ; preds = %.preheader21.i.preheader, %.preheader21.i
  %.sroa.2.0.i.i171 = phi i64 [ %i.fx, %.preheader21.i ], [ %i.fb, %.preheader21.i.preheader ]
  %i.fx = add i64 %.sroa.2.0.i.i171, -1           ; 6 uses
  %i.fy = icmp ult i64 %i.fx, %i.bv
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph172
  %i.fz = add i64 %i.fx, %i.ff                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.br
  br i1 %i.ga, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph172
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fx, i64 noundef range(i64 0, -9223372036854775808) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !567
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.fx
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !566, !noundef !6
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.fz
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !565, !noundef !6
  %.not.i.i = icmp eq i8 %i.gc, %i.ge
  br i1 %.not.i.i, label %.preheader21.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16, !noalias !567
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.gf = add i64 %i.ff, %i.fd
  br label %.sink.split.i.i

bb.al:                                            ; preds = %.lr.ph
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.02.0.i.i170
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !566, !noundef !6
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.fu
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !565, !noundef !6
  %.not21.i.i = icmp eq i8 %i.gh, %i.gj
  br i1 %.not21.i.i, label %bb.af, label %bb.an

bb.am:                                            ; preds = %.lr.ph
  %i.gk = add i64 %.sroa.0.0.i.i.i, %i.ff
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %i.gk)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16, !noalias !567
  unreachable

bb.an:                                            ; preds = %bb.al
  %.reass.i.reass.reass = add i64 %i.ff, %invariant.op
  %i.gl = add i64 %.reass.i.reass.reass, %.sroa.02.0.i.i170
  br label %.sink.split.i.i

_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom.exit: ; preds = %.sink.split.i.i, %.preheader21.i.preheader, %.preheader21.i, %bb.x, %bb.v, %.preheader.i.us.us.preheader, %.preheader.i.us.us, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.i, %bb.p, %.preheader.i, %.preheader.i.i, %bb.g, %bb.o, %.loopexit133.i, %bb.q, %bb.ab
  %.sroa.6.1.i = phi i64 [ %i.eb, %.preheader.i ], [ undef, %bb.q ], [ undef, %.preheader.i.i ], [ %i.o, %bb.o ], [ %.promoted.i.i, %.loopexit133.i ], [ undef, %bb.x ], [ %i.by, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.i ], [ undef, %bb.ab ], [ %.promoted.i.i, %bb.g ], [ %i.cy, %bb.v ], [ %i.cy, %.preheader.i.us.us ], [ %i.ff, %.preheader21.i ], [ %i.by, %bb.p ], [ %i.by, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.i ], [ %i.by, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.i ], [ %i.cy, %.preheader.i.us.us.preheader ], [ %i.ff, %.preheader21.i.preheader ], [ %i.ff, %.sink.split.i.i ]
  %.sroa.0.019.i = phi i64 [ 1, %.preheader.i ], [ 0, %bb.q ], [ 0, %.preheader.i.i ], [ 1, %bb.o ], [ %spec.select189.i, %.loopexit133.i ], [ 0, %bb.x ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit12.i.i.i.i ], [ 0, %bb.ab ], [ 1, %bb.g ], [ 0, %bb.v ], [ 1, %.preheader.i.us.us ], [ 1, %.preheader21.i ], [ 1, %bb.p ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit16.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5Q5FLCJ3YzS_3nom.exit14.i.i.i.i ], [ 1, %.preheader.i.us.us.preheader ], [ 0, %.sink.split.i.i ], [ 1, %.preheader21.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !550
  %i.gm = insertvalue { i64, i64 } poison, i64 %.sroa.0.019.i, 0
  %i.gn = insertvalue { i64, i64 } %i.gm, i64 %.sroa.6.1.i, 1
  ret { i64, i64 } %i.gn
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5Q5FLCJ3YzS_3nom(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5Q5FLCJ3YzS_3nom(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs5Q5FLCJ3YzS_3nom(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5Q5FLCJ3YzS_3nom(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{ptr @_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!5 = !{i64 3530848516818441327}
!6 = !{}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 4}
!10 = !{i32 0, i32 1114112}
!11 = !{i64 8261587449451494681}
!12 = !{i64 -2241031525603392221}
!13 = distinct !{!13, i1 true, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!14 = distinct !{!14, !13, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!15 = !{i64 5855083821207286422}
!16 = !{!14}
!17 = distinct !{!17, i1 true, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!18 = distinct !{!18, !17, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!19 = !{i64 6368995999769067926}
!20 = !{!18}
!21 = distinct !{!21, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!22 = distinct !{!22, !21, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!23 = !{i64 1771324495110464678}
!24 = !{!22}
!25 = distinct !{!25, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!26 = distinct !{!26, !25, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!27 = !{i64 6997693201670603032}
!28 = !{!26}
!29 = distinct !{!29, i1 true, !"_RNvXs2A_NtCs5Q5FLCJ3YzS_3nom6traitsAhj3_INtB6_9FindTokenhE10find_token"}
!30 = distinct !{!30, !29, !"_RNvXs2A_NtCs5Q5FLCJ3YzS_3nom6traitsAhj3_INtB6_9FindTokenhE10find_token: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!32 = distinct !{!32, !31, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!33 = distinct !{ptr @_RNvXs2A_NtCs5Q5FLCJ3YzS_3nom6traitsAhj3_INtB6_9FindTokenhE10find_token, null}
!34 = !{i64 1319413679737176095}
!35 = !{!32, !30}
!36 = !{!32}
!37 = distinct !{!37, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!38 = distinct !{!38, !37, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!39 = !{i64 5462979200891754121}
!40 = !{!38}
!41 = distinct !{!41, i1 true, !"_RNvXs2H_NtCs5Q5FLCJ3YzS_3nom6traitsAhj4_INtB6_9FindTokenhE10find_token"}
!42 = distinct !{!42, !41, !"_RNvXs2H_NtCs5Q5FLCJ3YzS_3nom6traitsAhj4_INtB6_9FindTokenhE10find_token: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!44 = distinct !{!44, !43, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!45 = distinct !{ptr @_RNvXs2H_NtCs5Q5FLCJ3YzS_3nom6traitsAhj4_INtB6_9FindTokenhE10find_token, null}
!46 = !{i64 -7239485707037217247}
!47 = !{!44, !42}
!48 = !{!44}
!49 = distinct !{!49, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!50 = distinct !{!50, !49, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!51 = !{i64 -2288245267045413756}
!52 = !{!50}
!53 = distinct !{!53, i1 true, !"_RNvXs2O_NtCs5Q5FLCJ3YzS_3nom6traitsAhj5_INtB6_9FindTokenhE10find_token"}
!54 = distinct !{!54, !53, !"_RNvXs2O_NtCs5Q5FLCJ3YzS_3nom6traitsAhj5_INtB6_9FindTokenhE10find_token: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!56 = distinct !{!56, !55, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!57 = distinct !{ptr @_RNvXs2O_NtCs5Q5FLCJ3YzS_3nom6traitsAhj5_INtB6_9FindTokenhE10find_token, null}
!58 = !{i64 7073090449453316738}
!59 = !{!56, !54}
!60 = !{!56}
!61 = distinct !{!61, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!62 = distinct !{!62, !61, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!63 = !{i64 508718420882284638}
!64 = !{!62}
!65 = distinct !{!65, i1 true, !"_RNvXs2V_NtCs5Q5FLCJ3YzS_3nom6traitsAhj6_INtB6_9FindTokenhE10find_token"}
!66 = distinct !{!66, !65, !"_RNvXs2V_NtCs5Q5FLCJ3YzS_3nom6traitsAhj6_INtB6_9FindTokenhE10find_token: argument 0"}
!67 = distinct !{!67, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!68 = distinct !{!68, !67, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!69 = distinct !{ptr @_RNvXs2V_NtCs5Q5FLCJ3YzS_3nom6traitsAhj6_INtB6_9FindTokenhE10find_token, null}
!70 = !{i64 -5801331636188235138}
!71 = !{!68, !66}
!72 = !{!68}
!73 = distinct !{!73, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!74 = distinct !{!74, !73, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!75 = !{i64 1126319541002774756}
!76 = !{!74}
!77 = distinct !{!77, i1 true, !"_RNvXs2f_NtCs5Q5FLCJ3YzS_3nom6traitsAhj0_INtB6_9FindTokenhE10find_token"}
!78 = distinct !{!78, !77, !"_RNvXs2f_NtCs5Q5FLCJ3YzS_3nom6traitsAhj0_INtB6_9FindTokenhE10find_token: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!80 = distinct !{!80, !79, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!81 = distinct !{ptr @_RNvXs2f_NtCs5Q5FLCJ3YzS_3nom6traitsAhj0_INtB6_9FindTokenhE10find_token, null}
!82 = !{i64 311403802770681362}
!83 = !{!80, !78}
!84 = !{!80}
!85 = distinct !{!85, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!86 = distinct !{!86, !85, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!87 = !{i64 352451051928237682}
!88 = !{!86}
!89 = distinct !{!89, i1 true, !"_RNvXs2m_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1_INtB6_9FindTokenhE10find_token"}
!90 = distinct !{!90, !89, !"_RNvXs2m_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1_INtB6_9FindTokenhE10find_token: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!92 = distinct !{!92, !91, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!93 = distinct !{ptr @_RNvXs2m_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1_INtB6_9FindTokenhE10find_token, null}
!94 = !{i64 2515501944960243401}
!95 = !{!92, !90}
!96 = !{!92}
!97 = distinct !{!97, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!98 = distinct !{!98, !97, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!99 = !{i64 6001924148777529117}
!100 = !{!98}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!336 = !{!332}
!337 = distinct !{!337, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!338 = distinct !{!338, !337, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!339 = !{i64 13788734752362713}
!340 = !{!338}
!341 = distinct !{!341, i1 true, !"_RNvXs5D_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1e_INtB6_9FindTokenhE10find_token"}
!342 = distinct !{!342, !341, !"_RNvXs5D_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1e_INtB6_9FindTokenhE10find_token: argument 0"}
!343 = distinct !{!343, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!344 = distinct !{!344, !343, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!345 = distinct !{ptr @_RNvXs5D_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1e_INtB6_9FindTokenhE10find_token, null}
!346 = !{i64 -7708767442561331738}
!347 = !{!344, !342}
!348 = !{!344}
!349 = distinct !{!349, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!350 = distinct !{!350, !349, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!351 = !{i64 634604909568161181}
!352 = !{!350}
!353 = distinct !{!353, i1 true, !"_RNvXs5K_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1f_INtB6_9FindTokenhE10find_token"}
!354 = distinct !{!354, !353, !"_RNvXs5K_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1f_INtB6_9FindTokenhE10find_token: argument 0"}
!355 = distinct !{!355, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!356 = distinct !{!356, !355, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!357 = distinct !{ptr @_RNvXs5K_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1f_INtB6_9FindTokenhE10find_token, null}
!358 = !{i64 -5825052620252457161}
!359 = !{!356, !354}
!360 = !{!356}
!361 = distinct !{!361, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!362 = distinct !{!362, !361, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!363 = !{i64 3338243452290526138}
!364 = !{!362}
!365 = distinct !{!365, i1 true, !"_RNvXs5R_NtCs5Q5FLCJ3YzS_3nom6traitsAhj20_INtB6_9FindTokenhE10find_token"}
!366 = distinct !{!366, !365, !"_RNvXs5R_NtCs5Q5FLCJ3YzS_3nom6traitsAhj20_INtB6_9FindTokenhE10find_token: argument 0"}
!367 = distinct !{!367, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!368 = distinct !{!368, !367, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!369 = distinct !{ptr @_RNvXs5R_NtCs5Q5FLCJ3YzS_3nom6traitsAhj20_INtB6_9FindTokenhE10find_token, null}
!370 = !{i64 -5442209183817789035}
!371 = !{!368, !366}
!372 = !{!368}
!373 = distinct !{!373, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!374 = distinct !{!374, !373, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!375 = !{i64 1659239641060626383}
!376 = !{!374}
!377 = distinct !{!377, i1 true, !"_RNvXs5b_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1a_INtB6_9FindTokenhE10find_token"}
!378 = distinct !{!378, !377, !"_RNvXs5b_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1a_INtB6_9FindTokenhE10find_token: argument 0"}
!379 = distinct !{!379, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!380 = distinct !{!380, !379, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!381 = distinct !{ptr @_RNvXs5b_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1a_INtB6_9FindTokenhE10find_token, null}
!382 = !{i64 -8765969340160543638}
!383 = !{!380, !378}
!384 = !{!380}
!385 = distinct !{!385, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!386 = distinct !{!386, !385, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!387 = !{i64 -6931837666116455350}
!388 = !{!386}
!389 = distinct !{!389, i1 true, !"_RNvXs5i_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1b_INtB6_9FindTokenhE10find_token"}
!390 = distinct !{!390, !389, !"_RNvXs5i_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1b_INtB6_9FindTokenhE10find_token: argument 0"}
!391 = distinct !{!391, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!392 = distinct !{!392, !391, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!393 = distinct !{ptr @_RNvXs5i_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1b_INtB6_9FindTokenhE10find_token, null}
!394 = !{i64 -940057972054552170}
!395 = !{!392, !390}
!396 = !{!392}
!397 = distinct !{!397, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!398 = distinct !{!398, !397, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!399 = !{i64 -8980847376005384697}
!400 = !{!398}
!401 = distinct !{!401, i1 true, !"_RNvXs5p_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1c_INtB6_9FindTokenhE10find_token"}
!402 = distinct !{!402, !401, !"_RNvXs5p_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1c_INtB6_9FindTokenhE10find_token: argument 0"}
!403 = distinct !{!403, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!404 = distinct !{!404, !403, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!405 = distinct !{ptr @_RNvXs5p_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1c_INtB6_9FindTokenhE10find_token, null}
!406 = !{i64 -7360903655867149563}
!407 = !{!404, !402}
!408 = !{!404}
!409 = distinct !{!409, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!410 = distinct !{!410, !409, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!411 = !{i64 5222113718007076450}
!412 = !{!410}
!413 = distinct !{!413, i1 true, !"_RNvXs5w_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1d_INtB6_9FindTokenhE10find_token"}
!414 = distinct !{!414, !413, !"_RNvXs5w_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1d_INtB6_9FindTokenhE10find_token: argument 0"}
!415 = distinct !{!415, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!416 = distinct !{!416, !415, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!417 = distinct !{ptr @_RNvXs5w_NtCs5Q5FLCJ3YzS_3nom6traitsAhj1d_INtB6_9FindTokenhE10find_token, null}
!418 = !{i64 445740836920227147}
!419 = !{!416, !414}
!420 = !{!416}
!421 = distinct !{!421, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!422 = distinct !{!422, !421, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!423 = distinct !{!423, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!424 = distinct !{!424, !423, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!425 = distinct !{!425, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!426 = distinct !{!426, !425, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!427 = distinct !{!427, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!428 = distinct !{!428, !427, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!429 = distinct !{!429, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!430 = distinct !{!430, !429, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!431 = distinct !{!431, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!432 = distinct !{!432, !431, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!433 = distinct !{!433, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!434 = distinct !{!434, !433, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!435 = distinct !{!435, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!436 = distinct !{!436, !435, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!437 = distinct !{!437, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!438 = distinct !{!438, !437, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!439 = distinct !{!439, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom"}
!440 = distinct !{!440, !439, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs5Q5FLCJ3YzS_3nom: argument 0"}
!441 = !{i64 -794411441906485692}
!442 = !{i64 0, i64 -9223372036854775807}
!443 = !{i64 -1, i64 -9223372036854775808}
!444 = !{i64 0, i64 -9223372036854775808}
!445 = !{!422}
!446 = !{!424}
!447 = !{!426}
!448 = !{!428}
!449 = !{!430}
!450 = !{!432}
!451 = !{!434}
!452 = !{!436}
!453 = !{!438}
!454 = !{!440}
!455 = !{i64 7580507970334784540}
!456 = !{i64 -1149482427119515819}
!457 = !{i64 -6327262183398093415}
!458 = distinct !{!458, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!459 = distinct !{!459, !458, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!460 = !{i64 -3983993276772129988}
!461 = !{!459}
!462 = distinct !{!462, i1 true, !"_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token"}
!463 = distinct !{!463, !462, !"_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token: argument 0"}
!464 = distinct !{!464, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!465 = distinct !{!465, !464, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!466 = !{i64 -8073798184418383897}
!467 = !{!465, !463}
!468 = !{!463}
!469 = distinct !{!469, i1 true, !"_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token"}
!470 = distinct !{!470, !469, !"_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token: argument 0"}
!471 = distinct !{!471, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!472 = distinct !{!472, !471, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!473 = !{i64 2022964272667579746}
!474 = !{!470}
!475 = !{!472, !470}
!476 = distinct !{!476, i1 true, !"_RNvXsr_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenRhE10find_token"}
!477 = distinct !{!477, !476, !"_RNvXsr_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenRhE10find_token: argument 1"}
!478 = distinct !{!478, !476, !"_RNvXsr_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenRhE10find_token: argument 0"}
!479 = distinct !{!479, i1 true, !"_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token"}
!480 = distinct !{!480, !479, !"_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token: argument 0"}
!481 = distinct !{!481, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!482 = distinct !{!482, !481, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!483 = distinct !{ptr @_RNvXsr_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenRhE10find_token, ptr @_RNvXsp_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB5_9FindTokenhE10find_token, null}
!484 = !{i64 -312129523347728038}
!485 = !{!477}
!486 = !{!482, !480, !478, !477}
!487 = !{!480, !478, !477}
!488 = distinct !{!488, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXst_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB1J_9FindTokencE10find_token0EB1L_"}
!489 = distinct !{!489, !488, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXst_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB1J_9FindTokencE10find_token0EB1L_: argument 1"}
!490 = distinct !{!490, !488, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXst_NtCs5Q5FLCJ3YzS_3nom6traitsRShINtB1J_9FindTokencE10find_token0EB1L_: argument 0"}
!491 = !{i64 4359505322430114305}
!492 = !{!490, !489}
!493 = distinct !{!493, i1 true, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvXsu_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB1Z_9FindTokencE10find_token0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB21_"}
!494 = distinct !{!494, !493, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvXsu_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB1Z_9FindTokencE10find_token0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB21_: argument 1"}
!495 = distinct !{!495, !493, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvXsu_NtCs5Q5FLCJ3YzS_3nom6traitsReINtB1Z_9FindTokencE10find_token0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB21_: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!497 = distinct !{!497, !496, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!498 = distinct !{!498, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5Q5FLCJ3YzS_3nom"}
!499 = distinct !{!499, !498, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5Q5FLCJ3YzS_3nom: argument 0"}
!500 = !{i64 -6558230828763363407}
!501 = !{!499, !497, !495, !494}
!502 = distinct !{!502, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_"}
!503 = distinct !{!503, !502, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_: argument 1"}
!504 = distinct !{!504, !502, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_: argument 0"}
!505 = !{i64 4720910006237861884}
!506 = !{!504, !503}
!507 = distinct !{!507, i1 true, !"_RNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokencE10find_token"}
!508 = distinct !{!508, !507, !"_RNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB5_9FindTokencE10find_token: argument 0"}
!509 = distinct !{!509, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_"}
!510 = distinct !{!510, !509, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_: argument 1"}
!511 = distinct !{!511, !509, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsv_NtCs5Q5FLCJ3YzS_3nom6traitsRScINtB1J_9FindTokencE10find_token0EB1L_: argument 0"}
!512 = !{i64 1017919661533962306}
!513 = !{!508}
!514 = !{!511, !510, !508}
!515 = distinct !{!515, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!516 = distinct !{!516, !515, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!517 = distinct !{!517, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom"}
!518 = distinct !{!518, !517, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr6memchr0Cs5Q5FLCJ3YzS_3nom: argument 0"}
!519 = !{i64 2406743242615391255}
!520 = !{!516}
!521 = !{!518}
!522 = !{!"branch_weights", i32 4001, i32 4000000}
!523 = !{i64 -2517230416680907724}
!524 = distinct !{!524, i1 true, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom"}
!525 = distinct !{!525, !524, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom: argument 1"}
!526 = distinct !{!526, !524, !"_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECs5Q5FLCJ3YzS_3nom: argument 0"}
!527 = distinct !{!527, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!528 = distinct !{!528, !527, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!529 = distinct !{!529, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!530 = distinct !{!530, !529, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!531 = distinct !{!531, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!532 = distinct !{!532, !531, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!533 = distinct !{!533, !527, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!534 = distinct !{!534, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!535 = distinct !{!535, !534, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!536 = distinct !{!536, !529, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!537 = distinct !{!537, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5Q5FLCJ3YzS_3nom"}
!538 = distinct !{!538, !537, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5Q5FLCJ3YzS_3nom: argument 0"}
!539 = distinct !{!539, i1 true, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom"}
!540 = distinct !{!540, !539, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 1"}
!541 = distinct !{!541, !539, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 2"}
!542 = distinct !{!542, !539, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 3"}
!543 = distinct !{!543, !539, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 0"}
!544 = distinct !{!544, i1 true, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom"}
!545 = distinct !{!545, !544, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 1"}
!546 = distinct !{!546, !544, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 2"}
!547 = distinct !{!547, !544, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 3"}
!548 = distinct !{!548, !544, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5Q5FLCJ3YzS_3nom: argument 0"}
!549 = !{i64 527691752804117479}
!550 = !{!526, !525}
!551 = !{!528}
!552 = !{i8 0, i8 2}
!553 = !{!530, !528}
!554 = !{!532}
!555 = !{!536, !535, !533, !528}
!556 = !{!538, !536, !535, !533, !528}
!557 = !{!530}
!558 = !{!536, !530, !533, !528}
!559 = !{!538, !536, !530, !533, !528}
!560 = !{!540}
!561 = !{!541}
!562 = !{!542}
!563 = !{!543, !540, !541, !542}
!564 = !{!545}
!565 = !{!546}
!566 = !{!547}
!567 = !{!548, !545, !546, !547}
end_hunk_1
