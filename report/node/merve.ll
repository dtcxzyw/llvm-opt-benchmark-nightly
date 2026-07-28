inline.NumInlined: 842
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5lexer8CJSLexer5parseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.by:                                            ; preds = %bb.bx
  %i.pf = icmp ugt ptr %i.af, %i.ox
  br i1 %i.pf, label %bb.bz, label %bb.cl

bb.bz:                                            ; preds = %bb.by
  %i.pg = getelementptr inbounds i8, ptr %i.af, i64 -1
  %i.ph = load i8, ptr %i.pg, align 1
  %i.pi = add i8 %i.ph, -58
  %or.cond62 = icmp ult i8 %i.pi, -10
  br i1 %or.cond62, label %bb.cl, label %bb.ck

bb.ca:                                            ; preds = %bb.bx
  %i.pj = icmp ugt ptr %i.af, %i.ox
  br i1 %i.pj, label %bb.cb, label %bb.cl

bb.cb:                                            ; preds = %bb.ca
  %i.pk = getelementptr inbounds i8, ptr %i.af, i64 -1
  %i.pl = load i8, ptr %i.pk, align 1
  %.not240 = icmp eq i8 %i.pl, 43
  br i1 %.not240, label %bb.ck, label %bb.cl

bb.cc:                                            ; preds = %bb.bx
  %i.pm = icmp ugt ptr %i.af, %i.ox
  br i1 %i.pm, label %bb.cd, label %bb.cl

bb.cd:                                            ; preds = %bb.cc
  %i.pn = getelementptr inbounds i8, ptr %i.af, i64 -1
  %i.po = load i8, ptr %i.pn, align 1
  %.not239 = icmp eq i8 %i.po, 45
  br i1 %.not239, label %bb.ck, label %bb.cl

bb.ce:                                            ; preds = %bb.bw
  switch i8 %i.pa, label %.thread202 [
    i8 41, label %bb.cf
    i8 125, label %bb.cg
    i8 47, label %bb.cj
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.pp = zext i16 %i.aw to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.pp
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = tail call noundef zeroext i1 @_ZNK5lexer8CJSLexer14isParenKeywordEPKc(ptr noundef nonnull align 8 dereferenceable(32848) %0, ptr noundef %i.pr)
  %brmerge216 = or i1 %i.oy, %i.ps
  br i1 %brmerge216, label %bb.cl, label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  %i.pt = zext i16 %i.aw to i64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.pt
  %i.pv = load ptr, ptr %i.pu, align 8            ; 2 uses
  %i.pw = icmp ult ptr %i.pv, %i.ox
  br i1 %i.pw, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.px = tail call noundef zeroext i1 @_ZNK5lexer8CJSLexer22isExpressionTerminatorEPKc(ptr noundef nonnull align 8 dereferenceable(32848) %0, ptr noundef %i.pv)
  br i1 %i.px, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.py = load i16, ptr %i.g, align 2
  %i.pz = zext i16 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !range !13, !noundef !14
  %i.qc = trunc nuw i8 %i.qb to i1
  %brmerge215 = or i1 %i.oy, %i.qc
  br i1 %brmerge215, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.qd = load i8, ptr %i.j, align 4, !range !13, !noundef !14
  %i.qe = trunc nuw i8 %i.qd to i1
  %brmerge64 = or i1 %i.oy, %i.qe
  br i1 %brmerge64, label %bb.cl, label %bb.ck

.thread202:                                       ; preds = %bb.ce
  br i1 %i.oy, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cf, %bb.ci, %bb.bz, %bb.cd, %bb.cb, %bb.cj, %.thread202
  %i.qf = load ptr, ptr %i.e, align 8
  %i.qg = tail call noundef zeroext i1 @_ZNK5lexer8CJSLexer19isExpressionKeywordEPKc(ptr noundef nonnull align 8 dereferenceable(32848) %0, ptr noundef %i.qf)
  %i.qh = icmp eq i8 %i.pa, 0
  %or.cond7.not = or i1 %i.qh, %i.qg
  %brmerge = or i1 %i.oy, %or.cond7.not
  br i1 %brmerge, label %bb.cl, label %_ZN5lexer8CJSLexer11lineCommentEv.exit.thread

bb.cl:                                            ; preds = %bb.cf, %bb.ci, %bb.bz, %bb.cd, %bb.cb, %bb.ca, %bb.by, %bb.cj, %.thread202, %bb.ck, %bb.bx, %bb.ch, %bb.cg, %bb.cc
  tail call void @_ZN5lexer8CJSLexer17regularExpressionEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  br label %_ZN5lexer8CJSLexer11lineCommentEv.exit.thread

_ZN5lexer8CJSLexer11lineCommentEv.exit.thread:    ; preds = %bb.cl, %bb.ck
  %storemerge61 = phi i8 [ 0, %bb.cl ], [ 1, %bb.ck ]
  store i8 %storemerge61, ptr %i.j, align 4
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit101

bb.cm:                                            ; preds = %bb.k, %bb.ag
  %i.qi = load i16, ptr %i.h, align 4
  %i.qj = icmp eq i16 %i.qi, -2
  br i1 %i.qj, label %.thread208.sink.split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @_ZN5lexer8CJSLexer14templateStringEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit101

_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit101: ; preds = %.lr.ph.i123.preheader, %.lr.ph.i123.1, %.lr.ph.i123.2, %.lr.ph.i123.3, %.lr.ph.i123.4, %.lr.ph.i114.preheader, %.lr.ph.i114.1, %.lr.ph.i114.2, %.lr.ph.i114.3, %.lr.ph.i114.4, %.lr.ph.i106.preheader, %.lr.ph.i106.1, %.lr.ph.i106.2, %.lr.ph.i106.3, %.lr.ph.i96.preheader, %.lr.ph.i96.1, %.lr.ph.i96.2, %.lr.ph.i96.3, %.lr.ph.i96.4, %_ZN5lexer8CJSLexer11lineCommentEv.exit.thread, %bb.bb, %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit.i, %bb.az, %bb.au, %_ZNK5lexer8CJSLexer12keywordStartEPKc.exit103.thread, %bb.ai, %bb.k, %bb.bi, %bb.bj, %bb.ba, %_ZNK5lexer8CJSLexer12keywordStartEPKc.exit129, %_ZNK5lexer8CJSLexer12keywordStartEPKc.exit129.thread, %bb.at, %_ZNK5lexer8CJSLexer12keywordStartEPKc.exit120, %_ZNK5lexer8CJSLexer12keywordStartEPKc.exit103, %bb.ar, %bb.as, %bb.ah, %_ZNK5lexer8CJSLexer12keywordStartEPKc.exit102, %bb.an, %bb.ao, %bb.am, %bb.cn, %bb.bk, %bb.bg, %bb.bf, %bb.be, %bb.ag
  %i.qk = load ptr, ptr %i.b, align 8             ; 3 uses
  store ptr %i.qk, ptr %i.e, align 8
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.f
  %.lcssa232 = phi ptr [ %i.z, %bb.f ], [ %i.at, %.backedge ] ; 2 uses
  %.lcssa227 = phi ptr [ %i.c, %bb.f ], [ %i.au, %.backedge ] ; 11 uses
  %i.ql = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer10last_errorE) ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qn = load i8, ptr %i.qm, align 4, !range !13, !noundef !14
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %.thread208, label %bb.co

bb.co:                                            ; preds = %._crit_edge
  %i.qp = load i16, ptr %i.h, align 4
  %.not56 = icmp eq i16 %i.qp, -1
  br i1 %.not56, label %bb.cw, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i64 4294967301, ptr %i.ql, align 4
  %.not.i136 = icmp eq ptr %.lcssa227, null
  %i.qq = select i1 %.not.i136, ptr %.lcssa232, ptr %.lcssa227 ; 2 uses
  %i.qr = load ptr, ptr %0, align 8               ; 4 uses
  %i.qs = icmp ult ptr %i.qq, %i.qr
  %spec.select.i.i = select i1 %i.qs, ptr %i.qr, ptr %i.qq ; 2 uses
  %i.qt = icmp ugt ptr %spec.select.i.i, %.lcssa227
  %.1.i.i = select i1 %i.qt, ptr %.lcssa227, ptr %spec.select.i.i ; 3 uses
  %i.qu = icmp ult ptr %i.qr, %.1.i.i
  br i1 %i.qu, label %.lr.ph.i.i, label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.cp, %bb.cu
  %.02136.i.i = phi ptr [ %.2.i.i, %bb.cu ], [ %i.qr, %bb.cp ] ; 3 uses
  %.02335.i.i = phi i32 [ %.124.i.i, %bb.cu ], [ 1, %bb.cp ]
  %.02534.i.i = phi i32 [ %.126.i.i, %bb.cu ], [ 1, %bb.cp ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.02136.i.i, i64 1 ; 6 uses
  %i.qw = load i8, ptr %.02136.i.i, align 1
  switch i8 %i.qw, label %bb.ct [
    i8 10, label %bb.cq
    i8 13, label %bb.cr
  ]

bb.cq:                                            ; preds = %.lr.ph.i.i
  %i.qx = add i32 %.02534.i.i, 1
  br label %bb.cu, !llvm.loop !15

bb.cr:                                            ; preds = %.lr.ph.i.i
  %i.qy = add i32 %.02534.i.i, 1                  ; 2 uses
  %i.qz = icmp ult ptr %i.qv, %.1.i.i
  br i1 %i.qz, label %bb.cs, label %bb.cu, !llvm.loop !15

bb.cs:                                            ; preds = %bb.cr
  %i.ra = load i8, ptr %i.qv, align 1
  %i.rb = icmp eq i8 %i.ra, 10
  %i.rc = getelementptr inbounds nuw i8, ptr %.02136.i.i, i64 2
  %spec.select33.i.i = select i1 %i.rb, ptr %i.rc, ptr %i.qv
  br label %bb.cu, !llvm.loop !15

bb.ct:                                            ; preds = %.lr.ph.i.i
  %i.rd = add i32 %.02335.i.i, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.126.i.i = phi i32 [ %i.qx, %bb.cq ], [ %.02534.i.i, %bb.ct ], [ %i.qy, %bb.cr ], [ %i.qy, %bb.cs ] ; 2 uses
  %.124.i.i = phi i32 [ 1, %bb.cq ], [ %i.rd, %bb.ct ], [ 1, %bb.cr ], [ 1, %bb.cs ] ; 2 uses
  %.2.i.i = phi ptr [ %i.qv, %bb.cq ], [ %i.qv, %bb.ct ], [ %i.qv, %bb.cr ], [ %spec.select33.i.i, %bb.cs ] ; 2 uses
  %i.re = icmp ult ptr %.2.i.i, %.1.i.i
  br i1 %i.re, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.cu
  %i.rf = zext i32 %.124.i.i to i64
  %i.rg = shl nuw i64 %i.rf, 32
  %i.rh = zext i32 %.126.i.i to i64
  %i.ri = or disjoint i64 %i.rg, %i.rh
  br label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i

_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i:   ; preds = %._crit_edge.loopexit.i.i, %bb.cp
  %.sroa.0.0.insert.insert.i.i = phi i64 [ 4294967297, %bb.cp ], [ %i.ri, %._crit_edge.loopexit.i.i ]
  %i.rj = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 4, !range !13, !noundef !14
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i
  store i8 1, ptr %i.rk, align 4
  br label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit

_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit: ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i, %bb.cv
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.rj, align 4
  br label %.sink.split

bb.cw:                                            ; preds = %bb.co
  %i.rn = load i16, ptr %i.g, align 2             ; 2 uses
  %.not57 = icmp eq i16 %i.rn, 0
  br i1 %.not57, label %.thread208, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ro = zext i16 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 20528
  %3 = add nuw nsw i64 %i.ro, 4294967295
  %4 = and i64 %3, 4294967295
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %4
  %i.rr = load i8, ptr %i.rq, align 1
  %i.rs = icmp eq i8 %i.rr, 123
  %.not.i137 = icmp eq ptr %.lcssa227, null
  %i.rt = select i1 %.not.i137, ptr %.lcssa232, ptr %.lcssa227 ; 4 uses
  br i1 %i.rs, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  store i64 4294967300, ptr %i.ql, align 4
  %i.ru = load ptr, ptr %0, align 8               ; 4 uses
  %i.rv = icmp ult ptr %i.rt, %i.ru
  %spec.select.i.i138 = select i1 %i.rv, ptr %i.ru, ptr %i.rt ; 2 uses
  %i.rw = icmp ugt ptr %spec.select.i.i138, %.lcssa227
  %.1.i.i139 = select i1 %i.rw, ptr %.lcssa227, ptr %spec.select.i.i138 ; 3 uses
  %i.rx = icmp ult ptr %i.ru, %.1.i.i139
  br i1 %i.rx, label %.lr.ph.i.i143, label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140

.lr.ph.i.i143:                                    ; preds = %bb.cy, %bb.dd
  %.02136.i.i144 = phi ptr [ %.2.i.i149, %bb.dd ], [ %i.ru, %bb.cy ] ; 3 uses
  %.02335.i.i145 = phi i32 [ %.124.i.i148, %bb.dd ], [ 1, %bb.cy ]
  %.02534.i.i146 = phi i32 [ %.126.i.i147, %bb.dd ], [ 1, %bb.cy ] ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.02136.i.i144, i64 1 ; 6 uses
  %i.rz = load i8, ptr %.02136.i.i144, align 1
  switch i8 %i.rz, label %bb.dc [
    i8 10, label %bb.cz
    i8 13, label %bb.da
  ]

bb.cz:                                            ; preds = %.lr.ph.i.i143
  %i.sa = add i32 %.02534.i.i146, 1
  br label %bb.dd, !llvm.loop !15

bb.da:                                            ; preds = %.lr.ph.i.i143
  %i.sb = add i32 %.02534.i.i146, 1               ; 2 uses
  %i.sc = icmp ult ptr %i.ry, %.1.i.i139
  br i1 %i.sc, label %bb.db, label %bb.dd, !llvm.loop !15

bb.db:                                            ; preds = %bb.da
  %i.sd = load i8, ptr %i.ry, align 1
  %i.se = icmp eq i8 %i.sd, 10
  %i.sf = getelementptr inbounds nuw i8, ptr %.02136.i.i144, i64 2
  %spec.select33.i.i151 = select i1 %i.se, ptr %i.sf, ptr %i.ry
  br label %bb.dd, !llvm.loop !15

bb.dc:                                            ; preds = %.lr.ph.i.i143
  %i.sg = add i32 %.02335.i.i145, 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %.126.i.i147 = phi i32 [ %i.sa, %bb.cz ], [ %.02534.i.i146, %bb.dc ], [ %i.sb, %bb.da ], [ %i.sb, %bb.db ] ; 2 uses
  %.124.i.i148 = phi i32 [ 1, %bb.cz ], [ %i.sg, %bb.dc ], [ 1, %bb.da ], [ 1, %bb.db ] ; 2 uses
  %.2.i.i149 = phi ptr [ %i.ry, %bb.cz ], [ %i.ry, %bb.dc ], [ %i.ry, %bb.da ], [ %spec.select33.i.i151, %bb.db ] ; 2 uses
  %i.sh = icmp ult ptr %.2.i.i149, %.1.i.i139
  br i1 %i.sh, label %.lr.ph.i.i143, label %._crit_edge.loopexit.i.i150

._crit_edge.loopexit.i.i150:                      ; preds = %bb.dd
  %i.si = zext i32 %.124.i.i148 to i64
  %i.sj = shl nuw i64 %i.si, 32
  %i.sk = zext i32 %.126.i.i147 to i64
  %i.sl = or disjoint i64 %i.sj, %i.sk
  br label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140

_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140: ; preds = %._crit_edge.loopexit.i.i150, %bb.cy
  %.sroa.0.0.insert.insert.i.i141 = phi i64 [ 4294967297, %bb.cy ], [ %i.sl, %._crit_edge.loopexit.i.i150 ]
  %i.sm = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 4, !range !13, !noundef !14
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155, label %bb.de

bb.de:                                            ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140
  store i8 1, ptr %i.sn, align 4
  br label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155

_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155: ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i140, %bb.de
  store i64 %.sroa.0.0.insert.insert.i.i141, ptr %i.sm, align 4
  br label %.sink.split

bb.df:                                            ; preds = %bb.cx
  store i64 4294967299, ptr %i.ql, align 4
  %i.sq = load ptr, ptr %0, align 8               ; 4 uses
  %i.sr = icmp ult ptr %i.rt, %i.sq
  %spec.select.i.i157 = select i1 %i.sr, ptr %i.sq, ptr %i.rt ; 2 uses
  %i.ss = icmp ugt ptr %spec.select.i.i157, %.lcssa227
  %.1.i.i158 = select i1 %i.ss, ptr %.lcssa227, ptr %spec.select.i.i157 ; 3 uses
  %i.st = icmp ult ptr %i.sq, %.1.i.i158
  br i1 %i.st, label %.lr.ph.i.i162, label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159

.lr.ph.i.i162:                                    ; preds = %bb.df, %bb.dk
  %.02136.i.i163 = phi ptr [ %.2.i.i168, %bb.dk ], [ %i.sq, %bb.df ] ; 3 uses
  %.02335.i.i164 = phi i32 [ %.124.i.i167, %bb.dk ], [ 1, %bb.df ]
  %.02534.i.i165 = phi i32 [ %.126.i.i166, %bb.dk ], [ 1, %bb.df ] ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.02136.i.i163, i64 1 ; 6 uses
  %i.sv = load i8, ptr %.02136.i.i163, align 1
  switch i8 %i.sv, label %bb.dj [
    i8 10, label %bb.dg
    i8 13, label %bb.dh
  ]

bb.dg:                                            ; preds = %.lr.ph.i.i162
  %i.sw = add i32 %.02534.i.i165, 1
  br label %bb.dk, !llvm.loop !15

bb.dh:                                            ; preds = %.lr.ph.i.i162
  %i.sx = add i32 %.02534.i.i165, 1               ; 2 uses
  %i.sy = icmp ult ptr %i.su, %.1.i.i158
  br i1 %i.sy, label %bb.di, label %bb.dk, !llvm.loop !15

bb.di:                                            ; preds = %bb.dh
  %i.sz = load i8, ptr %i.su, align 1
  %i.ta = icmp eq i8 %i.sz, 10
  %i.tb = getelementptr inbounds nuw i8, ptr %.02136.i.i163, i64 2
  %spec.select33.i.i170 = select i1 %i.ta, ptr %i.tb, ptr %i.su
  br label %bb.dk, !llvm.loop !15

bb.dj:                                            ; preds = %.lr.ph.i.i162
  %i.tc = add i32 %.02335.i.i164, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %.126.i.i166 = phi i32 [ %i.sw, %bb.dg ], [ %.02534.i.i165, %bb.dj ], [ %i.sx, %bb.dh ], [ %i.sx, %bb.di ] ; 2 uses
  %.124.i.i167 = phi i32 [ 1, %bb.dg ], [ %i.tc, %bb.dj ], [ 1, %bb.dh ], [ 1, %bb.di ] ; 2 uses
  %.2.i.i168 = phi ptr [ %i.su, %bb.dg ], [ %i.su, %bb.dj ], [ %i.su, %bb.dh ], [ %spec.select33.i.i170, %bb.di ] ; 2 uses
  %i.td = icmp ult ptr %.2.i.i168, %.1.i.i158
  br i1 %i.td, label %.lr.ph.i.i162, label %._crit_edge.loopexit.i.i169

._crit_edge.loopexit.i.i169:                      ; preds = %bb.dk
  %i.te = zext i32 %.124.i.i167 to i64
  %i.tf = shl nuw i64 %i.te, 32
  %i.tg = zext i32 %.126.i.i166 to i64
  %i.th = or disjoint i64 %i.tf, %i.tg
  br label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159

_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159: ; preds = %._crit_edge.loopexit.i.i169, %bb.df
  %.sroa.0.0.insert.insert.i.i160 = phi i64 [ 4294967297, %bb.df ], [ %i.th, %._crit_edge.loopexit.i.i169 ]
  %i.ti = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 4, !range !13, !noundef !14
  %i.tl = trunc nuw i8 %i.tk to i1
  br i1 %i.tl, label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174, label %bb.dl

bb.dl:                                            ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159
  store i8 1, ptr %i.tj, align 4
  br label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174

_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174: ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i159, %bb.dl
  store i64 %.sroa.0.0.insert.insert.i.i160, ptr %i.ti, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit, %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit174, %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit155
  %i.tm = getelementptr inbounds nuw i8, ptr %.lcssa227, i64 1
  store ptr %i.tm, ptr %i.b, align 8
  br label %.thread208

.thread208.sink.split.loopexit323:                ; preds = %bb.k
  br label %.thread208.sink.split

.thread208.sink.split:                            ; preds = %bb.cm, %bb.bj, %bb.k, %.thread208.sink.split.loopexit323
  %.sink = phi i32 [ 1, %bb.k ], [ 5, %bb.bj ], [ 12, %bb.cm ], [ 2, %.thread208.sink.split.loopexit323 ]
  tail call void @_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc(ptr noundef nonnull align 8 dereferenceable(32848) %0, i32 noundef %.sink, ptr noundef null)
  br label %.thread208

.thread208:                                       ; preds = %._crit_edge, %.sink.split, %.thread208.sink.split, %bb.cw, %bb.d
  %.0 = phi i1 [ false, %.thread208.sink.split ], [ true, %bb.cw ], [ true, %bb.d ], [ false, %.sink.split ], [ false, %._crit_edge ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN5lexer14get_last_errorEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer10last_errorE)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN5lexer23get_last_error_locationEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @merve_parse_commonjs(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::optional.18", align 16 ; 11 uses
  %4 = alloca %"class.std::optional.18", align 16 ; 11 uses
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not.i, label %_ZL21merve_error_loc_clearP15merve_error_loc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  br label %_ZL21merve_error_loc_clearP15merve_error_loc.exit

_ZL21merve_error_loc_clearP15merve_error_loc.exit: ; preds = %bb.a, %bb.b
  %i.b = tail call noalias noundef dereferenceable_or_null(56) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 56, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #22 ; 16 uses
  %i.c = icmp eq ptr %i.b, null
end_hunk_0
