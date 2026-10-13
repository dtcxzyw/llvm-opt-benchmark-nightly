Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.04?download=true
inline.NumInlined: 577
inline.NumDeleted: 192
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing15print_expr_call:bb.a

.split:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 48
  %.val4 = load i8, ptr %i.i, align 8, !range !9, !noundef !6
  %.not = icmp eq i8 %.val4, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %.not, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i8, i1 } %i.e, 0
  %i.k = icmp ult i8 %i.j, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split, %bb.b
  %i.l = extractvalue { i8, i1 } %i.e, 1
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.l), !noalias !1095, !inline_history !0
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

bb.d:                                             ; preds = %.split, %bb.b
  store i8 0, ptr %i.b, align 1, !noalias !1096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1096
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a), !noalias !1097, !inline_history !25
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1096
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing15print_expr_call0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing15print_expr_cast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp ult i64 %i.f, 37191016277640226
  tail call void @llvm.assume(i1 %i.g)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1109, !nonnull !6, !noundef !6 ; 3 uses
  %i.j = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext36leftmost_subexpression_with_operator(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.i, i1 noundef zeroext false), !noalias !1109, !inline_history !1101 ; 2 uses
  %i.k = extractvalue { i8, i1 } %i.j, 0
  %i.l = icmp ult i8 %i.k, 13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i8, i1 } %i.j, 1
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.m), !noalias !1110, !inline_history !1104
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !noalias !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1111
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a), !noalias !1112, !inline_history !1108
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !noalias !1113, !inline_history !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1111
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_RNvXsD_NtCsgbWeKYPjk8w_3syn5tokenNtB5_2AsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1113, !inline_history !1101
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1113, !nonnull !6, !noundef !6
  call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1113, !inline_history !1101
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c)
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing15print_expr_cast0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing16print_expr_field(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.e = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext31leftmost_subexpression_with_dot(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d) ; 2 uses
  %i.f = extractvalue { i8, i1 } %i.e, 0
  %i.g = icmp ult i8 %i.f, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i8, i1 } %i.e, 1
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.h), !noalias !1119, !inline_history !0
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !noalias !1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1120
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a), !noalias !1121, !inline_history !25
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1120
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_RNvXs79_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3DotNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_6MemberNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing16print_expr_index(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.e = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext36leftmost_subexpression_with_operator(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, i1 noundef zeroext false) ; 2 uses
  %i.f = extractvalue { i8, i1 } %i.e, 0
  %i.g = icmp ult i8 %i.f, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i8, i1 } %i.e, 1
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.h), !noalias !1127, !inline_history !0
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1128
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a), !noalias !1129, !inline_history !25
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1128
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_RINvMscz_NtCsgbWeKYPjk8w_3syn5tokenNtB7_7Bracket8surroundNCNvNtNtB9_4expr8printing16print_expr_index0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing16print_expr_unary(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn2op8printingNtB6_4UnOpNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext23rightmost_subexpression(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e) ; 2 uses
  %i.g = extractvalue { i8, i1 } %i.f, 0
  %i.h = icmp ult i8 %i.g, 14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i8, i1 } %i.f, 1
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.i), !noalias !1135, !inline_history !0
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !noalias !1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1136
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a), !noalias !1137, !inline_history !25
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1136
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.i = icmp ult i64 %i.h, 37191016277640226
  tail call void @llvm.assume(i1 %i.i)
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val.i = load i32, ptr %i.j, align 8, !range !1154, !noalias !1155, !noundef !6 ; 2 uses
  switch i32 %.val.i, label %default.unreachable [
    i32 0, label %.split
    i32 1, label %.split
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.i
    i32 12, label %bb.j
    i32 13, label %bb.j
    i32 14, label %bb.j
    i32 15, label %bb.j
    i32 16, label %bb.j
    i32 17, label %bb.j
    i32 18, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 19, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 20, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 21, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 22, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 23, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 24, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 25, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 26, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
    i32 27, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %.split

bb.d:                                             ; preds = %bb.b
  br label %.split

bb.e:                                             ; preds = %bb.b
  br label %.split

bb.f:                                             ; preds = %bb.b
  br label %.split

bb.g:                                             ; preds = %bb.b
  br label %.split

bb.h:                                             ; preds = %bb.b
  br label %.split

bb.i:                                             ; preds = %bb.b, %bb.b
  br label %.split

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %.split

.split:                                           ; preds = %bb.b, %bb.b, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.j
  %.sink43 = phi i32 [ 13, %bb.j ], [ 10, %bb.c ], [ 10, %bb.d ], [ 10, %bb.e ], [ 10, %bb.f ], [ 10, %bb.g ], [ 10, %bb.h ], [ 10, %bb.i ], [ 10, %bb.b ], [ 10, %bb.b ]
  %.sroa.0.0.i.ph.sink = phi i8 [ 7, %bb.j ], [ 12, %bb.c ], [ 4, %bb.d ], [ 3, %bb.e ], [ 8, %bb.f ], [ 9, %bb.g ], [ 7, %bb.h ], [ 10, %bb.i ], [ 11, %bb.b ], [ 11, %bb.b ]
  %.sroa.0.0.i24.ph = phi i8 [ 6, %bb.j ], [ 12, %bb.c ], [ 4, %bb.d ], [ 3, %bb.e ], [ 8, %bb.f ], [ 9, %bb.g ], [ 7, %bb.h ], [ 10, %bb.i ], [ 11, %bb.b ], [ 11, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1155, !nonnull !6, !noundef !6 ; 3 uses
  %switch.selectcmp.case1.i20 = icmp eq i32 %.val.i, %.sink43
  %i.m = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext36leftmost_subexpression_with_operator(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.l, i1 noundef zeroext %switch.selectcmp.case1.i20), !noalias !1155 ; 2 uses
  %i.n = extractvalue { i8, i1 } %i.m, 0
  %i.o = icmp ult i8 %i.n, %.sroa.0.0.i.ph.sink
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1155, !nonnull !6, !noundef !6
  %i.r = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.q), !noalias !1155, !inline_history !1141
  %i.s = icmp samesign ule i8 %i.r, %.sroa.0.0.i24.ph ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.o, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2, label %.split41

_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1155, !nonnull !6, !noundef !6 ; 3 uses
  %i.v = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext36leftmost_subexpression_with_operator(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.u, i1 noundef zeroext false), !noalias !1155, !inline_history !1141 ; 2 uses
  %i.w = extractvalue { i8, i1 } %i.v, 0
  %i.x = icmp ult i8 %i.w, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.x, label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2, label %.split41

.split41:                                         ; preds = %.split, %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit
  %.pn = phi { i8, i1 } [ %i.m, %.split ], [ %i.v, %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit ]
  %.sroa.02.0.i39 = phi i1 [ %i.s, %.split ], [ false, %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit ]
  %i.y = phi ptr [ %i.l, %.split ], [ %i.u, %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit ]
  %i.z = extractvalue { i8, i1 } %.pn, 1
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.z), !noalias !1156, !inline_history !1144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn2op8printingNtB4_5BinOpNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1157, !inline_history !1141
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1157, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %.sroa.02.0.i39, label %bb.l, label %bb.k

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2: ; preds = %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit, %.split
  %.sroa.02.0.i40 = phi i1 [ %i.s, %.split ], [ false, %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit ]
  %i.ac = phi ptr [ %i.l, %.split ], [ %i.u, %_RNCNvNtNtCsgbWeKYPjk8w_3syn4expr8printing17print_expr_binary0B7_.exit ]
  store i8 0, ptr %i.b, align 1, !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1158
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a), !noalias !1159, !inline_history !1148
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b), !noalias !1157, !inline_history !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsgbWeKYPjk8w_3syn2op8printingNtB4_5BinOpNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1157, !inline_history !1141
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1157, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %.sroa.02.0.i40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split41, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2
  %i.af = phi ptr [ %i.ab, %.split41 ], [ %i.ae, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2 ]
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2), !noalias !1160, !inline_history !1144
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

bb.l:                                             ; preds = %.split41, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2
  %i.ag = phi ptr [ %i.ab, %.split41 ], [ %i.ae, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit2 ]
  store i8 0, ptr %i.d, align 1, !noalias !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1161
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c), !noalias !1162, !inline_history !1148
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !noalias !1157, !inline_history !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1161
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit

_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.e)
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing17print_expr_binary0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing19print_subexpression(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, i1 noundef zeroext %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing10print_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3), !noalias !1166, !inline_history !1165
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXscB_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ParenNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a)
  call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvNtNtB9_4expr8printing19print_subexpression0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing20print_expr_reference(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs6z_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3AndNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !range !16, !noundef !6
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_RNvXs3N_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3MutNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.j = tail call { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext23rightmost_subexpression(i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.i) ; 2 uses
  %i.k = extractvalue { i8, i1 } %i.j, 0
  %i.l = icmp ult i8 %i.k, 14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.l, label %bb.e, label %bb.d
end_hunk_0
