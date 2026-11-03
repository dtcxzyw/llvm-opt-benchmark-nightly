Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.10?download=true
inline.NumInlined: 364
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4find3run000INtB7_5FnMutTNtNtCs1xwejQucwHj_5alloc6string6StringEE8call_mutBY_:bb.a
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.m, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.be = and i8 %i.bb, 31
  %i.bf = zext nneg i8 %i.be to i32               ; 3 uses
  %i.bg = add nuw nsw i64 %.promoted157.i.i.i, 1
  %i.bh = icmp samesign ne i64 %i.bg, %i.aq
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bd, align 1, !noalias !422, !noundef !6
  %i.bj = shl nuw nsw i32 %i.bf, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bp = add nuw nsw i64 %.promoted157.i.i.i, 2
  %i.bq = icmp samesign ne i64 %i.bp, %i.aq
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i8, ptr %i.bo, align 1, !noalias !422, !noundef !6
  %i.bs = shl nuw nsw i32 %i.bl, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bf, 12
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.ca = add nuw nsw i64 %.promoted157.i.i.i, 3
  %i.cb = icmp samesign ne i64 %i.ca, %i.aq
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i8, ptr %i.bz, align 1, !noalias !422, !noundef !6
  %i.cd = shl nuw nsw i32 %i.bf, 18
  %i.ce = and i32 %i.cd, 1835008
  %i.cf = shl nuw nsw i32 %i.bv, 6
  %i.cg = and i8 %i.cc, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = or disjoint i32 %i.ci, %i.ce
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = zext nneg i8 %i.bb to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i ], [ %i.cj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i ], [ %i.ck, %bb.m ] ; 4 uses
  %i.cl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cl)
  br i1 %i.at, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.cm, label %.lr.ph.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.cn, label %.lr.ph.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.co, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.p ], [ %..i.us.i.peel.i.i, %bb.q ], [ 1, %bb.o ]
  %i.cp = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted157.i.i.i ; 11 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.cp, %i.aq
  br i1 %.not.i.i.us.i.i.i, label %bb.s, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.r
  %i.cr = icmp eq i64 %i.cp, %i.aq
  br i1 %i.cr, label %bb.t, label %.split.us161.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !420, !noalias !423, !noundef !6
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %bb.t, label %.split.us161.i.i.i

bb.t:                                             ; preds = %bb.s, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.cv = icmp samesign eq i64 %i.cp, %i.aq
  br i1 %i.cv, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cp
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !424, !noundef !6 ; 3 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i: ; preds = %bb.u
  %i.cz = add nuw nsw i64 %i.cp, 1
  %i.da = icmp samesign ne i64 %i.cz, %i.aq
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.db, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i
  %i.dc = add nuw nsw i64 %i.cp, 2
  %i.dd = icmp samesign ne i64 %i.dc, %i.aq
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.de, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i
  %i.df = add nuw nsw i64 %i.cp, 3
  %i.dg = icmp samesign ne i64 %i.df, %i.aq
  tail call void @llvm.assume(i1 %i.dg)
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i

.split.us161.i.i.i:                               ; preds = %bb.s, %.split.i.i.us.i.i.i, %bb.j, %.split.i.i.us.i.peel.i.i
  %.lcssa61.i.i = phi i64 [ %.promoted157.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted157.i.i.i, %bb.j ], [ %i.cp, %.split.i.i.us.i.i.i ], [ %i.cp, %bb.s ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq, i64 noundef %.lcssa61.i.i, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #26
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.noexc3.i:                                        ; preds = %.split.us161.i.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc2.i
  unreachable

bb.v:                                             ; preds = %.noexc2.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !419, !noalias !418, !noundef !6 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !419, !noalias !418, !noundef !6 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.dk, %i.di
  br i1 %.not.i.i.i, label %bb.x, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.w:                                             ; preds = %.noexc2.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !419, !noalias !418, !noundef !6 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !419, !noalias !418, !nonnull !6, !noundef !6 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !419, !noalias !418, !noundef !6 ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !419, !noalias !418, !nonnull !6, !noundef !6 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !419, !noalias !418, !noundef !6 ; 12 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.dy = add nsw i64 %i.dw, -1                   ; 4 uses
  br i1 %i.do, label %bb.ai, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !419, !noalias !418, !nonnull !6, !noundef !6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ec = load i8, ptr %i.eb, align 8, !alias.scope !419, !noalias !418, !noundef !6 ; 2 uses
  %i.ed = sub nuw i64 %i.di, %i.dk                ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk ; 2 uses
  %i.ef = icmp samesign ult i64 %i.ed, 16
  br i1 %i.ef, label %.lr.ph.i.i4.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.ec, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ed)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.noexc4.i:                                        ; preds = %bb.y
  %i.eh = extractvalue { i64, i64 } %i.eg, 0
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i.i4.i.i:                                  ; preds = %bb.x, %bb.z
  %.sroa.04.011.i.i5.i.i = phi i64 [ %i.em, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.04.011.i.i5.i.i
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !425, !noalias !426, !noundef !6
  %i.el = icmp eq i8 %i.ek, %i.ec
  br i1 %i.el, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i4.i.i
  %i.em = add nuw nsw i64 %.sroa.04.011.i.i5.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i = icmp eq i64 %i.em, %i.ed
  br i1 %exitcond.not.i7.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i4.i.i

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %.promoted.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !430, !noalias !418 ; 2 uses
  %i.en = add i64 %.promoted.i.i.i.i, %i.dy       ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.ds
  br i1 %i.eo, label %.lr.ph.i8.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !430, !noalias !418, !noundef !6
  %i.er = load i64, ptr %i.dl, align 8, !alias.scope !430, !noalias !418 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !430, !noalias !418 ; 2 uses
  %i.eu = sub i64 %i.dw, %i.et
  %invariant.op = sub i64 1, %i.er
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i8.i.i.i
  %.sink70.i.i42.i.i = phi i64 [ %.sink70.i.i.i.i, %bb.ad ], [ %i.dn, %.lr.ph.i8.i.i.i ] ; 3 uses
  %.sink71.i.i39.i.i = phi i64 [ %.sink71.i.i.i.i, %bb.ad ], [ %.promoted.i.i.i.i, %.lr.ph.i8.i.i.i ] ; 5 uses
  %i.ev = phi i64 [ %i.fe, %bb.ad ], [ %i.en, %.lr.ph.i8.i.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !428, !noalias !426, !noundef !6
  %i.ey = and i8 %i.ex, 63
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.fa, %i.eq
  %.not.i9.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i9.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.fc = add i64 %.sink71.i.i39.i.i, %i.dw
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i
  %..i.i10.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i42.i.i, i64 %i.er) ; 2 uses
  %i.fd = icmp ult i64 %..i.i10.i.i.i, %i.dw
  br i1 %i.fd, label %.lr.ph118, label %.preheader36.i.i.i.i.preheader

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %bb.ab
  %.sink71.i.i.i.i = phi i64 [ %i.fz, %bb.ah ], [ %i.fy, %bb.ag ], [ %i.fc, %bb.ab ] ; 2 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.eu, %bb.ag ], [ 0, %bb.ab ]
  %i.fe = add i64 %.sink71.i.i.i.i, %i.dy         ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.ds
  br i1 %i.ff, label %.lr.ph.split.i.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.ae:                                            ; preds = %.lr.ph118
  %i.fg = add nuw nsw i64 %.sroa.04.0.i.i.i.i117, 1 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.dw
  br i1 %i.fh, label %.lr.ph118, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.ae, %bb.ac
  %i.fi = icmp ult i64 %.sink70.i.i42.i.i, %i.er
  br i1 %i.fi, label %.lr.ph120, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph118:                                        ; preds = %bb.ac, %bb.ae
  %.sroa.04.0.i.i.i.i117 = phi i64 [ %i.fg, %bb.ae ], [ %..i.i10.i.i.i, %bb.ac ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.04.0.i.i.i.i117
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !429, !noalias !426, !noundef !6
  %i.fl = add i64 %.sroa.04.0.i.i.i.i117, %.sink71.i.i39.i.i ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.ds
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !428, !noalias !426, !noundef !6
  %.not21.i.i.i.i = icmp eq i8 %i.fk, %i.fo
  br i1 %.not21.i.i.i.i, label %bb.ae, label %bb.ah

.preheader36.i.i.i.i:                             ; preds = %bb.af
  %i.fp = icmp ult i64 %.sink70.i.i42.i.i, %i.fq
  br i1 %i.fp, label %.lr.ph120, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph120:                                        ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i119 = phi i64 [ %i.fq, %.preheader36.i.i.i.i ], [ %i.er, %.preheader36.i.i.i.i.preheader ]
  %i.fq = add i64 %.sroa.2.0.i.i.i.i119, -1       ; 6 uses
  %i.fr = icmp ult i64 %i.fq, %i.dw
  br i1 %i.fr, label %bb.af, label %.invoke.i

bb.af:                                            ; preds = %.lr.ph120
  %i.fs = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !429, !noalias !426, !noundef !6
  %i.fu = add i64 %i.fq, %.sink71.i.i39.i.i       ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ds
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !428, !noalias !426, !noundef !6
  %.not20.i.i.i.i = icmp eq i8 %i.ft, %i.fx
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = add i64 %.sink71.i.i39.i.i, %i.et
  br label %bb.ad

bb.ah:                                            ; preds = %.lr.ph118
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i39.i.i, %invariant.op
  %i.fz = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i117
  br label %bb.ad

bb.ai:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %.promoted.i12.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !434, !noalias !418 ; 2 uses
  %i.ga = add i64 %.promoted.i12.i.i.i, %i.dy     ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.ds
  br i1 %i.gb, label %.lr.ph.i15.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !434, !noalias !418, !noundef !6
  %i.ge = load i64, ptr %i.dl, align 8, !alias.scope !434, !noalias !418
  %.fr215.i.i.i = freeze i64 %i.ge                ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !434, !noalias !418
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i.i, i64 range(i64 0, -9223372036854775808) %i.dw)
  %i.gh = add i64 %.fr215.i.i.i, -1               ; 2 uses
  %.first_iter.i16.i.i.i = icmp ult i64 %i.gh, %i.dw
  %exitcond.not.i17.i.i.i121.not = icmp ult i64 %.fr215.i.i.i, %i.dw
  %invariant.op163 = sub i64 1, %.fr215.i.i.i
  %.not34.i.us.i.i.i124 = icmp eq i64 %.fr215.i.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.al, %.lr.ph.i15.i.i.i
  %.sink.i18.i45.i.i = phi i64 [ %.sink.i18.i.i.i, %bb.al ], [ %.promoted.i12.i.i.i, %.lr.ph.i15.i.i.i ] ; 5 uses
  %i.gi = phi i64 [ %i.hg, %bb.al ], [ %i.ga, %.lr.ph.i15.i.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !432, !noalias !426, !noundef !6
  %i.gl = and i8 %i.gk, 63
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gd
  %.not.us.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.us.i.i.i.i, label %bb.ak, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i121.not, label %.lr.ph123, label %.preheader.i19.preheader.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph123
  %i.gp = add i64 %.sroa.04.0.us.i.i.i.i122, 1    ; 2 uses
  %exitcond.not.i17.i.i.i = icmp eq i64 %i.gp, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i, label %.preheader.i19.preheader.i.i.i, label %.lr.ph123

.preheader.i19.preheader.i.i.i:                   ; preds = %.preheader35.i.i.i.i, %.preheader35.i.i.i.i.preheader
  br i1 %.first_iter.i16.i.i.i, label %.preheader.i19.us.i.i.i.preheader, label %.preheader.i19.i.i.i

.preheader.i19.us.i.i.i.preheader:                ; preds = %.preheader.i19.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i124, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph126

.preheader.i19.us.i.i.i:                          ; preds = %.lr.ph126
  %.not34.i.us.i.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not34.i.us.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader.i19.us.i.i.i.preheader, %.preheader.i19.us.i.i.i
  %.sroa.2.0.us.i.us.i.i.i125 = phi i64 [ %i.gq, %.preheader.i19.us.i.i.i ], [ %.fr215.i.i.i, %.preheader.i19.us.i.i.i.preheader ]
  %i.gq = add i64 %.sroa.2.0.us.i.us.i.i.i125, -1 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !433, !noalias !426, !noundef !6
  %i.gt = add i64 %i.gq, %.sink.i18.i45.i.i       ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.ds
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gt
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !432, !noalias !426, !noundef !6
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.gs, %i.gw
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i19.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph126
  %i.gx = add i64 %.sink.i18.i45.i.i, %i.gg
  br label %bb.al

.lr.ph123:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i122 = phi i64 [ %i.gp, %.preheader35.i.i.i.i ], [ %.fr215.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.04.0.us.i.i.i.i122
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !433, !noalias !426, !noundef !6
  %i.ha = add i64 %.sroa.04.0.us.i.i.i.i122, %.sink.i18.i45.i.i ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.ds
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !432, !noalias !426, !noundef !6
  %.not21.us.i.i.i.i = icmp eq i8 %i.gz, %i.hd
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.aj

.preheader.i19.i.i.i:                             ; preds = %.preheader.i19.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i124, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.invoke.i

bb.aj:                                            ; preds = %.lr.ph123
  %.reass282.i.reass.i.reass.i.reass.reass = add i64 %.sink.i18.i45.i.i, %invariant.op163
  %i.he = add i64 %.reass282.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i122
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.hf = add i64 %.sink.i18.i45.i.i, %i.dw
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.split.us.i.i.i
  %.sink.i18.i.i.i = phi i64 [ %i.hf, %bb.ak ], [ %i.he, %bb.aj ], [ %i.gx, %.split.us.i.i.i ] ; 2 uses
  %i.hg = add i64 %.sink.i18.i.i.i, %i.dy         ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.ds
  br i1 %i.hh, label %.lr.ph.split.us.i.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i: ; preds = %.lr.ph.i.i4.i.i, %.noexc4.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.i.i, %bb.u
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.ad, %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %bb.al, %.preheader.i19.us.i.i.i.preheader, %.preheader.i19.us.i.i.i, %bb.z, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, %.preheader.i19.i.i.i, %bb.ai, %bb.aa, %.noexc4.i, %bb.v, %bb.t, %bb.n, %bb.k, %.preheader.i.i.i
  %storemerge.i.sink.i.i.i = phi i8 [ 1, %.preheader36.i.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 1, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i ], [ 0, %.noexc4.i ], [ 1, %.preheader.i19.us.i.i.i ], [ 0, %.preheader.i.i.i ], [ 1, %bb.n ], [ 1, %bb.t ], [ 1, %.preheader.i19.us.i.i.i.preheader ], [ 1, %.preheader.i19.i.i.i ], [ %.promoted206.i.i.i, %bb.k ], [ 0, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ad ], [ 1, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !418
  br label %bb.bc

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.hi = load i8, ptr %i.r, align 1, !alias.scope !437, !noalias !414, !noundef !6 ; 3 uses
  %i.hj = add nsw i64 %i.t, -1                    ; 2 uses
  %i.hk = icmp eq i64 %i.t, 2
  br i1 %i.hk, label %.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am
  %i.hl = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.t, i64 4)
  br label %bb.ao

bb.an:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.hm = icmp ult i64 %i.hl, %i.ho
  br i1 %i.hm, label %bb.ao, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.hn = phi i64 [ %i.t, %.lr.ph ], [ %i.ho, %bb.an ]
  %i.ho = add nsw i64 %i.hn, -1                   ; 6 uses
  %i.hp = icmp ult i64 %i.ho, %i.t
  br i1 %i.hp, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ao, %.lr.ph120, %.preheader.i19.i.i.i
  %i.hq = phi i64 [ %i.gh, %.preheader.i19.i.i.i ], [ %i.fq, %.lr.ph120 ], [ %i.ho, %bb.ao ]
  %i.hr = phi i64 [ %i.dw, %.preheader.i19.i.i.i ], [ %i.dw, %.lr.ph120 ], [ %i.t, %bb.ao ]
  %i.hs = phi ptr [ @5, %.preheader.i19.i.i.i ], [ @5, %.lr.ph120 ], [ @13, %bb.ao ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.hq, i64 noundef range(i64 0, -9223372036854775808) %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs) #26
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ho
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !437, !noalias !438, !noundef !6 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.hu, %i.hi
  br i1 %.not.i.not.i.i.i.i, label %bb.an, label %bb.ap

bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.hv = add nuw nsw i64 %i.t, 15
  %i.hw = icmp ult i64 %i.o, %i.hv
  br i1 %i.hw, label %.lr.ph.split.us.i.i10.i.i, label %bb.aq

.thread.i.i.i:                                    ; preds = %bb.am
  %i.hx = icmp ult i64 %i.o, 17
  br i1 %i.hx, label %.lr.ph.split.us.i.i10.i.i, label %.thread92.i.i.i

.thread92.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.hy = insertelement <16 x i8> poison, i8 %i.hi, i64 0
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !alias.scope !437, !noalias !414
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ia = insertelement <16 x i8> poison, i8 %i.hi, i64 0
  %i.ib = shufflevector <16 x i8> %i.ia, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

.lr.ph.split.us.i.i10.i.i:                        ; preds = %.thread.i.i.i, %bb.ap
  %bcmp.i.i.us22.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %i.r, i64 range(i64 2, 33) %i.t), !alias.scope !439, !noalias !440
  %i.ic = icmp eq i32 %bcmp.i.i.us22.i.i.i.i, 0
  br i1 %i.ic, label %.thread.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.id, ptr noundef nonnull readonly dereferenceable(1) %i.r, i64 range(i64 2, 33) %i.t), !alias.scope !439, !noalias !440
  %i.ie = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0
  br i1 %i.ie, label %.thread.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i10.i.i, %.split.us.i.i.i.i
  %.pn.i.i.i = phi ptr [ %i.id, %.split.us.i.i.i.i ], [ %i.m, %.lr.ph.split.us.i.i10.i.i ]
  %.in.i.i.i = phi i64 [ %i.if, %.split.us.i.i.i.i ], [ %i.o, %.lr.ph.split.us.i.i10.i.i ]
  %i.if = add i64 %.in.i.i.i, -1                  ; 2 uses
  %.not27.i.i.i.i = icmp ugt i64 %i.t, %i.if
  br i1 %.not27.i.i.i.i, label %.thread3.i, label %.split.us.i.i.i.i

bb.ar:                                            ; preds = %bb.aq, %.thread92.i.i.i
  %i.ig = phi i8 [ %.pre.i.i.i, %.thread92.i.i.i ], [ %i.hu, %bb.aq ]
  %i.ih = phi <16 x i8> [ %i.hz, %.thread92.i.i.i ], [ %i.ib, %bb.aq ] ; 6 uses
  %storemerge9194.i.i.i = phi i64 [ 1, %.thread92.i.i.i ], [ %i.ho, %bb.aq ] ; 6 uses
  %i.ii = insertelement <16 x i8> poison, i8 %i.ig, i64 0
  %i.ij = shufflevector <16 x i8> %i.ii, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !441
  store ptr %i.m, ptr %i.g, align 8, !noalias !441
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.o, ptr %i.il, align 8, !noalias !441
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ik, ptr %i.im, align 8, !noalias !441
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.hj, ptr %i.in, align 8, !noalias !441
  %i.io = add nuw nsw i64 %i.t, 63                ; 2 uses
  %.not.i6.i.i = icmp ult i64 %i.io, %i.o
  br i1 %.not.i6.i.i, label %.lr.ph.i8.i.i, label %.preheader.i7.i.i

.preheader.i7.i.i:                                ; preds = %bb.av, %bb.ar
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.014.2.3.i.i.i, %bb.av ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.kk, %bb.av ] ; 2 uses
  %i.ip = add nuw nsw i64 %i.t, 15                ; 2 uses
  %i.iq = add i64 %.sroa.06.0.lcssa.i.i.i, %i.ip
  %i.ir = icmp uge i64 %i.iq, %i.o
  %i.is = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i = select i1 %i.ir, i1 true, i1 %i.is
  br i1 %or.cond3104.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph106.i.i.i

.lr.ph.i8.i.i:                                    ; preds = %bb.ar, %bb.av
  %.sroa.06.0102.i.i.i = phi i64 [ %i.kk, %bb.av ], [ 0, %bb.ar ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.06.0102.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.it, align 1, !alias.scope !442, !noalias !443
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !442, !noalias !443
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.ih
  %i.iw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.ij
  %i.ix = and <16 x i1> %i.iv, %i.iw
  %i.iy = bitcast <16 x i1> %i.ix to i16          ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.iz, align 1, !alias.scope !442, !noalias !443
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.ja, align 1, !alias.scope !442, !noalias !443
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, %i.ih
  %i.jc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, %i.ij
  %i.jd = and <16 x i1> %i.jb, %i.jc
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.jf, align 1, !alias.scope !442, !noalias !443
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.jg, align 1, !alias.scope !442, !noalias !443
  %i.jh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, %i.ih
  %i.ji = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, %i.ij
  %i.jj = and <16 x i1> %i.jh, %i.ji
  %i.jk = bitcast <16 x i1> %i.jj to i16          ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.it, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.jl, align 1, !alias.scope !442, !noalias !443
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.jm, align 1, !alias.scope !442, !noalias !443
  %i.jn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, %i.ih
  %i.jo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, %i.ij
  %i.jp = and <16 x i1> %i.jn, %i.jo
  %i.jq = bitcast <16 x i1> %i.jp to i16          ; 2 uses
  %i.jr = icmp eq i16 %i.iy, 0
  br i1 %i.jr, label %.preheader95.1.i.i.i, label %bb.aw

.preheader95.1.i.i.i:                             ; preds = %.noexc11.i, %.lr.ph.i8.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i8.i.i ], [ %i.kp, %.noexc11.i ] ; 3 uses
  %i.js = icmp eq i16 %i.je, 0
  br i1 %i.js, label %.preheader95.2.i.i.i, label %bb.as

bb.as:                                            ; preds = %.preheader95.1.i.i.i
  %i.jt = or disjoint i64 %.sroa.06.0102.i.i.i, 16
  %i.ju = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.jv = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.jt, i16 noundef %i.je, i1 noundef zeroext %i.ju) #31
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.noexc8.i:                                        ; preds = %bb.as
  %i.jw = zext i1 %i.jv to i8
  %i.jx = or i8 %.sroa.014.2.i.i.i, %i.jw
  br label %.preheader95.2.i.i.i

.preheader95.2.i.i.i:                             ; preds = %.noexc8.i, %.preheader95.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader95.1.i.i.i ], [ %i.jx, %.noexc8.i ] ; 3 uses
  %i.jy = icmp eq i16 %i.jk, 0
  br i1 %i.jy, label %.preheader95.3.i.i.i, label %bb.at

bb.at:                                            ; preds = %.preheader95.2.i.i.i
  %i.jz = or disjoint i64 %.sroa.06.0102.i.i.i, 32
  %i.ka = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.kb = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.jz, i16 noundef %i.jk, i1 noundef zeroext %i.ka) #31
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.noexc9.i:                                        ; preds = %bb.at
  %i.kc = zext i1 %i.kb to i8
  %i.kd = or i8 %.sroa.014.2.1.i.i.i, %i.kc
  br label %.preheader95.3.i.i.i

.preheader95.3.i.i.i:                             ; preds = %.noexc9.i, %.preheader95.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader95.2.i.i.i ], [ %i.kd, %.noexc9.i ] ; 3 uses
  %i.ke = icmp eq i16 %i.jq, 0
  br i1 %i.ke, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.preheader95.3.i.i.i
  %i.kf = or disjoint i64 %.sroa.06.0102.i.i.i, 48
  %i.kg = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.kh = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.kf, i16 noundef %i.jq, i1 noundef zeroext %i.kg) #31
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.noexc10.i:                                       ; preds = %bb.au
  %i.ki = zext i1 %i.kh to i8
  %i.kj = or i8 %.sroa.014.2.2.i.i.i, %i.ki
  br label %bb.av

bb.av:                                            ; preds = %.noexc10.i, %.preheader95.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader95.3.i.i.i ], [ %i.kj, %.noexc10.i ] ; 2 uses
  %i.kk = add i64 %.sroa.06.0102.i.i.i, 64        ; 3 uses
  %i.kl = add i64 %i.kk, %i.io
  %i.km = icmp uge i64 %i.kl, %i.o
  %i.kn = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %or.cond.i.i.i, label %.preheader.i7.i.i, label %.lr.ph.i8.i.i

bb.aw:                                            ; preds = %.lr.ph.i8.i.i
  %i.ko = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.0102.i.i.i, i16 noundef %i.iy, i1 noundef zeroext false) #31
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !414

.noexc11.i:                                       ; preds = %bb.aw
  %i.kp = zext i1 %i.ko to i8
  br label %.preheader95.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ax, %.preheader.i7.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i7.i.i ], [ %.sroa.014.4.i.i.i, %bb.ax ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.is, %.preheader.i7.i.i ], [ %i.lj, %bb.ax ]
  %i.kq = sub nuw i64 %i.o, %i.hj
  %i.kr = add i64 %i.kq, -16                      ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.kr ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i = load <16 x i8>, ptr %i.ks, align 1, !alias.scope !442, !noalias !444
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i58.i.i.i = load <16 x i8>, ptr %i.kt, align 1, !alias.scope !442, !noalias !444
  %i.ku = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i, %i.ih
  %i.kv = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i, %i.ij
  %i.kw = and <16 x i1> %i.ku, %i.kv
  %i.kx = bitcast <16 x i1> %i.kw to i16          ; 2 uses
  %i.ky = icmp eq i16 %i.kx, 0
  br i1 %i.ky, label %bb.az, label %bb.ba

.lr.ph106.i.i.i:                                  ; preds = %.preheader.i7.i.i, %bb.ax
  %.sroa.06.1105.i.i.i = phi i64 [ %i.lg, %bb.ax ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i7.i.i ] ; 3 uses
end_hunk_0
