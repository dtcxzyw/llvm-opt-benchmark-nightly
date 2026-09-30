Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.09?download=true
inline.NumInlined: 430
inline.NumDeleted: 171
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10317
  store i64 %i.dt, ptr %i.du, align 8, !dbg !10317
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10317
  store i64 %i.dt, ptr %i.dv, align 8, !dbg !10317
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10327

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8, !dbg !10328
  ret void, !dbg !10329

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !10320
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !10320, !nonnull !294, !noundef !294
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10330
  %i.dz = load i8, ptr %i.dy, align 8, !dbg !10330, !noundef !294 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de, !dbg !10331   ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de, !dbg !10332 ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16, !dbg !10333
  br i1 %i.ec, label %.lr.ph.i, label %bb.u, !dbg !10333

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea), !dbg !10334 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0, !dbg !10334
  %i.ef = extractvalue { i64, i64 } %i.ed, 1, !dbg !10334
  %i.eg = trunc nuw i64 %i.ee to i1, !dbg !10335
  br i1 %i.eg, label %.loopexit43, label %.loopexit44, !dbg !10335

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i, !dbg !10336
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !10336, !alias.scope !10225, !noundef !294
  %i.ej = icmp eq i8 %i.ei, %i.dz, !dbg !10336
  br i1 %i.ej, label %.loopexit43, label %bb.v, !dbg !10336

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1, !dbg !10337 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea, !dbg !10338
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i, !dbg !10338

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ], !dbg !10339 ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea, !dbg !10340
  tail call void @llvm.assume(i1 %i.el), !dbg !10341
  %i.em = add i64 %.sroa.5.0.i, %i.de, !dbg !10342 ; 2 uses
  %i.en = add i64 %i.em, 1, !dbg !10343           ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8, !dbg !10343
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10344
  store i64 %i.em, ptr %i.eo, align 8, !dbg !10344
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10344
  store i64 %i.en, ptr %i.ep, align 8, !dbg !10344
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10345

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8, !dbg !10346
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10347

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10226), !dbg !10348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10227), !dbg !10348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10228), !dbg !10348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10229), !dbg !10348
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !10227, !noalias !10230 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds, !dbg !10349 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm, !dbg !10350
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i, !dbg !10350

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !10227, !noalias !10230, !noundef !294
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !10227, !noalias !10230 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !10227, !noalias !10230 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu, !dbg !10351
  br label %.lr.ph.split.i, !dbg !10351

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !10352, !alias.scope !10227, !noalias !10230
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10353

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez, !dbg !10354
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !10355, !alias.scope !10228, !noalias !10233, !noundef !294
  %i.fd = and i8 %i.fc, 63, !dbg !10356
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !10357
  %i.ff = shl nuw i64 1, %i.fe, !dbg !10358
  %i.fg = and i64 %i.ff, %i.et, !dbg !10358
  %.not.i9 = icmp eq i64 %i.fg, 0, !dbg !10358
  br i1 %.not.i9, label %bb.x, label %bb.y, !dbg !10351

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq, !dbg !10359
  br label %bb.z, !dbg !10360

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %i.eu), !dbg !10361 ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq, !dbg !10362
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !10363

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !dbg !10364, !alias.scope !10227, !noalias !10230
  store i64 %.sink70.i, ptr %i.dg, align 8, !dbg !10364, !alias.scope !10227, !noalias !10230
  %i.fj = add i64 %.sink71.i, %i.ds, !dbg !10349  ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm, !dbg !10350
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i, !dbg !10350

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1, !dbg !10365 ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq, !dbg !10362
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !10363

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %i.eu, !dbg !10366
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11, !dbg !10367

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305, !dbg !10368
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !10368, !alias.scope !10229, !noalias !10247, !noundef !294
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa, !dbg !10369 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm, !dbg !10370
  tail call void @llvm.assume(i1 %i.fr), !dbg !10371
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq, !dbg !10372
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !10373, !alias.scope !10228, !noalias !10233, !noundef !294
  %.not21.i = icmp eq i8 %i.fp, %i.ft, !dbg !10368
  br i1 %.not21.i, label %bb.aa, label %bb.ad, !dbg !10368

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy, !dbg !10366
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11, !dbg !10367

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq, !dbg !10374       ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !dbg !10374, !alias.scope !10227, !noalias !10230
  store i64 0, ptr %i.dg, align 8, !dbg !10375, !alias.scope !10227, !noalias !10230
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10376
  store i64 %i.fa, ptr %i.fw, align 8, !dbg !10376, !alias.scope !10249, !noalias !10250
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10376
  store i64 %i.fv, ptr %i.fx, align 8, !dbg !10376, !alias.scope !10249, !noalias !10250
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10377

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1, !dbg !10378 ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq, !dbg !10379
  br i1 %i.fz, label %bb.ab, label %.split32.us.i, !dbg !10379

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy, !dbg !10379
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !10379, !alias.scope !10229, !noalias !10247, !noundef !294
  %i.gc = add i64 %i.fy, %i.fa, !dbg !10380       ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm, !dbg !10381
  tail call void @llvm.assume(i1 %i.gd), !dbg !10382
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc, !dbg !10383
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !10384, !alias.scope !10228, !noalias !10233, !noundef !294
  %.not20.i = icmp eq i8 %i.gb, %i.gf, !dbg !10379
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac, !dbg !10379

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !dbg !10379, !noalias !10253
  unreachable, !dbg !10379

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew, !dbg !10385
  br label %bb.z, !dbg !10386

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305, !dbg !10387
  br label %bb.z, !dbg !10388

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10254), !dbg !10389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10255), !dbg !10389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10256), !dbg !10389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10257), !dbg !10389
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !10255, !noalias !10258 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds, !dbg !10390 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm, !dbg !10391
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13, !dbg !10391

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !10255, !noalias !10258, !noundef !294
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !10255, !noalias !10258
  %.fr215 = freeze i64 %i.gm, !dbg !10392         ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !10255, !noalias !10258
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq), !dbg !10392
  %i.gp = add i64 %.fr215, -1, !dbg !10392        ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215, !dbg !10392
  %.not34.i.us313 = icmp eq i64 %.fr215, 0
  br label %.lr.ph.split.us.i, !dbg !10392

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq, !dbg !10393
  %i.gt = load i8, ptr %i.gs, align 1, !dbg !10394, !alias.scope !10256, !noalias !10259, !noundef !294
  %i.gu = and i8 %i.gt, 63, !dbg !10395
  %i.gv = zext nneg i8 %i.gu to i64, !dbg !10396
  %i.gw = shl nuw i64 1, %i.gv, !dbg !10397
  %i.gx = and i64 %i.gw, %i.gl, !dbg !10397
  %.not.us.i = icmp eq i64 %i.gx, 0, !dbg !10397
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader, !dbg !10392

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader, !dbg !10398

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1, !dbg !10399 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i, !dbg !10400
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312, !dbg !10398

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.preheader.i19.us.preheader

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.first_iter.i16, label %.lr.ph315, label %.split32.us.i20, !dbg !10401

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0, !dbg !10402
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315, !dbg !10401

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1, !dbg !10403 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz, !dbg !10404
  %i.hb = load i8, ptr %i.ha, align 1, !dbg !10404, !alias.scope !10257, !noalias !10260, !noundef !294
  %i.hc = add i64 %i.gz, %i.gr, !dbg !10405       ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm, !dbg !10406
  tail call void @llvm.assume(i1 %i.hd), !dbg !10407
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc, !dbg !10408
  %i.hf = load i8, ptr %i.he, align 1, !dbg !10409, !alias.scope !10256, !noalias !10259, !noundef !294
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf, !dbg !10404
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us, !dbg !10404

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go, !dbg !10410
  br label %bb.ah, !dbg !10411

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311, !dbg !10412
  %i.hi = load i8, ptr %i.hh, align 1, !dbg !10412, !alias.scope !10257, !noalias !10260, !noundef !294
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr, !dbg !10413 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm, !dbg !10414
  tail call void @llvm.assume(i1 %i.hk), !dbg !10415
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj, !dbg !10416
  %i.hm = load i8, ptr %i.hl, align 1, !dbg !10417, !alias.scope !10256, !noalias !10259, !noundef !294
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm, !dbg !10412
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af, !dbg !10412

.split32.us.i20:                                  ; preds = %.preheader.i19.us.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !dbg !10404, !noalias !10261
  unreachable, !dbg !10404

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311, !dbg !10418
  br label %bb.ah, !dbg !10419

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq, !dbg !10420
  br label %bb.ah, !dbg !10421

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !dbg !10422, !alias.scope !10255, !noalias !10258
  %i.hp = add i64 %.sink.i18, %i.ds, !dbg !10390  ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm, !dbg !10391
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13, !dbg !10391

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !10423, !alias.scope !10255, !noalias !10258
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10424

.split.us.i21:                                    ; preds = %.preheader.i19.preheader, %.preheader.i19.us
  %i.hr = add i64 %i.gr, %i.dq, !dbg !10425       ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !dbg !10425, !alias.scope !10255, !noalias !10258
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10426
  store i64 %i.gr, ptr %i.hs, align 8, !dbg !10426, !alias.scope !10262, !noalias !10263
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10426
  store i64 %i.hr, ptr %i.ht, align 8, !dbg !10426, !alias.scope !10262, !noalias !10263
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10427
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag11doc_choices(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10428 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 24) acquire, align 8, !dbg !10453
  %i.d = icmp eq i32 %i.c, 0, !dbg !10454
  br i1 %i.d, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !10455, !prof !480

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10456
  store ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, ptr %i.b, align 8, !dbg !10457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10458
  store ptr %i.b, ptr %i.a, align 8, !dbg !10458
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !10459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10461
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg.exit, !dbg !10461

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 8), align 8, !dbg !10462, !nonnull !294, !noundef !294
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 16), align 8, !dbg !10463, !noundef !294
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !10464
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1, !dbg !10464
  ret { ptr, i64 } %i.h, !dbg !10464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !10465 {
bb.a:
  ret i8 3, !dbg !10466
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !10467 {
bb.a:
  ret { ptr, i64 } { ptr @743, i64 6 }, !dbg !10468
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(608) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10469 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10532
  call void @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue12unwrap_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !10533
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10534
  %i.f = load ptr, ptr %i.e, align 8, !dbg !10534, !nonnull !294, !noundef !294
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !10535
  %i.h = load i64, ptr %i.g, align 8, !dbg !10535, !noundef !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10536, !noalias !10521
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %.noexc unwind label %bb.d, !dbg !10537

.noexc:                                           ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !dbg !10538, !range !389, !noalias !10521, !noundef !294
  %i.j = trunc nuw i64 %i.i to i1, !dbg !10539
  br i1 %i.j, label %bb.b, label %bb.e, !dbg !10539, !prof !375

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10540, !noalias !10521
  %i.k = invoke noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 24)
          to label %bb.o unwind label %bb.d, !dbg !10541

bb.c:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.r, !dbg !10527

bb.d:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10542
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10542, !noalias !10521, !nonnull !294, !noundef !294
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10542
  %i.p = load i64, ptr %i.o, align 8, !dbg !10542, !noalias !10521, !noundef !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10540, !noalias !10521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10543
  invoke void @_RNvXs0_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB5_15HyperlinkFormatNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.f unwind label %bb.d, !dbg !10544

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !10523), !dbg !10545
  call void @llvm.experimental.noalias.scope.decl(metadata !10524), !dbg !10545
  %i.q = load i64, ptr %i.c, align 8, !dbg !10546, !range !443, !alias.scope !10524, !noalias !10523, !noundef !294 ; 3 uses
  %i.r = icmp eq i64 %i.q, -1, !dbg !10546
  br i1 %i.r, label %bb.g, label %bb.i, !dbg !10547

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10548, !noalias !10525
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !10548, !noalias !10523
  %i.t = invoke noundef nonnull ptr @_RINvXNtNtCseNfSUspcXaQ_6anyhow7context3extNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtB3_8StdError11ext_contextReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 24)
          to label %bb.h unwind label %bb.d, !dbg !10549

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10550, !noalias !10525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10551
  br label %bb.o, !dbg !10552

bb.i:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10553
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10553, !alias.scope !10525 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false), !dbg !10553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10551
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 320, !dbg !10554 ; 5 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.j, !dbg !10555

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.body unwind label %bb.k, !dbg !10556

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10555
  unreachable, !dbg !10555

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit unwind label %bb.l, !dbg !10557

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !10554

.body:                                            ; preds = %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.v, %bb.j ]
  store i64 %i.q, ptr %i.u, align 8, !dbg !10554
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 328, !dbg !10554
  store ptr %.sroa.7.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !10554
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 336, !dbg !10554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !dbg !10554
  br label %bb.c, !dbg !10558

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i
  store i64 %i.q, ptr %i.u, align 8, !dbg !10554
  %.sroa.3.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %2, i64 328, !dbg !10554
  store ptr %.sroa.7.0.copyload, ptr %.sroa.3.0..sroa_idx10, align 8, !dbg !10554
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %2, i64 336, !dbg !10554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !dbg !10554
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit22 unwind label %bb.m, !dbg !10559

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.n, !dbg !10560

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10559
  unreachable, !dbg !10559

common.resume:                                    ; preds = %bb.c, %bb.p, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.y, %bb.m ], [ %.pn, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !10561

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit22: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit, %bb.o
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.o ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit ], !dbg !10531
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !10562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10527
  ret ptr %.sroa.0.0, !dbg !10563

bb.o:                                             ; preds = %bb.b, %bb.h
  %.sroa.0.1 = phi ptr [ %i.t, %bb.h ], [ %i.k, %bb.b ], !dbg !10564
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit22 unwind label %bb.p, !dbg !10565

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.q, !dbg !10566

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
