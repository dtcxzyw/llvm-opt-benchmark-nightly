Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx17format_roff_field:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2002
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgy7pbN39oAf_6uu_ptx19prepare_line_chunks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, i64 %.64.val, i64 %.72.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [104 x i8], align 8               ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 2 uses
  %i.o = icmp ne i64 %.64.val, 0                  ; 4 uses
  br i1 %i.o, label %bb.b, label %.thread93

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %.64.val, %3
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.p = icmp eq i64 %.64.val, %3
  br i1 %i.p, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.64.val
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !2094, !noundef !7
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %.split.i
  %i.t = icmp ult i64 %.64.val, 32
  br i1 %i.t, label %.thread93, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.64.val) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

.thread93:                                        ; preds = %bb.a, %bb.d
  %i.v = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.64.val) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.e, %.thread93
  %i.w = phi i1 [ true, %.thread93 ], [ false, %bb.e ]
  %.sroa.0.0.i36 = phi i64 [ %i.v, %.thread93 ], [ %i.u, %bb.e ] ; 4 uses
  %i.x = icmp ugt i64 %.64.val, %.72.val
  %i.y = icmp ugt i64 %.72.val, %3
  %or.cond.i32 = or i1 %i.x, %i.y
  br i1 %or.cond.i32, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread6, label %bb.f, !prof !29

bb.f:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  %i.z = icmp eq i64 %.64.val, %3                 ; 2 uses
  br i1 %i.z, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = icmp eq i64 %.72.val, %3
  br i1 %i.aa, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.64.val
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !2095, !noundef !7
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.h, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread6, !prof !30

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.72.val
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !2095, !noundef !7
  %i.ag = icmp sgt i8 %i.af, -65
  br i1 %i.ag, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread6, !prof !27

bb.j:                                             ; preds = %bb.c, %.split.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef 0, i64 noundef %.64.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread6: ; preds = %bb.i, %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.64.val, i64 noundef %.72.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread: ; preds = %bb.h, %bb.f, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.64.val ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.72.val
  %gepdiff = sub nuw i64 %.72.val, %.64.val       ; 11 uses
  %i.aj = icmp ult i64 %gepdiff, 32               ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread
  %i.ak = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %gepdiff) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit38

bb.l:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit34.thread
  %i.al = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %gepdiff) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit38

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit38: ; preds = %bb.k, %bb.l
  %.sroa.0.0.i37 = phi i64 [ %i.al, %bb.l ], [ %i.ak, %bb.k ]
  %i.am = add i64 %.sroa.0.0.i37, %.sroa.0.0.i36  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ao = load i8, ptr %i.an, align 2, !range !16, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit38
  %.not28 = icmp ugt i64 %.sroa.0.0.i36, %5
  br i1 %.not28, label %bb.p, label %.thread, !prof !8

bb.n:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit38
  %.not.i39 = icmp ult i64 %.64.val, %3
  %or.cond43 = and i1 %i.o, %.not.i39
  br i1 %or.cond43, label %bb.o, label %.split.i40

bb.o:                                             ; preds = %bb.n
  %i.aq = load i8, ptr %i.ah, align 1, !alias.scope !2096, !noundef !7
  %i.ar = icmp sgt i8 %i.aq, -65
  br i1 %i.ar, label %.split.i40, label %bb.aj

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i36, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #27
  unreachable

bb.q:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit48
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dr
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.q
  %.sroa.0.014 = phi ptr [ %i.as, %bb.q ], [ %4, %bb.m ] ; 10 uses
  %.sroa.3.012 = phi i64 [ %.sroa.0.0.i47, %bb.q ], [ %.sroa.0.0.i36, %bb.m ] ; 11 uses
  br i1 %i.z, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %bb.r

bb.r:                                             ; preds = %.thread
  br i1 %i.o, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.at = icmp eq i64 %.72.val, %3
  br i1 %i.at, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit

bb.t:                                             ; preds = %bb.r
  %i.au = load i8, ptr %i.ah, align 1, !alias.scope !2097, !noundef !7
  %i.av = icmp sgt i8 %i.au, -65
  br i1 %i.av, label %bb.s, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread22, !prof !30

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit: ; preds = %bb.s
  %i.aw = load i8, ptr %i.ai, align 1, !alias.scope !2097, !noundef !7
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread22, !prof !27

.split.i40:                                       ; preds = %bb.o, %bb.n
  br i1 %i.w, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split.i40
  %i.ay = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.64.val) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit44

bb.v:                                             ; preds = %.split.i40
  %i.az = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.64.val) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit44

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit44: ; preds = %bb.u, %bb.v
  %.sroa.0.0.i43 = phi i64 [ %i.az, %bb.v ], [ %i.ay, %bb.u ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2098
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %.64.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2099
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.n) #29, !noalias !2100
  %i.ba = load i64, ptr %i.m, align 8, !range !19, !noalias !2099, !noundef !7
  switch i64 %i.ba, label %default.unreachable [
    i64 1, label %bb.y
    i64 2, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit
    i64 0, label %bb.x
  ]

default.unreachable:                              ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2099
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !2099, !noundef !7
  br label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.w, %bb.y
  %.sroa.0.0.i45 = phi i64 [ %i.bc, %bb.y ], [ %.64.val, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2099
  %i.bd = sub nuw i64 %.64.val, %.sroa.0.0.i45    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.i45 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  %i.bf = icmp samesign eq i64 %i.bd, 0
  br i1 %i.bf, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
  %i.bg = phi i64 [ %i.cv, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit ] ; 4 uses
  %i.bh = phi ptr [ %i.cr, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i ], [ %i.be, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit ] ; 6 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 3 uses
  %i.bk = load i8, ptr %i.bh, align 1, !alias.scope !2101, !noalias !2102, !noundef !7 ; 5 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.z, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bm = and i8 %i.bk, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = icmp ne ptr %i.bj, %i.ah
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  %i.bq = load i8, ptr %i.bj, align 1, !alias.scope !2101, !noalias !2102, !noundef !7
  %i.br = shl nuw nsw i32 %i.bn, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.bv, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = zext nneg i8 %i.bk to i32
  br label %bb.aa

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i
  %i.bx = icmp ne ptr %i.bp, %i.ah
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 3 ; 3 uses
  %i.bz = load i8, ptr %i.bp, align 1, !alias.scope !2101, !noalias !2102, !noundef !7
  %i.ca = shl nuw nsw i32 %i.bt, 6
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i, label %bb.aa

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i
  %i.ch = icmp ne ptr %i.by, %i.ah
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cj = load i8, ptr %i.by, align 1, !alias.scope !2101, !noalias !2102, !noundef !7
  %i.ck = shl nuw nsw i32 %i.bn, 18
  %i.cl = and i32 %i.ck, 1835008
  %i.cm = shl nuw nsw i32 %i.cd, 6
  %i.cn = and i8 %i.cj, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cl
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i, %bb.z, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i
  %i.cr = phi ptr [ %i.by, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i ], [ %i.ci, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i ], [ %i.bp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i ], [ %i.bj, %bb.z ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.cf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i ], [ %i.cq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i ], [ %i.bu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i ], [ %i.bw, %bb.z ] ; 8 uses
  %i.cs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.bg, %i.bi
  %i.cv = add i64 %i.cu, %i.ct
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.ab [
    i32 32, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
    i32 13, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
    i32 12, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
    i32 11, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
    i32 10, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
    i32 9, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 133
  br i1 %i.cw, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.cx, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit [
    i32 0, label %bb.af
    i32 22, label %bb.ad
    i32 32, label %bb.ag
    i32 48, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cy = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.da = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.dc = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !2103, !noundef !7
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.dg = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !2103, !noundef !7
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.db, %bb.ae ], [ %i.df, %bb.af ], [ %i.cz, %bb.ad ], [ %i.dk, %bb.ag ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.dl, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.dm = icmp eq ptr %i.cr, %i.ah
  br i1 %i.dm, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit, label %.lr.ph.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.ab, %bb.ac, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.0.0.i46 = phi i64 [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx.exit ], [ %i.bg, %bb.ac ], [ %i.bg, %bb.ab ], [ %i.bg, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i ], [ %i.bd, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsgy7pbN39oAf_6uu_ptx.exit.i.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.0.0.i46 ; 2 uses
  %gepdiff37 = sub i64 %i.bd, %.sroa.0.0.i46      ; 3 uses
  %i.do = icmp ult i64 %gepdiff37, 32
  br i1 %i.do, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit
  %i.dp = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %gepdiff37) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit48

bb.ai:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx.exit
  %i.dq = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %gepdiff37) #28
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit48

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit48: ; preds = %bb.ah, %bb.ai
  %.sroa.0.0.i47 = phi i64 [ %i.dq, %bb.ai ], [ %i.dp, %bb.ah ] ; 3 uses
  %i.dr = sub i64 %.sroa.0.0.i43, %.sroa.0.0.i47  ; 2 uses
  %i.ds = icmp ult i64 %.sroa.0.0.i43, %.sroa.0.0.i47
  %.not30 = icmp ugt i64 %.sroa.0.0.i43, %5
  %or.cond = or i1 %.not30, %i.ds
  br i1 %or.cond, label %bb.ak, label %bb.q, !prof !8

bb.aj:                                            ; preds = %bb.o
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef 0, i64 noundef %.64.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #27
  unreachable

bb.ak:                                            ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit48
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.dr, i64 noundef %.sroa.0.0.i43, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread22: ; preds = %bb.t, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.64.val, i64 noundef %.72.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread: ; preds = %bb.s, %.thread, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  %.not.i49 = icmp slt i64 %gepdiff, 0
  br i1 %.not.i49, label %bb.am, label %bb.al, !prof !13

bb.al:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread
  %i.dt = icmp eq i64 %.72.val, %.64.val
  br i1 %i.dt, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread31, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.al
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2104
  %i.du = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %gepdiff, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2104 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %gepdiff) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread31: ; preds = %bb.al, %bb.an
  %i.dw = phi ptr [ %i.du, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.al ] ; 3 uses
  %i.dx = icmp ugt i64 %i.am, %5
  br i1 %i.dx, label %bb.cv, label %bb.ao, !prof !12

bb.an:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.ah, i64 %gepdiff, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread31

bb.ao:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread31
  %i.dy = sub nuw nsw i64 %5, %i.am               ; 19 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.am ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !2106, !noalias !2107, !noundef !7
  %i.ec = lshr i64 %i.eb, 1                       ; 19 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !2106, !noalias !2107, !noundef !7 ; 3 uses
  %i.ef = sub i64 %i.ec, %i.ee
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ef, i64 0) ; 3 uses
  br i1 %i.aj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %gepdiff) #28, !noalias !2108
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.eh = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %gepdiff) #28, !noalias !2108
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.0.0.i.i = phi i64 [ %i.eh, %bb.aq ], [ %i.eg, %bb.ap ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !2106, !noalias !2107, !nonnull !7, !noundef !7 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !2106, !noalias !2107, !noundef !7 ; 13 uses
  %i.en = icmp ult i64 %i.em, 32
  br i1 %i.en, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i
  %i.eo = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.em) #28, !noalias !2108
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit83.i

bb.as:                                            ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i
  %i.ep = tail call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.em) #28, !noalias !2108
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit83.i

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit83.i: ; preds = %bb.as, %bb.ar
  %.sroa.0.0.i82.i = phi i64 [ %i.ep, %bb.as ], [ %i.eo, %bb.ar ]
  %i.eq = shl i64 %.sroa.0.0.i82.i, 1
  %i.er = add i64 %i.eq, %.sroa.0.0.i.i
  %i.es = xor i64 %i.er, -1
  %i.et = add i64 %i.ec, %i.es
  %..i84.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.et, i64 0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2109
  %i.eu = icmp eq i64 %i.ec, 0
  br i1 %i.eu, label %bb.at, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit83.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2110
  %i.ev = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2110 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i85.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.ec) #30, !noalias !2108
  unreachable

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i85.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.ec, ptr %i.l, align 8, !noalias !2109
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ev, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2109
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2109
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2111
  %i.ex = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2111 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit87.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i88.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit87.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i85.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.ec) #30, !noalias !2108
  unreachable

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i88.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i85.i
  store i64 %i.ec, ptr %i.k, align 8, !noalias !2109
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ex, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !2109
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2109
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2112
  %i.ez = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2112 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit90.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit90.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i88.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.ec) #30, !noalias !2108
  unreachable

bb.at:                                            ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit83.i
  store i64 0, ptr %i.l, align 8, !noalias !2109
  %.sroa.4.0..sroa_idx164.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx164.i, align 8, !noalias !2109
  %.sroa.5.0..sroa_idx165.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx165.i, align 8, !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2109
  store i64 0, ptr %i.k, align 8, !noalias !2109
  %.sroa.415.0..sroa_idx184.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx184.i, align 8, !noalias !2109
  %.sroa.516.0..sroa_idx185.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.516.0..sroa_idx185.i, align 8, !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2109
  store i64 0, ptr %i.j, align 8, !noalias !2109
  %.sroa.418.0..sroa_idx214.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.418.0..sroa_idx214.i, align 8, !noalias !2109
  %.sroa.519.0..sroa_idx215.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.519.0..sroa_idx215.i, align 8, !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2109
  br label %bb.au

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i88.i
  store i64 %i.ec, ptr %i.j, align 8, !noalias !2109
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ez, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !2109
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !2109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2109
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2113
  %i.fb = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2113 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit93.i, label %bb.au

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit93.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.ec) #30, !noalias !2108
  unreachable

bb.au:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i, %bb.at
  %.sroa.519.0..sroa_idx228.ph.i = phi ptr [ %.sroa.519.0..sroa_idx215.i, %bb.at ], [ %.sroa.519.0..sroa_idx.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 4 uses
  %.sroa.418.0..sroa_idx226.ph.i = phi ptr [ %.sroa.418.0..sroa_idx214.i, %bb.at ], [ %.sroa.418.0..sroa_idx.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 3 uses
  %.sroa.5.0..sroa_idx168.ph186.ph222.ph.i = phi ptr [ %.sroa.5.0..sroa_idx165.i, %bb.at ], [ %.sroa.5.0..sroa_idx.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 3 uses
  %.sroa.4.0..sroa_idx166.ph188.ph220.ph.i = phi ptr [ %.sroa.4.0..sroa_idx164.i, %bb.at ], [ %.sroa.4.0..sroa_idx.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 2 uses
  %.sroa.415.0..sroa_idx190.ph218.ph.i = phi ptr [ %.sroa.415.0..sroa_idx184.i, %bb.at ], [ %.sroa.415.0..sroa_idx.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 4 uses
  %.sroa.516.0..sroa_idx192.ph216.ph.i = phi ptr [ %.sroa.516.0..sroa_idx185.i, %bb.at ], [ %.sroa.516.0..sroa_idx.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 4 uses
  %.sroa.9156.0.ph.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.at ], [ %i.fb, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i91.i ] ; 3 uses
  store i64 %i.ec, ptr %i.i, align 8, !noalias !2109
end_hunk_0
