Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.06?download=true
inline.NumInlined: 969
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE11replace_allCs2NzvFoTxuAy_2rg:bb.a
  ], !dbg !13469

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bj
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gs, align 1, !dbg !13469, !alias.scope !13146, !noalias !13137
  br label %bb.bl, !dbg !13469

bb.bl:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk
  %i.gv = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.bk ], !dbg !13469
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gv, 43, !dbg !13469 ; 2 uses
  %i.gw = sext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13469
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.gt, %i.gw, !dbg !13469 ; 10 uses
  %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13469
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13469 ; 9 uses
  %i.gx = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.gx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !dbg !13470

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bl
  %.not5668.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !13471
  br i1 %.not5668.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13471

.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bo
  %.not55.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hb, 0, !dbg !13472
  br i1 %.not55.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !dbg !13472

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.045.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jn, %bb.bw ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hp, %bb.bp ], [ %i.hx, %bb.bq ], [ %i.ie, %bb.br ], [ %i.il, %bb.bs ], [ %i.is, %bb.bt ], [ %i.iz, %bb.bu ], [ %i.jg, %bb.bv ], [ %i.hl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13473
  %i.gy = zext i32 %.sroa.045.1.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13474
  %i.gz = shl nuw i64 %i.gy, 32, !dbg !13474
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13474

.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.bl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288 = phi ptr [ %i.ha, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i.i.i.i.i.i.i287 = phi i64 [ %i.hb, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ]
  %.sroa.045.0.i.i.i.i.i.i.i.i.i.i.i.i.i286 = phi i32 [ %i.hl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bl ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288, i64 1, !dbg !13475
  %i.hb = add nsw i64 %.sroa.15.1.i.i.i.i.i.i.i.i.i.i.i.i.i287, -1, !dbg !13475 ; 2 uses
  %i.hc = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i.i.i.i.i.i.i.i.i.i.i286, i32 10), !dbg !13476 ; 2 uses
  %i.hd = extractvalue { i32, i1 } %i.hc, 0, !dbg !13476 ; 2 uses
  %i.he = extractvalue { i32, i1 } %i.hc, 1, !dbg !13476
  %i.hf = load i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288, align 1, !dbg !13477, !alias.scope !13146, !noalias !13137, !noundef !387 ; 2 uses
  br i1 %i.he, label %bb.bn, label %bb.bm, !dbg !13478, !prof !501

bb.bm:                                            ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hg = zext i8 %i.hf to i32, !dbg !13479
  %i.hh = add nsw i32 %i.hg, -48, !dbg !13480     ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 10, !dbg !13481
  br i1 %i.hi, label %bb.bo, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13482

bb.bn:                                            ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hj = add i8 %i.hf, -48, !dbg !13483
  %i.hk = icmp ult i8 %i.hj, 10, !dbg !13483
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.hk, i64 513, i64 257, !dbg !13482
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13482

bb.bo:                                            ; preds = %bb.bm
  %i.hl = add i32 %i.hh, %i.hd, !dbg !13484       ; 3 uses
  %i.hm = icmp ult i32 %i.hl, %i.hd, !dbg !13484
  br i1 %i.hm, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13485, !prof !501

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.ho = zext i8 %i.hn to i32, !dbg !13487
  %i.hp = add nsw i32 %i.ho, -48, !dbg !13488     ; 3 uses
  %i.hq = icmp ult i32 %i.hp, 10, !dbg !13489
  br i1 %i.hq, label %bb.bp, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1:               ; preds = %bb.bp
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1, !dbg !13491
  %i.hs = load i8, ptr %i.hr, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.ht = zext i8 %i.hs to i32, !dbg !13487
  %i.hu = add nsw i32 %i.ht, -48, !dbg !13488     ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10, !dbg !13489
  br i1 %i.hv, label %bb.bq, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.hw = mul nuw nsw i32 %i.hp, 10, !dbg !13492
  %i.hx = add nuw nsw i32 %i.hu, %i.hw, !dbg !13493 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2:               ; preds = %bb.bq
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2, !dbg !13491
  %i.hz = load i8, ptr %i.hy, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.ia = zext i8 %i.hz to i32, !dbg !13487
  %i.ib = add nsw i32 %i.ia, -48, !dbg !13488     ; 2 uses
  %i.ic = icmp ult i32 %i.ib, 10, !dbg !13489
  br i1 %i.ic, label %bb.br, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.id = mul nuw nsw i32 %i.hx, 10, !dbg !13492
  %i.ie = add nuw nsw i32 %i.ib, %i.id, !dbg !13493 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3:               ; preds = %bb.br
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3, !dbg !13491
  %i.ig = load i8, ptr %i.if, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.ih = zext i8 %i.ig to i32, !dbg !13487
  %i.ii = add nsw i32 %i.ih, -48, !dbg !13488     ; 2 uses
  %i.ij = icmp ult i32 %i.ii, 10, !dbg !13489
  br i1 %i.ij, label %bb.bs, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.ik = mul nuw nsw i32 %i.ie, 10, !dbg !13492
  %i.il = add nuw nsw i32 %i.ii, %i.ik, !dbg !13493 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4:               ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4, !dbg !13491
  %i.in = load i8, ptr %i.im, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.io = zext i8 %i.in to i32, !dbg !13487
  %i.ip = add nsw i32 %i.io, -48, !dbg !13488     ; 2 uses
  %i.iq = icmp ult i32 %i.ip, 10, !dbg !13489
  br i1 %i.iq, label %bb.bt, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4
  %i.ir = mul i32 %i.il, 10, !dbg !13492
  %i.is = add i32 %i.ip, %i.ir, !dbg !13493       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 5, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.4, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5:               ; preds = %bb.bt
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5, !dbg !13491
  %i.iu = load i8, ptr %i.it, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.iv = zext i8 %i.iu to i32, !dbg !13487
  %i.iw = add nsw i32 %i.iv, -48, !dbg !13488     ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10, !dbg !13489
  br i1 %i.ix, label %bb.bu, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5
  %i.iy = mul i32 %i.is, 10, !dbg !13492
  %i.iz = add i32 %i.iw, %i.iy, !dbg !13493       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 6, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.5, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6:               ; preds = %bb.bu
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 6, !dbg !13491
  %i.jb = load i8, ptr %i.ja, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.jc = zext i8 %i.jb to i32, !dbg !13487
  %i.jd = add nsw i32 %i.jc, -48, !dbg !13488     ; 2 uses
  %i.je = icmp ult i32 %i.jd, 10, !dbg !13489
  br i1 %i.je, label %bb.bv, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6
  %i.jf = mul i32 %i.iz, 10, !dbg !13492
  %i.jg = add i32 %i.jd, %i.jf, !dbg !13493       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 7, !dbg !13471
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.6, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7, !dbg !13471

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7:               ; preds = %bb.bv
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, !dbg !13491
  %i.ji = load i8, ptr %i.jh, align 1, !dbg !13486, !alias.scope !13146, !noalias !13137, !noundef !387
  %i.jj = zext i8 %i.ji to i32, !dbg !13487
  %i.jk = add nsw i32 %i.jj, -48, !dbg !13488     ; 2 uses
  %i.jl = icmp ult i32 %i.jk, 10, !dbg !13489
  br i1 %i.jl, label %bb.bw, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13490

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7
  %i.jm = mul i32 %i.jg, 10, !dbg !13492
  %i.jn = add i32 %i.jk, %i.jm, !dbg !13493
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13471

bb.bx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not32.lcssa6673.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, !dbg !13494

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx
  %.val.i28.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.lcssa396772.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !dbg !13495, !alias.scope !13152, !noalias !13129, !noundef !387
  %i.jo = icmp eq i8 %.val.i28.i.i.i.i.i.i.i.i.i.i.i.i, 125, !dbg !13496
  br i1 %i.jo, label %bb.by, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, !dbg !13497

bb.by:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jp = add nuw i64 %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13498
  br label %bb.bj, !dbg !13499

bb.bz:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.jq = load i64, ptr %i.z, align 8, !dbg !13500, !range !463, !alias.scope !13154, !noalias !13097, !noundef !387
  %i.jr = icmp eq i64 %i.fx, %i.jq, !dbg !13501
  br i1 %i.jr, label %bb.ca, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13501

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #24, !dbg !13502, !noalias !13108
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13503

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.js = load ptr, ptr %i.aw, align 8, !dbg !13504, !alias.scope !13154, !noalias !13097, !nonnull !387, !noundef !387
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.fx, !dbg !13505
  store i8 36, ptr %i.jt, align 1, !dbg !13506, !noalias !13108
  %i.ju = add i64 %i.fx, 1, !dbg !13507
  store i64 %i.ju, ptr %i.ab, align 8, !dbg !13507, !alias.scope !13154, !noalias !13097
  %i.jv = add nsw i64 %i.fy, -2, !dbg !13508
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fr, i64 2, !dbg !13509
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13510

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bo, %bb.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %bb.bn, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk, %bb.bk, %bb.bj
  %.sroa.8.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 257, %bb.bk ], [ 1, %bb.bj ], [ 257, %bb.bk ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bn ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ 257, %bb.bm ], [ 513, %bb.bo ], !dbg !13474 ; 2 uses
  %.sroa.526.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i, 32, !dbg !13511
  %i.jx = icmp ugt i64 %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy, !dbg !13512
  br i1 %i.jx, label %bb.cd, label %bb.cc, !dbg !13512, !prof !501

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.jy = load i64, ptr %i.ab, align 8, !dbg !13513, !alias.scope !13159, !noalias !13097, !noundef !387 ; 3 uses
  %i.jz = load i64, ptr %i.z, align 8, !dbg !13514, !range !463, !alias.scope !13159, !noalias !13097, !noundef !387
  %i.ka = icmp eq i64 %i.jy, %i.jz, !dbg !13515
  br i1 %i.ka, label %bb.cb, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i, !dbg !13515

bb.cb:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #24, !dbg !13516, !noalias !13108
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i, !dbg !13517

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.kb = load ptr, ptr %i.aw, align 8, !dbg !13518, !alias.scope !13159, !noalias !13097, !nonnull !387, !noundef !387
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jy, !dbg !13519
  store i8 36, ptr %i.kc, align 1, !dbg !13520, !noalias !13108
  %i.kd = add i64 %i.jy, 1, !dbg !13521
  store i64 %i.kd, ptr %i.ab, align 8, !dbg !13521, !alias.scope !13159, !noalias !13097
  %i.ke = add nsw i64 %i.fy, -1, !dbg !13522
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13510

.backedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cl, %bb.cg, %bb.cf, %bb.ce, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.20.0.be.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ke, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kg, %bb.ce ], [ %i.kg, %bb.cg ], [ %i.kg, %bb.cf ], [ %i.kg, %bb.cl ], [ %i.kg, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.be.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ga, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kh, %bb.ce ], [ %i.kh, %bb.cg ], [ %i.kh, %bb.cf ], [ %i.kh, %bb.cl ], [ %i.kh, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.kf = icmp eq i64 %.sroa.20.0.be.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !13523
  br i1 %i.kf, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !dbg !13410

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %9 = trunc i64 %.sroa.8.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i to i1, !dbg !13524
  %i.kg = sub nuw nsw i64 %i.fy, %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13525 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13526 ; 5 uses
  br i1 %9, label %bb.cf, label %bb.ce, !dbg !13527

bb.cd:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fy, i64 noundef %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22, !dbg !13528, !noalias !13108
  unreachable, !dbg !13528

bb.ce:                                            ; preds = %bb.cc
  call fastcc void @_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1V_8ReplacerRRNtB7_12RegexMatcherE11replace_all00E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.526.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #23, !dbg !13529, !noalias !13162
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13530

bb.cf:                                            ; preds = %bb.cc
  %.val.i.i50.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !dbg !13531, !noalias !13163, !nonnull !387, !align !516, !noundef !387
  %i.ki = getelementptr i8, ptr %.val.i.i50.i.i.i.i.i.i.i.i.i.i.i, i64 48, !dbg !13532
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ki, align 8, !dbg !13532, !noalias !13165, !nonnull !387, !noundef !387 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, !dbg !13533
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !13533, !noalias !13169, !nonnull !387, !noundef !387
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, !dbg !13533
  %i.km = load ptr, ptr %i.kl, align 8, !dbg !13533, !noalias !13169, !nonnull !387, !align !516, !noundef !387 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16, !dbg !13534
  %i.ko = load i64, ptr %i.kn, align 8, !dbg !13534, !range !567, !invariant.load !387, !noalias !13169
  %i.kp = add nsw i64 %i.ko, -1, !dbg !13534
  %i.kq = and i64 %i.kp, -16, !dbg !13534
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kq, !dbg !13534
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16, !dbg !13534
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 32, !dbg !13535
  %i.ku = load ptr, ptr %i.kt, align 8, !dbg !13535, !invariant.load !387, !noalias !13169, !nonnull !387
  %i.kv = call noundef nonnull align 8 ptr %i.ku(ptr noundef nonnull %i.ks) #23, !dbg !13536, !noalias !13169, !inline_history !12829
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kv, align 8, !dbg !13537, !noalias !13169, !nonnull !387, !noundef !387 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56, !dbg !13538
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !13538, !noalias !13171, !noundef !387
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kx, 0, !dbg !13539
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, !dbg !13539

bb.cg:                                            ; preds = %bb.cf
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, !dbg !13540
  %i.kz = load ptr, ptr %i.ky, align 8, !dbg !13540, !noalias !13171, !nonnull !387, !noundef !387 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24, !dbg !13541
  %i.lb = load i64, ptr %i.la, align 8, !dbg !13541, !alias.scope !13184, !noalias !13171, !noundef !387
  %i.lc = icmp eq i64 %i.lb, 0, !dbg !13542
  br i1 %i.lc, label %.backedge.i.i.i.i.i.i.i.i.i.i.i, label %bb.ch, !dbg !13543

bb.ch:                                            ; preds = %bb.cg
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 32, !dbg !13544
  %i.le = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ld, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef %i.gt), !dbg !13545, !noalias !13108 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13185), !dbg !13546
  call void @llvm.experimental.noalias.scope.decl(metadata !13186), !dbg !13547
  %i.lf = lshr i64 %i.le, 57, !dbg !13548
  %i.lg = trunc nuw nsw i64 %i.lf to i8, !dbg !13549
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 8, !dbg !13550
  %i.li = load i64, ptr %i.lh, align 8, !dbg !13550, !alias.scope !13192, !noalias !13108, !noundef !387 ; 2 uses
  %i.lj = load ptr, ptr %i.kz, align 8, !alias.scope !13192, !noalias !13108, !nonnull !387, !noundef !387 ; 2 uses
  %i.lk = insertelement <16 x i8> poison, i8 %i.lg, i64 0
  %i.ll = shufflevector <16 x i8> %i.lk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ci, !dbg !13551

bb.ci:                                            ; preds = %bb.ck, %bb.ch
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ch ], [ %i.mc, %bb.ck ], !dbg !13552
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.le, %bb.ch ], [ %i.md, %bb.ck ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.li, !dbg !13552 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13553
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.lm, align 1, !dbg !13554, !noalias !13193 ; 2 uses
  %i.ln = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ll, !dbg !13555
  %i.lo = bitcast <16 x i1> %i.ln to i16, !dbg !13556 ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.lo, 0, !dbg !13557
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13558

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.ci, %bb.cj
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.mb, %bb.cj ], [ %i.lo, %bb.ci ] ; 3 uses
  %i.lp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true), !dbg !13559
  %i.lq = zext nneg i16 %i.lp to i64, !dbg !13560
  %i.lr = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.lq, !dbg !13561
  %i.ls = and i64 %i.lr, %i.li, !dbg !13561
  %i.lt = sub nsw i64 0, %i.ls, !dbg !13562
  %i.lu = getelementptr inbounds [24 x i8], ptr %i.lj, i64 %i.lt, !dbg !13563 ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -24, !dbg !13564
  %i.lw = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc4sync3ArceEE10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lv), !dbg !13565, !noalias !13210
  br i1 %i.lw, label %bb.cl, label %bb.cj, !dbg !13566, !prof !512

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.cj, %bb.ci
  %i.lx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1), !dbg !13567
  %i.ly = bitcast <16 x i1> %i.lx to i16, !dbg !13568
  %i.lz = icmp eq i16 %i.ly, 0, !dbg !13569
  br i1 %i.lz, label %bb.ck, label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13569, !prof !501

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ma = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1, !dbg !13570
  %i.mb = and i16 %i.ma, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13571 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.mb, 0, !dbg !13557
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13558

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mc = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16, !dbg !13572 ; 2 uses
  %i.md = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.mc, !dbg !13573
  br label %bb.ci, !dbg !13551

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.me = getelementptr inbounds i8, ptr %i.lu, i64 -8, !dbg !13574
  %i.mf = load i32, ptr %i.me, align 4, !dbg !13575, !noalias !13108, !noundef !387
  %i.mg = zext i32 %i.mf to i64, !dbg !13576
  call fastcc void @_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1V_8ReplacerRRNtB7_12RegexMatcherE11replace_all00E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 noundef %i.mg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #23, !dbg !13577, !noalias !13162
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13578

_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.az, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.20.079.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ 0, %.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %i.mh = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ %i.fe, %.thread.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13424
  %i.mi = add i64 %i.mh, %.sroa.20.079.i.i.i.i.i.i.i.i.i.i.i, !dbg !13424 ; 4 uses
  store i64 %i.mi, ptr %i.ab, align 8, !dbg !13424, !alias.scope !13124, !noalias !13097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13579, !noalias !13103
  %i.mj = icmp sgt i64 %i.mi, -1, !dbg !13580
  call void @llvm.assume(i1 %i.mj), !dbg !13581
  %.not.i4.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.fc, %i.mi, !dbg !13582
  br i1 %.not.i4.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cn, !dbg !13582, !prof !501

bb.cm:                                            ; preds = %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !dbg !13583, !noalias !13129
  unreachable, !dbg !13583

bb.cn:                                            ; preds = %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i
  %i.mk = load i64, ptr %i.ac, align 8, !dbg !13584, !alias.scope !13216, !noalias !13129, !noundef !387 ; 3 uses
  %i.ml = load i64, ptr %i.aa, align 8, !dbg !13585, !range !463, !alias.scope !13216, !noalias !13129, !noundef !387
  %i.mm = icmp eq i64 %i.mk, %i.ml, !dbg !13586
  br i1 %i.mm, label %bb.co, label %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i, !dbg !13586

bb.co:                                            ; preds = %bb.cn
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #24, !dbg !13587, !noalias !13129
  br label %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i, !dbg !13588

bb.cp:                                            ; preds = %bb.aw
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i38, i64 noundef %i.et, i64 noundef range(i64 0, -9223372036854775808) %.sroa.13.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #22, !dbg !13589, !noalias !13095
  unreachable, !dbg !13589

_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.mn = load ptr, ptr %i.ay, align 8, !dbg !13590, !alias.scope !13216, !noalias !13129, !nonnull !387, !noundef !387
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.mk, !dbg !13591 ; 2 uses
  store i64 %i.fc, ptr %i.mo, align 8, !dbg !13592, !noalias !13129
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8, !dbg !13592
  store i64 %i.mi, ptr %i.mp, align 8, !dbg !13592, !noalias !13129
  %i.mq = add i64 %i.mk, 1, !dbg !13593
  store i64 %i.mq, ptr %i.ac, align 8, !dbg !13593, !alias.scope !13216, !noalias !13129
  br label %bb.cq, !dbg !13594

bb.cq:                                            ; preds = %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i, %bb.am
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i38, %bb.am ], [ %i.eu, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i ], !dbg !13595 ; 2 uses
  %.sroa.3.1.i.i.i.i.i.i = phi i64 [ %.sroa.3.073.i.i.i.i.i.i, %bb.am ], [ %i.eg, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i ], !dbg !13596
  %.sroa.0.2.i.i.i.i.i.i = phi i64 [ %i.eb, %bb.am ], [ %.sroa.0.1.i.i.i.i.i.i, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i ], !dbg !13597 ; 2 uses
  %i.mr = icmp ugt i64 %.sroa.0.2.i.i.i.i.i.i, %.sroa.13.0, !dbg !13266
  br i1 %i.mr, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i, label %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !13266

_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.cq, %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i, %bb.m
  %.sroa.0.2.i = phi i64 [ %5, %bb.m ], [ %.sroa.0.0.i38, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.1.i, %bb.cq ], [ %.sroa.0.0.i38, %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i38, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i ], !dbg !13267 ; 6 uses
  %i.ms = icmp ugt i64 %.sroa.0.2.i, %6, !dbg !13598
  %..i.i = call range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %6, i64 range(i64 0, -9223372036854775808) %.sroa.13.0), !dbg !13598
  %.sroa.03.0.i = select i1 %i.ms, i64 %.sroa.13.0, i64 %..i.i, !dbg !13598 ; 4 uses
  %i.mt = icmp ult i64 %.sroa.03.0.i, %.sroa.0.2.i, !dbg !13599
  br i1 %i.mt, label %bb.cu, label %bb.cr, !dbg !13599, !prof !675

bb.cr:                                            ; preds = %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i
  %gepdiff.i = sub nuw nsw i64 %.sroa.03.0.i, %.sroa.0.2.i, !dbg !13600 ; 3 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %gepdiff.i), !dbg !13601, !noalias !13217
  %i.mu = load i64, ptr %i.ab, align 8, !dbg !13602, !alias.scope !13218, !noundef !387 ; 3 uses
  %i.mv = icmp sgt i64 %i.mu, -1, !dbg !13603
  call void @llvm.assume(i1 %i.mv), !dbg !13604
  %.not.i.i = icmp eq i64 %.sroa.03.0.i, %.sroa.0.2.i, !dbg !13605
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i, label %bb.cs, !dbg !13605

bb.cs:                                            ; preds = %bb.cr
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.2.i, !dbg !13606
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13607
  %i.my = load ptr, ptr %i.mx, align 8, !dbg !13607, !alias.scope !13218, !nonnull !387, !noundef !387
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mu, !dbg !13608
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mz, ptr nonnull readonly align 1 %i.mw, i64 %gepdiff.i, i1 false), !dbg !13609, !noalias !13217
  %.pre.i.i = load i64, ptr %i.ab, align 8, !dbg !13610, !alias.scope !13218
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i, !dbg !13611

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.cs, %bb.cr
  %i.na = phi i64 [ %.pre.i.i, %bb.cs ], [ %i.mu, %bb.cr ], !dbg !13610
  %i.nb = add i64 %i.na, %gepdiff.i, !dbg !13610
  store i64 %i.nb, ptr %i.ab, align 8, !dbg !13610, !alias.scope !13218
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0), !dbg !13612, !noalias !13217
  %i.nc = load i64, ptr %i.ab, align 8, !dbg !13613, !alias.scope !13220, !noundef !387 ; 3 uses
  %i.nd = icmp sgt i64 %i.nc, -1, !dbg !13614
  call void @llvm.assume(i1 %i.nd), !dbg !13615
  %.not.i8.i = icmp eq i64 %.sroa.3.0, 0, !dbg !13616
  br i1 %.not.i8.i, label %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit, label %bb.ct, !dbg !13616

bb.ct:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13617
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !13617, !alias.scope !13220, !nonnull !387, !noundef !387
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nc, !dbg !13618
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull readonly align 1 %.sroa.020.0, i64 range(i64 0, -9223372036854775808) %.sroa.3.0, i1 false), !dbg !13619, !noalias !13221
  %.pre.i9.i = load i64, ptr %i.ab, align 8, !dbg !13620, !alias.scope !13220
  br label %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit, !dbg !13621

bb.cu:                                            ; preds = %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2.i, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.13.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22, !dbg !13622, !noalias !13217
  unreachable, !dbg !13622

_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i, %bb.ct
  %i.nh = phi i64 [ %.pre.i9.i, %bb.ct ], [ %i.nc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i ], !dbg !13620
  %i.ni = add i64 %i.nh, %.sroa.3.0, !dbg !13620
  store i64 %i.ni, ptr %i.ab, align 8, !dbg !13620, !alias.scope !13220
  br label %bb.cv, !dbg !13623

bb.cv:                                            ; preds = %_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE8allocateCs2NzvFoTxuAy_2rg.exit, %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit
  %.sroa.019.0 = phi ptr [ null, %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit ], [ %i.v, %_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE8allocateCs2NzvFoTxuAy_2rg.exit ], !dbg !13249
  ret ptr %.sroa.019.0, !dbg !13623
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher7find_at(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.48.val, ptr %.56.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13624 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13756, !noalias !13732
  store i64 %3, ptr %i.e, align 8, !dbg !13757, !noalias !13732
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13757
  store i64 %2, ptr %i.h, align 8, !dbg !13757, !noalias !13732
  %i.i = add nuw i64 %2, 1
  %.not8.i = icmp ugt i64 %3, %i.i
  br i1 %.not8.i, label %bb.b, label %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit, !dbg !13758, !prof !675

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13759, !noalias !13732
  store i64 %2, ptr %i.d, align 8, !dbg !13759, !noalias !13732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13760, !noalias !13732
  store ptr %i.e, ptr %i.c, align 8, !dbg !13760, !noalias !13732
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13760
  store ptr @_RNvXs2_NtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB5_4SpanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !13760, !noalias !13732
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13760
  store ptr %i.d, ptr %i.j, align 8, !dbg !13760, !noalias !13732
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !13760
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !13760, !noalias !13732
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !dbg !13761, !noalias !13732
  unreachable, !dbg !13761

_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13762, !noalias !13732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13764
  store i32 0, ptr %i.f, align 8, !dbg !13765
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13765
  store ptr %1, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !13765
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !13765
  store i64 %2, ptr %.sroa.6.0..sroa_idx6, align 8, !dbg !13765
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !13765
  store i64 %3, ptr %.sroa.77.0..sroa_idx, align 8, !dbg !13765
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !13765
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !13765
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !13765
  store i8 0, ptr %.sroa.98.0..sroa_idx, align 8, !dbg !13765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13741), !dbg !13766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.48.val, i64 32, !dbg !13767
  %i.l = load ptr, ptr %i.k, align 8, !dbg !13767, !noalias !13745, !nonnull !387, !noundef !387 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 138, !dbg !13768
  %i.n = load i8, ptr %i.m, align 2, !dbg !13768, !range !717, !noalias !13745, !noundef !387
  %cond.i = icmp eq i8 %i.n, 2, !dbg !13769
  br i1 %cond.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %bb.c, !dbg !13769

bb.c:                                             ; preds = %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit
  %.not.i.i = icmp eq i64 %3, 0, !dbg !13770
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !13771, !noalias !13746 ; 7 uses
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.d, !dbg !13770

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 60, !dbg !13772
  %i.p = load i32, ptr %i.o, align 4, !dbg !13772, !noalias !13746, !noundef !387
  %i.q = and i32 %i.p, 1, !dbg !13773
  %.not6.i.i = icmp eq i32 %i.q, 0, !dbg !13773
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!13311 = !DILocation(line: 706, column: 34, scope: !12388, inlinedAt: !12391)
!13312 = !DILocation(line: 0, scope: !12388, inlinedAt: !12391)
!13313 = !DILocation(line: 1141, column: 22, scope: !12384, inlinedAt: !12343)
!13314 = !DILocation(line: 1141, column: 37, scope: !12384, inlinedAt: !12343)
!13315 = !DILocation(line: 1143, column: 24, scope: !12396, inlinedAt: !12343)
!13316 = !DILocation(line: 975, column: 22, scope: !153, inlinedAt: !12403)
!13317 = !DILocation(line: 743, column: 13, scope: !154, inlinedAt: !12402)
!13318 = !DILocation(line: 765, column: 21, scope: !154, inlinedAt: !12402)
!13319 = !DILocation(line: 769, column: 21, scope: !591, inlinedAt: !12402)
!13320 = !DILocation(line: 750, column: 24, scope: !157, inlinedAt: !12402)
!13321 = !DILocation(line: 753, column: 31, scope: !157, inlinedAt: !12402)
!13322 = !DILocation(line: 848, column: 1, scope: !132, inlinedAt: !12406)
!13323 = !DILocation(line: 175, column: 14, scope: !10, inlinedAt: !12411)
!13324 = !DILocation(line: 1145, column: 5, scope: !12342, inlinedAt: !12343)
!13325 = !DILocation(line: 175, column: 14, scope: !10, inlinedAt: !12416)
!13326 = !DILocation(line: 773, column: 10, scope: !154, inlinedAt: !12402)
!13327 = !DILocation(line: 769, column: 21, scope: !592, inlinedAt: !12402)
!13328 = !DILocation(line: 2437, column: 9, scope: !159, inlinedAt: !12419)
!13329 = !DILocation(line: 3986, column: 24, scope: !42, inlinedAt: !12420)
!13330 = !DILocation(line: 771, column: 17, scope: !154, inlinedAt: !12402)
!13331 = !DILocation(line: 1130, column: 5, scope: !12342, inlinedAt: !12343)
!13332 = !DILocation(line: 1145, column: 6, scope: !12342, inlinedAt: !12343)
!13333 = !DILocation(line: 1135, column: 9, scope: !12313, inlinedAt: !12422)
!13334 = !DILocation(line: 468, column: 5, scope: !12309, inlinedAt: !12310)
!13335 = !DILocation(line: 837, column: 17, scope: !12300, inlinedAt: !12301)
!13336 = !DILocation(line: 434, column: 9, scope: !12424, inlinedAt: !12427)
!13337 = !DILocation(line: 840, column: 26, scope: !12300, inlinedAt: !12301)
!13338 = !DILocation(line: 537, column: 19, scope: !298, inlinedAt: !12432)
!13339 = !DILocation(line: 454, column: 20, scope: !300, inlinedAt: !12437)
!13340 = !DILocation(line: 3100, column: 19, scope: !305, inlinedAt: !12439)
!13341 = !DILocation(line: 3105, column: 37, scope: !307, inlinedAt: !12439)
!13342 = !DILocation(line: 3105, column: 18, scope: !307, inlinedAt: !12439)
!13343 = !DILocation(line: 459, column: 41, scope: !304, inlinedAt: !12433)
!13344 = !DILocation(line: 203, column: 9, scope: !308, inlinedAt: !12447)
!13345 = !DILocation(line: 184, column: 12, scope: !314, inlinedAt: !12449)
!13346 = !DILocation(line: 1915, column: 12, scope: !312, inlinedAt: !12443)
!13347 = !DILocation(line: 1880, column: 57, scope: !316, inlinedAt: !12451)
!13348 = !DILocation(line: 459, column: 38, scope: !304, inlinedAt: !12433)
!13349 = !DILocation(line: 0, scope: !304, inlinedAt: !12433)
!13350 = !DILocation(line: 611, column: 9, scope: !319, inlinedAt: !12457)
!13351 = !DILocation(line: 1864, column: 86, scope: !323, inlinedAt: !12453)
!13352 = !DILocation(line: 184, column: 12, scope: !326, inlinedAt: !12459)
!13353 = !DILocation(line: 186, column: 27, scope: !326, inlinedAt: !12459)
!13354 = !DILocation(line: 2142, column: 19, scope: !328, inlinedAt: !12460)
!13355 = !DILocation(line: 2874, column: 15, scope: !329, inlinedAt: !12461)
!13356 = !DILocation(line: 2874, column: 9, scope: !329, inlinedAt: !12461)
!13357 = !DILocation(line: 186, column: 27, scope: !326, inlinedAt: !12463)
!13358 = !DILocation(line: 2142, column: 19, scope: !328, inlinedAt: !12464)
!13359 = !DILocation(line: 2874, column: 15, scope: !329, inlinedAt: !12465)
!13360 = !DILocation(line: 2874, column: 9, scope: !329, inlinedAt: !12465)
!13361 = !DILocation(line: 486, column: 18, scope: !331, inlinedAt: !12467)
!13362 = !DILocation(line: 486, column: 18, scope: !331, inlinedAt: !12469)
!13363 = !DILocation(line: 82, column: 17, scope: !334, inlinedAt: !12472)
!13364 = !DILocation(line: 82, column: 9, scope: !334, inlinedAt: !12472)
!13365 = !DILocation(line: 841, column: 16, scope: !12473, inlinedAt: !12301)
!13366 = !DILocation(line: 1016, column: 21, scope: !12474, inlinedAt: !12475)
!13367 = !DILocation(line: 2444, column: 9, scope: !12476, inlinedAt: !12477)
!13368 = !DILocation(line: 0, scope: !12473, inlinedAt: !12301)
!13369 = !DILocation(line: 459, column: 41, scope: !304, inlinedAt: !12483)
!13370 = !DILocation(line: 203, column: 9, scope: !308, inlinedAt: !12489)
!13371 = !DILocation(line: 184, column: 12, scope: !314, inlinedAt: !12491)
!13372 = !DILocation(line: 1915, column: 12, scope: !312, inlinedAt: !12485)
!13373 = !DILocation(line: 1880, column: 57, scope: !316, inlinedAt: !12493)
!13374 = !DILocation(line: 459, column: 38, scope: !304, inlinedAt: !12483)
!13375 = !DILocation(line: 0, scope: !304, inlinedAt: !12483)
!13376 = !DILocation(line: 184, column: 12, scope: !326, inlinedAt: !12495)
!13377 = !DILocation(line: 186, column: 27, scope: !326, inlinedAt: !12495)
!13378 = !DILocation(line: 2142, column: 19, scope: !328, inlinedAt: !12504)
!13379 = !DILocation(line: 2874, column: 15, scope: !329, inlinedAt: !12505)
!13380 = !DILocation(line: 2874, column: 9, scope: !329, inlinedAt: !12505)
!13381 = !DILocation(line: 186, column: 27, scope: !326, inlinedAt: !12507)
!13382 = !DILocation(line: 2142, column: 19, scope: !328, inlinedAt: !12508)
!13383 = !DILocation(line: 2874, column: 15, scope: !329, inlinedAt: !12509)
!13384 = !DILocation(line: 2874, column: 9, scope: !329, inlinedAt: !12509)
!13385 = !DILocation(line: 486, column: 18, scope: !331, inlinedAt: !12511)
!13386 = !DILocation(line: 486, column: 18, scope: !331, inlinedAt: !12513)
!13387 = !DILocation(line: 82, column: 17, scope: !334, inlinedAt: !12516)
!13388 = !DILocation(line: 82, column: 9, scope: !334, inlinedAt: !12516)
!13389 = !DILocation(line: 573, column: 12, scope: !12517, inlinedAt: !12481)
!13390 = !DILocation(line: 1016, column: 21, scope: !12518, inlinedAt: !12519)
!13391 = !DILocation(line: 1122, column: 16, scope: !12520, inlinedAt: !12525)
!13392 = !DILocation(line: 734, column: 18, scope: !12527, inlinedAt: !12542)
!13393 = !DILocation(line: 2959, column: 14, scope: !338, inlinedAt: !12544)
!13394 = !DILocation(line: 3100, column: 19, scope: !339, inlinedAt: !12548)
!13395 = !DILocation(line: 3105, column: 37, scope: !342, inlinedAt: !12548)
!13396 = !DILocation(line: 3105, column: 18, scope: !342, inlinedAt: !12548)
!13397 = !DILocation(line: 2980, column: 12, scope: !343, inlinedAt: !12547)
!13398 = !DILocation(line: 90, column: 24, scope: !12550, inlinedAt: !12551)
!13399 = !DILocation(line: 611, column: 9, scope: !344, inlinedAt: !12555)
!13400 = !DILocation(line: 971, column: 18, scope: !348, inlinedAt: !12556)
!13401 = !DILocation(line: 574, column: 14, scope: !349, inlinedAt: !12557)
!13402 = !DILocation(line: 2985, column: 9, scope: !343, inlinedAt: !12547)
!13403 = !DILocation(line: 2980, column: 9, scope: !343, inlinedAt: !12547)
!13404 = !DILocation(line: 578, column: 9, scope: !12517, inlinedAt: !12481)
!13405 = !DILocation(line: 3105, column: 37, scope: !12561, inlinedAt: !12564)
!13406 = !DILocation(line: 3105, column: 18, scope: !12561, inlinedAt: !12564)
!13407 = !DILocation(line: 95, column: 26, scope: !12567, inlinedAt: !12563)
!13408 = !DILocation(line: 452, column: 13, scope: !12576, inlinedAt: !12577)
!13409 = !DILocation(line: 450, column: 9, scope: !12576, inlinedAt: !12577)
!13410 = !DILocation(line: 23, column: 12, scope: !12581, inlinedAt: !12582)
!13411 = !DILocation(line: 2959, column: 14, scope: !338, inlinedAt: !12590)
!13412 = !DILocation(line: 3100, column: 19, scope: !339, inlinedAt: !12594)
!13413 = !DILocation(line: 3105, column: 37, scope: !342, inlinedAt: !12594)
!13414 = !DILocation(line: 3105, column: 18, scope: !342, inlinedAt: !12594)
!13415 = !DILocation(line: 2980, column: 12, scope: !343, inlinedAt: !12593)
!13416 = !DILocation(line: 872, column: 18, scope: !12595, inlinedAt: !12601)
!13417 = !DILocation(line: 4001, column: 24, scope: !12604, inlinedAt: !12615)
!13418 = !DILocation(line: 153, column: 13, scope: !12617, inlinedAt: !12613)
!13419 = !DILocation(line: 1134, column: 17, scope: !12610, inlinedAt: !12600)
!13420 = !DILocation(line: 2874, column: 9, scope: !12618, inlinedAt: !12619)
!13421 = !DILocation(line: 611, column: 9, scope: !344, inlinedAt: !12625)
!13422 = !DILocation(line: 971, column: 18, scope: !348, inlinedAt: !12626)
!13423 = !DILocation(line: 574, column: 14, scope: !349, inlinedAt: !12627)
!13424 = !DILocation(line: 2985, column: 9, scope: !343, inlinedAt: !12593)
!13425 = !DILocation(line: 2980, column: 9, scope: !343, inlinedAt: !12593)
!13426 = !DILocation(line: 1135, column: 21, scope: !12628, inlinedAt: !12600)
!13427 = !DILocation(line: 1138, column: 8, scope: !12629, inlinedAt: !12600)
!13428 = !DILocation(line: 971, column: 18, scope: !12630, inlinedAt: !12641)
!13429 = !DILocation(line: 2959, column: 14, scope: !338, inlinedAt: !12644)
!13430 = !DILocation(line: 3100, column: 19, scope: !339, inlinedAt: !12648)
!13431 = !DILocation(line: 3105, column: 37, scope: !342, inlinedAt: !12648)
!13432 = !DILocation(line: 3105, column: 18, scope: !342, inlinedAt: !12648)
!13433 = !DILocation(line: 2980, column: 12, scope: !343, inlinedAt: !12647)
!13434 = !DILocation(line: 611, column: 9, scope: !344, inlinedAt: !12652)
!13435 = !DILocation(line: 971, column: 18, scope: !348, inlinedAt: !12653)
!13436 = !DILocation(line: 574, column: 14, scope: !349, inlinedAt: !12654)
!13437 = !DILocation(line: 2985, column: 9, scope: !343, inlinedAt: !12647)
!13438 = !DILocation(line: 2980, column: 9, scope: !343, inlinedAt: !12647)
!13439 = !DILocation(line: 549, column: 27, scope: !12655, inlinedAt: !12658)
!13440 = !DILocation(line: 184, column: 12, scope: !12659, inlinedAt: !12662)
!13441 = !DILocation(line: 1229, column: 9, scope: !12663, inlinedAt: !12664)
!13442 = !DILocation(line: 1230, column: 24, scope: !12667, inlinedAt: !12664)
!13443 = !DILocation(line: 31, column: 50, scope: !12669, inlinedAt: !12670)
!13444 = !DILocation(line: 31, column: 12, scope: !12581, inlinedAt: !12582)
!13445 = !DILocation(line: 37, column: 29, scope: !12581, inlinedAt: !12582)
!13446 = !DILocation(line: 99, column: 34, scope: !12674, inlinedAt: !12675)
!13447 = !DILocation(line: 104, column: 8, scope: !12676, inlinedAt: !12675)
!13448 = !DILocation(line: 184, column: 12, scope: !12677, inlinedAt: !12681)
!13449 = !DILocation(line: 1229, column: 9, scope: !12682, inlinedAt: !12683)
!13450 = !DILocation(line: 1230, column: 24, scope: !12686, inlinedAt: !12683)
!13451 = !DILocation(line: 140, column: 9, scope: !12687, inlinedAt: !12690)
!13452 = !DILocation(line: 109, column: 11, scope: !12679, inlinedAt: !12675)
!13453 = !DILocation(line: 0, scope: !12676, inlinedAt: !12675)
!13454 = !DILocation(line: 112, column: 8, scope: !12679, inlinedAt: !12675)
!13455 = !DILocation(line: 119, column: 15, scope: !12679, inlinedAt: !12675)
!13456 = !DILocation(line: 1122, column: 16, scope: !12692, inlinedAt: !12697)
!13457 = !DILocation(line: 110, column: 9, scope: !12679, inlinedAt: !12675)
!13458 = !DILocation(line: 413, column: 13, scope: !12693, inlinedAt: !12696)
!13459 = !DILocation(line: 1126, column: 31, scope: !12692, inlinedAt: !12697)
!13460 = !DILocation(line: 120, column: 10, scope: !12679, inlinedAt: !12675)
!13461 = !DILocation(line: 1182, column: 15, scope: !12700, inlinedAt: !12701)
!13462 = !DILocation(line: 1182, column: 9, scope: !12700, inlinedAt: !12701)
!13463 = !DILocation(line: 1184, column: 17, scope: !12700, inlinedAt: !12701)
!13464 = !DILocation(line: 1184, column: 23, scope: !12702, inlinedAt: !12701)
!13465 = !DILocation(line: 1183, column: 16, scope: !12700, inlinedAt: !12701)
!13466 = !DILocation(line: 120, column: 43, scope: !12679, inlinedAt: !12675)
!13467 = !DILocation(line: 121, column: 8, scope: !12703, inlinedAt: !12675)
!13468 = !DILocation(line: 1783, column: 20, scope: !12704, inlinedAt: !12711)
!13469 = !DILocation(line: 1790, column: 49, scope: !12714, inlinedAt: !12711)
!13470 = !DILocation(line: 1576, column: 5, scope: !12715, inlinedAt: !12718)
!13471 = !DILocation(line: 1821, column: 39, scope: !12719, inlinedAt: !12711)
!13472 = !DILocation(line: 1837, column: 39, scope: !12720, inlinedAt: !12711)
!13473 = !DILocation(line: 1799, column: 34, scope: !12716, inlinedAt: !12711)
!13474 = !DILocation(line: 1863, column: 14, scope: !12704, inlinedAt: !12711)
!13475 = !DILocation(line: 1837, column: 43, scope: !12720, inlinedAt: !12711)
!13476 = !DILocation(line: 3242, column: 26, scope: !12721, inlinedAt: !12724)
!13477 = !DILocation(line: 1849, column: 57, scope: !12725, inlinedAt: !12711)
!13478 = !DILocation(line: 483, column: 8, scope: !12726, inlinedAt: !12728)
!13479 = !DILocation(line: 1849, column: 56, scope: !12725, inlinedAt: !12711)
!13480 = !DILocation(line: 2719, column: 13, scope: !12729, inlinedAt: !12732)
!13481 = !DILocation(line: 430, column: 12, scope: !12733, inlinedAt: !12731)
!13482 = !DILocation(line: 1803, column: 25, scope: !12725, inlinedAt: !12711)
!13483 = !DILocation(line: 430, column: 12, scope: !12733, inlinedAt: !12734)
!13484 = !DILocation(line: 968, column: 37, scope: !12735, inlinedAt: !12737)
!13485 = !DILocation(line: 483, column: 8, scope: !12726, inlinedAt: !12738)
!13486 = !DILocation(line: 1823, column: 57, scope: !12719, inlinedAt: !12711)
!13487 = !DILocation(line: 1823, column: 56, scope: !12719, inlinedAt: !12711)
!13488 = !DILocation(line: 2719, column: 13, scope: !12729, inlinedAt: !12740)
!13489 = !DILocation(line: 430, column: 12, scope: !12733, inlinedAt: !12739)
!13490 = !DILocation(line: 1803, column: 25, scope: !12719, inlinedAt: !12711)
!13491 = !DILocation(line: 1821, column: 43, scope: !12719, inlinedAt: !12711)
!13492 = !DILocation(line: 1822, column: 33, scope: !12719, inlinedAt: !12711)
!13493 = !DILocation(line: 1824, column: 33, scope: !12741, inlinedAt: !12711)
!13494 = !DILocation(line: 1229, column: 9, scope: !12742, inlinedAt: !12743)
!13495 = !DILocation(line: 1230, column: 24, scope: !12746, inlinedAt: !12743)
!13496 = !DILocation(line: 122, column: 57, scope: !12748, inlinedAt: !12749)
!13497 = !DILocation(line: 122, column: 13, scope: !12703, inlinedAt: !12675)
!13498 = !DILocation(line: 125, column: 9, scope: !12703, inlinedAt: !12675)
!13499 = !DILocation(line: 121, column: 5, scope: !12703, inlinedAt: !12675)
!13500 = !DILocation(line: 616, column: 49, scope: !12752, inlinedAt: !12760)
!13501 = !DILocation(line: 1032, column: 12, scope: !12755, inlinedAt: !12758)
!13502 = !DILocation(line: 1033, column: 22, scope: !12755, inlinedAt: !12758)
!13503 = !DILocation(line: 1032, column: 9, scope: !12755, inlinedAt: !12758)
!13504 = !DILocation(line: 611, column: 9, scope: !12761, inlinedAt: !12768)
!13505 = !DILocation(line: 971, column: 18, scope: !12769, inlinedAt: !12770)
!13506 = !DILocation(line: 1964, column: 41, scope: !12771, inlinedAt: !12773)
!13507 = !DILocation(line: 1038, column: 13, scope: !12772, inlinedAt: !12758)
!13508 = !DILocation(line: 549, column: 27, scope: !12655, inlinedAt: !12775)
!13509 = !DILocation(line: 90, column: 24, scope: !12777, inlinedAt: !12779)
!13510 = !DILocation(line: 0, scope: !13157, inlinedAt: !12582)
!13511 = !DILocation(line: 128, column: 14, scope: !12703, inlinedAt: !12675)
!13512 = !DILocation(line: 544, column: 12, scope: !12655, inlinedAt: !12782)
!13513 = !DILocation(line: 1029, column: 19, scope: !12754, inlinedAt: !12786)
!13514 = !DILocation(line: 616, column: 49, scope: !12752, inlinedAt: !12788)
!13515 = !DILocation(line: 1032, column: 12, scope: !12755, inlinedAt: !12786)
!13516 = !DILocation(line: 1033, column: 22, scope: !12755, inlinedAt: !12786)
!13517 = !DILocation(line: 1032, column: 9, scope: !12755, inlinedAt: !12786)
!13518 = !DILocation(line: 611, column: 9, scope: !12761, inlinedAt: !12792)
!13519 = !DILocation(line: 971, column: 18, scope: !12769, inlinedAt: !12793)
!13520 = !DILocation(line: 1964, column: 41, scope: !12771, inlinedAt: !12794)
!13521 = !DILocation(line: 1038, column: 13, scope: !12772, inlinedAt: !12786)
!13522 = !DILocation(line: 549, column: 27, scope: !12655, inlinedAt: !12796)
!13523 = !DILocation(line: 137, column: 9, scope: !12797, inlinedAt: !12798)
!13524 = !DILocation(line: 128, column: 20, scope: !12703, inlinedAt: !12675)
!13525 = !DILocation(line: 549, column: 27, scope: !12655, inlinedAt: !12782)
!13526 = !DILocation(line: 90, column: 24, scope: !12799, inlinedAt: !12801)
!13527 = !DILocation(line: 46, column: 9, scope: !12780, inlinedAt: !12582)
!13528 = !DILocation(line: 545, column: 13, scope: !12655, inlinedAt: !12782)
!13529 = !DILocation(line: 47, column: 31, scope: !12802, inlinedAt: !12582)
!13530 = !DILocation(line: 47, column: 44, scope: !12780, inlinedAt: !12582)
!13531 = !DILocation(line: 1163, column: 17, scope: !12807, inlinedAt: !12812)
!13532 = !DILocation(line: 1163, column: 17, scope: !12813, inlinedAt: !12814)
!13533 = !DILocation(line: 454, column: 20, scope: !12817, inlinedAt: !12826)
!13534 = !DILocation(line: 2513, column: 9, scope: !12819, inlinedAt: !12824)
!13535 = !DILocation(line: 1829, column: 9, scope: !12820, inlinedAt: !12823)
!13536 = !DILocation(line: 1829, column: 24, scope: !12820, inlinedAt: !12823)
!13537 = !DILocation(line: 435, column: 33, scope: !12821, inlinedAt: !12822)
!13538 = !DILocation(line: 1864, column: 86, scope: !12830, inlinedAt: !12835)
!13539 = !DILocation(line: 184, column: 12, scope: !12838, inlinedAt: !12841)
!13540 = !DILocation(line: 611, column: 9, scope: !12842, inlinedAt: !12849)
!13541 = !DILocation(line: 1331, column: 9, scope: !12850, inlinedAt: !12858)
!13542 = !DILocation(line: 1337, column: 9, scope: !12851, inlinedAt: !12857)
!13543 = !DILocation(line: 1284, column: 12, scope: !12852, inlinedAt: !12856)
!13544 = !DILocation(line: 1287, column: 42, scope: !12852, inlinedAt: !12856)
!13545 = !DILocation(line: 241, column: 18, scope: !12861, inlinedAt: !12862)
!13546 = !DILocation(line: 1217, column: 20, scope: !12865, inlinedAt: !12867)
!13547 = !DILocation(line: 1202, column: 18, scope: !12870, inlinedAt: !12871)
!13548 = !DILocation(line: 47, column: 20, scope: !12872, inlinedAt: !12875)
!13549 = !DILocation(line: 48, column: 13, scope: !12876, inlinedAt: !12875)
!13550 = !DILocation(line: 2452, column: 29, scope: !12877, inlinedAt: !12879)
!13551 = !DILocation(line: 2012, column: 9, scope: !12880, inlinedAt: !12874)
!13552 = !DILocation(line: 0, scope: !12878, inlinedAt: !12874)
!13553 = !DILocation(line: 971, column: 18, scope: !12881, inlinedAt: !12884)
!13554 = !DILocation(line: 574, column: 14, scope: !12887, inlinedAt: !12893)
!13555 = !DILocation(line: 920, column: 36, scope: !12894, inlinedAt: !12899)
!13556 = !DILocation(line: 1570, column: 9, scope: !12902, inlinedAt: !12904)
!13557 = !DILocation(line: 40, column: 32, scope: !12906, inlinedAt: !12910)
!13558 = !DILocation(line: 40, column: 16, scope: !12906, inlinedAt: !12910)
!13559 = !DILocation(line: 628, column: 21, scope: !12911, inlinedAt: !12914)
!13560 = !DILocation(line: 70, column: 13, scope: !12912, inlinedAt: !12913)
!13561 = !DILocation(line: 2032, column: 29, scope: !12915, inlinedAt: !12874)
!13562 = !DILocation(line: 1055, column: 47, scope: !12916, inlinedAt: !12924)
!13563 = !DILocation(line: 1055, column: 22, scope: !12916, inlinedAt: !12924)
!13564 = !DILocation(line: 1055, column: 22, scope: !12916, inlinedAt: !12929)
!13565 = !DILocation(line: 221, column: 16, scope: !12932, inlinedAt: !12933)
!13566 = !DILocation(line: 460, column: 8, scope: !12934, inlinedAt: !12935)
!13567 = !DILocation(line: 920, column: 36, scope: !12894, inlinedAt: !12940)
!13568 = !DILocation(line: 1570, column: 9, scope: !12902, inlinedAt: !12942)
!13569 = !DILocation(line: 460, column: 8, scope: !12934, inlinedAt: !12943)
!13570 = !DILocation(line: 486, column: 18, scope: !12944, inlinedAt: !12945)
!13571 = !DILocation(line: 28, column: 17, scope: !12946, inlinedAt: !12948)
!13572 = !DILocation(line: 89, column: 9, scope: !12949, inlinedAt: !12950)
!13573 = !DILocation(line: 90, column: 9, scope: !12949, inlinedAt: !12950)
!13574 = !DILocation(line: 1217, column: 9, scope: !12865, inlinedAt: !12867)
!13575 = !DILocation(line: 141, column: 5, scope: !12952, inlinedAt: !12960)
!13576 = !DILocation(line: 203, column: 9, scope: !12961, inlinedAt: !12967)
!13577 = !DILocation(line: 50, column: 21, scope: !12810, inlinedAt: !12582)
!13578 = !DILocation(line: 49, column: 17, scope: !12809, inlinedAt: !12582)
!13579 = !DILocation(line: 459, column: 9, scope: !12576, inlinedAt: !12577)
!13580 = !DILocation(line: 3105, column: 37, scope: !12968, inlinedAt: !12969)
!13581 = !DILocation(line: 3105, column: 18, scope: !12968, inlinedAt: !12969)
!13582 = !DILocation(line: 82, column: 17, scope: !12970, inlinedAt: !12972)
!13583 = !DILocation(line: 82, column: 9, scope: !12970, inlinedAt: !12972)
!13584 = !DILocation(line: 1029, column: 19, scope: !43, inlinedAt: !12977)
!13585 = !DILocation(line: 616, column: 49, scope: !44, inlinedAt: !12979)
!13586 = !DILocation(line: 1032, column: 12, scope: !46, inlinedAt: !12977)
!13587 = !DILocation(line: 1033, column: 22, scope: !46, inlinedAt: !12977)
!13588 = !DILocation(line: 1032, column: 9, scope: !46, inlinedAt: !12977)
!13589 = !DILocation(line: 413, column: 13, scope: !12521, inlinedAt: !12524)
!13590 = !DILocation(line: 611, column: 9, scope: !47, inlinedAt: !12983)
!13591 = !DILocation(line: 971, column: 18, scope: !51, inlinedAt: !12984)
!13592 = !DILocation(line: 1964, column: 41, scope: !52, inlinedAt: !12985)
!13593 = !DILocation(line: 1038, column: 13, scope: !53, inlinedAt: !12977)
!13594 = !DILocation(line: 855, column: 13, scope: !12473, inlinedAt: !12301)
!13595 = !DILocation(line: 0, scope: !12269, inlinedAt: !12271)
!13596 = !DILocation(line: 0, scope: !12299, inlinedAt: !12301)
!13597 = !DILocation(line: 845, column: 17, scope: !12473, inlinedAt: !12301)
!13598 = !DILocation(line: 580, column: 18, scope: !12270, inlinedAt: !12271)
!13599 = !DILocation(line: 1122, column: 16, scope: !12986, inlinedAt: !12992)
!13600 = !DILocation(line: 734, column: 18, scope: !12994, inlinedAt: !13009)
!13601 = !DILocation(line: 2959, column: 14, scope: !338, inlinedAt: !13011)
!13602 = !DILocation(line: 3100, column: 19, scope: !339, inlinedAt: !13015)
!13603 = !DILocation(line: 3105, column: 37, scope: !342, inlinedAt: !13015)
!13604 = !DILocation(line: 3105, column: 18, scope: !342, inlinedAt: !13015)
!13605 = !DILocation(line: 2980, column: 12, scope: !343, inlinedAt: !13014)
!13606 = !DILocation(line: 90, column: 24, scope: !13017, inlinedAt: !13018)
!13607 = !DILocation(line: 611, column: 9, scope: !344, inlinedAt: !13022)
!13608 = !DILocation(line: 971, column: 18, scope: !348, inlinedAt: !13023)
!13609 = !DILocation(line: 574, column: 14, scope: !349, inlinedAt: !13024)
!13610 = !DILocation(line: 2985, column: 9, scope: !343, inlinedAt: !13014)
!13611 = !DILocation(line: 2980, column: 9, scope: !343, inlinedAt: !13014)
!13612 = !DILocation(line: 2959, column: 14, scope: !338, inlinedAt: !13028)
!13613 = !DILocation(line: 3100, column: 19, scope: !339, inlinedAt: !13032)
!13614 = !DILocation(line: 3105, column: 37, scope: !342, inlinedAt: !13032)
!13615 = !DILocation(line: 3105, column: 18, scope: !342, inlinedAt: !13032)
!13616 = !DILocation(line: 2980, column: 12, scope: !343, inlinedAt: !13031)
!13617 = !DILocation(line: 611, column: 9, scope: !344, inlinedAt: !13036)
!13618 = !DILocation(line: 971, column: 18, scope: !348, inlinedAt: !13037)
!13619 = !DILocation(line: 574, column: 14, scope: !349, inlinedAt: !13038)
!13620 = !DILocation(line: 2985, column: 9, scope: !343, inlinedAt: !13031)
!13621 = !DILocation(line: 2980, column: 9, scope: !343, inlinedAt: !13031)
!13622 = !DILocation(line: 413, column: 13, scope: !12987, inlinedAt: !12991)
!13623 = !DILocation(line: 109, column: 6, scope: !12221)
!13624 = distinct !DISubprogram(name: "find_at", linkageName: "_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher7find_at", scope: !707, file: !648, line: 414, type: !443, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13625 = distinct !{!13625, i1 true, !"_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg"}
!13626 = distinct !{!13626, !13625, !"_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg: argument 0"}
!13627 = distinct !DISubprogram(name: "set_span<core::ops::range::Range<usize>>", linkageName: "_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg", scope: !710, file: !708, line: 424, type: !388, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13628 = distinct !DISubprogram(name: "span<core::ops::range::Range<usize>>", linkageName: "_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input4spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg", scope: !710, file: !708, line: 206, type: !388, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13629 = distinct !DILocation(line: 207, column: 14, scope: !13628, inlinedAt: !13733)
!13630 = distinct !DILexicalBlock(scope: !13627, file: !708, line: 425, column: 9)
!13631 = distinct !DILexicalBlock(scope: !13630, file: !13735, line: 61, column: 38)
!13632 = distinct !DILexicalBlock(scope: !13624, file: !648, line: 419, column: 9)
!13633 = distinct !DISubprogram(name: "find<regex_automata::util::search::Input>", linkageName: "_RINvMs_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex4findNtNtNtB9_4util6search5InputECs2NzvFoTxuAy_2rg", scope: !714, file: !711, line: 556, type: !388, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13634 = distinct !DISubprogram(name: "from<regex_automata::util::search::Input>", linkageName: "_RNvXs2_NtCskKLDkoKarTP_4core7convertNtNtNtCsgPiXjGfBJkm_14regex_automata4util6search5InputINtB5_4FromBy_E4fromCs2NzvFoTxuAy_2rg", scope: !13737, file: !456, line: 790, type: !388, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13635 = distinct !DISubprogram(name: "into<regex_automata::util::search::Input, regex_automata::util::search::Input>", linkageName: "_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCsgPiXjGfBJkm_14regex_automata4util6search5InputINtB5_4IntoBy_E4intoCs2NzvFoTxuAy_2rg", scope: !13740, file: !456, line: 779, type: !388, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13636 = distinct !{!13636, i1 true, !"_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search"}
!13637 = distinct !{!13637, !13636, !"_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search: argument 0"}
!13638 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<regex_automata::meta::regex::RegexInfoI>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex10RegexInfoIEE6as_refCs2NzvFoTxuAy_2rg", scope: !495, file: !468, line: 450, type: !388, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13639 = distinct !DISubprogram(name: "inner<regex_automata::meta::regex::RegexInfoI, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex10RegexInfoIE5innerCs2NzvFoTxuAy_2rg", scope: !561, file: !557, line: 2186, type: !388, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13640 = distinct !DISubprogram(name: "deref<regex_automata::meta::regex::RegexInfoI, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex10RegexInfoIENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !655, file: !557, line: 2512, type: !388, scopeLine: 2512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13641 = distinct !DISubprogram(name: "config", linkageName: "_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo6config", scope: !715, file: !711, line: 1951, type: !388, scopeLine: 1951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13642 = distinct !DISubprogram(name: "captures_disabled", linkageName: "_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo17captures_disabled", scope: !715, file: !711, line: 2010, type: !388, scopeLine: 2010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13643 = distinct !DILexicalBlock(scope: !13642, file: !569, line: 434, column: 9)
!13644 = distinct !DISubprogram(name: "search", linkageName: "_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search", scope: !714, file: !711, line: 919, type: !443, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13645 = distinct !DILocation(line: 557, column: 14, scope: !13633, inlinedAt: !13736)
!13646 = distinct !DILocation(line: 920, column: 26, scope: !13644, inlinedAt: !13645)
!13647 = distinct !DILocation(line: 2011, column: 23, scope: !13744, inlinedAt: !13646)
!13648 = distinct !DILocation(line: 1952, column: 10, scope: !13641, inlinedAt: !13647)
!13649 = distinct !DILocation(line: 2513, column: 15, scope: !13743, inlinedAt: !13648)
!13650 = distinct !DILocation(line: 2192, column: 27, scope: !13742, inlinedAt: !13649)
!13651 = distinct !{!13651, !13636, !"_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search: argument 1"}
!13652 = distinct !DISubprogram(name: "get_which_captures", linkageName: "_RNvMsi_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_6Config18get_which_captures", scope: !716, file: !711, line: 3131, type: !388, scopeLine: 3131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13653 = distinct !DILocation(line: 2011, column: 32, scope: !13744, inlinedAt: !13646)
!13654 = distinct !DISubprogram(name: "unwrap_or<regex_automata::nfa::thompson::compiler::WhichCaptures>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson8compiler13WhichCapturesE9unwrap_orCs2NzvFoTxuAy_2rg", scope: !424, file: !421, line: 1038, type: !388, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13655 = distinct !DILocation(line: 3132, column: 29, scope: !13652, inlinedAt: !13653)
!13656 = distinct !DILocation(line: 921, column: 30, scope: !13644, inlinedAt: !13645)
!13657 = distinct !{!13657, i1 true, !"_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible"}
!13658 = distinct !{!13658, !13657, !"_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 1"}
!13659 = distinct !{!13659, !13657, !"_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible: argument 0"}
!13660 = distinct !DILocation(line: 2030, column: 38, scope: !356, inlinedAt: !13656)
!13661 = distinct !DILocation(line: 1989, column: 28, scope: !358, inlinedAt: !13660)
!13662 = distinct !DILocation(line: 1989, column: 46, scope: !358, inlinedAt: !13660)
!13663 = distinct !DILocation(line: 2041, column: 47, scope: !356, inlinedAt: !13656)
!13664 = distinct !DILocation(line: 2045, column: 29, scope: !363, inlinedAt: !13656)
!13665 = distinct !DILocation(line: 832, column: 18, scope: !362, inlinedAt: !13664)
!13666 = distinct !DILocation(line: 2055, column: 17, scope: !363, inlinedAt: !13656)
!13667 = distinct !DILocation(line: 1980, column: 52, scope: !364, inlinedAt: !13666)
!13668 = distinct !DILocation(line: 1989, column: 28, scope: !724, inlinedAt: !13667)
!13669 = distinct !DILocation(line: 1989, column: 46, scope: !724, inlinedAt: !13667)
!13670 = distinct !DILocation(line: 2055, column: 50, scope: !363, inlinedAt: !13656)
!13671 = distinct !DILocation(line: 1998, column: 28, scope: !725, inlinedAt: !13670)
!13672 = distinct !DILocation(line: 1998, column: 46, scope: !725, inlinedAt: !13670)
!13673 = distinct !DILocation(line: 2056, column: 51, scope: !363, inlinedAt: !13656)
!13674 = distinct !{!13674, i1 true, !"_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg"}
!13675 = distinct !{!13675, !13674, !"_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg: argument 0"}
!13676 = distinct !DISubprogram(name: "get<regex_automata::meta::regex::Cache, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::meta::regex::Cache> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>", linkageName: "_RNvMs_NtNtCsgPiXjGfBJkm_14regex_automata4util4poolINtB4_4PoolNtNtNtB8_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputBX_NtNtNtB24_5panic11unwind_safe13RefUnwindSafeNtNtB24_6marker4SendNtB3A_4SyncNtB2S_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg", scope: !506, file: !502, line: 181, type: !388, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13677 = distinct !DILocation(line: 925, column: 35, scope: !13644, inlinedAt: !13645)
!13678 = distinct !DILocation(line: 182, column: 26, scope: !13676, inlinedAt: !13677)
!13679 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs2NzvFoTxuAy_2rg", scope: !511, file: !509, line: 2434, type: !388, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13680 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !413, file: !410, line: 3695, type: !388, scopeLine: 3695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13681 = distinct !DILocation(line: 525, column: 36, scope: !371, inlinedAt: !13678)
!13682 = distinct !DILocation(line: 2921, column: 70, scope: !370, inlinedAt: !13681)
!13683 = distinct !DILocation(line: 3696, column: 24, scope: !13680, inlinedAt: !13682)
!13684 = distinct !DILocation(line: 2921, column: 26, scope: !370, inlinedAt: !13681)
!13685 = distinct !DILocation(line: 530, column: 28, scope: !372, inlinedAt: !13678)
!13686 = distinct !DILocation(line: 2951, column: 26, scope: !373, inlinedAt: !13685)
!13687 = distinct !DILocation(line: 531, column: 29, scope: !372, inlinedAt: !13678)
!13688 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn regex_automata::meta::strategy::Strategy>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerDNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8strategy8StrategyEL_EE6as_refCs2NzvFoTxuAy_2rg", scope: !495, file: !468, line: 450, type: !388, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13689 = distinct !DISubprogram(name: "inner<dyn regex_automata::meta::strategy::Strategy, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8strategy8StrategyEL_E5innerCs2NzvFoTxuAy_2rg", scope: !561, file: !557, line: 2186, type: !388, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13690 = distinct !DISubprogram(name: "deref<dyn regex_automata::meta::strategy::Strategy, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8strategy8StrategyEL_ENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !655, file: !557, line: 2512, type: !388, scopeLine: 2512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13691 = distinct !DILexicalBlock(scope: !13644, file: !711, line: 925, column: 9)
!13692 = distinct !DILocation(line: 926, column: 22, scope: !13750, inlinedAt: !13645)
!13693 = distinct !DILocation(line: 2513, column: 15, scope: !13749, inlinedAt: !13692)
!13694 = distinct !DILocation(line: 2192, column: 27, scope: !13748, inlinedAt: !13693)
!13695 = distinct !DISubprogram(name: "value_mut<regex_automata::meta::regex::Cache, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::meta::regex::Cache> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE9value_mutCs2NzvFoTxuAy_2rg", scope: !514, file: !502, line: 704, type: !388, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13696 = distinct !DISubprogram(name: "deref_mut<regex_automata::meta::regex::Cache, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::meta::regex::Cache> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>", linkageName: "_RNvXs3_NtNtCsgPiXjGfBJkm_14regex_automata4util4poolINtB5_9PoolGuardNtNtNtB9_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB13_NtNtNtB2a_5panic11unwind_safe13RefUnwindSafeNtNtB2a_6marker4SendNtB3H_4SyncNtB2Z_10UnwindSafeEL_EENtNtB28_5deref8DerefMut9deref_mutCs2NzvFoTxuAy_2rg", scope: !515, file: !502, line: 221, type: !388, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13697 = distinct !DILocation(line: 926, column: 44, scope: !13691, inlinedAt: !13645)
!13698 = distinct !DILocation(line: 222, column: 16, scope: !13696, inlinedAt: !13697)
!13699 = distinct !DILexicalBlock(scope: !13695, file: !502, line: 716, column: 17)
!13700 = distinct !DISubprogram(name: "get<core::option::Option<regex_automata::meta::regex::Cache>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtB7_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEE3getCs2NzvFoTxuAy_2rg", scope: !511, file: !509, line: 2434, type: !388, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13701 = distinct !DILocation(line: 722, column: 43, scope: !13699, inlinedAt: !13698)
!13702 = distinct !DILexicalBlock(scope: !13695, file: !502, line: 706, column: 17)
!13703 = distinct !DILexicalBlock(scope: !13691, file: !711, line: 926, column: 9)
!13704 = distinct !DISubprogram(name: "put<regex_automata::meta::regex::Cache, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::meta::regex::Cache> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE3putCs2NzvFoTxuAy_2rg", scope: !514, file: !502, line: 729, type: !388, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13705 = distinct !DILexicalBlock(scope: !13704, file: !502, line: 735, column: 13)
!13706 = distinct !DISubprogram(name: "put<regex_automata::meta::regex::Cache, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::meta::regex::Cache> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>", linkageName: "_RNvMs1_NtNtCsgPiXjGfBJkm_14regex_automata4util4poolINtB5_9PoolGuardNtNtNtB9_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB13_NtNtNtB2a_5panic11unwind_safe13RefUnwindSafeNtNtB2a_6marker4SendNtB3H_4SyncNtB2Z_10UnwindSafeEL_EE3putCs2NzvFoTxuAy_2rg", scope: !726, file: !502, line: 205, type: !388, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !387)
!13707 = distinct !DILocation(line: 945, column: 9, scope: !13703, inlinedAt: !13645)
!13708 = distinct !DILocation(line: 206, column: 9, scope: !13706, inlinedAt: !13707)
!13709 = distinct !DILocation(line: 736, column: 18, scope: !13705, inlinedAt: !13708)
!13710 = distinct !DILocation(line: 743, column: 19, scope: !154, inlinedAt: !13709)
!13711 = distinct !{!13711, i1 true, !"_RNvMs4_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE7put_impCs2NzvFoTxuAy_2rg"}
!13712 = distinct !{!13712, !13711, !"_RNvMs4_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE7put_impCs2NzvFoTxuAy_2rg: argument 0"}
!13713 = distinct !DILocation(line: 754, column: 17, scope: !154, inlinedAt: !13709)
!13714 = distinct !DILocation(line: 848, column: 1, scope: !132, inlinedAt: !13713)
!13715 = distinct !DILocation(line: 1992, column: 24, scope: !135, inlinedAt: !13714)
!13716 = distinct !DILocation(line: 554, column: 23, scope: !13, inlinedAt: !13715)
!13717 = distinct !DILocation(line: 436, column: 9, scope: !12, inlinedAt: !13716)
!13718 = distinct !DILocation(line: 321, column: 22, scope: !11, inlinedAt: !13717)
!13719 = distinct !DILocation(line: 848, column: 1, scope: !132, inlinedAt: !13713)
!13720 = distinct !DILocation(line: 1992, column: 24, scope: !135, inlinedAt: !13719)
!13721 = distinct !DILocation(line: 554, column: 23, scope: !13, inlinedAt: !13720)
!13722 = distinct !DILocation(line: 436, column: 9, scope: !12, inlinedAt: !13721)
!13723 = distinct !DILocation(line: 321, column: 22, scope: !11, inlinedAt: !13722)
!13724 = distinct !DILocation(line: 770, column: 37, scope: !155, inlinedAt: !13709)
end_hunk_1
