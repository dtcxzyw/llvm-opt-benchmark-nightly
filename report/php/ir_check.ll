Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_check?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ir_check:bb.a
  %i.ds = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !43 ; 2 uses
  %i.dv = icmp eq i32 %i.do, %i.dq
  br i1 %i.dv, label %.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.am
  %.pn1.i = zext i32 %i.dq to i64                 ; 2 uses
  %.02.i = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %.pn1.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !43
  %i.dy = icmp ugt i32 %i.dx, %i.du
  br i1 %i.dy, label %.lr.ph.i, label %ir_check_domination.exit.thread

.split:                                           ; preds = %bb.am
  br i1 %.not351, label %bb.bj, label %ir_check_domination.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dz = phi i64 [ %.pn.i, %.lr.ph.i ], [ %.pn1.i, %.preheader.i ]
  %i.ea = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !43 ; 2 uses
  %.pn.i = zext i32 %i.ec to i64                  ; 2 uses
  %.0.i379 = getelementptr inbounds nuw [52 x i8], ptr %.val, i64 %.pn.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i379, i64 32
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !43
  %i.ef = icmp ugt i32 %i.ee, %i.du
  br i1 %i.ef, label %.lr.ph.i, label %ir_check_domination.exit, !llvm.loop !12

ir_check_domination.exit:                         ; preds = %.lr.ph.i
  %i.eg = icmp eq i32 %i.do, %i.ec
  br i1 %i.eg, label %bb.bj, label %ir_check_domination.exit.thread

ir_check_domination.exit.thread:                  ; preds = %.preheader.i, %.split, %ir_check_domination.exit
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.8, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au, i32 noundef %i.au, i32 noundef %.0292466) #8 ; 0 uses
  br label %bb.bj

bb.an:                                            ; preds = %bb.q
  %i.ej = load i8, ptr %i.bl, align 8, !tbaa !43
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !46
  %i.en = and i32 %i.em, 8192
  %.not344 = icmp eq i32 %i.en, 0                 ; 2 uses
  br i1 %.not343, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not344, label %.sink.split, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  br i1 %.not344, label %bb.aq, label %.sink.split

.sink.split:                                      ; preds = %bb.ap, %bb.ao
  %.str.10.sink = phi ptr [ @.str.9, %bb.ao ], [ @.str.10, %bb.ap ]
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull %.str.10.sink, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.ap, %bb.ao
  %.7 = phi i1 [ %.3285, %bb.ao ], [ %.3285, %bb.ap ], [ false, %.sink.split ] ; 2 uses
  %i.eq = load i32, ptr %i.p, align 4, !tbaa !49
  %i.er = and i32 %i.eq, 32
  %.not346 = icmp eq i32 %i.er, 0
  %.not347 = icmp slt i32 %i.au, %.0292466
  %or.cond361 = or i1 %.not347, %.not346
  br i1 %or.cond361, label %bb.bj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.es = load i8, ptr %.0287467, align 8, !tbaa !43
  %i.et = icmp eq i8 %i.es, 108
  br i1 %i.et, label %bb.bj, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.6, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.at:                                            ; preds = %bb.q
  %i.ew = load i32, ptr %i.p, align 4, !tbaa !49
  %i.ex = and i32 %i.ew, 32
  %.not339 = icmp eq i32 %i.ex, 0
  %.not340 = icmp slt i32 %i.au, %.0292466
  %or.cond362 = or i1 %.not340, %.not339
  br i1 %or.cond362, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.6, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.av:                                            ; preds = %bb.at
  %i.fa = load i8, ptr %.0287467, align 8, !tbaa !43
  %i.fb = icmp eq i8 %i.fa, 63
  br i1 %i.fb, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.fc = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !43
  %.off367 = add i8 %i.ff, -107
  %switch368 = icmp ult i8 %.off367, 2
  br i1 %switch368, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str.11, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.ay:                                            ; preds = %bb.q
  %i.fi = load i8, ptr %i.bl, align 8, !tbaa !43
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !46
  %i.fm = and i32 %i.fl, 512
  %.not338 = icmp eq i32 %i.fm, 0
  br i1 %.not338, label %bb.az, label %bb.bj

bb.az:                                            ; preds = %bb.ay
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fn, ptr noundef nonnull @.str.12, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.ba:                                            ; preds = %bb.q
  %i.fp = load i8, ptr %i.bl, align 8, !tbaa !43  ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !46
  %.fr428 = freeze i32 %i.fs
  %i.ft = and i32 %.fr428, 4096
  %.not335 = icmp ne i32 %i.ft, 0
  %i.fu = and i8 %i.fp, -2
  %i.fv = icmp eq i8 %i.fu, 96
  %or.cond375 = or i1 %i.fv, %.not335
  br i1 %or.cond375, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.13, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.bc:                                            ; preds = %bb.q
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.fz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.14, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %bb.bj

bb.bd:                                            ; preds = %bb.i
  %i.ga = load i8, ptr %.0287467, align 8, !tbaa !43 ; 4 uses
  %i.gb = icmp eq i8 %i.ga, 115
  br i1 %i.gb, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gc = icmp eq i8 %i.ga, 116
  %i.gd = icmp eq i32 %.0291440, 2
  %or.cond = and i1 %i.gd, %i.gc
  br i1 %or.cond, label %.thread402, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.old1 = icmp eq i32 %.0291440, 2
  br i1 %.old1, label %.thread402, label %.thread400

.thread400:                                       ; preds = %bb.bf
  %i.ge = icmp eq i32 %.0291440, 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gf = icmp eq i8 %i.ga, 101
  %i.gg = icmp eq i32 %.0291440, 1                ; 2 uses
  %or.cond4 = and i1 %i.gg, %i.gf
  br i1 %or.cond4, label %.thread402, label %bb.bh

bb.bh:                                            ; preds = %.thread400, %bb.bg
  %i.gh = phi i1 [ %i.ge, %.thread400 ], [ %i.gg, %bb.bg ]
  %i.gi = tail call i32 @llvm.umin.i32(i32 %.0291440, i32 3)
  %i.gj = shl nuw nsw i32 %i.gi, 2
  %i.gk = or disjoint i32 %i.gj, 16
  %i.gl = lshr i32 %i.ae, %i.gk
  %i.gm = and i32 %i.gl, 15
  %i.gn = add nsw i32 %i.gm, -7
  %switch370 = icmp ult i32 %i.gn, -2
  %i.go = icmp ne i8 %i.ga, 98
  %or.cond7 = or i1 %i.go, %i.gh
  %or.cond371 = and i1 %switch370, %or.cond7
  br i1 %or.cond371, label %bb.bi, label %.thread402

bb.bi:                                            ; preds = %bb.bh
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.gq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gp, ptr noundef nonnull @.str.15, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef 0) #8 ; 0 uses
  br label %.thread402

bb.bj:                                            ; preds = %.split, %bb.ba, %bb.aw, %bb.ax, %bb.bb, %bb.ay, %bb.az, %bb.au, %bb.av, %bb.aq, %bb.ar, %bb.as, %bb.aj, %bb.ak, %bb.al, %ir_check_domination.exit, %ir_check_domination.exit.thread, %bb.bc
  %.9 = phi i1 [ %.6, %.split ], [ false, %bb.bb ], [ false, %bb.ax ], [ false, %bb.bc ], [ %.6, %ir_check_domination.exit ], [ false, %ir_check_domination.exit.thread ], [ %.6, %bb.al ], [ %.6, %bb.ak ], [ %.6, %bb.aj ], [ %.7, %bb.ar ], [ false, %bb.as ], [ %.3285, %bb.aw ], [ %.7, %bb.aq ], [ false, %bb.au ], [ %.3285, %bb.ba ], [ %.3285, %bb.av ], [ %.3285, %bb.ay ], [ false, %bb.az ] ; 3 uses
  %i.gr = load ptr, ptr %i.s, align 8, !tbaa !53  ; 2 uses
  %.not429 = icmp eq ptr %i.gr, null
  br i1 %.not429, label %.thread402, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.bk ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !55 ; 6 uses
  %i.gv = icmp sgt i32 %i.gu, 16
  br i1 %i.gv, label %bb.bl, label %bb.by

bb.bl:                                            ; preds = %bb.bk
  %.not.i381 = icmp eq ptr %.sroa.14.1438, null   ; 2 uses
  br i1 %.not.i381, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.14.1438, i64 %i.bk
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !57 ; 2 uses
  %.not47.i = icmp eq ptr %i.gx, null
  br i1 %.not47.i, label %bb.bn, label %ir_check_use_list.exit

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not48.i = icmp eq ptr %.sroa.0.1439, null
  br i1 %.not48.i, label %bb.bo, label %ir_arena_create.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.gy = load i32, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = shl nsw i64 %i.gz, 3
  %i.hb = add nsw i64 %i.ha, 24
  %i.hc = add i32 %i.gy, 63
  %i.hd = lshr i32 %i.hc, 3
  %i.he = and i32 %i.hd, 536870904
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = add nsw i64 %i.hb, %i.hf                ; 2 uses
  %i.hh = tail call noalias ptr @_emalloc(i64 noundef range(i64 -17179869160, 17716740105) %i.hg) #9 ; 7 uses
  %.not.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i, label %ir_arena_create.exit.i, label %bb.bp, !prof !58

bb.bp:                                            ; preds = %bb.bo
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !61
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store ptr null, ptr %i.hl, align 8, !tbaa !62
  br label %ir_arena_create.exit.i

ir_arena_create.exit.i:                           ; preds = %bb.bo, %bb.bp, %bb.bn
  %.sroa.0.6 = phi ptr [ %.sroa.0.1439, %bb.bn ], [ %i.hh, %bb.bp ], [ null, %bb.bo ] ; 8 uses
  %.pre478 = load i32, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  br i1 %.not.i381, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %ir_arena_create.exit.i
  %i.hm = sext i32 %.pre478 to i64
  %i.hn = shl nsw i64 %i.hm, 3                    ; 4 uses
  %i.ho = load ptr, ptr %.sroa.0.6, align 8, !tbaa !60
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = add i64 %i.hp, 7
  %i.hr = and i64 %i.hq, -8                       ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !61
  %i.hu = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hr
  %.not.i51.i = icmp sgt i64 %i.hn, %i.hv
  br i1 %.not.i51.i, label %bb.bs, label %bb.br, !prof !58

bb.br:                                            ; preds = %bb.bq
  %i.hw = inttoptr i64 %i.hr to ptr               ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hn
  store ptr %i.hx, ptr %.sroa.0.6, align 8, !tbaa !60
  br label %ir_arena_alloc.exit55.i

bb.bs:                                            ; preds = %bb.bq
  %i.hy = add nsw i64 %i.hn, 24
  %i.hz = ptrtoint ptr %.sroa.0.6 to i64
  %i.ia = sub i64 %i.hu, %i.hz
  %..i53.i = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.ia) ; 2 uses
  %i.ib = tail call noalias ptr @_emalloc(i64 noundef %..i53.i) #9 ; 7 uses
  %.not71.not.i54.i = icmp eq ptr %i.ib, null
  br i1 %.not71.not.i54.i, label %ir_arena_alloc.exit55.i, label %bb.bt, !prof !58

bb.bt:                                            ; preds = %bb.bs
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hn
  store ptr %i.id, ptr %i.ib, align 8, !tbaa !60
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %..i53.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !61
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store ptr %.sroa.0.6, ptr %i.ig, align 8, !tbaa !62
  br label %ir_arena_alloc.exit55.i

ir_arena_alloc.exit55.i:                          ; preds = %bb.bt, %bb.bs, %bb.br
  %.sroa.0.9 = phi ptr [ %.sroa.0.6, %bb.bs ], [ %i.ib, %bb.bt ], [ %.sroa.0.6, %bb.br ]
  %.165.i52.i = phi ptr [ null, %bb.bs ], [ %i.ic, %bb.bt ], [ %i.hw, %bb.br ] ; 2 uses
  %i.ih = load i32, ptr %i.a, align 8, !tbaa !41
  %i.ii = sext i32 %i.ih to i64
  %i.ij = shl nsw i64 %i.ii, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.165.i52.i, i8 0, i64 %i.ij, i1 false)
  %.pre477 = load i32, ptr %i.a, align 8, !tbaa !41
  br label %bb.bu

bb.bu:                                            ; preds = %ir_arena_alloc.exit55.i, %ir_arena_create.exit.i
  %i.ik = phi i32 [ %.pre477, %ir_arena_alloc.exit55.i ], [ %.pre478, %ir_arena_create.exit.i ]
  %.sroa.14.4 = phi ptr [ %.165.i52.i, %ir_arena_alloc.exit55.i ], [ %.sroa.14.1438, %ir_arena_create.exit.i ] ; 2 uses
  %.sroa.0.7 = phi ptr [ %.sroa.0.9, %ir_arena_alloc.exit55.i ], [ %.sroa.0.6, %ir_arena_create.exit.i ] ; 7 uses
  %i.il = add i32 %i.ik, 63
  %i.im = lshr i32 %i.il, 3
  %i.in = and i32 %i.im, 536870904
  %i.io = zext nneg i32 %i.in to i64              ; 4 uses
  %i.ip = load ptr, ptr %.sroa.0.7, align 8, !tbaa !60
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = add i64 %i.iq, 7
  %i.is = and i64 %i.ir, -8                       ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !61
  %i.iv = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.iw = sub i64 %i.iv, %i.is
  %.not.i50.i = icmp slt i64 %i.iw, %i.io
  br i1 %.not.i50.i, label %bb.bw, label %bb.bv, !prof !58

bb.bv:                                            ; preds = %bb.bu
  %i.ix = inttoptr i64 %i.is to ptr               ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.io
  store ptr %i.iy, ptr %.sroa.0.7, align 8, !tbaa !60
  br label %.lr.ph63.preheader.i

bb.bw:                                            ; preds = %bb.bu
  %i.iz = add nuw nsw i64 %i.io, 24
  %i.ja = ptrtoint ptr %.sroa.0.7 to i64
  %i.jb = sub i64 %i.iv, %i.ja
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.iz, i64 %i.jb) ; 2 uses
  %i.jc = tail call noalias ptr @_emalloc(i64 noundef %..i.i) #9 ; 7 uses
  %.not71.not.i.i = icmp eq ptr %i.jc, null
  br i1 %.not71.not.i.i, label %.lr.ph63.preheader.i, label %bb.bx, !prof !58

bb.bx:                                            ; preds = %bb.bw
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.io
  store ptr %i.je, ptr %i.jc, align 8, !tbaa !60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %..i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store ptr %.sroa.0.7, ptr %i.jh, align 8, !tbaa !62
  br label %.lr.ph63.preheader.i

.lr.ph63.preheader.i:                             ; preds = %bb.bx, %bb.bw, %bb.bv
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %bb.bw ], [ %i.jc, %bb.bx ], [ %.sroa.0.7, %bb.bv ]
  %.165.i.i = phi ptr [ null, %bb.bw ], [ %i.jd, %bb.bx ], [ %i.ix, %bb.bv ] ; 6 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.sroa.14.4, i64 %i.bk
  store ptr %.165.i.i, ptr %i.ji, align 8, !tbaa !57
  %i.jj = load i32, ptr %i.a, align 8, !tbaa !41
  %i.jk = add i32 %i.jj, 63
  %i.jl = lshr i32 %i.jk, 3
  %i.jm = and i32 %i.jl, 536870904
  %i.jn = zext nneg i32 %i.jm to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %.165.i.i, i8 0, i64 %i.jn, i1 false)
  %i.jo = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.jp = load i32, ptr %i.gs, align 4, !tbaa !64
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jq ; 3 uses
  %xtraiter = and i32 %i.gu, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph63.preheader.i.new, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.preheader.i
  %1 = load i32, ptr %i.jr, align 4, !tbaa !46    ; 2 uses
  %2 = and i32 %1, 63
  %3 = zext nneg i32 %2 to i64
  %4 = shl nuw i64 1, %3
  %5 = lshr i32 %1, 6
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.165.i.i, i64 %6 ; 2 uses
  %8 = load i64, ptr %7, align 8, !tbaa !65
  %9 = or i64 %4, %8
  store i64 %9, ptr %7, align 8, !tbaa !65
  %10 = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %11 = add nsw i32 %i.gu, -1
  br label %.lr.ph63.preheader.i.new

.lr.ph63.preheader.i.new:                         ; preds = %.lr.ph63.preheader.i, %.lr.ph63.i.prol
  %.03962.i.unr = phi ptr [ %i.jr, %.lr.ph63.preheader.i ], [ %10, %.lr.ph63.i.prol ]
  %.04061.i.unr = phi i32 [ %i.gu, %.lr.ph63.preheader.i ], [ %11, %.lr.ph63.i.prol ]
  br label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i, %.lr.ph63.preheader.i.new
  %.03962.i = phi ptr [ %.03962.i.unr, %.lr.ph63.preheader.i.new ], [ %i.kb, %.lr.ph63.i ] ; 3 uses
  %.04061.i = phi i32 [ %.04061.i.unr, %.lr.ph63.preheader.i.new ], [ %i.kc, %.lr.ph63.i ] ; 2 uses
  %12 = load i32, ptr %.03962.i, align 4, !tbaa !46 ; 2 uses
  %13 = and i32 %12, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = lshr i32 %12, 6
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %.165.i.i, i64 %17 ; 2 uses
  %19 = load i64, ptr %18, align 8, !tbaa !65
  %20 = or i64 %15, %19
  store i64 %20, ptr %18, align 8, !tbaa !65
  %21 = getelementptr inbounds nuw i8, ptr %.03962.i, i64 4
  %i.js = load i32, ptr %21, align 4, !tbaa !46   ; 2 uses
  %i.jt = and i32 %i.js, 63
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = shl nuw i64 1, %i.ju
  %i.jw = lshr i32 %i.js, 6
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.165.i.i, i64 %i.jx ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !65
  %i.ka = or i64 %i.jv, %i.jz
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !65
  %i.kb = getelementptr inbounds nuw i8, ptr %.03962.i, i64 8
  %i.kc = add nsw i32 %.04061.i, -2
  %22 = icmp sgt i32 %.04061.i, 2
  br i1 %22, label %.lr.ph63.i, label %ir_check_use_list.exit, !llvm.loop !13

bb.by:                                            ; preds = %bb.bk
  %i.kd = icmp sgt i32 %i.gu, 0
  br i1 %i.kd, label %.lr.ph.preheader.i, label %ir_check_use_list.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.by
  %i.ke = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.kf = load i32, ptr %i.gs, align 4, !tbaa !64
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kg
  br label %.lr.ph.i380

.lr.ph.i380:                                      ; preds = %bb.bz, %.lr.ph.preheader.i
  %.158.i = phi ptr [ %i.kk, %bb.bz ], [ %i.kh, %.lr.ph.preheader.i ] ; 2 uses
  %.14157.i = phi i32 [ %i.kl, %bb.bz ], [ %i.gu, %.lr.ph.preheader.i ] ; 2 uses
  %i.ki = load i32, ptr %.158.i, align 4, !tbaa !46
  %i.kj = icmp eq i32 %i.ki, %.0292466
  br i1 %i.kj, label %.thread402, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i380
  %i.kk = getelementptr inbounds nuw i8, ptr %.158.i, i64 4
  %i.kl = add nsw i32 %.14157.i, -1
  %i.km = icmp sgt i32 %.14157.i, 1
  br i1 %i.km, label %.lr.ph.i380, label %ir_check_use_list.exit.thread, !llvm.loop !14

ir_check_use_list.exit:                           ; preds = %.lr.ph63.i, %bb.bm
  %.sroa.14.3 = phi ptr [ %.sroa.14.1438, %bb.bm ], [ %.sroa.14.4, %.lr.ph63.i ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.1439, %bb.bm ], [ %.sroa.0.8, %.lr.ph63.i ] ; 2 uses
  %.0.i382 = phi ptr [ %i.gx, %bb.bm ], [ %.165.i.i, %.lr.ph63.i ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.0.i382, i64 %i.aq
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !65
  %i.kp = and i64 %i.ko, %i.at
  %.not430 = icmp eq i64 %i.kp, 0
  br i1 %.not430, label %ir_check_use_list.exit.thread, label %.thread402

ir_check_use_list.exit.thread:                    ; preds = %bb.bz, %bb.by, %ir_check_use_list.exit
  %.sroa.0.10409 = phi ptr [ %.sroa.0.5, %ir_check_use_list.exit ], [ %.sroa.0.1439, %bb.by ], [ %.sroa.0.1439, %bb.bz ]
  %.sroa.14.5408 = phi ptr [ %.sroa.14.3, %ir_check_use_list.exit ], [ %.sroa.14.1438, %bb.by ], [ %.sroa.14.1438, %bb.bz ]
  %i.kq = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.kr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kq, ptr noundef nonnull @.str.16, i32 noundef %.0292466, i32 noundef %.0291440, i32 noundef %i.au) #8 ; 0 uses
  br label %.thread402

.thread402:                                       ; preds = %.lr.ph.i380, %bb.l, %bb.n, %bb.m, %bb.bg, %bb.bi, %bb.bf, %bb.be, %bb.bh, %bb.bj, %ir_check_use_list.exit, %ir_check_use_list.exit.thread
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %ir_check_use_list.exit ], [ %.sroa.14.5408, %ir_check_use_list.exit.thread ], [ %.sroa.14.1438, %bb.bj ], [ %.sroa.14.1438, %bb.l ], [ %.sroa.14.1438, %bb.bh ], [ %.sroa.14.1438, %bb.be ], [ %.sroa.14.1438, %bb.bf ], [ %.sroa.14.1438, %bb.bi ], [ %.sroa.14.1438, %bb.bg ], [ %.sroa.14.1438, %bb.m ], [ %.sroa.14.1438, %bb.n ], [ %.sroa.14.1438, %.lr.ph.i380 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.5, %ir_check_use_list.exit ], [ %.sroa.0.10409, %ir_check_use_list.exit.thread ], [ %.sroa.0.1439, %bb.bj ], [ %.sroa.0.1439, %bb.l ], [ %.sroa.0.1439, %bb.bh ], [ %.sroa.0.1439, %bb.be ], [ %.sroa.0.1439, %bb.bf ], [ %.sroa.0.1439, %bb.bi ], [ %.sroa.0.1439, %bb.bg ], [ %.sroa.0.1439, %bb.m ], [ %.sroa.0.1439, %bb.n ], [ %.sroa.0.1439, %.lr.ph.i380 ] ; 2 uses
  %.10 = phi i1 [ %.9, %ir_check_use_list.exit ], [ false, %ir_check_use_list.exit.thread ], [ %.9, %bb.bj ], [ false, %bb.l ], [ %.2284442, %bb.bh ], [ %.2284442, %bb.be ], [ %.2284442, %bb.bf ], [ false, %bb.bi ], [ %.2284442, %bb.bg ], [ %.2284442, %bb.m ], [ false, %bb.n ], [ %.9, %.lr.ph.i380 ] ; 2 uses
  %i.ks = add nuw nsw i32 %.0291440, 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.0288441, i64 4
  %exitcond.not = icmp eq i32 %.0291440, %.0.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %.thread402
  %.pre479 = load i8, ptr %.0287467, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %ir_input_edges_count.exit
  %i.ku = phi i8 [ %i.x, %ir_input_edges_count.exit ], [ %.pre479, %._crit_edge.loopexit ]
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.0464, %ir_input_edges_count.exit ], [ %.sroa.14.2, %._crit_edge.loopexit ]
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0465, %ir_input_edges_count.exit ], [ %.sroa.0.2, %._crit_edge.loopexit ] ; 3 uses
  %.2284.lcssa = phi i1 [ %.1283468, %ir_input_edges_count.exit ], [ %.10, %._crit_edge.loopexit ] ; 9 uses
  switch i8 %i.ku, label %bb.cq [
    i8 63, label %bb.ca
    i8 86, label %bb.cc
    i8 87, label %bb.cc
    i8 88, label %bb.cc
    i8 89, label %bb.cc
    i8 80, label %bb.cf
    i8 81, label %bb.cf
    i8 82, label %bb.cf
    i8 83, label %bb.cf
    i8 115, label %bb.ch
    i8 75, label %bb.cl
    i8 67, label %bb.cn
  ]

bb.ca:                                            ; preds = %._crit_edge
  %i.kv = getelementptr inbounds nuw i8, ptr %.0287467, i64 2
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !43
  %i.kx = zext i16 %i.kw to i32                   ; 2 uses
  %i.ky = load ptr, ptr %0, align 8, !tbaa !42
  %i.kz = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [16 x i8], ptr %i.ky, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !43
  %i.le = zext i16 %i.ld to i32
  %i.lf = add nuw nsw i32 %i.le, 1                ; 2 uses
  %.not324 = icmp eq i32 %i.lf, %i.kx
  br i1 %.not324, label %bb.cq, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lg = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.lh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lg, ptr noundef nonnull @.str.17, i32 noundef %.0292466, i32 noundef %i.kx, i32 noundef %i.lf) #8 ; 0 uses
  br label %bb.cq

bb.cc:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.li = load ptr, ptr %0, align 8, !tbaa !42
  %i.lj = getelementptr inbounds nuw i8, ptr %.0287467, i64 8
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !43
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [16 x i8], ptr %i.li, i64 %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !43  ; 3 uses
  %.not322 = icmp eq i8 %i.lo, 6
  br i1 %.not322, label %bb.cq, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lp = icmp ult i8 %i.lo, 12
  %i.lq = zext i8 %i.lo to i64                    ; 2 uses
  br i1 %i.lp, label %bb.ce, label %._crit_edge483

bb.ce:                                            ; preds = %bb.cd
  %i.lr = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !43
  %.not323 = icmp eq i8 %i.ls, %i.w
  br i1 %.not323, label %bb.cq, label %._crit_edge483

._crit_edge483:                                   ; preds = %bb.cd, %bb.ce
  %i.lt = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr @ir_type_name, i64 %i.lq
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !66
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lt, ptr noundef nonnull @.str.18, i32 noundef %.0292466, ptr noundef %i.lv) #8 ; 0 uses
  br label %bb.cq

bb.cf:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.lx = load ptr, ptr %0, align 8, !tbaa !42
  %i.ly = getelementptr inbounds nuw i8, ptr %.0287467, i64 8
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !43
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 8, !tbaa !43  ; 2 uses
  %.not321 = icmp eq i8 %i.mc, 68
  br i1 %.not321, label %bb.cq, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.me = zext i8 %i.mc to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr @ir_op_name, i64 %i.me
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !66
  %i.mh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.md, ptr noundef nonnull @.str.19, i32 noundef %.0292466, ptr noundef %i.mg) #8 ; 0 uses
  br label %bb.cq

bb.ch:                                            ; preds = %._crit_edge
  %i.mi = load i32, ptr %i.v, align 8, !tbaa !67
  %i.mj = getelementptr inbounds nuw i8, ptr %.0287467, i64 8
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !43 ; 2 uses
  %.not319 = icmp eq i32 %i.mk, 0
  br i1 %.not319, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ml = load ptr, ptr %0, align 8, !tbaa !42
  %i.mm = sext i32 %i.mk to i64
  %i.mn = getelementptr inbounds [16 x i8], ptr %i.ml, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !43
  %i.mq = zext i8 %i.mp to i32
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.mr = phi i32 [ %i.mq, %bb.ci ], [ 0, %bb.ch ]
  %.not320 = icmp eq i32 %i.mi, %i.mr
  br i1 %.not320, label %bb.cq, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ms = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.mt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ms, ptr noundef nonnull @.str.20, i32 noundef %.0292466) #8 ; 0 uses
  br label %bb.cq

bb.cl:                                            ; preds = %._crit_edge
  %i.mu = load i32, ptr %i.v, align 8, !tbaa !67
  %i.mv = getelementptr inbounds nuw i8, ptr %.0287467, i64 1
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !43
  %i.mx = zext i8 %i.mw to i32
  %.not318 = icmp eq i32 %i.mu, %i.mx
  br i1 %.not318, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.my = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.mz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.my, ptr noundef nonnull @.str.20, i32 noundef %.0292466) #8 ; 0 uses
  br label %bb.cq

bb.cn:                                            ; preds = %._crit_edge
  %i.na = icmp samesign ugt i32 %.0292466, 2
  br i1 %i.na, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.nb = load ptr, ptr %0, align 8, !tbaa !42
  %i.nc = zext nneg i32 %.0292466 to i64
  %i.nd = getelementptr [16 x i8], ptr %i.nb, i64 %i.nc
  %i.ne = getelementptr i8, ptr %i.nd, i64 -16
  %i.nf = load i8, ptr %i.ne, align 8, !tbaa !43
  %.not317 = icmp eq i8 %i.nf, 67
  br i1 %.not317, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ng = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.nh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ng, ptr noundef nonnull @.str.21, i32 noundef %.0292466) #8 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.co, %bb.cp, %bb.cl, %bb.cm, %bb.cj, %bb.ck, %bb.cf, %bb.cg, %bb.cc, %bb.ce, %._crit_edge483, %bb.ca, %bb.cb, %._crit_edge
end_hunk_0
begin_hunk_1_@ir_check:bb.a
  %i.ok = icmp ugt i16 %i.oi, 16
  br i1 %i.ok, label %bb.ct, label %.preheader.i384

.preheader.i384:                                  ; preds = %ir_input_edges_count.exit.i, %bb.cs
  %.0.i90.i = phi i32 [ %i.oj, %ir_input_edges_count.exit.i ], [ %i.of, %bb.cs ] ; 2 uses
  %.not66.i = icmp eq i32 %.0.i90.i, 0
  br i1 %.not66.i, label %ir_check_input_list.exit.thread, label %.lr.ph.i385

bb.ct:                                            ; preds = %ir_input_edges_count.exit.i
  %.not50.i = icmp eq ptr %.sroa.19.1445, null    ; 2 uses
  br i1 %.not50.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ol = getelementptr inbounds [8 x i8], ptr %.sroa.19.1445, i64 %i.nz
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !57 ; 2 uses
  %.not51.i = icmp eq ptr %i.om, null
  br i1 %.not51.i, label %bb.cv, label %ir_check_input_list.exit

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.not52.i = icmp eq ptr %.sroa.0.3446, null
  br i1 %.not52.i, label %bb.cw, label %ir_arena_create.exit.i392

bb.cw:                                            ; preds = %bb.cv
  %i.on = load i32, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = shl nsw i64 %i.oo, 3
  %i.oq = add nsw i64 %i.op, 24
  %i.or = add i32 %i.on, 63
  %i.os = lshr i32 %i.or, 3
  %i.ot = and i32 %i.os, 536870904
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = add nsw i64 %i.oq, %i.ou                ; 2 uses
  %i.ow = tail call noalias ptr @_emalloc(i64 noundef range(i64 -17179869160, 17716740105) %i.ov) #9 ; 7 uses
  %.not.i56.i = icmp eq ptr %i.ow, null
  br i1 %.not.i56.i, label %ir_arena_create.exit.i392, label %bb.cx, !prof !58

bb.cx:                                            ; preds = %bb.cw
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  store ptr %i.ox, ptr %i.ow, align 8, !tbaa !60
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store ptr %i.oy, ptr %i.oz, align 8, !tbaa !61
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store ptr null, ptr %i.pa, align 8, !tbaa !62
  br label %ir_arena_create.exit.i392

ir_arena_create.exit.i392:                        ; preds = %bb.cw, %bb.cx, %bb.cv
  %.sroa.0.12 = phi ptr [ %.sroa.0.3446, %bb.cv ], [ %i.ow, %bb.cx ], [ null, %bb.cw ] ; 8 uses
  %.pre481 = load i32, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  br i1 %.not50.i, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %ir_arena_create.exit.i392
  %i.pb = sext i32 %.pre481 to i64
  %i.pc = shl nsw i64 %i.pb, 3                    ; 4 uses
  %i.pd = load ptr, ptr %.sroa.0.12, align 8, !tbaa !60
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = add i64 %i.pe, 7
  %i.pg = and i64 %i.pf, -8                       ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.12, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !61
  %i.pj = ptrtoint ptr %i.pi to i64               ; 2 uses
  %i.pk = sub i64 %i.pj, %i.pg
  %.not.i59.i = icmp sgt i64 %i.pc, %i.pk
  br i1 %.not.i59.i, label %bb.da, label %bb.cz, !prof !58

bb.cz:                                            ; preds = %bb.cy
  %i.pl = inttoptr i64 %i.pg to ptr               ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pc
  store ptr %i.pm, ptr %.sroa.0.12, align 8, !tbaa !60
  br label %ir_arena_alloc.exit63.i

bb.da:                                            ; preds = %bb.cy
  %i.pn = add nsw i64 %i.pc, 24
  %i.po = ptrtoint ptr %.sroa.0.12 to i64
  %i.pp = sub i64 %i.pj, %i.po
  %..i61.i = tail call i64 @llvm.umax.i64(i64 %i.pn, i64 %i.pp) ; 2 uses
  %i.pq = tail call noalias ptr @_emalloc(i64 noundef %..i61.i) #9 ; 7 uses
  %.not71.not.i62.i = icmp eq ptr %i.pq, null
  br i1 %.not71.not.i62.i, label %ir_arena_alloc.exit63.i, label %bb.db, !prof !58

bb.db:                                            ; preds = %bb.da
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pc
  store ptr %i.ps, ptr %i.pq, align 8, !tbaa !60
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 %..i61.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !61
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store ptr %.sroa.0.12, ptr %i.pv, align 8, !tbaa !62
  br label %ir_arena_alloc.exit63.i

ir_arena_alloc.exit63.i:                          ; preds = %bb.db, %bb.da, %bb.cz
  %.sroa.0.15 = phi ptr [ %.sroa.0.12, %bb.da ], [ %i.pq, %bb.db ], [ %.sroa.0.12, %bb.cz ]
  %.165.i60.i = phi ptr [ null, %bb.da ], [ %i.pr, %bb.db ], [ %i.pl, %bb.cz ] ; 2 uses
  %i.pw = load i32, ptr %i.a, align 8, !tbaa !41
  %i.px = sext i32 %i.pw to i64
  %i.py = shl nsw i64 %i.px, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.165.i60.i, i8 0, i64 %i.py, i1 false)
  %.pre480 = load i32, ptr %i.a, align 8, !tbaa !41
  br label %bb.dc

bb.dc:                                            ; preds = %ir_arena_alloc.exit63.i, %ir_arena_create.exit.i392
  %i.pz = phi i32 [ %.pre480, %ir_arena_alloc.exit63.i ], [ %.pre481, %ir_arena_create.exit.i392 ]
  %.sroa.19.4 = phi ptr [ %.165.i60.i, %ir_arena_alloc.exit63.i ], [ %.sroa.19.1445, %ir_arena_create.exit.i392 ] ; 4 uses
  %.sroa.0.13 = phi ptr [ %.sroa.0.15, %ir_arena_alloc.exit63.i ], [ %.sroa.0.12, %ir_arena_create.exit.i392 ] ; 7 uses
  %i.qa = add i32 %i.pz, 63
  %i.qb = lshr i32 %i.qa, 3
  %i.qc = and i32 %i.qb, 536870904
  %i.qd = zext nneg i32 %i.qc to i64              ; 4 uses
  %i.qe = load ptr, ptr %.sroa.0.13, align 8, !tbaa !60
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = add i64 %i.qf, 7
  %i.qh = and i64 %i.qg, -8                       ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !61
  %i.qk = ptrtoint ptr %i.qj to i64               ; 2 uses
  %i.ql = sub i64 %i.qk, %i.qh
  %.not.i58.i = icmp slt i64 %i.ql, %i.qd
  br i1 %.not.i58.i, label %bb.de, label %bb.dd, !prof !58

bb.dd:                                            ; preds = %bb.dc
  %i.qm = inttoptr i64 %i.qh to ptr               ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qd
  store ptr %i.qn, ptr %.sroa.0.13, align 8, !tbaa !60
  br label %ir_arena_alloc.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.qo = add nuw nsw i64 %i.qd, 24
  %i.qp = ptrtoint ptr %.sroa.0.13 to i64
  %i.qq = sub i64 %i.qk, %i.qp
  %..i.i390 = tail call i64 @llvm.umax.i64(i64 %i.qo, i64 %i.qq) ; 2 uses
  %i.qr = tail call noalias ptr @_emalloc(i64 noundef %..i.i390) #9 ; 7 uses
  %.not71.not.i.i391 = icmp eq ptr %i.qr, null
  br i1 %.not71.not.i.i391, label %ir_arena_alloc.exit.i, label %bb.df, !prof !58

bb.df:                                            ; preds = %bb.de
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qd
  store ptr %i.qt, ptr %i.qr, align 8, !tbaa !60
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 %..i.i390
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store ptr %i.qu, ptr %i.qv, align 8, !tbaa !61
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store ptr %.sroa.0.13, ptr %i.qw, align 8, !tbaa !62
  br label %ir_arena_alloc.exit.i

ir_arena_alloc.exit.i:                            ; preds = %bb.df, %bb.de, %bb.dd
  %.sroa.0.14 = phi ptr [ %.sroa.0.13, %bb.de ], [ %i.qr, %bb.df ], [ %.sroa.0.13, %bb.dd ] ; 3 uses
  %.165.i.i388 = phi ptr [ null, %bb.de ], [ %i.qs, %bb.df ], [ %i.qm, %bb.dd ] ; 8 uses
  %i.qx = getelementptr inbounds [8 x i8], ptr %.sroa.19.4, i64 %i.nz
  store ptr %.165.i.i388, ptr %i.qx, align 8, !tbaa !57
  %i.qy = load i32, ptr %i.a, align 8, !tbaa !41
  %i.qz = add i32 %i.qy, 63
  %i.ra = lshr i32 %i.qz, 3
  %i.rb = and i32 %i.ra, 536870904
  %i.rc = zext nneg i32 %i.rb to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %.165.i.i388, i8 0, i64 %i.rc, i1 false)
  %xtraiter.a = and i32 %i.oj, 1
  %unroll_iter = and i32 %i.oj, 65534
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dk, %ir_arena_alloc.exit.i
  %.pn.i389 = phi ptr [ %i.oa, %ir_arena_alloc.exit.i ], [ %.04173.i.1, %bb.dk ] ; 2 uses
  %niter = phi i32 [ 0, %ir_arena_alloc.exit.i ], [ %niter.next.1, %bb.dk ]
  %.04173.i = getelementptr inbounds nuw i8, ptr %.pn.i389, i64 4
  %i.rd = load i32, ptr %.04173.i, align 4, !tbaa !46 ; 3 uses
  %i.re = icmp sgt i32 %i.rd, 0
  br i1 %i.re, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.rf = and i32 %i.rd, 63
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = shl nuw i64 1, %i.rg
  %i.ri = lshr i32 %i.rd, 6
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %.165.i.i388, i64 %i.rj ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !65
  %i.rm = or i64 %i.rl, %i.rh
  store i64 %i.rm, ptr %i.rk, align 8, !tbaa !65
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.04173.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i389, i64 8 ; 3 uses
  %i.rn = load i32, ptr %.04173.i.1, align 4, !tbaa !46 ; 3 uses
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.rp = and i32 %i.rn, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = lshr i32 %i.rn, 6
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.165.i.i388, i64 %i.rt ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !65
  %i.rw = or i64 %i.rv, %i.rr
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !65
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ir_check_input_list.exit.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !16

bb.dl:                                            ; preds = %.lr.ph.i385
  %i.rx = add nuw nsw i32 %.14367.i, 1
  %exitcond.not.i = icmp eq i32 %.14367.i, %.0.i90.i
  br i1 %exitcond.not.i, label %ir_check_input_list.exit.thread, label %.lr.ph.i385, !llvm.loop !17

.lr.ph.i385:                                      ; preds = %.preheader.i384, %bb.dl
  %.pn.pn.i = phi ptr [ %.168.i, %bb.dl ], [ %i.oa, %.preheader.i384 ]
  %.14367.i = phi i32 [ %i.rx, %bb.dl ], [ 1, %.preheader.i384 ] ; 2 uses
  %.168.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 4 ; 2 uses
  %i.ry = load i32, ptr %.168.i, align 4, !tbaa !46
  %i.rz = icmp eq i32 %i.ry, %.0292466
  br i1 %i.rz, label %ir_check_input_list.exit.thread421, label %bb.dl

ir_check_input_list.exit.loopexit.unr-lcssa:      ; preds = %bb.dk
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %ir_check_input_list.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ir_check_input_list.exit.loopexit.unr-lcssa
  %lcmp.mod557 = trunc i16 %i.oi to i1
  tail call void @llvm.assume(i1 %lcmp.mod557)
  %.04173.i.epil = getelementptr inbounds nuw i8, ptr %.04173.i.1, i64 4
  %i.sa = load i32, ptr %.04173.i.epil, align 4, !tbaa !46 ; 3 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %bb.dm, label %ir_check_input_list.exit

bb.dm:                                            ; preds = %.epil.preheader
  %i.sc = and i32 %i.sa, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = shl nuw i64 1, %i.sd
  %i.sf = lshr i32 %i.sa, 6
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.165.i.i388, i64 %i.sg ; 2 uses
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !65
  %i.sj = or i64 %i.si, %i.se
  store i64 %i.sj, ptr %i.sh, align 8, !tbaa !65
  br label %ir_check_input_list.exit

ir_check_input_list.exit:                         ; preds = %ir_check_input_list.exit.loopexit.unr-lcssa, %bb.dm, %.epil.preheader, %bb.cu
  %.sroa.19.3 = phi ptr [ %.sroa.19.1445, %bb.cu ], [ %.sroa.19.4, %.epil.preheader ], [ %.sroa.19.4, %bb.dm ], [ %.sroa.19.4, %ir_check_input_list.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.11 = phi ptr [ %.sroa.0.3446, %bb.cu ], [ %.sroa.0.14, %.epil.preheader ], [ %.sroa.0.14, %bb.dm ], [ %.sroa.0.14, %ir_check_input_list.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0.i387 = phi ptr [ %i.om, %bb.cu ], [ %.165.i.i388, %.epil.preheader ], [ %.165.i.i388, %bb.dm ], [ %.165.i.i388, %ir_check_input_list.exit.loopexit.unr-lcssa ]
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %.0.i387, i64 %i.nt
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !65
  %i.sm = and i64 %i.sl, %i.nw
  %.not431 = icmp eq i64 %i.sm, 0
  br i1 %.not431, label %ir_check_input_list.exit.thread, label %ir_check_input_list.exit.thread421

ir_check_input_list.exit.thread:                  ; preds = %bb.dl, %.preheader.i384, %ir_check_input_list.exit
  %.sroa.0.16419 = phi ptr [ %.sroa.0.11, %ir_check_input_list.exit ], [ %.sroa.0.3446, %.preheader.i384 ], [ %.sroa.0.3446, %bb.dl ]
  %.sroa.19.5417 = phi ptr [ %.sroa.19.3, %ir_check_input_list.exit ], [ %.sroa.19.1445, %.preheader.i384 ], [ %.sroa.19.1445, %bb.dl ]
  %i.sn = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.so = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sn, ptr noundef nonnull @.str.22, i32 noundef %i.nx, i32 noundef %.0292466) #8 ; 0 uses
  br label %ir_check_input_list.exit.thread421

ir_check_input_list.exit.thread421:               ; preds = %.lr.ph.i385, %ir_check_input_list.exit, %ir_check_input_list.exit.thread
  %.sroa.0.16420 = phi ptr [ %.sroa.0.11, %ir_check_input_list.exit ], [ %.sroa.0.16419, %ir_check_input_list.exit.thread ], [ %.sroa.0.3446, %.lr.ph.i385 ] ; 2 uses
  %.sroa.19.5418 = phi ptr [ %.sroa.19.3, %ir_check_input_list.exit ], [ %.sroa.19.5417, %ir_check_input_list.exit.thread ], [ %.sroa.19.1445, %.lr.ph.i385 ] ; 2 uses
  %.13 = phi i1 [ %.12448, %ir_check_input_list.exit ], [ false, %ir_check_input_list.exit.thread ], [ %.12448, %.lr.ph.i385 ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.1289447, i64 4
  %i.sq = add nsw i32 %.0449, -1
  %i.sr = icmp sgt i32 %.0449, 1
  br i1 %i.sr, label %bb.cs, label %._crit_edge452, !llvm.loop !18

._crit_edge452:                                   ; preds = %ir_check_input_list.exit.thread421, %bb.cr
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.0463, %bb.cr ], [ %.sroa.19.5418, %ir_check_input_list.exit.thread421 ] ; 15 uses
  %.sroa.0.3.lcssa = phi ptr [ %.sroa.0.1.lcssa, %bb.cr ], [ %.sroa.0.16420, %ir_check_input_list.exit.thread421 ] ; 15 uses
  %.12.lcssa = phi i1 [ %.11, %bb.cr ], [ %.13, %ir_check_input_list.exit.thread421 ] ; 11 uses
  %i.ss = and i32 %i.ae, 1536
  %or.cond365 = icmp eq i32 %i.ss, 512
  br i1 %or.cond365, label %bb.dn, label %bb.eb

bb.dn:                                            ; preds = %._crit_edge452
  %i.st = load i8, ptr %.0287467, align 8, !tbaa !43 ; 7 uses
  switch i8 %i.st, label %bb.du [
    i8 112, label %bb.do
    i8 111, label %bb.dq
    i8 116, label %bb.ds
    i8 115, label %bb.ds
    i8 114, label %.thread-pre-split_crit_edge
    i8 113, label %bb.eb
    i8 119, label %bb.eb
  ]

.thread-pre-split_crit_edge:                      ; preds = %bb.dn
  %.pr.pre = load i32, ptr %i.nl, align 4, !tbaa !55
  br label %thread-pre-split

bb.do:                                            ; preds = %bb.dn
  %i.su = load i32, ptr %i.nl, align 4, !tbaa !55 ; 2 uses
  %i.sv = icmp slt i32 %i.su, 1
  br i1 %i.sv, label %bb.dp, label %bb.eb

bb.dp:                                            ; preds = %bb.do
  %i.sw = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.sx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sw, ptr noundef nonnull @.str.23, i32 noundef %.0292466, i32 noundef %i.su) #8 ; 0 uses
  br label %bb.eb

bb.dq:                                            ; preds = %bb.dn
  %i.sy = load i32, ptr %i.nl, align 4, !tbaa !55 ; 2 uses
  %.not329 = icmp eq i32 %i.sy, 2
  br i1 %.not329, label %bb.eb, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sz = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ta = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sz, ptr noundef nonnull @.str.24, i32 noundef %.0292466, i32 noundef %i.sy) #8 ; 0 uses
  br label %bb.eb

bb.ds:                                            ; preds = %bb.dn, %bb.dn
  %i.tb = load i32, ptr %i.nl, align 4, !tbaa !55 ; 2 uses
  %i.tc = icmp eq i32 %i.tb, 1
  br i1 %i.tc, label %bb.dt, label %thread-pre-split

bb.dt:                                            ; preds = %bb.ds
  %i.td = load ptr, ptr %0, align 8, !tbaa !42
  %i.te = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.tf = load i32, ptr %i.nk, align 4, !tbaa !64
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !46
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [16 x i8], ptr %i.td, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 8, !tbaa !43
  %i.tm = icmp eq i8 %i.tl, 100
  br i1 %i.tm, label %bb.eb, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %bb.ds
  %i.tn = phi i32 [ %i.tb, %bb.ds ], [ %.pr.pre, %.thread-pre-split_crit_edge ] ; 2 uses
  %.not328 = icmp eq i32 %i.tn, 0
  br i1 %.not328, label %bb.eb, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.dt, %thread-pre-split
  %i.to = phi i32 [ %i.tn, %thread-pre-split ], [ 1, %bb.dt ]
  %i.tp = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.tq = zext nneg i8 %i.st to i64
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr @ir_op_name, i64 %i.tq
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !66
  %i.tt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tp, ptr noundef nonnull @.str.25, i32 noundef %.0292466, ptr noundef %i.ts, i32 noundef %i.to) #8 ; 0 uses
  br label %bb.eb

bb.du:                                            ; preds = %bb.dn
  %i.tu = load i32, ptr %i.nl, align 4, !tbaa !55 ; 8 uses
  %i.tv = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.tw = load i32, ptr %i.nk, align 4, !tbaa !64
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr [4 x i8], ptr %i.tv, i64 %i.tx ; 5 uses
  %i.tz = icmp sgt i32 %i.tu, 0
  br i1 %i.tz, label %.lr.ph460, label %.thread537

.lr.ph460:                                        ; preds = %bb.du
  %i.ua = load ptr, ptr %0, align 8, !tbaa !42    ; 3 uses
  %xtraiter558 = and i32 %i.tu, 1
  %lcmp.mod559.not = icmp eq i32 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph460
  %i.ub = load i32, ptr %i.ty, align 4, !tbaa !46
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [16 x i8], ptr %i.ua, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 8, !tbaa !43
  %i.uf = zext i8 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !46
  %i.ui = lshr i32 %i.uh, 9
  %i.uj = and i32 %i.ui, 1
  %sext.prol = add nsw i32 %i.tu, -1
  %spec.select.prol = or disjoint i32 %sext.prol, %i.uj ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %i.ul = add nsw i32 %i.tu, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph460
  %.1458.unr = phi i32 [ %i.tu, %.lr.ph460 ], [ %i.ul, %.prol.loopexit.unr-lcssa ]
  %.0280457.unr = phi i32 [ %i.tu, %.lr.ph460 ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %.2290456.unr = phi ptr [ %i.ty, %.lr.ph460 ], [ %i.uk, %.prol.loopexit.unr-lcssa ]
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph460 ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %i.um = icmp eq i32 %i.tu, 1
  br i1 %i.um, label %._crit_edge461, label %.lr.ph460.new

.lr.ph460.new:                                    ; preds = %.prol.loopexit, %.lr.ph460.new
  %.1458 = phi i32 [ %i.vh, %.lr.ph460.new ], [ %.1458.unr, %.prol.loopexit ] ; 2 uses
  %.0280457 = phi i32 [ %spec.select.1, %.lr.ph460.new ], [ %.0280457.unr, %.prol.loopexit ]
  %.2290456 = phi ptr [ %i.vg, %.lr.ph460.new ], [ %.2290456.unr, %.prol.loopexit ] ; 3 uses
  %i.un = load i32, ptr %.2290456, align 4, !tbaa !46
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [16 x i8], ptr %i.ua, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 8, !tbaa !43
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !46
  %i.uu = lshr i32 %i.ut, 9
  %i.uv = and i32 %i.uu, 1
  %sext = add i32 %.0280457, -1
  %spec.select = add i32 %sext, %i.uv
  %i.uw = getelementptr inbounds nuw i8, ptr %.2290456, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !46
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [16 x i8], ptr %i.ua, i64 %i.uy
end_hunk_1
