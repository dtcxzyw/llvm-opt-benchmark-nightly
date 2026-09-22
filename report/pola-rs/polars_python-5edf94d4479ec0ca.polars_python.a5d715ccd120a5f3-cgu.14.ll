Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.14?download=true
inline.NumInlined: 20908
inline.NumDeleted: 8232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvCsgjwxzEoLG5s_12polars_error14to_compute_errNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorECseeLknQCOKOd_13polars_python:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6785
  store i64 2, ptr %0, align 8, !dbg !6783
  ret void, !dbg !6786
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvMNtCscgRAwXFJnXP_4core3stre4findReECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, 16) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6787 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6974
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, 16) %3), !dbg !6975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6932), !dbg !6976
  %i.b = load i64, ptr %i.a, align 8, !dbg !6977, !range !4857, !alias.scope !6932, !noalias !6933, !noundef !4821
  %i.c = trunc nuw i64 %i.b to i1, !dbg !6978
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.c, label %bb.k, label %.preheader.i, !dbg !6978

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.f = load i8, ptr %i.e, align 2, !range !4858, !alias.scope !6935, !noalias !6936, !noundef !4821
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i, !dbg !6979

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !6932, !noalias !6933 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !6935, !noalias !6936, !nonnull !4821, !noundef !4821 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6935, !noalias !6936, !noundef !4821 ; 16 uses
  %.promoted26.i = load i8, ptr %i.h, align 8, !alias.scope !6935, !noalias !6936 ; 2 uses
  %i.m = trunc nuw i8 %.promoted26.i to i1, !dbg !6980
  %i.n = icmp eq i64 %.promoted.i, 0, !dbg !6981
  br i1 %i.n, label %bb.d, label %bb.b, !dbg !6981

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.l, !dbg !6982
  br i1 %.not.i.i.i.peel, label %bb.c, label %.split.i.i.i.peel, !dbg !6982

.split.i.i.i.peel:                                ; preds = %bb.b
  %i.o = icmp eq i64 %.promoted.i, %i.l, !dbg !6983
  br i1 %i.o, label %bb.d, label %.loopexit, !dbg !6984

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i, !dbg !6985
  %i.q = load i8, ptr %i.p, align 1, !dbg !6985, !alias.scope !6937, !noalias !6938, !noundef !4821
  %i.r = icmp sgt i8 %i.q, -65, !dbg !6986
  br i1 %i.r, label %bb.d, label %.loopexit, !dbg !6984

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i, !dbg !6987 ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i, %i.l, !dbg !6988
  br i1 %i.t, label %.loopexit133, label %bb.e, !dbg !6989

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.s, align 1, !dbg !6990, !noalias !6944, !noundef !4821 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1, !dbg !6991
  br i1 %i.v, label %bb.f, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i.peel, !dbg !6991

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i.peel: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !6992
  %i.x = and i8 %i.u, 31, !dbg !6993
  %i.y = zext nneg i8 %i.x to i32, !dbg !6993     ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i, 1, !dbg !6994
  %i.aa = icmp samesign ne i64 %i.z, %i.l, !dbg !6994
  tail call void @llvm.assume(i1 %i.aa), !dbg !6995
  %i.ab = load i8, ptr %i.w, align 1, !dbg !6996, !noalias !6944, !noundef !4821
  %i.ac = shl nuw nsw i32 %i.y, 6, !dbg !6997
  %i.ad = and i8 %i.ab, 63, !dbg !6998
  %i.ae = zext nneg i8 %i.ad to i32, !dbg !6998   ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae, !dbg !6997
  %i.ag = icmp samesign ugt i8 %i.u, -33, !dbg !6999
  br i1 %i.ag, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i.peel, label %bb.g, !dbg !6999

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i.peel
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2, !dbg !7000
  %i.ai = add nuw nsw i64 %.promoted.i, 2, !dbg !7001
  %i.aj = icmp samesign ne i64 %i.ai, %i.l, !dbg !7001
  tail call void @llvm.assume(i1 %i.aj), !dbg !7002
  %i.ak = load i8, ptr %i.ah, align 1, !dbg !7003, !noalias !6944, !noundef !4821
  %i.al = shl nuw nsw i32 %i.ae, 6, !dbg !7004
  %i.am = and i8 %i.ak, 63, !dbg !7005
  %i.an = zext nneg i8 %i.am to i32, !dbg !7005
  %i.ao = or disjoint i32 %i.al, %i.an, !dbg !7004 ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12, !dbg !7006
  %i.aq = or disjoint i32 %i.ao, %i.ap, !dbg !7007
  %i.ar = icmp samesign ugt i8 %i.u, -17, !dbg !7008
  br i1 %i.ar, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit16.i.i.i.peel, label %bb.g, !dbg !7008

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3, !dbg !7009
  %i.at = add nuw nsw i64 %.promoted.i, 3, !dbg !7010
  %i.au = icmp samesign ne i64 %i.at, %i.l, !dbg !7010
  tail call void @llvm.assume(i1 %i.au), !dbg !7011
  %i.av = load i8, ptr %i.as, align 1, !dbg !7012, !noalias !6944, !noundef !4821
  %i.aw = shl nuw nsw i32 %i.y, 18, !dbg !7013
  %i.ax = and i32 %i.aw, 1835008, !dbg !7013
  %i.ay = shl nuw nsw i32 %i.ao, 6, !dbg !7014
  %i.az = and i8 %i.av, 63, !dbg !7015
  %i.ba = zext nneg i8 %i.az to i32, !dbg !7015
  %i.bb = or disjoint i32 %i.ay, %i.ba, !dbg !7014
  %i.bc = or disjoint i32 %i.bb, %i.ax, !dbg !7016
  br label %bb.g, !dbg !7017

bb.f:                                             ; preds = %bb.e
  %i.bd = zext nneg i8 %i.u to i32, !dbg !7018
  br label %bb.g, !dbg !7019

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.aq, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i.peel ], [ %i.bc, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit16.i.i.i.peel ], [ %i.af, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i.peel ], [ %i.bd, %bb.f ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112, !dbg !7020
  tail call void @llvm.assume(i1 %i.be), !dbg !7020
  br i1 %i.m, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.h, !dbg !7021

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128, !dbg !7022
  br i1 %i.bf, label %bb.l, label %bb.i, !dbg !7022

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048, !dbg !7023
  br i1 %i.bg, label %bb.l, label %bb.j, !dbg !7023

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536, !dbg !7024
  %..i.i.peel = select i1 %i.bh, i64 3, i64 4, !dbg !7025
  br label %bb.l, !dbg !7025

bb.k:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !7026
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !7026, !alias.scope !6932, !noalias !6933, !noundef !4821 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1, !dbg !7027
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !6950
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !6950, !alias.scope !6932, !noalias !6933, !nonnull !4821, !noundef !4821 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !6950
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !6950, !alias.scope !6932, !noalias !6933, !noundef !4821 ; 14 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !6950
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !6950, !alias.scope !6932, !noalias !6933, !nonnull !4821, !noundef !4821 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !6950
  %i.bs = load i64, ptr %i.br, align 8, !dbg !6950, !alias.scope !6932, !noalias !6933, !noundef !4821 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !7028 ; 2 uses
  %i.bu = add nsw i64 %i.bs, -1, !dbg !7029       ; 4 uses
  br i1 %i.bk, label %bb.q, label %bb.ac, !dbg !7027

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.i ], [ %..i.i.peel, %bb.j ], [ 1, %bb.h ], !dbg !7025
  %i.bv = add i64 %.sroa.01.0.i.i.peel, %.promoted.i, !dbg !7030 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6951), !dbg !7031
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !6981
  br i1 %i.bw, label %bb.o, label %bb.m, !dbg !6981

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp ult i64 %i.bv, %i.l, !dbg !6982
  br i1 %.not.i.i.i, label %bb.n, label %.split.i.i.i, !dbg !6982

.split.i.i.i:                                     ; preds = %bb.m
  %i.bx = icmp eq i64 %i.bv, %i.l, !dbg !6983
  br i1 %i.bx, label %bb.o, label %.loopexit, !dbg !6984

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bv, !dbg !6985
  %i.bz = load i8, ptr %i.by, align 1, !dbg !6985, !alias.scope !6937, !noalias !6952, !noundef !4821
  %i.ca = icmp sgt i8 %i.bz, -65, !dbg !6986
  br i1 %i.ca, label %bb.o, label %.loopexit, !dbg !6984

bb.o:                                             ; preds = %bb.n, %.split.i.i.i, %bb.l
  %i.cb = icmp samesign eq i64 %i.bv, %i.l, !dbg !6988
  br i1 %i.cb, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p, !dbg !6989

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bv, !dbg !6987
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !6990, !noalias !6953, !noundef !4821 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1, !dbg !6991
  br i1 %i.ce, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i, !dbg !6991

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i: ; preds = %bb.p
  %i.cf = add nuw nsw i64 %i.bv, 1, !dbg !6994
  %i.cg = icmp samesign ne i64 %i.cf, %i.l, !dbg !6994
  tail call void @llvm.assume(i1 %i.cg), !dbg !6995
  %i.ch = icmp samesign ugt i8 %i.cd, -33, !dbg !6999
  br i1 %i.ch, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6999

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit12.i.i.i
  %i.ci = add nuw nsw i64 %i.bv, 2, !dbg !7001
  %i.cj = icmp samesign ne i64 %i.ci, %i.l, !dbg !7001
  tail call void @llvm.assume(i1 %i.cj), !dbg !7002
  %i.ck = icmp samesign ugt i8 %i.cd, -17, !dbg !7008
  br i1 %i.ck, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit16.i.i.i, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7008

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit14.i.i.i
  %i.cl = add nuw nsw i64 %i.bv, 3, !dbg !7010
  %i.cm = icmp samesign ne i64 %i.cl, %i.l, !dbg !7010
  tail call void @llvm.assume(i1 %i.cm), !dbg !7011
  br label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7017

.loopexit:                                        ; preds = %bb.n, %.split.i.i.i, %bb.c, %.split.i.i.i.peel
  %.lcssa129 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.c ], [ %i.bv, %.split.i.i.i ], [ %i.bv, %bb.n ]
  tail call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %.lcssa129, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1659) #54, !dbg !7032, !noalias !6952
  unreachable, !dbg !7032

.loopexit133:                                     ; preds = %bb.d
  %spec.select189 = zext nneg i8 %.promoted26.i to i64, !dbg !7021
  br label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7021

bb.q:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6954), !dbg !7033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6955), !dbg !7033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6956), !dbg !7033
  %.promoted.i5 = load i64, ptr %i.bt, align 8, !alias.scope !6954, !noalias !6957 ; 2 uses
  %i.cn = add i64 %.promoted.i5, %i.bu, !dbg !7034 ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.bo, !dbg !7035
  br i1 %i.co, label %.lr.ph.i8, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7035

.lr.ph.i8:                                        ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !6954, !noalias !6957, !noundef !4821
  %i.cr = load i64, ptr %i.d, align 8, !alias.scope !6954, !noalias !6957 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !6954, !noalias !6957
  %umax49.i11 = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 range(i64 0, -9223372036854775808) %i.bs)
  %i.cu = add i64 %i.cr, -1, !dbg !7035
  %.first_iter = icmp ult i64 %i.cu, %i.bs
  %exitcond.not.i13225.not = icmp ult i64 %i.cr, %i.bs
  %invariant.op298 = sub i64 1, %i.cr, !dbg !7035
  %.not228 = icmp eq i64 %i.cr, 0
  br label %bb.r, !dbg !7035

bb.r:                                             ; preds = %bb.t, %.lr.ph.i8
  %i.cv = phi i64 [ %.promoted.i5, %.lr.ph.i8 ], [ %i.df, %bb.t ] ; 9 uses
  %i.cw = phi i64 [ %i.cn, %.lr.ph.i8 ], [ %i.dg, %bb.t ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cw, !dbg !7036
  %i.cy = load i8, ptr %i.cx, align 1, !dbg !7037, !alias.scope !6955, !noalias !6958, !noundef !4821
  %i.cz = and i8 %i.cy, 63, !dbg !7038
  %i.da = zext nneg i8 %i.cz to i64, !dbg !7039
  %i.db = shl nuw i64 1, %i.da, !dbg !7040
  %i.dc = and i64 %i.db, %i.cq, !dbg !7040
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !7040
  br i1 %i.dd, label %bb.s, label %.preheader77.preheader, !dbg !7040

.preheader77.preheader:                           ; preds = %bb.r
  br i1 %exitcond.not.i13225.not, label %.lr.ph227, label %.preheader.preheader, !dbg !7041

bb.s:                                             ; preds = %bb.r
  %i.de = add i64 %i.cv, %i.bs, !dbg !7042
  br label %bb.t, !dbg !7043

bb.t:                                             ; preds = %bb.ab, %bb.y, %bb.s
  %i.df = phi i64 [ %i.dy, %bb.ab ], [ %i.de, %bb.s ], [ %i.ds, %bb.y ] ; 2 uses
  %i.dg = add i64 %i.df, %i.bu, !dbg !7034        ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.bo, !dbg !7035
  br i1 %i.dh, label %bb.r, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7035

.preheader77:                                     ; preds = %bb.z
  %i.di = add i64 %.sroa.02.0.i12226, 1, !dbg !7044 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.di, %umax49.i11, !dbg !7045
  br i1 %exitcond.not.i13, label %.preheader.preheader, label %.lr.ph227, !dbg !7041

.preheader.preheader:                             ; preds = %.preheader77, %.preheader77.preheader
  br i1 %.not228, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph230, !dbg !7046

.lr.ph227:                                        ; preds = %.preheader77.preheader, %.preheader77
  %.sroa.02.0.i12226 = phi i64 [ %i.di, %.preheader77 ], [ %i.cr, %.preheader77.preheader ] ; 4 uses
  %i.dj = add i64 %.sroa.02.0.i12226, %i.cv, !dbg !7047 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.bo, !dbg !7048
  br i1 %i.dk, label %bb.z, label %bb.aa, !dbg !7048

.preheader:                                       ; preds = %bb.w
  %.not = icmp eq i64 %i.dl, 0, !dbg !7049
  br i1 %.not, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph230, !dbg !7046

.lr.ph230:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i16229 = phi i64 [ %i.dl, %.preheader ], [ %i.cr, %.preheader.preheader ]
  %i.dl = add i64 %.sroa.2.0.i16229, -1, !dbg !7050 ; 5 uses
  br i1 %.first_iter, label %bb.u, label %bb.v, !dbg !7051

bb.u:                                             ; preds = %.lr.ph230
  %i.dm = add i64 %i.dl, %i.cv, !dbg !7052        ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.bo, !dbg !7053
  br i1 %i.dn, label %bb.w, label %bb.x, !dbg !7053

bb.v:                                             ; preds = %.lr.ph230
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef range(i64 0, -9223372036854775808) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #54, !dbg !7051, !noalias !6965
  unreachable, !dbg !7051

bb.w:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dl, !dbg !7051
  %i.dp = load i8, ptr %i.do, align 1, !dbg !7051, !alias.scope !6956, !noalias !6966, !noundef !4821
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dm, !dbg !7053
  %i.dr = load i8, ptr %i.dq, align 1, !dbg !7053, !alias.scope !6955, !noalias !6958, !noundef !4821
  %.not.i17 = icmp eq i8 %i.dp, %i.dr, !dbg !7051
  br i1 %.not.i17, label %.preheader, label %bb.y, !dbg !7051

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #54, !dbg !7053, !noalias !6965
  unreachable, !dbg !7053

bb.y:                                             ; preds = %bb.w
  %i.ds = add i64 %i.cv, %i.ct, !dbg !7054
  br label %bb.t, !dbg !7055

bb.z:                                             ; preds = %.lr.ph227
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.02.0.i12226, !dbg !7056
  %i.du = load i8, ptr %i.dt, align 1, !dbg !7056, !alias.scope !6956, !noalias !6966, !noundef !4821
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dj, !dbg !7048
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !7048, !alias.scope !6955, !noalias !6958, !noundef !4821
  %.not21.i15 = icmp eq i8 %i.du, %i.dw, !dbg !7056
  br i1 %.not21.i15, label %.preheader77, label %bb.ab, !dbg !7056

bb.aa:                                            ; preds = %.lr.ph227
  %i.dx = add i64 %i.cv, %i.cr, !dbg !7057
  %umax.i14 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.bo, i64 %i.dx), !dbg !7057
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i14, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #54, !dbg !7048, !noalias !6965
  unreachable, !dbg !7048

bb.ab:                                            ; preds = %bb.z
  %.reass188.reass = add i64 %i.cv, %invariant.op298
  %i.dy = add i64 %.reass188.reass, %.sroa.02.0.i12226, !dbg !7058
  br label %bb.t, !dbg !7059

bb.ac:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6967), !dbg !7060
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6968), !dbg !7060
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6969), !dbg !7060
  %.promoted.i2 = load i64, ptr %i.bt, align 8, !alias.scope !6967, !noalias !6970 ; 2 uses
  %i.dz = add i64 %.promoted.i2, %i.bu, !dbg !7061 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.bo, !dbg !7062
  br i1 %i.ea, label %.lr.ph.i4, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7062

.lr.ph.i4:                                        ; preds = %bb.ac
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !6967, !noalias !6970, !noundef !4821
  %i.ed = load i64, ptr %i.d, align 8, !alias.scope !6967, !noalias !6970 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !6967, !noalias !6970 ; 2 uses
  %i.eg = sub i64 %i.bs, %i.ef
  %invariant.op = sub i64 1, %i.ed, !dbg !7062
  br label %bb.ad, !dbg !7062

bb.ad:                                            ; preds = %.sink.split.i, %.lr.ph.i4
  %i.eh = phi i64 [ %.promoted.i2, %.lr.ph.i4 ], [ %.ph71.i, %.sink.split.i ] ; 9 uses
  %i.ei = phi i64 [ %i.bj, %.lr.ph.i4 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.ej = phi i64 [ %i.dz, %.lr.ph.i4 ], [ %i.es, %.sink.split.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ej, !dbg !7063
  %i.el = load i8, ptr %i.ek, align 1, !dbg !7064, !alias.scope !6968, !noalias !6971, !noundef !4821
  %i.em = and i8 %i.el, 63, !dbg !7065
  %i.en = zext nneg i8 %i.em to i64, !dbg !7066
  %i.eo = shl nuw i64 1, %i.en, !dbg !7067
  %i.ep = and i64 %i.eo, %i.ec, !dbg !7067
  %i.eq = icmp eq i64 %i.ep, 0, !dbg !7067
  br i1 %i.eq, label %bb.ae, label %bb.af, !dbg !7067

bb.ae:                                            ; preds = %bb.ad
  %i.er = add i64 %i.eh, %i.bs, !dbg !7068
  br label %.sink.split.i, !dbg !7069

bb.af:                                            ; preds = %bb.ad
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 %i.ed), !dbg !7070 ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.bs), !dbg !7071
  %exitcond.not.i220.not = icmp ult i64 %.sroa.0.0.i.i, %i.bs, !dbg !7072
  br i1 %exitcond.not.i220.not, label %.lr.ph, label %.preheader21.preheader, !dbg !7073

.sink.split.i:                                    ; preds = %bb.ao, %bb.al, %bb.ae
  %.sink.i = phi i64 [ %i.eg, %bb.al ], [ 0, %bb.ao ], [ 0, %bb.ae ]
  %.ph71.i = phi i64 [ %i.fh, %bb.al ], [ %i.fn, %bb.ao ], [ %i.er, %bb.ae ] ; 2 uses
  %i.es = add i64 %.ph71.i, %i.bu, !dbg !7061     ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.bo, !dbg !7062
  br i1 %i.et, label %bb.ad, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7062

bb.ag:                                            ; preds = %bb.am
  %i.eu = add i64 %.sroa.02.0.i221, 1, !dbg !7074 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eu, %umax49.i, !dbg !7072
  br i1 %exitcond.not.i, label %.preheader21.preheader, label %.lr.ph, !dbg !7073

.preheader21.preheader:                           ; preds = %bb.ag, %bb.af
  %i.ev = icmp ult i64 %i.ei, %i.ed, !dbg !7075
  br i1 %i.ev, label %.lr.ph223, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7076

.lr.ph:                                           ; preds = %bb.af, %bb.ag
  %.sroa.02.0.i221 = phi i64 [ %i.eu, %bb.ag ], [ %.sroa.0.0.i.i, %bb.af ] ; 4 uses
  %i.ew = add i64 %.sroa.02.0.i221, %i.eh, !dbg !7077 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.bo, !dbg !7078
  br i1 %i.ex, label %bb.am, label %bb.an, !dbg !7078

.preheader21:                                     ; preds = %bb.aj
  %i.ey = icmp ult i64 %i.ei, %i.ez, !dbg !7075
  br i1 %i.ey, label %.lr.ph223, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !7076

.lr.ph223:                                        ; preds = %.preheader21.preheader, %.preheader21
  %.sroa.2.0.i222 = phi i64 [ %i.ez, %.preheader21 ], [ %i.ed, %.preheader21.preheader ]
  %i.ez = add i64 %.sroa.2.0.i222, -1, !dbg !7079 ; 6 uses
  %i.fa = icmp ult i64 %i.ez, %i.bs, !dbg !7080
  br i1 %i.fa, label %bb.ah, label %bb.ai, !dbg !7080

bb.ah:                                            ; preds = %.lr.ph223
  %i.fb = add i64 %i.ez, %i.eh, !dbg !7081        ; 3 uses
  %i.fc = icmp ult i64 %i.fb, %i.bo, !dbg !7082
  br i1 %i.fc, label %bb.aj, label %bb.ak, !dbg !7082

bb.ai:                                            ; preds = %.lr.ph223
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef range(i64 0, -9223372036854775808) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #54, !dbg !7080, !noalias !6972
  unreachable, !dbg !7080

end_hunk_0
