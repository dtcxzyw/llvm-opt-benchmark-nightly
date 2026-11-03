Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtCsc4241EHy6Do_9typst_kit6server6handle:bb.a
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.am, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.peel.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.peel.i.i.i: ; preds = %bb.aj
  %i.fd = icmp ne i64 %.promoted105.i.i.i.i, 1
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 -2
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !8676, !noundef !17 ; 3 uses
  %i.fg = and i8 %i.ff, 31
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = icmp slt i8 %i.ff, -64
  br i1 %i.fi, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.peel.i.i.i, label %bb.al

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.peel.i.i.i
  %i.fj = icmp ne i64 %.promoted105.i.i.i.i, 2
  call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds i8, ptr %i.ez, i64 -3
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !8676, !noundef !17 ; 3 uses
  %i.fm = and i8 %i.fl, 15
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = icmp slt i8 %i.fl, -64
  br i1 %i.fo, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.peel.i.i.i, label %bb.ak

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.peel.i.i.i
  %i.fp = icmp ne i64 %.promoted105.i.i.i.i, 3
  call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds i8, ptr %i.ez, i64 -4
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !8676, !noundef !17
  %i.fs = and i8 %i.fr, 7
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 6
  %i.fv = and i8 %i.fl, 63
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = or disjoint i32 %i.fu, %i.fw
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.peel.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.peel.i.i.i
  %.sroa.010.1.i.i.us.i.peel.i.i.i = phi i32 [ %i.fx, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.peel.i.i.i ], [ %i.fn, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.peel.i.i.i ]
  %i.fy = shl nuw nsw i32 %.sroa.010.1.i.i.us.i.peel.i.i.i, 6
  %i.fz = and i8 %i.ff, 63
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = or disjoint i32 %i.fy, %i.ga
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.peel.i.i.i
  %.sroa.010.0.i.i.us.i.peel.i.i.i = phi i32 [ %i.gb, %bb.ak ], [ %i.fh, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.peel.i.i.i ]
  %i.gc = shl nuw nsw i32 %.sroa.010.0.i.i.us.i.peel.i.i.i, 6
  %i.gd = and i8 %i.fb, 63
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.gg = zext nneg i8 %i.fb to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.4.1.i.ph.i.us.i.peel.i.i.i = phi i32 [ %i.gg, %bb.am ], [ %i.gf, %bb.al ] ; 4 uses
  %i.gh = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gh)
  br i1 %i.et, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i.i, 128
  br i1 %i.gi, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i.i, 2048
  br i1 %i.gj, label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i.i, 65536
  %..i.us.i.peel.i.i.i = select i1 %i.gk, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i

_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.01.0.neg.i.us.i.peel.i.i.i = phi i64 [ -2, %bb.ap ], [ %..i.us.i.peel.i.i.i, %bb.aq ], [ -1, %bb.ao ]
  %i.gl = add i64 %.sroa.01.0.neg.i.us.i.peel.i.i.i, %.promoted105.i.i.i.i ; 14 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i
  %.not.i.i.us.i.i.i.i = icmp ult i64 %i.gl, %i.eq
  br i1 %.not.i.i.us.i.i.i.i, label %bb.ar, label %.split.i.i.us.i.i.i.i

.split.i.i.us.i.i.i.i:                            ; preds = %.peel.next.i.i.i
  %i.gn = icmp eq i64 %i.gl, %i.eq
  br i1 %i.gn, label %bb.as, label %.split115.us.i.i.i.i

bb.ar:                                            ; preds = %.peel.next.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !8674, !noalias !8677, !noundef !17
  %i.gq = icmp sgt i8 %i.gp, -65
  br i1 %i.gq, label %bb.as, label %.split115.us.i.i.i.i

bb.as:                                            ; preds = %bb.ar, %.split.i.i.us.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !8678, !noundef !17
  %i.gu = icmp sgt i8 %i.gt, -1
  br i1 %i.gu, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.i.i.i: ; preds = %bb.as
  %i.gv = icmp ne i64 %i.gl, 1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = getelementptr inbounds i8, ptr %i.gr, i64 -2
  %i.gx = load i8, ptr %i.gw, align 1, !noalias !8678, !noundef !17
  %i.gy = icmp slt i8 %i.gx, -64
  br i1 %i.gy, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.i.i.i
  %i.gz = icmp ne i64 %i.gl, 2
  call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds i8, ptr %i.gr, i64 -3
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !8678, !noundef !17
  %i.hc = icmp slt i8 %i.hb, -64
  br i1 %i.hc, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.i.i.i
  %i.hd = icmp ne i64 %i.gl, 3
  call void @llvm.assume(i1 %i.hd)
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i
  %spec.select116.i.i.i = zext i8 %.promoted153.i.i.i.i to i64
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.split115.us.i.i.i.i:                             ; preds = %bb.ar, %.split.i.i.us.i.i.i.i, %bb.ai, %.split.i.i.us.i.peel.i.i.i
  %.lcssa47.i.i.i = phi i64 [ %.promoted105.i.i.i.i, %.split.i.i.us.i.peel.i.i.i ], [ %.promoted105.i.i.i.i, %bb.ai ], [ %i.gl, %.split.i.i.us.i.i.i.i ], [ %i.gl, %bb.ar ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.eq, i64 noundef 0, i64 noundef %.lcssa47.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @392) #47
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668

.noexc16.i:                                       ; preds = %.split115.us.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc15.i
  unreachable

bb.at:                                            ; preds = %.noexc15.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !8673, !noalias !8672, !noundef !17 ; 4 uses
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %bb.av

bb.au:                                            ; preds = %.noexc15.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !8673, !noalias !8672, !noundef !17
  %i.hj = icmp eq i64 %i.hi, -1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !8673, !noalias !8672, !nonnull !17, !noundef !17 ; 10 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !8673, !noalias !8672, !noundef !17 ; 11 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !8673, !noalias !8672, !nonnull !17, !noundef !17 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !8673, !noalias !8672, !noundef !17 ; 14 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  br i1 %i.hj, label %bb.bh, label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !8673, !noalias !8672, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.hf, %i.hu
  br i1 %.not.i.i.i.i, label %bb.ax, label %bb.aw, !prof !37

bb.aw:                                            ; preds = %bb.av
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.hw = load i8, ptr %i.hv, align 8, !alias.scope !8673, !noalias !8672, !noundef !17
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !8673, !noalias !8672, !nonnull !17, !noundef !17
  %i.hz = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef %i.hw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hf)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668 ; 2 uses

.noexc17.i:                                       ; preds = %bb.aw
  %i.ia = extractvalue { i64, i64 } %i.hz, 0      ; 2 uses
  %i.ib = trunc nuw i64 %i.ia to i1
  %i.ic = extractvalue { i64, i64 } %i.hz, 1
  %spec.select.i.i.i = select i1 %i.ib, i64 %i.ic, i64 undef
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hf, i64 noundef %i.hu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #47
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668

.noexc18.i:                                       ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !8679)
  call void @llvm.experimental.noalias.scope.decl(metadata !8680)
  call void @llvm.experimental.noalias.scope.decl(metadata !8681)
  %.promoted.i.i.i.i.i = load i64, ptr %i.hs, align 8, !alias.scope !8682, !noalias !8672 ; 2 uses
  %i.id = sub i64 %.promoted.i.i.i.i.i, %i.hr     ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.hn
  br i1 %i.ie, label %.lr.ph.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ay
  %i.if = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !8682, !noalias !8672, !noundef !17
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !8682, !noalias !8672 ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !8682, !noalias !8672 ; 2 uses
  %umax71.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 range(i64 0, -9223372036854775808) %i.hr) ; 2 uses
  %.promoted36.i.i.i.i.i = load i64, ptr %i.ij, align 8, !alias.scope !8682, !noalias !8672
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.ba, %.lr.ph.i.i.i.i.i
  %.sink99.i.i24.i.i.i = phi i64 [ %.sink99.i.i.i.i.i, %bb.ba ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.im = phi i64 [ %.sink98.i.i.i.i.i, %bb.ba ], [ %.promoted36.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.in = phi i64 [ %i.iu, %bb.ba ], [ %i.id, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !8680, !noalias !8683, !noundef !17
  %i.iq = and i8 %i.ip, 63
  %i.ir = zext nneg i8 %i.iq to i64
  %i.is = shl nuw i64 1, %i.ir
  %i.it = and i64 %i.is, %i.ig
  %.not.i.i.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not.i.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %..i.i5.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.im, i64 %i.ii) ; 2 uses
  %.not19.i.i.i.i.i257 = icmp eq i64 %..i.i5.i.i.i.i, 0
  br i1 %.not19.i.i.i.i.i257, label %.preheader46.i.i.i.i.i, label %.lr.ph

bb.ba:                                            ; preds = %bb.bg, %bb.be, %.lr.ph.split.i.i.i.i.i
  %.sink99.i.i.i.i.i = phi i64 [ %i.jm, %bb.bg ], [ %i.jf, %bb.be ], [ %i.in, %.lr.ph.split.i.i.i.i.i ] ; 2 uses
  %.sink98.i.i.i.i.i = phi i64 [ %i.hr, %bb.bg ], [ %i.il, %bb.be ], [ %i.hr, %.lr.ph.split.i.i.i.i.i ]
  %i.iu = sub i64 %.sink99.i.i.i.i.i, %i.hr       ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.hn
  br i1 %i.iv, label %.lr.ph.split.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

bb.bb:                                            ; preds = %bb.bf
  %.not19.i.i.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not19.i.i.i.i.i, label %.preheader46.i.i.i.i.i, label %.lr.ph

.preheader46.i.i.i.i.i:                           ; preds = %bb.bb, %bb.az
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.im, i64 %i.ii)
  %exitcond.not.i.i.i.i.i259.not = icmp ult i64 %i.ii, %i.im
  br i1 %exitcond.not.i.i.i.i.i259.not, label %.lr.ph261, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.lr.ph:                                           ; preds = %bb.az, %bb.bb
  %.sroa.2.0.i.i.i.i.i258 = phi i64 [ %i.iw, %bb.bb ], [ %..i.i5.i.i.i.i, %bb.az ]
  %i.iw = add i64 %.sroa.2.0.i.i.i.i.i258, -1     ; 7 uses
  %i.ix = icmp ult i64 %i.iw, %i.hr
  br i1 %i.ix, label %bb.bf, label %.preheader45.i.preheader.i.i.i.invoke.i

bb.bc:                                            ; preds = %bb.bd
  %i.iy = add nuw i64 %.sroa.09.0.i.i.i.i.i260, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.iy, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %.lr.ph261

.lr.ph261:                                        ; preds = %.preheader46.i.i.i.i.i, %bb.bc
  %.sroa.09.0.i.i.i.i.i260 = phi i64 [ %i.iy, %bb.bc ], [ %i.ii, %.preheader46.i.i.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i.i.i260, %umax71.i.i.i.i.i
  br i1 %exitcond70.not.i.i.i.i.i, label %.preheader45.i.preheader.i.i.i.invoke.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph261
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.sroa.09.0.i.i.i.i.i260
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !8681, !noalias !8683, !noundef !17
  %i.jb = add i64 %.sroa.09.0.i.i.i.i.i260, %i.in ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.hn
  call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.jb
  %i.je = load i8, ptr %i.jd, align 1, !alias.scope !8680, !noalias !8683, !noundef !17
  %.not20.i.i.i.i.i = icmp eq i8 %i.ja, %i.je
  br i1 %.not20.i.i.i.i.i, label %bb.bc, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jf = sub i64 %.sink99.i.i24.i.i.i, %i.il
  br label %bb.ba

bb.bf:                                            ; preds = %.lr.ph
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.iw
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !8681, !noalias !8683, !noundef !17
  %i.ji = add nuw i64 %i.iw, %i.in                ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.hn
  call void @llvm.assume(i1 %i.jj)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ji
  %i.jl = load i8, ptr %i.jk, align 1, !alias.scope !8680, !noalias !8683, !noundef !17
  %.not21.i.i.i.i.i = icmp eq i8 %i.jh, %i.jl
  br i1 %.not21.i.i.i.i.i, label %bb.bb, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.neg.i.i.i.i.i = sub i64 %.sink99.i.i24.i.i.i, %i.ii
  %i.jm = add i64 %.neg.i.i.i.i.i, %i.iw
  br label %bb.ba

bb.bh:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !8684)
  call void @llvm.experimental.noalias.scope.decl(metadata !8685)
  call void @llvm.experimental.noalias.scope.decl(metadata !8686)
  %.promoted.i7.i.i.i.i = load i64, ptr %i.hs, align 8, !alias.scope !8687, !noalias !8672 ; 3 uses
  %i.jn = sub i64 %.promoted.i7.i.i.i.i, %i.hr    ; 5 uses
  %i.jo = icmp ult i64 %i.jn, %i.hn
  br i1 %i.jo, label %.lr.ph.i10.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.bh
  %i.jp = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !8687, !noalias !8672, !noundef !17 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !8687, !noalias !8672
  %.fr160.i.i.i.i = freeze i64 %i.js              ; 8 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !8687, !noalias !8672 ; 2 uses
  %umax71.i11.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr160.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.hr) ; 3 uses
  %i.jv = add i64 %.fr160.i.i.i.i, -1             ; 3 uses
  %.first_iter.i.i.i.i.i = icmp ult i64 %i.jv, %i.hr
  br i1 %.first_iter.i.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.preheader, label %.lr.ph.i10.split.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.preheader:           ; preds = %.lr.ph.i10.i.i.i.i
  %.not19.us.i.us.us.i.i.i.i268 = icmp eq i64 %.fr160.i.i.i.i, 0
  %exitcond72.not.i.us.i.i.i.i271.not = icmp ult i64 %.fr160.i.i.i.i, %i.hr
  br label %.lr.ph.split.us.i.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i:                     ; preds = %.lr.ph.split.us.i.us.i.i.i.i.preheader, %bb.bj
  %.sink.i13.us.i36.i.i.i = phi i64 [ %.sink.i13.us.i.i.i.i, %bb.bj ], [ %.promoted.i7.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.preheader ] ; 2 uses
  %i.jw = phi i64 [ %i.kt, %bb.bj ], [ %i.jn, %.lr.ph.split.us.i.us.i.i.i.i.preheader ] ; 7 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %i.jz = and i8 %i.jy, 63
  %i.ka = zext nneg i8 %i.jz to i64
  %i.kb = shl nuw i64 1, %i.ka
  %i.kc = and i64 %i.kb, %i.jq
  %.not.us.i.us.i.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.us.i.us.i.i.i.i, label %bb.bj, label %.preheader45.i.us.us.i.i.i.i.preheader

.preheader45.i.us.us.i.i.i.i.preheader:           ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i.i268, label %.preheader.i.us.i.i.i.i.preheader, label %.lr.ph270

.preheader45.i.us.us.i.i.i.i:                     ; preds = %.lr.ph270
  %.not19.us.i.us.us.i.i.i.i = icmp eq i64 %i.kd, 0
  br i1 %.not19.us.i.us.us.i.i.i.i, label %.preheader.i.us.i.i.i.i.preheader, label %.lr.ph270

.preheader.i.us.i.i.i.i.preheader:                ; preds = %.preheader45.i.us.us.i.i.i.i, %.preheader45.i.us.us.i.i.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i.i.i271.not, label %.lr.ph273, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.lr.ph270:                                        ; preds = %.preheader45.i.us.us.i.i.i.i.preheader, %.preheader45.i.us.us.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i269 = phi i64 [ %i.kd, %.preheader45.i.us.us.i.i.i.i ], [ %.fr160.i.i.i.i, %.preheader45.i.us.us.i.i.i.i.preheader ]
  %i.kd = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i269, -1 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !8686, !noalias !8683, !noundef !17
  %i.kg = add i64 %i.kd, %i.jw                    ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.hn
  call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.kg
  %i.kj = load i8, ptr %i.ki, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %.not21.us.i.us.us.i.i.i.i = icmp eq i8 %i.kf, %i.kj
  br i1 %.not21.us.i.us.us.i.i.i.i, label %.preheader45.i.us.us.i.i.i.i, label %.split.us.us.i.i.i.i

.split.us.us.i.i.i.i:                             ; preds = %.lr.ph270
  %.neg.us.i.us.i.i.i.i = sub i64 %.sink.i13.us.i36.i.i.i, %.fr160.i.i.i.i
  %i.kk = add i64 %.neg.us.i.us.i.i.i.i, %i.kd
  br label %bb.bj

.preheader.i.us.i.i.i.i:                          ; preds = %.lr.ph273
  %i.kl = add i64 %.sroa.09.0.us.i.us.i.i.i.i272, 1 ; 2 uses
  %exitcond72.not.i.us.i.i.i.i = icmp eq i64 %i.kl, %umax71.i11.i.i.i.i
  br i1 %exitcond72.not.i.us.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %.lr.ph273

.lr.ph273:                                        ; preds = %.preheader.i.us.i.i.i.i.preheader, %.preheader.i.us.i.i.i.i
  %.sroa.09.0.us.i.us.i.i.i.i272 = phi i64 [ %i.kl, %.preheader.i.us.i.i.i.i ], [ %.fr160.i.i.i.i, %.preheader.i.us.i.i.i.i.preheader ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.sroa.09.0.us.i.us.i.i.i.i272
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !8686, !noalias !8683, !noundef !17
  %i.ko = add i64 %.sroa.09.0.us.i.us.i.i.i.i272, %i.jw ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.hn
  call void @llvm.assume(i1 %i.kp)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ko
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %.not20.us.i.us.i.i.i.i = icmp eq i8 %i.kn, %i.kr
  br i1 %.not20.us.i.us.i.i.i.i, label %.preheader.i.us.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph273
  %i.ks = sub i64 %.sink.i13.us.i36.i.i.i, %i.ju
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.split.us.us.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i
  %.sink.i13.us.i.i.i.i = phi i64 [ %i.kk, %.split.us.us.i.i.i.i ], [ %i.ks, %bb.bi ], [ %i.jw, %.lr.ph.split.us.i.us.i.i.i.i ] ; 2 uses
  %i.kt = sub i64 %.sink.i13.us.i.i.i.i, %i.hr    ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.hn
  br i1 %i.ku, label %.lr.ph.split.us.i.us.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.lr.ph.i10.split.i.i.i.i:                         ; preds = %.lr.ph.i10.i.i.i.i
  %.not19.us.i.i.i.i.i = icmp eq i64 %.fr160.i.i.i.i, 0
  br i1 %.not19.us.i.i.i.i.i, label %.lr.ph.split.us.i.us93.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i.i.i

.lr.ph.split.us.i.us93.i.i.i.i.preheader:         ; preds = %.lr.ph.i10.split.i.i.i.i
  %exitcond72.not.i.us98.i.i.i.i263 = icmp eq i64 %umax71.i11.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us93.i.i.i.i

.lr.ph.split.us.i.i.preheader.i.i.i:              ; preds = %.lr.ph.i10.split.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.jn
  %i.kw = load i8, ptr %i.kv, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %i.kx = and i8 %i.kw, 63
  %i.ky = zext nneg i8 %i.kx to i64
  %i.kz = shl nuw i64 1, %i.ky
  %i.la = and i64 %i.kz, %i.jq
  %.not.us.i.i34.i.i.i = icmp eq i64 %i.la, 0
  br i1 %.not.us.i.i34.i.i.i, label %.lr.ph.i.i.i, label %.preheader45.i.preheader.i.i.i.invoke.i

.lr.ph.split.us.i.us93.i.i.i.i:                   ; preds = %.lr.ph.split.us.i.us93.i.i.i.i.preheader, %bb.bl
  %i.lb = phi i64 [ %i.lr, %bb.bl ], [ %i.jn, %.lr.ph.split.us.i.us93.i.i.i.i.preheader ] ; 6 uses
  %i.lc = phi i64 [ %.sink.i13.us100.i.i.i.i, %bb.bl ], [ %.promoted.i7.i.i.i.i, %.lr.ph.split.us.i.us93.i.i.i.i.preheader ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.lb
  %i.le = load i8, ptr %i.ld, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %i.lf = and i8 %i.le, 63
  %i.lg = zext nneg i8 %i.lf to i64
  %i.lh = shl nuw i64 1, %i.lg
  %i.li = and i64 %i.lh, %i.jq
  %.not.us.i.us94.i.i.i.i = icmp eq i64 %i.li, 0
  br i1 %.not.us.i.us94.i.i.i.i, label %bb.bl, label %.preheader.i.us96.i.i.i.i.preheader

.preheader.i.us96.i.i.i.i.preheader:              ; preds = %.lr.ph.split.us.i.us93.i.i.i.i
  br i1 %exitcond72.not.i.us98.i.i.i.i263, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %.lr.ph265

.preheader.i.us96.i.i.i.i:                        ; preds = %.lr.ph265
  %i.lj = add nuw i64 %.sroa.09.0.us.i.us97.i.i.i.i264, 1 ; 2 uses
  %exitcond72.not.i.us98.i.i.i.i = icmp eq i64 %i.lj, %umax71.i11.i.i.i.i
  br i1 %exitcond72.not.i.us98.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader.i.us96.i.i.i.i.preheader, %.preheader.i.us96.i.i.i.i
  %.sroa.09.0.us.i.us97.i.i.i.i264 = phi i64 [ %i.lj, %.preheader.i.us96.i.i.i.i ], [ 0, %.preheader.i.us96.i.i.i.i.preheader ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.sroa.09.0.us.i.us97.i.i.i.i264
  %i.ll = load i8, ptr %i.lk, align 1, !alias.scope !8686, !noalias !8683, !noundef !17
  %i.lm = add nuw i64 %.sroa.09.0.us.i.us97.i.i.i.i264, %i.lb ; 2 uses
  %i.ln = icmp ult i64 %i.lm, %i.hn
  call void @llvm.assume(i1 %i.ln)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.lm
  %i.lp = load i8, ptr %i.lo, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %.not20.us.i.us99.i.i.i.i = icmp eq i8 %i.ll, %i.lp
  br i1 %.not20.us.i.us99.i.i.i.i, label %.preheader.i.us96.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph265
  %i.lq = sub i64 %i.lc, %i.ju
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph.split.us.i.us93.i.i.i.i
  %.sink.i13.us100.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.split.us.i.us93.i.i.i.i ], [ %i.lq, %bb.bk ] ; 2 uses
  %i.lr = sub i64 %.sink.i13.us100.i.i.i.i, %i.hr ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %i.hn
  br i1 %i.ls, label %.lr.ph.split.us.i.us93.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.hl, i64 %3
  %i.lu = load i8, ptr %i.lt, align 1, !alias.scope !8685, !noalias !8683, !noundef !17
  %i.lv = and i8 %i.lu, 63
  %i.lw = zext nneg i8 %i.lv to i64
  %i.lx = shl nuw i64 1, %i.lw
  %i.ly = and i64 %i.lx, %i.jq
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not.us.i.i.i.i.i, label %.lr.ph.i.i.i, label %.preheader45.i.preheader.i.i.i.invoke.i

.preheader45.i.preheader.i.i.i.invoke.i:          ; preds = %.lr.ph, %.lr.ph261, %.lr.ph.split.us.i.i.i.i.i, %.lr.ph.split.us.i.i.preheader.i.i.i
  %i.lz = phi i64 [ %i.jv, %.lr.ph.split.us.i.i.i.i.i ], [ %umax71.i.i.i.i.i, %.lr.ph261 ], [ %i.jv, %.lr.ph.split.us.i.i.preheader.i.i.i ], [ %i.iw, %.lr.ph ]
  %i.ma = phi ptr [ @66, %.lr.ph.split.us.i.i.i.i.i ], [ @65, %.lr.ph261 ], [ @66, %.lr.ph.split.us.i.i.preheader.i.i.i ], [ @66, %.lr.ph ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.lz, i64 noundef range(i64 0, -9223372036854775808) %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ma) #47
          to label %.preheader45.i.preheader.i.i.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668

.preheader45.i.preheader.i.i.i.cont.i:            ; preds = %.preheader45.i.preheader.i.i.i.invoke.i
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.us.i.i.preheader.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %2 = phi i64 [ %3, %.lr.ph.split.us.i.i.i.i.i ], [ %i.jn, %.lr.ph.split.us.i.i.preheader.i.i.i ]
  %3 = sub i64 %2, %i.hr                          ; 3 uses
  %4 = icmp ult i64 %3, %i.hn
  br i1 %4, label %.lr.ph.split.us.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ba, %.preheader46.i.i.i.i.i, %bb.bc, %.lr.ph.i.i.i, %bb.bl, %.preheader.i.us96.i.i.i.i.preheader, %.preheader.i.us96.i.i.i.i, %bb.bj, %.preheader.i.us.i.i.i.i.preheader, %.preheader.i.us.i.i.i.i, %bb.as, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.i.i.i, %bb.bh, %bb.ay, %.noexc17.i, %bb.at, %.split.us.i.i.i.i, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i, %bb.an, %.preheader.i.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ undef, %.preheader.i.i.i.i ], [ undef, %bb.ay ], [ undef, %.lr.ph.i.i.i ], [ undef, %bb.at ], [ %spec.select.i.i.i, %.noexc17.i ], [ %i.jw, %.preheader.i.us.i.i.i.i ], [ undef, %bb.bh ], [ %i.lb, %bb.bl ], [ 0, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i ], [ 0, %.split.us.i.i.i.i ], [ %.promoted105.i.i.i.i, %bb.an ], [ %i.lb, %.preheader.i.us96.i.i.i.i ], [ %i.in, %bb.bc ], [ %i.jw, %bb.bj ], [ %i.gl, %bb.as ], [ %i.gl, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.i.i.i ], [ %i.gl, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.i.i.i ], [ %i.gl, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.i.i.i ], [ %i.jw, %.preheader.i.us.i.i.i.i.preheader ], [ %i.lb, %.preheader.i.us96.i.i.i.i.preheader ], [ %i.in, %.preheader46.i.i.i.i.i ], [ %i.in, %bb.ba ]
  %storemerge.i.sink.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 0, %bb.ay ], [ 0, %.lr.ph.i.i.i ], [ 0, %bb.at ], [ %i.ia, %.noexc17.i ], [ 1, %.preheader.i.us.i.i.i.i ], [ 0, %bb.bh ], [ 0, %bb.bl ], [ 1, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i.i ], [ %spec.select116.i.i.i, %.split.us.i.i.i.i ], [ 1, %bb.an ], [ 1, %.preheader.i.us96.i.i.i.i ], [ 1, %bb.bc ], [ 1, %.preheader.i.us.i.i.i.i.preheader ], [ 1, %bb.as ], [ 1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit21.i.i.us.i.i.i.i ], [ 1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit19.i.i.us.i.i.i.i ], [ 1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsc4241EHy6Do_9typst_kit.exit17.i.i.us.i.i.i.i ], [ 0, %bb.bj ], [ 1, %.preheader.i.us96.i.i.i.i.preheader ], [ 0, %bb.ba ], [ 1, %.preheader46.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8672
  %i.mb = icmp sgt i64 %i.ei, -1
  call void @llvm.assume(i1 %i.mb)
  %i.mc = trunc i64 %storemerge.i.sink.i.i.i.i to i1
  %spec.select.i.i = select i1 %i.mc, i64 %.sroa.4.1.i.i.i, i64 %i.ei ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8688)
  %i.md = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.md, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i
  %.not.i.i.i = icmp ult i64 %spec.select.i.i, %i.ei
  br i1 %.not.i.i.i, label %bb.bp, label %.split.i.i.i

bb.bn:                                            ; preds = %bb.bp, %.split.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECsc4241EHy6Do_9typst_kit.exit.i.i
  %i.me = load i64, ptr %i.bc, align 8, !range !21, !alias.scope !8689, !noundef !17
  %i.mf = sub nsw i64 %i.me, %i.ei
  %i.mg = icmp ult i64 %i.mf, 97
  br i1 %i.mg, label %bb.bo, label %_RNvNtCsc4241EHy6Do_9typst_kit6server25inject_live_reload_script.exit.i, !prof !23

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %i.ei, i64 noundef 97, i64 noundef 1, i64 noundef 1)
          to label %.noexc22.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668

.noexc22.i:                                       ; preds = %bb.bo
  %.pre.i.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !8690
  br label %_RNvNtCsc4241EHy6Do_9typst_kit6server25inject_live_reload_script.exit.i

.split.i.i.i:                                     ; preds = %bb.bm
  %i.mh = icmp eq i64 %spec.select.i.i, %i.ei
  br i1 %i.mh, label %bb.bn, label %bb.bq, !prof !16

bb.bp:                                            ; preds = %bb.bm
  %i.mi = getelementptr inbounds nuw i8, ptr %i.eg, i64 %spec.select.i.i
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !8691, !noundef !17
  %i.mk = icmp sgt i8 %i.mj, -65
  br i1 %i.mk, label %bb.bn, label %bb.bq, !prof !16

bb.bq:                                            ; preds = %bb.bp, %.split.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #47
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668

.noexc23.i:                                       ; preds = %bb.bq
  unreachable

_RNvNtCsc4241EHy6Do_9typst_kit6server25inject_live_reload_script.exit.i: ; preds = %.noexc22.i, %bb.bn
  %i.ml = phi ptr [ %i.eg, %bb.bn ], [ %.pre.i.i.i, %.noexc22.i ]
  %i.mm = getelementptr i8, ptr %i.ml, i64 %spec.select.i.i ; 3 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 97
  %i.mo = sub nsw i64 %i.ei, %spec.select.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.mn, ptr nonnull align 1 %i.mm, i64 %i.mo, i1 false), !noalias !8691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(97) %i.mm, ptr noundef nonnull align 1 dereferenceable(97) @278, i64 97, i1 false), !noalias !8691
  %i.mp = add nuw i64 %i.ei, 97                   ; 2 uses
  store i64 %i.mp, ptr %i.eh, align 8, !alias.scope !8690
  br label %bb.ag

.thread60.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body33.i, %bb.kh, %.body.i.i, %bb.fs
  %.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body33.i ], [ %.pn.pn.i.i, %.body.i.i ], [ %eh.lpad-body32.ph.i, %bb.kh ], [ %i.ahi, %bb.fs ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.09.0.i = phi i1 [ true, %.body33.i ], [ false, %.body.i.i ], [ false, %bb.kh ], [ false, %bb.fs ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit6server8HttpBodyEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc) #44
          to label %bb.kg unwind label %bb.ki, !noalias !8668

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cb, %.thread.i.i, %bb.cd, %bb.by, %bb.bq, %bb.bo, %.preheader45.i.preheader.i.i.i.invoke.i, %bb.ax, %bb.aw, %.split115.us.i.i.i.i, %bb.ah, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread60.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %.noexc29.i, %bb.ag
  %.sroa.45.0.i = phi i64 [ 9, %bb.ag ], [ %i.adf, %.noexc29.i ], [ %.sroa.42.0.i.i.i, %.thread.sink.split.i ] ; 2 uses
  %.sroa.03.0.i = phi ptr [ @265, %bb.ag ], [ %i.add, %.noexc29.i ], [ %.sroa.01.0.i.i.i, %.thread.sink.split.i ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ %i.ec, %bb.ag ], [ %i.ng, %.noexc29.i ], [ %i.ng, %.thread.sink.split.i ]
  %.sroa.0.0.i = phi ptr [ %i.ee, %bb.ag ], [ %i.nf, %.noexc29.i ], [ %i.nf, %.thread.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8692
  store i64 0, ptr %i.av, align 8, !noalias !8692
  %i.mq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.mq, align 8, !noalias !8692
  %i.mr = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store i64 0, ptr %i.mr, align 8, !noalias !8692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !8692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8693
  invoke void @_RNvXsM_NtCsdnE3c6dgt4b_5ascii9ascii_strShNtB5_10AsAsciiStr12as_ascii_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 12)
          to label %.noexc24.i unwind label %bb.fm, !noalias !8668

.noexc24.i:                                       ; preds = %.thread.i
  %i.ms = load ptr, ptr %i.ap, align 8, !noalias !8693, !noundef !17
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8693
  br label %bb.fn

bb.bs:                                            ; preds = %.noexc24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8693
  invoke void @_RNvXsE_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 12)
          to label %.noexc25.i unwind label %bb.fm, !noalias !8668

.noexc25.i:                                       ; preds = %bb.bs
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !8693, !nonnull !17, !noundef !17 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !noalias !8693, !noundef !17 ; 2 uses
  %i.my = icmp sgt i64 %i.mx, -1
  call void @llvm.assume(i1 %i.my)
  %i.mz = load i64, ptr %i.ao, align 8, !range !21, !noalias !8693, !noundef !17 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8694
  invoke void @_RNvXsM_NtCsdnE3c6dgt4b_5ascii9ascii_strShNtB5_10AsAsciiStr12as_ascii_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef %.sroa.45.0.i)
          to label %.noexc.i.i unwind label %bb.bu, !noalias !8695

.noexc.i.i:                                       ; preds = %.noexc25.i
  %i.na = load ptr, ptr %i.an, align 8, !noalias !8694, !noundef !17
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8694
  invoke void @_RNvXsE_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef %.sroa.45.0.i)
          to label %bb.fo unwind label %bb.bu, !noalias !8695

bb.bu:                                            ; preds = %bb.bt, %.noexc25.i
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = icmp eq i64 %i.mz, 0
  br i1 %i.nd, label %.body33.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mv, i64 noundef %i.mz, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !8695
  br label %.body33.i

bb.bw:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8694
  %i.ne = icmp eq i64 %i.mz, 0
  br i1 %i.ne, label %bb.fn, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mv, i64 noundef %i.mz, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !8695
  br label %bb.fn

bb.by:                                            ; preds = %bb.ae
  %i.nf = extractvalue { ptr, i64 } %i.eb, 0      ; 3 uses
  %i.ng = extractvalue { ptr, i64 } %i.eb, 1      ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !alias.scope !8668, !nonnull !17, !noundef !17 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !8668, !noundef !17 ; 3 uses
  %i.nl = invoke { ptr, i64 } @_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ea)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.nm = extractvalue { ptr, i64 } %i.nl, 0
  %i.nn = extractvalue { ptr, i64 } %i.nl, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !8696)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cc
  %.not.i.i.i26.i = icmp ugt i64 %i.ns, %i.nk
  br i1 %.not.i.i.i26.i, label %.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.no = phi i64 [ %i.nk, %bb.bz ], [ %i.ns, %bb.ca ] ; 2 uses
  %i.np = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ni, i64 noundef %i.no)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668 ; 2 uses

.noexc27.i:                                       ; preds = %bb.cb
  %i.nq = extractvalue { i64, i64 } %i.np, 0
  %i.nr = trunc nuw i64 %i.nq to i1
  br i1 %i.nr, label %bb.cc, label %.thread.i.i

bb.cc:                                            ; preds = %.noexc27.i
  %i.ns = extractvalue { i64, i64 } %i.np, 1      ; 5 uses
  %i.nt = icmp ult i64 %i.ns, %i.no
  call void @llvm.assume(i1 %i.nt)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ns
  %lhsc.i.i.i = load i8, ptr %i.nu, align 1, !alias.scope !8697, !noalias !8668
  %i.nv = icmp eq i8 %lhsc.i.i.i, 46
  br i1 %i.nv, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc
  %i.nw = add nuw i64 %i.ns, 1                    ; 2 uses
  %i.nx = sub nuw i64 %i.nk, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8698
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ny, i64 noundef %i.nx)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8668

.noexc28.i:                                       ; preds = %bb.cd
  %i.nz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !noalias !8698, !nonnull !17, !noundef !17 ; 82 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !noalias !8698, !noundef !17
  switch i64 %i.oc, label %bb.dz [
    i64 4, label %bb.ce
    i64 3, label %bb.cf
    i64 5, label %bb.cg
    i64 2, label %bb.ci
  ]
end_hunk_0
begin_hunk_1_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9861)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !9858, !noalias !9862, !noundef !17
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !9863, !noundef !17 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit12.i.i.us

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !9863, !noundef !17
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !9863, !noundef !17
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !9863, !noundef !17
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit42.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit42.split.us.loopexit

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit16.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit14.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc4241EHy6Do_9typst_kit.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !9861
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @390) #47, !noalias !9862
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !9861
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !9861
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !9861
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !17 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !17 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !17 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !17, !noundef !17 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !17 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !17 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !9861
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !17, !noundef !17
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !17 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit43, label %.loopexit44

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !9864, !noundef !17
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit43, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9868)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !9866 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !9866, !noundef !17
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !9866 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !9866 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !9866
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !9867, !noundef !17
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %i.eu) ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !9866
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !9866
  %i.fj = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1     ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %i.eu
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !9868, !noundef !17
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !9867, !noundef !17
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !9866
  store i64 0, ptr %i.dg, align 8, !alias.scope !9866
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !9869
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !9869
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !9868, !noundef !17
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !9867, !noundef !17
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #47, !noalias !9870
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9874)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !9872 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !9872, !noundef !17
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !9872
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !9872
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gp = add i64 %.fr215, -1                     ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215
  %.not34.i.us313 = icmp eq i64 %.fr215, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !9873, !noundef !17
  %i.gu = and i8 %i.gt, 63
  %i.gv = zext nneg i8 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = and i64 %i.gw, %i.gl
  %.not.us.i = icmp eq i64 %i.gx, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1          ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.i19

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1       ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !9874, !noundef !17
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !9873, !noundef !17
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go
  br label %bb.ah

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !9874, !noundef !17
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !9873, !noundef !17
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i19:                                   ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i20

.split32.us.i20:                                  ; preds = %.preheader.i19
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #47, !noalias !9875
  unreachable

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !9872
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !9872
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.i19
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !9872
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !9876
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !9876
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYINtNtCs5349LTBI5LY_16chunked_transfer7encoder7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1A_6marker4SendEL_EEB1u_9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load i64, ptr %i.d, align 8, !alias.scope !9889, !noundef !17 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !9889, !noundef !17 ; 6 uses
  %i.l = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -6                     ; 2 uses
  %i.n = sub i64 %i.j, %i.m                       ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, -9223372036854775808) %2, i64 %i.n) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  call void @llvm.experimental.noalias.scope.decl(metadata !9890)
  %i.p = load i64, ptr %0, align 8, !range !21, !alias.scope !9891, !noundef !17
  %i.q = sub nsw i64 %i.p, %i.k
  %i.r = icmp ugt i64 %..i, %i.q
  br i1 %i.r, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i: ; preds = %bb.b
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.k, i64 noundef %..i, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !9890, !noundef !17 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  br label %bb.c

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.b
  %.not.i12 = icmp eq i64 %i.j, %i.m
  br i1 %.not.i12, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i
  %i.u = phi i64 [ %i.s, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !9890, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %..i, i1 false), !noalias !9890
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %bb.c
  %i.x = phi i64 [ %i.u, %bb.c ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i ]
  %i.y = add nuw i64 %i.x, %..i
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !9890
  %i.z = icmp ult i64 %i.n, %2                    ; 2 uses
  %i.aa = load i8, ptr %i.g, align 8, !range !41, !alias.scope !9889, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit
  br i1 %i.z, label %bb.f, label %.loopexit.sink.split

bb.e:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit
  %i.ac = call fastcc noundef ptr @_RNvMNtCs5349LTBI5LY_16chunked_transfer7encoderINtB2_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1D_6marker4SendEL_EE4sendCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !noalias !9892, !inline_history !9884 ; 2 uses
  %.not18.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ad = call fastcc noundef ptr @_RNvMNtCs5349LTBI5LY_16chunked_transfer7encoderINtB2_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1D_6marker4SendEL_EE4sendCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !noalias !9892, !inline_history !9884 ; 2 uses
  %.not17.i = icmp eq ptr %i.ad, null
  br i1 %.not17.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ae = sub nuw nsw i64 %2, %..i
  %i.af = call fastcc noundef ptr @_RNvYINtNtCs5349LTBI5LY_16chunked_transfer7encoder7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1A_6marker4SendEL_EEB1u_9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.ae), !inline_history !9884 ; 2 uses
  %.not19.i = icmp eq ptr %i.af, null
  br i1 %.not19.i, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h
  %.sroa.4.0.i.ph = phi ptr [ %i.af, %bb.h ], [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 11 uses
  store i64 1, ptr %i.b, align 8
  store ptr %.sroa.4.0.i.ph, ptr %i.h, align 8
  %i.ag = ptrtoint ptr %.sroa.4.0.i.ph to i64     ; 4 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %bb.j
    i64 3, label %.split33
    i64 0, label %.split34
    i64 1, label %.split
  ], !prof !30

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !17, !noundef !17
  %i.an = invoke noundef zeroext i1 %i.am(i32 noundef %i.ak)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.n, !inline_history !0

.split33:                                         ; preds = %bb.i
  %i.ao = lshr i64 %i.ag, 32
  %i.ap = icmp ult ptr %.sroa.4.0.i.ph, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ao to i8
  %spec.select.i.i.i = select i1 %i.ap, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.aq = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ar, label %bb.k, label %.loopexit.sink.split

.split34:                                         ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 16
  %i.at = load i8, ptr %i.as, align 8, !range !36, !noundef !17
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %.thread.thread, label %.loopexit.sink.split

.split:                                           ; preds = %bb.i
  %i.av = getelementptr i8, ptr %.sroa.4.0.i.ph, i64 31
  %i.aw = load i8, ptr %i.av, align 8, !range !36, !noundef !17
  %i.ax = icmp eq i8 %i.aw, 35
  br i1 %i.ax, label %bb.l, label %.loopexit.sink.split

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.an, label %.thread.thread, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split34, %.split33, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.h, %bb.g, %bb.d
  %.sroa.07.1.ph = phi ptr [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.g ], [ %.sroa.4.0.i.ph, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %.sroa.4.0.i.ph, %.split ], [ %.sroa.4.0.i.ph, %.split33 ], [ %.sroa.4.0.i.ph, %.split34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ %.sroa.07.1.ph, %.loopexit.sink.split ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9893
  br label %bb.m

bb.k:                                             ; preds = %.split33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9893
  %i.ay = icmp ult ptr %.sroa.4.0.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.ag, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.ba)
  br label %bb.m

bb.l:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9893
  %i.bb = getelementptr i8, ptr %.sroa.4.0.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %i.i, align 8, !alias.scope !9894, !noalias !9893
  store i8 3, ptr %i.a, align 8, !alias.scope !9894, !noalias !9893
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !9893
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.n:                                             ; preds = %.noexc, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #44
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm

bb.p:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9909)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!9675 = !{!9632, !9589, !9590}
!9676 = !{!9634}
!9677 = !{!9636}
!9678 = !{!9638}
!9679 = !{!9638, !9636, !9634, !9632, !9589}
!9680 = !{!9638, !9636, !9634, !9632}
!9681 = distinct !{!9681, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit"}
!9682 = distinct !{!9682, !9681, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit: argument 1"}
!9683 = distinct !{!9683, !9681, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit: argument 0"}
!9684 = !{!9683, !9682}
!9685 = distinct !{!9685, i1 true, !"_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit"}
!9686 = distinct !{!9686, !9685, !"_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsc4241EHy6Do_9typst_kit: argument 0"}
!9687 = distinct !{!9687, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsc4241EHy6Do_9typst_kit"}
!9688 = distinct !{!9688, !9687, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsc4241EHy6Do_9typst_kit: argument 0"}
!9689 = distinct !{!9689, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit"}
!9690 = distinct !{!9690, !9689, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit: argument 0"}
!9691 = !{!9686}
!9692 = !{!9688}
!9693 = !{!9688, !9686}
!9694 = !{!9690}
!9695 = distinct !{!9695, i1 true, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!9696 = distinct !{!9696, !9695, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!9697 = distinct !{!9697, !9695, !"_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!9698 = distinct !{!9698, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit"}
!9699 = distinct !{!9699, !9698, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit: argument 1"}
!9700 = distinct !{!9700, !9698, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit: argument 0"}
!9701 = !{!9696}
!9702 = !{!9697}
!9703 = !{!9696, !9697}
!9704 = !{!9700, !9699}
!9705 = distinct !{!9705, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit"}
!9706 = distinct !{!9706, !9705, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit: argument 0"}
!9707 = distinct !{!9707, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit"}
!9708 = distinct !{!9708, !9707, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit: argument 0"}
!9709 = !{!9706}
!9710 = !{!9708, !9706}
!9711 = distinct !{!9711, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit"}
!9712 = distinct !{!9712, !9711, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit: argument 1"}
!9713 = distinct !{!9713, !9711, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit: argument 0"}
!9714 = !{!9713, !9712}
!9715 = distinct !{!9715, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsc4241EHy6Do_9typst_kit"}
!9716 = distinct !{!9716, !9715, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsc4241EHy6Do_9typst_kit: argument 1"}
!9717 = distinct !{!9717, !9715, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsc4241EHy6Do_9typst_kit: argument 0"}
!9718 = distinct !{!9718, i1 true, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsc4241EHy6Do_9typst_kit"}
!9719 = distinct !{!9719, !9718, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE6appendCsc4241EHy6Do_9typst_kit: argument 0"}
!9720 = !{!9717, !9716}
!9721 = !{!9719}
!9722 = distinct !{!9722, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit"}
!9723 = distinct !{!9723, !9722, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4iterCsc4241EHy6Do_9typst_kit: argument 1"}
!9724 = distinct !{!9724, i1 true, !"_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterjENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtB1f_5accumjINtB2l_3SumRjE3sumBY_E0ECsc4241EHy6Do_9typst_kit"}
!9725 = distinct !{!9725, !9724, !"_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterjENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtB1f_5accumjINtB2l_3SumRjE3sumBY_E0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9726 = distinct !{!9726, !9732, !9733}
!9727 = distinct !{!9727, !9733, !9732}
!9728 = distinct !{!9728, !9732, !9733}
!9729 = distinct !{!9729, !9733, !9732}
!9730 = !{!9723}
!9731 = !{!9725}
!9732 = !{!"llvm.loop.isvectorized", i32 1}
!9733 = !{!"llvm.loop.unroll.runtime.disable"}
!9734 = distinct !{!9734, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!9735 = distinct !{!9735, !9734, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!9736 = distinct !{!9736, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit"}
!9737 = distinct !{!9737, !9736, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit: argument 0"}
!9738 = !{!9735}
!9739 = !{!9737, !9735}
!9740 = distinct !{!9740, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!9741 = distinct !{!9741, !9740, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!9742 = distinct !{!9742, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit"}
!9743 = distinct !{!9743, !9742, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit: argument 0"}
!9744 = distinct !{!9744, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit"}
!9745 = distinct !{!9745, !9744, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit: argument 0"}
!9746 = distinct !{!9746, !9740, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!9747 = !{!9741}
!9748 = !{!9743}
!9749 = !{!9745, !9743, !9741}
!9750 = !{!9746}
!9751 = !{!9743, !9741}
!9752 = distinct !{null}
!9753 = distinct !{!9753, i1 true, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit"}
!9754 = distinct !{!9754, !9753, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9755 = distinct !{null}
!9756 = !{!9754}
!9757 = distinct !{!9757, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00ECsc4241EHy6Do_9typst_kit"}
!9758 = distinct !{!9758, !9757, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00ECsc4241EHy6Do_9typst_kit: argument 0"}
!9759 = distinct !{!9759, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line16binary_search_byNCINvB2_20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00E0ECsc4241EHy6Do_9typst_kit"}
!9760 = distinct !{!9760, !9759, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line16binary_search_byNCINvB2_20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00E0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9761 = distinct !{!9761, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit"}
!9762 = distinct !{!9762, !9761, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit: argument 0"}
!9763 = distinct !{!9763, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit"}
!9764 = distinct !{!9764, !9763, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit: argument 0"}
!9765 = distinct !{!9765, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit"}
!9766 = distinct !{!9766, !9765, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit: argument 0"}
!9767 = !{!9760, !9758}
!9768 = !{!9766, !9764, !9762}
!9769 = distinct !{!9769, i1 true, !"_RNvMNtCs5PEMdK7bMAG_12typst_syntax5linesINtB2_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE13line_to_rangeCsc4241EHy6Do_9typst_kit"}
!9770 = distinct !{!9770, !9769, !"_RNvMNtCs5PEMdK7bMAG_12typst_syntax5linesINtB2_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE13line_to_rangeCsc4241EHy6Do_9typst_kit: argument 0"}
!9771 = distinct !{!9771, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit"}
!9772 = distinct !{!9772, !9771, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit: argument 0"}
!9773 = distinct !{!9773, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit"}
!9774 = distinct !{!9774, !9773, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit: argument 0"}
!9775 = distinct !{!9775, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit"}
!9776 = distinct !{!9776, !9775, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit: argument 0"}
!9777 = !{!9770}
!9778 = !{!9776, !9774, !9772}
!9779 = distinct !{!9779, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00ECsc4241EHy6Do_9typst_kit"}
!9780 = distinct !{!9780, !9779, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00ECsc4241EHy6Do_9typst_kit: argument 0"}
!9781 = distinct !{!9781, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line16binary_search_byNCINvB2_20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00E0ECsc4241EHy6Do_9typst_kit"}
!9782 = distinct !{!9782, !9781, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs5PEMdK7bMAG_12typst_syntax5lines4Line16binary_search_byNCINvB2_20binary_search_by_keyjNCNCNvMBx_INtBx_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE12byte_to_line00E0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9783 = distinct !{!9783, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range"}
!9784 = distinct !{!9784, !9783, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range: argument 0"}
!9785 = distinct !{!9785, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit"}
!9786 = distinct !{!9786, !9785, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit: argument 0"}
!9787 = distinct !{!9787, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit"}
!9788 = distinct !{!9788, !9787, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit: argument 0"}
!9789 = distinct !{!9789, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit"}
!9790 = distinct !{!9790, !9789, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit: argument 0"}
!9791 = distinct !{!9791, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit"}
!9792 = distinct !{!9792, !9791, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax5lines5LinesNtNtCs1xwejQucwHj_5alloc6string6StringEECsc4241EHy6Do_9typst_kit: argument 0"}
!9793 = distinct !{!9793, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit"}
!9794 = distinct !{!9794, !9793, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEECsc4241EHy6Do_9typst_kit: argument 0"}
!9795 = distinct !{!9795, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit"}
!9796 = distinct !{!9796, !9795, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit: argument 0"}
!9797 = !{!9782, !9780}
!9798 = !{!9784}
!9799 = !{!9786}
!9800 = !{!9788}
!9801 = !{!9790}
!9802 = !{!9790, !9788, !9786}
!9803 = !{!9796, !9794, !9792}
!9804 = !{!9792}
!9805 = !{!9794}
!9806 = !{!9796}
!9807 = distinct !{!9807, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push"}
!9808 = distinct !{!9808, !9807, !"_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push: argument 0"}
!9809 = distinct !{!9809, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw"}
!9810 = distinct !{!9810, !9809, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw: argument 0"}
!9811 = distinct !{!9811, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push"}
!9812 = distinct !{!9812, !9811, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push: argument 0"}
!9813 = distinct !{!9813, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCsc4241EHy6Do_9typst_kit"}
!9814 = distinct !{!9814, !9813, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCsc4241EHy6Do_9typst_kit: argument 0"}
!9815 = distinct !{null}
!9816 = distinct !{!9816, i1 true, !"_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsc4241EHy6Do_9typst_kit"}
!9817 = distinct !{!9817, !9816, !"_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsc4241EHy6Do_9typst_kit: argument 0"}
!9818 = distinct !{!9818, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCsc4241EHy6Do_9typst_kit"}
!9819 = distinct !{!9819, !9818, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCsc4241EHy6Do_9typst_kit: argument 0"}
!9820 = distinct !{!9820, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!9821 = distinct !{!9821, !9820, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!9822 = !{!9808}
!9823 = !{!9810}
!9824 = !{!9812}
!9825 = !{!9812, !9808}
!9826 = !{!9814}
!9827 = !{!9814, !9812, !9808}
!9828 = !{!9817, !9812, !9808}
!9829 = !{!9819}
!9830 = !{!9819, !9812, !9808}
!9831 = !{!9821, !9812, !9808}
!9832 = distinct !{!9832, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!9833 = distinct !{!9833, !9832, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!9834 = distinct !{!9834, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!9835 = distinct !{!9835, !9834, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!9836 = distinct !{!9836, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!9837 = distinct !{!9837, !9836, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!9838 = distinct !{!9838, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsc4241EHy6Do_9typst_kit"}
!9839 = distinct !{!9839, !9838, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsc4241EHy6Do_9typst_kit: argument 0"}
!9840 = distinct !{!9840, !9836, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!9841 = distinct !{!9841, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!9842 = distinct !{!9842, !9841, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!9843 = distinct !{!9843, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit"}
!9844 = distinct !{!9844, !9843, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 0"}
!9845 = distinct !{!9845, !9843, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 1"}
!9846 = distinct !{!9846, !9843, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 2"}
!9847 = distinct !{!9847, !9843, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 3"}
!9848 = distinct !{!9848, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!9849 = distinct !{!9849, !9848, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!9850 = distinct !{!9850, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit"}
!9851 = distinct !{!9851, !9850, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 0"}
!9852 = distinct !{!9852, !9850, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 1"}
!9853 = distinct !{!9853, !9850, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 2"}
!9854 = distinct !{!9854, !9850, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsc4241EHy6Do_9typst_kit: argument 3"}
!9855 = distinct !{!9855, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!9856 = distinct !{!9856, !9855, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!9857 = !{!9833}
!9858 = !{!9835}
!9859 = !{!9837, !9833}
!9860 = !{!9839, !9837, !9833}
!9861 = !{!9840}
!9862 = !{!9837, !9840}
!9863 = !{!9839, !9837, !9840}
!9864 = !{!9842}
!9865 = !{!9844}
!9866 = !{!9845}
!9867 = !{!9846}
!9868 = !{!9847}
!9869 = !{!9849, !9844}
!9870 = !{!9844, !9845, !9846, !9847}
!9871 = !{!9851}
!9872 = !{!9852}
!9873 = !{!9853}
!9874 = !{!9854}
!9875 = !{!9851, !9852, !9853, !9854}
!9876 = !{!9856, !9851}
!9877 = distinct !{!9877, i1 true, !"_RNvXs_NtCs5349LTBI5LY_16chunked_transfer7encoderINtB4_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1F_6marker4SendEL_EEB1z_5writeCsc4241EHy6Do_9typst_kit"}
!9878 = distinct !{!9878, !9877, !"_RNvXs_NtCs5349LTBI5LY_16chunked_transfer7encoderINtB4_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1F_6marker4SendEL_EEB1z_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9879 = distinct !{!9879, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit"}
!9880 = distinct !{!9880, !9879, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit: argument 0"}
!9881 = distinct !{!9881, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit"}
!9882 = distinct !{!9882, !9881, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit: argument 0"}
!9883 = distinct !{!9883, !9877, !"_RNvXs_NtCs5349LTBI5LY_16chunked_transfer7encoderINtB4_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1F_6marker4SendEL_EEB1z_5writeCsc4241EHy6Do_9typst_kit: argument 1"}
!9884 = distinct !{null}
!9885 = distinct !{!9885, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!9886 = distinct !{!9886, !9885, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!9887 = distinct !{!9887, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!9888 = distinct !{!9888, !9887, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9889 = !{!9878}
!9890 = !{!9880}
!9891 = !{!9882, !9880}
!9892 = !{!9883}
!9893 = !{!9886}
!9894 = !{!9888}
!9895 = distinct !{!9895, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit"}
!9896 = distinct !{!9896, !9895, !"_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9897 = distinct !{!9897, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB29_5WriteNtNtBb_6marker4SendEL_EEB4c_14write_vectored0E0ECsc4241EHy6Do_9typst_kit"}
!9898 = distinct !{!9898, !9897, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB29_5WriteNtNtBb_6marker4SendEL_EEB4c_14write_vectored0E0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9899 = distinct !{!9899, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCINvNtBN_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1s_5WriteNtNtB5_6marker4SendEL_EEB3v_14write_vectored0Es_0ECsc4241EHy6Do_9typst_kit"}
!9900 = distinct !{!9900, !9899, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCINvNtBN_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1s_5WriteNtNtB5_6marker4SendEL_EEB3v_14write_vectored0Es_0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9901 = distinct !{!9901, i1 true, !"_RNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1z_6marker4SendEL_EEB1t_14write_vectored0Csc4241EHy6Do_9typst_kit"}
!9902 = distinct !{!9902, !9901, !"_RNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1z_6marker4SendEL_EEB1t_14write_vectored0Csc4241EHy6Do_9typst_kit: argument 0"}
!9903 = distinct !{!9903, i1 true, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit"}
!9904 = distinct !{!9904, !9903, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit: argument 1"}
!9905 = distinct !{!9905, !9903, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9906 = distinct !{!9906, i1 true, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit"}
!9907 = distinct !{!9907, !9906, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9908 = distinct !{null, null, ptr @_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit, null}
!9909 = !{!9896}
!9910 = !{!9898}
!9911 = !{!9900, !9896}
!9912 = !{!9907, !9905, !9904, !9902, !9896}
!9913 = !{!9905, !9896}
!9914 = distinct !{!9914, i1 true, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices"}
!9915 = distinct !{!9915, !9914, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices: argument 0"}
!9916 = distinct !{!9916, i1 true, !"_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit"}
!9917 = distinct !{!9917, !9916, !"_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit: argument 0"}
!9918 = distinct !{!9918, !9916, !"_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit: argument 1"}
!9919 = distinct !{!9919, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit"}
!9920 = distinct !{!9920, !9919, !"_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9921 = distinct !{!9921, i1 true, !"_RNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1z_6marker4SendEL_EEB1t_14write_vectored0Csc4241EHy6Do_9typst_kit"}
!9922 = distinct !{!9922, !9921, !"_RNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1z_6marker4SendEL_EEB1t_14write_vectored0Csc4241EHy6Do_9typst_kit: argument 0"}
!9923 = distinct !{!9923, i1 true, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit"}
!9924 = distinct !{!9924, !9923, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit: argument 1"}
!9925 = distinct !{!9925, !9923, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9926 = distinct !{!9926, i1 true, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit"}
!9927 = distinct !{!9927, !9926, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9928 = distinct !{!9928, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB29_5WriteNtNtBb_6marker4SendEL_EEB4c_14write_vectored0E0ECsc4241EHy6Do_9typst_kit"}
!9929 = distinct !{!9929, !9928, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtBU_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB29_5WriteNtNtBb_6marker4SendEL_EEB4c_14write_vectored0E0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9930 = distinct !{!9930, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCINvNtBN_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1s_5WriteNtNtB5_6marker4SendEL_EEB3v_14write_vectored0Es_0ECsc4241EHy6Do_9typst_kit"}
!9931 = distinct !{!9931, !9930, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_2io8io_slice7IoSliceE6map_orRShNCINvNtBN_5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1s_5WriteNtNtB5_6marker4SendEL_EEB3v_14write_vectored0Es_0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9932 = distinct !{ptr @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit, null, null, ptr @_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit, null}
!9933 = distinct !{!9933, i1 true, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices"}
!9934 = distinct !{!9934, !9933, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices: argument 0"}
!9935 = distinct !{!9935, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!9936 = distinct !{!9936, !9935, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!9937 = distinct !{!9937, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!9938 = distinct !{!9938, !9937, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9939 = !{!9915}
!9940 = !{!9917}
!9941 = !{!9927, !9925, !9924, !9922, !9920, !9917, !9918}
!9942 = !{!9918}
!9943 = !{!9920}
!9944 = !{!9920, !9918}
!9945 = !{!9929}
!9946 = !{!9931, !9920, !9918}
!9947 = !{!9925, !9920, !9917, !9918}
!9948 = !{!9934}
!9949 = !{!9936}
!9950 = !{!9938}
!9951 = distinct !{!9951, i1 true, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit"}
!9952 = distinct !{!9952, !9951, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9953 = distinct !{!9953, !9951, !"_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit: argument 1"}
!9954 = distinct !{!9954, i1 true, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit"}
!9955 = distinct !{!9955, !9954, !"_RNvXs2_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB11_6marker4SendEL_EBV_5writeCsc4241EHy6Do_9typst_kit: argument 0"}
!9956 = distinct !{ptr @_RNvXs_NtCsbGiR87yI9G2_9tiny_http7requestINtB4_12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1C_6marker4SendEL_EEB1w_5writeCsc4241EHy6Do_9typst_kit, null}
!9957 = distinct !{!9957, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!9958 = distinct !{!9958, !9957, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!9959 = distinct !{!9959, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!9960 = distinct !{!9960, !9959, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9961 = !{!9952}
!9962 = !{!9955, !9952, !9953}
!9963 = !{!9958}
!9964 = !{!9960}
!9965 = distinct !{!9965, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEECsc4241EHy6Do_9typst_kit"}
!9966 = distinct !{!9966, !9965, !"_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEECsc4241EHy6Do_9typst_kit: argument 0"}
!9967 = distinct !{!9967, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!9968 = distinct !{!9968, !9967, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!9969 = distinct !{!9969, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!9970 = distinct !{!9970, !9969, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9971 = !{!9966}
!9972 = !{!9968, !9966}
!9973 = !{!9970}
!9974 = !{!9968}
!9975 = distinct !{!9975, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read18default_read_exactINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit"}
!9976 = distinct !{!9976, !9975, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read18default_read_exactINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit: argument 1"}
!9977 = distinct !{!9977, !9975, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read18default_read_exactINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit: argument 0"}
!9978 = distinct !{!9978, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!9979 = distinct !{!9979, !9978, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!9980 = distinct !{!9980, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!9981 = distinct !{!9981, !9980, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9982 = !{!9977, !9976}
!9983 = !{!9979, !9977, !9976}
!9984 = !{!9981}
!9985 = !{!9979}
!9986 = distinct !{!9986, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEENtB2_4Read13read_vectored0ECsc4241EHy6Do_9typst_kit"}
!9987 = distinct !{!9987, !9986, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEENtB2_4Read13read_vectored0ECsc4241EHy6Do_9typst_kit: argument 1"}
!9988 = distinct !{!9988, i1 true, !"_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtNtCs1xwejQucwHj_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtBX_6cursor6CursorINtNtB2k_3vec3VechEEENtB2g_4Read13read_vectored0E0ECsc4241EHy6Do_9typst_kit"}
!9989 = distinct !{!9989, !9988, !"_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvNtNtCs1xwejQucwHj_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtBX_6cursor6CursorINtNtB2k_3vec3VechEEENtB2g_4Read13read_vectored0E0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9990 = distinct !{!9990, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCs1xwejQucwHj_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtBN_6cursor6CursorINtNtB1A_3vec3VechEEENtB1w_4Read13read_vectored0Es_0ECsc4241EHy6Do_9typst_kit"}
!9991 = distinct !{!9991, !9990, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCs1xwejQucwHj_5alloc2io4read21default_read_vectoredNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtBN_6cursor6CursorINtNtB1A_3vec3VechEEENtB1w_4Read13read_vectored0Es_0ECsc4241EHy6Do_9typst_kit: argument 0"}
!9992 = !{!9987}
!9993 = !{!9989}
!9994 = !{!9991, !9987}
!9995 = distinct !{!9995, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read22default_read_buf_exactINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit"}
!9996 = distinct !{!9996, !9995, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read22default_read_buf_exactINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit: argument 0"}
!9997 = distinct !{!9997, i1 true, !"_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit"}
!9998 = distinct !{!9998, !9997, !"_RNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEENtNtNtB1y_2io4read4Read8read_bufCsc4241EHy6Do_9typst_kit: argument 0"}
!9999 = distinct !{!9999, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEENtB2_4Read8read_buf0ECsc4241EHy6Do_9typst_kit"}
!10000 = distinct !{!10000, !9999, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEENtB2_4Read8read_buf0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10001 = distinct !{!10001, i1 true, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsc4241EHy6Do_9typst_kit"}
!10002 = distinct !{!10002, !10001, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsc4241EHy6Do_9typst_kit: argument 0"}
!10003 = distinct !{!10003, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!10004 = distinct !{!10004, !10003, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0:thread"}
!10005 = distinct !{!10005, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!10006 = distinct !{!10006, !10005, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0:thread"}
!10007 = distinct !{!10007, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!10008 = distinct !{!10008, !10007, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!10009 = distinct !{!10009, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!10010 = distinct !{!10010, !10009, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10011 = !{!9996}
!10012 = !{!10000, !9998, !9996}
!10013 = !{!10000, !9998}
!10014 = !{!10002, !10000, !9998, !9996}
!10015 = !{!10002}
!10016 = !{!10004, !9996}
!10017 = !{!10006, !9996}
!10018 = !{!10008, !9996}
!10019 = !{!10010}
!10020 = distinct !{!10020, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEE0ECsc4241EHy6Do_9typst_kit"}
!10021 = distinct !{!10021, !10020, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEE0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10022 = distinct !{!10022, !10020, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEE0ECsc4241EHy6Do_9typst_kit: argument 1"}
!10023 = distinct !{!10023, i1 true, !"_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB4_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0E0Csc4241EHy6Do_9typst_kit"}
!10024 = distinct !{!10024, !10023, !"_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB4_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0E0Csc4241EHy6Do_9typst_kit: argument 0"}
!10025 = distinct !{!10025, i1 true, !"_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB4_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0E0Csc4241EHy6Do_9typst_kit"}
!10026 = distinct !{!10026, !10025, !"_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read16append_to_stringNCINvB4_22default_read_to_stringINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0E0Csc4241EHy6Do_9typst_kit: argument 0"}
!10027 = !{!10021}
!10028 = !{!10021, !10022}
!10029 = !{!10024, !10021}
!10030 = !{!10026, !10021}
!10031 = distinct !{!10031, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEENtB2_4Read8read_buf0ECsc4241EHy6Do_9typst_kit"}
!10032 = distinct !{!10032, !10031, !"_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEENtB2_4Read8read_buf0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10033 = distinct !{!10033, i1 true, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsc4241EHy6Do_9typst_kit"}
!10034 = distinct !{!10034, !10033, !"_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsc4241EHy6Do_9typst_kit: argument 0"}
!10035 = !{!10032}
!10036 = !{!10034, !10032}
!10037 = !{!10034}
!10038 = distinct !{!10038, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw"}
!10039 = distinct !{!10039, !10038, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw: argument 0"}
!10040 = distinct !{!10040, i1 true, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit"}
!10041 = distinct !{!10041, !10040, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit: argument 0"}
!10042 = distinct !{!10042, !10040, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit: argument 1"}
!10043 = distinct !{!10043, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!10044 = distinct !{!10044, !10043, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!10045 = distinct !{!10045, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!10046 = distinct !{!10046, !10045, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10047 = !{!10039}
!10048 = !{!10041}
!10049 = !{!10044, !10041, !10042}
!10050 = !{!10046}
!10051 = distinct !{null}
!10052 = distinct !{!10052, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw"}
!10053 = distinct !{!10053, !10052, !"_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw: argument 0"}
!10054 = distinct !{!10054, i1 true, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit"}
!10055 = distinct !{!10055, !10054, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit: argument 0"}
!10056 = distinct !{!10056, !10054, !"_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit: argument 1"}
!10057 = distinct !{!10057, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!10058 = distinct !{!10058, !10057, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!10059 = distinct !{!10059, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!10060 = distinct !{!10060, !10059, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10061 = !{!10053}
!10062 = !{!10055}
!10063 = !{!10058, !10055, !10056}
!10064 = !{!10060}
!10065 = distinct !{null}
!10066 = distinct !{!10066, i1 true, !"_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source"}
!10067 = distinct !{!10067, !10066, !"_RNvXCsgSlMZLQvLVR_10native_tlsNtB2_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6source: argument 0"}
!10068 = !{!10067}
!10069 = distinct !{null}
!10070 = distinct !{null}
!10071 = distinct !{!10071, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit"}
!10072 = distinct !{!10072, !10071, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit: argument 0"}
!10073 = distinct !{!10073, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit"}
!10074 = distinct !{!10074, !10073, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit: argument 0"}
!10075 = !{!10072}
!10076 = !{!10074}
end_hunk_2
