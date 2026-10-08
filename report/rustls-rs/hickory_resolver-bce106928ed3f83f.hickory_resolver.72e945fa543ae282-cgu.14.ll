Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.14?download=true
inline.NumInlined: 331
inline.NumDeleted: 164
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [22 x i8] c"\13unrecognized char: \C0\00", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata1a1ANtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4aaaa4AAAANtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_NtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBz_10EdnsOptionENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtBz_13SvcParamValueENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@11 = private unnamed_addr constant [17 x i8] c"\0Eillegal char: \C0\00", align 1
@12 = private unnamed_addr constant [30 x i8] c"\1BError parsing resolv.conf: \C0\00", align 1
@13 = private unnamed_addr constant [16 x i8] c"/etc/resolv.conf", align 1
@14 = private unnamed_addr constant [30 x i8] c"no nameservers found in config", align 1
@_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@15 = private unnamed_addr constant [12 x i8] c"Poisoned(..)", align 1
@16 = private unnamed_addr constant [10 x i8] c"WouldBlock", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@18 = private unnamed_addr constant [4 x i8] c"NULL", align 1
@19 = private unnamed_addr constant [8 x i8] c"anything", align 1
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv6AddrNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver }>, align 8
@21 = private unnamed_addr constant [4 x i8] c"AAAA", align 1
@22 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !42, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !42, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !42, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !42, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !43, !noundef !4
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !43, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i, label %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.e, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !44, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !44, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !44, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !44, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !45, !noundef !4
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !45, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RFwvXNxPyg_16hickory_resolver.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RFwvXNxPyg_16hickory_resolver.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3_4Name10from_asciiReECs9RFwvXNxPyg_16hickory_resolver(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4147.i = alloca [31 x i8], align 1       ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.496.i = alloca [31 x i8], align 1        ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.441.i = alloca [31 x i8], align 1        ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [4 x i8], align 4                 ; 23 uses
  %i.t = alloca [24 x i8], align 8                ; 23 uses
  %i.u = alloca [80 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !68
  call void @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !68
  store i64 0, ptr %i.t, align 8, !noalias !68
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4173.0..sroa_idx.i, align 8, !noalias !68
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !68
  switch i64 %2, label %..lr.ph.i_crit_edge [
    i64 1, label %bb.b
    i64 0, label %.thread80.i
  ]

..lr.ph.i_crit_edge:                              ; preds = %bb.a
  %.pre = load i8, ptr %1, align 1, !alias.scope !67, !noalias !69
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %lhsc.i = load i8, ptr %1, align 1, !alias.scope !67, !noalias !66 ; 2 uses
  %i.v = icmp eq i8 %lhsc.i, 46
  br i1 %i.v, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %bb.b
  %i.w = phi i8 [ %.pre, %..lr.ph.i_crit_edge ], [ %lhsc.i, %bb.b ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.5189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.aa = icmp sgt i8 %i.w, -1
  br i1 %i.aa, label %bb.h, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i8 1, ptr %i.ab, align 8, !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !67
  br label %bb.w

bb.d:                                             ; preds = %bb.aq
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph.jt2.i, i64 1 ; 3 uses
  %i.ad = load i8, ptr %.sroa.0.1.ph.jt2.i, align 1, !alias.scope !67, !noalias !69, !noundef !4 ; 5 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt3.i

bb.e:                                             ; preds = %bb.ar
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph74.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %.sroa.0.1.ph74.i, align 1, !alias.scope !67, !noalias !69, !noundef !4 ; 5 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.j, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt1.i

bb.f:                                             ; preds = %bb.as
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph.jt1.i, i64 1 ; 3 uses
  %i.aj = load i8, ptr %.sroa.0.1.ph.jt1.i, align 1, !alias.scope !67, !noalias !69, !noundef !4 ; 5 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.k, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt2.i

bb.g:                                             ; preds = %bb.at
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph75.i, i64 1 ; 3 uses
  %i.am = load i8, ptr %.sroa.0.1.ph75.i, align 1, !alias.scope !67, !noalias !69, !noundef !4 ; 5 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt0.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i: ; preds = %.lr.ph.i
  %i.ao = and i8 %i.w, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = icmp samesign ne i64 %2, 1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.as = load i8, ptr %i.z, align 1, !alias.scope !67, !noalias !69, !noundef !4
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.w, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i, label %.preheader

.preheader:                                       ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i, %bb.h, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i
  %.sroa.4.0.i.ph.jt0.i.sink.ph = phi i32 [ %i.ey, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i ], [ %i.cz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i ], [ %i.aw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i ], [ %i.cm, %bb.h ]
  %.sroa.0.1.ph74.i.ph = phi ptr [ %i.eq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit16.i.i ], [ %i.cs, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.i ], [ %i.ar, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.i ], [ %i.z, %bb.h ]
  br label %bb.ad

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt3.i: ; preds = %bb.d
  %i.ay = and i8 %i.ad, 31
  %i.az = zext nneg i8 %i.ay to i32               ; 3 uses
  %i.ba = icmp ne ptr %i.ac, %i.x
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph.jt2.i, i64 2 ; 3 uses
  %i.bc = load i8, ptr %i.ac, align 1, !alias.scope !67, !noalias !69, !noundef !4
  %i.bd = shl nuw nsw i32 %i.az, 6
  %i.be = and i8 %i.bc, 63
  %i.bf = zext nneg i8 %i.be to i32               ; 2 uses
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.bh, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.jt3.i, label %bb.ag

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt1.i: ; preds = %bb.e
  %i.bi = and i8 %i.ag, 31
  %i.bj = zext nneg i8 %i.bi to i32               ; 3 uses
  %i.bk = icmp ne ptr %i.af, %i.x
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph74.i, i64 2 ; 3 uses
  %i.bm = load i8, ptr %i.af, align 1, !alias.scope !67, !noalias !69, !noundef !4
  %i.bn = shl nuw nsw i32 %i.bj, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32               ; 2 uses
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = icmp samesign ugt i8 %i.ag, -33
  br i1 %i.br, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.jt1.i, label %bb.ae

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt2.i: ; preds = %bb.f
  %i.bs = and i8 %i.aj, 31
  %i.bt = zext nneg i8 %i.bs to i32               ; 3 uses
  %i.bu = icmp ne ptr %i.ai, %i.x
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph.jt1.i, i64 2 ; 3 uses
  %i.bw = load i8, ptr %i.ai, align 1, !alias.scope !67, !noalias !69, !noundef !4
  %i.bx = shl nuw nsw i32 %i.bt, 6
  %i.by = and i8 %i.bw, 63
  %i.bz = zext nneg i8 %i.by to i32               ; 2 uses
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp samesign ugt i8 %i.aj, -33
  br i1 %i.cb, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.jt2.i, label %bb.af

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit12.i.jt0.i: ; preds = %bb.g
  %i.cc = and i8 %i.am, 31
  %i.cd = zext nneg i8 %i.cc to i32               ; 3 uses
  %i.ce = icmp ne ptr %i.al, %i.x
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph75.i, i64 2 ; 3 uses
  %i.cg = load i8, ptr %i.al, align 1, !alias.scope !67, !noalias !69, !noundef !4
  %i.ch = shl nuw nsw i32 %i.cd, 6
  %i.ci = and i8 %i.cg, 63
  %i.cj = zext nneg i8 %i.ci to i32               ; 2 uses
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = icmp samesign ugt i8 %i.am, -33
  br i1 %i.cl, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver.exit14.i.jt0.i, label %.backedge

bb.h:                                             ; preds = %.lr.ph.i
  %i.cm = zext nneg i8 %i.w to i32
  br label %.preheader

bb.i:                                             ; preds = %bb.d
  %i.cn = zext nneg i8 %i.ad to i32
  br label %bb.ag

bb.j:                                             ; preds = %bb.e
  %i.co = zext nneg i8 %i.ag to i32
  br label %bb.ae

bb.k:                                             ; preds = %bb.f
  %i.cp = zext nneg i8 %i.aj to i32
  br label %bb.af

bb.l:                                             ; preds = %bb.g
  %i.cq = zext nneg i8 %i.am to i32
  br label %.backedge

end_hunk_0
