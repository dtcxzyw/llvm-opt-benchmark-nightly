Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_language_scanner?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lex_scan:bb.a
  br label %.preheader6812

bb.aj:                                            ; preds = %bb.af
  %i.fk = icmp ult i8 %i.fg, 46
  br i1 %i.fk, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fl = icmp samesign ult i8 %i.fg, 37
  br i1 %i.fl, label %.preheader6812.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = icmp eq i8 %i.fg, 38
  br i1 %i.fm, label %bb.mq, label %.loopexit7062

bb.am:                                            ; preds = %bb.aj
  %i.fn = icmp ult i8 %i.fg, 48
  br i1 %i.fn, label %.preheader6812.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = icmp eq i8 %i.fg, 61
  br i1 %i.fo, label %bb.mu, label %.loopexit7062

.loopexit7062:                                    ; preds = %bb.ai, %bb.ah, %bb.kf, %bb.an, %bb.al
  %i.fp = phi ptr [ %i.ff, %bb.al ], [ %i.xs, %bb.kf ], [ %i.ff, %bb.an ], [ %i.ff, %bb.ah ], [ %i.ff, %bb.ai ]
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = trunc i64 %i.ft to i32
  store i32 %i.fu, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  br label %.thread6538

.split.loop.exit16835:                            ; preds = %bb.fj
  %i.fv = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  br label %.split.loop.exit16837

.split.loop.exit16837:                            ; preds = %bb.k, %.split.loop.exit16835
  %i.fw = phi ptr [ %i.fv, %.split.loop.exit16835 ], [ %i.y, %bb.k ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 4 uses
  store ptr %i.fx, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  store i32 %i.gb, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gc = load i8, ptr %i.y, align 1, !tbaa !44
  %.not6134 = icmp ne i8 %i.gc, 39                ; 3 uses
  %i.gd = icmp ult ptr %i.fx, %i.ac
  br i1 %i.gd, label %.lr.ph10121, label %._crit_edge10122

.lr.ph10121:                                      ; preds = %.split.loop.exit16837, %bb.ar
  %i.ge = phi ptr [ %i.gv, %bb.ar ], [ %i.fx, %.split.loop.exit16837 ] ; 4 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !44
  %i.gg = icmp eq i8 %i.gf, 39
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 4 uses
  store ptr %i.gh, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br i1 %i.gg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph10121
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.fz
  %i.gk = trunc i64 %i.gj to i32                  ; 2 uses
  store i32 %i.gk, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.gl = select i1 %.not6134, i32 -3, i32 -2
  %i.gm = add i32 %i.gl, %i.gk
  %.fr23386 = freeze i32 %i.gm                    ; 3 uses
  %i.gn = icmp ult i32 %.fr23386, 2
  br i1 %i.gn, label %bb.as, label %zend_string_alloc.exit

bb.ap:                                            ; preds = %.lr.ph10121
  %i.go = load i8, ptr %i.ge, align 1, !tbaa !44
  %i.gp = icmp eq i8 %i.go, 92
  %i.gq = icmp ult ptr %i.gh, %i.ac
  %or.cond6276 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond6276, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  store ptr %i.gr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %bb.ar

._crit_edge10122:                                 ; preds = %bb.ar, %.split.loop.exit16837
  %i.gs = ptrtoint ptr %i.ac to i64
  %i.gt = sub i64 %i.gs, %i.fz
  %i.gu = trunc i64 %i.gt to i32
  store i32 %i.gu, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  store i32 1, ptr %i.u, align 8, !tbaa !44
  br label %.thread6564

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gv = phi ptr [ %i.gr, %bb.aq ], [ %i.gh, %bb.ap ] ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %i.ac
  br i1 %i.gw, label %.lr.ph10121, label %._crit_edge10122

bb.as:                                            ; preds = %bb.ao
  %i.gx = icmp eq i32 %.fr23386, 0
  br i1 %i.gx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gy = load ptr, ptr @zend_empty_string, align 8, !tbaa !136
  store ptr %i.gy, ptr %0, align 8, !tbaa !44
  store i32 6, ptr %i.u, align 8, !tbaa !44
  br label %.loopexit6626

bb.au:                                            ; preds = %bb.as
  %i.gz = zext i1 %.not6134 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !44  ; 2 uses
  switch i8 %i.hc, label %bb.aw [
    i8 13, label %bb.av
    i8 10, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.hf = zext i8 %i.hc to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !136
  store ptr %i.hh, ptr %0, align 8, !tbaa !44
  store i32 6, ptr %i.u, align 8, !tbaa !44
  br label %.loopexit6626

zend_string_alloc.exit:                           ; preds = %bb.ao
  %i.hi = zext i1 %.not6134 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = zext i32 %.fr23386 to i64               ; 5 uses
  %i.hm = and i64 %i.hl, 4294967288
  %i.hn = add nuw nsw i64 %i.hm, 32
  %i.ho = tail call noalias ptr @_emalloc(i64 noundef %i.hn) #17 ; 8 uses
  store i32 1, ptr %i.ho, align 4, !tbaa !45
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 22, ptr %i.hp, align 4, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 0, ptr %i.hq, align 8, !tbaa !83
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %i.hl, ptr %i.hr, align 8, !tbaa !84
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull align 1 %i.hk, i64 %i.hl, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hl ; 4 uses
  store i8 0, ptr %i.ht, align 1, !tbaa !44
  store ptr %i.ho, ptr %0, align 8, !tbaa !44
  store i32 262, ptr %i.u, align 8, !tbaa !44
  %.promoted10123 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8 ; 4 uses
  %xtraiter = and i64 %i.hl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zend_string_alloc.exit.new, label %.prol.preheader

.prol.preheader:                                  ; preds = %zend_string_alloc.exit
  %i.hu = load i8, ptr %i.hs, align 8, !tbaa !44
  switch i8 %i.hu, label %.prol.loopexit.unr-lcssa [
    i8 92, label %.preheader6625
    i8 10, label %bb.ay
    i8 13, label %bb.ax
  ], !prof !137

bb.ax:                                            ; preds = %.prol.preheader
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 25
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !44
  %.not6135.prol = icmp eq i8 %i.hw, 10
  br i1 %.not6135.prol, label %.prol.loopexit.unr-lcssa, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.prol.preheader
  %i.hx = add nsw i32 %.promoted10123, 1          ; 2 uses
  store i32 %i.hx, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ay, %bb.ax, %.prol.preheader
  %i.hy = phi i32 [ %.promoted10123, %.prol.preheader ], [ %i.hx, %bb.ay ], [ %.promoted10123, %bb.ax ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 25
  br label %zend_string_alloc.exit.new

zend_string_alloc.exit.new:                       ; preds = %zend_string_alloc.exit, %.prol.loopexit.unr-lcssa
  %.unr = phi i32 [ %.promoted10123, %zend_string_alloc.exit ], [ %i.hy, %.prol.loopexit.unr-lcssa ]
  %.04960.unr = phi ptr [ %i.hs, %zend_string_alloc.exit ], [ %i.hz, %.prol.loopexit.unr-lcssa ]
  br label %bb.az

bb.az:                                            ; preds = %bb.bf, %zend_string_alloc.exit.new
  %i.ia = phi i32 [ %.unr, %zend_string_alloc.exit.new ], [ %i.in, %bb.bf ] ; 3 uses
  %.04960 = phi ptr [ %.04960.unr, %zend_string_alloc.exit.new ], [ %i.io, %bb.bf ] ; 7 uses
  %i.ib = load i8, ptr %.04960, align 1, !tbaa !44
  switch i8 %i.ib, label %bb.bc [
    i8 92, label %.preheader6625
    i8 10, label %bb.bb
    i8 13, label %bb.ba
  ], !prof !137

.preheader6625.loopexit.split.loop.exit:          ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %.04960, i64 1
  br label %.preheader6625

.preheader6625:                                   ; preds = %.preheader6625.loopexit.split.loop.exit, %bb.az, %.prol.preheader
  %.04960.lcssa = phi ptr [ %i.hs, %.prol.preheader ], [ %i.ic, %.preheader6625.loopexit.split.loop.exit ], [ %.04960, %bb.az ] ; 4 uses
  %i.id = icmp ult ptr %.04960.lcssa, %i.ht
  br i1 %i.id, label %.lr.ph10126, label %._crit_edge10127

bb.ba:                                            ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw i8, ptr %.04960, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !44
  %.not6135 = icmp eq i8 %i.if, 10
  br i1 %.not6135, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.ig = add nsw i32 %i.ia, 1                    ; 2 uses
  store i32 %i.ig, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.ba
  %i.ih = phi i32 [ %i.ia, %bb.az ], [ %i.ig, %bb.bb ], [ %i.ia, %bb.ba ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.04960, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !44
  switch i8 %i.ij, label %bb.bf [
    i8 92, label %.preheader6625.loopexit.split.loop.exit
    i8 10, label %bb.be
    i8 13, label %bb.bd
  ], !prof !137

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %.04960, i64 2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !44
  %.not6135.1 = icmp eq i8 %i.il, 10
  br i1 %.not6135.1, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.im = add nsw i32 %i.ih, 1                    ; 2 uses
  store i32 %i.im, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.in = phi i32 [ %i.ih, %bb.bc ], [ %i.im, %bb.be ], [ %i.ih, %bb.bd ]
  %i.io = getelementptr inbounds nuw i8, ptr %.04960, i64 2 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ht
  br i1 %i.ip, label %.loopexit6626, label %bb.az

.lr.ph10126thread-pre-split:                      ; preds = %bb.bn
  %.pr = load i8, ptr %i.jc, align 1, !tbaa !44
  br label %.lr.ph10126

.lr.ph10126:                                      ; preds = %.preheader6625, %.lr.ph10126thread-pre-split
  %i.iq = phi i8 [ %.pr, %.lr.ph10126thread-pre-split ], [ 92, %.preheader6625 ] ; 2 uses
  %.1496110125 = phi ptr [ %i.jc, %.lr.ph10126thread-pre-split ], [ %.04960.lcssa, %.preheader6625 ] ; 2 uses
  %.0496410124 = phi ptr [ %.14965, %.lr.ph10126thread-pre-split ], [ %.04960.lcssa, %.preheader6625 ] ; 6 uses
  %i.ir = icmp eq i8 %i.iq, 92
  br i1 %i.ir, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %.lr.ph10126
  %i.is = getelementptr inbounds nuw i8, ptr %.1496110125, i64 1 ; 4 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !44  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0496410124, i64 1 ; 2 uses
  switch i8 %i.it, label %bb.bi [
    i8 92, label %bb.bh
    i8 39, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  store i8 %i.it, ptr %.0496410124, align 1, !tbaa !44
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  store i8 92, ptr %.0496410124, align 1, !tbaa !44
  %i.iv = load i8, ptr %i.is, align 1, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %.0496410124, i64 2
  store i8 %i.iv, ptr %i.iu, align 1, !tbaa !44
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph10126
  %i.ix = getelementptr inbounds nuw i8, ptr %.0496410124, i64 1
  store i8 %i.iq, ptr %.0496410124, align 1, !tbaa !44
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bi, %bb.bj
  %.14965 = phi ptr [ %i.iu, %bb.bh ], [ %i.iw, %bb.bi ], [ %i.ix, %bb.bj ] ; 2 uses
  %.24962 = phi ptr [ %i.is, %bb.bh ], [ %i.is, %bb.bi ], [ %.1496110125, %bb.bj ] ; 3 uses
  %i.iy = load i8, ptr %.24962, align 1, !tbaa !44
  switch i8 %i.iy, label %bb.bn [
    i8 10, label %bb.bm
    i8 13, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.iz = getelementptr inbounds nuw i8, ptr %.24962, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !44
  %.not6136 = icmp eq i8 %i.ja, 10
  br i1 %.not6136, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %13 = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.jb = add nsw i32 %13, 1
  store i32 %i.jb, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm, %bb.bl
  %i.jc = getelementptr inbounds nuw i8, ptr %.24962, i64 1 ; 3 uses
  %i.jd = icmp ult ptr %i.jc, %i.ht
  br i1 %i.jd, label %.lr.ph10126thread-pre-split, label %._crit_edge10127, !llvm.loop !174

._crit_edge10127:                                 ; preds = %bb.bn, %.preheader6625
  %.04964.lcssa = phi ptr [ %.04960.lcssa, %.preheader6625 ], [ %.14965, %bb.bn ] ; 2 uses
  store i8 0, ptr %.04964.lcssa, align 1, !tbaa !44
  %i.je = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = ptrtoint ptr %.04964.lcssa to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !84
  br label %.loopexit6626

.loopexit6626:                                    ; preds = %bb.bf, %bb.at, %bb.aw, %._crit_edge10127
  %i.jk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !89 ; 2 uses
  %.not6138 = icmp eq ptr %i.jk, null
  br i1 %.not6138, label %.thread6564, label %zend_string_alloc.exit6390

zend_string_alloc.exit6390:                       ; preds = %.loopexit6626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i64 0, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !51
  %i.jl = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !84
  %i.jp = call i64 %i.jk(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.jm, i64 noundef %i.jo) #16 ; 0 uses
  %i.jq = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.jr = load i64, ptr %i.h, align 8, !tbaa !92  ; 4 uses
  %i.js = and i64 %i.jr, -8
  %i.jt = add i64 %i.js, 32
  %i.ju = call noalias ptr @_emalloc(i64 noundef %i.jt) #17 ; 6 uses
  store i32 1, ptr %i.ju, align 4, !tbaa !45
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4 ; 2 uses
  store i32 22, ptr %i.jv, align 4, !tbaa !44
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i64 0, ptr %i.jw, align 8, !tbaa !83
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i64 %i.jr, ptr %i.jx, align 8, !tbaa !84
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jy, ptr align 1 %i.jq, i64 %i.jr, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jr
  store i8 0, ptr %i.jz, align 1, !tbaa !44
  %i.ka = load ptr, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %.not6139 = icmp eq ptr %i.ka, %i.jm
  br i1 %.not6139, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %zend_string_alloc.exit6390
  call void @_efree(ptr noundef %i.ka) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %zend_string_alloc.exit6390
  %i.kb = load ptr, ptr %0, align 8, !tbaa !44    ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !44
  %i.ke = and i32 %i.kd, 64
  %.not.i6386 = icmp eq i32 %i.ke, 0
  br i1 %.not.i6386, label %bb.bq, label %zend_string_release_ex.exit6387

bb.bq:                                            ; preds = %bb.bp
  %i.kf = load i32, ptr %i.kb, align 4, !tbaa !45 ; 2 uses
  %i.kg = icmp ne i32 %i.kf, 0
  call void @llvm.assume(i1 %i.kg)
  %i.kh = add i32 %i.kf, -1                       ; 2 uses
  store i32 %i.kh, ptr %i.kb, align 4, !tbaa !45
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.br, label %zend_string_release_ex.exit6387

bb.br:                                            ; preds = %bb.bq
  call void @_efree(ptr noundef nonnull %i.kb) #16
  br label %zend_string_release_ex.exit6387

zend_string_release_ex.exit6387:                  ; preds = %bb.bp, %bb.bq, %bb.br
  store ptr %i.ju, ptr %0, align 8, !tbaa !44
  %i.kj = load i32, ptr %i.jv, align 4, !tbaa !44
  %i.kk = and i32 %i.kj, 64
  %.not6140 = icmp eq i32 %i.kk, 0
  %i.kl = select i1 %.not6140, i32 262, i32 6
  store i32 %i.kl, ptr %i.u, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %.thread6564

bb.bs:                                            ; preds = %bb.k
  %i.km = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 13 uses
  store ptr %i.km, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store ptr %i.km, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 48), align 8, !tbaa !131
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !44  ; 22 uses
  %i.ko = icmp ult i8 %i.kn, 84
  br i1 %i.ko, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.kp = icmp samesign ult i8 %i.kn, 69
  br i1 %i.kp, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.kq = icmp samesign ult i8 %i.kn, 33
  br i1 %i.kq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  switch i8 %i.kn, label %.loopexit7061 [
    i8 32, label %.preheader6867.preheader
    i8 9, label %.preheader6867.preheader
  ]

bb.bw:                                            ; preds = %bb.bu
  %i.kr = icmp samesign ugt i8 %i.kn, 64
  %i.ks = icmp ne i8 %i.kn, 67
  %or.cond74 = and i1 %i.kr, %i.ks
  br i1 %or.cond74, label %.preheader6867.preheader, label %.loopexit7061

bb.bx:                                            ; preds = %bb.bt
  %i.kt = icmp samesign ult i8 %i.kn, 74
  br i1 %i.kt, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  switch i8 %i.kn, label %.loopexit7061 [
    i8 73, label %.preheader6867.preheader
    i8 70, label %.preheader6867.preheader
  ]

bb.bz:                                            ; preds = %bb.bx
  %i.ku = icmp eq i8 %i.kn, 79
  %i.kv = icmp samesign ugt i8 %i.kn, 81
  %or.cond80 = or i1 %i.ku, %i.kv
  br i1 %or.cond80, label %.preheader6867.preheader, label %.loopexit7061

bb.ca:                                            ; preds = %bb.bs
  %i.kw = icmp ult i8 %i.kn, 103
  br i1 %i.kw, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.kx = icmp samesign ult i8 %i.kn, 99
  br i1 %i.kx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ky = icmp ne i8 %i.kn, 84
  %i.kz = add nsw i8 %i.kn, -97
  %or.cond83 = icmp ult i8 %i.kz, -10
  %or.cond = select i1 %i.ky, i1 %or.cond83, i1 false
  br i1 %or.cond, label %.preheader6867.preheader, label %.loopexit7061

bb.cd:                                            ; preds = %bb.cb
  %i.la = and i8 %i.kn, 125
  %or.cond86 = icmp eq i8 %i.la, 100
  br i1 %or.cond86, label %.preheader6867.preheader, label %.loopexit7061

bb.ce:                                            ; preds = %bb.ca
  %i.lb = icmp ult i8 %i.kn, 112
  br i1 %i.lb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  switch i8 %i.kn, label %.loopexit7061 [
    i8 111, label %.preheader6867.preheader
    i8 105, label %.preheader6867.preheader
  ]

.preheader6867.preheader:                         ; preds = %bb.bz, %bb.cd, %bb.ch, %bb.bw, %bb.ci, %bb.bv, %bb.bv, %bb.by, %bb.by, %bb.cc, %bb.cf, %bb.cf
  br label %.preheader6867

bb.cg:                                            ; preds = %bb.ce
  %i.lc = icmp ult i8 %i.kn, 116
  br i1 %i.lc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ld = icmp samesign ugt i8 %i.kn, 113
  br i1 %i.ld, label %.preheader6867.preheader, label %.loopexit7061

bb.ci:                                            ; preds = %bb.cg
  %i.le = icmp ne i8 %i.kn, 116
  %i.lf = icmp ult i8 %i.kn, 119
  %or.cond92 = and i1 %i.le, %i.lf
  br i1 %or.cond92, label %.preheader6867.preheader, label %.loopexit7061

.loopexit7061:                                    ; preds = %bb.cf, %bb.by, %bb.bv, %bb.cd, %bb.bz, %bb.ch, %bb.ci, %bb.cc, %bb.bw, %bb.kf, %bb.ik
  %i.lg = phi ptr [ %i.um, %bb.ik ], [ %i.xs, %bb.kf ], [ %i.km, %bb.bw ], [ %i.km, %bb.cc ], [ %i.km, %bb.ci ], [ %i.km, %bb.ch ], [ %i.km, %bb.bz ], [ %i.km, %bb.cd ], [ %i.km, %bb.bv ], [ %i.km, %bb.by ], [ %i.km, %bb.cf ]
  %i.lh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = trunc i64 %i.lk to i32
  store i32 %i.ll, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.lm = load i8, ptr %i.lh, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i8 %i.lm, ptr %10, align 4, !tbaa !134
  %i.ln = getelementptr inbounds nuw i8, ptr %10, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ln, i8 0, i64 3, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !135
  %i.lq = call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128), ptr noundef nonnull %10) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.lr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !44
  %i.lt = sext i8 %i.ls to i32
  br label %.thread6538
end_hunk_0
