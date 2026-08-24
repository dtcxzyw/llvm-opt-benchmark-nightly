Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pgc?download=true
inline.NumInlined: 41
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@base_yylex:bb.a
  %i.eh = load i8, ptr @yy_hold_char, align 1
  store i8 %i.eh, ptr %.2440, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.1435.ph, i64 2 ; 4 uses
  store ptr %i.ei, ptr @yy_c_buf_p, align 8
  store ptr %.1435.ph, ptr @base_yytext, align 8
  store i32 2, ptr @base_yyleng, align 4
  %i.ej = load i8, ptr %i.ei, align 1
  store i8 %i.ej, ptr @yy_hold_char, align 1
  store i8 0, ptr %i.ei, align 1
  store ptr %i.ei, ptr @yy_c_buf_p, align 8
  %i.ek = load ptr, ptr @base_yyout, align 8
  %i.el = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %i.ek) ; 0 uses
  br label %.loopexit.backedge

bb.al:                                            ; preds = %.loopexit593.a
  %i.em = load i32, ptr @state_before_str_start, align 4
  switch i32 %i.em, label %.loopexit.backedge [
    i32 17, label %bb.am
    i32 16, label %bb.at
  ]

bb.am:                                            ; preds = %bb.al
  %i.en = load i32, ptr @xcdepth, align 4
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr @xcdepth, align 4
  %i.ep = load i32, ptr @base_yyleng, align 4     ; 4 uses
  %i.eq = icmp sgt i32 %i.ep, 2
  br i1 %i.eq, label %.lr.ph1002, label %._crit_edge1003

.lr.ph1002:                                       ; preds = %bb.am
  %base_yylineno.promoted999 = load i32, ptr @base_yylineno, align 4 ; 2 uses
  %i.er = load ptr, ptr @base_yytext, align 8     ; 3 uses
  %wide.trip.count1453 = zext nneg i32 %i.ep to i64 ; 2 uses
  %xtraiter2907 = and i64 %wide.trip.count1453, 1
  %i.es = icmp eq i32 %i.ep, 3
  br i1 %i.es, label %.epil.preheader2906, label %.lr.ph1002.new

.lr.ph1002.new:                                   ; preds = %.lr.ph1002
  %i.et = and i64 %wide.trip.count1453, 2147483646
  %i.eu = add nsw i64 %i.et, -4
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.lr.ph1002.new
  %indvars.iv1449 = phi i64 [ 2, %.lr.ph1002.new ], [ %indvars.iv.next1450.1, %bb.ar ] ; 3 uses
  %i.ev = phi i32 [ %base_yylineno.promoted999, %.lr.ph1002.new ], [ %i.fg, %bb.ar ] ; 2 uses
  %niter2913 = phi i64 [ 0, %.lr.ph1002.new ], [ %niter2913.next.1, %bb.ar ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv1449
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = icmp eq i8 %i.ex, 10
  br i1 %i.ey, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ez = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ez, ptr @base_yylineno, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.fa = phi i32 [ %i.ev, %bb.an ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv1449
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, 10
  br i1 %i.fe, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ff = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.ff, ptr @base_yylineno, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fg = phi i32 [ %i.fa, %bb.ap ], [ %i.ff, %bb.aq ] ; 2 uses
  %indvars.iv.next1450.1 = add nuw nsw i64 %indvars.iv1449, 2 ; 2 uses
  %niter2913.next.1 = add i64 %niter2913, 2
  %niter2913.ncmp.1 = icmp eq i64 %niter2913, %i.eu
  br i1 %niter2913.ncmp.1, label %._crit_edge1003.loopexit.unr-lcssa, label %bb.an, !llvm.loop !9

._crit_edge1003.loopexit.unr-lcssa:               ; preds = %bb.ar
  %lcmp.mod2910.not = icmp eq i64 %xtraiter2907, 0
  br i1 %lcmp.mod2910.not, label %._crit_edge1003, label %.epil.preheader2906

.epil.preheader2906:                              ; preds = %._crit_edge1003.loopexit.unr-lcssa, %.lr.ph1002
  %indvars.iv1449.epil.init = phi i64 [ 2, %.lr.ph1002 ], [ %indvars.iv.next1450.1, %._crit_edge1003.loopexit.unr-lcssa ]
  %.epil.init2909 = phi i32 [ %base_yylineno.promoted999, %.lr.ph1002 ], [ %i.fg, %._crit_edge1003.loopexit.unr-lcssa ]
  %lcmp.mod2911 = trunc i32 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod2911)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv1449.epil.init
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = icmp eq i8 %i.fi, 10
  br i1 %i.fj, label %bb.as, label %._crit_edge1003

bb.as:                                            ; preds = %.epil.preheader2906
  %i.fk = add i32 %.epil.init2909, -1
  store i32 %i.fk, ptr @base_yylineno, align 4
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %._crit_edge1003.loopexit.unr-lcssa, %bb.as, %.epil.preheader2906, %bb.am
  %i.fl = load i8, ptr @yy_hold_char, align 1
  store i8 %i.fl, ptr %.2440, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.1435.ph, i64 2 ; 4 uses
  store ptr %i.fm, ptr @yy_c_buf_p, align 8
  store ptr %.1435.ph, ptr @base_yytext, align 8
  store i32 2, ptr @base_yyleng, align 4
  %i.fn = load i8, ptr %i.fm, align 1
  store i8 %i.fn, ptr @yy_hold_char, align 1
  store i8 0, ptr %i.fm, align 1
  store ptr %i.fm, ptr @yy_c_buf_p, align 8
  %i.fo = load ptr, ptr @base_yyout, align 8
  %i.fp = tail call i64 @fwrite(ptr nonnull @.str.1, i64 3, i64 1, ptr %i.fo) ; 0 uses
  br label %.loopexit.backedge

bb.at:                                            ; preds = %bb.al
  %i.fq = load ptr, ptr @base_yytext, align 8
  %i.fr = load i32, ptr @base_yyleng, align 4
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load ptr, ptr @base_yyout, align 8
  %i.fu = tail call i64 @fwrite(ptr noundef %i.fq, i64 noundef %i.fs, i64 noundef 1, ptr noundef %i.ft) ; 0 uses
  br label %.loopexit.backedge

bb.au:                                            ; preds = %.loopexit593.a
  %i.fv = load i32, ptr @state_before_str_start, align 4
  switch i32 %i.fv, label %.loopexit.backedge [
    i32 17, label %bb.av
    i32 16, label %bb.ay
  ]

bb.av:                                            ; preds = %bb.au
  %i.fw = load i32, ptr @xcdepth, align 4         ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 1
  br i1 %i.fx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fy = load ptr, ptr @base_yytext, align 8
  %i.fz = load i32, ptr @base_yyleng, align 4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = load ptr, ptr @base_yyout, align 8
  %i.gc = tail call i64 @fwrite(ptr noundef %i.fy, i64 noundef %i.ga, i64 noundef 1, ptr noundef %i.gb) ; 0 uses
  store i32 35, ptr @yy_start, align 4
  store ptr null, ptr @token_start, align 8
  br label %.loopexit.backedge

bb.ax:                                            ; preds = %bb.av
  %i.gd = add nsw i32 %i.fw, -1
  store i32 %i.gd, ptr @xcdepth, align 4
  %i.ge = load ptr, ptr @base_yyout, align 8
  %i.gf = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %i.ge) ; 0 uses
  br label %.loopexit.backedge

bb.ay:                                            ; preds = %bb.au
  %i.gg = load ptr, ptr @base_yytext, align 8
  %i.gh = load i32, ptr @base_yyleng, align 4
  %i.gi = sext i32 %i.gh to i64
  %i.gj = load ptr, ptr @base_yyout, align 8
  %i.gk = tail call i64 @fwrite(ptr noundef %i.gg, i64 noundef %i.gi, i64 noundef 1, ptr noundef %i.gj) ; 0 uses
  store i32 33, ptr @yy_start, align 4
  store ptr null, ptr @token_start, align 8
  br label %.loopexit.backedge

bb.az:                                            ; preds = %.loopexit593.a
  %i.gl = load ptr, ptr @base_yytext, align 8
  %i.gm = load i32, ptr @base_yyleng, align 4
  %i.gn = sext i32 %i.gm to i64
  %i.go = load ptr, ptr @base_yyout, align 8
  %i.gp = tail call i64 @fwrite(ptr noundef %i.gl, i64 noundef %i.gn, i64 noundef 1, ptr noundef %i.go) ; 0 uses
  br label %.loopexit.backedge

bb.ba:                                            ; preds = %.loopexit593.a
  %i.gq = load ptr, ptr @base_yytext, align 8
  %i.gr = load i32, ptr @base_yyleng, align 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = load ptr, ptr @base_yyout, align 8
  %i.gu = tail call i64 @fwrite(ptr noundef %i.gq, i64 noundef %i.gs, i64 noundef 1, ptr noundef %i.gt) ; 0 uses
  br label %.loopexit.backedge

bb.bb:                                            ; preds = %.loopexit593.a
  %i.gv = load ptr, ptr @base_yytext, align 8
  %i.gw = load i32, ptr @base_yyleng, align 4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = load ptr, ptr @base_yyout, align 8
  %i.gz = tail call i64 @fwrite(ptr noundef %i.gv, i64 noundef %i.gx, i64 noundef 1, ptr noundef %i.gy) ; 0 uses
  br label %.loopexit.backedge

bb.bc:                                            ; preds = %.loopexit593.a
  tail call void (i32, ptr, ...) @mmfatal(i32 noundef 3, ptr noundef nonnull @.str.3) #28
  unreachable

bb.bd:                                            ; preds = %.loopexit593.a
  %i.ha = load ptr, ptr @base_yytext, align 8
  store ptr %i.ha, ptr @token_start, align 8
  %i.hb = load i32, ptr @yy_start, align 4
  %i.hc = add nsw i32 %i.hb, -1
  %i.hd = sdiv i32 %i.hc, 2
  store i32 %i.hd, ptr @state_before_str_start, align 4
  store i32 3, ptr @yy_start, align 4
  %i.he = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.he, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.be:                                            ; preds = %.loopexit593.a, %.loopexit593.a
  %i.hf = load ptr, ptr @base_yytext, align 8
  %i.hg = load i32, ptr @base_yyleng, align 4     ; 2 uses
  %i.hh = load i32, ptr @literallen, align 4      ; 2 uses
  %i.hi = add i32 %i.hh, %i.hg                    ; 4 uses
  %i.hj = load i32, ptr @literalalloc, align 4    ; 2 uses
  %.not.i506 = icmp slt i32 %i.hi, %i.hj
  br i1 %.not.i506, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.be
  %.pre.i = load ptr, ptr @literalbuf, align 8
  br label %addlit.exit

.preheader.i:                                     ; preds = %bb.be, %.preheader.i
  %i.hk = phi i32 [ %i.hl, %.preheader.i ], [ %i.hj, %bb.be ]
  %i.hl = shl i32 %i.hk, 1                        ; 4 uses
  %.not4.i = icmp slt i32 %i.hi, %i.hl
  br i1 %.not4.i, label %bb.bf, label %.preheader.i, !llvm.loop !10

bb.bf:                                            ; preds = %.preheader.i
  store i32 %i.hl, ptr @literalalloc, align 4
  %i.hm = load ptr, ptr @literalbuf, align 8
  %i.hn = sext i32 %i.hl to i64
  %i.ho = tail call ptr @realloc(ptr noundef %i.hm, i64 noundef %i.hn) #27 ; 2 uses
  store ptr %i.ho, ptr @literalbuf, align 8
  br label %addlit.exit

addlit.exit:                                      ; preds = %._crit_edge.i, %bb.bf
  %i.hp = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ho, %bb.bf ] ; 2 uses
  %i.hq = sext i32 %i.hh to i64
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 %i.hq
  %i.hs = sext i32 %i.hg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr readonly align 1 %i.hf, i64 %i.hs, i1 false)
  store i32 %i.hi, ptr @literallen, align 4
  %i.ht = sext i32 %i.hi to i64
  %i.hu = getelementptr inbounds i8, ptr %i.hp, i64 %i.ht
  store i8 0, ptr %i.hu, align 1
  br label %.loopexit.backedge

bb.bg:                                            ; preds = %.loopexit593.a
  tail call void (i32, ptr, ...) @mmfatal(i32 noundef 3, ptr noundef nonnull @.str.4) #28
  unreachable

bb.bh:                                            ; preds = %.loopexit593.a
  %i.hv = load ptr, ptr @base_yytext, align 8
  store ptr %i.hv, ptr @token_start, align 8
  %i.hw = load i32, ptr @yy_start, align 4
  %i.hx = add nsw i32 %i.hw, -1
  %i.hy = sdiv i32 %i.hx, 2
  store i32 %i.hy, ptr @state_before_str_start, align 4
  store i32 11, ptr @yy_start, align 4
  %i.hz = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.hz, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.bi:                                            ; preds = %.loopexit593.a
  tail call void (i32, ptr, ...) @mmfatal(i32 noundef 3, ptr noundef nonnull @.str.5) #28
  unreachable

bb.bj:                                            ; preds = %.loopexit593.a
  %i.ia = load ptr, ptr @base_yytext, align 8
  store ptr %i.ia, ptr @token_start, align 8
  %i.ib = load i32, ptr @yy_start, align 4
  %i.ic = add nsw i32 %i.ib, -1
  %i.id = sdiv i32 %i.ic, 2
  store i32 %i.id, ptr @state_before_str_start, align 4
  store i32 21, ptr @yy_start, align 4
  %i.ie = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.ie, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.bk:                                            ; preds = %.loopexit593.a
  %i.if = load ptr, ptr @base_yytext, align 8
  store ptr %i.if, ptr @token_start, align 8
  %i.ig = load i32, ptr @yy_start, align 4
  %i.ih = add nsw i32 %i.ig, -1
  %i.ii = sdiv i32 %i.ih, 2
  store i32 %i.ii, ptr @state_before_str_start, align 4
  store i32 13, ptr @yy_start, align 4
  %i.ij = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.ij, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.bl:                                            ; preds = %.loopexit593.a
  %i.ik = load ptr, ptr @base_yytext, align 8
  store ptr %i.ik, ptr @token_start, align 8
  %i.il = load i32, ptr @yy_start, align 4
  %i.im = add nsw i32 %i.il, -1
  %i.in = sdiv i32 %i.im, 2
  store i32 %i.in, ptr @state_before_str_start, align 4
  store i32 15, ptr @yy_start, align 4
  %i.io = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.io, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.bm:                                            ; preds = %.loopexit593.a
  %i.ip = load ptr, ptr @base_yytext, align 8
  store ptr %i.ip, ptr @token_start, align 8
  %i.iq = load i32, ptr @yy_start, align 4
  %i.ir = add nsw i32 %i.iq, -1
  %i.is = sdiv i32 %i.ir, 2
  store i32 %i.is, ptr @state_before_str_start, align 4
  store i32 19, ptr @yy_start, align 4
  %i.it = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.it, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.bn:                                            ; preds = %.loopexit593.a
  %i.iu = load ptr, ptr @base_yytext, align 8
  store ptr %i.iu, ptr @token_start, align 8
  %i.iv = load i32, ptr @yy_start, align 4
  %i.iw = add nsw i32 %i.iv, -1
  %i.ix = sdiv i32 %i.iw, 2
  store i32 %i.ix, ptr @state_before_str_start, align 4
  store i32 27, ptr @yy_start, align 4
  %i.iy = load ptr, ptr @literalbuf, align 8
  store i8 0, ptr %i.iy, align 1
  store i32 0, ptr @literallen, align 4
  br label %.loopexit.backedge

bb.bo:                                            ; preds = %.loopexit593.a
  %i.iz = load i32, ptr @yy_start, align 4
  %i.ja = add nsw i32 %i.iz, -1
  %i.jb = sdiv i32 %i.ja, 2
  store i32 %i.jb, ptr @state_before_str_stop, align 4
  store i32 17, ptr @yy_start, align 4
  br label %.loopexit.backedge

bb.bp:                                            ; preds = %.loopexit593.a
  %i.jc = load i32, ptr @state_before_str_stop, align 4
  %i.jd = shl nuw nsw i32 %i.jc, 1
  %i.je = or disjoint i32 %i.jd, 1
  store i32 %i.je, ptr @yy_start, align 4
  br label %.loopexit.backedge

bb.bq:                                            ; preds = %.loopexit593.a, %.loopexit593.a, %.loopexit593.a
  %i.jf = load i32, ptr @base_yyleng, align 4     ; 4 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph1067, label %._crit_edge1068

.lr.ph1067:                                       ; preds = %bb.bq
  %base_yylineno.promoted1064 = load i32, ptr @base_yylineno, align 4 ; 2 uses
  %i.jh = load ptr, ptr @base_yytext, align 8     ; 3 uses
  %wide.trip.count1543 = zext nneg i32 %i.jf to i64 ; 2 uses
  %xtraiter2997 = and i64 %wide.trip.count1543, 1
  %i.ji = icmp eq i32 %i.jf, 1
  br i1 %i.ji, label %.epil.preheader2996, label %.lr.ph1067.new

.lr.ph1067.new:                                   ; preds = %.lr.ph1067
  %unroll_iter3002 = and i64 %wide.trip.count1543, 2147483646
  br label %bb.br

bb.br:                                            ; preds = %bb.bv, %.lr.ph1067.new
  %indvars.iv1539 = phi i64 [ 0, %.lr.ph1067.new ], [ %indvars.iv.next1540.1, %bb.bv ] ; 3 uses
  %i.jj = phi i32 [ %base_yylineno.promoted1064, %.lr.ph1067.new ], [ %i.ju, %bb.bv ] ; 2 uses
  %niter3003 = phi i64 [ 0, %.lr.ph1067.new ], [ %niter3003.next.1, %bb.bv ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv1539
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = icmp eq i8 %i.jl, 10
  br i1 %i.jm, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jn = add i32 %i.jj, -1                       ; 2 uses
  store i32 %i.jn, ptr @base_yylineno, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.jo = phi i32 [ %i.jj, %bb.br ], [ %i.jn, %bb.bs ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv1539
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = icmp eq i8 %i.jr, 10
  br i1 %i.js, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jt = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jt, ptr @base_yylineno, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ju = phi i32 [ %i.jo, %bb.bt ], [ %i.jt, %bb.bu ] ; 2 uses
  %indvars.iv.next1540.1 = add nuw nsw i64 %indvars.iv1539, 2 ; 2 uses
  %niter3003.next.1 = add i64 %niter3003, 2       ; 2 uses
  %niter3003.ncmp.1 = icmp eq i64 %niter3003.next.1, %unroll_iter3002
  br i1 %niter3003.ncmp.1, label %._crit_edge1068.loopexit.unr-lcssa, label %bb.br, !llvm.loop !11

._crit_edge1068.loopexit.unr-lcssa:               ; preds = %bb.bv
  %lcmp.mod3000.not = icmp eq i64 %xtraiter2997, 0
  br i1 %lcmp.mod3000.not, label %._crit_edge1068, label %.epil.preheader2996

.epil.preheader2996:                              ; preds = %._crit_edge1068.loopexit.unr-lcssa, %.lr.ph1067
  %indvars.iv1539.epil.init = phi i64 [ 0, %.lr.ph1067 ], [ %indvars.iv.next1540.1, %._crit_edge1068.loopexit.unr-lcssa ]
  %.epil.init2999 = phi i32 [ %base_yylineno.promoted1064, %.lr.ph1067 ], [ %i.ju, %._crit_edge1068.loopexit.unr-lcssa ]
  %lcmp.mod3001 = trunc i32 %i.jf to i1
  tail call void @llvm.assume(i1 %lcmp.mod3001)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv1539.epil.init
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = icmp eq i8 %i.jw, 10
  br i1 %i.jx, label %bb.bw, label %._crit_edge1068

bb.bw:                                            ; preds = %.epil.preheader2996
  %i.jy = add i32 %.epil.init2999, -1
  store i32 %i.jy, ptr @base_yylineno, align 4
  br label %._crit_edge1068

._crit_edge1068:                                  ; preds = %._crit_edge1068.loopexit.unr-lcssa, %bb.bw, %.epil.preheader2996, %bb.bq
  %i.jz = load i8, ptr @yy_hold_char, align 1
  store i8 %i.jz, ptr %.2440, align 1
  store ptr %.1435.ph, ptr @yy_c_buf_p, align 8
  store ptr %.1435.ph, ptr @base_yytext, align 8
  store i32 0, ptr @base_yyleng, align 4
  %i.ka = load i8, ptr %.1435.ph, align 1
  store i8 %i.ka, ptr @yy_hold_char, align 1
  store i8 0, ptr %.1435.ph, align 1
  store ptr %.1435.ph, ptr @yy_c_buf_p, align 8
  %i.kb = load i32, ptr @state_before_str_start, align 4
  %i.kc = shl nuw nsw i32 %i.kb, 1
  %i.kd = or disjoint i32 %i.kc, 1
  store i32 %i.kd, ptr @yy_start, align 4
  %i.ke = load i32, ptr @state_before_str_stop, align 4
  switch i32 %i.ke, label %bb.ch [
    i32 1, label %bb.bx
    i32 5, label %bb.ca
    i32 7, label %bb.cd
    i32 10, label %bb.cd
    i32 9, label %bb.ce
    i32 6, label %bb.cf
    i32 13, label %bb.cg
  ]

end_hunk_0
begin_hunk_1_@base_yylex:bb.a
  %i.anf = load ptr, ptr @base_yyin, align 8
  store ptr %i.anf, ptr %i.amz, align 8
  %i.ang = load ptr, ptr %i.amy, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 56
  store i32 1, ptr %i.anh, align 8
  %.pre1545 = load ptr, ptr %i.amy, align 8
  br label %bb.nx

bb.nx:                                            ; preds = %._crit_edge1546, %bb.nw
  %i.ani = phi i32 [ %i.ane, %bb.nw ], [ %.pre1547.a, %._crit_edge1546 ] ; 2 uses
  %i.anj = phi ptr [ %.pre1545, %bb.nw ], [ %i.amz, %._crit_edge1546 ] ; 3 uses
  %i.ank = load ptr, ptr @yy_c_buf_p, align 8     ; 4 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anm = load ptr, ptr %i.anl, align 8          ; 9 uses
  %i.ann = ptrtoaddr ptr %i.anm to i64
  %i.ano = sext i32 %i.ani to i64                 ; 2 uses
  %i.anp = getelementptr inbounds i8, ptr %i.anm, i64 %i.ano
  %.not485 = icmp ugt ptr %i.ank, %i.anp
  br i1 %.not485, label %bb.oj, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.anq = ptrtoint ptr %.2440 to i64
  %i.anr = ptrtoint ptr %i.amu to i64
  %i.ans = sub i64 %i.anq, %i.anr
  %i.ant = trunc i64 %i.ans to i32
  %i.anu = add i32 %i.ant, -1                     ; 2 uses
  %i.anv = load ptr, ptr @base_yytext, align 8    ; 4 uses
  %i.anw = sext i32 %i.anu to i64
  %i.anx = getelementptr inbounds i8, ptr %i.anv, i64 %i.anw ; 4 uses
  store ptr %i.anx, ptr @yy_c_buf_p, align 8
  %i.any = load i32, ptr @yy_start, align 4       ; 2 uses
  %i.anz = icmp sgt i32 %i.anu, 0
  br i1 %i.anz, label %.lr.ph25.i, label %yy_get_previous_state.exit

.lr.ph25.i:                                       ; preds = %bb.ny, %._crit_edge.i510
  %.01523.i = phi ptr [ %i.api, %._crit_edge.i510 ], [ %i.anv, %bb.ny ] ; 3 uses
  %.01622.i = phi i32 [ %i.aph, %._crit_edge.i510 ], [ %i.any, %bb.ny ] ; 3 uses
  %i.aoa = load i8, ptr %.01523.i, align 1        ; 2 uses
  %.not.i509 = icmp eq i8 %i.aoa, 0
  br i1 %.not.i509, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %.lr.ph25.i
  %i.aob = zext i8 %i.aoa to i64
  %i.aoc = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.aob
  %i.aod = load i8, ptr %i.aoc, align 1
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %.lr.ph25.i
  %i.aoe = phi i8 [ %i.aod, %bb.nz ], [ 1, %.lr.ph25.i ] ; 2 uses
  %i.aof = sext i32 %.01622.i to i64              ; 3 uses
  %i.aog = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.aof
  %i.aoh = load i16, ptr %i.aog, align 2
  %.not18.i = icmp eq i16 %i.aoh, 0
  br i1 %.not18.i, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  store i32 %.01622.i, ptr @yy_last_accepting_state, align 4
  store ptr %.01523.i, ptr @yy_last_accepting_cpos, align 8
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %i.aoi = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.aof
  %i.aoj = load i16, ptr %i.aoi, align 2
  %i.aok = sext i16 %i.aoj to i64
  %i.aol = zext i8 %i.aoe to i64                  ; 2 uses
  %i.aom = add nsw i64 %i.aok, %i.aol             ; 2 uses
  %i.aon = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.aom
  %i.aoo = load i16, ptr %i.aon, align 2
  %i.aop = sext i16 %i.aoo to i32
  %.not1920.i = icmp eq i32 %.01622.i, %i.aop
  br i1 %.not1920.i, label %._crit_edge.i510, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.oc, %bb.oe
  %i.aoq = phi i64 [ %i.apb, %bb.oe ], [ %i.aol, %bb.oc ]
  %i.aor = phi i64 [ %i.aox, %bb.oe ], [ %i.aof, %bb.oc ]
  %.021.i = phi i8 [ %.1.i, %bb.oe ], [ %i.aoe, %bb.oc ]
  %i.aos = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.aor
  %i.aot = load i16, ptr %i.aos, align 2          ; 3 uses
  %i.aou = icmp sgt i16 %i.aot, 636
  br i1 %i.aou, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %.lr.ph.i
  %i.aov = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.aoq
  %i.aow = load i8, ptr %i.aov, align 1
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %.lr.ph.i
  %.1.i = phi i8 [ %i.aow, %bb.od ], [ %.021.i, %.lr.ph.i ] ; 2 uses
  %i.aox = sext i16 %i.aot to i64                 ; 2 uses
  %i.aoy = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.aox
  %i.aoz = load i16, ptr %i.aoy, align 2
  %i.apa = sext i16 %i.aoz to i64
  %i.apb = zext i8 %.1.i to i64                   ; 2 uses
  %i.apc = add nsw i64 %i.apa, %i.apb             ; 2 uses
  %i.apd = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.apc
  %i.ape = load i16, ptr %i.apd, align 2
  %.not19.i = icmp eq i16 %i.aot, %i.ape
  br i1 %.not19.i, label %._crit_edge.i510, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i510:                                 ; preds = %bb.oe, %bb.oc
  %.lcssa.i = phi i64 [ %i.aom, %bb.oc ], [ %i.apc, %bb.oe ]
  %i.apf = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i
  %i.apg = load i16, ptr %i.apf, align 2
  %i.aph = sext i16 %i.apg to i32                 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.01523.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.api, %i.anx
  br i1 %exitcond.not.i, label %yy_get_previous_state.exit, label %.lr.ph25.i, !llvm.loop !32

yy_get_previous_state.exit:                       ; preds = %._crit_edge.i510, %bb.ny
  %.016.lcssa.i = phi i32 [ %i.any, %bb.ny ], [ %i.aph, %._crit_edge.i510 ] ; 3 uses
  %i.apj = sext i32 %.016.lcssa.i to i64          ; 3 uses
  %i.apk = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.apj
  %i.apl = load i16, ptr %i.apk, align 2
  %.not.i511 = icmp eq i16 %i.apl, 0
  br i1 %.not.i511, label %bb.og, label %bb.of

bb.of:                                            ; preds = %yy_get_previous_state.exit
  store i32 %.016.lcssa.i, ptr @yy_last_accepting_state, align 4
  store ptr %i.anx, ptr @yy_last_accepting_cpos, align 8
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %yy_get_previous_state.exit
  %i.apm = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.apj
  %i.apn = load i16, ptr %i.apm, align 2
  %i.apo = sext i16 %i.apn to i64
  %i.app = add nsw i64 %i.apo, 1                  ; 2 uses
  %i.apq = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.app
  %i.apr = load i16, ptr %i.apq, align 2
  %i.aps = sext i16 %i.apr to i32
  %.not1415.i = icmp eq i32 %.016.lcssa.i, %i.aps
  br i1 %.not1415.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i512

.lr.ph.i512:                                      ; preds = %bb.og, %.lr.ph.i512
  %i.apt = phi i64 [ %i.apw, %.lr.ph.i512 ], [ %i.apj, %bb.og ]
  %i.apu = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.apt
  %i.apv = load i16, ptr %i.apu, align 2          ; 2 uses
  %i.apw = sext i16 %i.apv to i64                 ; 2 uses
  %i.apx = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.apw
  %i.apy = load i16, ptr %i.apx, align 2
  %i.apz = sext i16 %i.apy to i64
  %i.aqa = add nsw i64 %i.apz, 1                  ; 2 uses
  %i.aqb = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.aqa
  %i.aqc = load i16, ptr %i.aqb, align 2
  %.not14.i = icmp eq i16 %i.apv, %i.aqc
  br i1 %.not14.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i512, !llvm.loop !33

yy_try_NUL_trans.exit:                            ; preds = %.lr.ph.i512, %bb.og
  %.lcssa.i514 = phi i64 [ %i.app, %bb.og ], [ %i.aqa, %.lr.ph.i512 ]
  %i.aqd = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i514
  %i.aqe = load i16, ptr %i.aqd, align 2          ; 2 uses
  switch i16 %i.aqe, label %bb.oh [
    i16 636, label %bb.oi
    i16 0, label %bb.oi
  ]

bb.oh:                                            ; preds = %yy_try_NUL_trans.exit
  %i.aqf = sext i16 %i.aqe to i32
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.anx, i64 1 ; 2 uses
  store ptr %i.aqg, ptr @yy_c_buf_p, align 8
  br label %.loopexit590.backedge

.loopexit590.backedge:                            ; preds = %._crit_edge.i534, %bb.oh, %bb.pi
  %.0442.be = phi i32 [ %i.aqf, %bb.oh ], [ %i.axo, %bb.pi ], [ %i.ayx, %._crit_edge.i534 ]
  %.0438.be = phi ptr [ %i.aqg, %bb.oh ], [ %i.axn, %bb.pi ], [ %i.axn, %._crit_edge.i534 ]
  %.0434.be = phi ptr [ %i.anv, %bb.oh ], [ %i.axg, %bb.pi ], [ %i.axg, %._crit_edge.i534 ]
  br label %.loopexit590

bb.oi:                                            ; preds = %yy_try_NUL_trans.exit, %yy_try_NUL_trans.exit
  %i.aqh = load ptr, ptr @yy_last_accepting_cpos, align 8
  %i.aqi = load i32, ptr @yy_last_accepting_state, align 4
  br label %.backedge.outer.backedge

bb.oj:                                            ; preds = %bb.nx
  %i.aqj = load ptr, ptr @base_yytext, align 8    ; 8 uses
  %i.aqk = add i32 %i.ani, 1
  %i.aql = sext i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds i8, ptr %i.anm, i64 %i.aql
  %i.aqn = icmp ugt ptr %i.ank, %i.aqm
  br i1 %i.aqn, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.46) #26
  unreachable

bb.ol:                                            ; preds = %bb.oj
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.anj, i64 52
  %i.aqp = load i32, ptr %i.aqo, align 4
  %i.aqq = icmp eq i32 %i.aqp, 0
  %i.aqr = ptrtoint ptr %i.ank to i64             ; 2 uses
  %i.aqs = ptrtoint ptr %i.aqj to i64             ; 3 uses
  br i1 %i.aqq, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.aqt = sub i64 %i.aqr, %i.aqs
  %i.aqu = icmp eq i64 %i.aqt, 1
  br i1 %i.aqu, label %yy_get_previous_state.exit537, label %yy_get_next_buffer.exit.thread571

bb.on:                                            ; preds = %bb.ol
  %i.aqv = xor i64 %i.aqs, -1
  %i.aqw = add i64 %i.aqv, %i.aqr                 ; 7 uses
  %i.aqx = trunc i64 %i.aqw to i32                ; 5 uses
  %i.aqy = icmp sgt i32 %i.aqx, 0
  br i1 %i.aqy, label %iter.check, label %._crit_edge.i515

iter.check:                                       ; preds = %bb.on
  %i.aqz = and i64 %i.aqw, 2147483647             ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.aqz, 4
  %i.ara = sub i64 %i.aqs, %i.ann
  %diff.check = icmp ugt i64 %i.ara, -32
  %or.cond2494 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2494, label %.lr.ph.i520.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2479 = icmp samesign ult i64 %i.aqz, 32
  br i1 %min.iters.check2479, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.arb = and i64 %i.aqw, 28
  %n.vec = and i64 %i.aqw, 2147483616             ; 6 uses
  %i.arc = trunc nuw nsw i64 %n.vec to i32
  %i.ard = getelementptr i8, ptr %i.aqj, i64 %n.vec
  %i.are = getelementptr i8, ptr %i.anm, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aqj, i64 %index ; 2 uses
  %next.gep2480 = getelementptr i8, ptr %i.anm, i64 %index ; 2 uses
  %i.arf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load2481 = load <16 x i8>, ptr %i.arf, align 1
  %i.arg = getelementptr i8, ptr %next.gep2480, i64 16
  store <16 x i8> %wide.load, ptr %next.gep2480, align 1
  store <16 x i8> %wide.load2481, ptr %i.arg, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.arh = icmp eq i64 %index.next, %n.vec
  br i1 %i.arh, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aqz, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.arb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i520.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2484 = and i64 %i.aqw, 2147483644         ; 5 uses
  %i.ari = trunc nuw nsw i64 %n.vec2484 to i32
  %i.arj = getelementptr i8, ptr %i.aqj, i64 %n.vec2484
  %i.ark = getelementptr i8, ptr %i.anm, i64 %n.vec2484
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2485 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2489, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2486 = getelementptr i8, ptr %i.aqj, i64 %index2485
  %next.gep2487 = getelementptr i8, ptr %i.anm, i64 %index2485
  %wide.load2488 = load <4 x i8>, ptr %next.gep2486, align 1
  store <4 x i8> %wide.load2488, ptr %next.gep2487, align 1
  %index.next2489 = add nuw i64 %index2485, 4     ; 2 uses
  %i.arl = icmp eq i64 %index.next2489, %n.vec2484
  br i1 %i.arl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2490 = icmp eq i64 %i.aqz, %n.vec2484
  br i1 %cmp.n2490, label %._crit_edge.loopexit.i, label %.lr.ph.i520.preheader

.lr.ph.i520.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05285.i.ph = phi i32 [ 0, %iter.check ], [ %i.arc, %vec.epilog.iter.check ], [ %i.ari, %vec.epilog.middle.block ]
  %.05384.i.ph = phi ptr [ %i.aqj, %iter.check ], [ %i.ard, %vec.epilog.iter.check ], [ %i.arj, %vec.epilog.middle.block ]
  %.05483.i.ph = phi ptr [ %i.anm, %iter.check ], [ %i.are, %vec.epilog.iter.check ], [ %i.ark, %vec.epilog.middle.block ]
  br label %.lr.ph.i520

.lr.ph.i520:                                      ; preds = %.lr.ph.i520.preheader, %.lr.ph.i520
  %.05285.i = phi i32 [ %i.arp, %.lr.ph.i520 ], [ %.05285.i.ph, %.lr.ph.i520.preheader ]
  %.05384.i = phi ptr [ %i.arm, %.lr.ph.i520 ], [ %.05384.i.ph, %.lr.ph.i520.preheader ] ; 2 uses
  %.05483.i = phi ptr [ %i.aro, %.lr.ph.i520 ], [ %.05483.i.ph, %.lr.ph.i520.preheader ] ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.05384.i, i64 1
  %i.arn = load i8, ptr %.05384.i, align 1
  %i.aro = getelementptr inbounds nuw i8, ptr %.05483.i, i64 1
  store i8 %i.arn, ptr %.05483.i, align 1
  %i.arp = add nuw nsw i32 %.05285.i, 1           ; 2 uses
  %exitcond.not.i521 = icmp eq i32 %i.arp, %i.aqx
  br i1 %exitcond.not.i521, label %._crit_edge.loopexit.i, label %.lr.ph.i520, !llvm.loop !39

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i520, %vec.epilog.middle.block, %middle.block
  %.pre.i522 = load ptr, ptr %i.amy, align 8
  br label %._crit_edge.i515

._crit_edge.i515:                                 ; preds = %._crit_edge.loopexit.i, %bb.on
  %i.arq = phi ptr [ %.pre.i522, %._crit_edge.loopexit.i ], [ %i.anj, %bb.on ] ; 5 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 56
  %i.ars = load i32, ptr %i.arr, align 8
  %i.art = icmp eq i32 %i.ars, 2
  br i1 %i.art, label %.thread77.i, label %bb.oo

.thread77.i:                                      ; preds = %._crit_edge.i515
  store i32 0, ptr @yy_n_chars, align 4
  br label %.sink.split.i

bb.oo:                                            ; preds = %._crit_edge.i515
  %i.aru = xor i32 %i.aqx, -1                     ; 2 uses
  %.pn.in86.i = getelementptr inbounds nuw i8, ptr %i.arq, i64 24
  %.pn87.i = load i32, ptr %.pn.in86.i, align 8   ; 2 uses
  %.05088.i = add i32 %.pn87.i, %i.aru            ; 2 uses
  %i.arv = icmp slt i32 %.05088.i, 1
  br i1 %i.arv, label %.lr.ph90.i, label %._crit_edge91.i

.lr.ph90.i:                                       ; preds = %bb.oo, %bb.os
  %i.arw = phi i32 [ %.pn.i, %bb.os ], [ %.pn87.i, %bb.oo ] ; 3 uses
  %i.arx = phi ptr [ %i.asq, %bb.os ], [ %i.arq, %bb.oo ] ; 3 uses
  %i.ary = phi ptr [ %i.asp, %bb.os ], [ %i.ank, %bb.oo ]
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arx, i64 8 ; 3 uses
  %i.asa = load ptr, ptr %i.arz, align 8          ; 2 uses
  %i.asb = ptrtoint ptr %i.ary to i64
  %i.asc = ptrtoint ptr %i.asa to i64
  %i.asd = sub i64 %i.asb, %i.asc
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arx, i64 32
  %i.asf = load i32, ptr %i.ase, align 8
  %.not67.i = icmp eq i32 %i.asf, 0
  br i1 %.not67.i, label %.thread.i, label %bb.op

.thread.i:                                        ; preds = %.lr.ph90.i
  store ptr null, ptr %i.arz, align 8
  br label %.loopexit79.i

bb.op:                                            ; preds = %.lr.ph90.i
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arx, i64 24
  %i.ash = shl i32 %i.arw, 1                      ; 2 uses
  %i.asi = icmp slt i32 %i.ash, 1
  br i1 %i.asi, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.asj = sdiv i32 %i.arw, 8
  %i.ask = add i32 %i.asj, %i.arw
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  %storemerge68.i = phi i32 [ %i.ask, %bb.oq ], [ %i.ash, %bb.op ] ; 2 uses
  store i32 %storemerge68.i, ptr %i.asg, align 8
  %i.asl = add i32 %storemerge68.i, 2
  %i.asm = sext i32 %i.asl to i64
  %i.asn = tail call noalias noundef ptr @realloc(ptr noundef %i.asa, i64 noundef %i.asm) #27 ; 3 uses
  store ptr %i.asn, ptr %i.arz, align 8
  %.not69.i = icmp eq ptr %i.asn, null
  br i1 %.not69.i, label %.loopexit79.i, label %bb.os

.loopexit79.i:                                    ; preds = %bb.or, %.thread.i
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.47) #26
  unreachable

bb.os:                                            ; preds = %bb.or
  %sext70.i = shl i64 %i.asd, 32
  %i.aso = ashr exact i64 %sext70.i, 32
  %i.asp = getelementptr inbounds i8, ptr %i.asn, i64 %i.aso ; 2 uses
  store ptr %i.asp, ptr @yy_c_buf_p, align 8
  %i.asq = load ptr, ptr %i.amy, align 8          ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.asq, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8       ; 2 uses
  %.050.i = add i32 %.pn.i, %i.aru                ; 2 uses
  %i.asr = icmp slt i32 %.050.i, 1
  br i1 %i.asr, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !40

._crit_edge91.i:                                  ; preds = %bb.os, %bb.oo
  %i.ass = phi ptr [ %i.arq, %bb.oo ], [ %i.asq, %bb.os ]
  %.050.lcssa.i = phi i32 [ %.05088.i, %bb.oo ], [ %.050.i, %bb.os ]
  %i.ast = tail call i32 @llvm.umin.i32(i32 %.050.lcssa.i, i32 8192) ; 3 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ass, i64 36
  %i.asv = load i32, ptr %i.asu, align 4
  %.not.i516 = icmp eq i32 %i.asv, 0
  br i1 %.not.i516, label %bb.ox, label %.preheader.i517

.preheader.i517:                                  ; preds = %._crit_edge91.i
  %sext66.i = shl i64 %i.aqw, 32
  %i.asw = ashr exact i64 %sext66.i, 32           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ast to i64
  br label %bb.ot

bb.ot:                                            ; preds = %bb.ou, %.preheader.i517
  %indvars.iv.i = phi i64 [ 0, %.preheader.i517 ], [ %indvars.iv.next.i, %bb.ou ] ; 3 uses
  %i.asx = load ptr, ptr @base_yyin, align 8
  %i.asy = tail call i32 @getc(ptr noundef %i.asx) ; 3 uses
  switch i32 %i.asy, label %bb.ou [
    i32 -1, label %.critedge.split.loop.exit.i
    i32 10, label %.critedge.split.loop.exit.i
  ]

bb.ou:                                            ; preds = %bb.ot
  %i.asz = trunc i32 %i.asy to i8
  %i.ata = load ptr, ptr @yy_buffer_stack, align 8
  %i.atb = load i64, ptr @yy_buffer_stack_top, align 8
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.ata, i64 %i.atb
  %i.atd = load ptr, ptr %i.atc, align 8
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 8
  %i.atf = load ptr, ptr %i.ate, align 8
  %i.atg = getelementptr inbounds i8, ptr %i.atf, i64 %i.asw
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 %indvars.iv.i
  store i8 %i.asz, ptr %i.ath, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond101.not.i, label %.critedge.i518, label %bb.ot, !llvm.loop !41

.critedge.split.loop.exit.i:                      ; preds = %bb.ot, %bb.ot
  %i.ati = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i518

.critedge.i518:                                   ; preds = %bb.ou, %.critedge.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %i.ati, %.critedge.split.loop.exit.i ], [ %i.ast, %bb.ou ] ; 6 uses
  switch i32 %i.asy, label %.loopexit.i [
    i32 10, label %.loopexit.thread117.i
    i32 -1, label %bb.ov
  ]

.loopexit.thread117.i:                            ; preds = %.critedge.i518
  %i.atj = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.atk = load i64, ptr @yy_buffer_stack_top, align 8 ; 2 uses
  %i.atl = getelementptr inbounds nuw [8 x i8], ptr %i.atj, i64 %i.atk ; 2 uses
  %i.atm = load ptr, ptr %i.atl, align 8
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 8
  %i.ato = load ptr, ptr %i.atn, align 8
  %i.atp = getelementptr inbounds i8, ptr %i.ato, i64 %i.asw
  %i.atq = add nuw i32 %.0.lcssa.i, 1             ; 3 uses
  %i.atr = zext nneg i32 %.0.lcssa.i to i64
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atp, i64 %i.atr
  store i8 10, ptr %i.ats, align 1
  store i32 %i.atq, ptr @yy_n_chars, align 4
  %i.att = load ptr, ptr %i.atl, align 8
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 28
  store i32 %i.atq, ptr %i.atu, align 4
  br label %bb.pe

bb.ov:                                            ; preds = %.critedge.i518
  %i.atv = load ptr, ptr @base_yyin, align 8
  %i.atw = tail call i32 @ferror(ptr noundef %i.atv) #30
  %.not65.i = icmp eq i32 %i.atw, 0
  br i1 %.not65.i, label %.loopexit.i, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.48) #26
  unreachable

bb.ox:                                            ; preds = %._crit_edge91.i
  %i.atx = tail call ptr @__errno_location() #31  ; 3 uses
  store i32 0, ptr %i.atx, align 4
  %sext.i = shl i64 %i.aqw, 32
  %i.aty = ashr exact i64 %sext.i, 32             ; 2 uses
  %i.atz = zext nneg i32 %i.ast to i64            ; 2 uses
  %i.aua = load ptr, ptr @yy_buffer_stack, align 8
  %i.aub = load i64, ptr @yy_buffer_stack_top, align 8
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.aua, i64 %i.aub
  %i.aud = load ptr, ptr %i.auc, align 8
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.auf = load ptr, ptr %i.aue, align 8
  %i.aug = getelementptr inbounds i8, ptr %i.auf, i64 %i.aty
  %i.auh = load ptr, ptr @base_yyin, align 8
  %i.aui = tail call i64 @fread(ptr noundef %i.aug, i64 noundef 1, i64 noundef %i.atz, ptr noundef %i.auh)
  %i.auj = trunc i64 %i.aui to i32                ; 3 uses
  store i32 %i.auj, ptr @yy_n_chars, align 4
  %i.auk = icmp eq i32 %i.auj, 0
  br i1 %i.auk, label %.lr.ph94.i, label %.loopexit.thread.i

.lr.ph94.i:                                       ; preds = %bb.ox, %bb.pa
  %i.aul = load ptr, ptr @base_yyin, align 8
  %i.aum = tail call i32 @ferror(ptr noundef %i.aul) #30
  %.not62.i = icmp eq i32 %i.aum, 0
  br i1 %.not62.i, label %.loopexit.thread115.i, label %bb.oy

.loopexit.thread115.i:                            ; preds = %.lr.ph94.i
  %i.aun = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.auo = load i64, ptr @yy_buffer_stack_top, align 8 ; 2 uses
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.aun, i64 %i.auo
  %i.auq = load ptr, ptr %i.aup, align 8
  br label %.sink.split.i

bb.oy:                                            ; preds = %.lr.ph94.i
  %i.aur = load i32, ptr %i.atx, align 4
  %.not63.i = icmp eq i32 %i.aur, 4
  br i1 %.not63.i, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.48) #26
  unreachable

bb.pa:                                            ; preds = %bb.oy
  store i32 0, ptr %i.atx, align 4
  %i.aus = load ptr, ptr @base_yyin, align 8
  tail call void @clearerr(ptr noundef %i.aus) #30
  %i.aut = load ptr, ptr @yy_buffer_stack, align 8
  %i.auu = load i64, ptr @yy_buffer_stack_top, align 8
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %i.aut, i64 %i.auu
  %i.auw = load ptr, ptr %i.auv, align 8
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.auy = load ptr, ptr %i.aux, align 8
  %i.auz = getelementptr inbounds i8, ptr %i.auy, i64 %i.aty
  %i.ava = load ptr, ptr @base_yyin, align 8
  %i.avb = tail call i64 @fread(ptr noundef %i.auz, i64 noundef 1, i64 noundef %i.atz, ptr noundef %i.ava)
  %i.avc = trunc i64 %i.avb to i32                ; 3 uses
  store i32 %i.avc, ptr @yy_n_chars, align 4
  %i.avd = icmp eq i32 %i.avc, 0
  br i1 %i.avd, label %.lr.ph94.i, label %.loopexit.thread.i, !llvm.loop !42

.loopexit.thread.i:                               ; preds = %bb.pa, %bb.ox
  %.pr.ph.i = phi i32 [ %i.auj, %bb.ox ], [ %i.avc, %bb.pa ] ; 2 uses
  %i.ave = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.avf = load i64, ptr @yy_buffer_stack_top, align 8 ; 2 uses
  %i.avg = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %i.avf
  %i.avh = load ptr, ptr %i.avg, align 8
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 28
  store i32 %.pr.ph.i, ptr %i.avi, align 4
  br label %bb.pe

.loopexit.i:                                      ; preds = %bb.ov, %.critedge.i518
  store i32 %.0.lcssa.i, ptr @yy_n_chars, align 4
  %i.avj = load ptr, ptr @yy_buffer_stack, align 8 ; 3 uses
  %i.avk = load i64, ptr @yy_buffer_stack_top, align 8 ; 3 uses
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %i.avk
  %i.avm = load ptr, ptr %i.avl, align 8
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 28
  store i32 %.0.lcssa.i, ptr %i.avn, align 4
  %i.avo = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.avo, label %bb.pb, label %bb.pe

.sink.split.i:                                    ; preds = %.loopexit.thread115.i, %.thread77.i
  %.sink129.i = phi ptr [ %i.auq, %.loopexit.thread115.i ], [ %i.arq, %.thread77.i ]
  %.ph.i = phi i64 [ %i.auo, %.loopexit.thread115.i ], [ %i.amx, %.thread77.i ]
  %.ph128.i = phi ptr [ %i.aun, %.loopexit.thread115.i ], [ %i.amw, %.thread77.i ]
  %i.avp = getelementptr inbounds nuw i8, ptr %.sink129.i, i64 28
  store i32 0, ptr %i.avp, align 4
  br label %bb.pb

bb.pb:                                            ; preds = %.sink.split.i, %.loopexit.i
  %i.avq = phi i64 [ %i.avk, %.loopexit.i ], [ %.ph.i, %.sink.split.i ] ; 2 uses
  %i.avr = phi ptr [ %i.avj, %.loopexit.i ], [ %.ph128.i, %.sink.split.i ] ; 2 uses
  %i.avs = icmp eq i32 %i.aqx, 0
  br i1 %i.avs, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.avt = load ptr, ptr @base_yyin, align 8
  tail call void @base_yyrestart(ptr noundef %i.avt)
  %.pre102.i = load i32, ptr @yy_n_chars, align 4
  %.pre103.i = load ptr, ptr @yy_buffer_stack, align 8
  %.pre104.i = load i64, ptr @yy_buffer_stack_top, align 8
  br label %bb.pe

bb.pd:                                            ; preds = %bb.pb
  %i.avu = getelementptr inbounds nuw [8 x i8], ptr %i.avr, i64 %i.avq
  %i.avv = load ptr, ptr %i.avu, align 8
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 56
  store i32 2, ptr %i.avw, align 8
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %.loopexit.i, %.loopexit.thread.i, %.loopexit.thread117.i
  %i.avx = phi i64 [ %.pre104.i, %bb.pc ], [ %i.avq, %bb.pd ], [ %i.avk, %.loopexit.i ], [ %i.avf, %.loopexit.thread.i ], [ %i.atk, %.loopexit.thread117.i ]
  %i.avy = phi ptr [ %.pre103.i, %bb.pc ], [ %i.avr, %bb.pd ], [ %i.avj, %.loopexit.i ], [ %i.ave, %.loopexit.thread.i ], [ %i.atj, %.loopexit.thread117.i ]
  %i.avz = phi i32 [ %.pre102.i, %bb.pc ], [ 0, %bb.pd ], [ %.0.lcssa.i, %.loopexit.i ], [ %.pr.ph.i, %.loopexit.thread.i ], [ %i.atq, %.loopexit.thread117.i ] ; 2 uses
  %.051.i = phi i32 [ 1, %bb.pc ], [ 2, %bb.pd ], [ 0, %.loopexit.i ], [ 0, %.loopexit.thread.i ], [ 0, %.loopexit.thread117.i ]
  %i.awa = add i32 %i.avz, %i.aqx                 ; 5 uses
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %i.avy, i64 %i.avx ; 6 uses
  %i.awc = load ptr, ptr %i.awb, align 8          ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 24
  %i.awe = load i32, ptr %i.awd, align 8
  %i.awf = icmp sgt i32 %i.awa, %i.awe
  br i1 %i.awf, label %bb.pf, label %yy_get_next_buffer.exit

bb.pf:                                            ; preds = %bb.pe
  %i.awg = ashr i32 %i.avz, 1
  %i.awh = add i32 %i.awa, %i.awg                 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.awj = load ptr, ptr %i.awi, align 8
  %i.awk = sext i32 %i.awh to i64
  %i.awl = tail call noalias noundef ptr @realloc(ptr noundef %i.awj, i64 noundef %i.awk) #27
  %i.awm = load ptr, ptr %i.awb, align 8
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  store ptr %i.awl, ptr %i.awn, align 8
  %i.awo = load ptr, ptr %i.awb, align 8          ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awq = load ptr, ptr %i.awp, align 8
  %.not71.i = icmp eq ptr %i.awq, null
  br i1 %.not71.i, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.49) #26
  unreachable

bb.ph:                                            ; preds = %bb.pf
  %i.awr = add i32 %i.awh, -2
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awo, i64 24
  store i32 %i.awr, ptr %i.aws, align 8
  %.pre106.i = load ptr, ptr %i.awb, align 8
  br label %yy_get_next_buffer.exit

yy_get_next_buffer.exit:                          ; preds = %bb.pe, %bb.ph
  %i.awt = phi ptr [ %.pre106.i, %bb.ph ], [ %i.awc, %bb.pe ]
  store i32 %i.awa, ptr @yy_n_chars, align 4
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  %i.awv = load ptr, ptr %i.awu, align 8
  %i.aww = sext i32 %i.awa to i64
  %i.awx = getelementptr inbounds i8, ptr %i.awv, i64 %i.aww
  store i8 0, ptr %i.awx, align 1
  %i.awy = load ptr, ptr %i.awb, align 8
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axa = load ptr, ptr %i.awz, align 8
  %i.axb = add i32 %i.awa, 1
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds i8, ptr %i.axa, i64 %i.axc
  store i8 0, ptr %i.axd, align 1
  %i.axe = load ptr, ptr %i.awb, align 8
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  %i.axg = load ptr, ptr %i.axf, align 8          ; 7 uses
  store ptr %i.axg, ptr @base_yytext, align 8
  switch i32 %.051.i, label %default.unreachable1630 [
    i32 1, label %yy_get_previous_state.exit537
    i32 0, label %bb.pi
    i32 2, label %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread571_crit_edge
  ]

yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread571_crit_edge: ; preds = %yy_get_next_buffer.exit
  %.pre1548.a = load ptr, ptr @yy_buffer_stack, align 8
  %.pre1549.a = load i64, ptr @yy_buffer_stack_top, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre1548.a, i64 %.pre1549.a
  %.pre1550 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1551 = getelementptr inbounds nuw i8, ptr %.pre1550, i64 8
  %.pre1552.a = load ptr, ptr %.phi.trans.insert1551, align 8
  %.pre1553 = load i32, ptr @yy_n_chars, align 4
  %.pre1558 = sext i32 %.pre1553 to i64
  br label %yy_get_next_buffer.exit.thread571

bb.pi:                                            ; preds = %yy_get_next_buffer.exit
  %i.axh = ptrtoint ptr %.2440 to i64
  %i.axi = ptrtoint ptr %i.amu to i64
  %i.axj = sub i64 %i.axh, %i.axi
  %i.axk = trunc i64 %i.axj to i32
  %i.axl = add i32 %i.axk, -1                     ; 2 uses
  %i.axm = sext i32 %i.axl to i64
  %i.axn = getelementptr inbounds i8, ptr %i.axg, i64 %i.axm ; 4 uses
  store ptr %i.axn, ptr @yy_c_buf_p, align 8
  %i.axo = load i32, ptr @yy_start, align 4       ; 2 uses
  %i.axp = icmp sgt i32 %i.axl, 0
  br i1 %i.axp, label %.lr.ph25.i524, label %.loopexit590.backedge

.lr.ph25.i524:                                    ; preds = %bb.pi, %._crit_edge.i534
  %.01523.i525 = phi ptr [ %i.ayy, %._crit_edge.i534 ], [ %i.axg, %bb.pi ] ; 3 uses
  %.01622.i526 = phi i32 [ %i.ayx, %._crit_edge.i534 ], [ %i.axo, %bb.pi ] ; 3 uses
  %i.axq = load i8, ptr %.01523.i525, align 1     ; 2 uses
  %.not.i527 = icmp eq i8 %i.axq, 0
  br i1 %.not.i527, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph25.i524
  %i.axr = zext i8 %i.axq to i64
  %i.axs = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.axr
  %i.axt = load i8, ptr %i.axs, align 1
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.lr.ph25.i524
  %i.axu = phi i8 [ %i.axt, %bb.pj ], [ 1, %.lr.ph25.i524 ] ; 2 uses
  %i.axv = sext i32 %.01622.i526 to i64           ; 3 uses
  %i.axw = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.axv
  %i.axx = load i16, ptr %i.axw, align 2
  %.not18.i528 = icmp eq i16 %i.axx, 0
  br i1 %.not18.i528, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  store i32 %.01622.i526, ptr @yy_last_accepting_state, align 4
  store ptr %.01523.i525, ptr @yy_last_accepting_cpos, align 8
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.axy = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.axv
  %i.axz = load i16, ptr %i.axy, align 2
  %i.aya = sext i16 %i.axz to i64
  %i.ayb = zext i8 %i.axu to i64                  ; 2 uses
  %i.ayc = add nsw i64 %i.aya, %i.ayb             ; 2 uses
  %i.ayd = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ayc
  %i.aye = load i16, ptr %i.ayd, align 2
  %i.ayf = sext i16 %i.aye to i32
  %.not1920.i529 = icmp eq i32 %.01622.i526, %i.ayf
  br i1 %.not1920.i529, label %._crit_edge.i534, label %.lr.ph.i530

.lr.ph.i530:                                      ; preds = %bb.pm, %bb.po
  %i.ayg = phi i64 [ %i.ayr, %bb.po ], [ %i.ayb, %bb.pm ]
  %i.ayh = phi i64 [ %i.ayn, %bb.po ], [ %i.axv, %bb.pm ]
  %.021.i531 = phi i8 [ %.1.i532, %bb.po ], [ %i.axu, %bb.pm ]
  %i.ayi = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.ayh
  %i.ayj = load i16, ptr %i.ayi, align 2          ; 3 uses
  %i.ayk = icmp sgt i16 %i.ayj, 636
  br i1 %i.ayk, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %.lr.ph.i530
  %i.ayl = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.ayg
  %i.aym = load i8, ptr %i.ayl, align 1
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %.lr.ph.i530
  %.1.i532 = phi i8 [ %i.aym, %bb.pn ], [ %.021.i531, %.lr.ph.i530 ] ; 2 uses
  %i.ayn = sext i16 %i.ayj to i64                 ; 2 uses
  %i.ayo = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.ayn
  %i.ayp = load i16, ptr %i.ayo, align 2
  %i.ayq = sext i16 %i.ayp to i64
  %i.ayr = zext i8 %.1.i532 to i64                ; 2 uses
  %i.ays = add nsw i64 %i.ayq, %i.ayr             ; 2 uses
  %i.ayt = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ays
  %i.ayu = load i16, ptr %i.ayt, align 2
  %.not19.i533 = icmp eq i16 %i.ayj, %i.ayu
  br i1 %.not19.i533, label %._crit_edge.i534, label %.lr.ph.i530, !llvm.loop !31

._crit_edge.i534:                                 ; preds = %bb.po, %bb.pm
  %.lcssa.i535 = phi i64 [ %i.ayc, %bb.pm ], [ %i.ays, %bb.po ]
  %i.ayv = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i535
  %i.ayw = load i16, ptr %i.ayv, align 2
  %i.ayx = sext i16 %i.ayw to i32                 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.01523.i525, i64 1 ; 2 uses
  %exitcond.not.i536 = icmp eq ptr %i.ayy, %i.axn
  br i1 %exitcond.not.i536, label %.loopexit590.backedge, label %.lr.ph25.i524, !llvm.loop !32

yy_get_next_buffer.exit.thread571:                ; preds = %bb.om, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread571_crit_edge
  %.pre-phi = phi i64 [ %.pre1558, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread571_crit_edge ], [ %i.ano, %bb.om ]
  %i.ayz = phi ptr [ %i.axg, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread571_crit_edge ], [ %i.aqj, %bb.om ] ; 4 uses
  %i.aza = phi ptr [ %.pre1552.a, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread571_crit_edge ], [ %i.anm, %bb.om ]
  %i.azb = getelementptr inbounds i8, ptr %i.aza, i64 %.pre-phi ; 5 uses
  store ptr %i.azb, ptr @yy_c_buf_p, align 8
  %i.azc = load i32, ptr @yy_start, align 4       ; 2 uses
  %i.azd = icmp ult ptr %i.ayz, %i.azb
  br i1 %i.azd, label %.lr.ph25.i539, label %.backedge.outer.backedge

.backedge.outer.backedge:                         ; preds = %._crit_edge.i549, %yy_get_next_buffer.exit.thread571, %bb.oi
  %.3445.ph.be = phi i32 [ %i.azc, %yy_get_next_buffer.exit.thread571 ], [ %i.aqi, %bb.oi ], [ %i.bal, %._crit_edge.i549 ]
  %.2440.ph.be = phi ptr [ %i.azb, %yy_get_next_buffer.exit.thread571 ], [ %i.aqh, %bb.oi ], [ %i.azb, %._crit_edge.i549 ]
  %.1435.ph.be = phi ptr [ %i.ayz, %yy_get_next_buffer.exit.thread571 ], [ %i.anv, %bb.oi ], [ %i.ayz, %._crit_edge.i549 ]
  br label %.backedge.outer

.lr.ph25.i539:                                    ; preds = %yy_get_next_buffer.exit.thread571, %._crit_edge.i549
  %.01523.i540 = phi ptr [ %i.bam, %._crit_edge.i549 ], [ %i.ayz, %yy_get_next_buffer.exit.thread571 ] ; 3 uses
  %.01622.i541 = phi i32 [ %i.bal, %._crit_edge.i549 ], [ %i.azc, %yy_get_next_buffer.exit.thread571 ] ; 3 uses
  %i.aze = load i8, ptr %.01523.i540, align 1     ; 2 uses
  %.not.i542 = icmp eq i8 %i.aze, 0
  br i1 %.not.i542, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %.lr.ph25.i539
  %i.azf = zext i8 %i.aze to i64
  %i.azg = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.azf
  %i.azh = load i8, ptr %i.azg, align 1
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %.lr.ph25.i539
  %i.azi = phi i8 [ %i.azh, %bb.pp ], [ 1, %.lr.ph25.i539 ] ; 2 uses
  %i.azj = sext i32 %.01622.i541 to i64           ; 3 uses
  %i.azk = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.azj
  %i.azl = load i16, ptr %i.azk, align 2
  %.not18.i543 = icmp eq i16 %i.azl, 0
  br i1 %.not18.i543, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  store i32 %.01622.i541, ptr @yy_last_accepting_state, align 4
  store ptr %.01523.i540, ptr @yy_last_accepting_cpos, align 8
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  %i.azm = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.azj
  %i.azn = load i16, ptr %i.azm, align 2
  %i.azo = sext i16 %i.azn to i64
  %i.azp = zext i8 %i.azi to i64                  ; 2 uses
  %i.azq = add nsw i64 %i.azo, %i.azp             ; 2 uses
  %i.azr = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.azq
  %i.azs = load i16, ptr %i.azr, align 2
  %i.azt = sext i16 %i.azs to i32
  %.not1920.i544 = icmp eq i32 %.01622.i541, %i.azt
  br i1 %.not1920.i544, label %._crit_edge.i549, label %.lr.ph.i545

.lr.ph.i545:                                      ; preds = %bb.ps, %bb.pu
  %i.azu = phi i64 [ %i.baf, %bb.pu ], [ %i.azp, %bb.ps ]
  %i.azv = phi i64 [ %i.bab, %bb.pu ], [ %i.azj, %bb.ps ]
  %.021.i546 = phi i8 [ %.1.i547, %bb.pu ], [ %i.azi, %bb.ps ]
  %i.azw = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.azv
  %i.azx = load i16, ptr %i.azw, align 2          ; 3 uses
  %i.azy = icmp sgt i16 %i.azx, 636
  br i1 %i.azy, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %.lr.ph.i545
  %i.azz = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.azu
  %i.baa = load i8, ptr %i.azz, align 1
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %.lr.ph.i545
  %.1.i547 = phi i8 [ %i.baa, %bb.pt ], [ %.021.i546, %.lr.ph.i545 ] ; 2 uses
  %i.bab = sext i16 %i.azx to i64                 ; 2 uses
  %i.bac = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.bab
  %i.bad = load i16, ptr %i.bac, align 2
  %i.bae = sext i16 %i.bad to i64
  %i.baf = zext i8 %.1.i547 to i64                ; 2 uses
  %i.bag = add nsw i64 %i.bae, %i.baf             ; 2 uses
  %i.bah = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.bag
  %i.bai = load i16, ptr %i.bah, align 2
  %.not19.i548 = icmp eq i16 %i.azx, %i.bai
  br i1 %.not19.i548, label %._crit_edge.i549, label %.lr.ph.i545, !llvm.loop !31

._crit_edge.i549:                                 ; preds = %bb.pu, %bb.ps
  %.lcssa.i550 = phi i64 [ %i.azq, %bb.ps ], [ %i.bag, %bb.pu ]
  %i.baj = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i550
  %i.bak = load i16, ptr %i.baj, align 2
  %i.bal = sext i16 %i.bak to i32                 ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.01523.i540, i64 1 ; 2 uses
  %exitcond.not.i551 = icmp eq ptr %i.bam, %i.azb
  br i1 %exitcond.not.i551, label %.backedge.outer.backedge, label %.lr.ph25.i539, !llvm.loop !32

default.unreachable1630:                          ; preds = %yy_get_next_buffer.exit
  unreachable

yy_get_previous_state.exit537:                    ; preds = %yy_get_next_buffer.exit, %bb.om
  %i.ban = phi ptr [ %i.aqj, %bb.om ], [ %i.axg, %yy_get_next_buffer.exit ]
  store ptr %i.ban, ptr @yy_c_buf_p, align 8
  %i.bao = load i32, ptr @yy_start, align 4
  %i.bap = add nsw i32 %i.bao, -1
  %i.baq = sdiv i32 %i.bap, 2
  %i.bar = add nuw nsw i32 %i.baq, 147
  br label %.loopexit593.a

bb.pv:                                            ; preds = %.loopexit593.a
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.41) #26
  unreachable

.loopexit588:                                     ; preds = %.loopexit593.a
  br label %bb.pw

.loopexit1073:                                    ; preds = %.loopexit593.a
  br label %bb.pw

.loopexit1650:                                    ; preds = %.loopexit593.a
  br label %bb.pw

.fold.split:                                      ; preds = %.loopexit593.a, %.loopexit593.a, %bb.er
  br label %bb.pw

.loopexit2069:                                    ; preds = %.loopexit593.a
  br label %bb.pw

.loopexit2497:                                    ; preds = %.loopexit593.a
  br label %bb.pw

bb.pw:                                            ; preds = %.loopexit593.a, %.loopexit2497, %.loopexit2069, %bb.er, %.fold.split, %.loopexit1650, %.loopexit1073, %.loopexit588, %bb.nj, %bb.gq, %bb.gp, %bb.fy, %bb.fv, %bb.ft, %bb.fu, %.thread564.a, %bb.en, %bb.ep, %bb.eq, %bb.es, %bb.et, %._crit_edge1012, %._crit_edge1016, %._crit_edge1020, %._crit_edge1024, %._crit_edge1028, %._crit_edge1032, %._crit_edge1036, %._crit_edge1040, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gh, %bb.gg, %bb.gd, %bb.fz, %bb.fx, %bb.fw, %bb.fq, %bb.fm, %bb.fl, %._crit_edge1045, %bb.fg, %._crit_edge1050, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ew, %bb.ee, %bb.eb, %bb.dy, %bb.dr, %bb.do, %bb.dn, %bb.dc, %._crit_edge1063, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.bz
  %.3451 = phi i32 [ 333, %bb.bz ], [ 334, %bb.cc ], [ 331, %bb.cd ], [ 331, %bb.ce ], [ 331, %bb.cf ], [ 332, %bb.cg ], [ %i.mt, %._crit_edge1063 ], [ 331, %bb.dc ], [ 324, %bb.dn ], [ 324, %bb.do ], [ 329, %bb.dr ], [ %i.wn, %bb.gp ], [ 338, %.loopexit588 ], [ 339, %.loopexit1073 ], [ 340, %.loopexit1650 ], [ 341, %.loopexit2069 ], [ 342, %.loopexit2497 ], [ 344, %.fold.split ], [ 0, %bb.nj ], [ 866, %bb.dy ], [ %i.pj, %bb.eb ], [ %i.pp, %bb.ee ], [ 302, %._crit_edge1012 ], [ 337, %bb.ew ], [ 327, %bb.ey ], [ %i.st, %bb.ez ], [ %i.sv, %bb.fa ], [ 330, %bb.fb ], [ %i.tr, %._crit_edge1050 ], [ 330, %bb.fg ], [ %i.un, %._crit_edge1045 ], [ %i.up, %bb.fl ], [ %i.ur, %bb.fm ], [ 325, %bb.fq ], [ 866, %bb.et ], [ %i.vj, %bb.fw ], [ 294, %bb.fx ], [ 294, %bb.fz ], [ %i.vd, %bb.fu ], [ 326, %bb.gd ], [ 326, %bb.gg ], [ 326, %bb.gh ], [ 302, %bb.fy ], [ 58, %bb.gs ], [ 59, %bb.gt ], [ 44, %bb.gu ], [ 42, %bb.gv ], [ 37, %bb.gw ], [ 47, %bb.gx ], [ 43, %bb.gy ], [ 45, %bb.gz ], [ 40, %bb.ha ], [ 41, %bb.hb ], [ 123, %bb.hd ], [ 125, %bb.he ], [ 91, %bb.hf ], [ 93, %bb.hg ], [ 61, %bb.hh ], [ 313, %bb.hi ], [ 319, %bb.hj ], [ 311, %bb.hk ], [ 317, %bb.hl ], [ 301, %bb.hm ], [ 310, %bb.hn ], [ 305, %bb.ho ], [ 308, %bb.hp ], [ 316, %bb.hq ], [ 300, %bb.hr ], [ 321, %bb.hs ], [ 315, %bb.ht ], [ 306, %bb.hu ], [ 314, %bb.hv ], [ 312, %bb.hw ], [ 307, %bb.hx ], [ 302, %bb.hy ], [ 302, %._crit_edge1040 ], [ 302, %._crit_edge1036 ], [ 302, %._crit_edge1032 ], [ 302, %._crit_edge1028 ], [ 302, %._crit_edge1024 ], [ 302, %._crit_edge1020 ], [ 302, %._crit_edge1016 ], [ 335, %.thread564.a ], [ %i.rs, %bb.en ], [ 341, %bb.ep ], [ 343, %bb.eq ], [ 342, %bb.er ], [ 328, %bb.gq ], [ 344, %bb.es ], [ 328, %bb.fv ], [ %i.va, %bb.ft ], [ 343, %.loopexit593.a ]
  ret i32 %.3451
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @base_yy_create_buffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25 ; 18 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.42) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.b, align 8
  %i.c = add i32 %1, 2
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #25 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.42) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.g, align 8
  %i.h = tail call ptr @__errno_location() #31    ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.pr.pre.i = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 0, ptr %i.j, align 4
  store i8 0, ptr %i.e, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.n, align 8
  %.not10.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not10.i.i, label %.critedge.i.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @yy_buffer_stack_top, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.pr.pre.i, i64 %i.o ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.a, %i.q
  br i1 %i.r, label %bb.g, label %.critedge.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.t = load i32, ptr %i.s, align 4
  store i32 %i.t, ptr @yy_n_chars, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  store ptr %i.v, ptr @yy_c_buf_p, align 8
  store ptr %i.v, ptr @base_yytext, align 8
  %i.w = load ptr, ptr %i.p, align 8
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr @base_yyin, align 8
  %i.y = load i8, ptr %i.v, align 1
  store i8 %i.y, ptr @yy_hold_char, align 1
  %.pre = load ptr, ptr %i.p, align 8
  %i.z = icmp eq ptr %i.a, %.pre
  store ptr %0, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 1, ptr %i.aa, align 4
  br i1 %i.z, label %base_yy_init_buffer.exit, label %.critedge.i

.critedge.i.sink.split:                           ; preds = %bb.f, %bb.e
  store ptr %0, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 1, ptr %i.ab, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.sink.split, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.ad, align 8
  br label %base_yy_init_buffer.exit

base_yy_init_buffer.exit:                         ; preds = %bb.g, %.critedge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.ae, align 4
  store i32 %i.i, ptr %i.h, align 4
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @mmfatal(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @addlit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @literallen, align 4       ; 2 uses
  %i.b = add i32 %i.a, %1                         ; 4 uses
  %i.c = load i32, ptr @literalalloc, align 4     ; 2 uses
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr @literalbuf, align 8
  br label %bb.c

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.d = phi i32 [ %i.e, %.preheader ], [ %i.c, %bb.a ]
  %i.e = shl i32 %i.d, 1                          ; 4 uses
  %.not4 = icmp slt i32 %i.b, %i.e
  br i1 %.not4, label %bb.b, label %.preheader, !llvm.loop !10

bb.b:                                             ; preds = %.preheader
  store i32 %i.e, ptr @literalalloc, align 4
  %i.f = load ptr, ptr @literalbuf, align 8
  %i.g = sext i32 %i.e to i64
  %i.h = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.g) #27 ; 2 uses
  store ptr %i.h, ptr @literalbuf, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  %i.l = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %0, i64 %i.l, i1 false)
  store i32 %i.b, ptr @literallen, align 4
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m
  store i8 0, ptr %i.n, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @mmerror(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @make3_str(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @addlitchar(i8 noundef zeroext %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @literallen, align 4       ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 3 uses
  %i.c = load i32, ptr @literalalloc, align 4     ; 2 uses
  %.not = icmp slt i32 %i.b, %i.c
  %.pre = load ptr, ptr @literalbuf, align 8      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr @literalalloc, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @realloc(ptr noundef %.pre, i64 noundef %i.e) #27 ; 2 uses
  store ptr %i.f, ptr @literalbuf, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 %0, ptr %i.i, align 1
  store i32 %i.b, ptr @literallen, align 4
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  store i8 0, ptr %i.k, align 1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare ptr @mm_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @loc_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @yyunput(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @yy_c_buf_p, align 8       ; 4 uses
  %i.b = load i8, ptr @yy_hold_char, align 1
  store i8 %i.b, ptr %i.a, align 1
  %i.c = load ptr, ptr @yy_buffer_stack, align 8
  %i.d = load i64, ptr @yy_buffer_stack_top, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = icmp ult ptr %i.a, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr @yy_n_chars, align 4
  %i.l = add i32 %i.k, 2                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = add i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 2 uses
  %i.r = sext i32 %i.l to i64
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 %i.r ; 2 uses
  %i.t = icmp sgt i32 %i.l, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.024 = phi ptr [ %i.u, %.lr.ph ], [ %i.s, %bb.b ]
  %.01823 = phi ptr [ %i.w, %.lr.ph ], [ %i.q, %bb.b ]
  %i.u = getelementptr inbounds i8, ptr %.024, i64 -1 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds i8, ptr %.01823, i64 -1 ; 3 uses
  store i8 %i.v, ptr %i.w, align 1
  %i.x = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ugt ptr %i.u, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ab = phi i32 [ %i.n, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.018.lcssa = phi ptr [ %i.q, %bb.b ], [ %i.w, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.s, %bb.b ], [ %i.u, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.x, %._crit_edge.loopexit ]
  %i.ac = ptrtoint ptr %.018.lcssa to i64
  %i.ad = ptrtoint ptr %.0.lcssa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %sext = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext, 32                ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %i.af ; 2 uses
  store i32 %i.ab, ptr @yy_n_chars, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa, i64 28
  store i32 %i.ab, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = icmp ult ptr %i.ag, %i.al
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.50) #26
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.020 = phi ptr [ %i.an, %bb.d ], [ %0, %bb.a ]
  %.019 = phi ptr [ %i.ag, %bb.d ], [ %i.a, %bb.a ]
  %i.ao = getelementptr inbounds i8, ptr %.019, i64 -1 ; 3 uses
  store i8 58, ptr %i.ao, align 1
  store ptr %.020, ptr @base_yytext, align 8
  %i.ap = load i8, ptr %i.ao, align 1
  store i8 %i.ap, ptr @yy_hold_char, align 1
  store ptr %i.ao, ptr @yy_c_buf_p, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare i32 @strtoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 330, 337) i32 @process_integer_literal(ptr noundef %0, i32 noundef range(i32 2, 17) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = tail call ptr @__errno_location() #31    ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = icmp eq i32 %1, 10
  %.idx = select i1 %i.c, i64 0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.e = call i32 @strtoint(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %1) #30
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load i8, ptr %i.f, align 1
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call ptr @loc_strdup(ptr noundef %0) #30
  store ptr %i.j, ptr @base_yylval, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.e, ptr @base_yylval, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 330, %bb.c ], [ 336, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @isdefine() unnamed_addr #0 {
bb.a:
  %.022 = load ptr, ptr @defines, align 8         ; 2 uses
  %.not23.not = icmp eq ptr %.022, null
  br i1 %.not23.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr @base_yytext, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.024 = phi ptr [ %.022, %.lr.ph ], [ %.0, %bb.h ] ; 6 uses
  %i.b = load ptr, ptr %.024, align 8
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #29
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.l = tail call ptr @mm_alloc(i64 noundef 32) #30 ; 6 uses
  %i.m = load ptr, ptr @yy_buffer_stack, align 8  ; 2 uses
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @yy_buffer_stack_top, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ]
  store ptr %i.q, ptr %i.l, align 8
  %i.r = load i32, ptr @base_yylineno, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr @input_filename, align 8
  %i.v = tail call ptr @mm_strdup(ptr noundef %i.u) #30
end_hunk_1
