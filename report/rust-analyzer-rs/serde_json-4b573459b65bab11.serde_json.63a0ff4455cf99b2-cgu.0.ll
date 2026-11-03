Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/serde_json-4b573459b65bab11.serde_json.63a0ff4455cf99b2-cgu.0?download=true
inline.NumInlined: 141
inline.NumDeleted: 79
begin_hunk_0_@_RNvNtCs8yjYO7b73r2_10serde_json5error10make_error:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.k = load i8, ptr %i.j, align 2, !range !7, !alias.scope !263, !noalias !261, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !263, !noalias !261, !nonnull !6, !noundef !6 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !263, !noalias !261, !noundef !6 ; 8 uses
  %.promoted.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !263, !noalias !261
  %.promoted60.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !263, !noalias !261 ; 12 uses
  %i.s = trunc i8 %.promoted.i.i.i to i1          ; 2 uses
  %i.t = icmp eq i64 %.promoted60.i.i.i, 0
  br i1 %i.t, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted60.i.i.i, %i.r
  br i1 %.not.i.i.i.peel.i.i, label %bb.b, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %.lr.ph.i.i
  %i.u = icmp eq i64 %.promoted60.i.i.i, %i.r
  br i1 %i.u, label %bb.c, label %.loopexit.i.i.invoke

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.promoted60.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !264, !noalias !265, !noundef !6
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.c, label %.loopexit.i.i.invoke

bb.c:                                             ; preds = %bb.b, %.split.i.i.i.peel.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %.promoted60.i.i.i ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !266, !noundef !6 ; 3 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.f, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.peel.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.peel.i.i: ; preds = %bb.c
  %i.ac = icmp ne i64 %.promoted60.i.i.i, 1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !266, !noundef !6 ; 3 uses
  %i.af = and i8 %i.ae, 31
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = icmp slt i8 %i.ae, -64
  br i1 %i.ah, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.peel.i.i, label %bb.e

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.peel.i.i
  %i.ai = icmp ne i64 %.promoted60.i.i.i, 2
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !266, !noundef !6 ; 3 uses
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i32
  %i.an = icmp slt i8 %i.ak, -64
  br i1 %i.an, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.peel.i.i, label %bb.d

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.peel.i.i
  %i.ao = icmp ne i64 %.promoted60.i.i.i, 3
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !266, !noundef !6
  %i.ar = and i8 %i.aq, 7
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 6
  %i.au = and i8 %i.ak, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.peel.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.peel.i.i
  %.sroa.010.1.i.i.i.peel.i.i = phi i32 [ %i.aw, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.peel.i.i ], [ %i.am, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.peel.i.i ]
  %i.ax = shl nuw nsw i32 %.sroa.010.1.i.i.i.peel.i.i, 6
  %i.ay = and i8 %i.ae, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.peel.i.i
  %.sroa.010.0.i.i.i.peel.i.i = phi i32 [ %i.ba, %bb.d ], [ %i.ag, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.peel.i.i ]
  %i.bb = shl nuw nsw i32 %.sroa.010.0.i.i.i.peel.i.i, 6
  %i.bc = and i8 %i.aa, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bf = zext nneg i8 %i.aa to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.i.peel.i.i = phi i32 [ %i.bf, %bb.f ], [ %i.be, %bb.e ] ; 4 uses
  %i.bg = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bg)
  br i1 %i.s, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 128
  br i1 %i.bh, label %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bi, label %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.bj, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i

_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.neg.i.i.peel.i.i = phi i64 [ -2, %bb.i ], [ %..i.i.peel.i.i, %bb.j ], [ -1, %bb.h ]
  %i.bk = add i64 %.sroa.01.0.neg.i.i.peel.i.i, %.promoted60.i.i.i ; 14 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %.peel.next.i.i

bb.k:                                             ; preds = %.noexc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !262, !noalias !261, !noundef !6
  %i.bo = icmp eq i64 %i.bn, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !262, !noalias !261, !nonnull !6, !noundef !6 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !262, !noalias !261, !noundef !6 ; 11 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !262, !noalias !261, !nonnull !6, !noundef !6 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !262, !noalias !261, !noundef !6 ; 14 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.n

.peel.next.i.i:                                   ; preds = %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %.not.i.i.i.i.i = icmp ult i64 %i.bk, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.l, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.peel.next.i.i
  %i.by = icmp eq i64 %i.bk, %i.r
  br i1 %i.by, label %bb.m, label %.loopexit.i.i.invoke

bb.l:                                             ; preds = %.peel.next.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bk
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !264, !noalias !268, !noundef !6
  %i.cb = icmp sgt i8 %i.ca, -65
  br i1 %i.cb, label %bb.m, label %.loopexit.i.i.invoke

bb.m:                                             ; preds = %bb.l, %.split.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bk ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !269, !noundef !6
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.i.i: ; preds = %bb.m
  %i.cg = icmp ne i64 %i.bk, 1
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 -2
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !269, !noundef !6
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.i.i
  %i.ck = icmp ne i64 %i.bk, 2
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds i8, ptr %i.cc, i64 -3
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !269, !noundef !6
  %i.cn = icmp slt i8 %i.cm, -64
  br i1 %i.cn, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.i.i
  %i.co = icmp ne i64 %i.bk, 3
  tail call void @llvm.assume(i1 %i.co)
  br label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i

.loopexit.i.i.invoke:                             ; preds = %.split.i.i, %bb.ae, %.split.i45.i, %bb.ap, %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i, %bb.be, %bb.au, %bb.ay, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit37.i, %.split.i40.i, %bb.aj, %.split.i.i.i.peel.i.i, %bb.b, %.split.i.i.i.i.i, %bb.l
  %i.cp = phi ptr [ %i.e, %bb.au ], [ %i.p, %.split.i.i.i.peel.i.i ], [ %i.e, %bb.ay ], [ %i.e, %.split.i40.i ], [ %i.e, %bb.be ], [ %i.p, %bb.l ], [ %i.p, %.split.i.i.i.i.i ], [ %i.p, %bb.b ], [ %i.e, %.split.i45.i ], [ %i.e, %bb.aj ], [ %i.e, %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.e, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit37.i ], [ %i.e, %bb.ap ], [ %i.e, %bb.ae ], [ %i.e, %.split.i.i ]
  %i.cq = phi i64 [ %i.g, %bb.au ], [ %i.r, %.split.i.i.i.peel.i.i ], [ %i.g, %bb.ay ], [ %i.g, %.split.i40.i ], [ %i.g, %bb.be ], [ %i.r, %bb.l ], [ %i.r, %.split.i.i.i.i.i ], [ %i.r, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.aj ], [ %i.g, %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.g, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.ap ], [ %i.g, %bb.ae ], [ %i.g, %.split.i.i ]
  %i.cr = phi i64 [ %i.gv, %bb.au ], [ 0, %.split.i.i.i.peel.i.i ], [ %i.gv, %bb.ay ], [ %.sroa.03.0.lcssa169.i, %.split.i40.i ], [ %i.hm, %bb.be ], [ 0, %bb.l ], [ 0, %.split.i.i.i.i.i ], [ 0, %bb.b ], [ %.sroa.010.0.i, %.split.i45.i ], [ %.sroa.03.0.lcssa169.i, %bb.aj ], [ %i.hm, %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.gv, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit37.i ], [ %.sroa.010.0.i, %bb.ap ], [ %.sroa.03.0.i, %bb.ae ], [ %.sroa.03.0.i, %.split.i.i ]
  %i.cs = phi i64 [ %.sroa.03.0.lcssa169.i, %bb.au ], [ %.promoted60.i.i.i, %.split.i.i.i.peel.i.i ], [ %.sroa.03.0.lcssa169.i, %bb.ay ], [ %i.g, %.split.i40.i ], [ %.sroa.010.0.lcssa166213.i, %bb.be ], [ %i.bk, %bb.l ], [ %i.bk, %.split.i.i.i.i.i ], [ %.promoted60.i.i.i, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.aj ], [ %.sroa.010.0.lcssa166213.i, %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %.sroa.03.0.lcssa169.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.ap ], [ %i.g, %bb.ae ], [ %i.g, %.split.i.i ]
  %i.ct = phi ptr [ @19, %bb.au ], [ @58, %.split.i.i.i.peel.i.i ], [ @19, %bb.ay ], [ @16, %.split.i40.i ], [ @20, %bb.be ], [ @58, %bb.l ], [ @58, %.split.i.i.i.i.i ], [ @58, %bb.b ], [ @18, %.split.i45.i ], [ @16, %bb.aj ], [ @20, %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ @19, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit37.i ], [ @18, %bb.ap ], [ @15, %bb.ae ], [ @15, %.split.i.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq, i64 noundef %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #20
          to label %.loopexit.i.i.cont unwind label %bb.bq

.loopexit.i.i.cont:                               ; preds = %.loopexit.i.i.invoke
  unreachable

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %.promoted.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !273, !noalias !261 ; 2 uses
  %i.cu = sub i64 %.promoted.i.i.i.i, %i.bw       ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.bs
  br i1 %i.cv, label %.lr.ph.i1.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i

.lr.ph.i1.i.i.i:                                  ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !273, !noalias !261, !noundef !6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !273, !noalias !261
  %.fr80.i.i.i.i = freeze i64 %i.cz               ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !273, !noalias !261 ; 2 uses
  %umax71.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr80.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %.promoted36.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !273, !noalias !261
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.p, %.lr.ph.i1.i.i.i
  %.sink99.i.i29.i.i = phi i64 [ %.sink99.i.i.i.i, %bb.p ], [ %.promoted.i.i.i.i, %.lr.ph.i1.i.i.i ] ; 2 uses
  %i.dd = phi i64 [ %.sink98.i.i.i.i, %bb.p ], [ %.promoted36.i.i.i.i, %.lr.ph.i1.i.i.i ] ; 3 uses
  %i.de = phi i64 [ %i.dl, %bb.p ], [ %i.cu, %.lr.ph.i1.i.i.i ] ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !271, !noalias !274, !noundef !6
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.cx
  %.not.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i.i.i
  %..i.i2.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dd, i64 %.fr80.i.i.i.i) ; 2 uses
  %.not19.i.i.i.i187 = icmp eq i64 %..i.i2.i.i.i, 0
  br i1 %.not19.i.i.i.i187, label %.preheader46.i.i.i.i, label %.lr.ph

bb.p:                                             ; preds = %bb.v, %bb.t, %.lr.ph.split.i.i.i.i
  %.sink99.i.i.i.i = phi i64 [ %i.ef, %bb.v ], [ %i.dy, %bb.t ], [ %i.de, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.sink98.i.i.i.i = phi i64 [ %i.bw, %bb.v ], [ %i.dc, %bb.t ], [ %i.bw, %.lr.ph.split.i.i.i.i ]
  %i.dl = sub i64 %.sink99.i.i.i.i, %i.bw         ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.bs
  br i1 %i.dm, label %.lr.ph.split.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i

bb.q:                                             ; preds = %bb.u
  %.not19.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not19.i.i.i.i, label %.preheader46.i.i.i.i, label %.lr.ph

.preheader46.i.i.i.i:                             ; preds = %bb.q, %bb.o
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 %.fr80.i.i.i.i)
  %exitcond.not.i.i.i.i189.not = icmp ult i64 %.fr80.i.i.i.i, %i.dd
  br i1 %exitcond.not.i.i.i.i189.not, label %.lr.ph191, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i

.lr.ph:                                           ; preds = %bb.o, %bb.q
  %.sroa.2.0.i.i.i.i188 = phi i64 [ %i.dn, %bb.q ], [ %..i.i2.i.i.i, %bb.o ]
  %i.dn = add i64 %.sroa.2.0.i.i.i.i188, -1       ; 7 uses
  %i.do = icmp ult i64 %i.dn, %i.bw
  br i1 %i.do, label %bb.u, label %.split43.i.i.i.i.invoke

bb.r:                                             ; preds = %bb.s
  %i.dp = add nuw i64 %.sroa.09.0.i.i.i.i190, 1   ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dp, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %.lr.ph191

.lr.ph191:                                        ; preds = %.preheader46.i.i.i.i, %bb.r
  %.sroa.09.0.i.i.i.i190 = phi i64 [ %i.dp, %bb.r ], [ %.fr80.i.i.i.i, %.preheader46.i.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i.i190, %umax71.i.i.i.i
  br i1 %exitcond70.not.i.i.i.i, label %.split43.i.i.i.i.invoke, label %bb.s

bb.s:                                             ; preds = %.lr.ph191
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.09.0.i.i.i.i190
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !272, !noalias !274, !noundef !6
  %i.ds = add i64 %.sroa.09.0.i.i.i.i190, %i.de   ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.bs
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !271, !noalias !274, !noundef !6
  %.not20.i.i.i.i = icmp eq i8 %i.dr, %i.dv
  br i1 %.not20.i.i.i.i, label %bb.r, label %bb.t

.split43.i.i.i.i.invoke:                          ; preds = %.lr.ph, %.lr.ph191, %.lr.ph.split.us.i.i.i.i, %.lr.ph.split.us.i.i.preheader.i.i
  %i.dw = phi i64 [ %i.eo, %.lr.ph.split.us.i.i.i.i ], [ %umax71.i.i.i.i, %.lr.ph191 ], [ %i.eo, %.lr.ph.split.us.i.i.preheader.i.i ], [ %i.dn, %.lr.ph ]
  %i.dx = phi ptr [ @7, %.lr.ph.split.us.i.i.i.i ], [ @6, %.lr.ph191 ], [ @7, %.lr.ph.split.us.i.i.preheader.i.i ], [ @7, %.lr.ph ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dw, i64 noundef range(i64 0, -9223372036854775808) %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx) #20
          to label %.split43.i.i.i.i.cont unwind label %bb.bq

.split43.i.i.i.i.cont:                            ; preds = %.split43.i.i.i.i.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dy = sub i64 %.sink99.i.i29.i.i, %i.dc
  br label %bb.p

bb.u:                                             ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dn
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !272, !noalias !274, !noundef !6
  %i.eb = add nuw i64 %i.dn, %i.de                ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.bs
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !271, !noalias !274, !noundef !6
  %.not21.i.i.i.i = icmp eq i8 %i.ea, %i.ee
  br i1 %.not21.i.i.i.i, label %bb.q, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.neg.i.i.i.i = sub i64 %.sink99.i.i29.i.i, %.fr80.i.i.i.i
  %i.ef = add i64 %.neg.i.i.i.i, %i.dn
  br label %bb.p

bb.w:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %.promoted.i3.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !278, !noalias !261 ; 3 uses
  %i.eg = sub i64 %.promoted.i3.i.i.i, %i.bw      ; 5 uses
  %i.eh = icmp ult i64 %i.eg, %i.bs
  br i1 %i.eh, label %.lr.ph.i6.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i

.lr.ph.i6.i.i.i:                                  ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !278, !noalias !261, !noundef !6 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !278, !noalias !261
  %.fr74.i.i.i = freeze i64 %i.el                 ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !278, !noalias !261 ; 2 uses
  %umax71.i7.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr74.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bw) ; 3 uses
  %i.eo = add i64 %.fr74.i.i.i, -1                ; 3 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.eo, %i.bw
  br i1 %.first_iter.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.i6.split.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i6.i.i.i
  %.not19.us.i.us.us.i.i.i198 = icmp eq i64 %.fr74.i.i.i, 0
  %exitcond72.not.i.us.i.i.i201.not = icmp ult i64 %.fr74.i.i.i, %i.bw
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.y
  %.sink.i9.us.i43.i.i = phi i64 [ %.sink.i9.us.i.i.i, %bb.y ], [ %.promoted.i3.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 2 uses
  %i.ep = phi i64 [ %i.fm, %bb.y ], [ %i.eg, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %i.es = and i8 %i.er, 63
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.ej
  %.not.us.i.us.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.y, label %.preheader45.i.us.us.i.i.i.preheader

.preheader45.i.us.us.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i198, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph200

.preheader45.i.us.us.i.i.i:                       ; preds = %.lr.ph200
  %.not19.us.i.us.us.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not19.us.i.us.us.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph200

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader45.i.us.us.i.i.i, %.preheader45.i.us.us.i.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i.i201.not, label %.lr.ph203, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i

.lr.ph200:                                        ; preds = %.preheader45.i.us.us.i.i.i.preheader, %.preheader45.i.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i199 = phi i64 [ %i.ew, %.preheader45.i.us.us.i.i.i ], [ %.fr74.i.i.i, %.preheader45.i.us.us.i.i.i.preheader ]
  %i.ew = add i64 %.sroa.2.0.us.i.us.us.i.i.i199, -1 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !277, !noalias !274, !noundef !6
  %i.ez = add i64 %i.ew, %i.ep                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.bs
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %.not21.us.i.us.us.i.i.i = icmp eq i8 %i.ey, %i.fc
  br i1 %.not21.us.i.us.us.i.i.i, label %.preheader45.i.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph200
  %.neg.us.i.us.i.i.i = sub i64 %.sink.i9.us.i43.i.i, %.fr74.i.i.i
  %i.fd = add i64 %.neg.us.i.us.i.i.i, %i.ew
  br label %bb.y

.preheader.i.us.i.i.i:                            ; preds = %.lr.ph203
  %i.fe = add i64 %.sroa.09.0.us.i.us.i.i.i202, 1 ; 2 uses
  %exitcond72.not.i.us.i.i.i = icmp eq i64 %i.fe, %umax71.i7.i.i.i
  br i1 %exitcond72.not.i.us.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.09.0.us.i.us.i.i.i202 = phi i64 [ %i.fe, %.preheader.i.us.i.i.i ], [ %.fr74.i.i.i, %.preheader.i.us.i.i.i.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.09.0.us.i.us.i.i.i202
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !277, !noalias !274, !noundef !6
  %i.fh = add i64 %.sroa.09.0.us.i.us.i.i.i202, %i.ep ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.bs
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.fg, %i.fk
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph203
  %i.fl = sub i64 %.sink.i9.us.i43.i.i, %i.en
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split.us.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i
  %.sink.i9.us.i.i.i = phi i64 [ %i.fd, %.split.us.us.i.i.i ], [ %i.fl, %bb.x ], [ %i.ep, %.lr.ph.split.us.i.us.i.i.i ] ; 2 uses
  %i.fm = sub i64 %.sink.i9.us.i.i.i, %i.bw       ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.bs
  br i1 %i.fn, label %.lr.ph.split.us.i.us.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i

.lr.ph.i6.split.i.i.i:                            ; preds = %.lr.ph.i6.i.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %.fr74.i.i.i, 0
  br i1 %.not19.us.i.i.i.i, label %.lr.ph.split.us.i.us62.i.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i.i

.lr.ph.split.us.i.us62.i.i.i.preheader:           ; preds = %.lr.ph.i6.split.i.i.i
  %exitcond72.not.i.us67.i.i.i193 = icmp eq i64 %umax71.i7.i.i.i, 0
  br label %.lr.ph.split.us.i.us62.i.i.i

.lr.ph.split.us.i.i.preheader.i.i:                ; preds = %.lr.ph.i6.split.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.eg
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %i.fq = and i8 %i.fp, 63
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fs, %i.ej
  %.not.us.i.i39.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.us.i.i39.i.i, label %.lr.ph40.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.split.us.i.us62.i.i.i:                     ; preds = %.lr.ph.split.us.i.us62.i.i.i.preheader, %bb.aa
  %i.fu = phi i64 [ %i.gk, %bb.aa ], [ %i.eg, %.lr.ph.split.us.i.us62.i.i.i.preheader ] ; 5 uses
  %i.fv = phi i64 [ %.sink.i9.us69.i.i.i, %bb.aa ], [ %.promoted.i3.i.i.i, %.lr.ph.split.us.i.us62.i.i.i.preheader ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %i.ej
  %.not.us.i.us63.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.us.i.us63.i.i.i, label %bb.aa, label %.preheader.i.us65.i.i.i.preheader

.preheader.i.us65.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us62.i.i.i
  br i1 %exitcond72.not.i.us67.i.i.i193, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %.lr.ph195

.preheader.i.us65.i.i.i:                          ; preds = %.lr.ph195
  %i.gc = add nuw i64 %.sroa.09.0.us.i.us66.i.i.i194, 1 ; 2 uses
  %exitcond72.not.i.us67.i.i.i = icmp eq i64 %i.gc, %umax71.i7.i.i.i
  br i1 %exitcond72.not.i.us67.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader.i.us65.i.i.i.preheader, %.preheader.i.us65.i.i.i
  %.sroa.09.0.us.i.us66.i.i.i194 = phi i64 [ %i.gc, %.preheader.i.us65.i.i.i ], [ 0, %.preheader.i.us65.i.i.i.preheader ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.09.0.us.i.us66.i.i.i194
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !277, !noalias !274, !noundef !6
  %i.gf = add nuw i64 %.sroa.09.0.us.i.us66.i.i.i194, %i.fu ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.bs
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %.not20.us.i.us68.i.i.i = icmp eq i8 %i.ge, %i.gi
  br i1 %.not20.us.i.us68.i.i.i, label %.preheader.i.us65.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph195
  %i.gj = sub i64 %i.fv, %i.en
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.split.us.i.us62.i.i.i
  %.sink.i9.us69.i.i.i = phi i64 [ %i.fu, %.lr.ph.split.us.i.us62.i.i.i ], [ %i.gj, %bb.z ] ; 2 uses
  %i.gk = sub i64 %.sink.i9.us69.i.i.i, %i.bw     ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.bs
  br i1 %i.gl, label %.lr.ph.split.us.i.us62.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph40.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.gt
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !276, !noalias !274, !noundef !6
  %i.go = and i8 %i.gn, 63
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = and i64 %i.gq, %i.ej
  %.not.us.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.us.i.i.i.i, label %.lr.ph40.i.i, label %.split43.i.i.i.i.invoke

.lr.ph40.i.i:                                     ; preds = %.lr.ph.split.us.i.i.preheader.i.i, %.lr.ph.split.us.i.i.i.i
  %i.gs = phi i64 [ %i.gt, %.lr.ph.split.us.i.i.i.i ], [ %i.eg, %.lr.ph.split.us.i.i.preheader.i.i ]
  %i.gt = sub i64 %i.gs, %i.bw                    ; 3 uses
  %i.gu = icmp ult i64 %i.gt, %i.bs
  br i1 %i.gu, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i

_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread.i: ; preds = %bb.p, %.lr.ph40.i.i, %bb.aa, %bb.y, %bb.w, %bb.n, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  br label %_RNvNtCs8yjYO7b73r2_10serde_json5error14parse_line_col.exit

_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i: ; preds = %.preheader46.i.i.i.i, %bb.r, %.preheader.i.us65.i.i.i.preheader, %.preheader.i.us65.i.i.i, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %bb.m, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.i.i, %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i, %bb.g
  %.sroa.4.0.i.ph.i = phi i64 [ %i.bk, %bb.m ], [ 0, %_RNvXsw_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel.i.i ], [ %i.de, %bb.r ], [ %.promoted60.i.i.i, %bb.g ], [ %i.ep, %.preheader.i.us.i.i.i.preheader ], [ %i.bk, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit21.i.i.i.i.i ], [ %i.bk, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit19.i.i.i.i.i ], [ %i.bk, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8yjYO7b73r2_10serde_json.exit17.i.i.i.i.i ], [ %i.fu, %.preheader.i.us65.i.i.i.preheader ], [ %i.ep, %.preheader.i.us.i.i.i ], [ %i.fu, %.preheader.i.us65.i.i.i ], [ %i.de, %.preheader46.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  br label %bb.ab

_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  br i1 %i.s, label %bb.ab, label %_RNvNtCs8yjYO7b73r2_10serde_json5error14parse_line_col.exit

bb.ab:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.i, %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i
  %.sroa.4.0.i89.i = phi i64 [ %.sroa.4.0.i.ph.i, %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.thread86.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core3stre5rfindReECs8yjYO7b73r2_10serde_json.exit.i ] ; 6 uses
  %i.gv = add i64 %.sroa.4.0.i89.i, 9             ; 10 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ab
  %.sroa.03.0.i = phi i64 [ %i.gv, %bb.ab ], [ %i.hi, %bb.ak ] ; 10 uses
  %i.gw = icmp eq i64 %.sroa.03.0.i, 0            ; 2 uses
  br i1 %i.gw, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i = icmp ult i64 %.sroa.03.0.i, %i.g
  br i1 %.not.i.i, label %bb.ae, label %.split.i.i

end_hunk_0
