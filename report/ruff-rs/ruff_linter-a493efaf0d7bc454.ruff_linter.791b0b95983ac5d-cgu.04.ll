Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.04?download=true
inline.NumInlined: 5984
inline.NumDeleted: 2399
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_19SuppressionsBuilder14match_comments:bb.a
  %.idx242 = shl nuw nsw i64 %.sink9.i.i, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx242
  %i.fh = icmp eq i64 %.sink9.i.i, 0
  br i1 %i.fh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit
  %.sroa.03.0151 = phi ptr [ %.sink10.i.i, %.lr.ph ], [ %i.fo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.03.0151, i64 8 ; 2 uses
  %i.fp = call { ptr, i64 } @_RINvXs8_NtCs2MoD74u7shA_14ruff_text_size6traitseNtB6_9TextSlice5sliceRNtNtB8_5range9TextRangeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef %i.fb, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.03.0151) ; 2 uses
  %i.fq = extractvalue { ptr, i64 } %i.fp, 0      ; 12 uses
  %i.fr = extractvalue { ptr, i64 } %i.fp, 1      ; 18 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fs = icmp ult i64 %i.fr, 25
  br i1 %i.fs, label %bb.n, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.ft = call { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fr), !noalias !4678 ; 2 uses
  %i.fu = extractvalue { ptr, i64 } %i.ft, 0      ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.aa, label %bb.ab, !prof !16

bb.n:                                             ; preds = %bb.l
  %i.fw = shl nuw nsw i64 %i.fr, 56
  %i.fx = or disjoint i64 %i.fw, -4611686018427387904 ; 7 uses
  %i.fy = icmp samesign ugt i64 %i.fr, 15
  br i1 %i.fy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = icmp samesign ugt i64 %i.fr, 7
  br i1 %i.fz, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.fq, align 1, !alias.scope !4679
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.ga, align 1, !alias.scope !4679
  %i.gb = icmp eq i64 %i.fr, 16
  br i1 %i.gb, label %bb.z, label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.gc = icmp samesign ugt i64 %i.fr, 3
  br i1 %i.gc, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.fq, align 1, !alias.scope !4679 ; 2 uses
  %i.gd = icmp eq i64 %i.fr, 8
  br i1 %i.gd, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ge = icmp samesign ugt i64 %i.fr, 1
  br i1 %i.ge, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.fq, align 1, !alias.scope !4679
  %i.gf = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.gg = add nsw i64 %i.fr, -4                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gg
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.gh, align 1, !alias.scope !4679
  %i.gi = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.gj = shl nuw nsw i64 %i.gg, 3
  %i.gk = shl nuw nsw i64 %i.gi, %i.gj
  %i.gl = or i64 %i.gk, %i.gf
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.gm = icmp eq i64 %i.fr, 1
  br i1 %i.gm, label %bb.w, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.v:                                             ; preds = %bb.s
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.fq, align 1, !alias.scope !4679
  %i.gn = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.go = add nsw i64 %i.fr, -2                   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.go
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.gp, align 1, !alias.scope !4679
  %i.gq = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.gr = shl nuw nsw i64 %i.go, 3
  %i.gs = shl nuw nsw i64 %i.gq, %i.gr
  %i.gt = or i64 %i.gs, %i.gn
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.gu = load i8, ptr %i.fq, align 1, !alias.scope !4679, !noundef !14
  %i.gv = zext i8 %i.gu to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.x:                                             ; preds = %bb.r
  %i.gw = getelementptr i8, ptr %i.fq, i64 %i.fr
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.gx, align 1, !alias.scope !4679
  %i.gy = shl nuw nsw i64 %i.fr, 3
  %i.gz = sub nuw nsw i64 128, %i.gy
  %i.ha = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.gz
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.y:                                             ; preds = %bb.p
  %i.hb = getelementptr i8, ptr %i.fq, i64 %i.fr
  %i.hc = getelementptr i8, ptr %i.hb, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.hc, align 1, !alias.scope !4679
  %.neg.i.i.i = mul nuw nsw i64 %i.fr, 56
  %i.hd = and i64 %.neg.i.i.i, 56
  %i.he = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.hd
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.sroa.0.1.i.i.i = phi i64 [ %i.he, %bb.y ], [ 0, %bb.p ]
  %i.hf = icmp eq i64 %i.fr, 24
  %i.hg = select i1 %i.hf, i64 0, i64 %i.fx
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i, %i.hg
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.z ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.w ], [ %i.ha, %bb.x ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.z ], [ %.sroa.011.0.copyload.i.i.i, %bb.r ], [ 0, %bb.u ], [ %i.gl, %bb.t ], [ %i.gt, %bb.v ], [ %i.gv, %bb.w ], [ %.sroa.011.0.copyload.i.i.i, %bb.x ]
  %.sroa.0.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.z ], [ %i.fx, %bb.r ], [ %i.fx, %bb.u ], [ %i.fx, %bb.t ], [ %i.fx, %bb.v ], [ %i.fx, %bb.w ], [ %i.fx, %bb.x ]
  %i.hh = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit

bb.aa:                                            ; preds = %bb.m
  call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #45, !noalias !4680
  unreachable

bb.ab:                                            ; preds = %bb.m
  %i.hi = extractvalue { ptr, i64 } %i.ft, 1
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit

_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, %bb.ab
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.hi, %bb.ab ] ; 3 uses
  %.sroa.3.0.i70 = phi i64 [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fr, %bb.ab ]
  %.sroa.0.0.i71 = phi ptr [ %i.hh, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fu, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.hj = load <4 x i32>, ptr %i.ev, align 8
  %i.hk = load i8, ptr %i.dd, align 8, !range !61, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  %i.hl = load i64, ptr %i.df, align 8, !alias.scope !4682, !noundef !14 ; 2 uses
  %i.hm = icmp ugt i64 %i.hl, 2                   ; 2 uses
  %i.hn = load ptr, ptr %i.de, align 8, !alias.scope !4682, !nonnull !14
  %i.ho = load i64, ptr %i.dg, align 8, !alias.scope !4682
  %.sink10.i.i72 = select i1 %i.hm, ptr %i.hn, ptr %i.de ; 9 uses
  %.sink9.i.i73 = select i1 %i.hm, i64 %i.ho, i64 %i.hl ; 5 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i72, i64 %.sink9.i.i73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4683
  store i64 0, ptr %i.an, align 8, !alias.scope !4684, !noalias !4683
  call void @llvm.experimental.noalias.scope.decl(metadata !4685)
  %.not.i.i.i.i = icmp ugt i64 %.sink9.i.i73, 2
  br i1 %.not.i.i.i.i, label %bb.ac, label %.lr.ph.i.i.preheader.i

bb.ac:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit
  %i.hq = add nsw i64 %.sink9.i.i73, -1
  %i.hr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hq, i1 true)
  %i.hs = lshr i64 -1, %i.hr
  %.fr = freeze i64 %i.hs                         ; 2 uses
  %i.ht = add i64 %.fr, 1                         ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4686)
  %or.cond.i = icmp ult i64 %.fr, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i, !prof !64

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ac
  %i.hu = shl nuw nsw i64 %i.ht, 3                ; 2 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !4687
  %i.hv = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.hu, i64 noundef 4) #46, !noalias !4687 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ad, label %.thread.i.i

.thread.i.i:                                      ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i
  store ptr %i.hv, ptr %i.j, align 8, !alias.scope !4686, !noalias !4683
  store i64 0, ptr %i.ao, align 8, !alias.scope !4686, !noalias !4683
  store i64 %i.ht, ptr %i.an, align 8, !alias.scope !4686, !noalias !4683
  %.pre65.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 2) ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 2          ; 3 uses
  %spec.select.i = select i1 %i.hx, ptr %i.hv, ptr %i.j
  %spec.select1.i = select i1 %i.hx, ptr %i.ao, ptr %i.an ; 2 uses
  %i.hy = select i1 %i.hx, i64 0, i64 %i.ht       ; 2 uses
  %i.hz = icmp samesign ult i64 %i.hy, %.pre65.i.i.i
  br i1 %i.hz, label %.lr.ph.i.i.preheader.i, label %._crit_edge.i.i.i

bb.ad:                                            ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.hu) #45
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.thread, !noalias !4683

.noexc3.i.i:                                      ; preds = %bb.ad
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i: ; preds = %bb.ac
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.thread, !noalias !4683

.noexc4.i.i:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i
  unreachable

.lr.ph.i.i.preheader.i:                           ; preds = %.thread.i.i, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit
  %i.ia = phi ptr [ %spec.select1.i, %.thread.i.i ], [ %i.an, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sink.i.pre-phi.i1620.i10.i = phi i64 [ %.pre65.i.i.i, %.thread.i.i ], [ 2, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 3 uses
  %i.ib = phi ptr [ %spec.select.i, %.thread.i.i ], [ %i.j, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 5 uses
  %i.ic = phi i64 [ %i.hy, %.thread.i.i ], [ 0, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 6 uses
  %i.id = and i64 %.sink9.i.i73, 2305843009213693951
  %i.ie = xor i64 %i.ic, -1
  %i.if = add nsw i64 %.sink.i.pre-phi.i1620.i10.i, %i.ie ; 2 uses
  %i.ig = call i64 @llvm.umin.i64(i64 %i.id, i64 %i.if) ; 2 uses
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check152 = icmp samesign ult i64 %i.ig, 8
  br i1 %min.iters.check152, label %.lr.ph.i.i.i.preheader, label %vector.memcheck141

.lr.ph.i.i.i.preheader:                           ; preds = %vector.body155, %vector.memcheck141, %.lr.ph.i.i.preheader.i
  %.sroa.0.058.i.i.i.ph = phi ptr [ %.sink10.i.i72, %vector.memcheck141 ], [ %.sink10.i.i72, %.lr.ph.i.i.preheader.i ], [ %i.ip, %vector.body155 ]
  %.sroa.7.057.i.i.i.ph = phi i64 [ %i.ic, %vector.memcheck141 ], [ %i.ic, %.lr.ph.i.i.preheader.i ], [ %i.iq, %vector.body155 ]
  br label %.lr.ph.i.i.i

vector.memcheck141:                               ; preds = %.lr.ph.i.i.preheader.i
  %i.ii = shl nuw nsw i64 %i.ic, 3                ; 2 uses
  %scevgep143 = getelementptr i8, ptr %i.ib, i64 %i.ii
  %i.ij = and i64 %.sink9.i.i73, 2305843009213693951
  %3 = call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.if)
  %4 = shl nuw i64 %3, 3                          ; 2 uses
  %5 = getelementptr i8, ptr %i.ib, i64 %i.ii
  %i.ik = getelementptr i8, ptr %5, i64 %4
  %scevgep145 = getelementptr i8, ptr %i.ik, i64 8
  %scevgep146 = getelementptr i8, ptr %.sink10.i.i72, i64 %4
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 8
  %bound0148 = icmp ult ptr %scevgep143, %scevgep147
  %bound1149 = icmp ult ptr %.sink10.i.i72, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  br i1 %found.conflict150, label %.lr.ph.i.i.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck141
  %i.il = and i64 %i.ih, 3                        ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  %i.in = select i1 %i.im, i64 4, i64 %i.il
  %n.vec154 = sub nsw i64 %i.ih, %i.in            ; 3 uses
  %i.io = shl i64 %n.vec154, 3
  %i.ip = getelementptr i8, ptr %.sink10.i.i72, i64 %i.io
  %i.iq = add i64 %i.ic, %n.vec154
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next167, %vector.body155 ] ; 3 uses
  %i.ir = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.sink10.i.i72, i64 %i.ir
  %i.is = getelementptr i8, ptr %.sink10.i.i72, i64 %i.ir
  %next.gep158 = getelementptr i8, ptr %i.is, i64 16
  %i.it = add nuw i64 %i.ic, %index156            ; 2 uses
  %wide.vec159 = load <4 x i32>, ptr %next.gep157, align 4, !alias.scope !4688, !noalias !4689
  %wide.vec162 = load <4 x i32>, ptr %next.gep158, align 4, !alias.scope !4688, !noalias !4689
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.it
  %i.iv = getelementptr [8 x i8], ptr %i.ib, i64 %i.it
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  store <4 x i32> %wide.vec159, ptr %i.iu, align 4, !alias.scope !4690, !noalias !4683
  store <4 x i32> %wide.vec162, ptr %i.iw, align 4, !alias.scope !4690, !noalias !4683
  %index.next167 = add nuw i64 %index156, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next167, %n.vec154
  br i1 %i.ix, label %.lr.ph.i.i.i.preheader, label %vector.body155, !llvm.loop !4531

._crit_edge.i.i.i:                                ; preds = %bb.af, %.thread.i.i
  %i.iy = phi ptr [ %spec.select1.i, %.thread.i.i ], [ %i.ia, %bb.af ]
  %.sroa.7.0.lcssa.i.i.i = phi i64 [ 2, %.thread.i.i ], [ %.sink.i.pre-phi.i1620.i10.i, %bb.af ]
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sink10.i.i72, %.thread.i.i ], [ %i.jo, %bb.af ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i.i.i, ptr %i.iy, align 8, !alias.scope !4685, !noalias !4683
  %i.iz = icmp eq ptr %.sroa.0.0.lcssa.i.i.i, %i.hp
  br i1 %i.iz, label %.loopexit40, label %.lr.ph62.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.af
  %.sroa.0.058.i.i.i = phi ptr [ %i.jo, %bb.af ], [ %.sroa.0.058.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.sroa.7.057.i.i.i = phi i64 [ %i.jr, %bb.af ], [ %.sroa.7.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ja = icmp eq ptr %.sroa.0.058.i.i.i, %i.hp
  br i1 %i.ja, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.af

.lr.ph62.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.sroa.031.060.i.i.i = phi ptr [ %i.jb, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.031.060.i.i.i, i64 8 ; 2 uses
  %i.jc = load <2 x i32>, ptr %.sroa.031.060.i.i.i, align 4, !noalias !4691
  %i.jd = load i64, ptr %i.an, align 8, !alias.scope !4692, !noalias !4683, !noundef !14 ; 2 uses
  %i.je = icmp ugt i64 %i.jd, 2                   ; 2 uses
  %i.jf = load ptr, ptr %i.j, align 8, !alias.scope !4692, !noalias !4683, !nonnull !14
  %.sink9.i.i.i.i.i74 = select i1 %i.je, ptr %i.jf, ptr %i.j
  %.sink8.i.i.i.i.i = select i1 %i.je, ptr %i.ao, ptr %i.an ; 2 uses
  %.sink.i.i15.i.i.i = call i64 @llvm.umax.i64(i64 %i.jd, i64 2)
  %i.jg = load i64, ptr %.sink8.i.i.i.i.i, align 8, !alias.scope !4693, !noalias !4683, !noundef !14 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, %.sink.i.i15.i.i.i
  br i1 %i.jh, label %bb.ae, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, !prof !16

bb.ae:                                            ; preds = %.lr.ph62.i.i.i
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, !noalias !4683

.noexc5.i.i:                                      ; preds = %bb.ae
  %i.ji = load ptr, ptr %i.j, align 8, !alias.scope !4693, !noalias !4683, !nonnull !14, !noundef !14
  %.pre.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4693, !noalias !4683
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.noexc5.i.i, %.lr.ph62.i.i.i
  %i.jj = phi i64 [ %.pre.i.i.i.i, %.noexc5.i.i ], [ %i.jg, %.lr.ph62.i.i.i ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.ao, %.noexc5.i.i ], [ %.sink8.i.i.i.i.i, %.lr.ph62.i.i.i ] ; 2 uses
  %.sroa.0.0.i16.i.i.i = phi ptr [ %i.ji, %.noexc5.i.i ], [ %.sink9.i.i.i.i.i74, %.lr.ph62.i.i.i ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i16.i.i.i, i64 %i.jj
  store <2 x i32> %i.jc, ptr %i.jk, align 4, !noalias !4683
  %i.jl = load i64, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !4693, !noalias !4683, !noundef !14
  %i.jm = add i64 %i.jl, 1
  store i64 %i.jm, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !4693, !noalias !4683
  %i.jn = icmp eq ptr %i.jb, %i.hp
  br i1 %i.jn, label %.loopexit40, label %.lr.ph62.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.sroa.7.057.i.i.i
  %i.jq = load <2 x i32>, ptr %.sroa.0.058.i.i.i, align 4, !noalias !4689
  store <2 x i32> %i.jq, ptr %i.jp, align 4, !noalias !4683
  %i.jr = add nuw i64 %.sroa.7.057.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jr, %.sink.i.pre-phi.i1620.i10.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4539

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  store i64 %.sroa.7.057.i.i.i, ptr %i.ia, align 8, !alias.scope !4685, !noalias !4683
  br label %.loopexit40

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.thread: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i, %bb.ad
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ae
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre319 = load i64, ptr %i.an, align 8, !alias.scope !4694, !noalias !4683 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4695)
  call void @llvm.experimental.noalias.scope.decl(metadata !4696), !noalias !4683
  %i.js = icmp ugt i64 %.pre319, 2
  br i1 %i.js, label %bb.ag, label %.body

bb.ag:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i
  %i.jt = load ptr, ptr %i.j, align 8, !alias.scope !4694, !noalias !4683, !nonnull !14, !noundef !14
  %i.ju = load i64, ptr %i.ao, align 8, !alias.scope !4694, !noalias !4683, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4697
  store i64 %.pre319, ptr %i.c, align 8, !noalias !4697
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.jt, ptr %i.jv, align 8, !noalias !4697
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ju, ptr %i.jw, align 8, !noalias !4697
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.ah, !noalias !4697

bb.ah:                                            ; preds = %bb.ag
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body203 unwind label %bb.ai, !noalias !4697

bb.ai:                                            ; preds = %bb.ah
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4697
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc205 unwind label %bb.aj

.noexc205:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4697
  br label %.body

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body203

.body203:                                         ; preds = %bb.ah, %bb.aj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4683
  unreachable

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE6removeBH_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.em, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173)
  call void @llvm.experimental.noalias.scope.decl(metadata !4698)
  call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  call void @llvm.experimental.noalias.scope.decl(metadata !4700)
  call void @llvm.experimental.noalias.scope.decl(metadata !4701)
  %i.ka = load i64, ptr %i.ba, align 8, !alias.scope !4702, !noundef !14 ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, 2
  br i1 %i.kb, label %bb.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit

bb.ak:                                            ; preds = %._crit_edge
  %i.kc = load ptr, ptr %i.bb, align 8, !alias.scope !4702, !nonnull !14, !noundef !14
  %i.kd = load i64, ptr %i.bc, align 8, !alias.scope !4702, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4702
  store i64 %i.ka, ptr %i.i, align 8, !noalias !4702
  store ptr %i.kc, ptr %i.bd, align 8, !noalias !4702
  store i64 %i.kd, ptr %i.be, align 8, !noalias !4702
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.al, !noalias !4702

bb.al:                                            ; preds = %bb.ak
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.am, !noalias !4702

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4702
  unreachable

common.resume:                                    ; preds = %bb.cu, %bb.cl, %bb.ch, %.body198, %bb.aq, %.body, %bb.cj, %.body189, %bb.ba, %bb.ao, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.tf, %bb.cl ], [ %i.ke, %bb.al ], [ %i.kk, %bb.ao ], [ %i.nj, %bb.ba ], [ %lpad.loopexit.split-lp172, %.body189 ], [ %i.sy, %bb.ch ], [ %eh.lpad-body199, %.body198 ], [ %.pn, %.body ], [ %.pn, %bb.aq ], [ %lpad.loopexit.split-lp172, %bb.cj ], [ %i.tz, %bb.cu ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.ak
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !4702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4702
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit: ; preds = %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE6removeBH_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %.sroa.0.0.ph240, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174)
  call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  call void @llvm.experimental.noalias.scope.decl(metadata !4704)
  call void @llvm.experimental.noalias.scope.decl(metadata !4705)
  call void @llvm.experimental.noalias.scope.decl(metadata !4706)
  %i.kg = load i64, ptr %i.bf, align 8, !alias.scope !4707, !noundef !14 ; 2 uses
  %i.kh = icmp ugt i64 %i.kg, 2
  br i1 %i.kh, label %bb.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit77

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit
  %i.ki = load ptr, ptr %i.bg, align 8, !alias.scope !4707, !nonnull !14, !noundef !14
  %i.kj = load i64, ptr %i.bh, align 8, !alias.scope !4707, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4707
  store i64 %i.kg, ptr %i.h, align 8, !noalias !4707
  store ptr %i.ki, ptr %i.bi, align 8, !noalias !4707
  store i64 %i.kj, ptr %i.bj, align 8, !noalias !4707
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i76 unwind label %bb.ao, !noalias !4707

bb.ao:                                            ; preds = %bb.an
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ap, !noalias !4707

bb.ap:                                            ; preds = %bb.ao
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4707
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i76: ; preds = %bb.an
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !4707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4707
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit77

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit77: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bd

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.thread, %.noexc205, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, %.body120
  %.pn = phi { ptr, i32 } [ %lpad.phi35366, %.body120 ], [ %lpad.loopexit37, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit37, %.noexc205 ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.thread ] ; 2 uses
  %.sroa.67.23.extract.shift.mask = and i64 %.sroa.4.0.i, -72057594037927936
  %i.km = icmp eq i64 %.sroa.67.23.extract.shift.mask, -2882303761517117440
  br i1 %i.km, label %bb.aq, label %common.resume, !prof !16

bb.aq:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i71) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i71, i64 noundef %.sroa.4.0.i)
          to label %common.resume unwind label %bb.bc

.loopexit40:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4683
  store <4 x i32> %i.hj, ptr %i.v, align 16
  store i8 %i.hk, ptr %i.ap, align 16
  %i.kn = load <2 x i32>, ptr %i.fi, align 8
  store <2 x i32> %i.kn, ptr %i.ar, align 8
  %i.ko = load <4 x i32>, ptr %i.ex, align 8
  %i.kp = load i8, ptr %i.fj, align 8, !range !61, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !4708)
  %i.kq = load i64, ptr %i.fl, align 8, !alias.scope !4709, !noundef !14 ; 2 uses
  %i.kr = icmp ugt i64 %i.kq, 2                   ; 2 uses
  %i.ks = load ptr, ptr %i.fk, align 8, !alias.scope !4709, !nonnull !14
  %i.kt = load i64, ptr %i.fm, align 8, !alias.scope !4709
  %.sink10.i.i78 = select i1 %i.kr, ptr %i.ks, ptr %i.fk ; 9 uses
  %.sink9.i.i79 = select i1 %i.kr, i64 %i.kt, i64 %i.kq ; 5 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i78, i64 %.sink9.i.i79 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4710
  store i64 0, ptr %i.as, align 8, !alias.scope !4711, !noalias !4710
  call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  %.not.i.i.i.i80 = icmp ugt i64 %.sink9.i.i79, 2
  br i1 %.not.i.i.i.i80, label %bb.ar, label %.lr.ph.i.i.preheader.i81

bb.ar:                                            ; preds = %.loopexit40
  %i.kv = add nsw i64 %.sink9.i.i79, -1
  %i.kw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kv, i1 true)
  %i.kx = lshr i64 -1, %i.kw
  %.fr32 = freeze i64 %i.kx                       ; 2 uses
  %i.ky = add i64 %.fr32, 1                       ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4713)
  %or.cond.i218 = icmp ult i64 %.fr32, 1152921504606846975
  br i1 %or.cond.i218, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i221, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i109, !prof !64

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i221: ; preds = %bb.ar
  %i.kz = shl nuw nsw i64 %i.ky, 3                ; 2 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !4714
  %i.la = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.kz, i64 noundef 4) #46, !noalias !4714 ; 3 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %bb.as, label %.thread.i.i111

.thread.i.i111:                                   ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i221
  store ptr %i.la, ptr %i.g, align 8, !alias.scope !4713, !noalias !4710
  store i64 0, ptr %i.at, align 8, !alias.scope !4713, !noalias !4710
  store i64 %i.ky, ptr %i.as, align 8, !alias.scope !4713, !noalias !4710
  %.pre65.i.i.i114 = call i64 @llvm.umax.i64(i64 %i.ky, i64 2) ; 2 uses
  %i.lc = icmp samesign ugt i64 %i.ky, 2          ; 3 uses
  %spec.select.i116 = select i1 %i.lc, ptr %i.la, ptr %i.g
  %spec.select1.i117 = select i1 %i.lc, ptr %i.at, ptr %i.as ; 2 uses
  %i.ld = select i1 %i.lc, i64 0, i64 %i.ky       ; 2 uses
  %i.le = icmp samesign ult i64 %i.ld, %.pre65.i.i.i114
  br i1 %i.le, label %.lr.ph.i.i.preheader.i81, label %._crit_edge.i.i.i89

bb.as:                                            ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i221
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.kz) #45
          to label %.noexc3.i.i119 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102.thread, !noalias !4710

.noexc3.i.i119:                                   ; preds = %bb.as
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i109: ; preds = %bb.ar
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
          to label %.noexc4.i.i110 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102.thread, !noalias !4710

.noexc4.i.i110:                                   ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i109
  unreachable

.lr.ph.i.i.preheader.i81:                         ; preds = %.thread.i.i111, %.loopexit40
  %i.lf = phi ptr [ %spec.select1.i117, %.thread.i.i111 ], [ %i.as, %.loopexit40 ] ; 2 uses
  %.sink.i.pre-phi.i1620.i10.i82 = phi i64 [ %.pre65.i.i.i114, %.thread.i.i111 ], [ 2, %.loopexit40 ] ; 3 uses
  %i.lg = phi ptr [ %spec.select.i116, %.thread.i.i111 ], [ %i.g, %.loopexit40 ] ; 5 uses
  %i.lh = phi i64 [ %i.ld, %.thread.i.i111 ], [ 0, %.loopexit40 ] ; 6 uses
  %i.li = and i64 %.sink9.i.i79, 2305843009213693951
  %i.lj = xor i64 %i.lh, -1
  %i.lk = add nsw i64 %.sink.i.pre-phi.i1620.i10.i82, %i.lj ; 2 uses
  %i.ll = call i64 @llvm.umin.i64(i64 %i.li, i64 %i.lk) ; 2 uses
  %i.lm = add nuw nsw i64 %i.ll, 1                ; 2 uses
  %min.iters.check122 = icmp samesign ult i64 %i.ll, 8
  br i1 %min.iters.check122, label %.lr.ph.i.i.i83.preheader, label %vector.memcheck111

.lr.ph.i.i.i83.preheader:                         ; preds = %vector.body125, %vector.memcheck111, %.lr.ph.i.i.preheader.i81
  %.sroa.0.058.i.i.i84.ph = phi ptr [ %.sink10.i.i78, %vector.memcheck111 ], [ %.sink10.i.i78, %.lr.ph.i.i.preheader.i81 ], [ %i.lu, %vector.body125 ]
  %.sroa.7.057.i.i.i85.ph = phi i64 [ %i.lh, %vector.memcheck111 ], [ %i.lh, %.lr.ph.i.i.preheader.i81 ], [ %i.lv, %vector.body125 ]
  br label %.lr.ph.i.i.i83

vector.memcheck111:                               ; preds = %.lr.ph.i.i.preheader.i81
  %i.ln = shl nuw nsw i64 %i.lh, 3                ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.lg, i64 %i.ln
  %i.lo = and i64 %.sink9.i.i79, 2305843009213693951
  %6 = call i64 @llvm.umin.i64(i64 %i.lo, i64 %i.lk)
  %7 = shl nuw i64 %6, 3                          ; 2 uses
  %8 = getelementptr i8, ptr %i.lg, i64 %i.ln
  %i.lp = getelementptr i8, ptr %8, i64 %7
  %scevgep115 = getelementptr i8, ptr %i.lp, i64 8
  %scevgep116 = getelementptr i8, ptr %.sink10.i.i78, i64 %7
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 8
  %bound0118 = icmp ult ptr %scevgep113, %scevgep117
  %bound1119 = icmp ult ptr %.sink10.i.i78, %scevgep115
  %found.conflict120 = and i1 %bound0118, %bound1119
  br i1 %found.conflict120, label %.lr.ph.i.i.i83.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %vector.memcheck111
  %i.lq = and i64 %i.lm, 3                        ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  %i.ls = select i1 %i.lr, i64 4, i64 %i.lq
  %n.vec124 = sub nsw i64 %i.lm, %i.ls            ; 3 uses
  %i.lt = shl i64 %n.vec124, 3
  %i.lu = getelementptr i8, ptr %.sink10.i.i78, i64 %i.lt
  %i.lv = add i64 %i.lh, %n.vec124
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next137, %vector.body125 ] ; 3 uses
  %i.lw = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %.sink10.i.i78, i64 %i.lw
  %i.lx = getelementptr i8, ptr %.sink10.i.i78, i64 %i.lw
  %next.gep128 = getelementptr i8, ptr %i.lx, i64 16
  %i.ly = add nuw i64 %i.lh, %index126            ; 2 uses
  %wide.vec129 = load <4 x i32>, ptr %next.gep127, align 4, !alias.scope !4715, !noalias !4716
  %wide.vec132 = load <4 x i32>, ptr %next.gep128, align 4, !alias.scope !4715, !noalias !4716
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.ly
  %i.ma = getelementptr [8 x i8], ptr %i.lg, i64 %i.ly
  %i.mb = getelementptr i8, ptr %i.ma, i64 16
  store <4 x i32> %wide.vec129, ptr %i.lz, align 4, !alias.scope !4717, !noalias !4710
  store <4 x i32> %wide.vec132, ptr %i.mb, align 4, !alias.scope !4717, !noalias !4710
  %index.next137 = add nuw i64 %index126, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next137, %n.vec124
  br i1 %i.mc, label %.lr.ph.i.i.i83.preheader, label %vector.body125, !llvm.loop !4579

._crit_edge.i.i.i89:                              ; preds = %bb.au, %.thread.i.i111
  %i.md = phi ptr [ %spec.select1.i117, %.thread.i.i111 ], [ %i.lf, %bb.au ]
  %.sroa.7.0.lcssa.i.i.i90 = phi i64 [ 2, %.thread.i.i111 ], [ %.sink.i.pre-phi.i1620.i10.i82, %bb.au ]
  %.sroa.0.0.lcssa.i.i.i91 = phi ptr [ %.sink10.i.i78, %.thread.i.i111 ], [ %i.mt, %bb.au ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i.i.i90, ptr %i.md, align 8, !alias.scope !4712, !noalias !4710
  %i.me = icmp eq ptr %.sroa.0.0.lcssa.i.i.i91, %i.ku
  br i1 %i.me, label %.loopexit36, label %.lr.ph62.i.i.i92

.lr.ph.i.i.i83:                                   ; preds = %.lr.ph.i.i.i83.preheader, %bb.au
  %.sroa.0.058.i.i.i84 = phi ptr [ %i.mt, %bb.au ], [ %.sroa.0.058.i.i.i84.ph, %.lr.ph.i.i.i83.preheader ] ; 3 uses
  %.sroa.7.057.i.i.i85 = phi i64 [ %i.mw, %bb.au ], [ %.sroa.7.057.i.i.i85.ph, %.lr.ph.i.i.i83.preheader ] ; 3 uses
  %i.mf = icmp eq ptr %.sroa.0.058.i.i.i84, %i.ku
  br i1 %i.mf, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i106, label %bb.au

.lr.ph62.i.i.i92:                                 ; preds = %._crit_edge.i.i.i89, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99
  %.sroa.031.060.i.i.i93 = phi ptr [ %i.mg, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99 ], [ %.sroa.0.0.lcssa.i.i.i91, %._crit_edge.i.i.i89 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.031.060.i.i.i93, i64 8 ; 2 uses
  %i.mh = load <2 x i32>, ptr %.sroa.031.060.i.i.i93, align 4, !noalias !4718
  %i.mi = load i64, ptr %i.as, align 8, !alias.scope !4719, !noalias !4710, !noundef !14 ; 2 uses
  %i.mj = icmp ugt i64 %i.mi, 2                   ; 2 uses
  %i.mk = load ptr, ptr %i.g, align 8, !alias.scope !4719, !noalias !4710, !nonnull !14
  %.sink9.i.i.i.i.i96 = select i1 %i.mj, ptr %i.mk, ptr %i.g
  %.sink8.i.i.i.i.i97 = select i1 %i.mj, ptr %i.at, ptr %i.as ; 2 uses
  %.sink.i.i15.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.mi, i64 2)
  %i.ml = load i64, ptr %.sink8.i.i.i.i.i97, align 8, !alias.scope !4720, !noalias !4710, !noundef !14 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, %.sink.i.i15.i.i.i98
  br i1 %i.mm, label %bb.at, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99, !prof !16

bb.at:                                            ; preds = %.lr.ph62.i.i.i92
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc5.i.i104 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102, !noalias !4710

.noexc5.i.i104:                                   ; preds = %bb.at
  %i.mn = load ptr, ptr %i.g, align 8, !alias.scope !4720, !noalias !4710, !nonnull !14, !noundef !14
  %.pre.i.i.i.i105 = load i64, ptr %i.at, align 8, !alias.scope !4720, !noalias !4710
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99: ; preds = %.noexc5.i.i104, %.lr.ph62.i.i.i92
  %i.mo = phi i64 [ %.pre.i.i.i.i105, %.noexc5.i.i104 ], [ %i.ml, %.lr.ph62.i.i.i92 ]
  %.sroa.01.0.i.i.i.i100 = phi ptr [ %i.at, %.noexc5.i.i104 ], [ %.sink8.i.i.i.i.i97, %.lr.ph62.i.i.i92 ] ; 2 uses
  %.sroa.0.0.i16.i.i.i101 = phi ptr [ %i.mn, %.noexc5.i.i104 ], [ %.sink9.i.i.i.i.i96, %.lr.ph62.i.i.i92 ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i16.i.i.i101, i64 %i.mo
  store <2 x i32> %i.mh, ptr %i.mp, align 4, !noalias !4710
  %i.mq = load i64, ptr %.sroa.01.0.i.i.i.i100, align 8, !alias.scope !4720, !noalias !4710, !noundef !14
  %i.mr = add i64 %i.mq, 1
  store i64 %i.mr, ptr %.sroa.01.0.i.i.i.i100, align 8, !alias.scope !4720, !noalias !4710
  %i.ms = icmp eq ptr %i.mg, %i.ku
  br i1 %i.ms, label %.loopexit36, label %.lr.ph62.i.i.i92

bb.au:                                            ; preds = %.lr.ph.i.i.i83
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i84, i64 8 ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %.sroa.7.057.i.i.i85
  %i.mv = load <2 x i32>, ptr %.sroa.0.058.i.i.i84, align 4, !noalias !4716
  store <2 x i32> %i.mv, ptr %i.mu, align 4, !noalias !4710
  %i.mw = add nuw i64 %.sroa.7.057.i.i.i85, 1     ; 2 uses
  %exitcond.not.i.i.i88 = icmp eq i64 %i.mw, %.sink.i.pre-phi.i1620.i10.i82
  br i1 %exitcond.not.i.i.i88, label %._crit_edge.i.i.i89, label %.lr.ph.i.i.i83, !llvm.loop !4587

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i106: ; preds = %.lr.ph.i.i.i83
  store i64 %.sroa.7.057.i.i.i85, ptr %i.lf, align 8, !alias.scope !4712, !noalias !4710
  br label %.loopexit36

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102.thread: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i109, %bb.as
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  br label %.body120

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102: ; preds = %bb.at
  %lpad.loopexit33 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i64, ptr %i.as, align 8, !alias.scope !4721, !noalias !4710 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  call void @llvm.experimental.noalias.scope.decl(metadata !4723), !noalias !4710
  %i.mx = icmp ugt i64 %.pre, 2
  br i1 %i.mx, label %bb.av, label %.body120

bb.av:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102
  %i.my = load ptr, ptr %i.g, align 8, !alias.scope !4721, !noalias !4710, !nonnull !14, !noundef !14
  %i.mz = load i64, ptr %i.at, align 8, !alias.scope !4721, !noalias !4710, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4724
  store i64 %.pre, ptr %i.b, align 8, !noalias !4724
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.my, ptr %i.na, align 8, !noalias !4724
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.mz, ptr %i.nb, align 8, !noalias !4724
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i209 unwind label %bb.aw, !noalias !4724

bb.aw:                                            ; preds = %bb.av
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body210 unwind label %bb.ax, !noalias !4724

bb.ax:                                            ; preds = %bb.aw
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4724
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i209: ; preds = %bb.av
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc212 unwind label %bb.ay

.noexc212:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4724
  br label %.body120

bb.ay:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i209
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body210

.body210:                                         ; preds = %bb.aw, %bb.ay
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4710
  unreachable

.body120:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102.thread, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102, %.noexc212
  %lpad.phi35366 = phi { ptr, i32 } [ %lpad.loopexit.split-lp34, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102.thread ], [ %lpad.loopexit33, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i102 ], [ %lpad.loopexit33, %.noexc212 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression18SuppressionCommentEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.v) #43
          to label %.body unwind label %bb.bc

.loopexit36:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i106, %._crit_edge.i.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.819.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) %i.v, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %.sroa.0.0.i71, ptr %i.au, align 8
  store i64 %.sroa.3.0.i70, ptr %.sroa.56.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %.sroa.67.0..sroa_idx, align 8
  store i32 %i.ew, ptr %i.w, align 8
  store i32 %i.ez, ptr %i.av, align 4
  store i8 0, ptr %i.aw, align 8
  store <4 x i32> %i.ko, ptr %.sroa.415.0..sroa_idx, align 8
  %i.nf = load <2 x i32>, ptr %i.fn, align 8
  store <2 x i32> %i.nf, ptr %.sroa.920.0..sroa_idx, align 8
  store i8 %i.kp, ptr %.sroa.1122.0..sroa_idx, align 8
  %i.ng = load i64, ptr %i.ay, align 8, !alias.scope !4725, !noundef !14 ; 3 uses
  %i.nh = load i64, ptr %0, align 8, !range !24, !alias.scope !4725, !noundef !14
  %i.ni = icmp eq i64 %i.ng, %i.nh
  br i1 %i.ni, label %bb.az, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit

bb.az:                                            ; preds = %.loopexit36
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit unwind label %bb.ba, !noalias !4726

bb.ba:                                            ; preds = %bb.az
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(152) %i.w) #43
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4726
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit: ; preds = %.loopexit36, %bb.az
  %i.nl = load ptr, ptr %i.az, align 8, !alias.scope !4725, !nonnull !14, !noundef !14
  %i.nm = getelementptr inbounds nuw [152 x i8], ptr %i.nl, i64 %i.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.nm, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.w, i64 152, i1 false)
  %i.nn = add i64 %i.ng, 1
  store i64 %i.nn, ptr %i.ay, align 8, !alias.scope !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.no = icmp eq ptr %i.fo, %i.fg
  br i1 %i.no, label %._crit_edge, label %bb.l

end_hunk_0
begin_hunk_1_@_RNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_19SuppressionsBuilder14match_comments:bb.a
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !4727, !noundef !14 ; 2 uses
  %i.ob = icmp ugt i64 %i.oa, 2                   ; 2 uses
  %i.oc = load ptr, ptr %i.ny, align 8, !alias.scope !4727, !nonnull !14
  %i.od = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !alias.scope !4727
  %.sink10.i.i123 = select i1 %i.ob, ptr %i.oc, ptr %i.ny ; 2 uses
  %.sink9.i.i124 = select i1 %i.ob, i64 %i.oe, i64 %i.oa ; 2 uses
  %.idx243 = shl nuw nsw i64 %.sink9.i.i124, 3
  %i.of = getelementptr inbounds nuw i8, ptr %.sink10.i.i123, i64 %.idx243
  %i.og = icmp eq i64 %.sink9.i.i124, 0
  br i1 %i.og, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.bh
  %i.oh = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph154, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit197
  %.sroa.08.0152 = phi ptr [ %.sink10.i.i123, %.lr.ph154 ], [ %i.oi, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit197 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.08.0152, i64 8 ; 2 uses
  %i.oj = call { ptr, i64 } @_RINvXs8_NtCs2MoD74u7shA_14ruff_text_size6traitseNtB6_9TextSlice5sliceRNtNtB8_5range9TextRangeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nw, i64 noundef %i.nx, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0152) ; 2 uses
  %i.ok = extractvalue { ptr, i64 } %i.oj, 0      ; 12 uses
  %i.ol = extractvalue { ptr, i64 } %i.oj, 1      ; 18 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ok) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.om = icmp ult i64 %i.ol, 25
  br i1 %i.om, label %bb.bk, label %bb.bj, !prof !20

bb.bj:                                            ; preds = %bb.bi
  %i.on = call { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ok, i64 noundef %i.ol), !noalias !4728 ; 2 uses
  %i.oo = extractvalue { ptr, i64 } %i.on, 0      ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.bx, label %bb.by, !prof !16

bb.bk:                                            ; preds = %bb.bi
  %i.oq = shl nuw nsw i64 %i.ol, 56
  %i.or = or disjoint i64 %i.oq, -4611686018427387904 ; 7 uses
  %i.os = icmp samesign ugt i64 %i.ol, 15
  br i1 %i.os, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ot = icmp samesign ugt i64 %i.ol, 7
  br i1 %i.ot, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %.sroa.05.0.copyload.i.i.i140 = load i64, ptr %i.ok, align 1, !alias.scope !4729
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %.sroa.07.0.copyload.i.i.i141 = load i64, ptr %i.ou, align 1, !alias.scope !4729
  %i.ov = icmp eq i64 %i.ol, 16
  br i1 %i.ov, label %bb.bw, label %bb.bv

bb.bn:                                            ; preds = %bb.bl
  %i.ow = icmp samesign ugt i64 %i.ol, 3
  br i1 %i.ow, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %.sroa.011.0.copyload.i.i.i138 = load i64, ptr %i.ok, align 1, !alias.scope !4729 ; 2 uses
  %i.ox = icmp eq i64 %i.ol, 8
  br i1 %i.ox, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130, label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  %i.oy = icmp samesign ugt i64 %i.ol, 1
  br i1 %i.oy, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %.sroa.015.0.copyload.i.i.i136 = load i32, ptr %i.ok, align 1, !alias.scope !4729
  %i.oz = zext i32 %.sroa.015.0.copyload.i.i.i136 to i64
  %i.pa = add nsw i64 %i.ol, -4                   ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.pa
  %.sroa.017.0.copyload.i.i.i137 = load i32, ptr %i.pb, align 1, !alias.scope !4729
  %i.pc = zext i32 %.sroa.017.0.copyload.i.i.i137 to i64
  %i.pd = shl nuw nsw i64 %i.pa, 3
  %i.pe = shl nuw nsw i64 %i.pc, %i.pd
  %i.pf = or i64 %i.pe, %i.oz
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130

bb.br:                                            ; preds = %bb.bp
  %i.pg = icmp eq i64 %i.ol, 1
  br i1 %i.pg, label %bb.bt, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130

bb.bs:                                            ; preds = %bb.bp
  %.sroa.019.0.copyload.i.i.i134 = load i16, ptr %i.ok, align 1, !alias.scope !4729
  %i.ph = zext i16 %.sroa.019.0.copyload.i.i.i134 to i64
  %i.pi = add nsw i64 %i.ol, -2                   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.pi
  %.sroa.021.0.copyload.i.i.i135 = load i16, ptr %i.pj, align 1, !alias.scope !4729
  %i.pk = zext i16 %.sroa.021.0.copyload.i.i.i135 to i64
  %i.pl = shl nuw nsw i64 %i.pi, 3
  %i.pm = shl nuw nsw i64 %i.pk, %i.pl
  %i.pn = or i64 %i.pm, %i.ph
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130

bb.bt:                                            ; preds = %bb.br
  %i.po = load i8, ptr %i.ok, align 1, !alias.scope !4729, !noundef !14
  %i.pp = zext i8 %i.po to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130

bb.bu:                                            ; preds = %bb.bo
  %i.pq = getelementptr i8, ptr %i.ok, i64 %i.ol
  %i.pr = getelementptr i8, ptr %i.pq, i64 -8
  %.sroa.013.0.copyload.i.i.i139 = load i64, ptr %i.pr, align 1, !alias.scope !4729
  %i.ps = shl nuw nsw i64 %i.ol, 3
  %i.pt = sub nuw nsw i64 128, %i.ps
  %i.pu = lshr i64 %.sroa.013.0.copyload.i.i.i139, %i.pt
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130

bb.bv:                                            ; preds = %bb.bm
  %i.pv = getelementptr i8, ptr %i.ok, i64 %i.ol
  %i.pw = getelementptr i8, ptr %i.pv, i64 -8
  %.sroa.09.0.copyload.i.i.i142 = load i64, ptr %i.pw, align 1, !alias.scope !4729
  %.neg.i.i.i143 = mul nuw nsw i64 %i.ol, 56
  %i.px = and i64 %.neg.i.i.i143, 56
  %i.py = lshr i64 %.sroa.09.0.copyload.i.i.i142, %i.px
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bm
  %.sroa.0.1.i.i.i144 = phi i64 [ %i.py, %bb.bv ], [ 0, %bb.bm ]
  %i.pz = icmp eq i64 %i.ol, 24
  %i.qa = select i1 %i.pz, i64 0, i64 %i.or
  %spec.select.i.i.i145 = or i64 %.sroa.0.1.i.i.i144, %i.qa
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130: ; preds = %bb.bw, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo
  %.sroa.03.1.i.i.i131 = phi i64 [ %.sroa.07.0.copyload.i.i.i141, %bb.bw ], [ 0, %bb.bo ], [ 0, %bb.br ], [ 0, %bb.bq ], [ 0, %bb.bs ], [ 0, %bb.bt ], [ %i.pu, %bb.bu ]
  %.sroa.02.0.i.i.i132 = phi i64 [ %.sroa.05.0.copyload.i.i.i140, %bb.bw ], [ %.sroa.011.0.copyload.i.i.i138, %bb.bo ], [ 0, %bb.br ], [ %i.pf, %bb.bq ], [ %i.pn, %bb.bs ], [ %i.pp, %bb.bt ], [ %.sroa.011.0.copyload.i.i.i138, %bb.bu ]
  %.sroa.0.0.i.i.i133 = phi i64 [ %spec.select.i.i.i145, %bb.bw ], [ %i.or, %bb.bo ], [ %i.or, %bb.br ], [ %i.or, %bb.bq ], [ %i.or, %bb.bs ], [ %i.or, %bb.bt ], [ %i.or, %bb.bu ]
  %i.qb = inttoptr i64 %.sroa.02.0.i.i.i132 to ptr
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146

bb.bx:                                            ; preds = %bb.bj
  call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #45, !noalias !4730
  unreachable

bb.by:                                            ; preds = %bb.bj
  %i.qc = extractvalue { ptr, i64 } %i.on, 1
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146

_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146: ; preds = %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130, %bb.by
  %.sroa.4.0.i125 = phi i64 [ %.sroa.0.0.i.i.i133, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130 ], [ %i.qc, %bb.by ] ; 3 uses
  %.sroa.3.0.i126 = phi i64 [ %.sroa.03.1.i.i.i131, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130 ], [ %i.ol, %bb.by ]
  %.sroa.0.0.i127 = phi ptr [ %i.qb, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i130 ], [ %i.oo, %bb.by ] ; 3 uses
  %i.qd = load <4 x i32>, ptr %i.ep, align 8
  %i.qe = load i8, ptr %i.eq, align 8, !range !61, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !4731)
  %i.qf = load i64, ptr %i.nz, align 8, !alias.scope !4732, !noundef !14 ; 2 uses
  %i.qg = icmp ugt i64 %i.qf, 2                   ; 2 uses
  %i.qh = load ptr, ptr %i.ny, align 8, !alias.scope !4732, !nonnull !14
  %i.qi = load i64, ptr %i.od, align 8, !alias.scope !4732
  %.sink10.i.i147 = select i1 %i.qg, ptr %i.qh, ptr %i.ny ; 9 uses
  %.sink9.i.i148 = select i1 %i.qg, i64 %i.qi, i64 %i.qf ; 5 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i147, i64 %.sink9.i.i148 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4733
  store i64 0, ptr %i.bw, align 8, !alias.scope !4734, !noalias !4733
  call void @llvm.experimental.noalias.scope.decl(metadata !4735)
  %.not.i.i.i.i149 = icmp ugt i64 %.sink9.i.i148, 2
  br i1 %.not.i.i.i.i149, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.i.i.i176, label %.lr.ph.i.i.preheader.i150

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.i.i.i176: ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146
  %i.qk = add nsw i64 %.sink9.i.i148, -1
  %i.ql = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qk, i1 true)
  %i.qm = lshr i64 -1, %i.ql
  %i.qn = add nuw nsw i64 %i.qm, 1
  %i.qo = invoke fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.qn)
          to label %.noexc.i.i177 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733 ; 2 uses

.noexc.i.i177:                                    ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.i.i.i176
  %i.qp = extractvalue { i64, i64 } %i.qo, 0      ; 2 uses
  switch i64 %i.qp, label %bb.bz [
    i64 -1, label %.thread.i.i180
    i64 0, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i178
  ], !prof !58

bb.bz:                                            ; preds = %.noexc.i.i177
  %i.qq = extractvalue { i64, i64 } %i.qo, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.qp, i64 noundef %i.qq) #45
          to label %.noexc3.i.i188 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733

.noexc3.i.i188:                                   ; preds = %bb.bz
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i178: ; preds = %.noexc.i.i177
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
          to label %.noexc4.i.i179 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733

.noexc4.i.i179:                                   ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i178
  unreachable

.thread.i.i180:                                   ; preds = %.noexc.i.i177
  %.pre.i.i.i181 = load i64, ptr %i.bw, align 8, !alias.scope !4736, !noalias !4733
  %.pre.i.fr.i.i182 = freeze i64 %.pre.i.i.i181   ; 2 uses
  %.pre65.i.i.i183 = call i64 @llvm.umax.i64(i64 %.pre.i.fr.i.i182, i64 2) ; 2 uses
  %i.qr = icmp ugt i64 %.pre.i.fr.i.i182, 2       ; 2 uses
  %.pre.i.i184 = load ptr, ptr %i.f, align 8, !alias.scope !4736, !noalias !4733
  %spec.select.i185 = select i1 %i.qr, ptr %.pre.i.i184, ptr %i.f
  %spec.select1.i186 = select i1 %i.qr, ptr %i.bx, ptr %i.bw ; 3 uses
  %.pre.i187 = load i64, ptr %spec.select1.i186, align 8, !alias.scope !4735, !noalias !4733 ; 3 uses
  %i.qs = icmp ult i64 %.pre.i187, %.pre65.i.i.i183
  br i1 %i.qs, label %.lr.ph.i.i.preheader.i150, label %._crit_edge.i.i.i158

.lr.ph.i.i.preheader.i150:                        ; preds = %.thread.i.i180, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146
  %i.qt = phi ptr [ %spec.select1.i186, %.thread.i.i180 ], [ %i.bw, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146 ] ; 2 uses
  %.sink.i.pre-phi.i1620.i10.i151 = phi i64 [ %.pre65.i.i.i183, %.thread.i.i180 ], [ 2, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146 ] ; 3 uses
  %i.qu = phi ptr [ %spec.select.i185, %.thread.i.i180 ], [ %i.f, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146 ] ; 5 uses
  %i.qv = phi i64 [ %.pre.i187, %.thread.i.i180 ], [ 0, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit146 ] ; 6 uses
  %i.qw = and i64 %.sink9.i.i148, 2305843009213693951
  %i.qx = xor i64 %i.qv, -1
  %i.qy = add i64 %.sink.i.pre-phi.i1620.i10.i151, %i.qx ; 2 uses
  %i.qz = call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qy) ; 2 uses
  %i.ra = add nuw nsw i64 %i.qz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.qz, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i152.preheader, label %vector.memcheck

.lr.ph.i.i.i152.preheader:                        ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.preheader.i150
  %.sroa.0.058.i.i.i153.ph = phi ptr [ %.sink10.i.i147, %vector.memcheck ], [ %.sink10.i.i147, %.lr.ph.i.i.preheader.i150 ], [ %i.ri, %vector.body ]
  %.sroa.7.057.i.i.i154.ph = phi i64 [ %i.qv, %vector.memcheck ], [ %i.qv, %.lr.ph.i.i.preheader.i150 ], [ %i.rj, %vector.body ]
  br label %.lr.ph.i.i.i152

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader.i150
  %i.rb = shl i64 %i.qv, 3                        ; 2 uses
  %scevgep100 = getelementptr i8, ptr %i.qu, i64 %i.rb
  %i.rc = and i64 %.sink9.i.i148, 2305843009213693951
  %9 = call i64 @llvm.umin.i64(i64 %i.rc, i64 %i.qy)
  %10 = shl nuw i64 %9, 3                         ; 2 uses
  %11 = getelementptr i8, ptr %i.qu, i64 %i.rb
  %i.rd = getelementptr i8, ptr %11, i64 %10
  %scevgep101 = getelementptr i8, ptr %i.rd, i64 8
  %scevgep102 = getelementptr i8, ptr %.sink10.i.i147, i64 %10
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 8
  %bound0 = icmp ult ptr %scevgep100, %scevgep103
  %bound1 = icmp ult ptr %.sink10.i.i147, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i152.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.re = and i64 %i.ra, 3                        ; 2 uses
  %i.rf = icmp eq i64 %i.re, 0
  %i.rg = select i1 %i.rf, i64 4, i64 %i.re
  %n.vec = sub nsw i64 %i.ra, %i.rg               ; 3 uses
  %i.rh = shl i64 %n.vec, 3
  %i.ri = getelementptr i8, ptr %.sink10.i.i147, i64 %i.rh
  %i.rj = add i64 %i.qv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.rk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sink10.i.i147, i64 %i.rk
  %i.rl = getelementptr i8, ptr %.sink10.i.i147, i64 %i.rk
  %next.gep104 = getelementptr i8, ptr %i.rl, i64 16
  %i.rm = add nuw i64 %i.qv, %index               ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !4737, !noalias !4738
  %wide.vec106 = load <4 x i32>, ptr %next.gep104, align 4, !alias.scope !4737, !noalias !4738
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.rm
  %i.ro = getelementptr [8 x i8], ptr %i.qu, i64 %i.rm
  %i.rp = getelementptr i8, ptr %i.ro, i64 16
  store <4 x i32> %wide.vec, ptr %i.rn, align 4, !alias.scope !4739, !noalias !4733
  store <4 x i32> %wide.vec106, ptr %i.rp, align 4, !alias.scope !4739, !noalias !4733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rq = icmp eq i64 %index.next, %n.vec
  br i1 %i.rq, label %.lr.ph.i.i.i152.preheader, label %vector.body, !llvm.loop !4628

._crit_edge.i.i.i158:                             ; preds = %bb.cb, %.thread.i.i180
  %i.rr = phi ptr [ %spec.select1.i186, %.thread.i.i180 ], [ %i.qt, %bb.cb ]
  %.sroa.7.0.lcssa.i.i.i159 = phi i64 [ %.pre.i187, %.thread.i.i180 ], [ %.sink.i.pre-phi.i1620.i10.i151, %bb.cb ]
  %.sroa.0.0.lcssa.i.i.i160 = phi ptr [ %.sink10.i.i147, %.thread.i.i180 ], [ %i.sh, %bb.cb ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i.i.i159, ptr %i.rr, align 8, !alias.scope !4735, !noalias !4733
  %i.rs = icmp eq ptr %.sroa.0.0.lcssa.i.i.i160, %i.qj
  br i1 %i.rs, label %.loopexit, label %.lr.ph62.i.i.i161

.lr.ph.i.i.i152:                                  ; preds = %.lr.ph.i.i.i152.preheader, %bb.cb
  %.sroa.0.058.i.i.i153 = phi ptr [ %i.sh, %bb.cb ], [ %.sroa.0.058.i.i.i153.ph, %.lr.ph.i.i.i152.preheader ] ; 3 uses
  %.sroa.7.057.i.i.i154 = phi i64 [ %i.sk, %bb.cb ], [ %.sroa.7.057.i.i.i154.ph, %.lr.ph.i.i.i152.preheader ] ; 3 uses
  %i.rt = icmp eq ptr %.sroa.0.058.i.i.i153, %i.qj
  br i1 %i.rt, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i175, label %bb.cb

.lr.ph62.i.i.i161:                                ; preds = %._crit_edge.i.i.i158, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i168
  %.sroa.031.060.i.i.i162 = phi ptr [ %i.ru, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i168 ], [ %.sroa.0.0.lcssa.i.i.i160, %._crit_edge.i.i.i158 ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.031.060.i.i.i162, i64 8 ; 2 uses
  %i.rv = load <2 x i32>, ptr %.sroa.031.060.i.i.i162, align 4, !noalias !4740
  %i.rw = load i64, ptr %i.bw, align 8, !alias.scope !4741, !noalias !4733, !noundef !14 ; 2 uses
  %i.rx = icmp ugt i64 %i.rw, 2                   ; 2 uses
  %i.ry = load ptr, ptr %i.f, align 8, !alias.scope !4741, !noalias !4733, !nonnull !14
  %.sink9.i.i.i.i.i165 = select i1 %i.rx, ptr %i.ry, ptr %i.f
  %.sink8.i.i.i.i.i166 = select i1 %i.rx, ptr %i.bx, ptr %i.bw ; 2 uses
  %.sink.i.i15.i.i.i167 = call i64 @llvm.umax.i64(i64 %i.rw, i64 2)
  %i.rz = load i64, ptr %.sink8.i.i.i.i.i166, align 8, !alias.scope !4742, !noalias !4733, !noundef !14 ; 2 uses
  %i.sa = icmp eq i64 %i.rz, %.sink.i.i15.i.i.i167
  br i1 %i.sa, label %bb.ca, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i168, !prof !16

bb.ca:                                            ; preds = %.lr.ph62.i.i.i161
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc5.i.i173 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4733

.noexc5.i.i173:                                   ; preds = %bb.ca
  %i.sb = load ptr, ptr %i.f, align 8, !alias.scope !4742, !noalias !4733, !nonnull !14, !noundef !14
  %.pre.i.i.i.i174 = load i64, ptr %i.bx, align 8, !alias.scope !4742, !noalias !4733
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i168

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i168: ; preds = %.noexc5.i.i173, %.lr.ph62.i.i.i161
  %i.sc = phi i64 [ %.pre.i.i.i.i174, %.noexc5.i.i173 ], [ %i.rz, %.lr.ph62.i.i.i161 ]
  %.sroa.01.0.i.i.i.i169 = phi ptr [ %i.bx, %.noexc5.i.i173 ], [ %.sink8.i.i.i.i.i166, %.lr.ph62.i.i.i161 ] ; 2 uses
  %.sroa.0.0.i16.i.i.i170 = phi ptr [ %i.sb, %.noexc5.i.i173 ], [ %.sink9.i.i.i.i.i165, %.lr.ph62.i.i.i161 ]
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i16.i.i.i170, i64 %i.sc
  store <2 x i32> %i.rv, ptr %i.sd, align 4, !noalias !4733
  %i.se = load i64, ptr %.sroa.01.0.i.i.i.i169, align 8, !alias.scope !4742, !noalias !4733, !noundef !14
  %i.sf = add i64 %i.se, 1
  store i64 %i.sf, ptr %.sroa.01.0.i.i.i.i169, align 8, !alias.scope !4742, !noalias !4733
  %i.sg = icmp eq ptr %i.ru, %i.qj
  br i1 %i.sg, label %.loopexit, label %.lr.ph62.i.i.i161

bb.cb:                                            ; preds = %.lr.ph.i.i.i152
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i153, i64 8 ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %.sroa.7.057.i.i.i154
  %i.sj = load <2 x i32>, ptr %.sroa.0.058.i.i.i153, align 4, !noalias !4738
  store <2 x i32> %i.sj, ptr %i.si, align 4, !noalias !4733
  %i.sk = add nuw i64 %.sroa.7.057.i.i.i154, 1    ; 2 uses
  %exitcond.not.i.i.i157 = icmp eq i64 %i.sk, %.sink.i.pre-phi.i1620.i10.i151
  br i1 %exitcond.not.i.i.i157, label %._crit_edge.i.i.i158, label %.lr.ph.i.i.i152, !llvm.loop !4636

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i175: ; preds = %.lr.ph.i.i.i152
  store i64 %.sroa.7.057.i.i.i154, ptr %i.qt, align 8, !alias.scope !4735, !noalias !4733
  br label %.loopexit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ca, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.i.i.i176, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i178, %bb.bz
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4743)
  call void @llvm.experimental.noalias.scope.decl(metadata !4744), !noalias !4733
  %i.sl = load i64, ptr %i.bw, align 8, !alias.scope !4745, !noalias !4733, !noundef !14 ; 2 uses
  %i.sm = icmp ugt i64 %i.sl, 2
  br i1 %i.sm, label %bb.cc, label %.body189

bb.cc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.sn = load ptr, ptr %i.f, align 8, !alias.scope !4745, !noalias !4733, !nonnull !14, !noundef !14
  %i.so = load i64, ptr %i.bx, align 8, !alias.scope !4745, !noalias !4733, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4746
  store i64 %i.sl, ptr %i.a, align 8, !noalias !4746
  %i.sp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.sn, ptr %i.sp, align 8, !noalias !4746
  %i.sq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.so, ptr %i.sq, align 8, !noalias !4746
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i230 unwind label %bb.cd, !noalias !4746

bb.cd:                                            ; preds = %bb.cc
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body231 unwind label %bb.ce, !noalias !4746

bb.ce:                                            ; preds = %bb.cd
  %i.ss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4746
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i230: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc233 unwind label %bb.cf

.noexc233:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4746
  br label %.body189

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i230
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body231

.body231:                                         ; preds = %bb.cd, %bb.cf
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4733
  unreachable

._crit_edge155:                                   ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit197, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE6removeBH_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %.sroa.0.0.ph240, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177)
  call void @llvm.experimental.noalias.scope.decl(metadata !4747)
  call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  call void @llvm.experimental.noalias.scope.decl(metadata !4749)
  call void @llvm.experimental.noalias.scope.decl(metadata !4750)
  %i.su = load i64, ptr %i.cc, align 8, !alias.scope !4751, !noundef !14 ; 2 uses
  %i.sv = icmp ugt i64 %i.su, 2
  br i1 %i.sv, label %bb.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit194

bb.cg:                                            ; preds = %._crit_edge155
  %i.sw = load ptr, ptr %i.cd, align 8, !alias.scope !4751, !nonnull !14, !noundef !14
  %i.sx = load i64, ptr %i.ce, align 8, !alias.scope !4751, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4751
  store i64 %i.su, ptr %i.e, align 8, !noalias !4751
  store ptr %i.sw, ptr %i.cf, align 8, !noalias !4751
  store i64 %i.sx, ptr %i.cg, align 8, !noalias !4751
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i193 unwind label %bb.ch, !noalias !4751

bb.ch:                                            ; preds = %bb.cg
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.ci, !noalias !4751

bb.ci:                                            ; preds = %bb.ch
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4751
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i193: ; preds = %bb.cg
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !4751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4751
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit194

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit194: ; preds = %._crit_edge155, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bd

.body189:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.noexc233
  %.sroa.614.23.extract.shift.mask = and i64 %.sroa.4.0.i125, -72057594037927936
  %i.ta = icmp eq i64 %.sroa.614.23.extract.shift.mask, -2882303761517117440
  br i1 %i.ta, label %bb.cj, label %common.resume, !prof !16

bb.cj:                                            ; preds = %.body189
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i127) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i127, i64 noundef %.sroa.4.0.i125)
          to label %common.resume unwind label %bb.bc

.loopexit:                                        ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i168, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i175, %._crit_edge.i.i.i158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4733
  store ptr %.sroa.0.0.i127, ptr %i.by, align 8
end_hunk_1
