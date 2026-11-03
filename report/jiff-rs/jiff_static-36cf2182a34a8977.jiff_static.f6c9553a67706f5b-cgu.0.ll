Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_static-36cf2182a34a8977.jiff_static.f6c9553a67706f5b-cgu.0?download=true
inline.NumInlined: 263
inline.NumDeleted: 162
begin_hunk_0_@_RNvMCslbDAsNdhiVr_11jiff_staticNtB2_7Include14from_path_only:bb.a
  br i1 %i.p, label %.split.us.i.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph.preheader.i.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted105.i.i, %i.l
  br i1 %.not.i.i.us.i.peel.i, label %bb.b, label %.split.i.i.us.i.peel.i

.split.i.i.us.i.peel.i:                           ; preds = %.lr.ph41.i
  %i.q = icmp eq i64 %.promoted105.i.i, %i.l
  br i1 %i.q, label %bb.c, label %.split115.us.i.i

bb.b:                                             ; preds = %.lr.ph41.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted105.i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !429, !noalias !430, !noundef !4
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %bb.c, label %.split115.us.i.i

bb.c:                                             ; preds = %bb.b, %.split.i.i.us.i.peel.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.promoted105.i.i ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !noalias !431, !noundef !4 ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.f, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.peel.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.peel.i: ; preds = %bb.c
  %i.y = icmp ne i64 %.promoted105.i.i, 1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -2
  %i.aa = load i8, ptr %i.z, align 1, !noalias !431, !noundef !4 ; 3 uses
  %i.ab = and i8 %i.aa, 31
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = icmp slt i8 %i.aa, -64
  br i1 %i.ad, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.peel.i, label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.peel.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.peel.i
  %i.ae = icmp ne i64 %.promoted105.i.i, 2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.ag = load i8, ptr %i.af, align 1, !noalias !431, !noundef !4 ; 3 uses
  %i.ah = and i8 %i.ag, 15
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = icmp slt i8 %i.ag, -64
  br i1 %i.aj, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.peel.i, label %bb.d

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.peel.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.peel.i
  %i.ak = icmp ne i64 %.promoted105.i.i, 3
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.am = load i8, ptr %i.al, align 1, !noalias !431, !noundef !4
  %i.an = and i8 %i.am, 7
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 6
  %i.aq = and i8 %i.ag, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.peel.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.peel.i
  %.sroa.010.1.i.i.us.i.peel.i = phi i32 [ %i.as, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.peel.i ], [ %i.ai, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.peel.i ]
  %i.at = shl nuw nsw i32 %.sroa.010.1.i.i.us.i.peel.i, 6
  %i.au = and i8 %i.aa, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.peel.i
  %.sroa.010.0.i.i.us.i.peel.i = phi i32 [ %i.aw, %bb.d ], [ %i.ac, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.peel.i ]
  %i.ax = shl nuw nsw i32 %.sroa.010.0.i.i.us.i.peel.i, 6
  %i.ay = and i8 %i.w, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bb = zext nneg i8 %i.w to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.us.i.peel.i = phi i32 [ %i.bb, %bb.f ], [ %i.ba, %bb.e ] ; 4 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  br i1 %i.o, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i, 128
  br i1 %i.bd, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i, 2048
  br i1 %i.be, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i, 65536
  %..i.us.i.peel.i = select i1 %i.bf, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i

_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.neg.i.us.i.peel.i = phi i64 [ -2, %bb.i ], [ %..i.us.i.peel.i, %bb.j ], [ -1, %bb.h ]
  %i.bg = add i64 %.sroa.01.0.neg.i.us.i.peel.i, %.promoted105.i.i ; 14 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.peel.next.i

.peel.next.i:                                     ; preds = %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i
  %.not.i.i.us.i.i = icmp ult i64 %i.bg, %i.l
  br i1 %.not.i.i.us.i.i, label %bb.k, label %.split.i.i.us.i.i

.split.i.i.us.i.i:                                ; preds = %.peel.next.i
  %i.bi = icmp eq i64 %i.bg, %i.l
  br i1 %i.bi, label %bb.l, label %.split115.us.i.i

bb.k:                                             ; preds = %.peel.next.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !429, !noalias !432, !noundef !4
  %i.bl = icmp sgt i8 %i.bk, -65
  br i1 %i.bl, label %bb.l, label %.split115.us.i.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.us.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !433, !noundef !4
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i: ; preds = %bb.l
  %i.bq = icmp ne i64 %i.bg, 1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 -2
  %i.bs = load i8, ptr %i.br, align 1, !noalias !433, !noundef !4
  %i.bt = icmp slt i8 %i.bs, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i
  %i.bu = icmp ne i64 %i.bg, 2
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bm, i64 -3
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !433, !noundef !4
  %i.bx = icmp slt i8 %i.bw, -64
  br i1 %i.bx, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i
  %i.by = icmp ne i64 %i.bg, 3
  tail call void @llvm.assume(i1 %i.by)
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17

.split.us.i.i:                                    ; preds = %.lr.ph.preheader.i.i
  %.pre = trunc i8 %.promoted153.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  br i1 %.pre, label %bb.ae, label %.split

.split115.us.i.i:                                 ; preds = %bb.k, %.split.i.i.us.i.i, %bb.b, %.split.i.i.us.i.peel.i
  %.lcssa47.i = phi i64 [ %.promoted105.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted105.i.i, %bb.b ], [ %i.bg, %.split.i.i.us.i.i ], [ %i.bg, %bb.k ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef 0, i64 noundef %.lcssa47.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #23, !noalias !432
  unreachable

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.m:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !428, !noalias !427, !noundef !4 ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !428, !noalias !427, !noundef !4
  %i.ce = icmp eq i64 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !428, !noalias !427, !nonnull !4, !noundef !4 ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !428, !noalias !427, !noundef !4 ; 11 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !428, !noalias !427, !nonnull !4, !noundef !4 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !428, !noalias !427, !noundef !4 ; 16 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.ce, label %bb.z, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !428, !noalias !427, !noundef !4 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ca, %i.cp
  br i1 %.not.i.i, label %bb.p, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit, !prof !434

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ca, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #23, !noalias !435
  unreachable

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %.promoted.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !439, !noalias !427 ; 2 uses
  %i.cq = sub i64 %.promoted.i.i.i, %i.cm         ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.ci
  br i1 %i.cr, label %.lr.ph.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !439, !noalias !427, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !439, !noalias !427
  %.fr80.i.i.i = freeze i64 %i.cv                 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !439, !noalias !427 ; 2 uses
  %umax71.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr80.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cm) ; 2 uses
  %.promoted36.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !439, !noalias !427
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.s, %.lr.ph.i.i.i
  %.sink99.i.i24.i = phi i64 [ %.sink99.i.i.i, %bb.s ], [ %.promoted.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cz = phi i64 [ %.sink98.i.i.i, %bb.s ], [ %.promoted36.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.da = phi i64 [ %i.dh, %bb.s ], [ %i.cq, %.lr.ph.i.i.i ] ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !437, !noalias !435, !noundef !4
  %i.dd = and i8 %i.dc, 63
  %i.de = zext nneg i8 %i.dd to i64
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.ct
  %.not.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i.i.i
  %..i.i5.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cz, i64 %.fr80.i.i.i) ; 2 uses
  %.not19.i.i.i107 = icmp eq i64 %..i.i5.i.i, 0
  br i1 %.not19.i.i.i107, label %.preheader46.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.y, %bb.w, %.lr.ph.split.i.i.i
  %.sink99.i.i.i = phi i64 [ %i.dz, %bb.y ], [ %i.ds, %bb.w ], [ %i.da, %.lr.ph.split.i.i.i ] ; 2 uses
  %.sink98.i.i.i = phi i64 [ %i.cm, %bb.y ], [ %i.cy, %bb.w ], [ %i.cm, %.lr.ph.split.i.i.i ]
  %i.dh = sub i64 %.sink99.i.i.i, %i.cm           ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.ci
  br i1 %i.di, label %.lr.ph.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

bb.t:                                             ; preds = %bb.x
  %.not19.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not19.i.i.i, label %.preheader46.i.i.i, label %.lr.ph

.preheader46.i.i.i:                               ; preds = %bb.t, %bb.r
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %.fr80.i.i.i)
  %exitcond.not.i.i.i109.not = icmp ult i64 %.fr80.i.i.i, %i.cz
  br i1 %exitcond.not.i.i.i109.not, label %.lr.ph111, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.sroa.2.0.i.i.i108 = phi i64 [ %i.dj, %bb.t ], [ %..i.i5.i.i, %bb.r ]
  %i.dj = add i64 %.sroa.2.0.i.i.i108, -1         ; 7 uses
  %i.dk = icmp ult i64 %i.dj, %i.cm
  br i1 %i.dk, label %bb.x, label %.split.us.i6.i.i

bb.u:                                             ; preds = %bb.v
  %i.dl = add nuw i64 %.sroa.09.0.i.i.i110, 1     ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dl, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader46.i.i.i, %bb.u
  %.sroa.09.0.i.i.i110 = phi i64 [ %i.dl, %bb.u ], [ %.fr80.i.i.i, %.preheader46.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i110, %umax71.i.i.i
  br i1 %exitcond70.not.i.i.i, label %.split43.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph111
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.09.0.i.i.i110
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !438, !noalias !435, !noundef !4
  %i.do = add i64 %.sroa.09.0.i.i.i110, %i.da     ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.ci
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !437, !noalias !435, !noundef !4
  %.not20.i.i.i = icmp eq i8 %i.dn, %i.dr
  br i1 %.not20.i.i.i, label %bb.u, label %bb.w

.split43.i.i.i:                                   ; preds = %.lr.ph111
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %umax71.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !440
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ds = sub i64 %.sink99.i.i24.i, %i.cy
  br label %bb.s

bb.x:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dj
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !438, !noalias !435, !noundef !4
  %i.dv = add nuw i64 %i.dj, %i.da                ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.ci
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !437, !noalias !435, !noundef !4
  %.not21.i.i.i = icmp eq i8 %i.du, %i.dy
  br i1 %.not21.i.i.i, label %bb.t, label %bb.y

.split.us.i6.i.i:                                 ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef range(i64 0, -9223372036854775808) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !440
  unreachable

bb.y:                                             ; preds = %bb.x
  %.neg.i.i.i = sub i64 %.sink99.i.i24.i, %.fr80.i.i.i
  %i.dz = add i64 %.neg.i.i.i, %i.dj
  br label %bb.s

bb.z:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %.promoted.i7.i.i = load i64, ptr %i.cn, align 8, !alias.scope !444, !noalias !427 ; 3 uses
  %i.ea = sub i64 %.promoted.i7.i.i, %i.cm        ; 5 uses
  %i.eb = icmp ult i64 %i.ea, %i.ci
  br i1 %i.eb, label %.lr.ph.i10.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.lr.ph.i10.i.i:                                   ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !444, !noalias !427, !noundef !4 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !444, !noalias !427
  %.fr160.i.i = freeze i64 %i.ef                  ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !444, !noalias !427 ; 2 uses
  %umax71.i11.i.i = tail call i64 @llvm.umax.i64(i64 %.fr160.i.i, i64 range(i64 0, -9223372036854775808) %i.cm) ; 3 uses
  %i.ei = add i64 %.fr160.i.i, -1                 ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.ei, %i.cm
  br i1 %.first_iter.i.i.i, label %.lr.ph.split.us.i.us.i.i.preheader, label %.lr.ph.i10.split.i.i

.lr.ph.split.us.i.us.i.i.preheader:               ; preds = %.lr.ph.i10.i.i
  %.not19.us.i.us.us.i.i118 = icmp eq i64 %.fr160.i.i, 0
  %exitcond72.not.i.us.i.i121.not = icmp ult i64 %.fr160.i.i, %i.cm
  br label %.lr.ph.split.us.i.us.i.i

.lr.ph.split.us.i.us.i.i:                         ; preds = %.lr.ph.split.us.i.us.i.i.preheader, %bb.ab
  %.sink.i13.us.i36.i = phi i64 [ %.sink.i13.us.i.i, %bb.ab ], [ %.promoted.i7.i.i, %.lr.ph.split.us.i.us.i.i.preheader ] ; 2 uses
  %i.ej = phi i64 [ %i.fg, %bb.ab ], [ %i.ea, %.lr.ph.split.us.i.us.i.i.preheader ] ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %i.em = and i8 %i.el, 63
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = and i64 %i.eo, %i.ed
  %.not.us.i.us.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.us.i.us.i.i, label %bb.ab, label %.preheader45.i.us.us.i.i.preheader

.preheader45.i.us.us.i.i.preheader:               ; preds = %.lr.ph.split.us.i.us.i.i
  br i1 %.not19.us.i.us.us.i.i118, label %.preheader.i.us.i.i.preheader, label %.lr.ph120

.preheader45.i.us.us.i.i:                         ; preds = %.lr.ph120
  %.not19.us.i.us.us.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not19.us.i.us.us.i.i, label %.preheader.i.us.i.i.preheader, label %.lr.ph120

.preheader.i.us.i.i.preheader:                    ; preds = %.preheader45.i.us.us.i.i, %.preheader45.i.us.us.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i121.not, label %.lr.ph123, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17

.lr.ph120:                                        ; preds = %.preheader45.i.us.us.i.i.preheader, %.preheader45.i.us.us.i.i
  %.sroa.2.0.us.i.us.us.i.i119 = phi i64 [ %i.eq, %.preheader45.i.us.us.i.i ], [ %.fr160.i.i, %.preheader45.i.us.us.i.i.preheader ]
  %i.eq = add i64 %.sroa.2.0.us.i.us.us.i.i119, -1 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !443, !noalias !435, !noundef !4
  %i.et = add i64 %i.eq, %i.ej                    ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.ci
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %.not21.us.i.us.us.i.i = icmp eq i8 %i.es, %i.ew
  br i1 %.not21.us.i.us.us.i.i, label %.preheader45.i.us.us.i.i, label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %.lr.ph120
  %.neg.us.i.us.i.i = sub i64 %.sink.i13.us.i36.i, %.fr160.i.i
  %i.ex = add i64 %.neg.us.i.us.i.i, %i.eq
  br label %bb.ab

.preheader.i.us.i.i:                              ; preds = %.lr.ph123
  %i.ey = add i64 %.sroa.09.0.us.i.us.i.i122, 1   ; 2 uses
  %exitcond72.not.i.us.i.i = icmp eq i64 %i.ey, %umax71.i11.i.i
  br i1 %exitcond72.not.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader.i.us.i.i.preheader, %.preheader.i.us.i.i
  %.sroa.09.0.us.i.us.i.i122 = phi i64 [ %i.ey, %.preheader.i.us.i.i ], [ %.fr160.i.i, %.preheader.i.us.i.i.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.09.0.us.i.us.i.i122
  %i.fa = load i8, ptr %i.ez, align 1, !alias.scope !443, !noalias !435, !noundef !4
  %i.fb = add i64 %.sroa.09.0.us.i.us.i.i122, %i.ej ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.ci
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %.not20.us.i.us.i.i = icmp eq i8 %i.fa, %i.fe
  br i1 %.not20.us.i.us.i.i, label %.preheader.i.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph123
  %i.ff = sub i64 %.sink.i13.us.i36.i, %i.eh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.us.i.i, %.lr.ph.split.us.i.us.i.i
  %.sink.i13.us.i.i = phi i64 [ %i.ex, %.split.us.us.i.i ], [ %i.ff, %bb.aa ], [ %i.ej, %.lr.ph.split.us.i.us.i.i ] ; 2 uses
  %i.fg = sub i64 %.sink.i13.us.i.i, %i.cm        ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ci
  br i1 %i.fh, label %.lr.ph.split.us.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.lr.ph.i10.split.i.i:                             ; preds = %.lr.ph.i10.i.i
  %.not19.us.i.i.i = icmp eq i64 %.fr160.i.i, 0
  br i1 %.not19.us.i.i.i, label %.lr.ph.split.us.i.us93.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i

.lr.ph.split.us.i.us93.i.i.preheader:             ; preds = %.lr.ph.i10.split.i.i
  %exitcond72.not.i.us98.i.i113 = icmp eq i64 %umax71.i11.i.i, 0
  br label %.lr.ph.split.us.i.us93.i.i

.lr.ph.split.us.i.i.preheader.i:                  ; preds = %.lr.ph.i10.split.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ea
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %i.fk = and i8 %i.fj, 63
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.ed
  %.not.us.i.i34.i = icmp eq i64 %i.fn, 0
  br i1 %.not.us.i.i34.i, label %.lr.ph.i, label %.split.us.i12.i.i

.lr.ph.split.us.i.us93.i.i:                       ; preds = %.lr.ph.split.us.i.us93.i.i.preheader, %bb.ad
  %i.fo = phi i64 [ %i.ge, %bb.ad ], [ %i.ea, %.lr.ph.split.us.i.us93.i.i.preheader ] ; 5 uses
  %i.fp = phi i64 [ %.sink.i13.us100.i.i, %bb.ad ], [ %.promoted.i7.i.i, %.lr.ph.split.us.i.us93.i.i.preheader ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fo
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %i.fs = and i8 %i.fr, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.ed
  %.not.us.i.us94.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.us.i.us94.i.i, label %bb.ad, label %.preheader.i.us96.i.i.preheader

.preheader.i.us96.i.i.preheader:                  ; preds = %.lr.ph.split.us.i.us93.i.i
  br i1 %exitcond72.not.i.us98.i.i113, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.lr.ph115

.preheader.i.us96.i.i:                            ; preds = %.lr.ph115
  %i.fw = add nuw i64 %.sroa.09.0.us.i.us97.i.i114, 1 ; 2 uses
  %exitcond72.not.i.us98.i.i = icmp eq i64 %i.fw, %umax71.i11.i.i
  br i1 %exitcond72.not.i.us98.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader.i.us96.i.i.preheader, %.preheader.i.us96.i.i
  %.sroa.09.0.us.i.us97.i.i114 = phi i64 [ %i.fw, %.preheader.i.us96.i.i ], [ 0, %.preheader.i.us96.i.i.preheader ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.09.0.us.i.us97.i.i114
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !443, !noalias !435, !noundef !4
  %i.fz = add nuw i64 %.sroa.09.0.us.i.us97.i.i114, %i.fo ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.ci
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %.not20.us.i.us99.i.i = icmp eq i8 %i.fy, %i.gc
  br i1 %.not20.us.i.us99.i.i, label %.preheader.i.us96.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph115
  %i.gd = sub i64 %i.fp, %i.eh
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.split.us.i.us93.i.i
  %.sink.i13.us100.i.i = phi i64 [ %i.fo, %.lr.ph.split.us.i.us93.i.i ], [ %i.gd, %bb.ac ] ; 2 uses
  %i.ge = sub i64 %.sink.i13.us100.i.i, %i.cm     ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.ci
  br i1 %i.gf, label %.lr.ph.split.us.i.us93.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.gn
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !442, !noalias !435, !noundef !4
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.ed
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %.lr.ph.i, label %.split.us.i12.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.split.us.i.i.preheader.i, %.lr.ph.split.us.i.i.i
  %i.gm = phi i64 [ %i.gn, %.lr.ph.split.us.i.i.i ], [ %i.ea, %.lr.ph.split.us.i.i.preheader.i ]
  %i.gn = sub i64 %i.gm, %i.cm                    ; 3 uses
  %i.go = icmp ult i64 %i.gn, %i.ci
  br i1 %i.go, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.split.us.i12.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.split.us.i.i.preheader.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef range(i64 0, -9223372036854775808) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !445
  unreachable

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread: ; preds = %bb.s, %.lr.ph.i, %bb.ad, %bb.ab, %.preheader.i.i, %bb.q, %bb.m, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  br label %.split

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17: ; preds = %.preheader46.i.i.i, %bb.u, %.preheader.i.us96.i.i.preheader, %.preheader.i.us96.i.i, %.preheader.i.us.i.i.preheader, %.preheader.i.us.i.i, %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.i, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i, %bb.g
  %.sroa.4.1.i.ph = phi i64 [ %i.bg, %bb.l ], [ 0, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i ], [ %i.da, %bb.u ], [ %.promoted105.i.i, %bb.g ], [ %i.ej, %.preheader.i.us.i.i.preheader ], [ %i.bg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.i ], [ %i.bg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i ], [ %i.bg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i ], [ %i.fo, %.preheader.i.us96.i.i.preheader ], [ %i.ej, %.preheader.i.us.i.i ], [ %i.fo, %.preheader.i.us96.i.i ], [ %i.da, %.preheader46.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  br label %bb.ae

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.o
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gq = load i8, ptr %i.gp, align 8, !alias.scope !428, !noalias !427, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !428, !noalias !427, !nonnull !4, !noundef !4
  %i.gt = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef %i.gq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef %i.ca), !noalias !435 ; 2 uses
  %i.gu = extractvalue { i64, i64 } %i.gt, 0
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = extractvalue { i64, i64 } %i.gt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !427
  br i1 %i.gv, label %bb.ae, label %.split

bb.ae:                                            ; preds = %.split.us.i.i, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit
  %.sroa.4.1.i20 = phi i64 [ %.sroa.4.1.i.ph, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17 ], [ %i.gw, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit ], [ 0, %.split.us.i.i ]
  %i.gx = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.4.1.i20, i64 9) ; 6 uses
  %.not.i = icmp ult i64 %i.gx, %2
  br i1 %.not.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %.split76

.split76:                                         ; preds = %bb.ae
  %i.gy = icmp eq i64 %i.gx, %2
  br i1 %i.gy, label %bb.af, label %bb.ag, !prof !10

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.ae
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !446, !noundef !4
  %i.hb = icmp sgt i8 %i.ha, -65
  br i1 %i.hb, label %bb.af, label %bb.ag, !prof !10

.split:                                           ; preds = %.split.us.i.i, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslbDAsNdhiVr_11jiff_static, ptr %.sroa.46.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hc, ptr noundef nonnull @9, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  br label %bb.ah

bb.af:                                            ; preds = %.split76, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.he = sub nuw i64 %2, %i.gx
  tail call fastcc void @_RNvMCslbDAsNdhiVr_11jiff_staticNtB2_7Include17from_path_with_id(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.ah

bb.ag:                                            ; preds = %.split76, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.gx, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

bb.ah:                                            ; preds = %.split, %bb.af
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCslbDAsNdhiVr_11jiff_staticNtB2_7Include17from_path_with_id(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [30 x i8], align 1                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [232 x i8], align 8               ; 7 uses
  %.sroa.69 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  store ptr %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %4, ptr %i.l, align 8
  %i.m = icmp ult i64 %2, 31                      ; 3 uses
  br i1 %i.m, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.f, i8 0, i64 30, i1 false)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %.7..7..7..sroa.588.sroa.5.0.copyload.pre = load ptr, ptr %.7..7..7..sroa_idx, align 1
  %.15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %.15..15..15..sroa.588.sroa.6.0.copyload.pre = load i64, ptr %.15..15..15..sroa_idx, align 1
  %.23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %.23..23..23..sroa.588.sroa.7.0.copyload.pre = load i56, ptr %.23..23..23..sroa_idx, align 1
  %i.n = zext i56 %.23..23..23..sroa.588.sroa.7.0.copyload.pre to i64
  br label %bb.b

bb.b:                                             ; preds = %.split.i, %.lr.ph.preheader.i
  %.23..23..sroa.588.sroa.7.0.copyload = phi i64 [ 0, %.split.i ], [ %i.n, %.lr.ph.preheader.i ]
  %.15..15..sroa.588.sroa.6.0.copyload = phi i64 [ 0, %.split.i ], [ %.15..15..15..sroa.588.sroa.6.0.copyload.pre, %.lr.ph.preheader.i ]
  %.7..7..sroa.588.sroa.5.0.copyload = phi ptr [ null, %.split.i ], [ %.7..7..7..sroa.588.sroa.5.0.copyload.pre, %.lr.ph.preheader.i ]
  %.sroa.524.sroa.7.30.insert.shift = shl nuw nsw i64 %2, 56
  %.sroa.524.sroa.7.30.insert.insert = or disjoint i64 %.sroa.524.sroa.7.30.insert.shift, %.23..23..sroa.588.sroa.7.0.copyload
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !471
  %i.o = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %2, i64 noundef 1) #18, !noalias !471 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.15.0 = phi i64 [ %.sroa.524.sroa.7.30.insert.insert, %bb.b ], [ undef, %bb.f ]
  %.sroa.12.0 = phi i64 [ %.15..15..sroa.588.sroa.6.0.copyload, %bb.b ], [ %2, %bb.f ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %.7..7..sroa.588.sroa.5.0.copyload, %bb.b ], [ %i.o, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 2, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNvNtCsaL1QbXo9JQH_3std2fs4read5inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %2) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %bb.k, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !range !7, !noundef !4 ; 7 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.s, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.u, ptr %i.e, align 8, !noalias !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !472
  store ptr %i.k, ptr %i.d, align 8, !noalias !472
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslbDAsNdhiVr_11jiff_static, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !472
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.v, align 8, !noalias !472
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !472
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @4, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val12.i = load ptr, ptr %i.e, align 8, !noalias !472, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbDAsNdhiVr_11jiff_static(ptr nonnull %.val12.i) #21
          to label %.body unwind label %bb.l, !noalias !473

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !472
  %.val11.i = load ptr, ptr %i.e, align 8, !noalias !472, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !472
  %i.x = ptrtoint ptr %.val11.i to i64            ; 2 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %bb.v
    i64 3, label %bb.j
    i64 0, label %bb.v
    i64 1, label %bb.k
  ], !prof !9

default.unreachable:                              ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i
  unreachable

bb.j:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i
  %i.z = icmp ult ptr %.val11.i, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.x, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  call void @llvm.assume(i1 %i.z)
  call void @llvm.assume(i1 %i.ab)
  br label %bb.v

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i
  %i.ac = getelementptr i8, ptr %.val11.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !474, !noalias !472
  store i8 3, ptr %i.c, align 8, !alias.scope !474, !noalias !472
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.v unwind label %bb.g

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
end_hunk_0
