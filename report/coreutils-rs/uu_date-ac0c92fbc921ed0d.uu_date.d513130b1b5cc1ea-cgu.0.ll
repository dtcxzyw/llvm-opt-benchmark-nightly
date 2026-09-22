Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
@switch.table._RNvCsiibOIv6tv3q_7uu_date36format_date_with_locale_aware_months = private unnamed_addr constant [48 x i8] c"  0000000000000 000000000 000000  00 00 00  000 ", align 4
@switch.table._RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE16fmt_month_abbrevCsiibOIv6tv3q_7uu_date = private unnamed_addr constant [12 x ptr] [ptr @213, ptr @214, ptr @215, ptr @216, ptr @203, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223], align 8
@switch.table._RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers17get_default_width = private unnamed_addr constant [55 x i8] c"\02\00\00\00\04\02\02\00\00\00\02\09\00\00\00\00\02\00\02\02\02\00\04\00\00\00\00\00\00\00\00\00\00\02\02\00\02\00\00\03\02\02\02\00\00\00\01\00\00\00\01\00\01\00\02", align 8
@switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre4findReECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 2) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !alias.scope !51, !noalias !52, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.c, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.f = load i8, ptr %i.e, align 2, !range !7, !alias.scope !53, !noalias !54, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !51, !noalias !52 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !53, !noalias !54, !nonnull !6, !noundef !6 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !53, !noalias !54, !noundef !6 ; 16 uses
  %.promoted52.i = load i8, ptr %i.h, align 8, !alias.scope !53, !noalias !54 ; 2 uses
  %i.m = trunc nuw i8 %.promoted52.i to i1
  %i.n = icmp eq i64 %.promoted.i, 0
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.l
  br i1 %.not.i.i.i.peel, label %bb.c, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.b
  %i.o = icmp eq i64 %.promoted.i, %i.l
  br i1 %i.o, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !55, !noalias !56, !noundef !6
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted.i ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i, %i.l
  br i1 %i.t, label %.loopexit69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.s, align 1, !noalias !57, !noundef !6 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.f, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i, 1
  %i.aa = icmp samesign ne i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !57, !noundef !6
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = add nuw nsw i64 %.promoted.i, 2
  %i.aj = icmp samesign ne i64 %i.ai, %i.l
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !57, !noundef !6
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.u, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.at = add nuw nsw i64 %.promoted.i, 3
  %i.au = icmp samesign ne i64 %i.at, %i.l
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.as, align 1, !noalias !57, !noundef !6
  %i.aw = shl nuw nsw i32 %i.y, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = zext nneg i8 %i.u to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.peel ], [ %i.bc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.peel ], [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.peel ], [ %i.bd, %bb.f ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.be)
  br i1 %i.m, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bf, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bh, i64 3, i64 4
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !51, !noalias !52, !noundef !6 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !51, !noalias !52, !nonnull !6, !noundef !6 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !51, !noalias !52, !noundef !6 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !51, !noalias !52, !nonnull !6, !noundef !6 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !51, !noalias !52, !noundef !6 ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.bu = add nsw i64 %i.bs, -1                   ; 5 uses
  br i1 %i.bk, label %bb.y, label %bb.q

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.i ], [ %..i.i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bv = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp ult i64 %i.bv, %i.l
  br i1 %.not.i.i.i, label %bb.n, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.m
  %i.bx = icmp eq i64 %i.bv, %i.l
  br i1 %i.bx, label %bb.o, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bv
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !55, !noalias !59, !noundef !6
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %.split.i.i.i, %bb.l
  %i.cb = icmp samesign eq i64 %i.bv, %i.l
  br i1 %i.cb, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bv
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !60, !noundef !6 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i: ; preds = %bb.p
  %i.cf = add nuw nsw i64 %i.bv, 1
  %i.cg = icmp samesign ne i64 %i.cf, %i.l
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ugt i8 %i.cd, -33
  br i1 %i.ch, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i
  %i.ci = add nuw nsw i64 %i.bv, 2
  %i.cj = icmp samesign ne i64 %i.ci, %i.l
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i8 %i.cd, -17
  br i1 %i.ck, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i
  %i.cl = add nuw nsw i64 %i.bv, 3
  %i.cm = icmp samesign ne i64 %i.cl, %i.l
  tail call void @llvm.assume(i1 %i.cm)
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.n, %.split.i.i.i, %bb.c, %.split.i.i.i.peel
  %.lcssa65 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.c ], [ %i.bv, %.split.i.i.i ], [ %i.bv, %bb.n ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %.lcssa65, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #34, !noalias !59
  unreachable

.loopexit69:                                      ; preds = %bb.d
  %.mask = and i8 %.promoted52.i, 1
  %spec.select104 = zext nneg i8 %.mask to i64
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.q:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.promoted.i.i = load i64, ptr %i.bt, align 8, !alias.scope !64, !noalias !65 ; 2 uses
  %i.cn = add i64 %.promoted.i.i, %i.bu           ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.bo
  br i1 %i.co, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !64, !noalias !65, !noundef !6
  %i.cr = load i64, ptr %i.d, align 8, !alias.scope !64, !noalias !65 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !64, !noalias !65 ; 2 uses
  %i.cu = sub i64 %i.bs, %i.ct
  %invariant.op = sub i64 1, %i.cr
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.t, %.lr.ph.i1.i
  %.sink.i4.i30 = phi i64 [ %.sink.i4.i, %bb.t ], [ %i.bj, %.lr.ph.i1.i ] ; 3 uses
  %i.cv = phi i64 [ %i.dg, %bb.t ], [ %i.cn, %.lr.ph.i1.i ]
  %i.cw = phi i64 [ %i.df, %bb.t ], [ %.promoted.i.i, %.lr.ph.i1.i ] ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !62, !noalias !66, !noundef !6
  %i.cz = and i8 %i.cy, 63
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.cq
  %.not.i2.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i2.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i.i
  %i.dd = add i64 %i.cw, %i.bs
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.i.i
  %..i.i3.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink.i4.i30, i64 %i.cr) ; 2 uses
  %i.de = icmp ult i64 %..i.i3.i, %i.bs
  br i1 %i.de, label %.lr.ph, label %.preheader36.i.i.preheader

bb.t:                                             ; preds = %bb.x, %bb.w, %bb.r
  %.sink.i4.i = phi i64 [ 0, %bb.x ], [ %i.cu, %bb.w ], [ 0, %bb.r ]
  %i.df = phi i64 [ %i.eb, %bb.x ], [ %i.ea, %bb.w ], [ %i.dd, %bb.r ] ; 2 uses
  %i.dg = add i64 %i.df, %i.bu                    ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.bo
  br i1 %i.dh, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %.lr.ph
  %i.di = add nuw nsw i64 %.sroa.04.0.i.i16, 1    ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.bs
  br i1 %i.dj, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.u, %bb.s
  %i.dk = icmp ult i64 %.sink.i4.i30, %i.cr
  br i1 %i.dk, label %.lr.ph18, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %.sroa.04.0.i.i16 = phi i64 [ %i.di, %bb.u ], [ %..i.i3.i, %bb.s ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.i.i16
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !63, !noalias !67, !noundef !6
  %i.dn = add i64 %.sroa.04.0.i.i16, %i.cw        ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.bo
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dn
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !62, !noalias !66, !noundef !6
  %.not21.i.i = icmp eq i8 %i.dm, %i.dq
  br i1 %.not21.i.i, label %bb.u, label %bb.x

.preheader36.i.i:                                 ; preds = %bb.v
  %i.dr = icmp ult i64 %.sink.i4.i30, %i.ds
  br i1 %i.dr, label %.lr.ph18, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph18:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i17 = phi i64 [ %i.ds, %.preheader36.i.i ], [ %i.cr, %.preheader36.i.i.preheader ]
  %i.ds = add i64 %.sroa.2.0.i.i17, -1            ; 6 uses
  %i.dt = icmp ult i64 %i.ds, %i.bs
  br i1 %i.dt, label %bb.v, label %.split32.us.i.i

bb.v:                                             ; preds = %.lr.ph18
  %i.du = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !63, !noalias !67, !noundef !6
  %i.dw = add i64 %i.ds, %i.cw                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.bo
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !62, !noalias !66, !noundef !6
  %.not20.i.i = icmp eq i8 %i.dv, %i.dz
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.w

.split32.us.i.i:                                  ; preds = %.lr.ph18
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef range(i64 0, -9223372036854775808) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #34, !noalias !68
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ea = add i64 %i.cw, %i.ct
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cw, %invariant.op
  %i.eb = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i16
  br label %bb.t

bb.y:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %.promoted.i5.i = load i64, ptr %i.bt, align 8, !alias.scope !72, !noalias !73 ; 3 uses
  %i.ec = add i64 %.promoted.i5.i, %i.bu          ; 3 uses
  %i.ed = icmp ult i64 %i.ec, %i.bo
  br i1 %i.ed, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !72, !noalias !73, !noundef !6 ; 2 uses
  %i.eg = load i64, ptr %i.d, align 8, !alias.scope !72, !noalias !73
  %.fr63.i = freeze i64 %i.eg                     ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !72, !noalias !73
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.ej = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i9.i = icmp ult i64 %i.ej, %i.bs
  %i.ek = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i9.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i8.i
  %exitcond.not.i.i20.not = icmp ult i64 %.fr63.i, %i.bs
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i8.i
  %exitcond.not.i.us.i25.not = icmp ult i64 %.fr63.i, %i.bs
  %.not34.i.us.us.i28 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.ab
  %i.el = phi i64 [ %i.fm, %bb.ab ], [ %i.ec, %.lr.ph.split.us.i.us.i.preheader ]
  %i.em = phi i64 [ %i.fl, %bb.ab ], [ %.promoted.i5.i, %.lr.ph.split.us.i.us.i.preheader ] ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !70, !noalias !74, !noundef !6
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.er, %i.ef
  %.not.us.i.us.i = icmp eq i64 %i.es, 0
  br i1 %.not.us.i.us.i, label %bb.aa, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i25.not, label %.lr.ph27, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph27
  %i.et = add i64 %.sroa.04.0.us.i.us.i26, 1      ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.et, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph27

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i28, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph30

.lr.ph27:                                         ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i26 = phi i64 [ %i.et, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.us.i.us.i26
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !71, !noalias !75, !noundef !6
  %i.ew = add i64 %.sroa.04.0.us.i.us.i26, %i.em  ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.bo
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !70, !noalias !74, !noundef !6
  %.not21.us.i.us.i = icmp eq i8 %i.ev, %i.ez
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph27
  %i.fa = add i64 %i.em, %i.ek
  %i.fb = add i64 %i.fa, %.sroa.04.0.us.i.us.i26
  br label %bb.ab

.preheader.i10.us.us.i:                           ; preds = %.lr.ph30
  %.not34.i.us.us.i = icmp eq i64 %i.fc, 0
  br i1 %.not34.i.us.us.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i29 = phi i64 [ %i.fc, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.fc = add i64 %.sroa.2.0.us.i.us.us.i29, -1   ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !71, !noalias !75, !noundef !6
  %i.ff = add i64 %i.fc, %i.em                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.bo
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !70, !noalias !74, !noundef !6
  %.not20.us.i.us.us.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph30
  %i.fj = add i64 %i.em, %i.ei
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.fk = add i64 %i.em, %i.bs
  br label %bb.ab
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone14to_offset_info:bb.a

.split20.i.i.i.i:                                 ; preds = %.thread44.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.q, i64 %i.s, i1 false), !noalias !4364
  br label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset15to_abbreviation.exit

bb.i:                                             ; preds = %.thread44.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.s) #37, !noalias !4364
  unreachable

_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset15to_abbreviation.exit: ; preds = %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj6_E3newCsiibOIv6tv3q_7uu_date.exit.thread45.i, %.split20.i.i.i.i
  %.sroa.6.sroa.0.0.i = phi i56 [ %.sroa.423.0.extract.trunc.i, %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj6_E3newCsiibOIv6tv3q_7uu_date.exit.thread45.i ], [ undef, %.split20.i.i.i.i ]
  %.sroa.630.0.i = phi ptr [ undef, %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj6_E3newCsiibOIv6tv3q_7uu_date.exit.thread45.i ], [ %i.u, %.split20.i.i.i.i ]
  %.sroa.027.0.i = phi i8 [ 0, %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj6_E3newCsiibOIv6tv3q_7uu_date.exit.thread45.i ], [ 2, %.split20.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.n, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.aa, align 4
  store i8 %.sroa.027.0.i, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i56 %.sroa.6.sroa.0.0.i, ptr %.sroa.41.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.630.0.i, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.63.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  call void @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.0.val, i64 noundef %1, i32 noundef %2) #33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ae = load i8, ptr %i.ad, align 4, !range !7, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ae, ptr %i.ag, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %.0.val, i64 -4
  call void @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ah, i64 noundef %1, i32 noundef %2) #33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !7, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.aj, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.al, ptr %i.an, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %.0.val, i64 -5
  call void @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao, i64 noundef %1, i32 noundef %2) #33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.as = load i8, ptr %i.ar, align 4, !range !7, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.aq, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.as, ptr %i.au, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.64, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 1), i64 7, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.c
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 8), align 8, !nonnull !6, !noundef !6
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 16), align 8, !noundef !6
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.ax = tail call { ptr, i64 } @_RNvXsf_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxeENtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 8)) #33 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.96.0 = phi i64 [ undef, %bb.m ], [ %i.aw, %bb.n ], [ %i.az, %bb.o ]
  %.sroa.75.0 = phi ptr [ undef, %bb.m ], [ %i.av, %bb.n ], [ %i.ay, %bb.o ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.bb, align 4
  store i8 %i.k, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.64, i64 7, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.75.0, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.96.0, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.u, %bb.p, %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset15to_abbreviation.exit
  ret void

bb.r:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 1), i64 7, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 8), align 8, !nonnull !6, !noundef !6
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 16), align 8, !noundef !6
  br label %bb.u

bb.t:                                             ; preds = %bb.d
  %i.be = tail call { ptr, i64 } @_RNvXsf_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxeENtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB4_8TimeZone14to_offset_info3UTC, i64 8)) #33 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.9.0 = phi i64 [ undef, %bb.r ], [ %i.bd, %bb.s ], [ %i.bg, %bb.t ]
  %.sroa.7.0 = phi ptr [ undef, %bb.r ], [ %i.bc, %bb.s ], [ %i.bf, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.bi, align 4
  store i8 %i.l, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.62.0..sroa_idx, align 8
  br label %bb.q
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = add nsw i64 %i.a, 378683424000
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = udiv i64 %i.c, 86400
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  %i.f = urem i64 %i.c, 86400                     ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.h = icmp slt i32 %3, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 0
  %i.i = add nsw i32 %3, 1000000000               ; 2 uses
  br i1 %.not, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.09.0 = phi i32 [ %i.m, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.i, %bb.d ], [ %3, %bb.a ] ; 3 uses
  %i.j = add i32 %i.e, -11323
  %or.cond = icmp ult i32 %i.j, 7304484
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !26

.thread:                                          ; preds = %bb.b
  %i.k = add i32 %i.e, -1
  %i.l = add i32 %i.e, -11324
  %or.cond54 = icmp ult i32 %i.l, 7304484
  br i1 %or.cond54, label %.thread67, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.g, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread, %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @125, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #34
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %.sroa.09.0, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = udiv i32 %.sroa.09.0, 3600               ; 2 uses
  %i.p = urem i32 %.sroa.09.0, 3600               ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread67

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread67
  %.sroa.06.05665 = phi i32 [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %.sroa.06.0566471, %.thread67 ]
  %.sroa.0.05763 = phi i32 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0576272, %.thread67 ] ; 2 uses
  %.sroa.041.0.shrunk = phi i32 [ 0, %bb.f ], [ %i.o, %bb.g ], [ %i.s, %.thread67 ]
  %.sroa.043.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.y, %.thread67 ]
  %or.cond2 = icmp ult i32 %.sroa.0.05763, 1000000000
  br i1 %or.cond2, label %bb.j, label %bb.i, !prof !26

.thread67:                                        ; preds = %.thread, %bb.g
  %i.r = phi i32 [ %i.p, %bb.g ], [ 3599, %.thread ]
  %i.s = phi i32 [ %i.o, %bb.g ], [ 23, %.thread ]
  %.sroa.0.0576272 = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.i, %.thread ]
  %.sroa.06.0566471 = phi i32 [ %i.e, %bb.g ], [ %i.k, %.thread ]
  %.lhs.trunc = trunc nuw nsw i32 %i.r to i16     ; 2 uses
  %i.t = udiv i16 %.lhs.trunc, 60
  %4 = zext nneg i16 %i.t to i64
  %i.u = urem i16 %.lhs.trunc, 60
  %i.v = zext nneg i16 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = shl nuw nsw i64 %4, 40
  %i.y = or disjoint i64 %i.w, %i.x
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #34
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = shl nuw nsw i32 %.sroa.06.05665, 2
  %i.aa = add nuw nsw i32 %i.z, 33266051          ; 2 uses
  %i.ab = urem i32 %i.aa, 146097
  %i.ac = or i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 2939745          ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = udiv i32 %i.af, 11758980
  %i.ah = mul nuw nsw i32 %i.ag, 2141
  %i.ai = add nuw nsw i32 %i.ah, 197913           ; 3 uses
  %.lhs.trunc.i = trunc i32 %i.ai to i16
  %i.aj = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.aj to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ak = icmp ugt i32 %i.af, -696719417          ; 2 uses
  %i.al = and i32 %i.ai, 4128768
  %i.am = add nuw nsw i32 %i.al, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.ak, i32 %i.am, i32 %i.ai
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.an = udiv i32 %i.aa, 146097
  %i.ao = mul nuw nsw i32 %i.an, 100
  %i.ap = add nuw nsw i32 %i.ao, 32736
  %i.aq = lshr i64 %i.ae, 32
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ap, %i.ar
  %i.at = zext i1 %i.ak to i32
  %i.au = add nuw nsw i32 %i.as, %i.at
  %.sroa.0.0.insert.ext.i = and i32 %i.au, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %.sroa.440.0.insert.ext = zext nneg i32 %.sroa.041.0.shrunk to i64
  %.sroa.440.0.insert.shift = shl nuw nsw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext nneg i32 %.sroa.0.05763 to i64
  %.sroa.440.0.insert.insert = or i64 %.sroa.043.0, %.sroa.039.0.insert.ext
  %.sroa.039.0.insert.insert = or i64 %.sroa.440.0.insert.insert, %.sroa.440.0.insert.shift
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.av, align 4
  store i64 %.sroa.039.0.insert.insert, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i32 16777216, 134217728) i32 @_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date16to_iso_week_date(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %.sroa.010.0.extract.trunc = trunc i32 %0 to i16 ; 6 uses
  %i.a = shl i32 %0, 8
  %i.b = ashr i32 %i.a, 24                        ; 3 uses
  %i.c = icmp ult i32 %i.b, 3                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 12
  %.sroa.02.0.i = select i1 %i.c, i32 %i.d, i32 %i.b
  %sext.i = shl i32 %0, 16
  %i.e = ashr exact i32 %sext.i, 16
  %i.f = add nsw i32 %i.e, 32800
  %.neg.i = sext i1 %i.c to i32
  %i.g = add nsw i32 %i.f, %.neg.i                ; 3 uses
  %i.h = ashr i32 %0, 24
  %i.i = udiv i32 %i.g, 100
  %i.j = mul nuw nsw i32 %i.g, 1461
  %i.k = lshr i32 %i.j, 2
  %i.l = udiv i32 %i.g, 400
  %i.m = mul nsw i32 %.sroa.02.0.i, 979
  %i.n = add nsw i32 %i.m, -2919
  %i.o = lshr i32 %i.n, 5
  %i.p = add nsw i32 %i.h, -12699423
  %i.q = sub nuw nsw i32 %i.p, %i.i
  %i.r = add nuw nsw i32 %i.q, %i.l
  %i.s = add nsw i32 %i.r, %i.k
  %i.t = add nsw i32 %i.s, %i.o                   ; 4 uses
  %i.u = tail call noundef i32 @_RNvNtNtCscxuc9kp9KZq_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef %.sroa.010.0.extract.trunc) #33 ; 3 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = lshr i32 %0, 24
  %.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.5.0.extract.shift to i8
  %i.w = and i32 %0, 16711680
  %i.x = icmp eq i32 %i.w, 786432
  %i.y = icmp sgt i8 %.sroa.5.0.extract.trunc, 28
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  %i.z = icmp slt i16 %.sroa.010.0.extract.trunc, 9999
  %or.cond4 = and i1 %i.z, %or.cond
  br i1 %or.cond4, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.aa = add i16 %.sroa.010.0.extract.trunc, -1  ; 2 uses
  %i.ab = tail call noundef i32 @_RNvNtNtCscxuc9kp9KZq_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef %i.aa) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = add nsw i16 %.sroa.010.0.extract.trunc, 1 ; 2 uses
  %i.ad = tail call noundef i32 @_RNvNtNtCscxuc9kp9KZq_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef %i.ac) #33 ; 2 uses
  %.not = icmp slt i32 %i.t, %i.ad                ; 2 uses
  %spec.select = select i1 %.not, i32 %i.u, i32 %i.ad
  %spec.select28 = select i1 %.not, i16 %.sroa.010.0.extract.trunc, i16 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.014.0 = phi i32 [ %i.ab, %bb.c ], [ %i.u, %bb.b ], [ %spec.select, %bb.d ]
  %.sroa.016.0 = phi i16 [ %i.aa, %bb.c ], [ %.sroa.010.0.extract.trunc, %bb.b ], [ %spec.select28, %bb.d ]
  %i.ae = mul i32 %i.t, 613566757
  %i.af = add i32 %i.ae, -1879048192
  %i.ag = lshr i32 %i.af, 29                      ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RNvMs1_NtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekday.exit, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @148, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #34
  unreachable

_RNvMs1_NtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekday.exit: ; preds = %bb.e
  %i.ai = sub i32 %i.t, %.sroa.014.0
  %i.aj = sdiv i32 %i.ai, 7
  %.sroa.313.0.insert.shift = shl nuw nsw i32 %i.ag, 24
  %i.ak = shl i32 %i.aj, 16
  %.sroa.2.0.insert.ext = add i32 %i.ak, 65536
  %.sroa.2.0.insert.shift = and i32 %.sroa.2.0.insert.ext, 16711680
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.313.0.insert.shift
  %.sroa.012.0.insert.ext = zext i16 %.sroa.016.0 to i32
  %.sroa.012.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.012.0.insert.ext
  ret i32 %.sroa.012.0.insert.insert
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE14fmt_iana_colonCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((16, 17)) %0, ptr nofree readonly captures(none) %.24.val, ptr %.32.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.24.val, i64 40
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.24.val, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.32.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4375)
  %i.g = load ptr, ptr %.32.val, align 8, !alias.scope !4375, !noalias !4376, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !4377, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i16, ptr %i.j, align 8, !noalias !4377, !noundef !6 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 2 uses
  %i.m = sub i64 %i.i, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread4, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.32.val) #36, !noalias !4376 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread, label %bb.d

_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread4: ; preds = %bb.b, %bb.d
  %.pre-phi = phi i64 [ %i.ad, %bb.d ], [ %i.l, %bb.b ]
  %i.r = phi i16 [ %i.ac, %bb.d ], [ %i.k, %bb.b ]
  %i.s = phi ptr [ %i.y, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !4378, !noalias !4379, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.pre-phi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !alias.scope !4380, !noalias !4381
  %i.w = trunc i64 %i.f to i16
  %i.x = add i16 %i.r, %i.w
  store i16 %i.x, ptr %i.t, align 8, !alias.scope !4378, !noalias !4382
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %.32.val, align 8, !alias.scope !4375, !noalias !4376, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !4376, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i16, ptr %i.ab, align 8, !noalias !4376, !noundef !6 ; 2 uses
  %i.ad = zext i16 %i.ac to i64                   ; 2 uses
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = icmp ugt i64 %i.f, %i.ae
  br i1 %i.af, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread4

_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !4375, !noalias !4376, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %.32.val, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !4375, !noalias !4376, !nonnull !6, !align !13, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !6, !noalias !4376, !nonnull !6
  %i.am = tail call { i64, ptr } %i.al(ptr noundef nonnull %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #35, !inline_history !0 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread, label %bb.h
end_hunk_1
