Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.11?download=true
inline.NumInlined: 463
inline.NumDeleted: 173
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12254), !dbg !12295
  br i1 %i.bh, label %bb.m, label %bb.k, !dbg !12297

bb.k:                                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us, !dbg !12298

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161, !dbg !12300

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !dbg !12301, !alias.scope !12246, !noalias !12255, !noundef !306
  %i.bw = icmp sgt i8 %i.bv, -65, !dbg !12302
  br i1 %i.bw, label %bb.m, label %.split.us161, !dbg !12300

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n, !dbg !12305

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !dbg !12306, !noalias !12256, !noundef !306 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !12307
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us, !dbg !12307

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31, !dbg !12309
  %i.ca = zext nneg i8 %i.bz to i32, !dbg !12309  ; 3 uses
  tail call void @llvm.assume(i1 %i.bo), !dbg !12311
  %i.cb = load i8, ptr %i.bm, align 1, !dbg !12312, !noalias !12256, !noundef !306
  %i.cc = shl nuw nsw i32 %i.ca, 6, !dbg !12313
  %i.cd = and i8 %i.cb, 63, !dbg !12314
  %i.ce = zext nneg i8 %i.cd to i32, !dbg !12314  ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce, !dbg !12313
  %i.cg = icmp samesign ugt i8 %i.bx, -33, !dbg !12315
  br i1 %i.cg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us, label %.loopexit42.split.us.loopexit, !dbg !12315

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br), !dbg !12318
  %i.ch = load i8, ptr %i.bp, align 1, !dbg !12319, !noalias !12256, !noundef !306
  %i.ci = shl nuw nsw i32 %i.ce, 6, !dbg !12320
  %i.cj = and i8 %i.ch, 63, !dbg !12321
  %i.ck = zext nneg i8 %i.cj to i32, !dbg !12321
  %i.cl = or disjoint i32 %i.ci, %i.ck, !dbg !12320 ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12, !dbg !12322
  %i.cn = or disjoint i32 %i.cl, %i.cm, !dbg !12323
  %i.co = icmp samesign ugt i8 %i.bx, -17, !dbg !12324
  br i1 %i.co, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us, label %.loopexit42.split.us.loopexit, !dbg !12324

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu), !dbg !12327
  %i.cp = load i8, ptr %i.bs, align 1, !dbg !12328, !noalias !12256, !noundef !306
  %i.cq = shl nuw nsw i32 %i.ca, 18, !dbg !12329
  %i.cr = and i32 %i.cq, 1835008, !dbg !12329
  %i.cs = shl nuw nsw i32 %i.cl, 6, !dbg !12330
  %i.ct = and i8 %i.cp, 63, !dbg !12331
  %i.cu = zext nneg i8 %i.ct to i32, !dbg !12331
  %i.cv = or disjoint i32 %i.cs, %i.cu, !dbg !12330
  %i.cw = or disjoint i32 %i.cv, %i.cr, !dbg !12332
  br label %.loopexit42.split.us.loopexit, !dbg !12333

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32, !dbg !12334
  br label %.loopexit42.split.us.loopexit, !dbg !12335

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112, !dbg !12336
  tail call void @llvm.assume(i1 %i.cy), !dbg !12336
  br label %.loopexit42.split.us, !dbg !12343

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !dbg !12343, !alias.scope !12254
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @672) #23, !dbg !12344, !noalias !12255
  unreachable, !dbg !12344

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !dbg !12343, !alias.scope !12254
  br i1 %i.k, label %bb.s, label %bb.p, !dbg !12337

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !dbg !12343, !alias.scope !12254
  br label %bb.s, !dbg !12345

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !dbg !12346, !alias.scope !12254
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12347

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !12348
  %i.dc = load i64, ptr %i.db, align 8, !dbg !12348, !noundef !306 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12349 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !12349, !noundef !306 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc, !dbg !12349
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12349

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12350 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !12351 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !12351, !noundef !306 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1, !dbg !12351
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !12258
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !12258, !nonnull !306, !noundef !306 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !12258
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !12258, !noundef !306 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !12258
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !12258, !nonnull !306, !noundef !306 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !12258
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !12258, !noundef !306 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !12352 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1, !dbg !12353      ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w, !dbg !12354

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !dbg !12343, !alias.scope !12254
  br label %bb.s, !dbg !12337

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12345
  store i64 %i.dt, ptr %i.du, align 8, !dbg !12345
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12345
  store i64 %i.dt, ptr %i.dv, align 8, !dbg !12345
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12355

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8, !dbg !12356
  ret void, !dbg !12357

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !12348
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !12348, !nonnull !306, !noundef !306
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12358
  %i.dz = load i8, ptr %i.dy, align 8, !dbg !12358, !noundef !306 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de, !dbg !12359   ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de, !dbg !12360 ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16, !dbg !12361
  br i1 %i.ec, label %.lr.ph.i, label %bb.u, !dbg !12361

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea), !dbg !12362 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0, !dbg !12362
  %i.ef = extractvalue { i64, i64 } %i.ed, 1, !dbg !12362
  %i.eg = trunc nuw i64 %i.ee to i1, !dbg !12363
  br i1 %i.eg, label %.loopexit43, label %.loopexit44, !dbg !12363

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i, !dbg !12364
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !12364, !alias.scope !12263, !noundef !306
  %i.ej = icmp eq i8 %i.ei, %i.dz, !dbg !12364
  br i1 %i.ej, label %.loopexit43, label %bb.v, !dbg !12364

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1, !dbg !12365 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea, !dbg !12366
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i, !dbg !12366

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ], !dbg !12367 ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea, !dbg !12368
  tail call void @llvm.assume(i1 %i.el), !dbg !12369
  %i.em = add i64 %.sroa.5.0.i, %i.de, !dbg !12370 ; 2 uses
  %i.en = add i64 %i.em, 1, !dbg !12371           ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8, !dbg !12371
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12372
  store i64 %i.em, ptr %i.eo, align 8, !dbg !12372
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12372
  store i64 %i.en, ptr %i.ep, align 8, !dbg !12372
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12373

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8, !dbg !12374
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12375

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12264), !dbg !12376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12265), !dbg !12376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12266), !dbg !12376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12267), !dbg !12376
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !12265 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds, !dbg !12377 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm, !dbg !12378
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i, !dbg !12378

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !12265, !noundef !306
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !12265 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !12265 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu, !dbg !12379
  br label %.lr.ph.split.i, !dbg !12379

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !12380, !alias.scope !12265
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12381

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez, !dbg !12382
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !12383, !alias.scope !12266, !noundef !306
  %i.fd = and i8 %i.fc, 63, !dbg !12384
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !12385
  %i.ff = shl nuw i64 1, %i.fe, !dbg !12386
  %i.fg = and i64 %i.ff, %i.et, !dbg !12386
  %.not.i9 = icmp eq i64 %i.fg, 0, !dbg !12386
  br i1 %.not.i9, label %bb.x, label %bb.y, !dbg !12379

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq, !dbg !12387
  br label %bb.z, !dbg !12388

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %i.eu), !dbg !12389 ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq, !dbg !12390
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !12391

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !dbg !12392, !alias.scope !12265
  store i64 %.sink70.i, ptr %i.dg, align 8, !dbg !12392, !alias.scope !12265
  %i.fj = add i64 %.sink71.i, %i.ds, !dbg !12377  ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm, !dbg !12378
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i, !dbg !12378

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1, !dbg !12393 ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq, !dbg !12390
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !12391

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %i.eu, !dbg !12394
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11, !dbg !12395

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305, !dbg !12396
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !12396, !alias.scope !12267, !noundef !306
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa, !dbg !12397 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm, !dbg !12398
  tail call void @llvm.assume(i1 %i.fr), !dbg !12399
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq, !dbg !12400
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !12401, !alias.scope !12266, !noundef !306
  %.not21.i = icmp eq i8 %i.fp, %i.ft, !dbg !12396
  br i1 %.not21.i, label %bb.aa, label %bb.ad, !dbg !12396

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy, !dbg !12394
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11, !dbg !12395

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq, !dbg !12402       ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !dbg !12402, !alias.scope !12265
  store i64 0, ptr %i.dg, align 8, !dbg !12403, !alias.scope !12265
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12404
  store i64 %i.fa, ptr %i.fw, align 8, !dbg !12404, !alias.scope !12282
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12404
  store i64 %i.fv, ptr %i.fx, align 8, !dbg !12404, !alias.scope !12282
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12405

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1, !dbg !12406 ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq, !dbg !12407
  br i1 %i.fz, label %bb.ab, label %.split32.us.i, !dbg !12407

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy, !dbg !12407
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !12407, !alias.scope !12267, !noundef !306
  %i.gc = add i64 %i.fy, %i.fa, !dbg !12408       ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm, !dbg !12409
  tail call void @llvm.assume(i1 %i.gd), !dbg !12410
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc, !dbg !12411
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !12412, !alias.scope !12266, !noundef !306
  %.not20.i = icmp eq i8 %i.gb, %i.gf, !dbg !12407
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac, !dbg !12407

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !dbg !12407, !noalias !12285
  unreachable, !dbg !12407

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew, !dbg !12413
  br label %bb.z, !dbg !12414

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305, !dbg !12415
  br label %bb.z, !dbg !12416

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12286), !dbg !12417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12287), !dbg !12417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12288), !dbg !12417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12289), !dbg !12417
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !12287 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds, !dbg !12418 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm, !dbg !12419
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13, !dbg !12419

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !12287, !noundef !306
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !12287
  %.fr215 = freeze i64 %i.gm, !dbg !12420         ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !12287
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq), !dbg !12420
  %i.gp = add i64 %.fr215, -1, !dbg !12420        ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215, !dbg !12420
  %.not34.i.us313 = icmp eq i64 %.fr215, 0        ; 2 uses
  br label %.lr.ph.split.us.i, !dbg !12420

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq, !dbg !12421
  %i.gt = load i8, ptr %i.gs, align 1, !dbg !12422, !alias.scope !12288, !noundef !306
  %i.gu = and i8 %i.gt, 63, !dbg !12423
  %i.gv = zext nneg i8 %i.gu to i64, !dbg !12424
  %i.gw = shl nuw i64 1, %i.gv, !dbg !12425
  %i.gx = and i64 %i.gw, %i.gl, !dbg !12425
  %.not.us.i = icmp eq i64 %i.gx, 0, !dbg !12425
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader, !dbg !12420

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader, !dbg !12426

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1, !dbg !12427 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i, !dbg !12428
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312, !dbg !12426

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.i19

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315, !dbg !12429

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0, !dbg !12430
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315, !dbg !12429

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1, !dbg !12431 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz, !dbg !12432
  %i.hb = load i8, ptr %i.ha, align 1, !dbg !12432, !alias.scope !12289, !noundef !306
  %i.hc = add i64 %i.gz, %i.gr, !dbg !12433       ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm, !dbg !12434
  tail call void @llvm.assume(i1 %i.hd), !dbg !12435
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc, !dbg !12436
  %i.hf = load i8, ptr %i.he, align 1, !dbg !12437, !alias.scope !12288, !noundef !306
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf, !dbg !12432
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us, !dbg !12432

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go, !dbg !12438
  br label %bb.ah, !dbg !12439

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311, !dbg !12440
  %i.hi = load i8, ptr %i.hh, align 1, !dbg !12440, !alias.scope !12289, !noundef !306
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr, !dbg !12441 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm, !dbg !12442
  tail call void @llvm.assume(i1 %i.hk), !dbg !12443
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj, !dbg !12444
  %i.hm = load i8, ptr %i.hl, align 1, !dbg !12445, !alias.scope !12288, !noundef !306
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm, !dbg !12440
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af, !dbg !12440

.preheader.i19:                                   ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i20, !dbg !12429

.split32.us.i20:                                  ; preds = %.preheader.i19
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !dbg !12432, !noalias !12290
  unreachable, !dbg !12432

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311, !dbg !12446
  br label %bb.ah, !dbg !12447

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq, !dbg !12448
  br label %bb.ah, !dbg !12449

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !dbg !12450, !alias.scope !12287
  %i.hp = add i64 %.sink.i18, %i.ds, !dbg !12418  ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm, !dbg !12419
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13, !dbg !12419

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !12451, !alias.scope !12287
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12452

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.i19
  %i.hr = add i64 %i.gr, %i.dq, !dbg !12453       ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !dbg !12453, !alias.scope !12287
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12454
  store i64 %i.gr, ptr %i.hs, align 8, !dbg !12454, !alias.scope !12291
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12454
  store i64 %i.hr, ptr %i.ht, align 8, !dbg !12454, !alias.scope !12291
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !12455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12456 {
bb.a:
  ret i8 3, !dbg !12457
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12458 {
bb.a:
  ret { ptr, i64 } { ptr @673, i64 6 }, !dbg !12459
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12460 {
bb.a:
  ret { ptr, i64 } { ptr @674, i64 29 }, !dbg !12461
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12462 {
bb.a:
  ret i1 false, !dbg !12463
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12464 {
bb.a:
  ret { ptr, i64 } { ptr @675, i64 16 }, !dbg !12465
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12466 {
bb.a:
  ret i8 2, !dbg !12467
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12468 {
bb.a:
  ret { ptr, i64 } { ptr @270, i64 4 }, !dbg !12469
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12470 {
bb.a:
  ret { ptr, i64 } { ptr @676, i64 413 }, !dbg !12471
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12472 {
bb.a:
  ret { ptr, i64 } { ptr @677, i64 41 }, !dbg !12473
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12474 {
bb.a:
  ret i1 false, !dbg !12475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12476 {
bb.a:
  ret { ptr, i64 } { ptr @678, i64 5 }, !dbg !12477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i1, i8 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12478 {
bb.a:
  ret { i1, i8 } { i1 true, i8 105 }, !dbg !12479
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12480 {
bb.a:
  ret i8 1, !dbg !12481
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12482 {
bb.a:
  ret { ptr, i64 } { ptr @679, i64 524 }, !dbg !12483
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12484 {
bb.a:
  ret { ptr, i64 } { ptr @680, i64 24 }, !dbg !12485
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12486 {
bb.a:
  ret i1 true, !dbg !12487
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12488 {
bb.a:
  ret { ptr, i64 } { ptr @681, i64 11 }, !dbg !12489
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12490 {
bb.a:
  ret i8 2, !dbg !12491
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12492 {
bb.a:
  ret { ptr, i64 } { ptr @682, i64 4 }, !dbg !12493
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 5) i8 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag15completion_type(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12494 {
bb.a:
  ret i8 1, !dbg !12495
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12496 {
bb.a:
  ret { ptr, i64 } { ptr @683, i64 676 }, !dbg !12497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12498 {
bb.a:
  ret { ptr, i64 } { ptr @684, i64 32 }, !dbg !12499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12500 {
bb.a:
  ret i1 false, !dbg !12501
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !12502 {
bb.a:
  ret { ptr, i64 } { ptr @685, i64 11 }, !dbg !12503
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12504 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12558), !dbg !12563
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12564 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !12564, !alias.scope !12558, !noundef !306 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !12565
  tail call void @llvm.assume(i1 %i.e), !dbg !12566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12567, !noalias !12559
  store i64 %i.d, ptr %i.b, align 8, !dbg !12568, !noalias !12559
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12568 ; 2 uses
  store ptr %1, ptr %i.f, align 8, !dbg !12568, !noalias !12559
  %i.g = invoke { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef 10, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNCNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Cs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !12569 ; 3 uses

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.h, %bb.c ]
  invoke void @_RNvXs1_NtNtCskKLDkoKarTP_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvYINtNtNtB1I_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB1I_8buf_read7BufRead9read_line0E0ENtNtNtB9_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCNvYINtNtNtB1V_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB1V_8buf_read7BufRead9read_line0E0EECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.h, !dbg !12570

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNCNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Cs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.g, 0, !dbg !12571 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.g, 1, !dbg !12571 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12572
  %i.l = load ptr, ptr %i.k, align 8, !dbg !12572, !alias.scope !12558, !nonnull !306, !noundef !306
  %i.m = load i64, ptr %i.c, align 8, !dbg !12573, !alias.scope !12558, !noundef !306
  %i.n = sub nuw i64 %i.m, %i.d, !dbg !12574
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d, !dbg !12575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12576, !noalias !12559
  invoke void @_RNvMNtCskKLDkoKarTP_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.n)
          to label %bb.e unwind label %bb.d, !dbg !12576

bb.d:                                             ; preds = %_RNCNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Cs2NzvFoTxuAy_2rg.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2NzvFoTxuAy_2rg(i64 %i.i, ptr %i.j) #22
          to label %bb.b unwind label %bb.h, !dbg !12577

bb.e:                                             ; preds = %_RNCNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Cs2NzvFoTxuAy_2rg.exit.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !12578, !range !343, !noalias !12559, !noundef !306
  %.not.i = icmp eq i64 %i.q, 0, !dbg !12579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12580, !noalias !12559
  br i1 %.not.i, label %bb.f, label %bb.g, !dbg !12576

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.f, align 8, !dbg !12581, !noalias !12559, !nonnull !306, !align !541, !noundef !306
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !12582
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!12090 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !596, file: !363, line: 1662, type: !307, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12091 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !589, file: !366, line: 157, type: !307, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12092 = distinct !DILexicalBlock(scope: !12091, file: !366, line: 161, column: 17)
!12093 = distinct !DILexicalBlock(scope: !12092, file: !366, line: 162, column: 17)
!12094 = distinct !DISubprogram(name: "next_code_point<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg", scope: !12249, file: !12248, line: 35, type: !307, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12095 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !12250, file: !352, line: 39, type: !307, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12096 = distinct !DILocation(line: 1148, column: 52, scope: !12077, inlinedAt: !12070)
!12097 = distinct !DILocation(line: 42, column: 18, scope: !12095, inlinedAt: !12096)
!12098 = distinct !DILocation(line: 37, column: 20, scope: !12094, inlinedAt: !12097)
!12099 = distinct !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12098)
!12100 = distinct !{!12100, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg"}
!12101 = distinct !{!12101, !12100, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg: argument 0"}
!12102 = distinct !DILexicalBlock(scope: !12094, file: !12248, line: 37, column: 5)
!12103 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhE3addCs2NzvFoTxuAy_2rg", scope: !365, file: !363, line: 619, type: !307, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12104 = distinct !DILocation(line: 185, column: 40, scope: !12093, inlinedAt: !12098)
!12105 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCskKLDkoKarTP_4core3str11validations15utf8_first_byte", scope: !12249, file: !12248, line: 10, type: !307, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12106 = distinct !DILocation(line: 45, column: 16, scope: !12102, inlinedAt: !12097)
!12107 = distinct !DILexicalBlock(scope: !12102, file: !12248, line: 45, column: 5)
!12108 = distinct !DILocation(line: 48, column: 29, scope: !12107, inlinedAt: !12097)
!12109 = distinct !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12108)
!12110 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCskKLDkoKarTP_4core3str11validations18utf8_acc_cont_byte", scope: !12249, file: !12248, line: 16, type: !307, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12111 = distinct !DILexicalBlock(scope: !12107, file: !12248, line: 48, column: 5)
!12112 = distinct !DILocation(line: 49, column: 18, scope: !12111, inlinedAt: !12097)
!12113 = distinct !DILexicalBlock(scope: !12111, file: !12248, line: 49, column: 5)
!12114 = distinct !DILocation(line: 185, column: 40, scope: !12093, inlinedAt: !12108)
!12115 = distinct !DILocation(line: 55, column: 33, scope: !12113, inlinedAt: !12097)
!12116 = distinct !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12115)
!12117 = distinct !DILexicalBlock(scope: !12113, file: !12248, line: 55, column: 9)
!12118 = distinct !DILocation(line: 56, column: 19, scope: !12117, inlinedAt: !12097)
!12119 = distinct !DILexicalBlock(scope: !12117, file: !12248, line: 56, column: 9)
!12120 = distinct !DILocation(line: 185, column: 40, scope: !12093, inlinedAt: !12115)
!12121 = distinct !DILocation(line: 63, column: 37, scope: !12119, inlinedAt: !12097)
!12122 = distinct !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12121)
!12123 = distinct !DILexicalBlock(scope: !12119, file: !12248, line: 63, column: 13)
!12124 = distinct !DILocation(line: 64, column: 37, scope: !12123, inlinedAt: !12097)
!12125 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7convert18from_u32_unchecked", scope: !511, file: !509, line: 26, type: !307, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12126 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc18from_u32_unchecked", scope: !593, file: !591, line: 243, type: !307, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12127 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCskKLDkoKarTP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs2NzvFoTxuAy_2rg", scope: !12253, file: !352, line: 42, type: !307, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12128 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2NzvFoTxuAy_2rg", scope: !356, file: !354, line: 1160, type: !307, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12129 = distinct !DILexicalBlock(scope: !12128, file: !354, line: 1165, column: 13)
!12130 = distinct !DILocation(line: 42, column: 50, scope: !12095, inlinedAt: !12096)
!12131 = distinct !DILocation(line: 1165, column: 29, scope: !12129, inlinedAt: !12130)
!12132 = distinct !DILocation(line: 42, column: 59, scope: !12127, inlinedAt: !12131)
!12133 = distinct !DILocation(line: 245, column: 18, scope: !12126, inlinedAt: !12132)
!12134 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7methods8len_utf8", scope: !592, file: !591, line: 2488, type: !307, scopeLine: 2488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12135 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8len_utf8", scope: !593, file: !591, line: 667, type: !307, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12136 = distinct !DILexicalBlock(scope: !12077, file: !350, line: 1154, column: 21)
!12137 = distinct !DILocation(line: 1155, column: 49, scope: !12136, inlinedAt: !12070)
!12138 = distinct !DILocation(line: 668, column: 9, scope: !12135, inlinedAt: !12137)
!12139 = distinct !{!12139, !12084, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!12140 = distinct !DILexicalBlock(scope: !12067, file: !350, line: 1209, column: 21)
!12141 = distinct !DILexicalBlock(scope: !12067, file: !350, line: 1214, column: 13)
!12142 = distinct !DILexicalBlock(scope: !12141, file: !350, line: 1215, column: 17)
!12143 = distinct !DILexicalBlock(scope: !12067, file: !350, line: 1231, column: 13)
!12144 = distinct !DILexicalBlock(scope: !12143, file: !350, line: 1232, column: 17)
!12145 = distinct !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg", scope: !12257, file: !350, line: 1541, type: !307, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12146 = distinct !DILexicalBlock(scope: !12145, file: !350, line: 1546, column: 9)
!12147 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2NzvFoTxuAy_2rg", scope: !428, file: !390, line: 543, type: !307, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12148 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCs2NzvFoTxuAy_2rg", scope: !429, file: !390, line: 18, type: !307, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12149 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECs2NzvFoTxuAy_2rg", scope: !391, file: !390, line: 83, type: !307, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12150 = distinct !DILexicalBlock(scope: !12149, file: !390, line: 88, column: 5)
!12151 = distinct !DILexicalBlock(scope: !12147, file: !390, line: 549, column: 13)
!12152 = distinct !DILocation(line: 1219, column: 23, scope: !12142)
!12153 = distinct !DILocation(line: 28, column: 43, scope: !140, inlinedAt: !12152)
!12154 = distinct !{!12154, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!12155 = distinct !{!12155, !12154, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!12156 = distinct !DILocation(line: 31, column: 18, scope: !154, inlinedAt: !12152)
!12157 = distinct !DILexicalBlock(scope: !12142, file: !350, line: 1220, column: 21)
!12158 = distinct !DILexicalBlock(scope: !12157, file: !350, line: 1221, column: 25)
!12159 = distinct !{!12159, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg"}
!12160 = distinct !{!12160, !12159, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 0"}
!12161 = distinct !{!12161, !12159, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 1"}
!12162 = distinct !{!12162, !12159, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 2"}
!12163 = distinct !{!12163, !12159, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 3"}
!12164 = distinct !DILexicalBlock(scope: !12146, file: !350, line: 1547, column: 9)
!12165 = distinct !DILocation(line: 1242, column: 30, scope: !12144)
!12166 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE3getCs2NzvFoTxuAy_2rg", scope: !648, file: !390, line: 183, type: !307, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12167 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh3getjECs2NzvFoTxuAy_2rg", scope: !332, file: !330, line: 572, type: !307, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12168 = distinct !DILocation(line: 1552, column: 44, scope: !12164, inlinedAt: !12165)
!12169 = distinct !DILocation(line: 576, column: 15, scope: !12167, inlinedAt: !12168)
!12170 = distinct !DILexicalBlock(scope: !12164, file: !350, line: 1552, column: 13)
!12171 = distinct !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !12257, file: !350, line: 1531, type: !307, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12172 = distinct !DILocation(line: 1565, column: 22, scope: !12170, inlinedAt: !12165)
!12173 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs2NzvFoTxuAy_2rg", scope: !472, file: !422, line: 1094, type: !307, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12174 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RINvNtCskKLDkoKarTP_4core3cmp3maxjECs2NzvFoTxuAy_2rg", scope: !423, file: !422, line: 1741, type: !307, scopeLine: 1741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12175 = distinct !DILocation(line: 1575, column: 57, scope: !12170, inlinedAt: !12165)
!12176 = distinct !DILocation(line: 1742, column: 8, scope: !12174, inlinedAt: !12175)
!12177 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !12269, file: !422, line: 2192, type: !307, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12178 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !12272, file: !12270, line: 1099, type: !307, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12179 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !12273, file: !12270, line: 1184, type: !307, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12180 = distinct !DILexicalBlock(scope: !12170, file: !350, line: 1574, column: 13)
!12181 = distinct !DILexicalBlock(scope: !12180, file: !350, line: 1576, column: 13)
!12182 = distinct !DILocation(line: 1576, column: 22, scope: !12274, inlinedAt: !12165)
!12183 = distinct !DILocation(line: 1185, column: 14, scope: !12179, inlinedAt: !12182)
!12184 = distinct !DILocation(line: 1100, column: 12, scope: !12178, inlinedAt: !12183)
!12185 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !389, file: !387, line: 1031, type: !307, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12186 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !12275, file: !12270, line: 263, type: !307, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12187 = distinct !DILexicalBlock(scope: !12178, file: !12270, line: 1101, column: 13)
!12188 = distinct !DILocation(line: 1103, column: 35, scope: !12187, inlinedAt: !12183)
!12189 = distinct !DILocation(line: 265, column: 28, scope: !12186, inlinedAt: !12188)
!12190 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs2NzvFoTxuAy_2rg", scope: !12272, file: !12270, line: 1141, type: !307, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12191 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs2NzvFoTxuAy_2rg", scope: !12276, file: !12270, line: 1315, type: !307, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12192 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !12279, file: !12277, line: 52, type: !307, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12193 = distinct !DILexicalBlock(scope: !12180, file: !350, line: 1593, column: 13)
!12194 = distinct !DILexicalBlock(scope: !12193, file: !350, line: 1594, column: 13)
!12195 = distinct !DILocation(line: 1594, column: 22, scope: !12280, inlinedAt: !12165)
!12196 = distinct !DILocation(line: 53, column: 19, scope: !12192, inlinedAt: !12195)
!12197 = distinct !DILocation(line: 1316, column: 14, scope: !12191, inlinedAt: !12196)
!12198 = distinct !DILocation(line: 1142, column: 12, scope: !12190, inlinedAt: !12197)
!12199 = distinct !DILexicalBlock(scope: !12181, file: !350, line: 1576, column: 13)
!12200 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE13get_uncheckedCs2NzvFoTxuAy_2rg", scope: !648, file: !390, line: 205, type: !307, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12201 = distinct !DISubprogram(name: "get_unchecked<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh13get_uncheckedjECs2NzvFoTxuAy_2rg", scope: !332, file: !330, line: 640, type: !307, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12202 = distinct !DILocation(line: 1583, column: 52, scope: !12199, inlinedAt: !12165)
!12203 = distinct !DILocation(line: 647, column: 26, scope: !12201, inlinedAt: !12202)
!12204 = distinct !DILexicalBlock(scope: !12193, file: !350, line: 1611, column: 13)
!12205 = distinct !DISubprogram(name: "matching", linkageName: "_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching", scope: !12281, file: !350, line: 1844, type: !307, scopeLine: 1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12206 = distinct !DILocation(line: 1619, column: 20, scope: !12204, inlinedAt: !12165)
!12207 = distinct !{!12207, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!12208 = distinct !{!12208, !12207, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!12209 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_sub", scope: !389, file: !387, line: 1210, type: !307, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12210 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !12275, file: !12270, line: 269, type: !307, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12211 = distinct !DILocation(line: 1144, column: 33, scope: !12190, inlinedAt: !12197)
!12212 = distinct !DILocation(line: 271, column: 28, scope: !12210, inlinedAt: !12211)
!12213 = distinct !DILexicalBlock(scope: !12194, file: !350, line: 1594, column: 13)
!12214 = distinct !DILocation(line: 1601, column: 52, scope: !12213, inlinedAt: !12165)
!12215 = distinct !DILocation(line: 647, column: 26, scope: !12284, inlinedAt: !12214)
!12216 = distinct !{!12216, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg"}
!12217 = distinct !{!12217, !12216, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 0"}
!12218 = distinct !{!12218, !12216, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 1"}
!12219 = distinct !{!12219, !12216, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 2"}
!12220 = distinct !{!12220, !12216, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 3"}
!12221 = distinct !DILocation(line: 1236, column: 30, scope: !12144)
!12222 = distinct !DILocation(line: 1552, column: 44, scope: !12164, inlinedAt: !12221)
!12223 = distinct !DILocation(line: 576, column: 15, scope: !12167, inlinedAt: !12222)
!12224 = distinct !DILocation(line: 1565, column: 22, scope: !12170, inlinedAt: !12221)
!12225 = distinct !DILocation(line: 1576, column: 22, scope: !12274, inlinedAt: !12221)
!12226 = distinct !DILocation(line: 1185, column: 14, scope: !12179, inlinedAt: !12225)
!12227 = distinct !DILocation(line: 1103, column: 35, scope: !12187, inlinedAt: !12226)
!12228 = distinct !DILocation(line: 265, column: 28, scope: !12186, inlinedAt: !12227)
!12229 = distinct !DILocation(line: 1100, column: 12, scope: !12178, inlinedAt: !12226)
!12230 = distinct !DILocation(line: 1594, column: 22, scope: !12280, inlinedAt: !12221)
!12231 = distinct !DILocation(line: 53, column: 19, scope: !12192, inlinedAt: !12230)
!12232 = distinct !DILocation(line: 1316, column: 14, scope: !12191, inlinedAt: !12231)
!12233 = distinct !DILocation(line: 1142, column: 12, scope: !12190, inlinedAt: !12232)
!12234 = distinct !DILocation(line: 1144, column: 33, scope: !12190, inlinedAt: !12232)
!12235 = distinct !DILocation(line: 271, column: 28, scope: !12210, inlinedAt: !12234)
!12236 = distinct !DILocation(line: 1601, column: 52, scope: !12213, inlinedAt: !12221)
!12237 = distinct !DILocation(line: 647, column: 26, scope: !12284, inlinedAt: !12236)
!12238 = distinct !DILocation(line: 1583, column: 52, scope: !12199, inlinedAt: !12221)
!12239 = distinct !DILocation(line: 647, column: 26, scope: !12201, inlinedAt: !12238)
!12240 = distinct !DILocation(line: 1619, column: 20, scope: !12204, inlinedAt: !12221)
!12241 = distinct !{!12241, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!12242 = distinct !{!12242, !12241, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!12243 = !DINamespace(name: "{impl#33}", scope: !351)
!12244 = !{i64 0, i64 3}
!12245 = !{!12072}
!12246 = !{!12083}
!12247 = !{!12085, !12072}
!12248 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!12249 = !DINamespace(name: "validations", scope: !348)
!12250 = !DINamespace(name: "{impl#0}", scope: !353)
!12251 = !{!12101, !12085, !12072}
!12252 = !DILexicalBlockFile(scope: !12102, file: !379, discriminator: 0)
!12253 = !DINamespace(name: "next", scope: !12250)
!12254 = !{!12139}
!12255 = !{!12085, !12139}
!12256 = !{!12101, !12085, !12139}
!12257 = !DINamespace(name: "TwoWaySearcher", scope: !351)
!12258 = !DILocation(line: 0, scope: !12144)
!12259 = !DILexicalBlockFile(scope: !12067, file: !379, discriminator: 0)
!12260 = !DILocation(line: 1219, column: 56, scope: !12142)
!12261 = !DILocation(line: 19, column: 15, scope: !12148, inlinedAt: !12260)
!12262 = !DILocation(line: 550, column: 15, scope: !12151, inlinedAt: !12261)
!12263 = !{!12155}
!12264 = !{!12160}
!12265 = !{!12161}
!12266 = !{!12162}
!12267 = !{!12163}
!12268 = !DILexicalBlockFile(scope: !12164, file: !379, discriminator: 0)
!12269 = !DINamespace(name: "{impl#58}", scope: !424)
!12270 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "6038fbd2305f6e8ce8c79c7d50b4046d")
!12271 = !DINamespace(name: "range", scope: !334)
!12272 = !DINamespace(name: "{impl#5}", scope: !12271)
!12273 = !DINamespace(name: "{impl#6}", scope: !12271)
!12274 = !DILexicalBlockFile(scope: !12181, file: !350, discriminator: 2)
!12275 = !DINamespace(name: "{impl#49}", scope: !12271)
!12276 = !DINamespace(name: "{impl#7}", scope: !12271)
!12277 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!12278 = !DINamespace(name: "rev", scope: !335)
!12279 = !DINamespace(name: "{impl#1}", scope: !12278)
!12280 = !DILexicalBlockFile(scope: !12194, file: !350, discriminator: 2)
!12281 = !DINamespace(name: "{impl#36}", scope: !351)
!12282 = !{!12208, !12160}
!12283 = !DILexicalBlockFile(scope: !12170, file: !379, discriminator: 0)
!12284 = !DILexicalBlockFile(scope: !12201, file: !330, discriminator: 2)
!12285 = !{!12160, !12161, !12162, !12163}
!12286 = !{!12217}
!12287 = !{!12218}
!12288 = !{!12219}
!12289 = !{!12220}
!12290 = !{!12217, !12218, !12219, !12220}
!12291 = !{!12242, !12217}
!12292 = !DILocation(line: 1206, column: 15, scope: !12067)
!12293 = !DILocation(line: 1206, column: 9, scope: !12067)
!12294 = !DILocation(line: 1141, column: 20, scope: !12069, inlinedAt: !12070)
!12295 = !DILocation(line: 1208, column: 28, scope: !12067)
!12296 = !DILocation(line: 1145, column: 32, scope: !12069, inlinedAt: !12070)
!12297 = !DILocation(line: 380, column: 12, scope: !131, inlinedAt: !12081)
!12298 = !DILocation(line: 384, column: 12, scope: !131, inlinedAt: !12081)
!12299 = !DILocation(line: 394, column: 13, scope: !131, inlinedAt: !12081)
!12300 = !DILocation(line: 493, column: 12, scope: !132, inlinedAt: !12080)
!12301 = !DILocation(line: 396, column: 13, scope: !131, inlinedAt: !12081)
!12302 = !DILocation(line: 1231, column: 9, scope: !133, inlinedAt: !12086)
!12303 = !DILocation(line: 872, column: 18, scope: !138, inlinedAt: !12089)
!12304 = !DILocation(line: 1663, column: 9, scope: !12090, inlinedAt: !12099)
!12305 = !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12098)
!12306 = !DILocation(line: 37, column: 13, scope: !12094, inlinedAt: !12097)
!12307 = !DILocation(line: 38, column: 8, scope: !12102, inlinedAt: !12097)
!12308 = !DILocation(line: 627, column: 28, scope: !12103, inlinedAt: !12104)
!12309 = !DILocation(line: 11, column: 5, scope: !12105, inlinedAt: !12106)
!12310 = !DILocation(line: 1663, column: 9, scope: !12090, inlinedAt: !12109)
!12311 = !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12108)
!12312 = !DILocation(line: 48, column: 22, scope: !12107, inlinedAt: !12097)
!12313 = !DILocation(line: 17, column: 5, scope: !12110, inlinedAt: !12112)
!12314 = !DILocation(line: 17, column: 17, scope: !12110, inlinedAt: !12112)
!12315 = !DILocation(line: 50, column: 8, scope: !12113, inlinedAt: !12097)
!12316 = !DILocation(line: 627, column: 28, scope: !12103, inlinedAt: !12114)
!12317 = !DILocation(line: 1663, column: 9, scope: !12090, inlinedAt: !12116)
!12318 = !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12115)
!12319 = !DILocation(line: 55, column: 26, scope: !12113, inlinedAt: !12097)
!12320 = !DILocation(line: 17, column: 5, scope: !12110, inlinedAt: !12118)
!12321 = !DILocation(line: 17, column: 17, scope: !12110, inlinedAt: !12118)
!12322 = !DILocation(line: 57, column: 14, scope: !12119, inlinedAt: !12097)
!12323 = !DILocation(line: 57, column: 9, scope: !12119, inlinedAt: !12097)
!12324 = !DILocation(line: 58, column: 12, scope: !12119, inlinedAt: !12097)
!12325 = !DILocation(line: 627, column: 28, scope: !12103, inlinedAt: !12120)
!12326 = !DILocation(line: 1663, column: 9, scope: !12090, inlinedAt: !12122)
!12327 = !DILocation(line: 180, column: 28, scope: !12093, inlinedAt: !12121)
!12328 = !DILocation(line: 63, column: 30, scope: !12119, inlinedAt: !12097)
!12329 = !DILocation(line: 64, column: 18, scope: !12123, inlinedAt: !12097)
!12330 = !DILocation(line: 17, column: 5, scope: !12110, inlinedAt: !12124)
!12331 = !DILocation(line: 17, column: 17, scope: !12110, inlinedAt: !12124)
!12332 = !DILocation(line: 64, column: 13, scope: !12123, inlinedAt: !12097)
!12333 = !DILocation(line: 58, column: 9, scope: !12119, inlinedAt: !12097)
!12334 = !DILocation(line: 39, column: 21, scope: !12102, inlinedAt: !12097)
!12335 = !DILocation(line: 0, scope: !12252, inlinedAt: !12097)
!12336 = !DILocation(line: 34, column: 9, scope: !12125, inlinedAt: !12133)
!12337 = !DILocation(line: 1149, column: 26, scope: !12077, inlinedAt: !12070)
!12338 = !DILocation(line: 2490, column: 9, scope: !12134, inlinedAt: !12138)
!12339 = !DILocation(line: 2491, column: 9, scope: !12134, inlinedAt: !12138)
!12340 = !DILocation(line: 2492, column: 9, scope: !12134, inlinedAt: !12138)
!12341 = !DILocation(line: 0, scope: !12134, inlinedAt: !12138)
!12342 = !DILocation(line: 1155, column: 25, scope: !12136, inlinedAt: !12070)
!12343 = !DILocation(line: 1146, column: 17, scope: !12076, inlinedAt: !12070)
!12344 = !DILocation(line: 528, column: 21, scope: !12074, inlinedAt: !12079)
!12345 = !DILocation(line: 1209, column: 55, scope: !12140)
!12346 = !DILocation(line: 1151, column: 25, scope: !12077, inlinedAt: !12070)
!12347 = !DILocation(line: 1152, column: 25, scope: !12077, inlinedAt: !12070)
!12348 = !DILocation(line: 1215, column: 29, scope: !12141)
!12349 = !DILocation(line: 1216, column: 20, scope: !12142)
!12350 = !DILocation(line: 1231, column: 37, scope: !12067)
!12351 = !DILocation(line: 1232, column: 31, scope: !12143)
!12352 = !DILocation(line: 1546, column: 23, scope: !12145, inlinedAt: !12258)
!12353 = !DILocation(line: 1547, column: 27, scope: !12146, inlinedAt: !12258)
!12354 = !DILocation(line: 1235, column: 20, scope: !12144)
!12355 = !DILocation(line: 0, scope: !12259)
!12356 = !DILocation(line: 0, scope: !12067)
!12357 = !DILocation(line: 1250, column: 6, scope: !12067)
!12358 = !DILocation(line: 1219, column: 38, scope: !12142)
!12359 = !DILocation(line: 549, column: 27, scope: !12147, inlinedAt: !12261)
!12360 = !DILocation(line: 90, column: 24, scope: !12150, inlinedAt: !12262)
!12361 = !DILocation(line: 28, column: 12, scope: !140, inlinedAt: !12152)
!12362 = !DILocation(line: 28, column: 74, scope: !140, inlinedAt: !12152)
!12363 = !DILocation(line: 29, column: 12, scope: !154, inlinedAt: !12152)
!12364 = !DILocation(line: 42, column: 12, scope: !152, inlinedAt: !12153)
!12365 = !DILocation(line: 46, column: 9, scope: !152, inlinedAt: !12153)
!12366 = !DILocation(line: 41, column: 11, scope: !152, inlinedAt: !12153)
!12367 = !DILocation(line: 28, scope: !140, inlinedAt: !12152)
!12368 = !DILocation(line: 31, column: 48, scope: !154, inlinedAt: !12152)
!12369 = !DILocation(line: 210, column: 9, scope: !155, inlinedAt: !12156)
!12370 = !DILocation(line: 1221, column: 35, scope: !12157)
!12371 = !DILocation(line: 1222, column: 25, scope: !12158)
!12372 = !DILocation(line: 1223, column: 25, scope: !12158)
!12373 = !DILocation(line: 1224, column: 21, scope: !12142)
!12374 = !DILocation(line: 1226, column: 25, scope: !12142)
!12375 = !DILocation(line: 1227, column: 25, scope: !12142)
!12376 = !DILocation(line: 1242, column: 30, scope: !12144)
!12377 = !DILocation(line: 1552, column: 48, scope: !12164, inlinedAt: !12165)
!12378 = !DILocation(line: 184, column: 12, scope: !12166, inlinedAt: !12169)
!12379 = !DILocation(line: 1565, column: 17, scope: !12170, inlinedAt: !12165)
!12380 = !DILocation(line: 1555, column: 21, scope: !12164, inlinedAt: !12165)
!12381 = !DILocation(line: 0, scope: !12268, inlinedAt: !12165)
!12382 = !DILocation(line: 186, column: 27, scope: !12166, inlinedAt: !12169)
!12383 = !DILocation(line: 1553, column: 23, scope: !12164, inlinedAt: !12165)
!12384 = !DILocation(line: 1532, column: 27, scope: !12171, inlinedAt: !12172)
!12385 = !DILocation(line: 1532, column: 26, scope: !12171, inlinedAt: !12172)
!12386 = !DILocation(line: 1532, column: 9, scope: !12171, inlinedAt: !12172)
!12387 = !DILocation(line: 1566, column: 17, scope: !12170, inlinedAt: !12165)
!12388 = !DILocation(line: 1567, column: 17, scope: !12170, inlinedAt: !12165)
!12389 = !DILocation(line: 1099, column: 5, scope: !12173, inlinedAt: !12176)
!12390 = !DILocation(line: 2192, column: 50, scope: !12177, inlinedAt: !12184)
!12391 = !DILocation(line: 1100, column: 12, scope: !12178, inlinedAt: !12183)
!12392 = !DILocation(line: 0, scope: !12170, inlinedAt: !12165)
!12393 = !DILocation(line: 1043, column: 17, scope: !12185, inlinedAt: !12189)
!12394 = !DILocation(line: 2192, column: 50, scope: !12177, inlinedAt: !12198)
!12395 = !DILocation(line: 1142, column: 12, scope: !12190, inlinedAt: !12197)
!12396 = !DILocation(line: 1583, column: 20, scope: !12199, inlinedAt: !12165)
!12397 = !DILocation(line: 1583, column: 66, scope: !12199, inlinedAt: !12165)
!12398 = !DILocation(line: 218, column: 39, scope: !12200, inlinedAt: !12203)
!12399 = !DILocation(line: 218, column: 13, scope: !12200, inlinedAt: !12203)
!12400 = !DILocation(line: 219, column: 13, scope: !12200, inlinedAt: !12203)
!12401 = !DILocation(line: 1583, column: 42, scope: !12199, inlinedAt: !12165)
!12402 = !DILocation(line: 1614, column: 13, scope: !12204, inlinedAt: !12165)
!12403 = !DILocation(line: 1616, column: 17, scope: !12204, inlinedAt: !12165)
!12404 = !DILocation(line: 1845, column: 9, scope: !12205, inlinedAt: !12206)
!12405 = !DILocation(line: 0, scope: !12283, inlinedAt: !12165)
!12406 = !DILocation(line: 1222, column: 17, scope: !12209, inlinedAt: !12212)
!12407 = !DILocation(line: 1601, column: 20, scope: !12213, inlinedAt: !12165)
!12408 = !DILocation(line: 1601, column: 66, scope: !12213, inlinedAt: !12165)
!12409 = !DILocation(line: 218, column: 39, scope: !12200, inlinedAt: !12215)
!12410 = !DILocation(line: 218, column: 13, scope: !12200, inlinedAt: !12215)
!12411 = !DILocation(line: 219, column: 13, scope: !12200, inlinedAt: !12215)
!12412 = !DILocation(line: 1601, column: 42, scope: !12213, inlinedAt: !12165)
!12413 = !DILocation(line: 1602, column: 21, scope: !12213, inlinedAt: !12165)
!12414 = !DILocation(line: 1603, column: 21, scope: !12213, inlinedAt: !12165)
!12415 = !DILocation(line: 1584, column: 21, scope: !12199, inlinedAt: !12165)
!12416 = !DILocation(line: 1585, column: 21, scope: !12199, inlinedAt: !12165)
!12417 = !DILocation(line: 1236, column: 30, scope: !12144)
!12418 = !DILocation(line: 1552, column: 48, scope: !12164, inlinedAt: !12221)
!12419 = !DILocation(line: 184, column: 12, scope: !12166, inlinedAt: !12223)
!12420 = !DILocation(line: 1565, column: 17, scope: !12170, inlinedAt: !12221)
!12421 = !DILocation(line: 186, column: 27, scope: !12166, inlinedAt: !12223)
!12422 = !DILocation(line: 1553, column: 23, scope: !12164, inlinedAt: !12221)
!12423 = !DILocation(line: 1532, column: 27, scope: !12171, inlinedAt: !12224)
!12424 = !DILocation(line: 1532, column: 26, scope: !12171, inlinedAt: !12224)
!12425 = !DILocation(line: 1532, column: 9, scope: !12171, inlinedAt: !12224)
!12426 = !DILocation(line: 1100, column: 12, scope: !12178, inlinedAt: !12226)
!12427 = !DILocation(line: 1043, column: 17, scope: !12185, inlinedAt: !12228)
!12428 = !DILocation(line: 2192, column: 50, scope: !12177, inlinedAt: !12229)
!12429 = !DILocation(line: 1142, column: 12, scope: !12190, inlinedAt: !12232)
!12430 = !DILocation(line: 2192, column: 50, scope: !12177, inlinedAt: !12233)
!12431 = !DILocation(line: 1222, column: 17, scope: !12209, inlinedAt: !12235)
!12432 = !DILocation(line: 1601, column: 20, scope: !12213, inlinedAt: !12221)
!12433 = !DILocation(line: 1601, column: 66, scope: !12213, inlinedAt: !12221)
!12434 = !DILocation(line: 218, column: 39, scope: !12200, inlinedAt: !12237)
!12435 = !DILocation(line: 218, column: 13, scope: !12200, inlinedAt: !12237)
!12436 = !DILocation(line: 219, column: 13, scope: !12200, inlinedAt: !12237)
!12437 = !DILocation(line: 1601, column: 42, scope: !12213, inlinedAt: !12221)
!12438 = !DILocation(line: 1602, column: 21, scope: !12213, inlinedAt: !12221)
!12439 = !DILocation(line: 1603, column: 25, scope: !12213, inlinedAt: !12221)
!12440 = !DILocation(line: 1583, column: 20, scope: !12199, inlinedAt: !12221)
!12441 = !DILocation(line: 1583, column: 66, scope: !12199, inlinedAt: !12221)
!12442 = !DILocation(line: 218, column: 39, scope: !12200, inlinedAt: !12239)
!12443 = !DILocation(line: 218, column: 13, scope: !12200, inlinedAt: !12239)
!12444 = !DILocation(line: 219, column: 13, scope: !12200, inlinedAt: !12239)
!12445 = !DILocation(line: 1583, column: 42, scope: !12199, inlinedAt: !12221)
!12446 = !DILocation(line: 1584, column: 21, scope: !12199, inlinedAt: !12221)
!12447 = !DILocation(line: 1585, column: 25, scope: !12199, inlinedAt: !12221)
!12448 = !DILocation(line: 1566, column: 17, scope: !12170, inlinedAt: !12221)
!12449 = !DILocation(line: 1567, column: 21, scope: !12170, inlinedAt: !12221)
!12450 = !DILocation(line: 0, scope: !12170, inlinedAt: !12221)
!12451 = !DILocation(line: 1555, column: 21, scope: !12164, inlinedAt: !12221)
!12452 = !DILocation(line: 0, scope: !12268, inlinedAt: !12221)
!12453 = !DILocation(line: 1614, column: 13, scope: !12204, inlinedAt: !12221)
!12454 = !DILocation(line: 1845, column: 9, scope: !12205, inlinedAt: !12240)
!12455 = !DILocation(line: 0, scope: !12283, inlinedAt: !12221)
!12456 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category", scope: !705, file: !597, line: 2910, type: !307, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12457 = !DILocation(line: 2912, column: 6, scope: !12456)
!12458 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable", scope: !705, file: !597, line: 2907, type: !307, scopeLine: 2907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12459 = !DILocation(line: 2909, column: 6, scope: !12458)
!12460 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9doc_short", scope: !705, file: !597, line: 2913, type: !307, scopeLine: 2913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12461 = !DILocation(line: 2915, column: 6, scope: !12460)
!12462 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9is_switch", scope: !705, file: !597, line: 2901, type: !307, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12463 = !DILocation(line: 2903, column: 6, scope: !12462)
!12464 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9name_long", scope: !705, file: !597, line: 2904, type: !307, scopeLine: 2904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12465 = !DILocation(line: 2906, column: 6, scope: !12464)
!12466 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_category", scope: !706, file: !597, line: 3103, type: !307, scopeLine: 3103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12467 = !DILocation(line: 3105, column: 6, scope: !12466)
!12468 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_variable", scope: !706, file: !597, line: 3100, type: !307, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12469 = !DILocation(line: 3102, column: 6, scope: !12468)
!12470 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag8doc_long", scope: !706, file: !597, line: 3109, type: !307, scopeLine: 3109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12471 = !DILocation(line: 3118, column: 6, scope: !12470)
!12472 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9doc_short", scope: !706, file: !597, line: 3106, type: !307, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12473 = !DILocation(line: 3108, column: 6, scope: !12472)
!12474 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9is_switch", scope: !706, file: !597, line: 3094, type: !307, scopeLine: 3094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12475 = !DILocation(line: 3096, column: 6, scope: !12474)
!12476 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9name_long", scope: !706, file: !597, line: 3097, type: !307, scopeLine: 3097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12477 = !DILocation(line: 3099, column: 6, scope: !12476)
!12478 = distinct !DISubprogram(name: "name_short", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag10name_short", scope: !707, file: !597, line: 3154, type: !307, scopeLine: 3154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12479 = !DILocation(line: 3156, column: 6, scope: !12478)
!12480 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag12doc_category", scope: !707, file: !597, line: 3160, type: !307, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12481 = !DILocation(line: 3162, column: 6, scope: !12480)
!12482 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag8doc_long", scope: !707, file: !597, line: 3166, type: !307, scopeLine: 3166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12483 = !DILocation(line: 3179, column: 6, scope: !12482)
!12484 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9doc_short", scope: !707, file: !597, line: 3163, type: !307, scopeLine: 3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12485 = !DILocation(line: 3165, column: 6, scope: !12484)
!12486 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9is_switch", scope: !707, file: !597, line: 3151, type: !307, scopeLine: 3151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12487 = !DILocation(line: 3153, column: 6, scope: !12486)
!12488 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9name_long", scope: !707, file: !597, line: 3157, type: !307, scopeLine: 3157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12489 = !DILocation(line: 3159, column: 6, scope: !12488)
!12490 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_category", scope: !708, file: !597, line: 3221, type: !307, scopeLine: 3221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !306)
!12491 = !DILocation(line: 3223, column: 6, scope: !12490)
end_hunk_1
