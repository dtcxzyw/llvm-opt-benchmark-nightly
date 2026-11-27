Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_common-b7c4b49eefc7af9d.fish_common.44f050c8d4e88757-cgu.1?download=true
inline.NumInlined: 165
inline.NumDeleted: 99
begin_hunk_0_@_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withReECs5UXtnEuoeIl_11fish_common:bb.a
  %.not.i.i = icmp eq ptr %.sroa.06.0.i, %i.a     ; 2 uses
  br i1 %.not.i.i, label %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs5UXtnEuoeIl_11fish_common.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 1 ; 3 uses
  %i.d = load i8, ptr %.sroa.06.0.i, align 1, !noalias !138, !noundef !4 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i: ; preds = %bb.c
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !138, !noundef !4
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i
  %i.q = icmp ne ptr %i.i, %i.a
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !138, !noundef !4
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i, label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i
  %i.aa = icmp ne ptr %i.r, %i.a
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !138, !noundef !4
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i, %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i
  %.sroa.06.1.ph.i = phi ptr [ %i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i ], [ %i.c, %bb.d ]
  %spec.select.i.ph.i = phi i32 [ %i.n, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i ], [ %i.p, %bb.d ]
  %i.ak = icmp eq ptr %.sroa.0.0.i, %i.b
  br i1 %i.ak, label %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs5UXtnEuoeIl_11fish_common.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.am = load i32, ptr %.sroa.0.0.i, align 4, !range !11, !noalias !139, !noundef !4
  %i.an = icmp eq i32 %spec.select.i.ph.i, %i.am
  br i1 %i.an, label %bb.b, label %_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs5UXtnEuoeIl_11fish_common.exit

_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.b, %bb.e, %bb.f
  ret i1 %.not.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs5UXtnEuoeIl_11fish_common(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtBe_3str4iter5CharscuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B6_2eqB2Y_E0E0E0E0Cs5UXtnEuoeIl_11fish_common.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtBe_3str4iter5CharscuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B6_2eqB2Y_E0E0E0E0Cs5UXtnEuoeIl_11fish_common.exit.i.i.i.i.i: ; preds = %bb.f, %bb.a
  %.sroa.05.0.i.i.i = phi ptr [ %2, %bb.a ], [ %.sroa.05.1.i.i.i, %bb.f ] ; 11 uses
  %i.b = phi ptr [ %0, %bb.a ], [ %i.d, %bb.f ]   ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvBZ_12iter_compare7compareNtNtNtB15_3str4iter5CharscuNCINvNvBX_5eq_by7compareccNCINvYB3_BX_2eqB2C_E0E0E0INtNtNtB15_3ops12control_flow11ControlFlowIB3T_uNtNtB15_3cmp8OrderingEEECs5UXtnEuoeIl_11fish_common.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtBe_3str4iter5CharscuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B6_2eqB2Y_E0E0E0E0Cs5UXtnEuoeIl_11fish_common.exit.i.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.b, align 4, !noalias !156, !noundef !4 ; 4 uses
  %i.f = xor i32 %i.e, 55296
  %i.g = add i32 %i.f, -1114112
  %i.h = icmp ult i32 %i.g, -1112064
  br i1 %i.h, label %.split.i.i.i.i.i.i, label %bb.c

.split.i.i.i.i.i.i:                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !156
  store i32 %i.e, ptr %i.a, align 4, !noalias !156
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23, !noalias !156
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.e, 1114112
  tail call void @llvm.assume(i1 %i.i)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 1 ; 3 uses
  %i.k = load i8, ptr %.sroa.05.0.i.i.i, align 1, !noalias !157, !noundef !4 ; 5 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.e, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = and i8 %i.k, 31
  %i.n = zext nneg i8 %i.m to i32                 ; 3 uses
  %i.o = icmp ne ptr %i.j, %3
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.j, align 1, !noalias !157, !noundef !4
  %i.r = shl nuw nsw i32 %i.n, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.k, -33
  br i1 %i.v, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = zext nneg i8 %i.k to i32
  br label %bb.f

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i.i.i.i.i
  %i.x = icmp ne ptr %i.p, %3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 3 ; 3 uses
  %i.z = load i8, ptr %i.p, align 1, !noalias !157, !noundef !4
  %i.aa = shl nuw nsw i32 %i.t, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = shl nuw nsw i32 %i.n, 12
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = icmp samesign ugt i8 %i.k, -17
  br i1 %i.ag, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i.i.i.i.i, label %bb.f

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i.i.i.i.i
  %i.ah = icmp ne ptr %i.y, %3
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 4
  %i.aj = load i8, ptr %i.y, align 1, !noalias !157, !noundef !4
  %i.ak = shl nuw nsw i32 %i.n, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ad, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i.i.i.i.i
  %.sroa.05.1.i.i.i = phi ptr [ %i.j, %bb.e ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i.i.i.i.i ], [ %i.p, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i.i.i.i.i ]
  %spec.select.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.e ], [ %i.aq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.e, %spec.select.i.ph.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtBe_3str4iter5CharscuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B6_2eqB2Y_E0E0E0E0Cs5UXtnEuoeIl_11fish_common.exit.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvBZ_12iter_compare7compareNtNtNtB15_3str4iter5CharscuNCINvNvBX_5eq_by7compareccNCINvYB3_BX_2eqB2C_E0E0E0INtNtNtB15_3ops12control_flow11ControlFlowIB3T_uNtNtB15_3cmp8OrderingEEECs5UXtnEuoeIl_11fish_common.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtBe_3str4iter5CharscuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B6_2eqB2Y_E0E0E0E0Cs5UXtnEuoeIl_11fish_common.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %.not.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %.not.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit, label %bb.g

bb.g:                                             ; preds = %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvBZ_12iter_compare7compareNtNtNtB15_3str4iter5CharscuNCINvNvBX_5eq_by7compareccNCINvYB3_BX_2eqB2C_E0E0E0INtNtNtB15_3ops12control_flow11ControlFlowIB3T_uNtNtB15_3cmp8OrderingEEECs5UXtnEuoeIl_11fish_common.exit.i.i.i
  %i.ar = load i8, ptr %.sroa.05.0.i.i.i, align 1, !noalias !158, !noundef !4 ; 3 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 1
  %i.au = icmp ne ptr %i.at, %3
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp samesign ugt i8 %i.ar, -33
  br i1 %i.av, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 2
  %i.ax = icmp ne ptr %i.aw, %3
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i8 %i.ar, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 3
  %i.ba = icmp ne ptr %i.az, %3
  tail call void @llvm.assume(i1 %i.ba)
  br label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit

_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1Z_E0E0ECs5UXtnEuoeIl_11fish_common.exit: ; preds = %bb.c, %bb.f, %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvBZ_12iter_compare7compareNtNtNtB15_3str4iter5CharscuNCINvNvBX_5eq_by7compareccNCINvYB3_BX_2eqB2C_E0E0E0INtNtNtB15_3ops12control_flow11ControlFlowIB3T_uNtNtB15_3cmp8OrderingEEECs5UXtnEuoeIl_11fish_common.exit.i.i.i, %bb.g, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i
  %i.bb = phi i1 [ true, %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvBZ_12iter_compare7compareNtNtNtB15_3str4iter5CharscuNCINvNvBX_5eq_by7compareccNCINvYB3_BX_2eqB2C_E0E0E0INtNtNtB15_3ops12control_flow11ControlFlowIB3T_uNtNtB15_3cmp8OrderingEEECs5UXtnEuoeIl_11fish_common.exit.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit14.i.i.i.i.i ], [ false, %bb.g ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit12.i.i.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5UXtnEuoeIl_11fish_common.exit16.i.i.i.i.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %i.bb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtCs5UXtnEuoeIl_11fish_common11EscapeFlagsE3newBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i32, ptr %1, align 4, !noundef !4 ; 2 uses
  store ptr @12, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val1, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val1, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtCs5UXtnEuoeIl_11fish_common13UnescapeFlagsE3newBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i32, ptr %1, align 4, !noundef !4 ; 2 uses
  store ptr @16, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val1, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val1, ptr %2, align 4
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !161
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !161
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !161, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !161, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !161, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !161
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !161
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5UXtnEuoeIl_11fish_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 9) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5UXtnEuoeIl_11fish_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_0
