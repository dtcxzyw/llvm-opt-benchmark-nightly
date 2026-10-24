Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE:bb.a

bb.y:                                             ; preds = %bb.x
  store i32 80, ptr %i.bu, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.z:                                             ; preds = %bb.x
  store i32 78, ptr %i.bu, align 8, !tbaa !23
  store ptr %i.by, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.aa:                                            ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !72
  %.not51 = icmp eq i8 %i.ce, 61
  br i1 %.not51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 89, ptr %i.cc, align 8, !tbaa !23
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !72
  %i.ch = icmp eq i8 %i.cg, 61
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 81, ptr %i.cc, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.ci, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ae:                                            ; preds = %bb.ac
  store i32 79, ptr %i.cc, align 8, !tbaa !23
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.af:                                            ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !72
  switch i8 %i.cl, label %bb.ai [
    i8 43, label %bb.ag
    i8 61, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  store i32 62, ptr %i.cj, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.cm, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ah:                                            ; preds = %bb.af
  store i32 94, ptr %i.cj, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.cn, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ai:                                            ; preds = %bb.af
  store i32 69, ptr %i.cj, align 8, !tbaa !23
  store ptr %i.ck, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.aj:                                            ; preds = %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !72
  switch i8 %i.cq, label %bb.am [
    i8 45, label %bb.ak
    i8 61, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  store i32 63, ptr %i.co, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.cr, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.al:                                            ; preds = %bb.aj
  store i32 95, ptr %i.co, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.cs, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.am:                                            ; preds = %bb.aj
  store i32 70, ptr %i.co, align 8, !tbaa !23
  store ptr %i.cp, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.an:                                            ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !72
  switch i8 %i.cv, label %bb.as [
    i8 38, label %bb.ao
    i8 61, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !72
  %i.cy = icmp eq i8 %i.cx, 61
  br i1 %i.cy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 105, ptr %i.ct, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.cz, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.aq:                                            ; preds = %bb.ao
  store i32 85, ptr %i.ct, align 8, !tbaa !23
  store ptr %i.cw, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ar:                                            ; preds = %bb.an
  store i32 103, ptr %i.ct, align 8, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.da, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.as:                                            ; preds = %bb.an
  store i32 82, ptr %i.ct, align 8, !tbaa !23
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.at:                                            ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !72  ; 2 uses
  br i1 %i.r, label %bb.au, label %._crit_edge, !prof !68

bb.au:                                            ; preds = %bb.at
  switch i8 %i.dd, label %bb.ba [
    i8 125, label %bb.av
    i8 124, label %bb.aw
    i8 61, label %bb.az
  ]

bb.av:                                            ; preds = %bb.au
  store i32 52, ptr %i.db, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.de, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

._crit_edge:                                      ; preds = %bb.at
  switch i8 %i.dd, label %bb.ba [
    i8 124, label %bb.aw
    i8 61, label %bb.az
  ]

bb.aw:                                            ; preds = %bb.au, %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !72
  %i.dh = icmp eq i8 %i.dg, 61
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 106, ptr %i.db, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.di, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ay:                                            ; preds = %bb.aw
  store i32 86, ptr %i.db, align 8, !tbaa !23
  store ptr %i.df, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.az:                                            ; preds = %bb.au, %._crit_edge
  store i32 104, ptr %i.db, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.dj, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ba:                                            ; preds = %bb.au, %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i32 84, ptr %i.db, align 8, !tbaa !23
  store ptr %i.dk, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bb:                                            ; preds = %bb.b
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !72  ; 2 uses
  %i.do = icmp eq i8 %i.dn, 46
  br i1 %i.do, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !72
  %11 = sext i8 %i.dq to i32
  %isdigittmp = add nsw i32 %11, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 58, ptr %i.dl, align 8, !tbaa !23
  store ptr %i.dp, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.be:                                            ; preds = %bb.bb
  %i.dr = icmp ne i8 %i.dn, 63
  %or.cond53 = or i1 %i.r, %i.dr
  br i1 %or.cond53, label %.thread, label %bb.bf, !prof !240

bb.bf:                                            ; preds = %bb.be
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !72
  %i.du = icmp eq i8 %i.dt, 61
  br i1 %i.du, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 107, ptr %i.dl, align 8, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.dv, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bh:                                            ; preds = %bb.bf
  store i32 87, ptr %i.dl, align 8, !tbaa !23
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

.thread:                                          ; preds = %bb.bc, %bb.be
  store i32 91, ptr %i.dl, align 8, !tbaa !23
  store ptr %i.dm, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bi:                                            ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !72
  switch i8 %i.dy, label %bb.bk [
    i8 61, label %bb.bj
    i8 42, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  store i32 96, ptr %i.dw, align 8, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.dz, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bk:                                            ; preds = %bb.bi
  store i32 66, ptr %i.dw, align 8, !tbaa !23
  store ptr %i.dx, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bl:                                            ; preds = %bb.bi
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !72
  %i.ec = icmp eq i8 %i.eb, 61
  br i1 %i.ec, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 97, ptr %i.dw, align 8, !tbaa !23
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.ed, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bn:                                            ; preds = %bb.bl
  store i32 65, ptr %i.dw, align 8, !tbaa !23
  store ptr %i.ea, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bo:                                            ; preds = %bb.b
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !72
  %i.eh = icmp eq i8 %i.eg, 61
  br i1 %i.eh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 108, ptr %i.ee, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.ei, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bq:                                            ; preds = %bb.bo
  store i32 83, ptr %i.ee, align 8, !tbaa !23
  store ptr %i.ef, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.br:                                            ; preds = %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  br i1 %i.r, label %bb.bs, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, !prof !68

bb.bs:                                            ; preds = %bb.br
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !73
  %.not = icmp ugt ptr %i.ek, %i.el
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.bs
  %i.em = load i32, ptr %i.ai, align 1
  %i.en = xor i32 %i.em, 1701339941
  %i.eo = getelementptr i8, ptr %i.ai, i64 3
  %i.ep = load i32, ptr %i.eo, align 1
  %i.eq = xor i32 %i.ep, 1936417637
  %i.er = or i32 %i.en, %i.eq
  %i.es = icmp ne i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bt, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.bt:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.ev = call noundef ptr @_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr nonnull @.str.45, i64 7)
  store i32 1, ptr %i.ej, align 8, !tbaa !23
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !66
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  store ptr %i.ey, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.bs, %bb.br
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !72
  %i.fb = icmp eq i8 %i.fa, 61
  br i1 %i.fb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  store i32 98, ptr %i.ej, align 8, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.fc, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bv:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  store i32 67, ptr %i.ej, align 8, !tbaa !23
  store ptr %i.ez, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.bw:                                            ; preds = %bb.b, %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.fd, ptr %i.h, align 8, !tbaa !55
  store i8 1, ptr %i.g, align 8, !tbaa !64
  br label %.backedge

bb.bx:                                            ; preds = %bb.b
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !72
  %i.fg = icmp eq i8 %i.ff, -128
  br i1 %i.fg, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit: ; preds = %bb.bx
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !72
  %i.fj = and i8 %i.fi, -2
  %spec.select.i = icmp eq i8 %i.fj, -88
  br i1 %spec.select.i, label %bb.by, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

bb.by:                                            ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !55
  store i8 1, ptr %i.g, align 8, !tbaa !64
  br label %.backedge

bb.bz:                                            ; preds = %bb.b, %bb.b
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.fl, ptr %i.h, align 8, !tbaa !55
  br label %.backedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.fm = phi ptr [ %i.ai, %.critedge.preheader ], [ %i.fn, %.critedge.backedge ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 3 uses
  store ptr %i.fn, ptr %i.h, align 8, !tbaa !55
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !72
  switch i8 %i.fo, label %.backedge [
    i8 9, label %.critedge.backedge
    i8 32, label %.critedge.backedge
  ]

.critedge.backedge:                               ; preds = %.critedge, %.critedge
  br label %.critedge, !llvm.loop !219

bb.ca:                                            ; preds = %bb.b
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !72
  %i.fr = icmp eq i8 %i.fq, -96
  br i1 %i.fr, label %bb.cb, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.fs, ptr %i.h, align 8, !tbaa !55
  br label %.backedge

bb.cc:                                            ; preds = %bb.b
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !72
  %i.fv = icmp eq i8 %i.fu, -69
  br i1 %i.fv, label %bb.cd, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !72
  %i.fy = icmp eq i8 %i.fx, -65
  br i1 %i.fy, label %bb.ce, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.fz, ptr %i.h, align 8, !tbaa !55
  br label %.backedge

bb.cf:                                            ; preds = %bb.b
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !72
  switch i8 %i.gb, label %bb.ci [
    i8 47, label %bb.cg
    i8 42, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN6hermes6parser7JSLexer15scanLineCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %i.ai)
  br label %.backedge

bb.ch:                                            ; preds = %bb.cf
  %i.gc = call noundef ptr @_ZN6hermes6parser7JSLexer16skipBlockCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %i.ai)
  store ptr %i.gc, ptr %i.h, align 8, !tbaa !55
  br label %.backedge

bb.ci:                                            ; preds = %bb.cf
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.gf = icmp eq i32 %1, 0
  br i1 %i.gf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN6hermes6parser7JSLexer10scanRegExpEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.ck:                                            ; preds = %bb.ci
  %i.gg = load i8, ptr %i.gd, align 1, !tbaa !72
  %i.gh = icmp eq i8 %i.gg, 61
  br i1 %i.gh, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 99, ptr %i.ge, align 8, !tbaa !23
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.gi, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.cm:                                            ; preds = %bb.ck
  store i32 68, ptr %i.ge, align 8, !tbaa !23
  store ptr %i.gd, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.cn:                                            ; preds = %bb.b
  %i.gj = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.gk = icmp eq ptr %i.ai, %i.gj
  br i1 %i.gk, label %bb.co, label %.critedge55

bb.co:                                            ; preds = %bb.cn
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !72
  %i.gn = icmp eq i8 %i.gm, 33
  br i1 %i.gn, label %bb.cp, label %.critedge55, !prof !68

bb.cp:                                            ; preds = %bb.co
  call void @_ZN6hermes6parser7JSLexer15scanLineCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %i.ai)
  br label %.backedge

.critedge55:                                      ; preds = %bb.cn, %bb.co
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.go = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.go, ptr %i.h, align 8, !tbaa !55
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !72  ; 2 uses
  switch i8 %i.gp, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i [
    i8 95, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread.i
    i8 36, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread.i
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i:      ; preds = %.critedge55
  %i.gq = or i8 %i.gp, 32
  %12 = sext i8 %i.gq to i32
  %13 = add nsw i32 %12, -97
  %i.gr = icmp ult i32 %13, 26
  br i1 %i.gr, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread.i, label %bb.cq, !prof !134

_ZN6hermes22isASCIIIdentifierStartEj.exit.thread.i: ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i, %.critedge55, %.critedge55
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN6hermes6parser7JSLexer22scanIdentifierFastPathILNS1_14IdentifierModeE0EEEvPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %i.gs)
  br label %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit.thread

bb.cq:                                            ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i
  %i.gu = call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.gu, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !135 ; 2 uses
  %i.gy = load i32, ptr %i.j, align 8, !tbaa !136 ; 2 uses
  %i.gz = call noundef i32 @_ZN6hermes6parser7JSLexer16scanReservedWordEPKcj(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef %i.gx, i32 noundef %i.gy) ; 3 uses
  %.not.i = icmp eq i32 %i.gz, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %.not.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hb = zext nneg i32 %i.gz to i64
  %i.hc = getelementptr [8 x i8], ptr %0, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 688
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !137
  store i32 %i.gz, ptr %i.gv, align 8, !tbaa !23
  store ptr %i.he, ptr %i.ha, align 8, !tbaa !66
  %i.hf = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %.sroa.0.0.copyload.i.i109 = load ptr, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.hg = load ptr, ptr %i.h, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.hi, align 1, !tbaa !76
  store ptr @.str.413, ptr %2, align 8, !tbaa !72
  store i8 3, ptr %i.hh, align 8, !tbaa !77
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hf, i32 noundef 1, ptr %.sroa.0.0.copyload.i.i109, ptr %.sroa.0.0.copyload.i.i109, ptr %i.hg, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 4, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit.thread

bb.ct:                                            ; preds = %bb.cr
  %i.hj = zext i32 %i.gy to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.hm = call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr %i.gx, i64 %i.hj)
  store ptr %i.hm, ptr %i.ha, align 8, !tbaa !66
  br label %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit.thread

bb.cu:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i8 1, ptr %i.w, align 1, !tbaa !76
  store ptr @.str.76, ptr %3, align 8, !tbaa !72
  store i8 3, ptr %i.v, align 8, !tbaa !77
  %i.hn = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hn, i32 noundef 0, ptr nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 1) #18
  %i.ho = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 316
  %i.hq = load i8, ptr %i.hp, align 4, !tbaa !131, !range !65, !noundef !57
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.cv, label %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit

bb.cv:                                            ; preds = %bb.cu
  %i.hs = load ptr, ptr %i.q, align 8, !tbaa !73
  store ptr %i.hs, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit

_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit.thread: ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread.i, %bb.cs, %bb.ct
  %i.ht = phi ptr [ %i.gt, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread.i ], [ %i.gv, %bb.cs ], [ %i.gv, %bb.ct ]
  store i32 2, ptr %i.ht, align 8, !tbaa !23
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit: ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.backedge

bb.cw:                                            ; preds = %bb.b
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  br i1 %i.r, label %bb.cx, label %bb.cy, !prof !68

bb.cx:                                            ; preds = %bb.cw
  store i32 74, ptr %i.hu, align 8, !tbaa !23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.hv, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.cy:                                            ; preds = %bb.cw
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !72
  switch i8 %i.hx, label %bb.dd [
    i8 61, label %bb.cz
    i8 60, label %bb.da
  ]

bb.cz:                                            ; preds = %bb.cy
  store i32 76, ptr %i.hu, align 8, !tbaa !23
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.hy, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.da:                                            ; preds = %bb.cy
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !72
  %i.ib = icmp eq i8 %i.ia, 61
  br i1 %i.ib, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 100, ptr %i.hu, align 8, !tbaa !23
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.ic, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dc:                                            ; preds = %bb.da
  store i32 71, ptr %i.hu, align 8, !tbaa !23
  store ptr %i.hz, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dd:                                            ; preds = %bb.cy
  store i32 74, ptr %i.hu, align 8, !tbaa !23
  store ptr %i.hw, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.de:                                            ; preds = %bb.b
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.ie = and i32 %1, -2
  %switch = icmp eq i32 %i.ie, 2
  br i1 %switch, label %bb.df, label %bb.dg, !prof !241

bb.df:                                            ; preds = %bb.de
  store i32 75, ptr %i.id, align 8, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.if, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dg:                                            ; preds = %bb.de
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !72
  switch i8 %i.ih, label %bb.do [
    i8 61, label %bb.dh
    i8 62, label %bb.di
  ]

bb.dh:                                            ; preds = %bb.dg
  store i32 77, ptr %i.id, align 8, !tbaa !23
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.ii, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.di:                                            ; preds = %bb.dg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !72
  switch i8 %i.ik, label %bb.dn [
    i8 61, label %bb.dj
    i8 62, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  store i32 101, ptr %i.id, align 8, !tbaa !23
  %i.il = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store ptr %i.il, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dk:                                            ; preds = %bb.di
  %i.im = getelementptr inbounds nuw i8, ptr %i.ai, i64 3 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !72
  %i.io = icmp eq i8 %i.in, 61
  br i1 %i.io, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 102, ptr %i.id, align 8, !tbaa !23
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ip, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dm:                                            ; preds = %bb.dk
  store i32 73, ptr %i.id, align 8, !tbaa !23
  store ptr %i.im, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dn:                                            ; preds = %bb.di
  store i32 72, ptr %i.id, align 8, !tbaa !23
  store ptr %i.ij, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.do:                                            ; preds = %bb.dg
  store i32 75, ptr %i.id, align 8, !tbaa !23
  store ptr %i.ig, ptr %i.h, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.dp:                                            ; preds = %bb.b
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !72  ; 2 uses
  %i.it = add i8 %i.is, -48
  %or.cond56 = icmp ult i8 %i.it, 10
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser7JSLexer29initializeReservedIdentifiersEv:bb.a
  %i.cu = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr nonnull @.str.32, i64 5)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !137
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.cx = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr nonnull @.str.33, i64 6)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !137
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.da = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr nonnull @.str.34, i64 7)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %i.da, ptr %i.db, align 8, !tbaa !137
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dd = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr nonnull @.str.35, i64 5)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !137
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dg = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr nonnull @.str.36, i64 4)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !137
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dj = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr nonnull @.str.37, i64 10)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !137
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dm = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr nonnull @.str.38, i64 9)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !137
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dp = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr nonnull @.str.39, i64 7)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !137
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.ds = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr nonnull @.str.40, i64 7)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !137
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dv = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr nonnull @.str.41, i64 9)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !137
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dy = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr nonnull @.str.42, i64 6)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !137
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.eb = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr nonnull @.str.43, i64 5)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexerC2ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb(ptr noundef nonnull align 8 dereferenceable(1160) initializes((0, 16), (24, 52), (56, 60), (64, 121), (128, 136), (160, 161)) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(464) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.46", align 8 ; 3 uses
  store ptr %2, ptr %0, align 8, !tbaa !143
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !145, !nonnull !57, !align !58
  store ptr %i.d, ptr %i.c, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.f = phi ptr [ %i.c, %bb.b ], [ %4, %bb.a ]
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = zext i1 %6 to i8
  %i.i = zext i1 %5 to i8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load atomic i8, ptr @_ZGVZN6hermes6parserL15getHTMLEntitiesEvE8entities acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN6hermes6parserL15getHTMLEntitiesEv.exit, !prof !147

bb.c:                                             ; preds = %.critedge
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes6parserL15getHTMLEntitiesEvE8entities) #18
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN6hermes6parserL15getHTMLEntitiesEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6hermes6parserL22initializeHTMLEntitiesEv()
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEED2Ev, ptr nonnull @_ZZN6hermes6parserL15getHTMLEntitiesEvE8entities, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes6parserL15getHTMLEntitiesEvE8entities) #18
  br label %_ZN6hermes6parserL15getHTMLEntitiesEv.exit

_ZN6hermes6parserL15getHTMLEntitiesEv.exit:       ; preds = %.critedge, %bb.c, %bb.d
  store ptr @_ZZN6hermes6parserL15getHTMLEntitiesEvE8entities, ptr %i.j, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.i, ptr %i.o, align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %i.p, align 1, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %i.q, align 2, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %i.h, ptr %i.r, align 1, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.t, i8 0, i64 57, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.u, align 8, !tbaa !151
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.v, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.x, ptr %i.w, align 8, !tbaa !135
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.y, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 256, ptr %i.z, align 4, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %i.ac, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 256, ptr %i.ad, align 4, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i8 0, i64 80, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.ag = load i64, ptr %1, align 8, !tbaa !154
  store i64 %i.ag, ptr %7, align 8, !tbaa !154
  store ptr null, ptr %1, align 8, !tbaa !154
  %i.ah = call noundef i32 @_ZN6hermes18SourceErrorManager18addNewSourceBufferESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(464) %i.af, ptr noundef nonnull %7) #18 ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !154   ; 3 uses
  %.not.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZN6hermes6parserL15getHTMLEntitiesEv.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #18, !inline_history !247
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6hermes6parserL15getHTMLEntitiesEv.exit, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  %i.am = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.an = add i32 %i.ah, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !152
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !154
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ah, ptr %i.as, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !24
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !157
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !133
  store <2 x ptr> %i.aw, ptr %i.av, align 8, !tbaa !24
  call void @_ZN6hermes6parser7JSLexer29initializeReservedIdentifiersEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  ret void
}

declare noundef i32 @_ZN6hermes18SourceErrorManager18addNewSourceBufferESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(464), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = phi ptr [ %i.d, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72    ; 5 uses
  switch i8 %i.c, label %"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit" [
    i8 12, label %bb.c
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !55
  br label %bb.b

"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit": ; preds = %bb.b
  %i.e = and i8 %i.c, -33
  %or.cond = icmp eq i8 %i.e, 91
  br i1 %or.cond, label %switch.edge, label %bb.d

bb.d:                                             ; preds = %"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit"
  switch i8 %i.c, label %_ZN6hermes22isASCIIIdentifierStartEj.exit [
    i8 36, label %switch.edge
    i8 95, label %switch.edge
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit:        ; preds = %bb.d
  %i.f = or i8 %i.c, 32
  %1 = sext i8 %i.f to i32
  %2 = add nsw i32 %1, -97
  %i.g = icmp ult i32 %2, 26
  br i1 %i.g, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread, label %bb.f

_ZN6hermes22isASCIIIdentifierStartEj.exit.thread: ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.h = icmp eq i8 %i.c, 105
  br i1 %i.h, label %bb.e, label %switch.edge

bb.e:                                             ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !72
  %i.k = icmp eq i8 %i.j, 110
  br i1 %i.k, label %bb.f, label %switch.edge

bb.f:                                             ; preds = %bb.e, %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.l = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb0EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %0, i64 0) ; 3 uses
  %i.m = and i64 %i.l, 4294967296
  %.not = icmp ne i64 %i.m, 0
  %.sroa.08.0.extract.trunc = trunc i64 %i.l to i32
  %i.n = icmp ult i32 %.sroa.08.0.extract.trunc, 56
  %or.cond19 = and i1 %.not, %i.n
  br i1 %or.cond19, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.f
  %i.o = trunc i64 %i.l to i56
  %switch.cast = and i56 %i.o, 63
  %switch.downshift = lshr i56 -35465847065542654, %switch.cast
  %switch.masked = trunc i56 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %switch.lookup, %bb.d, %bb.d, %bb.f, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread, %bb.e, %"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit"
  %.0 = phi i1 [ true, %"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit" ], [ true, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread ], [ true, %bb.e ], [ false, %bb.f ], [ %switch.masked, %switch.lookup ], [ true, %bb.d ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  tail call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.a, i32 noundef 0, ptr %1, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 1) #18
  %i.b = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.d = load i8, ptr %i.c, align 4, !tbaa !131, !range !65, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.g, ptr %i.h, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.e, true
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.b = load i8, ptr %i.a, align 1, !tbaa !150, !range !65, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %1, i64 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.g = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr %1, i64 %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexer15scanLineCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.d = phi ptr [ %.pre.i, %bb.i ], [ %i.b, %bb.a ] ; 11 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !72    ; 2 uses
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.c
    i8 13, label %.loopexit.sink.split.i
    i8 10, label %.loopexit.sink.split.i
    i8 -30, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.a, align 8, !tbaa !24
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !72
  %i.k = icmp eq i8 %i.j, -128
  br i1 %i.k, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !72
  %i.n = and i8 %i.m, -2
  %spec.select.i.i = icmp eq i8 %i.n, -88
  br i1 %spec.select.i.i, label %.loopexit.sink.split.i, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i: ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i, %bb.e
  %i.o = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.d) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.p = icmp slt i8 %i.e, 0
  br i1 %i.p, label %bb.g, label %bb.h, !prof !68

bb.g:                                             ; preds = %bb.f
  %i.q = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.d) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.r, ptr %i.a, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i, %bb.d
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %bb.b, !llvm.loop !0

.loopexit.sink.split.i:                           ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i, %bb.b, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.b ], [ 3, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.t, align 8, !tbaa !64
  br label %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit

_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit: ; preds = %bb.c, %.loopexit.sink.split.i
  %i.u = phi ptr [ %i.s, %.loopexit.sink.split.i ], [ %i.d, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.v, align 8, !tbaa !55
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !70, !range !65, !noundef !57
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.j:                                             ; preds = %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ad = load i8, ptr %1, align 1, !tbaa !72
  %i.ae = icmp eq i8 %i.ad, 47
  %i.af = select i1 %i.ae, i32 0, i32 2           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !158
  %.not.i37 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.af, ptr %i.ai, align 8, !tbaa !161
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 5 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.m, label %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #20
  unreachable

_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.as = sdiv exact i64 %i.aq, 24                ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser7JSLexer10scanRegExpEv:bb.a
bb.s:                                             ; preds = %.backedge
  %i.cc = or i8 %i.cb, 32
  %i.cd = add i8 %i.cc, -97
  %or.cond.i = icmp ult i8 %i.cd, 26
  %i.ce = add i8 %i.cb, -48
  %or.cond5.i = icmp ult i8 %i.ce, 10
  %or.cond18.i = or i1 %or.cond5.i, %or.cond.i
  br i1 %or.cond18.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %.backedge, %.backedge
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !55
  %i.cg = load i32, ptr %i.f, align 8, !tbaa !136 ; 2 uses
  %i.ch = load i32, ptr %i.h, align 4, !tbaa !141
  %.not.i.i = icmp ult i32 %i.cg, %i.ch
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i, label %bb.u, !prof !142

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 1) #18
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !136
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i: ; preds = %bb.u, %bb.t
  %i.ci = phi i32 [ %.pre.i.i, %bb.u ], [ %i.cg, %bb.t ]
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %i.cm = load i8, ptr %i.ca, align 1
  store i8 %i.cm, ptr %i.cl, align 1
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !136
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 8, !tbaa !136
  br label %.backedge.backedge

bb.v:                                             ; preds = %bb.s
  %i.cp = icmp slt i8 %i.cb, 0
  br i1 %i.cp, label %bb.w, label %bb.y, !prof !68

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !24
  %i.cq = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNKS_6parser7JSLexer9_peekUTF8EPKcEUlRKN4llvh5TwineEE_EEjRS4_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = call noundef zeroext i1 @_ZN6hermes19isUnicodeIDContinueEj(i32 noundef %i.cq)
  br i1 %i.cs, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.pre33 = load ptr, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %.pre34 = load i8, ptr %.pre33, align 1, !tbaa !72
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %i.cq)
  store ptr %i.cr, ptr %i.b, align 8, !tbaa !55
  br label %.backedge.backedge

bb.y:                                             ; preds = %._crit_edge, %bb.v
  %i.ct = phi i8 [ %.pre34, %._crit_edge ], [ %i.cb, %bb.v ]
  %i.cu = phi ptr [ %.pre33, %._crit_edge ], [ %i.ca, %bb.v ] ; 2 uses
  %i.cv = icmp eq i8 %i.ct, 92
  br i1 %i.cv, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cw, ptr %i.b, align 8, !tbaa !55
  %i.cx = load i32, ptr %i.f, align 8, !tbaa !136 ; 2 uses
  %i.cy = load i32, ptr %i.h, align 4, !tbaa !141
  %.not.i18 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i18, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit20, label %bb.aa, !prof !142

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 1) #18
  %.pre.i19 = load i32, ptr %i.f, align 8, !tbaa !136
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit20

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit20: ; preds = %bb.z, %bb.aa
  %i.cz = phi i32 [ %.pre.i19, %bb.aa ], [ %i.cx, %bb.z ]
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  %i.dd = load i8, ptr %i.cu, align 1
  store i8 %i.dd, ptr %i.dc, align 1
  %i.de = load i32, ptr %i.f, align 8, !tbaa !136
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.f, align 8, !tbaa !136
  br i1 %.011, label %.backedge.backedge, label %bb.ab

.backedge.backedge:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit20, %bb.ab, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit22, %bb.x, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i
  %.011.be = phi i1 [ false, %bb.x ], [ false, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i ], [ true, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit22 ], [ true, %bb.ab ], [ false, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit20 ]
  br label %.backedge, !llvm.loop !260

bb.ab:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit20
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !72
  %i.di = icmp eq i8 %i.dh, 117
  br i1 %i.di, label %bb.ac, label %.backedge.backedge

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i8 1, ptr %i.bz, align 1, !tbaa !76
  store ptr @.str.81, ptr %3, align 8, !tbaa !72
  store i8 3, ptr %i.by, align 8, !tbaa !77
  %i.dj = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dj, i32 noundef 0, ptr nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 1) #18
  %i.dk = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 316
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !131, !range !65, !noundef !57
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ad, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit22

bb.ad:                                            ; preds = %bb.ac
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !73
  store ptr %i.do, ptr %i.b, align 8, !tbaa !55
  br label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit22

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit22: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.backedge.backedge

bb.ae:                                            ; preds = %bb.y
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !135 ; 2 uses
  %i.dq = load i32, ptr %i.f, align 8, !tbaa !136
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = load i8, ptr %i.br, align 1, !tbaa !150, !range !65, !noundef !57
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.af, label %bb.ag, !prof !68

bb.af:                                            ; preds = %bb.ae
  %i.du = call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %i.dp, i64 %i.dr)
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26

bb.ag:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dx = call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr %i.dp, i64 %i.dr)
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26

_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26: ; preds = %bb.af, %bb.ag
  %.0.i25 = phi ptr [ %i.du, %bb.af ], [ %i.dx, %bb.ag ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !145, !nonnull !57, !align !58 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !171 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !177
  %i.ed = zext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !178
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !180
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !181 ; 2 uses
  %i.ek = add i64 %i.eh, 7
  %i.el = add i64 %i.ek, %i.ej
  %i.em = and i64 %i.el, 7
  %.neg30 = add i64 %i.ej, 7
  %i.en = sub i64 %.neg30, %i.em                  ; 3 uses
  store i64 %i.en, ptr %i.ei, align 8, !tbaa !181
  %i.eo = add i64 %i.en, 16                       ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 262144
  br i1 %i.ep, label %.critedge.i.i, label %bb.ah, !prof !68

.critedge.i.i:                                    ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26
  %i.eq = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 noundef 16, i64 noundef 8) #18
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_6parser13RegExpLiteralEEEPT_mm.exit

bb.ah:                                            ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26
  %i.er = add i64 %i.en, %i.eh
  %i.es = inttoptr i64 %i.er to ptr
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !181
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_6parser13RegExpLiteralEEEPT_mm.exit

_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_6parser13RegExpLiteralEEEPT_mm.exit: ; preds = %.critedge.i.i, %bb.ah
  %.0.i.i = phi ptr [ %i.eq, %.critedge.i.i ], [ %i.es, %bb.ah ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i17, ptr %.0.i.i, align 8, !tbaa !262
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %.0.i25, ptr %i.eu, align 8, !tbaa !263
  store i32 113, ptr %i.et, align 8, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.0.i.i, ptr %i.ev, align 8, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !55
  %i.d = load i8, ptr %i.c, align 1, !tbaa !72    ; 2 uses
  switch i8 %i.d, label %_ZN6hermes22isASCIIIdentifierStartEj.exit [
    i8 95, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
    i8 36, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit:        ; preds = %bb.a
  %i.e = or i8 %i.d, 32
  %2 = sext i8 %i.e to i32
  %3 = add nsw i32 %2, -97
  %i.f = icmp ult i32 %3, 26
  br i1 %i.f, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread, label %bb.b, !prof !134

_ZN6hermes22isASCIIIdentifierStartEj.exit.thread: ; preds = %bb.a, %bb.a, %_ZN6hermes22isASCIIIdentifierStartEj.exit
  tail call void @_ZN6hermes6parser7JSLexer22scanIdentifierFastPathILNS1_14IdentifierModeE0EEEvPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %i.c)
  br label %bb.e

bb.b:                                             ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.g = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes6parser7JSLexer19scanIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.i, align 1, !tbaa !76
  store ptr @.str.76, ptr %1, align 8, !tbaa !72
  store i8 3, ptr %i.h, align 8, !tbaa !77
  %i.j = call noundef zeroext i1 @_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(18) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.k, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvh::SmallString.64", align 8 ; 15 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 29 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 16 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !72
  %i.e = icmp ne i8 %i.d, 48                      ; 2 uses
  br i1 %i.e, label %.split.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !72    ; 2 uses
  %i.h = or i8 %i.g, 32                           ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 120, label %.split.us.preheader
    i8 111, label %bb.c
    i8 98, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.preheader.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.preheader.sink.split

bb.e:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.g, 46
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = icmp eq i8 %i.h, 101
  br i1 %i.m, label %bb.h, label %.split.preheader.sink.split

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.p

.split.preheader.sink.split:                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.f, %bb.g ] ; 2 uses
  %.0211.ph.ph = phi i32 [ 2, %bb.d ], [ 8, %bb.c ], [ 8, %bb.g ]
  %.0207.ph.ph = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ]
  %.087.ph.ph = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.c, %bb.g ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !55
  br label %.split.preheader

.split.preheader:                                 ; preds = %.split.preheader.sink.split, %bb.a
  %.promoted.ph = phi ptr [ %i.c, %bb.a ], [ %.sink, %.split.preheader.sink.split ] ; 3 uses
  %.0211.ph = phi i32 [ 10, %bb.a ], [ %.0211.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %.0207.ph = phi i8 [ 0, %bb.a ], [ %.0207.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %.087.ph = phi ptr [ %i.c, %bb.a ], [ %.087.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %i.o = load i8, ptr %.promoted.ph, align 1, !tbaa !72 ; 3 uses
  %16 = sext i8 %i.o to i32
  %isdigittmp363 = add nsw i32 %16, -48
  %isdigit364 = icmp ult i32 %isdigittmp363, 10
  %.old365 = icmp eq i8 %i.o, 95                  ; 2 uses
  %or.cond265366 = or i1 %isdigit364, %.old365
  br i1 %or.cond265366, label %.critedge, label %.split244.us

.split.us.preheader:                              ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us
  %.sink348.a = phi ptr [ %i.p, %.split.us.preheader ], [ %i.y, %.critedge.us ] ; 4 uses
  %.090.us = phi i8 [ 0, %.split.us.preheader ], [ %i.x, %.critedge.us ] ; 2 uses
  store ptr %.sink348.a, ptr %i.b, align 8, !tbaa !55
  %i.q = load i8, ptr %.sink348.a, align 1, !tbaa !72 ; 4 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %isdigittmp.us = add nsw i32 %i.r, -48
  %isdigit.us = icmp ult i32 %isdigittmp.us, 10
  br i1 %isdigit.us, label %.critedge.us, label %bb.i

bb.i:                                             ; preds = %.split.us
  %i.s = or i32 %i.r, 32
  %i.t = add nsw i32 %i.s, -97
  %or.cond128.us = icmp ult i32 %i.t, 6
  %i.u = icmp eq i8 %i.q, 95
  %or.cond238.us = or i1 %i.u, %or.cond128.us
  br i1 %or.cond238.us, label %.critedge.us, label %.split244.us

.critedge.us:                                     ; preds = %bb.i, %.split.us
  %i.v = icmp eq i8 %i.q, 95
  %i.w = zext i1 %i.v to i8
  %i.x = or i8 %.090.us, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sink348.a, i64 1
  br label %.split.us, !llvm.loop !265

.critedge:                                        ; preds = %.split.preheader, %.critedge
  %.old368 = phi i1 [ %.old, %.critedge ], [ %.old365, %.split.preheader ]
  %.090367 = phi i8 [ %i.ab, %.critedge ], [ 0, %.split.preheader ]
  %i.z = phi ptr [ %i.ac, %.critedge ], [ %.promoted.ph, %.split.preheader ]
  %i.aa = zext i1 %.old368 to i8
  %i.ab = or i8 %.090367, %i.aa                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 4 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !55
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !72  ; 3 uses
  %17 = sext i8 %i.ad to i32
  %isdigittmp = add nsw i32 %17, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %.old = icmp eq i8 %i.ad, 95                    ; 2 uses
  %or.cond265 = or i1 %isdigit, %.old
  br i1 %or.cond265, label %.critedge, label %.split244.us, !llvm.loop !265

.split244.us:                                     ; preds = %bb.i, %.critedge, %.split.preheader
  %.087313 = phi ptr [ %.087.ph, %.split.preheader ], [ %.087.ph, %.critedge ], [ %i.p, %bb.i ] ; 4 uses
  %.0207311 = phi i8 [ %.0207.ph, %.split.preheader ], [ %.0207.ph, %.critedge ], [ 0, %bb.i ] ; 4 uses
  %.0211309 = phi i32 [ %.0211.ph, %.split.preheader ], [ %.0211.ph, %.critedge ], [ 16, %bb.i ] ; 4 uses
  %.us-phi = phi i8 [ 0, %.split.preheader ], [ %i.ab, %.critedge ], [ %.090.us, %bb.i ] ; 4 uses
  %.us-phi245 = phi ptr [ %.promoted.ph, %.split.preheader ], [ %i.ac, %.critedge ], [ %.sink348.a, %bb.i ] ; 2 uses
  %.us-phi246 = phi i8 [ %i.o, %.split.preheader ], [ %i.ad, %.critedge ], [ %i.q, %bb.i ] ; 2 uses
  %i.ae = trunc nuw i8 %.0207311 to i1
  %or.cond = or i1 %i.e, %i.ae
  br i1 %or.cond, label %bb.j, label %.loopexit239

bb.j:                                             ; preds = %.split244.us
  %i.af = icmp eq i8 %.us-phi246, 46
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.us-phi245, i64 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ah = and i8 %.us-phi246, -33
  %i.ai = icmp eq i8 %i.ah, 69
  br i1 %i.ai, label %bb.m, label %.loopexit239

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.us-phi245, i64 1
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %bb.f
  %.1212 = phi i32 [ 10, %bb.f ], [ %.0211309, %bb.k ] ; 2 uses
  %.1208 = phi i8 [ 0, %bb.f ], [ %.0207311, %bb.k ] ; 2 uses
  %storemerge = phi ptr [ %i.l, %bb.f ], [ %i.ag, %bb.k ] ; 4 uses
  %.191 = phi i8 [ 0, %bb.f ], [ %.us-phi, %bb.k ] ; 2 uses
  %.188 = phi ptr [ %i.c, %bb.f ], [ %.087313, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !55
  %i.ak = load i8, ptr %storemerge, align 1, !tbaa !72 ; 3 uses
  %18 = sext i8 %i.ak to i32
  %isdigittmp111249 = add nsw i32 %18, -48
  %isdigit112250 = icmp ult i32 %isdigittmp111249, 10
  %i.al = icmp eq i8 %i.ak, 95                    ; 2 uses
  %or.cond129251 = or i1 %i.al, %isdigit112250
  br i1 %or.cond129251, label %.critedge4, label %._crit_edge

.critedge4:                                       ; preds = %bb.n, %.critedge4
  %i.am = phi i1 [ %i.ar, %.critedge4 ], [ %i.al, %bb.n ]
  %.292253 = phi i8 [ %i.ao, %.critedge4 ], [ %.191, %bb.n ]
  %storemerge110252 = phi ptr [ %i.ap, %.critedge4 ], [ %storemerge, %bb.n ]
  %i.an = zext i1 %i.am to i8
  %i.ao = or i8 %.292253, %i.an                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge110252, i64 1 ; 4 uses
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !55
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !72  ; 3 uses
  %19 = sext i8 %i.aq to i32
  %isdigittmp111 = add nsw i32 %19, -48
  %isdigit112 = icmp ult i32 %isdigittmp111, 10
  %i.ar = icmp eq i8 %i.aq, 95                    ; 2 uses
  %or.cond129 = or i1 %i.ar, %isdigit112
  br i1 %or.cond129, label %.critedge4, label %._crit_edge, !llvm.loop !266

._crit_edge:                                      ; preds = %.critedge4, %bb.n
  %storemerge110.lcssa = phi ptr [ %storemerge, %bb.n ], [ %i.ap, %.critedge4 ]
  %.292.lcssa = phi i8 [ %.191, %bb.n ], [ %i.ao, %.critedge4 ] ; 2 uses
  %.lcssa240 = phi i8 [ %i.ak, %bb.n ], [ %i.aq, %.critedge4 ]
  %i.as = and i8 %.lcssa240, -33
  %i.at = icmp eq i8 %i.as, 69
  br i1 %i.at, label %bb.o, label %.loopexit239

bb.o:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge110.lcssa, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.h
  %.sink349 = phi ptr [ %i.au, %bb.o ], [ %i.aj, %bb.m ], [ %i.n, %bb.h ] ; 4 uses
  %.2213 = phi i32 [ %.1212, %bb.o ], [ %.0211309, %bb.m ], [ 10, %bb.h ] ; 2 uses
  %.2209 = phi i8 [ %.1208, %bb.o ], [ %.0207311, %bb.m ], [ 0, %bb.h ] ; 2 uses
  %.393 = phi i8 [ %.292.lcssa, %bb.o ], [ %.us-phi, %bb.m ], [ 0, %bb.h ]
  %.289 = phi ptr [ %.188, %bb.o ], [ %.087313, %bb.m ], [ %i.c, %bb.h ] ; 2 uses
  store ptr %.sink349, ptr %i.b, align 8, !tbaa !55
  %i.av = load i8, ptr %.sink349, align 1, !tbaa !72 ; 2 uses
  switch i8 %i.av, label %bb.r [
    i8 43, label %bb.q
    i8 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink349, i64 1 ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !55
  %.pre = load i8, ptr %i.aw, align 1, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ax = phi i8 [ %i.av, %bb.p ], [ %.pre, %bb.q ] ; 2 uses
  %.promoted256 = phi ptr [ %.sink349, %bb.p ], [ %i.aw, %bb.q ]
  %20 = sext i8 %i.ax to i32
  %isdigittmp113 = add nsw i32 %20, -48
  %isdigit114 = icmp ult i32 %isdigittmp113, 10
  br i1 %isdigit114, label %.critedge6, label %.loopexit239.thread

.critedge6:                                       ; preds = %bb.r, %.critedge6
  %i.ay = phi i8 [ %i.be, %.critedge6 ], [ %i.ax, %bb.r ]
  %i.az = phi ptr [ %i.bd, %.critedge6 ], [ %.promoted256, %bb.r ]
  %.494 = phi i8 [ %i.bc, %.critedge6 ], [ %.393, %bb.r ]
  %i.ba = icmp eq i8 %i.ay, 95
  %i.bb = zext i1 %i.ba to i8
  %i.bc = or i8 %.494, %i.bb                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !55
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !72  ; 3 uses
  %21 = sext i8 %i.be to i32
  %isdigittmp115 = add nsw i32 %21, -48
  %isdigit116 = icmp ult i32 %isdigittmp115, 10
  %i.bf = icmp eq i8 %i.be, 95
  %or.cond130 = or i1 %i.bf, %isdigit116
  br i1 %or.cond130, label %.critedge6, label %.loopexit239, !llvm.loop !267

.loopexit239:                                     ; preds = %.critedge6, %._crit_edge, %.split244.us, %bb.l
  %.3214 = phi i32 [ %.0211309, %.split244.us ], [ %.0211309, %bb.l ], [ %.1212, %._crit_edge ], [ %.2213, %.critedge6 ] ; 9 uses
  %.3210 = phi i8 [ 0, %.split244.us ], [ %.0207311, %bb.l ], [ %.1208, %._crit_edge ], [ %.2209, %.critedge6 ] ; 3 uses
  %.5 = phi i8 [ %.us-phi, %.split244.us ], [ %.us-phi, %bb.l ], [ %.292.lcssa, %._crit_edge ], [ %i.bc, %.critedge6 ] ; 3 uses
  %.3 = phi ptr [ %.087313, %.split244.us ], [ %.087313, %bb.l ], [ %.188, %._crit_edge ], [ %.289, %.critedge6 ] ; 18 uses
  %.0 = phi i1 [ false, %.split244.us ], [ false, %bb.l ], [ true, %._crit_edge ], [ true, %.critedge6 ] ; 3 uses
  %i.bg = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bg, label %bb.s, label %bb.ag

.loopexit239.thread:                              ; preds = %bb.r
  %i.bh = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bh, label %bb.s, label %..thread224_crit_edge

bb.s:                                             ; preds = %.loopexit239.thread, %.loopexit239
  %.0330 = phi i1 [ true, %.loopexit239.thread ], [ %.0, %.loopexit239 ]
  %.3327 = phi ptr [ %.289, %.loopexit239.thread ], [ %.3, %.loopexit239 ] ; 5 uses
  %.3210324 = phi i8 [ %.2209, %.loopexit239.thread ], [ %.3210, %.loopexit239 ]
  %.3214322 = phi i32 [ %.2213, %.loopexit239.thread ], [ %.3214, %.loopexit239 ] ; 2 uses
  tail call void @_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !55  ; 12 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.c to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  br i1 %.0330, label %.thread224, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = trunc nuw i8 %.3210324 to i1
  br i1 %i.bm, label %bb.u, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread217

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp eq i64 %i.bl, 2
  br i1 %i.bn, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.u
  %i.bo = load i16, ptr %i.c, align 1
  %i.bp = icmp ne i16 %i.bo, 28208
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread217, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit.thread217:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !136
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %_ZNK4llvh9StringRef6equalsES0_.exit136, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit136:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread217
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !135
  %lhsc = load i8, ptr %i.bw, align 1
  %i.bx = icmp eq i8 %lhsc, 110
  br i1 %i.bx, label %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit136.thread219: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136
  %i.by = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 3 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %.3327 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %.not117 = icmp eq ptr %i.by, %.3327
  br i1 %.not117, label %.thread224, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219
  %i.cc = getelementptr inbounds nuw i8, ptr %.3327, i64 %i.cb
  %i.cd = add nuw nsw i32 %.3214322, 48           ; 2 uses
  %i.ce = add nuw nsw i32 %.3214322, 87           ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 -1
  %i.cg = load i8, ptr %.3327, align 1, !tbaa !72 ; 3 uses
  %i.ch = add i8 %i.cg, -48
  %or.cond.peel.i = icmp ult i8 %i.ch, 10
  %i.ci = zext nneg i8 %i.cg to i32
  %i.cj = icmp sgt i32 %i.cd, %i.ci
  %or.cond33.peel.i = select i1 %or.cond.peel.i, i1 %i.cj, i1 false
  br i1 %or.cond33.peel.i, label %.critedge.peel.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ck = or i8 %i.cg, 32                         ; 2 uses
  %i.cl = icmp sgt i8 %i.ck, 96
  %i.cm = zext nneg i8 %i.ck to i32
  %i.cn = icmp sgt i32 %i.ce, %i.cm
  %or.cond50.peel.i = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond50.peel.i, label %.critedge.peel.i, label %.thread224

.critedge.peel.i:                                 ; preds = %bb.v, %.lr.ph.i
  %.not.peel.i = icmp samesign eq i64 %i.cb, 1
  br i1 %.not.peel.i, label %.critedge132, label %.peel.next.i

.peel.next.i:                                     ; preds = %.critedge.peel.i
  %i.co = getelementptr inbounds nuw i8, ptr %.3327, i64 1
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %.peel.next.i
  %.02441.i = phi ptr [ %i.co, %.peel.next.i ], [ %i.db, %.critedge.i ] ; 4 uses
  %i.cp = load i8, ptr %.02441.i, align 1, !tbaa !72 ; 4 uses
  %i.cq = add i8 %i.cp, -48
  %or.cond.i = icmp ult i8 %i.cq, 10
  %i.cr = zext nneg i8 %i.cp to i32
  %i.cs = icmp sgt i32 %i.cd, %i.cr
  %or.cond33.i = select i1 %or.cond.i, i1 %i.cs, i1 false
  br i1 %or.cond33.i, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = or i8 %i.cp, 32                         ; 2 uses
  %i.cu = icmp sgt i8 %i.ct, 96
  %i.cv = zext nneg i8 %i.ct to i32
  %i.cw = icmp sgt i32 %i.ce, %i.cv
  %or.cond50.i = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond50.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = icmp ne i8 %i.cp, 95
  %i.cy = icmp eq ptr %.02441.i, %i.cf
  %or.cond54.i = select i1 %i.cx, i1 true, i1 %i.cy, !prof !182
  br i1 %or.cond54.i, label %.thread224, label %bb.z, !prof !182

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %.02441.i, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !72
  %.not30.i = icmp eq i8 %i.da, 95
  br i1 %.not30.i, label %.thread224, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z, %bb.x, %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.02441.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.db, %i.by
  br i1 %.not.i, label %.critedge132, label %bb.w, !llvm.loop !268

.critedge132:                                     ; preds = %.critedge.i, %.critedge.peel.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  store i32 0, ptr %i.dd, align 8, !tbaa !136
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.df = load i32, ptr %i.de, align 4, !tbaa !141
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp ugt i64 %i.bl, %i.dg
  br i1 %i.dh, label %.thread.i, label %bb.aa

.thread.i:                                        ; preds = %.critedge132
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.dc, ptr noundef nonnull %i.di, i64 noundef %i.bl, i64 noundef 1) #18
  %.pre7.pre.i.i = load i32, ptr %i.dd, align 8, !tbaa !136
  %i.dj = zext i32 %.pre7.pre.i.i to i64
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge132
  %.not.i.i.i = icmp eq ptr %i.bi, %i.c
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %.pre7.i4.i = phi i64 [ %i.dj, %.thread.i ], [ 0, %bb.aa ]
  %i.dk = load ptr, ptr %i.dc, align 8, !tbaa !135
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.pre7.i4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.c, i64 %i.bl, i1 false)
  %.pre.i.i = load i32, ptr %i.dd, align 8, !tbaa !136
  br label %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit

_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit: ; preds = %bb.aa, %bb.ab
  %i.dm = phi i32 [ 0, %bb.aa ], [ %.pre.i.i, %bb.ab ]
  %i.dn = trunc i64 %i.bl to i32
  %i.do = add i32 %i.dm, %i.dn                    ; 2 uses
  store i32 %i.do, ptr %i.dd, align 8, !tbaa !136
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !135 ; 2 uses
  %i.dr = zext i32 %i.do to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !150, !range !65, !noundef !57
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ac, label %bb.ad, !prof !68

bb.ac:                                            ; preds = %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit
  %i.dv = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %i.dq, i64 %i.dr)
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.dy = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr %i.dq, i64 %i.dr)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i141 = phi ptr [ %i.dv, %bb.ac ], [ %i.dy, %bb.ad ]
  store i32 115, ptr %i.dp, align 8, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i141, ptr %i.dz, align 8, !tbaa !184
  br label %bb.cb

..thread224_crit_edge:                            ; preds = %.loopexit239.thread
  %.pre282 = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %.thread224

.thread224:                                       ; preds = %bb.z, %bb.y, %..thread224_crit_edge, %_ZNK4llvh9StringRef6equalsES0_.exit136, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.s, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, %bb.u, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217, %bb.v
  %i.ea = phi ptr [ %.pre282, %..thread224_crit_edge ], [ %i.bi, %bb.v ], [ %i.bi, %_ZNK4llvh9StringRef6equalsES0_.exit136 ], [ %i.bi, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.bi, %bb.s ], [ %i.bi, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219 ], [ %i.bi, %bb.u ], [ %i.bi, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217 ], [ %i.bi, %bb.y ], [ %i.bi, %bb.z ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eb, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.ed, align 1, !tbaa !76
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser7JSLexer17advanceInJSXChildEv:bb.a
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !138, !nonnull !57, !align !58
  %i.ci = call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr %i.ca, i64 %i.cc)
  br label %.thread26

.thread26:                                        ; preds = %bb.x, %bb.w
  %.0.i15 = phi ptr [ %i.cf, %bb.w ], [ %i.ci, %bb.x ]
  store i32 114, ptr %i.c, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i, ptr %i.cj, align 8, !tbaa !188
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i15, ptr %i.ck, align 8, !tbaa !184
  %.pre28 = load ptr, ptr %i.d, align 8, !tbaa !55
  br label %bb.ac

bb.y:                                             ; preds = %bb.i, %bb.j, %bb.s
  %i.cl = load i32, ptr %i.n, align 8, !tbaa !136 ; 2 uses
  %i.cm = load i32, ptr %i.s, align 4, !tbaa !141
  %.not.i = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.z, !prof !142

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !136
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.y, %bb.z
  %i.cn = phi i32 [ %.pre.i, %bb.z ], [ %i.cl, %bb.y ]
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !135
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  store i8 %i.x, ptr %i.cq, align 1
  %i.cr = load i32, ptr %i.n, align 8, !tbaa !136
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.n, align 8, !tbaa !136
  %i.ct = load i32, ptr %i.p, align 8, !tbaa !136 ; 2 uses
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !141
  %.not.i17 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i17, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19, label %bb.aa, !prof !142

bb.aa:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 1) #18
  %.pre.i18 = load i32, ptr %i.p, align 8, !tbaa !136
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %bb.aa
  %i.cv = phi i32 [ %.pre.i18, %bb.aa ], [ %i.ct, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !135
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 %i.x, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.p, align 8, !tbaa !136
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.p, align 8, !tbaa !136
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %i.d, align 8, !tbaa !55
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19, %bb.h
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !55
  br label %bb.g

bb.ac:                                            ; preds = %.thread26, %bb.b, %bb.c, %bb.e
  %i.dd = phi ptr [ %.pre28, %.thread26 ], [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.e, %bb.e ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.df, align 8, !tbaa !24
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !67, !range !65, !noundef !57
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ad, label %_ZN6hermes6parser7JSLexer11finishTokenEPKc.exit, !prof !68

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6hermes6parser7JSLexer17storeCurrentTokenEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %_ZN6hermes6parser7JSLexer11finishTokenEPKc.exit

_ZN6hermes6parser7JSLexer11finishTokenEPKc.exit:  ; preds = %bb.ac, %bb.ad
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEjRN4llvh15SmallVectorImplIcEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.c, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, 983040
  %i.e = lshr i32 %i.d, 10
  %i.f = and i32 %i.e, 1023
  %i.g = or disjoint i32 %i.f, 55296
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.g) #18
  %i.h = and i32 %0, 1023
  %i.i = or disjoint i32 %i.h, 56320
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.i, %bb.b ], [ %0, %bb.a ]
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sink) #18
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !141
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = sub nsw i64 %i.p, %i.s
  %i.u = icmp ugt i64 %i.m, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add i64 %i.m, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef 1) #18
  %.pre7.pre.i = load i32, ptr %i.q, align 8, !tbaa !136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %i.j
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !135
  %i.y = zext i32 %.pre7.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.a, i64 %i.m, i1 false)
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !136
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit: ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ %.pre7.i, %bb.e ], [ %.pre.i, %bb.f ]
  %i.ab = trunc i64 %i.m to i32
  %i.ac = add i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes6parser7JSLexer25consumeHTMLEntityOptionalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !72
  %i.f = icmp eq i8 %i.e, 35
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.ptr120.a = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.g = load i8, ptr %.ptr120.a, align 1, !tbaa !72
  %i.h = icmp eq i8 %i.g, 120
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  store ptr %.ptr120.a, ptr %i.b, align 8, !tbaa !55
  %.03188 = load i8, ptr %.ptr120.a, align 1, !tbaa !72 ; 2 uses
  %i.i = icmp eq i8 %.03188, 59
  br i1 %i.i, label %.thread60, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %.ptr124.a = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %.ptr124.a, ptr %i.b, align 8, !tbaa !55
  %.03393 = load i8, ptr %.ptr124.a, align 1, !tbaa !72 ; 2 uses
  %i.j = icmp eq i8 %.03393, 59
  br i1 %i.j, label %.thread60, label %.lr.ph98

bb.d:                                             ; preds = %bb.g
  %.033.in95.add = add nuw nsw i64 %.033.in95.idx, 1 ; 4 uses
  %.ptr123.a = getelementptr inbounds nuw i8, ptr %i.c, i64 %.033.in95.add ; 2 uses
  store ptr %.ptr123.a, ptr %i.b, align 8, !tbaa !55
  %.033 = load i8, ptr %.ptr123.a, align 1, !tbaa !72 ; 2 uses
  %i.k = icmp eq i8 %.033, 59
  br i1 %i.k, label %._crit_edge99, label %.lr.ph98, !llvm.loop !287

._crit_edge99:                                    ; preds = %bb.d
  %.not42 = icmp eq i64 %.033.in95.add, 3
  br i1 %.not42, label %.thread60, label %.critedge

.critedge:                                        ; preds = %._crit_edge99
  %.ptr122 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.033.in95.add
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr122, i64 1
  store ptr %i.l, ptr %i.b, align 8, !tbaa !55
  br label %bb.ag

.lr.ph98:                                         ; preds = %bb.c, %bb.d
  %.03396 = phi i8 [ %.033, %bb.d ], [ %.03393, %bb.c ] ; 3 uses
  %.033.in95.idx = phi i64 [ %.033.in95.add, %bb.d ], [ 3, %bb.c ]
  %.05794 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %2 = sext i8 %.03396 to i32
  %isdigittmp43 = add nsw i32 %2, -48
  %isdigit44 = icmp ult i32 %isdigittmp43, 10
  br i1 %isdigit44, label %3, label %bb.e

3:                                                ; preds = %.lr.ph98
  %4 = add nsw i8 %.03396, -48
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph98
  %i.m = or i8 %.03396, 32                        ; 2 uses
  %i.n = add i8 %i.m, -97
  %or.cond = icmp ult i8 %i.n, 6
  br i1 %or.cond, label %bb.f, label %.thread60

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i8 %i.m, -87
  br label %bb.g

bb.g:                                             ; preds = %3, %bb.f
  %.134 = phi i8 [ %4, %3 ], [ %i.o, %bb.f ]
  %i.p = shl i32 %.05794, 4
  %5 = sext i8 %.134 to i32
  %i.q = add nsw i32 %i.p, %5                     ; 3 uses
  %i.r = icmp ugt i32 %i.q, 1114111
  br i1 %i.r, label %.thread60, label %bb.d

bb.h:                                             ; preds = %bb.i
  %.031.in90.add = add nuw nsw i64 %.031.in90.idx, 1 ; 4 uses
  %.ptr119 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.031.in90.add ; 2 uses
  store ptr %.ptr119, ptr %i.b, align 8, !tbaa !55
  %.031 = load i8, ptr %.ptr119, align 1, !tbaa !72 ; 2 uses
  %i.s = icmp eq i8 %.031, 59
  br i1 %i.s, label %._crit_edge, label %.lr.ph, !llvm.loop !288

._crit_edge:                                      ; preds = %bb.h
  %.not = icmp eq i64 %.031.in90.add, 2
  br i1 %.not, label %.thread60, label %.critedge46

.critedge46:                                      ; preds = %._crit_edge
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.031.in90.add
  %i.t = getelementptr inbounds nuw i8, ptr %.ptr, i64 1
  store ptr %i.t, ptr %i.b, align 8, !tbaa !55
  br label %bb.ag

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.03191 = phi i8 [ %.031, %bb.h ], [ %.03188, %.preheader ]
  %.031.in90.idx = phi i64 [ %.031.in90.add, %bb.h ], [ 2, %.preheader ]
  %.05689 = phi i32 [ %i.w, %bb.h ], [ 0, %.preheader ]
  %i.u = sext i8 %.03191 to i32
  %isdigittmp40 = add nsw i32 %i.u, -48           ; 2 uses
  %isdigit41 = icmp ult i32 %isdigittmp40, 10
  br i1 %isdigit41, label %bb.i, label %.thread60

bb.i:                                             ; preds = %.lr.ph
  %i.v = mul i32 %.05689, 10
  %i.w = add nuw nsw i32 %isdigittmp40, %i.v      ; 3 uses
  %i.x = icmp ugt i32 %i.w, 1114111
  br i1 %i.x, label %.thread60, label %bb.h

bb.j:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !55
  %i.y = load i8, ptr %i.d, align 1, !tbaa !72    ; 2 uses
  %i.z = icmp eq i8 %i.y, 59
  br i1 %i.z, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.j
  %.086.lcssa = phi i64 [ 0, %bb.j ], [ 1, %bb.o ], [ 2, %bb.q ], [ 3, %bb.s ], [ 4, %bb.u ], [ 5, %bb.w ], [ 6, %bb.y ], [ 7, %bb.aa ], [ 8, %bb.ac ] ; 2 uses
  %.lcssa104 = phi ptr [ %i.d, %bb.j ], [ %i.aw, %bb.o ], [ %i.bc, %bb.q ], [ %i.bi, %bb.s ], [ %i.bo, %bb.u ], [ %i.bu, %bb.w ], [ %i.ca, %bb.y ], [ %i.cg, %bb.aa ], [ %i.cm, %bb.ac ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !289, !nonnull !57, !align !58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.ac = sub nsw i64 0, %.086.lcssa
  %i.ad = getelementptr inbounds i8, ptr %.lcssa104, i64 %i.ac
  store ptr %i.ad, ptr %1, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.086.lcssa, ptr %i.ae, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.af = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !190
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !191
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ak
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit: ; preds = %bb.l, %bb.m
  %.pn5.i = phi ptr [ %i.ag, %bb.l ], [ %i.al, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !289, !nonnull !57, !align !58 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !191
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.aq
  %i.as = icmp eq ptr %.pn5.i, %i.ar
  br i1 %i.as, label %.thread60, label %bb.af

bb.n:                                             ; preds = %bb.j
  %i.at = sext i8 %i.y to i32                     ; 2 uses
  %i.au = or i32 %i.at, 32
  %i.av = add nsw i32 %i.au, -97
  %or.cond47 = icmp ult i32 %i.av, 26
  %isdigittmp = add nsw i32 %i.at, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %or.cond48 = select i1 %or.cond47, i1 true, i1 %isdigit
  br i1 %or.cond48, label %bb.o, label %.thread60

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !55
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !72  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 59
  br i1 %i.ay, label %bb.k, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = sext i8 %i.ax to i32                    ; 2 uses
  %i.ba = or i32 %i.az, 32
  %i.bb = add nsw i32 %i.ba, -97
  %or.cond47.1 = icmp ult i32 %i.bb, 26
  %isdigittmp.1 = add nsw i32 %i.az, -48
  %isdigit.1 = icmp ult i32 %isdigittmp.1, 10
  %or.cond48.1 = select i1 %or.cond47.1, i1 true, i1 %isdigit.1
  br i1 %or.cond48.1, label %bb.q, label %.thread60

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !55
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !72  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 59
  br i1 %i.be, label %bb.k, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = sext i8 %i.bd to i32                    ; 2 uses
  %i.bg = or i32 %i.bf, 32
  %i.bh = add nsw i32 %i.bg, -97
  %or.cond47.2 = icmp ult i32 %i.bh, 26
  %isdigittmp.2 = add nsw i32 %i.bf, -48
  %isdigit.2 = icmp ult i32 %isdigittmp.2, 10
  %or.cond48.2 = select i1 %or.cond47.2, i1 true, i1 %isdigit.2
  br i1 %or.cond48.2, label %bb.s, label %.thread60

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !55
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !72  ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 59
  br i1 %i.bk, label %bb.k, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = sext i8 %i.bj to i32                    ; 2 uses
  %i.bm = or i32 %i.bl, 32
  %i.bn = add nsw i32 %i.bm, -97
  %or.cond47.3 = icmp ult i32 %i.bn, 26
  %isdigittmp.3 = add nsw i32 %i.bl, -48
  %isdigit.3 = icmp ult i32 %isdigittmp.3, 10
  %or.cond48.3 = select i1 %or.cond47.3, i1 true, i1 %isdigit.3
  br i1 %or.cond48.3, label %bb.u, label %.thread60

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 3 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !55
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !72  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 59
  br i1 %i.bq, label %bb.k, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = sext i8 %i.bp to i32                    ; 2 uses
  %i.bs = or i32 %i.br, 32
  %i.bt = add nsw i32 %i.bs, -97
  %or.cond47.4 = icmp ult i32 %i.bt, 26
  %isdigittmp.4 = add nsw i32 %i.br, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %or.cond48.4 = select i1 %or.cond47.4, i1 true, i1 %isdigit.4
  br i1 %or.cond48.4, label %bb.w, label %.thread60

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 3 uses
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !55
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !72  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 59
  br i1 %i.bw, label %bb.k, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = sext i8 %i.bv to i32                    ; 2 uses
  %i.by = or i32 %i.bx, 32
  %i.bz = add nsw i32 %i.by, -97
  %or.cond47.5 = icmp ult i32 %i.bz, 26
  %isdigittmp.5 = add nsw i32 %i.bx, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %or.cond48.5 = select i1 %or.cond47.5, i1 true, i1 %isdigit.5
  br i1 %or.cond48.5, label %bb.y, label %.thread60

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  store ptr %i.ca, ptr %i.b, align 8, !tbaa !55
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !72  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 59
  br i1 %i.cc, label %bb.k, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = sext i8 %i.cb to i32                    ; 2 uses
  %i.ce = or i32 %i.cd, 32
  %i.cf = add nsw i32 %i.ce, -97
  %or.cond47.6 = icmp ult i32 %i.cf, 26
  %isdigittmp.6 = add nsw i32 %i.cd, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %or.cond48.6 = select i1 %or.cond47.6, i1 true, i1 %isdigit.6
  br i1 %or.cond48.6, label %bb.aa, label %.thread60

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !55
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !72  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 59
  br i1 %i.ci, label %bb.k, label %bb.ab
end_hunk_3
