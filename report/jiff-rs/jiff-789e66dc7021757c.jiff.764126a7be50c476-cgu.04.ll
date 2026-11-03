Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.04?download=true
inline.NumInlined: 306
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsa9sSWSfjDbm_4jiff:bb.a
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !46, !noalias !47, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.c, label %.split115.us.i

bb.c:                                             ; preds = %bb.b, %.split.i.i.us.i.peel
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted105.i ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !noalias !48, !noundef !5 ; 3 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i.peel

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i.peel: ; preds = %bb.c
  %i.v = icmp ne i64 %.promoted105.i, 1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -2
  %i.x = load i8, ptr %i.w, align 1, !noalias !48, !noundef !5 ; 3 uses
  %i.y = and i8 %i.x, 31
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = icmp slt i8 %i.x, -64
  br i1 %i.aa, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i.peel, label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i.peel: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i.peel
  %i.ab = icmp ne i64 %.promoted105.i, 2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 -3
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !48, !noundef !5 ; 3 uses
  %i.ae = and i8 %i.ad, 15
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = icmp slt i8 %i.ad, -64
  br i1 %i.ag, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i.peel, label %bb.d

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i.peel: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i.peel
  %i.ah = icmp ne i64 %.promoted105.i, 3
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !48, !noundef !5
  %i.ak = and i8 %i.aj, 7
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = and i8 %i.ad, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i.peel, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i.peel
  %.sroa.010.1.i.i.us.i.peel = phi i32 [ %i.ap, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i.peel ], [ %i.af, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i.peel ]
  %i.aq = shl nuw nsw i32 %.sroa.010.1.i.i.us.i.peel, 6
  %i.ar = and i8 %i.x, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i.peel
  %.sroa.010.0.i.i.us.i.peel = phi i32 [ %i.at, %bb.d ], [ %i.z, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i.peel ]
  %i.au = shl nuw nsw i32 %.sroa.010.0.i.i.us.i.peel, 6
  %i.av = and i8 %i.t, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ay = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.us.i.peel = phi i32 [ %i.ay, %bb.f ], [ %i.ax, %bb.e ] ; 4 uses
  %i.az = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.az)
  br i1 %i.l, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel, 128
  br i1 %i.ba, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel, 2048
  br i1 %i.bb, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.bc, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel

_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.neg.i.us.i.peel = phi i64 [ -2, %bb.i ], [ %..i.us.i.peel, %bb.j ], [ -1, %bb.h ]
  %i.bd = add i64 %.sroa.01.0.neg.i.us.i.peel, %.promoted105.i ; 14 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %.peel.next

.peel.next:                                       ; preds = %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel
  %.not.i.i.us.i = icmp ult i64 %i.bd, %i.i
  br i1 %.not.i.i.us.i, label %bb.k, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %.peel.next
  %i.bf = icmp eq i64 %i.bd, %i.i
  br i1 %i.bf, label %bb.l, label %.split115.us.i

bb.k:                                             ; preds = %.peel.next
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !46, !noalias !49, !noundef !5
  %i.bi = icmp sgt i8 %i.bh, -65
  br i1 %i.bi, label %bb.l, label %.split115.us.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.us.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bd ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !50, !noundef !5
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i: ; preds = %bb.l
  %i.bn = icmp ne i64 %i.bd, 1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !50, !noundef !5
  %i.bq = icmp slt i8 %i.bp, -64
  br i1 %i.bq, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i
  %i.br = icmp ne i64 %i.bd, 2
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds i8, ptr %i.bj, i64 -3
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !50, !noundef !5
  %i.bu = icmp slt i8 %i.bt, -64
  br i1 %i.bu, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i
  %i.bv = icmp ne i64 %i.bd, 3
  tail call void @llvm.assume(i1 %i.bv)
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.split.us.i:                                      ; preds = %.lr.ph.preheader.i
  %.mask = and i8 %.promoted153.i, 1
  %spec.select116 = zext nneg i8 %.mask to i64
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.split115.us.i:                                   ; preds = %bb.k, %.split.i.i.us.i, %bb.b, %.split.i.i.us.i.peel
  %.lcssa47 = phi i64 [ %.promoted105.i, %.split.i.i.us.i.peel ], [ %.promoted105.i, %bb.b ], [ %i.bd, %.split.i.i.us.i ], [ %i.bd, %bb.k ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef 0, i64 noundef %.lcssa47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #20, !noalias !49
  unreachable

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.m:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !44, !noundef !5 ; 4 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !44, !noundef !5
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !44, !nonnull !5, !noundef !5 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !44, !noundef !5 ; 11 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !44, !nonnull !5, !noundef !5 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !44, !noundef !5 ; 16 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.cb, label %bb.aa, label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !44, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.bx, %i.cm
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !51

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !alias.scope !44, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !44, !nonnull !5, !noundef !5
  %i.cr = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.bx), !noalias !52 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0      ; 2 uses
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = extractvalue { i64, i64 } %i.cr, 1
  %spec.select = select i1 %i.ct, i64 %i.cu, i64 undef
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bx, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #20, !noalias !52
  unreachable

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %.promoted.i.i = load i64, ptr %i.ck, align 8, !alias.scope !56 ; 2 uses
  %i.cv = sub i64 %.promoted.i.i, %i.cj           ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cf
  br i1 %i.cw, label %.lr.ph.i.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !56, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !56
  %.fr80.i.i = freeze i64 %i.da                   ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !56 ; 2 uses
  %umax71.i.i = tail call i64 @llvm.umax.i64(i64 %.fr80.i.i, i64 range(i64 0, -9223372036854775808) %i.cj) ; 2 uses
  %.promoted36.i.i = load i64, ptr %i.db, align 8, !alias.scope !56
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.t, %.lr.ph.i.i
  %.sink99.i.i24 = phi i64 [ %.sink99.i.i, %bb.t ], [ %.promoted.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.de = phi i64 [ %.sink98.i.i, %bb.t ], [ %.promoted36.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.df = phi i64 [ %i.dm, %bb.t ], [ %i.cv, %.lr.ph.i.i ] ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !54, !noalias !52, !noundef !5
  %i.di = and i8 %i.dh, 63
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.cy
  %.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.i.i
  %..i.i5.i = tail call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %.fr80.i.i) ; 2 uses
  %.not19.i.i17 = icmp eq i64 %..i.i5.i, 0
  br i1 %.not19.i.i17, label %.preheader46.i.i, label %.lr.ph19

bb.t:                                             ; preds = %bb.z, %bb.x, %.lr.ph.split.i.i
  %.sink99.i.i = phi i64 [ %i.ee, %bb.z ], [ %i.dx, %bb.x ], [ %i.df, %.lr.ph.split.i.i ] ; 2 uses
  %.sink98.i.i = phi i64 [ %i.cj, %bb.z ], [ %i.dd, %bb.x ], [ %i.cj, %.lr.ph.split.i.i ]
  %i.dm = sub i64 %.sink99.i.i, %i.cj             ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cf
  br i1 %i.dn, label %.lr.ph.split.i.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

bb.u:                                             ; preds = %bb.y
  %.not19.i.i = icmp eq i64 %i.do, 0
  br i1 %.not19.i.i, label %.preheader46.i.i, label %.lr.ph19

.preheader46.i.i:                                 ; preds = %bb.u, %bb.s
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %.fr80.i.i)
  %exitcond.not.i.i20.not = icmp ult i64 %.fr80.i.i, %i.de
  br i1 %exitcond.not.i.i20.not, label %.lr.ph22, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.lr.ph19:                                         ; preds = %bb.s, %bb.u
  %.sroa.2.0.i.i18 = phi i64 [ %i.do, %bb.u ], [ %..i.i5.i, %bb.s ]
  %i.do = add i64 %.sroa.2.0.i.i18, -1            ; 7 uses
  %i.dp = icmp ult i64 %i.do, %i.cj
  br i1 %i.dp, label %bb.y, label %.split.us.i6.i

bb.v:                                             ; preds = %bb.w
  %i.dq = add nuw i64 %.sroa.09.0.i.i21, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dq, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader46.i.i, %bb.v
  %.sroa.09.0.i.i21 = phi i64 [ %i.dq, %bb.v ], [ %.fr80.i.i, %.preheader46.i.i ] ; 4 uses
  %exitcond70.not.i.i = icmp eq i64 %.sroa.09.0.i.i21, %umax71.i.i
  br i1 %exitcond70.not.i.i, label %.split43.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.09.0.i.i21
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !55, !noalias !52, !noundef !5
  %i.dt = add i64 %.sroa.09.0.i.i21, %i.df        ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.cf
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !54, !noalias !52, !noundef !5
  %.not20.i.i = icmp eq i8 %i.ds, %i.dw
  br i1 %.not20.i.i, label %bb.v, label %bb.x

.split43.i.i:                                     ; preds = %.lr.ph22
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %umax71.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !57
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.dx = sub i64 %.sink99.i.i24, %i.dd
  br label %bb.t

bb.y:                                             ; preds = %.lr.ph19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.do
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !55, !noalias !52, !noundef !5
  %i.ea = add nuw i64 %i.do, %i.df                ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.cf
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !54, !noalias !52, !noundef !5
  %.not21.i.i = icmp eq i8 %i.dz, %i.ed
  br i1 %.not21.i.i, label %bb.u, label %bb.z

.split.us.i6.i:                                   ; preds = %.lr.ph19
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !57
  unreachable

bb.z:                                             ; preds = %bb.y
  %.neg.i.i = sub i64 %.sink99.i.i24, %.fr80.i.i
  %i.ee = add i64 %.neg.i.i, %i.do
  br label %bb.t

bb.aa:                                            ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %.promoted.i7.i = load i64, ptr %i.ck, align 8, !alias.scope !61 ; 3 uses
  %i.ef = sub i64 %.promoted.i7.i, %i.cj          ; 5 uses
  %i.eg = icmp ult i64 %i.ef, %i.cf
  br i1 %i.eg, label %.lr.ph.i10.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.lr.ph.i10.i:                                     ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !61, !noundef !5 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !61
  %.fr160.i = freeze i64 %i.ek                    ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !61 ; 2 uses
  %umax71.i11.i = tail call i64 @llvm.umax.i64(i64 %.fr160.i, i64 range(i64 0, -9223372036854775808) %i.cj) ; 3 uses
  %i.en = add i64 %.fr160.i, -1                   ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.en, %i.cj
  br i1 %.first_iter.i.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.i10.split.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i10.i
  %.not19.us.i.us.us.i29 = icmp eq i64 %.fr160.i, 0
  %exitcond72.not.i.us.i32.not = icmp ult i64 %.fr160.i, %i.cj
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.ac
  %.sink.i13.us.i36 = phi i64 [ %.sink.i13.us.i, %bb.ac ], [ %.promoted.i7.i, %.lr.ph.split.us.i.us.i.preheader ] ; 2 uses
  %i.eo = phi i64 [ %i.fl, %bb.ac ], [ %i.ef, %.lr.ph.split.us.i.us.i.preheader ] ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %i.er = and i8 %i.eq, 63
  %i.es = zext nneg i8 %i.er to i64
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.ei
  %.not.us.i.us.i = icmp eq i64 %i.eu, 0
  br i1 %.not.us.i.us.i, label %bb.ac, label %.preheader45.i.us.us.i.preheader

.preheader45.i.us.us.i.preheader:                 ; preds = %.lr.ph.split.us.i.us.i
  br i1 %.not19.us.i.us.us.i29, label %.preheader.i.us.i.preheader, label %.lr.ph31

.preheader45.i.us.us.i:                           ; preds = %.lr.ph31
  %.not19.us.i.us.us.i = icmp eq i64 %i.ev, 0
  br i1 %.not19.us.i.us.us.i, label %.preheader.i.us.i.preheader, label %.lr.ph31

.preheader.i.us.i.preheader:                      ; preds = %.preheader45.i.us.us.i, %.preheader45.i.us.us.i.preheader
  br i1 %exitcond72.not.i.us.i32.not, label %.lr.ph34, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.lr.ph31:                                         ; preds = %.preheader45.i.us.us.i.preheader, %.preheader45.i.us.us.i
  %.sroa.2.0.us.i.us.us.i30 = phi i64 [ %i.ev, %.preheader45.i.us.us.i ], [ %.fr160.i, %.preheader45.i.us.us.i.preheader ]
  %i.ev = add i64 %.sroa.2.0.us.i.us.us.i30, -1   ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !60, !noalias !52, !noundef !5
  %i.ey = add i64 %i.ev, %i.eo                    ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.cf
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ey
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %.not21.us.i.us.us.i = icmp eq i8 %i.ex, %i.fb
  br i1 %.not21.us.i.us.us.i, label %.preheader45.i.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph31
  %.neg.us.i.us.i = sub i64 %.sink.i13.us.i36, %.fr160.i
  %i.fc = add i64 %.neg.us.i.us.i, %i.ev
  br label %bb.ac

.preheader.i.us.i:                                ; preds = %.lr.ph34
  %i.fd = add i64 %.sroa.09.0.us.i.us.i33, 1      ; 2 uses
  %exitcond72.not.i.us.i = icmp eq i64 %i.fd, %umax71.i11.i
  br i1 %exitcond72.not.i.us.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader.i.us.i.preheader, %.preheader.i.us.i
  %.sroa.09.0.us.i.us.i33 = phi i64 [ %i.fd, %.preheader.i.us.i ], [ %.fr160.i, %.preheader.i.us.i.preheader ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.09.0.us.i.us.i33
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !60, !noalias !52, !noundef !5
  %i.fg = add i64 %.sroa.09.0.us.i.us.i33, %i.eo  ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.cf
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fg
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %.not20.us.i.us.i = icmp eq i8 %i.ff, %i.fj
  br i1 %.not20.us.i.us.i, label %.preheader.i.us.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph34
  %i.fk = sub i64 %.sink.i13.us.i36, %i.em
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.split.us.us.i, %.lr.ph.split.us.i.us.i
  %.sink.i13.us.i = phi i64 [ %i.fc, %.split.us.us.i ], [ %i.fk, %bb.ab ], [ %i.eo, %.lr.ph.split.us.i.us.i ] ; 2 uses
  %i.fl = sub i64 %.sink.i13.us.i, %i.cj          ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.cf
  br i1 %i.fm, label %.lr.ph.split.us.i.us.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.lr.ph.i10.split.i:                               ; preds = %.lr.ph.i10.i
  %.not19.us.i.i = icmp eq i64 %.fr160.i, 0
  br i1 %.not19.us.i.i, label %.lr.ph.split.us.i.us93.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.us93.i.preheader:               ; preds = %.lr.ph.i10.split.i
  %exitcond72.not.i.us98.i24 = icmp eq i64 %umax71.i11.i, 0
  br label %.lr.ph.split.us.i.us93.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i10.split.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ef
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %i.ei
  %.not.us.i.i34 = icmp eq i64 %i.fs, 0
  br i1 %.not.us.i.i34, label %.lr.ph, label %.split.us.i12.i

.lr.ph.split.us.i.us93.i:                         ; preds = %.lr.ph.split.us.i.us93.i.preheader, %bb.ae
  %i.ft = phi i64 [ %i.gj, %bb.ae ], [ %i.ef, %.lr.ph.split.us.i.us93.i.preheader ] ; 6 uses
  %i.fu = phi i64 [ %.sink.i13.us100.i, %bb.ae ], [ %.promoted.i7.i, %.lr.ph.split.us.i.us93.i.preheader ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.ei
  %.not.us.i.us94.i = icmp eq i64 %i.ga, 0
  br i1 %.not.us.i.us94.i, label %bb.ae, label %.preheader.i.us96.i.preheader

.preheader.i.us96.i.preheader:                    ; preds = %.lr.ph.split.us.i.us93.i
  br i1 %exitcond72.not.i.us98.i24, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %.lr.ph26

.preheader.i.us96.i:                              ; preds = %.lr.ph26
  %i.gb = add nuw i64 %.sroa.09.0.us.i.us97.i25, 1 ; 2 uses
  %exitcond72.not.i.us98.i = icmp eq i64 %i.gb, %umax71.i11.i
  br i1 %exitcond72.not.i.us98.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader.i.us96.i.preheader, %.preheader.i.us96.i
  %.sroa.09.0.us.i.us97.i25 = phi i64 [ %i.gb, %.preheader.i.us96.i ], [ 0, %.preheader.i.us96.i.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.09.0.us.i.us97.i25
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !60, !noalias !52, !noundef !5
  %i.ge = add nuw i64 %.sroa.09.0.us.i.us97.i25, %i.ft ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.cf
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %.not20.us.i.us99.i = icmp eq i8 %i.gd, %i.gh
  br i1 %.not20.us.i.us99.i, label %.preheader.i.us96.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph26
  %i.gi = sub i64 %i.fu, %i.em
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.us.i.us93.i
  %.sink.i13.us100.i = phi i64 [ %i.ft, %.lr.ph.split.us.i.us93.i ], [ %i.gi, %bb.ad ] ; 2 uses
  %i.gj = sub i64 %.sink.i13.us100.i, %i.cj       ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.cf
  br i1 %i.gk, label %.lr.ph.split.us.i.us93.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gs
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !59, !noalias !52, !noundef !5
  %i.gn = and i8 %i.gm, 63
  %i.go = zext nneg i8 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %i.gq = and i64 %i.gp, %i.ei
  %.not.us.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.us.i.i, label %.lr.ph, label %.split.us.i12.i

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i
  %i.gr = phi i64 [ %i.gs, %.lr.ph.split.us.i.i ], [ %i.ef, %.lr.ph.split.us.i.i.preheader ]
  %i.gs = sub i64 %i.gr, %i.cj                    ; 3 uses
  %i.gt = icmp ult i64 %i.gs, %i.cf
  br i1 %i.gt, label %.lr.ph.split.us.i.i, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

.split.us.i12.i:                                  ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !62
  unreachable

_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit: ; preds = %bb.t, %.preheader46.i.i, %bb.v, %.lr.ph, %bb.ae, %.preheader.i.us96.i.preheader, %.preheader.i.us96.i, %bb.ac, %.preheader.i.us.i.preheader, %.preheader.i.us.i, %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i, %.split.us.i, %bb.aa, %bb.r, %bb.g, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel, %.preheader.i, %bb.m, %bb.p
  %.sroa.4.1 = phi i64 [ undef, %.preheader.i ], [ undef, %bb.r ], [ undef, %.lr.ph ], [ undef, %bb.m ], [ %spec.select, %bb.p ], [ %i.eo, %.preheader.i.us.i ], [ undef, %bb.aa ], [ %i.ft, %bb.ae ], [ 0, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel ], [ 0, %.split.us.i ], [ %.promoted105.i, %bb.g ], [ %i.ft, %.preheader.i.us96.i ], [ %i.df, %bb.v ], [ %i.eo, %bb.ac ], [ %i.bd, %bb.l ], [ %i.bd, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i ], [ %i.bd, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i ], [ %i.bd, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i ], [ %i.eo, %.preheader.i.us.i.preheader ], [ %i.ft, %.preheader.i.us96.i.preheader ], [ %i.df, %.preheader46.i.i ], [ %i.df, %bb.t ]
  %storemerge.i.sink.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.r ], [ 0, %.lr.ph ], [ 0, %bb.m ], [ %i.cs, %bb.p ], [ 1, %.preheader.i.us.i ], [ 0, %bb.aa ], [ 0, %bb.ae ], [ 1, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel ], [ %spec.select116, %.split.us.i ], [ 1, %bb.g ], [ 1, %.preheader.i.us96.i ], [ 1, %bb.v ], [ 1, %.preheader.i.us.i.preheader ], [ 1, %bb.l ], [ 1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit19.i.i.us.i ], [ 1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit21.i.i.us.i ], [ 1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsa9sSWSfjDbm_4jiff.exit17.i.i.us.i ], [ 0, %bb.ac ], [ 1, %.preheader.i.us96.i.preheader ], [ 0, %bb.t ], [ 1, %.preheader46.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gu = insertvalue { i64, i64 } poison, i64 %storemerge.i.sink.i, 0
  %i.gv = insertvalue { i64, i64 } %i.gu, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.gv
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden noundef ptr @_RINvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5Error4pathRNtNtCsaL1QbXo9JQH_3std4path4PathEB7_(ptr noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !range !7, !noalias !84, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !8, !noalias !84, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i, !prof !9

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8, !noalias !84
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #21
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %bb.b
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !noalias !84, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsa9sSWSfjDbm_4jiff.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !85
  br label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsa9sSWSfjDbm_4jiff.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.c, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  store i64 1, ptr %i.a, align 8, !noalias !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.m, align 8, !noalias !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.n, align 8, !noalias !86
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 9, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.g, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.j, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !87
  %i.o = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !87 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.h, !prof !9

bb.e:                                             ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsa9sSWSfjDbm_4jiff.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.f, !noalias !86

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.i unwind label %bb.g, !noalias !86

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !86
  unreachable

bb.h:                                             ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsa9sSWSfjDbm_4jiff.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86
  %i.s = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %0, ptr noundef nonnull %i.o)
  ret ptr %i.s

.body:                                            ; preds = %bb.j, %bb.i, %bb.k
  resume { ptr, i32 } %eh.lpad-body.ph

bb.i:                                             ; preds = %bb.d, %bb.f
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.q, %bb.f ]
  %i.t = icmp eq ptr %0, null
  br i1 %i.t, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !88
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !99, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !100
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #23
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.d = load i64, ptr %i.a, align 8, !range !7, !alias.scope !114, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_0
