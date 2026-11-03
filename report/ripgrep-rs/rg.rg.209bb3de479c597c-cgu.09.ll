Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.09?download=true
inline.NumInlined: 430
inline.NumDeleted: 171
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10179), !dbg !10228
  br i1 %i.bh, label %bb.m, label %bb.k, !dbg !10230

bb.k:                                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us, !dbg !10231

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161, !dbg !10233

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !dbg !10234, !alias.scope !10174, !noalias !10180, !noundef !294
  %i.bw = icmp sgt i8 %i.bv, -65, !dbg !10235
  br i1 %i.bw, label %bb.m, label %.split.us161, !dbg !10233

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n, !dbg !10238

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !dbg !10239, !noalias !10181, !noundef !294 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !10240
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us, !dbg !10240

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31, !dbg !10242
  %i.ca = zext nneg i8 %i.bz to i32, !dbg !10242  ; 3 uses
  tail call void @llvm.assume(i1 %i.bo), !dbg !10244
  %i.cb = load i8, ptr %i.bm, align 1, !dbg !10245, !noalias !10181, !noundef !294
  %i.cc = shl nuw nsw i32 %i.ca, 6, !dbg !10246
  %i.cd = and i8 %i.cb, 63, !dbg !10247
  %i.ce = zext nneg i8 %i.cd to i32, !dbg !10247  ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce, !dbg !10246
  %i.cg = icmp samesign ugt i8 %i.bx, -33, !dbg !10248
  br i1 %i.cg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us, label %.loopexit42.split.us.loopexit, !dbg !10248

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br), !dbg !10251
  %i.ch = load i8, ptr %i.bp, align 1, !dbg !10252, !noalias !10181, !noundef !294
  %i.ci = shl nuw nsw i32 %i.ce, 6, !dbg !10253
  %i.cj = and i8 %i.ch, 63, !dbg !10254
  %i.ck = zext nneg i8 %i.cj to i32, !dbg !10254
  %i.cl = or disjoint i32 %i.ci, %i.ck, !dbg !10253 ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12, !dbg !10255
  %i.cn = or disjoint i32 %i.cl, %i.cm, !dbg !10256
  %i.co = icmp samesign ugt i8 %i.bx, -17, !dbg !10257
  br i1 %i.co, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us, label %.loopexit42.split.us.loopexit, !dbg !10257

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu), !dbg !10260
  %i.cp = load i8, ptr %i.bs, align 1, !dbg !10261, !noalias !10181, !noundef !294
  %i.cq = shl nuw nsw i32 %i.ca, 18, !dbg !10262
  %i.cr = and i32 %i.cq, 1835008, !dbg !10262
  %i.cs = shl nuw nsw i32 %i.cl, 6, !dbg !10263
  %i.ct = and i8 %i.cp, 63, !dbg !10264
  %i.cu = zext nneg i8 %i.ct to i32, !dbg !10264
  %i.cv = or disjoint i32 %i.cs, %i.cu, !dbg !10263
  %i.cw = or disjoint i32 %i.cv, %i.cr, !dbg !10265
  br label %.loopexit42.split.us.loopexit, !dbg !10266

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32, !dbg !10267
  br label %.loopexit42.split.us.loopexit, !dbg !10268

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112, !dbg !10269
  tail call void @llvm.assume(i1 %i.cy), !dbg !10269
  br label %.loopexit42.split.us, !dbg !10276

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !dbg !10276, !alias.scope !10179
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @742) #28, !dbg !10277, !noalias !10180
  unreachable, !dbg !10277

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !dbg !10276, !alias.scope !10179
  br i1 %i.k, label %bb.s, label %bb.p, !dbg !10270

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !dbg !10276, !alias.scope !10179
  br label %bb.s, !dbg !10278

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !dbg !10279, !alias.scope !10179
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10280

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10281
  %i.dc = load i64, ptr %i.db, align 8, !dbg !10281, !noundef !294 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10282 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !10282, !noundef !294 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc, !dbg !10282
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10282

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10283 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !10284 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !10284, !noundef !294 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1, !dbg !10284
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !10183
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !10183, !nonnull !294, !noundef !294 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10183
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !10183, !noundef !294 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !10183
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !10183, !nonnull !294, !noundef !294 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !10183
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !10183, !noundef !294 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !10285 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1, !dbg !10286      ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w, !dbg !10287

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !dbg !10276, !alias.scope !10179
  br label %bb.s, !dbg !10270

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10278
  store i64 %i.dt, ptr %i.du, align 8, !dbg !10278
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10278
  store i64 %i.dt, ptr %i.dv, align 8, !dbg !10278
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10288

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8, !dbg !10289
  ret void, !dbg !10290

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !10281
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !10281, !nonnull !294, !noundef !294
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10291
  %i.dz = load i8, ptr %i.dy, align 8, !dbg !10291, !noundef !294 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de, !dbg !10292   ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de, !dbg !10293 ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16, !dbg !10294
  br i1 %i.ec, label %.lr.ph.i, label %bb.u, !dbg !10294

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea), !dbg !10295 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0, !dbg !10295
  %i.ef = extractvalue { i64, i64 } %i.ed, 1, !dbg !10295
  %i.eg = trunc nuw i64 %i.ee to i1, !dbg !10296
  br i1 %i.eg, label %.loopexit43, label %.loopexit44, !dbg !10296

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i, !dbg !10297
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !10297, !alias.scope !10194, !noundef !294
  %i.ej = icmp eq i8 %i.ei, %i.dz, !dbg !10297
  br i1 %i.ej, label %.loopexit43, label %bb.v, !dbg !10297

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1, !dbg !10298 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea, !dbg !10299
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i, !dbg !10299

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ], !dbg !10300 ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea, !dbg !10301
  tail call void @llvm.assume(i1 %i.el), !dbg !10302
  %i.em = add i64 %.sroa.5.0.i, %i.de, !dbg !10303 ; 2 uses
  %i.en = add i64 %i.em, 1, !dbg !10304           ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8, !dbg !10304
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10305
  store i64 %i.em, ptr %i.eo, align 8, !dbg !10305
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10305
  store i64 %i.en, ptr %i.ep, align 8, !dbg !10305
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10306

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8, !dbg !10307
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10308

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10195), !dbg !10309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10196), !dbg !10309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10197), !dbg !10309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10198), !dbg !10309
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !10196 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds, !dbg !10310 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm, !dbg !10311
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i, !dbg !10311

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !10196, !noundef !294
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !10196 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !10196 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu, !dbg !10312
  br label %.lr.ph.split.i, !dbg !10312

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !10313, !alias.scope !10196
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10314

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez, !dbg !10315
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !10316, !alias.scope !10197, !noundef !294
  %i.fd = and i8 %i.fc, 63, !dbg !10317
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !10318
  %i.ff = shl nuw i64 1, %i.fe, !dbg !10319
  %i.fg = and i64 %i.ff, %i.et, !dbg !10319
  %.not.i9 = icmp eq i64 %i.fg, 0, !dbg !10319
  br i1 %.not.i9, label %bb.x, label %bb.y, !dbg !10312

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq, !dbg !10320
  br label %bb.z, !dbg !10321

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %i.eu), !dbg !10322 ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq, !dbg !10323
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !10324

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !dbg !10325, !alias.scope !10196
  store i64 %.sink70.i, ptr %i.dg, align 8, !dbg !10325, !alias.scope !10196
  %i.fj = add i64 %.sink71.i, %i.ds, !dbg !10310  ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm, !dbg !10311
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i, !dbg !10311

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1, !dbg !10326 ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq, !dbg !10323
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !10324

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %i.eu, !dbg !10327
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11, !dbg !10328

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305, !dbg !10329
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !10329, !alias.scope !10198, !noundef !294
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa, !dbg !10330 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm, !dbg !10331
  tail call void @llvm.assume(i1 %i.fr), !dbg !10332
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq, !dbg !10333
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !10334, !alias.scope !10197, !noundef !294
  %.not21.i = icmp eq i8 %i.fp, %i.ft, !dbg !10329
  br i1 %.not21.i, label %bb.aa, label %bb.ad, !dbg !10329

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy, !dbg !10327
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11, !dbg !10328

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq, !dbg !10335       ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !dbg !10335, !alias.scope !10196
  store i64 0, ptr %i.dg, align 8, !dbg !10336, !alias.scope !10196
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10337
  store i64 %i.fa, ptr %i.fw, align 8, !dbg !10337, !alias.scope !10215
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10337
  store i64 %i.fv, ptr %i.fx, align 8, !dbg !10337, !alias.scope !10215
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10338

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1, !dbg !10339 ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq, !dbg !10340
  br i1 %i.fz, label %bb.ab, label %.split32.us.i, !dbg !10340

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy, !dbg !10340
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !10340, !alias.scope !10198, !noundef !294
  %i.gc = add i64 %i.fy, %i.fa, !dbg !10341       ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm, !dbg !10342
  tail call void @llvm.assume(i1 %i.gd), !dbg !10343
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc, !dbg !10344
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !10345, !alias.scope !10197, !noundef !294
  %.not20.i = icmp eq i8 %i.gb, %i.gf, !dbg !10340
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac, !dbg !10340

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !dbg !10340, !noalias !10218
  unreachable, !dbg !10340

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew, !dbg !10346
  br label %bb.z, !dbg !10347

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305, !dbg !10348
  br label %bb.z, !dbg !10349

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10219), !dbg !10350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10220), !dbg !10350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10221), !dbg !10350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10222), !dbg !10350
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !10220 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds, !dbg !10351 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm, !dbg !10352
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13, !dbg !10352

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !10220, !noundef !294
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !10220
  %.fr215 = freeze i64 %i.gm, !dbg !10353         ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !10220
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq), !dbg !10353
  %i.gp = add i64 %.fr215, -1, !dbg !10353        ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215, !dbg !10353
  %.not34.i.us313 = icmp eq i64 %.fr215, 0        ; 2 uses
  br label %.lr.ph.split.us.i, !dbg !10353

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq, !dbg !10354
  %i.gt = load i8, ptr %i.gs, align 1, !dbg !10355, !alias.scope !10221, !noundef !294
  %i.gu = and i8 %i.gt, 63, !dbg !10356
  %i.gv = zext nneg i8 %i.gu to i64, !dbg !10357
  %i.gw = shl nuw i64 1, %i.gv, !dbg !10358
  %i.gx = and i64 %i.gw, %i.gl, !dbg !10358
  %.not.us.i = icmp eq i64 %i.gx, 0, !dbg !10358
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader, !dbg !10353

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader, !dbg !10359

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1, !dbg !10360 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i, !dbg !10361
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312, !dbg !10359

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.i19

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315, !dbg !10362

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0, !dbg !10363
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315, !dbg !10362

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1, !dbg !10364 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz, !dbg !10365
  %i.hb = load i8, ptr %i.ha, align 1, !dbg !10365, !alias.scope !10222, !noundef !294
  %i.hc = add i64 %i.gz, %i.gr, !dbg !10366       ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm, !dbg !10367
  tail call void @llvm.assume(i1 %i.hd), !dbg !10368
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc, !dbg !10369
  %i.hf = load i8, ptr %i.he, align 1, !dbg !10370, !alias.scope !10221, !noundef !294
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf, !dbg !10365
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us, !dbg !10365

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go, !dbg !10371
  br label %bb.ah, !dbg !10372

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311, !dbg !10373
  %i.hi = load i8, ptr %i.hh, align 1, !dbg !10373, !alias.scope !10222, !noundef !294
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr, !dbg !10374 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm, !dbg !10375
  tail call void @llvm.assume(i1 %i.hk), !dbg !10376
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj, !dbg !10377
  %i.hm = load i8, ptr %i.hl, align 1, !dbg !10378, !alias.scope !10221, !noundef !294
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm, !dbg !10373
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af, !dbg !10373

.preheader.i19:                                   ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i20, !dbg !10362

.split32.us.i20:                                  ; preds = %.preheader.i19
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !dbg !10365, !noalias !10223
  unreachable, !dbg !10365

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311, !dbg !10379
  br label %bb.ah, !dbg !10380

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq, !dbg !10381
  br label %bb.ah, !dbg !10382

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !dbg !10383, !alias.scope !10220
  %i.hp = add i64 %.sink.i18, %i.ds, !dbg !10351  ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm, !dbg !10352
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13, !dbg !10352

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !10384, !alias.scope !10220
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10385

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.i19
  %i.hr = add i64 %i.gr, %i.dq, !dbg !10386       ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !dbg !10386, !alias.scope !10220
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10387
  store i64 %i.gr, ptr %i.hs, align 8, !dbg !10387, !alias.scope !10224
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10387
  store i64 %i.hr, ptr %i.ht, align 8, !dbg !10387, !alias.scope !10224
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !10388
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag11doc_choices(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10389 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 24) acquire, align 8, !dbg !10414
  %i.d = icmp eq i32 %i.c, 0, !dbg !10415
  br i1 %i.d, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !10416, !prof !480

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10417
  store ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, ptr %i.b, align 8, !dbg !10418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10419
  store ptr %i.b, ptr %i.a, align 8, !dbg !10419
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !10420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10422
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg.exit, !dbg !10422

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 8), align 8, !dbg !10423, !nonnull !294, !noundef !294
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB7_15HyperlinkFormatNtB9_4Flag11doc_choices8BORROWED, i64 16), align 8, !dbg !10424, !noundef !294
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !10425
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1, !dbg !10425
  ret { ptr, i64 } %i.h, !dbg !10425
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !10426 {
bb.a:
  ret i8 3, !dbg !10427
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !10428 {
bb.a:
  ret { ptr, i64 } { ptr @743, i64 6 }, !dbg !10429
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(608) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10430 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10493
  call void @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue12unwrap_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !10494
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10495
  %i.f = load ptr, ptr %i.e, align 8, !dbg !10495, !nonnull !294, !noundef !294
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !10496
  %i.h = load i64, ptr %i.g, align 8, !dbg !10496, !noundef !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10497, !noalias !10482
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %.noexc unwind label %bb.d, !dbg !10498

.noexc:                                           ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !dbg !10499, !range !389, !noalias !10482, !noundef !294
  %i.j = trunc nuw i64 %i.i to i1, !dbg !10500
  br i1 %i.j, label %bb.b, label %bb.e, !dbg !10500, !prof !375

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10501, !noalias !10482
  %i.k = invoke noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 24)
          to label %bb.o unwind label %bb.d, !dbg !10502

bb.c:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.r, !dbg !10488

bb.d:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10503
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10503, !noalias !10482, !nonnull !294, !noundef !294
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10503
  %i.p = load i64, ptr %i.o, align 8, !dbg !10503, !noalias !10482, !noundef !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10501, !noalias !10482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10504
  invoke void @_RNvXs0_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB5_15HyperlinkFormatNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.f unwind label %bb.d, !dbg !10505

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !10484), !dbg !10506
  call void @llvm.experimental.noalias.scope.decl(metadata !10485), !dbg !10506
  %i.q = load i64, ptr %i.c, align 8, !dbg !10507, !range !443, !alias.scope !10485, !noundef !294 ; 3 uses
  %i.r = icmp eq i64 %i.q, -1, !dbg !10507
  br i1 %i.r, label %bb.g, label %bb.i, !dbg !10508

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10509, !noalias !10486
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !10509, !noalias !10484
  %i.t = invoke noundef nonnull ptr @_RINvXNtNtCseNfSUspcXaQ_6anyhow7context3extNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtB3_8StdError11ext_contextReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 24)
          to label %bb.h unwind label %bb.d, !dbg !10510

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10511, !noalias !10486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10512
  br label %bb.o, !dbg !10513

bb.i:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10514
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10514, !alias.scope !10486 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false), !dbg !10514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10512
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 320, !dbg !10515 ; 5 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.j, !dbg !10516

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.body unwind label %bb.k, !dbg !10517

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10516
  unreachable, !dbg !10516

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit unwind label %bb.l, !dbg !10518

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !10515

.body:                                            ; preds = %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.v, %bb.j ]
  store i64 %i.q, ptr %i.u, align 8, !dbg !10515
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 328, !dbg !10515
  store ptr %.sroa.7.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !10515
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 336, !dbg !10515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !dbg !10515
  br label %bb.c, !dbg !10519

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartEECs2NzvFoTxuAy_2rg.exit.i
  store i64 %i.q, ptr %i.u, align 8, !dbg !10515
  %.sroa.3.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %2, i64 328, !dbg !10515
  store ptr %.sroa.7.0.copyload, ptr %.sroa.3.0..sroa_idx10, align 8, !dbg !10515
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %2, i64 336, !dbg !10515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !dbg !10515
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit22 unwind label %bb.m, !dbg !10520

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.n, !dbg !10521

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10520
  unreachable, !dbg !10520

common.resume:                                    ; preds = %bb.c, %bb.p, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.y, %bb.m ], [ %.pn, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !10522

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit22: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit, %bb.o
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.o ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkFormatECs2NzvFoTxuAy_2rg.exit ], !dbg !10492
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !10523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10488
  ret ptr %.sroa.0.0, !dbg !10524

bb.o:                                             ; preds = %bb.b, %bb.h
  %.sroa.0.1 = phi ptr [ %i.t, %bb.h ], [ %i.k, %bb.b ], !dbg !10525
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit22 unwind label %bb.p, !dbg !10526

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.q, !dbg !10527

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10526
  unreachable, !dbg !10526

bb.r:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10528
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!10023 = distinct !DILocation(line: 496, column: 34, scope: !10001, inlinedAt: !10009)
!10024 = distinct !DILocation(line: 515, column: 36, scope: !10022, inlinedAt: !10023)
!10025 = distinct !DILocation(line: 222, column: 28, scope: !10020, inlinedAt: !10024)
!10026 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !645, file: !399, line: 39, type: !295, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10027 = distinct !DILocation(line: 1148, column: 52, scope: !10006, inlinedAt: !9997)
!10028 = distinct !DILocation(line: 42, column: 18, scope: !10026, inlinedAt: !10027)
!10029 = distinct !DILocation(line: 37, column: 20, scope: !268, inlinedAt: !10028)
!10030 = distinct !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10029)
!10031 = distinct !{!10031, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg"}
!10032 = distinct !{!10032, !10031, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg: argument 0"}
!10033 = distinct !DILocation(line: 185, column: 40, scope: !267, inlinedAt: !10029)
!10034 = distinct !DILocation(line: 45, column: 16, scope: !270, inlinedAt: !10028)
!10035 = distinct !DILocation(line: 48, column: 29, scope: !272, inlinedAt: !10028)
!10036 = distinct !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10035)
!10037 = distinct !DILocation(line: 49, column: 18, scope: !274, inlinedAt: !10028)
!10038 = distinct !DILocation(line: 185, column: 40, scope: !267, inlinedAt: !10035)
!10039 = distinct !DILocation(line: 55, column: 33, scope: !275, inlinedAt: !10028)
!10040 = distinct !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10039)
!10041 = distinct !DILocation(line: 56, column: 19, scope: !276, inlinedAt: !10028)
!10042 = distinct !DILocation(line: 185, column: 40, scope: !267, inlinedAt: !10039)
!10043 = distinct !DILocation(line: 63, column: 37, scope: !277, inlinedAt: !10028)
!10044 = distinct !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10043)
!10045 = distinct !DILocation(line: 64, column: 37, scope: !278, inlinedAt: !10028)
!10046 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7convert18from_u32_unchecked", scope: !554, file: !552, line: 26, type: !295, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10047 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc18from_u32_unchecked", scope: !578, file: !576, line: 243, type: !295, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10048 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCskKLDkoKarTP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs2NzvFoTxuAy_2rg", scope: !10178, file: !399, line: 42, type: !295, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10049 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1160, type: !295, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10050 = distinct !DILexicalBlock(scope: !10049, file: !403, line: 1165, column: 13)
!10051 = distinct !DILocation(line: 42, column: 50, scope: !10026, inlinedAt: !10027)
!10052 = distinct !DILocation(line: 1165, column: 29, scope: !10050, inlinedAt: !10051)
!10053 = distinct !DILocation(line: 42, column: 59, scope: !10048, inlinedAt: !10052)
!10054 = distinct !DILocation(line: 245, column: 18, scope: !10047, inlinedAt: !10053)
!10055 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7methods8len_utf8", scope: !577, file: !576, line: 2488, type: !295, scopeLine: 2488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10056 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8len_utf8", scope: !578, file: !576, line: 667, type: !295, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10057 = distinct !DILexicalBlock(scope: !10006, file: !396, line: 1154, column: 21)
!10058 = distinct !DILocation(line: 1155, column: 49, scope: !10057, inlinedAt: !9997)
!10059 = distinct !DILocation(line: 668, column: 9, scope: !10056, inlinedAt: !10058)
!10060 = distinct !{!10060, !10013, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!10061 = distinct !DILexicalBlock(scope: !9994, file: !396, line: 1209, column: 21)
!10062 = distinct !DILexicalBlock(scope: !9994, file: !396, line: 1214, column: 13)
!10063 = distinct !DILexicalBlock(scope: !10062, file: !396, line: 1215, column: 17)
!10064 = distinct !DILexicalBlock(scope: !9994, file: !396, line: 1231, column: 13)
!10065 = distinct !DILexicalBlock(scope: !10064, file: !396, line: 1232, column: 17)
!10066 = distinct !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg", scope: !10182, file: !396, line: 1541, type: !295, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10067 = distinct !DILexicalBlock(scope: !10066, file: !396, line: 1546, column: 9)
!10068 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2NzvFoTxuAy_2rg", scope: !10187, file: !10185, line: 543, type: !295, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10069 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCs2NzvFoTxuAy_2rg", scope: !10190, file: !10185, line: 18, type: !295, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10070 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECs2NzvFoTxuAy_2rg", scope: !10186, file: !10185, line: 83, type: !295, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10071 = distinct !DILexicalBlock(scope: !10070, file: !10185, line: 88, column: 5)
!10072 = distinct !DILexicalBlock(scope: !10068, file: !10185, line: 549, column: 13)
!10073 = distinct !DISubprogram(name: "memchr", linkageName: "_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr", scope: !10193, file: !10192, line: 25, type: !295, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10074 = distinct !DILocation(line: 1219, column: 23, scope: !10063)
!10075 = distinct !DILexicalBlock(scope: !10073, file: !10192, line: 27, column: 5)
!10076 = distinct !DILexicalBlock(scope: !10075, file: !10192, line: 29, column: 33)
!10077 = distinct !DISubprogram(name: "memchr_naive", linkageName: "_RNvNtNtCskKLDkoKarTP_4core5slice6memchr12memchr_naive", scope: !10193, file: !10192, line: 37, type: !295, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10078 = distinct !DILexicalBlock(scope: !10077, file: !10192, line: 38, column: 5)
!10079 = distinct !DILocation(line: 28, column: 43, scope: !10073, inlinedAt: !10074)
!10080 = distinct !{!10080, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!10081 = distinct !{!10081, !10080, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!10082 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCskKLDkoKarTP_4core4hint16assert_unchecked", scope: !392, file: !391, line: 202, type: !295, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10083 = distinct !DILocation(line: 31, column: 18, scope: !10076, inlinedAt: !10074)
!10084 = distinct !DILexicalBlock(scope: !10063, file: !396, line: 1220, column: 21)
!10085 = distinct !DILexicalBlock(scope: !10084, file: !396, line: 1221, column: 25)
!10086 = distinct !{!10086, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg"}
!10087 = distinct !{!10087, !10086, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 0"}
!10088 = distinct !{!10088, !10086, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 1"}
!10089 = distinct !{!10089, !10086, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 2"}
!10090 = distinct !{!10090, !10086, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 3"}
!10091 = distinct !DILexicalBlock(scope: !10067, file: !396, line: 1547, column: 9)
!10092 = distinct !DILocation(line: 1242, column: 30, scope: !10065)
!10093 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE3getCs2NzvFoTxuAy_2rg", scope: !10199, file: !10185, line: 183, type: !295, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10094 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh3getjECs2NzvFoTxuAy_2rg", scope: !381, file: !380, line: 572, type: !295, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10095 = distinct !DILocation(line: 1552, column: 44, scope: !10091, inlinedAt: !10092)
!10096 = distinct !DILocation(line: 576, column: 15, scope: !10094, inlinedAt: !10095)
!10097 = distinct !DILexicalBlock(scope: !10091, file: !396, line: 1552, column: 13)
!10098 = distinct !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !10182, file: !396, line: 1531, type: !295, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10099 = distinct !DILocation(line: 1565, column: 22, scope: !10097, inlinedAt: !10092)
!10100 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs2NzvFoTxuAy_2rg", scope: !10201, file: !363, line: 1094, type: !295, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10101 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RINvNtCskKLDkoKarTP_4core3cmp3maxjECs2NzvFoTxuAy_2rg", scope: !364, file: !363, line: 1741, type: !295, scopeLine: 1741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10102 = distinct !DILocation(line: 1575, column: 57, scope: !10097, inlinedAt: !10092)
!10103 = distinct !DILocation(line: 1742, column: 8, scope: !10101, inlinedAt: !10102)
!10104 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !10202, file: !363, line: 2192, type: !295, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10105 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !10205, file: !10203, line: 1099, type: !295, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10106 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !10206, file: !10203, line: 1184, type: !295, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10107 = distinct !DILexicalBlock(scope: !10097, file: !396, line: 1574, column: 13)
!10108 = distinct !DILexicalBlock(scope: !10107, file: !396, line: 1576, column: 13)
!10109 = distinct !DILocation(line: 1576, column: 22, scope: !10207, inlinedAt: !10092)
!10110 = distinct !DILocation(line: 1185, column: 14, scope: !10106, inlinedAt: !10109)
!10111 = distinct !DILocation(line: 1100, column: 12, scope: !10105, inlinedAt: !10110)
!10112 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !506, file: !505, line: 1031, type: !295, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10113 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !10208, file: !10203, line: 263, type: !295, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10114 = distinct !DILexicalBlock(scope: !10105, file: !10203, line: 1101, column: 13)
!10115 = distinct !DILocation(line: 1103, column: 35, scope: !10114, inlinedAt: !10110)
!10116 = distinct !DILocation(line: 265, column: 28, scope: !10113, inlinedAt: !10115)
!10117 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs2NzvFoTxuAy_2rg", scope: !10205, file: !10203, line: 1141, type: !295, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10118 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs2NzvFoTxuAy_2rg", scope: !10209, file: !10203, line: 1315, type: !295, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10119 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !10212, file: !10210, line: 52, type: !295, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10120 = distinct !DILexicalBlock(scope: !10107, file: !396, line: 1593, column: 13)
!10121 = distinct !DILexicalBlock(scope: !10120, file: !396, line: 1594, column: 13)
!10122 = distinct !DILocation(line: 1594, column: 22, scope: !10213, inlinedAt: !10092)
!10123 = distinct !DILocation(line: 53, column: 19, scope: !10119, inlinedAt: !10122)
!10124 = distinct !DILocation(line: 1316, column: 14, scope: !10118, inlinedAt: !10123)
!10125 = distinct !DILocation(line: 1142, column: 12, scope: !10117, inlinedAt: !10124)
!10126 = distinct !DILexicalBlock(scope: !10108, file: !396, line: 1576, column: 13)
!10127 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE13get_uncheckedCs2NzvFoTxuAy_2rg", scope: !10199, file: !10185, line: 205, type: !295, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10128 = distinct !DISubprogram(name: "get_unchecked<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh13get_uncheckedjECs2NzvFoTxuAy_2rg", scope: !381, file: !380, line: 640, type: !295, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10129 = distinct !DILocation(line: 1583, column: 52, scope: !10126, inlinedAt: !10092)
!10130 = distinct !DILocation(line: 647, column: 26, scope: !10128, inlinedAt: !10129)
!10131 = distinct !DILexicalBlock(scope: !10120, file: !396, line: 1611, column: 13)
!10132 = distinct !DISubprogram(name: "matching", linkageName: "_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching", scope: !10214, file: !396, line: 1844, type: !295, scopeLine: 1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10133 = distinct !DILocation(line: 1619, column: 20, scope: !10131, inlinedAt: !10092)
!10134 = distinct !{!10134, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!10135 = distinct !{!10135, !10134, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!10136 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_sub", scope: !506, file: !505, line: 1210, type: !295, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10137 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !10208, file: !10203, line: 269, type: !295, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10138 = distinct !DILocation(line: 1144, column: 33, scope: !10117, inlinedAt: !10124)
!10139 = distinct !DILocation(line: 271, column: 28, scope: !10137, inlinedAt: !10138)
!10140 = distinct !DILexicalBlock(scope: !10121, file: !396, line: 1594, column: 13)
!10141 = distinct !DILocation(line: 1601, column: 52, scope: !10140, inlinedAt: !10092)
!10142 = distinct !DILocation(line: 647, column: 26, scope: !10217, inlinedAt: !10141)
!10143 = distinct !{!10143, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg"}
!10144 = distinct !{!10144, !10143, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 0"}
!10145 = distinct !{!10145, !10143, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 1"}
!10146 = distinct !{!10146, !10143, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 2"}
!10147 = distinct !{!10147, !10143, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 3"}
!10148 = distinct !DILocation(line: 1236, column: 30, scope: !10065)
!10149 = distinct !DILocation(line: 1552, column: 44, scope: !10091, inlinedAt: !10148)
!10150 = distinct !DILocation(line: 576, column: 15, scope: !10094, inlinedAt: !10149)
!10151 = distinct !DILocation(line: 1565, column: 22, scope: !10097, inlinedAt: !10148)
!10152 = distinct !DILocation(line: 1576, column: 22, scope: !10207, inlinedAt: !10148)
!10153 = distinct !DILocation(line: 1185, column: 14, scope: !10106, inlinedAt: !10152)
!10154 = distinct !DILocation(line: 1103, column: 35, scope: !10114, inlinedAt: !10153)
!10155 = distinct !DILocation(line: 265, column: 28, scope: !10113, inlinedAt: !10154)
!10156 = distinct !DILocation(line: 1100, column: 12, scope: !10105, inlinedAt: !10153)
!10157 = distinct !DILocation(line: 1594, column: 22, scope: !10213, inlinedAt: !10148)
!10158 = distinct !DILocation(line: 53, column: 19, scope: !10119, inlinedAt: !10157)
!10159 = distinct !DILocation(line: 1316, column: 14, scope: !10118, inlinedAt: !10158)
!10160 = distinct !DILocation(line: 1142, column: 12, scope: !10117, inlinedAt: !10159)
!10161 = distinct !DILocation(line: 1144, column: 33, scope: !10117, inlinedAt: !10159)
!10162 = distinct !DILocation(line: 271, column: 28, scope: !10137, inlinedAt: !10161)
!10163 = distinct !DILocation(line: 1601, column: 52, scope: !10140, inlinedAt: !10148)
!10164 = distinct !DILocation(line: 647, column: 26, scope: !10217, inlinedAt: !10163)
!10165 = distinct !DILocation(line: 1583, column: 52, scope: !10126, inlinedAt: !10148)
!10166 = distinct !DILocation(line: 647, column: 26, scope: !10128, inlinedAt: !10165)
!10167 = distinct !DILocation(line: 1619, column: 20, scope: !10131, inlinedAt: !10148)
!10168 = distinct !{!10168, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!10169 = distinct !{!10169, !10168, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!10170 = !DINamespace(name: "{impl#33}", scope: !397)
!10171 = !{!9999}
!10172 = !DINamespace(name: "{impl#11}", scope: !410)
!10173 = !DINamespace(name: "{impl#4}", scope: !410)
!10174 = !{!10012}
!10175 = !{!10014, !9999}
!10176 = !DINamespace(name: "{impl#6}", scope: !348)
!10177 = !{!10032, !10014, !9999}
!10178 = !DINamespace(name: "next", scope: !645)
!10179 = !{!10060}
!10180 = !{!10014, !10060}
!10181 = !{!10032, !10014, !10060}
!10182 = !DINamespace(name: "TwoWaySearcher", scope: !397)
!10183 = !DILocation(line: 0, scope: !10065)
!10184 = !DILexicalBlockFile(scope: !9994, file: !597, discriminator: 0)
!10185 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a6478e6d30216db9f8cdcb9288808b92")
!10186 = !DINamespace(name: "index", scope: !354)
!10187 = !DINamespace(name: "{impl#7}", scope: !10186)
!10188 = !DILocation(line: 1219, column: 56, scope: !10063)
!10189 = !DILocation(line: 19, column: 15, scope: !10069, inlinedAt: !10188)
!10190 = !DINamespace(name: "{impl#0}", scope: !10186)
!10191 = !DILocation(line: 550, column: 15, scope: !10072, inlinedAt: !10189)
!10192 = !DIFile(filename: "library/core/src/slice/memchr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90719a3fdf4b8ba29bc25ba24da39686")
!10193 = !DINamespace(name: "memchr", scope: !354)
!10194 = !{!10081}
!10195 = !{!10087}
!10196 = !{!10088}
!10197 = !{!10089}
!10198 = !{!10090}
!10199 = !DINamespace(name: "{impl#2}", scope: !10186)
!10200 = !DILexicalBlockFile(scope: !10091, file: !597, discriminator: 0)
!10201 = !DINamespace(name: "Ord", scope: !364)
!10202 = !DINamespace(name: "{impl#58}", scope: !365)
!10203 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "6038fbd2305f6e8ce8c79c7d50b4046d")
!10204 = !DINamespace(name: "range", scope: !298)
!10205 = !DINamespace(name: "{impl#5}", scope: !10204)
!10206 = !DINamespace(name: "{impl#6}", scope: !10204)
!10207 = !DILexicalBlockFile(scope: !10108, file: !396, discriminator: 2)
!10208 = !DINamespace(name: "{impl#49}", scope: !10204)
!10209 = !DINamespace(name: "{impl#7}", scope: !10204)
!10210 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!10211 = !DINamespace(name: "rev", scope: !299)
!10212 = !DINamespace(name: "{impl#1}", scope: !10211)
!10213 = !DILexicalBlockFile(scope: !10121, file: !396, discriminator: 2)
!10214 = !DINamespace(name: "{impl#36}", scope: !397)
!10215 = !{!10135, !10087}
!10216 = !DILexicalBlockFile(scope: !10097, file: !597, discriminator: 0)
!10217 = !DILexicalBlockFile(scope: !10128, file: !380, discriminator: 2)
!10218 = !{!10087, !10088, !10089, !10090}
!10219 = !{!10144}
!10220 = !{!10145}
!10221 = !{!10146}
!10222 = !{!10147}
!10223 = !{!10144, !10145, !10146, !10147}
!10224 = !{!10169, !10144}
!10225 = !DILocation(line: 1206, column: 15, scope: !9994)
!10226 = !DILocation(line: 1206, column: 9, scope: !9994)
!10227 = !DILocation(line: 1141, column: 20, scope: !9996, inlinedAt: !9997)
!10228 = !DILocation(line: 1208, column: 28, scope: !9994)
!10229 = !DILocation(line: 1145, column: 32, scope: !9996, inlinedAt: !9997)
!10230 = !DILocation(line: 380, column: 12, scope: !10000, inlinedAt: !10010)
!10231 = !DILocation(line: 384, column: 12, scope: !10000, inlinedAt: !10010)
!10232 = !DILocation(line: 394, column: 13, scope: !10000, inlinedAt: !10010)
!10233 = !DILocation(line: 493, column: 12, scope: !10001, inlinedAt: !10009)
!10234 = !DILocation(line: 396, column: 13, scope: !10000, inlinedAt: !10010)
!10235 = !DILocation(line: 1231, column: 9, scope: !10015, inlinedAt: !10016)
!10236 = !DILocation(line: 872, column: 18, scope: !10017, inlinedAt: !10025)
!10237 = !DILocation(line: 1663, column: 9, scope: !264, inlinedAt: !10030)
!10238 = !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10029)
!10239 = !DILocation(line: 37, column: 13, scope: !268, inlinedAt: !10028)
!10240 = !DILocation(line: 38, column: 8, scope: !270, inlinedAt: !10028)
!10241 = !DILocation(line: 627, column: 28, scope: !269, inlinedAt: !10033)
!10242 = !DILocation(line: 11, column: 5, scope: !271, inlinedAt: !10034)
!10243 = !DILocation(line: 1663, column: 9, scope: !264, inlinedAt: !10036)
!10244 = !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10035)
!10245 = !DILocation(line: 48, column: 22, scope: !272, inlinedAt: !10028)
!10246 = !DILocation(line: 17, column: 5, scope: !273, inlinedAt: !10037)
!10247 = !DILocation(line: 17, column: 17, scope: !273, inlinedAt: !10037)
!10248 = !DILocation(line: 50, column: 8, scope: !275, inlinedAt: !10028)
!10249 = !DILocation(line: 627, column: 28, scope: !269, inlinedAt: !10038)
!10250 = !DILocation(line: 1663, column: 9, scope: !264, inlinedAt: !10040)
!10251 = !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10039)
!10252 = !DILocation(line: 55, column: 26, scope: !275, inlinedAt: !10028)
!10253 = !DILocation(line: 17, column: 5, scope: !273, inlinedAt: !10041)
!10254 = !DILocation(line: 17, column: 17, scope: !273, inlinedAt: !10041)
!10255 = !DILocation(line: 57, column: 14, scope: !277, inlinedAt: !10028)
!10256 = !DILocation(line: 57, column: 9, scope: !277, inlinedAt: !10028)
!10257 = !DILocation(line: 58, column: 12, scope: !277, inlinedAt: !10028)
!10258 = !DILocation(line: 627, column: 28, scope: !269, inlinedAt: !10042)
!10259 = !DILocation(line: 1663, column: 9, scope: !264, inlinedAt: !10044)
!10260 = !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !10043)
!10261 = !DILocation(line: 63, column: 30, scope: !277, inlinedAt: !10028)
!10262 = !DILocation(line: 64, column: 18, scope: !278, inlinedAt: !10028)
!10263 = !DILocation(line: 17, column: 5, scope: !273, inlinedAt: !10045)
!10264 = !DILocation(line: 17, column: 17, scope: !273, inlinedAt: !10045)
!10265 = !DILocation(line: 64, column: 13, scope: !278, inlinedAt: !10028)
!10266 = !DILocation(line: 58, column: 9, scope: !277, inlinedAt: !10028)
!10267 = !DILocation(line: 39, column: 21, scope: !270, inlinedAt: !10028)
!10268 = !DILocation(line: 0, scope: !648, inlinedAt: !10028)
!10269 = !DILocation(line: 34, column: 9, scope: !10046, inlinedAt: !10054)
!10270 = !DILocation(line: 1149, column: 26, scope: !10006, inlinedAt: !9997)
!10271 = !DILocation(line: 2490, column: 9, scope: !10055, inlinedAt: !10059)
!10272 = !DILocation(line: 2491, column: 9, scope: !10055, inlinedAt: !10059)
!10273 = !DILocation(line: 2492, column: 9, scope: !10055, inlinedAt: !10059)
!10274 = !DILocation(line: 0, scope: !10055, inlinedAt: !10059)
!10275 = !DILocation(line: 1155, column: 25, scope: !10057, inlinedAt: !9997)
!10276 = !DILocation(line: 1146, column: 17, scope: !10005, inlinedAt: !9997)
!10277 = !DILocation(line: 528, column: 21, scope: !10003, inlinedAt: !10008)
!10278 = !DILocation(line: 1209, column: 55, scope: !10061)
!10279 = !DILocation(line: 1151, column: 25, scope: !10006, inlinedAt: !9997)
!10280 = !DILocation(line: 1152, column: 25, scope: !10006, inlinedAt: !9997)
!10281 = !DILocation(line: 1215, column: 29, scope: !10062)
!10282 = !DILocation(line: 1216, column: 20, scope: !10063)
!10283 = !DILocation(line: 1231, column: 37, scope: !9994)
!10284 = !DILocation(line: 1232, column: 31, scope: !10064)
!10285 = !DILocation(line: 1546, column: 23, scope: !10066, inlinedAt: !10183)
!10286 = !DILocation(line: 1547, column: 27, scope: !10067, inlinedAt: !10183)
!10287 = !DILocation(line: 1235, column: 20, scope: !10065)
!10288 = !DILocation(line: 0, scope: !10184)
!10289 = !DILocation(line: 0, scope: !9994)
!10290 = !DILocation(line: 1250, column: 6, scope: !9994)
!10291 = !DILocation(line: 1219, column: 38, scope: !10063)
!10292 = !DILocation(line: 549, column: 27, scope: !10068, inlinedAt: !10189)
!10293 = !DILocation(line: 90, column: 24, scope: !10071, inlinedAt: !10191)
!10294 = !DILocation(line: 28, column: 12, scope: !10073, inlinedAt: !10074)
!10295 = !DILocation(line: 28, column: 74, scope: !10073, inlinedAt: !10074)
!10296 = !DILocation(line: 29, column: 12, scope: !10076, inlinedAt: !10074)
!10297 = !DILocation(line: 42, column: 12, scope: !10078, inlinedAt: !10079)
!10298 = !DILocation(line: 46, column: 9, scope: !10078, inlinedAt: !10079)
!10299 = !DILocation(line: 41, column: 11, scope: !10078, inlinedAt: !10079)
!10300 = !DILocation(line: 28, scope: !10073, inlinedAt: !10074)
!10301 = !DILocation(line: 31, column: 48, scope: !10076, inlinedAt: !10074)
!10302 = !DILocation(line: 210, column: 9, scope: !10082, inlinedAt: !10083)
!10303 = !DILocation(line: 1221, column: 35, scope: !10084)
!10304 = !DILocation(line: 1222, column: 25, scope: !10085)
!10305 = !DILocation(line: 1223, column: 25, scope: !10085)
!10306 = !DILocation(line: 1224, column: 21, scope: !10063)
!10307 = !DILocation(line: 1226, column: 25, scope: !10063)
!10308 = !DILocation(line: 1227, column: 25, scope: !10063)
!10309 = !DILocation(line: 1242, column: 30, scope: !10065)
!10310 = !DILocation(line: 1552, column: 48, scope: !10091, inlinedAt: !10092)
!10311 = !DILocation(line: 184, column: 12, scope: !10093, inlinedAt: !10096)
!10312 = !DILocation(line: 1565, column: 17, scope: !10097, inlinedAt: !10092)
!10313 = !DILocation(line: 1555, column: 21, scope: !10091, inlinedAt: !10092)
!10314 = !DILocation(line: 0, scope: !10200, inlinedAt: !10092)
!10315 = !DILocation(line: 186, column: 27, scope: !10093, inlinedAt: !10096)
!10316 = !DILocation(line: 1553, column: 23, scope: !10091, inlinedAt: !10092)
!10317 = !DILocation(line: 1532, column: 27, scope: !10098, inlinedAt: !10099)
!10318 = !DILocation(line: 1532, column: 26, scope: !10098, inlinedAt: !10099)
!10319 = !DILocation(line: 1532, column: 9, scope: !10098, inlinedAt: !10099)
!10320 = !DILocation(line: 1566, column: 17, scope: !10097, inlinedAt: !10092)
!10321 = !DILocation(line: 1567, column: 17, scope: !10097, inlinedAt: !10092)
!10322 = !DILocation(line: 1099, column: 5, scope: !10100, inlinedAt: !10103)
!10323 = !DILocation(line: 2192, column: 50, scope: !10104, inlinedAt: !10111)
!10324 = !DILocation(line: 1100, column: 12, scope: !10105, inlinedAt: !10110)
!10325 = !DILocation(line: 0, scope: !10097, inlinedAt: !10092)
!10326 = !DILocation(line: 1043, column: 17, scope: !10112, inlinedAt: !10116)
!10327 = !DILocation(line: 2192, column: 50, scope: !10104, inlinedAt: !10125)
!10328 = !DILocation(line: 1142, column: 12, scope: !10117, inlinedAt: !10124)
!10329 = !DILocation(line: 1583, column: 20, scope: !10126, inlinedAt: !10092)
!10330 = !DILocation(line: 1583, column: 66, scope: !10126, inlinedAt: !10092)
!10331 = !DILocation(line: 218, column: 39, scope: !10127, inlinedAt: !10130)
!10332 = !DILocation(line: 218, column: 13, scope: !10127, inlinedAt: !10130)
!10333 = !DILocation(line: 219, column: 13, scope: !10127, inlinedAt: !10130)
!10334 = !DILocation(line: 1583, column: 42, scope: !10126, inlinedAt: !10092)
!10335 = !DILocation(line: 1614, column: 13, scope: !10131, inlinedAt: !10092)
!10336 = !DILocation(line: 1616, column: 17, scope: !10131, inlinedAt: !10092)
!10337 = !DILocation(line: 1845, column: 9, scope: !10132, inlinedAt: !10133)
!10338 = !DILocation(line: 0, scope: !10216, inlinedAt: !10092)
!10339 = !DILocation(line: 1222, column: 17, scope: !10136, inlinedAt: !10139)
!10340 = !DILocation(line: 1601, column: 20, scope: !10140, inlinedAt: !10092)
!10341 = !DILocation(line: 1601, column: 66, scope: !10140, inlinedAt: !10092)
!10342 = !DILocation(line: 218, column: 39, scope: !10127, inlinedAt: !10142)
!10343 = !DILocation(line: 218, column: 13, scope: !10127, inlinedAt: !10142)
!10344 = !DILocation(line: 219, column: 13, scope: !10127, inlinedAt: !10142)
!10345 = !DILocation(line: 1601, column: 42, scope: !10140, inlinedAt: !10092)
!10346 = !DILocation(line: 1602, column: 21, scope: !10140, inlinedAt: !10092)
!10347 = !DILocation(line: 1603, column: 21, scope: !10140, inlinedAt: !10092)
!10348 = !DILocation(line: 1584, column: 21, scope: !10126, inlinedAt: !10092)
!10349 = !DILocation(line: 1585, column: 21, scope: !10126, inlinedAt: !10092)
!10350 = !DILocation(line: 1236, column: 30, scope: !10065)
!10351 = !DILocation(line: 1552, column: 48, scope: !10091, inlinedAt: !10148)
!10352 = !DILocation(line: 184, column: 12, scope: !10093, inlinedAt: !10150)
!10353 = !DILocation(line: 1565, column: 17, scope: !10097, inlinedAt: !10148)
!10354 = !DILocation(line: 186, column: 27, scope: !10093, inlinedAt: !10150)
!10355 = !DILocation(line: 1553, column: 23, scope: !10091, inlinedAt: !10148)
!10356 = !DILocation(line: 1532, column: 27, scope: !10098, inlinedAt: !10151)
!10357 = !DILocation(line: 1532, column: 26, scope: !10098, inlinedAt: !10151)
!10358 = !DILocation(line: 1532, column: 9, scope: !10098, inlinedAt: !10151)
!10359 = !DILocation(line: 1100, column: 12, scope: !10105, inlinedAt: !10153)
!10360 = !DILocation(line: 1043, column: 17, scope: !10112, inlinedAt: !10155)
!10361 = !DILocation(line: 2192, column: 50, scope: !10104, inlinedAt: !10156)
!10362 = !DILocation(line: 1142, column: 12, scope: !10117, inlinedAt: !10159)
!10363 = !DILocation(line: 2192, column: 50, scope: !10104, inlinedAt: !10160)
!10364 = !DILocation(line: 1222, column: 17, scope: !10136, inlinedAt: !10162)
!10365 = !DILocation(line: 1601, column: 20, scope: !10140, inlinedAt: !10148)
!10366 = !DILocation(line: 1601, column: 66, scope: !10140, inlinedAt: !10148)
!10367 = !DILocation(line: 218, column: 39, scope: !10127, inlinedAt: !10164)
!10368 = !DILocation(line: 218, column: 13, scope: !10127, inlinedAt: !10164)
!10369 = !DILocation(line: 219, column: 13, scope: !10127, inlinedAt: !10164)
!10370 = !DILocation(line: 1601, column: 42, scope: !10140, inlinedAt: !10148)
!10371 = !DILocation(line: 1602, column: 21, scope: !10140, inlinedAt: !10148)
!10372 = !DILocation(line: 1603, column: 25, scope: !10140, inlinedAt: !10148)
!10373 = !DILocation(line: 1583, column: 20, scope: !10126, inlinedAt: !10148)
!10374 = !DILocation(line: 1583, column: 66, scope: !10126, inlinedAt: !10148)
!10375 = !DILocation(line: 218, column: 39, scope: !10127, inlinedAt: !10166)
!10376 = !DILocation(line: 218, column: 13, scope: !10127, inlinedAt: !10166)
!10377 = !DILocation(line: 219, column: 13, scope: !10127, inlinedAt: !10166)
!10378 = !DILocation(line: 1583, column: 42, scope: !10126, inlinedAt: !10148)
!10379 = !DILocation(line: 1584, column: 21, scope: !10126, inlinedAt: !10148)
!10380 = !DILocation(line: 1585, column: 25, scope: !10126, inlinedAt: !10148)
!10381 = !DILocation(line: 1566, column: 17, scope: !10097, inlinedAt: !10148)
!10382 = !DILocation(line: 1567, column: 21, scope: !10097, inlinedAt: !10148)
!10383 = !DILocation(line: 0, scope: !10097, inlinedAt: !10148)
!10384 = !DILocation(line: 1555, column: 21, scope: !10091, inlinedAt: !10148)
!10385 = !DILocation(line: 0, scope: !10200, inlinedAt: !10148)
!10386 = !DILocation(line: 1614, column: 13, scope: !10131, inlinedAt: !10148)
!10387 = !DILocation(line: 1845, column: 9, scope: !10132, inlinedAt: !10167)
!10388 = !DILocation(line: 0, scope: !10216, inlinedAt: !10148)
!10389 = distinct !DISubprogram(name: "doc_choices", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag11doc_choices", scope: !707, file: !563, line: 3028, type: !295, scopeLine: 3028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10390 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsQ_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicmE4load", scope: !520, file: !517, line: 2919, type: !295, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10391 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once12is_completed", scope: !708, file: !487, line: 84, type: !295, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10392 = distinct !DISubprogram(name: "call_once_force<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>>", linkageName: "_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0ECs2NzvFoTxuAy_2rg", scope: !709, file: !481, line: 217, type: !342, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10393 = distinct !DISubprogram(name: "force<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB2_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5forceCs2NzvFoTxuAy_2rg", scope: !710, file: !494, line: 241, type: !295, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10394 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RNvXs1_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !711, file: !494, line: 356, type: !295, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10395 = distinct !DILocation(line: 242, column: 19, scope: !10393, inlinedAt: !10407)
!10396 = distinct !DILocation(line: 222, column: 23, scope: !10392, inlinedAt: !10395)
!10397 = distinct !DILocation(line: 87, column: 31, scope: !10391, inlinedAt: !10396)
!10398 = distinct !DILocation(line: 2921, column: 26, scope: !10390, inlinedAt: !10397)
!10399 = distinct !DILexicalBlock(scope: !10392, file: !481, line: 226, column: 9)
!10400 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECs2NzvFoTxuAy_2rg", scope: !312, file: !310, line: 610, type: !295, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10401 = distinct !DISubprogram(name: "deref<&str, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !561, file: !306, line: 3853, type: !295, scopeLine: 3853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10402 = distinct !DISubprogram(name: "as_slice<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE8as_sliceCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 1847, type: !295, scopeLine: 1847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10403 = distinct !DISubprogram(name: "as_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE6as_ptrCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 1965, type: !295, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10404 = distinct !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE3ptrCs2NzvFoTxuAy_2rg", scope: !314, file: !310, line: 295, type: !295, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10405 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrReECs2NzvFoTxuAy_2rg", scope: !312, file: !310, line: 605, type: !295, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!10406 = !DILocation(line: 3038, column: 10, scope: !10389)
!10407 = !DILocation(line: 357, column: 9, scope: !10394, inlinedAt: !10406)
!10408 = !DILocation(line: 3038, column: 9, scope: !10389)
!10409 = !DILocation(line: 3854, column: 14, scope: !10401, inlinedAt: !10408)
!10410 = !DILocation(line: 1864, column: 76, scope: !10402, inlinedAt: !10409)
!10411 = !DILocation(line: 1968, column: 18, scope: !10403, inlinedAt: !10410)
!10412 = !DILocation(line: 296, column: 20, scope: !10404, inlinedAt: !10411)
!10413 = !DILocation(line: 606, column: 14, scope: !10405, inlinedAt: !10412)
!10414 = !DILocation(line: 4002, column: 24, scope: !282, inlinedAt: !10398)
!10415 = !DILocation(line: 87, column: 9, scope: !10391, inlinedAt: !10396)
!10416 = !DILocation(line: 222, column: 12, scope: !10392, inlinedAt: !10395)
!10417 = !DILocation(line: 226, column: 13, scope: !10392, inlinedAt: !10395)
!10418 = !DILocation(line: 226, column: 21, scope: !10392, inlinedAt: !10395)
!10419 = !DILocation(line: 227, column: 36, scope: !10399, inlinedAt: !10395)
!10420 = !DILocation(line: 227, column: 20, scope: !10399, inlinedAt: !10395)
!10421 = !DILocation(line: 227, column: 61, scope: !10399, inlinedAt: !10395)
!10422 = !DILocation(line: 228, column: 5, scope: !10392, inlinedAt: !10395)
!10423 = !DILocation(line: 611, column: 9, scope: !10400, inlinedAt: !10413)
!10424 = !DILocation(line: 1864, column: 86, scope: !10402, inlinedAt: !10409)
end_hunk_1
