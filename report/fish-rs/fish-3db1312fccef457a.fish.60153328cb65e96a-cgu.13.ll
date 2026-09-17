Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_9utfstring11Utf32StringECs8frGy5WneL6_4fish:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !12
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val1
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.e = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1U_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr noundef nonnull %.val, ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.b = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecEINtNtNtBY_8adapters6copied6CopiedINtNtNtB10_5slice4iter4ItercEEECs8frGy5WneL6_4fish(i32 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRScECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtNtB10_3str4iter5CharsEIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.b = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtBY_7sources4once4OncecEEIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(i32 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator5eq_byNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvYB3_BH_2eqB1s_E0ECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.f, %bb.a
  %.sroa.05.0.i.i.i = phi ptr [ %2, %bb.a ], [ %i.ar, %bb.f ] ; 5 uses
  %i.c = phi ptr [ %0, %bb.a ], [ %i.al, %bb.f ]  ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !noalias !1360, !noundef !12 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !1360, !noundef !12
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.r = icmp ne ptr %i.j, %1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !1360, !noundef !12
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i
  %i.ab = icmp ne ptr %i.s, %1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !1360, !noundef !12
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.d, %bb.c ]
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.z, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.ak, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.am = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %i.am, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %.sroa.05.0.i.i.i, align 4, !noalias !1361, !noundef !12 ; 4 uses
  %i.ao = xor i32 %i.an, 55296
  %i.ap = add i32 %i.ao, -1114112
  %i.aq = icmp ult i32 %i.ap, -1112064
  br i1 %i.aq, label %.split.i.i.i.i.i.i.i.i, label %bb.f

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1362
  store i32 %i.an, ptr %i.b, align 4, !noalias !1362
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @732) #54, !noalias !1361
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 4
  %i.as = icmp ult i32 %i.an, 1114112
  tail call void @llvm.assume(i1 %i.as)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i.i.i, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit

_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.at = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %i.at, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.au = load i32, ptr %.sroa.05.0.i.i.i, align 4, !noalias !1363, !noundef !12 ; 3 uses
  %i.av = xor i32 %i.au, 55296
  %i.aw = add i32 %i.av, -1114112
  %i.ax = icmp ult i32 %i.aw, -1112064
  br i1 %i.ax, label %.split.i.i.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1364
  store i32 %i.au, ptr %i.a, align 4, !noalias !1364
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @732) #54, !noalias !1363
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %bb.g
  %i.ay = icmp ult i32 %i.au, 1114112
  tail call void @llvm.assume(i1 %i.ay)
  br label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.f, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.az = phi i1 [ true, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i ], [ false, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %i.az
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.x, !prof !15

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8              ; 16 uses
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw i32 %i.d, %i.c                     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !1404, !noundef !12 ; 3 uses
  %i.h = icmp ugt i32 %i.g, 63
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !1405, !noalias !1406
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.f, label %.thread.i.i.i.i15.i.i.i.i, !prof !16

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #47, !noalias !1406
  br label %.thread.i.i.i.i15.i.i.i.i

.thread.i.i.i.i15.i.i.i.i:                        ; preds = %bb.f, %bb.e
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !1407
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.g to i64
  %i.n = add nuw nsw i32 %i.g, 1
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i15.i.i.i.i
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i15.i.i.i.i ], [ %i.o, %bb.g ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i15.i.i.i.i ], [ %i.n, %bb.g ] ; 4 uses
  %i.p = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !1408, !noalias !1407, !noundef !12
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, ptr %i.f, align 4, !alias.scope !1408, !noalias !1407
  %5 = zext i32 %4 to i64
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw i64 %i.q, %5                     ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 %i.c, %i.d
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %bb.h, label %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i

bb.h:                                             ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i
  %i.w = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, 63
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !1409, !noalias !1410
  %i.aa = icmp ugt i64 %i.z, 1023
  br i1 %i.aa, label %bb.j, label %.thread.i.i.i.i19.i.i.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x) #47, !noalias !1410
  br label %.thread.i.i.i.i19.i.i.i.i

.thread.i.i.i.i19.i.i.i.i:                        ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !1411
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ab = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i to i64
  %i.ac = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, 1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i: ; preds = %bb.k, %.thread.i.i.i.i19.i.i.i.i
  %.in.i.i.i.i17.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i19.i.i.i.i ], [ %i.ad, %bb.k ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i18.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i19.i.i.i.i ], [ %i.ac, %bb.k ]
  %i.ae = load i32, ptr %.in.i.i.i.i17.i.i.i.i, align 4, !alias.scope !1412, !noalias !1411, !noundef !12
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i18.i.i.i.i, ptr %i.f, align 4, !alias.scope !1412, !noalias !1411
  %6 = tail call i32 @llvm.umulh.i32(i32 %i.ae, i32 %4)
  %i.af = xor i32 %i.t, -1
  %.not10.i.i.i.i = icmp ugt i32 %6, %i.af
  %i.ag = zext i1 %.not10.i.i.i.i to i64
  %i.ah = add nuw nsw i64 %i.s, %i.ag
  br label %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i

bb.l:                                             ; preds = %bb.b
  %i.ai = sub nuw i64 %2, %1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !1413, !noundef !12 ; 4 uses
  %i.al = icmp ult i32 %i.ak, 63
  br i1 %i.al, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !1414, !noalias !1415, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.aq = load i64, ptr %i.ap, align 4, !alias.scope !1416, !noalias !1417
  %i.ar = icmp ugt i64 %i.aq, 1023
  br i1 %i.ar, label %bb.n, label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i, !prof !16

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ao) #47, !noalias !1417
  br label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i

_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i: ; preds = %bb.n, %bb.m
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ao, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.aj), !noalias !1415
  %i.as = load i32, ptr %i.aj, align 4, !alias.scope !1414, !noalias !1415, !noundef !12 ; 2 uses
  %.not.i.i.i.i11.i.i.i.i = icmp eq i32 %i.ak, 63
  br i1 %.not.i.i.i.i11.i.i.i.i, label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !1414, !noalias !1415, !noundef !12
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %i.av = zext nneg i32 %i.ak to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !1414, !noalias !1415, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !1414, !noalias !1415, !noundef !12
  %i.ba = add nuw nsw i32 %i.ak, 2
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i: ; preds = %bb.p, %bb.o, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i
  %.sroa.0.018.i.i.i.i12.i.i.i.i = phi i32 [ %i.ba, %bb.p ], [ 1, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i ], [ 2, %bb.o ] ; 5 uses
  %.sroa.02.017.i.i.i.i13.i.i.i.i = phi i32 [ %i.ax, %bb.p ], [ %i.an, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i ], [ %i.as, %bb.o ]
  %.sroa.03.016.i.i.i.i14.i.i.i.i = phi i32 [ %i.az, %bb.p ], [ %i.as, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i ], [ %i.au, %bb.o ]
  store i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, ptr %i.aj, align 4, !alias.scope !1414, !noalias !1415
  %i.bb = zext i32 %.sroa.03.016.i.i.i.i14.i.i.i.i to i64
  %i.bc = shl nuw i64 %i.bb, 32
  %i.bd = zext i32 %.sroa.02.017.i.i.i.i13.i.i.i.i to i64
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = zext i64 %i.ai to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = trunc nuw i128 %i.bi to i64             ; 2 uses
  %i.bk = trunc i128 %i.bh to i64                 ; 2 uses
  %i.bl = sub i64 %1, %2
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i
  %i.bn = icmp samesign ult i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, 63
  br i1 %i.bn, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !1418, !noalias !1419, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.bs = load i64, ptr %i.br, align 4, !alias.scope !1420, !noalias !1421
  %i.bt = icmp ugt i64 %i.bs, 1023
  br i1 %i.bt, label %bb.s, label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i, !prof !16

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bq) #47, !noalias !1421
  br label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i

_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i: ; preds = %bb.s, %bb.r
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bq, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.aj), !noalias !1419
  %i.bu = load i32, ptr %i.aj, align 4, !alias.scope !1418, !noalias !1419, !noundef !12 ; 2 uses
  %.not.i.i.i.i17.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, 63
  br i1 %.not.i.i.i.i17.i.i.i.i, label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !1418, !noalias !1419, !noundef !12
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i

bb.u:                                             ; preds = %bb.q
  %i.bx = zext nneg i32 %.sroa.0.018.i.i.i.i12.i.i.i.i to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !1418, !noalias !1419, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !1418, !noalias !1419, !noundef !12
  %i.cc = add nuw nsw i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, 2
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i: ; preds = %bb.u, %bb.t, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i
  %.sroa.0.018.i.i.i.i18.i.i.i.i = phi i32 [ %i.cc, %bb.u ], [ 1, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i ], [ 2, %bb.t ]
  %.sroa.02.017.i.i.i.i19.i.i.i.i = phi i32 [ %i.bz, %bb.u ], [ %i.bp, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i ], [ %i.bu, %bb.t ]
  %.sroa.03.016.i.i.i.i20.i.i.i.i = phi i32 [ %i.cb, %bb.u ], [ %i.bu, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i ], [ %i.bw, %bb.t ]
  store i32 %.sroa.0.018.i.i.i.i18.i.i.i.i, ptr %i.aj, align 4, !alias.scope !1418, !noalias !1419
  %i.cd = zext i32 %.sroa.03.016.i.i.i.i20.i.i.i.i to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %i.cf = zext i32 %.sroa.02.017.i.i.i.i19.i.i.i.i to i64
  %i.cg = or disjoint i64 %i.ce, %i.cf
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.cg, i64 %i.ai)
  %i.ch = xor i64 %i.bk, -1
  %.not7.i.i.i.i = icmp ugt i64 %7, %i.ch
  %i.ci = zext i1 %.not7.i.i.i.i to i64
  %i.cj = add nuw i64 %i.ci, %i.bj
  br label %bb.v

_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.ah, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i ], [ %i.s, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i ]
  %i.ck = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.6.0.extract.shift.i.i = and i64 %i.ck, 4294967295
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.v:                                             ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cj, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i ], [ %i.bj, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i ]
  %i.cl = add i64 %.sroa.01.0.i.i.i.i, %1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1422
  store i8 0, ptr %i.a, align 1, !noalias !1422
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #54, !noalias !1423
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.v, %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.74.0.ph = phi i64 [ %.sroa.6.0.extract.shift.i.i, %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i ], [ %i.cl, %bb.v ]
  ret i64 %.sroa.74.0.ph

bb.x:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !14, !noundef !12
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0Cs8frGy5WneL6_4fish.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #54
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a), !inline_history !1424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !14, !noundef !12
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0Cs8frGy5WneL6_4fish.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #54
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !inline_history !1425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBa_4syncINtB26_8OnceCellBR_E11get_or_initNCNvMs9_B26_INtB26_4LazyBR_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidE0BV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !13, !noundef !12
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1433, !noundef !12 ; 2 uses
  store ptr null, ptr %i.d, align 8, !noalias !1433
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #54, !noalias !1433
  unreachable

_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit: ; preds = %bb.a
  call void %i.e(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !inline_history !1430
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !12 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1434, !noundef !12
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge unwind label %bb.d

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.g, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.g, align 8, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  resume { ptr, i32 } %i.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge, %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit
  %i.m = phi ptr [ %.pre, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_.exit_crit_edge ], [ %i.h, %_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins11fish_indent13throwing_mainE0B6_() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_EB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @14)
  %i.b = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, i64 8) acquire, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id15init_not_called() #53
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit: ; preds = %bb.a
  %i.d = load i64, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, align 8, !noundef !12
  %i.e = icmp eq i64 %i.a, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.e, %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish5panic7AT_EXIT, i64 16) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @_RNvNtCs8frGy5WneL6_4fish5panic7AT_EXIT, align 8, !nonnull !12, !noundef !12
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish5panic7AT_EXIT, i64 8), align 8, !nonnull !12, !align !13, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !12, !nonnull !12
  tail call void %i.k(ptr noundef nonnull %i.h) #52
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins11fish_indent13throwing_mainEs_0B6_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [1 x i8], align 1                 ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtB6_5Debug3fmtB1a_
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtB6_5Debug3fmtB1a_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtB6_5Debug3fmtBW_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast14TokenLeftBraceNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast14TokenLeftBraceNtB4_5Token12allows_tokenB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 1, 15)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast15TokenRightBraceNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast15TokenRightBraceNtB4_5Token12allows_tokenB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 1, 15)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast10KeywordEndNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast10KeywordEndNtB4_7Keyword14allows_keywordB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 0, 19)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader33reader_test_and_clear_interrupted() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 -1, 1114112) i32 @_RNvMs0_NtCs3oUPovFnLWP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedE4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #34

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtCsfWaNi3IUeZW_11xterm_color5ColorENtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish3ast11KeywordTimeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish3ast23JobConjunctionDecoratorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionNtNtCs8frGy5WneL6_4fish3key16ViewportPositionENtB6_5Debug3fmtBW_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast18VariableAssignmentENtB6_5Debug3fmtB1a_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsu_NtCs3oUPovFnLWP_4core3fmtINtNtB7_4cell4CellyENtB5_5Debug3fmtCs8frGy5WneL6_4fish(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_4cell4CellyENtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3key3KeyINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #38

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtCskiWbj8QrlSm_9rand_core5block8BlockRngNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE14push_front_mutB1b_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8truncateB1b_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE9pop_frontB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 4) i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding22match_key_event_to_key(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedQINtNtCs1xwejQucwHj_5alloc3vec3VechERAhj3_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedRShRAhj2_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish11tty_handoff35maybe_set_kitty_keyboard_capability() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish11tty_handoff38maybe_set_scroll_content_up_capability() unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedQINtNtCs1xwejQucwHj_5alloc3vec3VechERAhj2_ECs8frGy5WneL6_4fish(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsfWaNi3IUeZW_11xterm_colorNtB2_5Color5parse(ptr dead_on_unwind noalias nofree noundef writable sret([10 x i8]) align 2 captures(none) dereferenceable(10), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion15from_completion(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent13throwing_main() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader13throwing_main() unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #40

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #40

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #38 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #41 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { noinline }
attributes #48 = { cold }
attributes #49 = { cold noreturn nounwind }
attributes #50 = { nounwind }
attributes #51 = { "function-inline-cost-multiplier"="2" }
attributes #52 = { inlinehint }
attributes #53 = { noreturn }
attributes #54 = { noinline noreturn }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_, null}
!1 = distinct !{null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_}
!2 = distinct !{null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !"_RNvXs1e_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_10PartialOrd2le"}
!6 = distinct !{!6, !5, !"_RNvXs1e_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_10PartialOrd2le: argument 1"}
!7 = distinct !{!7, !5, !"_RNvXs1e_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_10PartialOrd2le: argument 0"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 2, !"RtLibUseGOT", i32 1}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!12 = !{}
!13 = !{i64 8}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{i64 1, i64 536870913}
!19 = !{i64 0, i64 8}
!20 = !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_}
!21 = !{i32 0, i32 2}
!22 = !{i32 0, i32 7}
!23 = !{i32 0, i32 6}
!24 = !{i32 0, i32 3}
!25 = !{i64 -1, i64 -9223372036854775808}
!26 = !{i64 0, i64 -9223372036854775804}
!27 = !{i64 0, i64 2}
!28 = !{i64 0, i64 -9223372036854775807}
!29 = !{i8 0, i8 3}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{i64 4}
!33 = !{i32 0, i32 1114112}
!34 = !{!"branch_weights", i32 -2146410, i32 2146410}
!35 = !{!"address", !"read_provenance"}
!36 = !{i8 0, i8 6}
!37 = !{!"branch_weights", i32 1, i32 127}
!38 = !{!"branch_weights", i32 127, i32 255873}
!39 = !{i8 0, i8 30}
!40 = !{!"branch_weights", i32 4001, i32 4000000}
!41 = !{i64 0, i64 3}
!42 = !{!"branch_weights", i32 1, i32 1999}
!43 = !{i32 0, i32 134}
!44 = !{i64 0, i64 12}
!45 = !{i8 -1, i8 10}
!46 = !{!"branch_weights", i32 2146410443, i32 1073205}
!47 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!48 = !{i8 0, i8 7}
!49 = !{i8 0, i8 111}
!50 = !{i8 -1, i8 3}
!51 = !{i8 0, i8 4}
!52 = !{!6}
!53 = !{!7}
!54 = !{!"llvm.loop.peeled.count", i32 1}
!55 = !{i8 0, i8 19}
!56 = !{i64 2}
!57 = !{i64 0, i64 7}
!58 = !{i16 0, i16 3}
!59 = !{i8 1, i8 15}
!60 = !{i64 -2, i64 3}
!61 = !{i64 0, i64 -9223372036854775801}
!62 = !{i64 -1, i64 -9223372036854775804}
!63 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_, null, null}
!64 = distinct !{!64, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_"}
!65 = distinct !{!65, !64, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_: argument 0"}
!66 = distinct !{!66, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_"}
!67 = distinct !{!67, !66, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_: argument 0"}
!68 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_, null, null, null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_, null}
!69 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_, null, null, null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_}
!70 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_, null, null}
!71 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_, null}
!72 = distinct !{null}
!73 = !{!65}
!74 = !{!67}
!75 = !{!67, !65}
!76 = distinct !{!76, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_"}
!77 = distinct !{!77, !76, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_: argument 0"}
!78 = distinct !{!78, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_"}
!79 = distinct !{!79, !78, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_: argument 0"}
!80 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_, null}
!81 = distinct !{null}
!82 = !{!77}
!83 = !{!79}
!84 = !{!79, !77}
!85 = distinct !{!85, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_"}
!86 = distinct !{!86, !85, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_: argument 0"}
!87 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_, null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_}
!88 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_, null}
!89 = distinct !{null}
!90 = !{!86}
!91 = distinct !{null, null}
!92 = distinct !{null}
!93 = distinct !{!93, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_"}
!94 = distinct !{!94, !93, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_: argument 0"}
!95 = distinct !{!95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEEB1f_"}
!96 = distinct !{!96, !95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEEB1f_: argument 0"}
!97 = !{!94}
!98 = !{!96}
!99 = !{!96, !94}
!100 = distinct !{!100, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_"}
!101 = distinct !{!101, !100, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_: argument 0"}
!102 = !{!101}
!103 = !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_}
!104 = distinct !{!104, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_"}
!105 = distinct !{!105, !104, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_: argument 0"}
!106 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_, null, null}
!107 = distinct !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_, null}
!108 = !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_}
!109 = !{!105}
!110 = !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_}
!111 = distinct !{!111, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_"}
!112 = distinct !{!112, !111, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_: argument 0"}
!113 = distinct !{null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_, null}
end_hunk_1
