inline.NumInlined: 42
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@assemble_code_blocks:bb.a
  br label %.critedge322.sink.split

bb.g:                                             ; preds = %bb.d
  %i.al = icmp eq i32 %i.j, 1
  %i.am = icmp eq i8 %i.w, 0
  %or.cond = and i1 %i.al, %i.am
  br i1 %or.cond, label %.critedge322.sink.split, label %.critedge322

.critedge322.sink.split:                          ; preds = %bb.g, %bb.f
  %.sink72 = phi i32 [ %i.ak, %bb.f ], [ 0, %bb.g ] ; 2 uses
  store i32 %.sink72, ptr %i.i, align 8, !tbaa !102
  br label %.critedge322

.critedge322:                                     ; preds = %.preheader, %.critedge322.sink.split, %.critedge, %bb.g
  %i.an = phi i32 [ %i.j, %bb.g ], [ %i.j, %.critedge ], [ %.sink72, %.critedge322.sink.split ], [ %i.j, %.preheader ]
  %i.ao = add i32 %i.an, %.02854
  br label %.loopexit1

.lr.ph.preheader:                                 ; preds = %bb.c
  %.idx39 = shl nuw nsw i64 %i.t, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx39
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.02933 = phi ptr [ %i.ce, %bb.o ], [ %i.s, %.lr.ph.preheader ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02933, i64 29
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !103
  %i.as = icmp eq i8 %i.ar, 1
  br i1 %i.as, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !129 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02933, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !48
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !48
  %.not.i324 = icmp eq i8 %i.az, 0
  br i1 %.not.i324, label %zval_ptr_dtor_nogc.exit326, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !64 ; 2 uses
  %i.bc = icmp ne i32 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !64
  %.not3.i325 = icmp eq i32 %i.bd, 0
  br i1 %.not3.i325, label %bb.j, label %zval_ptr_dtor_nogc.exit326

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !48
  tail call void @rc_dtor_func(ptr noundef %i.be) #11
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !129
  br label %zval_ptr_dtor_nogc.exit326

zval_ptr_dtor_nogc.exit326:                       ; preds = %bb.h, %bb.i, %bb.j
  %i.bf = phi ptr [ %i.at, %bb.h ], [ %i.at, %bb.i ], [ %.pre, %bb.j ]
  %i.bg = load i32, ptr %i.au, align 8, !tbaa !48
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 1, ptr %i.bj, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %zval_ptr_dtor_nogc.exit326, %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.02933, i64 30
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !105
  %i.bm = icmp eq i8 %i.bl, 1
  br i1 %i.bm, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !129 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02933, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !48
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !48
  %.not.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !64 ; 2 uses
  %i.bw = icmp ne i32 %i.bv, 0
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !64
  %.not3.i = icmp eq i32 %i.bx, 0
  br i1 %.not3.i, label %bb.n, label %zval_ptr_dtor_nogc.exit

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !48
  tail call void @rc_dtor_func(ptr noundef %i.by) #11
  %.pre49 = load ptr, ptr %i.h, align 8, !tbaa !129
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.l, %bb.m, %bb.n
  %i.bz = phi ptr [ %i.bn, %bb.l ], [ %i.bn, %bb.m ], [ %.pre49, %bb.n ]
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !48
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %zval_ptr_dtor_nogc.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.02933, i64 32 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ap
  br i1 %i.cf, label %.lr.ph, label %.loopexit1, !llvm.loop !160

.loopexit1:                                       ; preds = %bb.o, %.critedge322, %bb.b
  %.1286 = phi i32 [ %.02854, %bb.b ], [ %i.ao, %.critedge322 ], [ %.02854, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02815, i64 64 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.e
  br i1 %i.ch, label %bb.b, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %.loopexit1, %bb.a
  %.0285.lcssa = phi i32 [ 0, %bb.a ], [ %.1286, %.loopexit1 ] ; 3 uses
  %i.ci = zext i32 %.0285.lcssa to i64
  %i.cj = shl nuw nsw i64 %i.ci, 5                ; 2 uses
  %i.ck = tail call noalias ptr @_emalloc(i64 noundef %i.cj) #14 ; 13 uses
  br i1 %i.f, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cm = ptrtoint ptr %i.ck to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph11, %bb.r
  %.19 = phi ptr [ %i.b, %.lr.ph11 ], [ %i.dg, %bb.r ] ; 4 uses
  %.02838 = phi ptr [ %i.ck, %.lr.ph11 ], [ %.1284, %bb.r ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.19, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !98
  %i.cp = and i32 %i.co, -2147481600
  %.not319 = icmp eq i32 %i.cp, 0
  br i1 %.not319, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.cr = getelementptr inbounds nuw i8, ptr %.19, i64 12 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !101
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.19, i64 16 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !102
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02838, ptr align 8 %i.cu, i64 %i.cy, i1 false)
  %i.cz = ptrtoint ptr %.02838 to i64
  %i.da = sub i64 %i.cz, %i.cm
  %i.db = lshr exact i64 %i.da, 5
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cr, align 4, !tbaa !101
  %i.dd = load i32, ptr %i.cv, align 8, !tbaa !102
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %.02838, i64 %i.de
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1284 = phi ptr [ %i.df, %bb.q ], [ %.02838, %bb.p ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.19, i64 64 ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.e
  br i1 %i.dh, label %bb.p, label %._crit_edge12, !llvm.loop !162

._crit_edge12:                                    ; preds = %bb.r, %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !100
  tail call void @_efree(ptr noundef %i.dj) #11
  store ptr %i.ck, ptr %i.di, align 8, !tbaa !100
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store i32 %.0285.lcssa, ptr %i.dk, align 8, !tbaa !163
  br i1 %i.f, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %._crit_edge12
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 192
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph23, %bb.ah
  %.221 = phi ptr [ %i.b, %.lr.ph23 ], [ %i.ix, %bb.ah ] ; 12 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.221, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !98
  %.not316 = icmp sgt i32 %i.dn, -1
  br i1 %.not316, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %.221, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !102 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !100
  %i.ds = getelementptr inbounds nuw i8, ptr %.221, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !101
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.du
  %i.dw = zext i32 %i.dp to i64
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %i.dw ; 5 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -32 ; 6 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !106
  switch i8 %i.ea, label %bb.ah [
    i8 -94, label %bb.v
    i8 42, label %bb.v
    i8 43, label %bb.w
    i8 44, label %bb.w
    i8 46, label %bb.w
    i8 47, label %bb.w
    i8 77, label %bb.w
    i8 125, label %bb.w
    i8 -104, label %bb.w
    i8 -87, label %bb.w
    i8 -105, label %bb.w
    i8 -58, label %bb.w
    i8 -53, label %bb.w
    i8 -48, label %bb.w
    i8 107, label %bb.x
    i8 78, label %bb.z
    i8 126, label %bb.z
    i8 -69, label %bb.aa
    i8 -68, label %bb.aa
    i8 -61, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.eb = load ptr, ptr %.221, align 8, !tbaa !134
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !136
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !101
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.eh
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.dy to i64
  %i.el = sub i64 %i.ej, %i.ek
  br label %.sink.split

bb.w:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %i.em = load ptr, ptr %.221, align 8, !tbaa !134
  %i.en = load i32, ptr %i.em, align 4, !tbaa !136
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !101
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.es
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.dy to i64
  %i.ew = sub i64 %i.eu, %i.ev
  br label %.sink.split

bb.x:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds i8, ptr %i.dx, i64 -12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !130
  %i.ez = and i32 %i.ey, 1
  %.not318 = icmp eq i32 %i.ez, 0
  br i1 %.not318, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.fa = load ptr, ptr %.221, align 8, !tbaa !134
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !136
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !101
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.fg
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.dy to i64
  %i.fk = sub i64 %i.fi, %i.fj
  br label %.sink.split

bb.z:                                             ; preds = %bb.u, %bb.u
  %i.fl = load ptr, ptr %.221, align 8, !tbaa !134
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !136
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !101
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.fr
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.dy to i64
  %i.fv = sub i64 %i.ft, %i.fu
  br label %.sink.split

bb.aa:                                            ; preds = %bb.u, %bb.u, %bb.u
  %i.fw = load ptr, ptr %i.dl, align 8, !tbaa !129
  %i.fx = getelementptr inbounds i8, ptr %i.dx, i64 -20
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !48
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !48 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !164 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !48
  %i.gg = shl i32 %i.gf, 2
  %i.gh = and i32 %i.gg, 16
  %narrow = sub nuw nsw i32 32, %i.gh
  %i.gi = zext nneg i32 %narrow to i64            ; 2 uses
  %.not31713 = icmp eq i32 %i.gd, 0
  br i1 %.not31713, label %.._crit_edge19_crit_edge, label %.lr.ph18

.._crit_edge19_crit_edge:                         ; preds = %bb.aa
  %.pre51 = ptrtoint ptr %i.dy to i64
  br label %._crit_edge19

.lr.ph18:                                         ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !48 ; 2 uses
  %i.gl = ptrtoint ptr %i.dy to i64               ; 4 uses
  %xtraiter = and i32 %i.gd, 1
  %i.gm = icmp eq i32 %i.gd, 1
  br i1 %i.gm, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i32 %i.gd, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph18.new
  %.029016 = phi ptr [ %i.gk, %.lr.ph18.new ], [ %i.hu, %bb.af ] ; 3 uses
  %.029414 = phi i32 [ 0, %.lr.ph18.new ], [ %.1295.1, %bb.af ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.af ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.029016, i64 8
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !48
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.ad, label %bb.ac, !prof !96

bb.ac:                                            ; preds = %bb.ab
  %i.gq = load ptr, ptr %.221, align 8, !tbaa !134
  %i.gr = add i32 %.029414, 1
  %i.gs = zext i32 %.029414 to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !136
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !101
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.gz
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.hb, %i.gl
  store i64 %i.hc, ptr %.029016, align 8, !tbaa !48
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.1295 = phi i32 [ %.029414, %bb.ab ], [ %i.gr, %bb.ac ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.029016, i64 %i.gi ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !48
  %i.hg = icmp eq i8 %i.hf, 0
  br i1 %i.hg, label %bb.af, label %bb.ae, !prof !96

bb.ae:                                            ; preds = %bb.ad
  %i.hh = load ptr, ptr %.221, align 8, !tbaa !134
  %i.hi = add i32 %.1295, 1
  %i.hj = zext i32 %.1295 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !136
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !101
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.hq
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.hs, %i.gl
  store i64 %i.ht, ptr %i.hd, align 8, !tbaa !48
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1295.1 = phi i32 [ %.1295, %bb.ad ], [ %i.hi, %bb.ae ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gi ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge19.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !165

._crit_edge19.loopexit.unr-lcssa:                 ; preds = %bb.af
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge19.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge19.loopexit.unr-lcssa, %.lr.ph18
  %.029016.epil.init = phi ptr [ %i.gk, %.lr.ph18 ], [ %i.hu, %._crit_edge19.loopexit.unr-lcssa ] ; 2 uses
  %.029414.epil.init = phi i32 [ 0, %.lr.ph18 ], [ %.1295.1, %._crit_edge19.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod76 = trunc i32 %i.gd to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.hv = getelementptr inbounds nuw i8, ptr %.029016.epil.init, i64 8
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !48
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %._crit_edge19.loopexit, label %bb.ag, !prof !96

bb.ag:                                            ; preds = %.epil.preheader
  %i.hy = load ptr, ptr %.221, align 8, !tbaa !134
  %i.hz = add i32 %.029414.epil.init, 1
  %i.ia = zext i32 %.029414.epil.init to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !136
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !101
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.ih
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.gl
  store i64 %i.ik, ptr %.029016.epil.init, align 8, !tbaa !48
  br label %._crit_edge19.loopexit

._crit_edge19.loopexit:                           ; preds = %.epil.preheader, %bb.ag, %._crit_edge19.loopexit.unr-lcssa
  %.1295.lcssa = phi i32 [ %.1295.1, %._crit_edge19.loopexit.unr-lcssa ], [ %.029414.epil.init, %.epil.preheader ], [ %i.hz, %bb.ag ]
  %i.il = zext i32 %.1295.lcssa to i64
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %.._crit_edge19_crit_edge, %._crit_edge19.loopexit
  %.pre-phi = phi i64 [ %.pre51, %.._crit_edge19_crit_edge ], [ %i.gl, %._crit_edge19.loopexit ]
  %.0294.lcssa = phi i64 [ 0, %.._crit_edge19_crit_edge ], [ %i.il, %._crit_edge19.loopexit ]
  %i.im = load ptr, ptr %.221, align 8, !tbaa !134
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.0294.lcssa
  %i.io = load i32, ptr %i.in, align 4, !tbaa !136
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !101
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.it
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.iv, %.pre-phi
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %._crit_edge19, %bb.z, %bb.w, %bb.v
  %.sink76 = phi i64 [ %i.el, %bb.v ], [ %i.ew, %bb.w ], [ %i.fv, %bb.z ], [ %i.iw, %._crit_edge19 ], [ %i.fk, %bb.y ]
  %.sink75 = phi i64 [ -24, %bb.v ], [ -20, %bb.w ], [ -12, %bb.z ], [ -12, %._crit_edge19 ], [ -20, %bb.y ]
  %2 = trunc i64 %.sink76 to i32
  %3 = getelementptr inbounds i8, ptr %i.dx, i64 %.sink75
  store i32 %2, ptr %3, align 4, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.u, %bb.x, %bb.s, %bb.t
  %i.ix = getelementptr inbounds nuw i8, ptr %.221, i64 64 ; 2 uses
  %i.iy = icmp ult ptr %i.ix, %i.e
  br i1 %i.iy, label %bb.s, label %._crit_edge24, !llvm.loop !166

._crit_edge24:                                    ; preds = %bb.ah, %._crit_edge12
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !167 ; 2 uses
  %.not = icmp eq i32 %i.ja, 0
  br i1 %.not, label %bb.bd, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge24
  %i.jb = sext i32 %i.ja to i64
  %i.jc = shl nsw i64 %i.jb, 2                    ; 3 uses
  %i.jd = icmp ugt i64 %i.jc, 32768               ; 2 uses
  br i1 %i.jd, label %bb.aj, label %bb.ak, !prof !96

bb.aj:                                            ; preds = %bb.ai
  %i.je = tail call noalias ptr @_emalloc(i64 noundef %i.jc) #14
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jf = alloca i8, i64 %i.jc, align 16
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.jg = phi ptr [ %i.jf, %bb.ak ], [ %i.je, %bb.aj ] ; 3 uses
  %i.jh = load i32, ptr %i.iz, align 4, !tbaa !167 ; 3 uses
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph28, label %.loopexit

.lr.ph28:                                         ; preds = %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !135 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !168 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.jh to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph28, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %bb.au ] ; 3 uses
  %.028726 = phi i32 [ 0, %.lr.ph28 ], [ %.1288, %bb.au ] ; 4 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %indvars.iv ; 4 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !169
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !136
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !98
  %.not312 = icmp sgt i32 %i.jv, -1
  br i1 %.not312, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv
  store i32 %.028726, ptr %i.jw, align 4, !tbaa !136
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !101
  %i.jz = sext i32 %.028726 to i64
  %i.ka = getelementptr inbounds [16 x i8], ptr %i.jm, i64 %i.jz ; 4 uses
  store i32 %i.jy, ptr %i.ka, align 4, !tbaa !169
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !171 ; 2 uses
  %.not313 = icmp eq i32 %i.kc, 0
  br i1 %.not313, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !136
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !101
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sink = phi i32 [ %i.kj, %bb.ao ], [ 0, %bb.an ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 %.sink, ptr %i.kk, align 4, !tbaa !171
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !172 ; 2 uses
  %.not314 = icmp eq i32 %i.km, 0
  br i1 %.not314, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !136
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !101
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sink47 = phi i32 [ %i.kt, %bb.aq ], [ 0, %bb.ap ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 %.sink47, ptr %i.ku, align 4, !tbaa !172
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !173 ; 2 uses
  %.not315 = icmp eq i32 %i.kw, 0
  br i1 %.not315, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !136
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !101
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.sink48 = phi i32 [ %i.ld, %bb.as ], [ 0, %bb.ar ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 %.sink48, ptr %i.le, align 4, !tbaa !173
  %i.lf = add nsw i32 %.028726, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.am, %bb.at
  %.1288 = phi i32 [ %i.lf, %bb.at ], [ %.028726, %bb.am ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge29, label %bb.am, !llvm.loop !174

._crit_edge29:                                    ; preds = %bb.au
  %i.lg = icmp eq i32 %i.jh, %.1288
  br i1 %i.lg, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %._crit_edge29
  store i32 %.1288, ptr %i.iz, align 4, !tbaa !167
  %i.lh = icmp eq i32 %.1288, 0
  br i1 %i.lh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !168
  tail call void @_efree(ptr noundef %i.lj) #11
  store ptr null, ptr %i.li, align 8, !tbaa !168
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !149
  %i.lm = and i32 %i.ll, 32768
  %.not309 = icmp eq i32 %i.lm, 0
  br i1 %.not309, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  %.not41 = icmp eq i32 %.0285.lcssa, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.ay, %bb.bb
  %.028232 = phi ptr [ %i.lx, %bb.bb ], [ %i.ck, %bb.ay ] ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.028232, i64 28
  %i.lp = load i8, ptr %i.lo, align 4, !tbaa !106
  %i.lq = icmp eq i8 %i.lp, -93
  br i1 %i.lq, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.lr.ph34
  %i.lr = getelementptr inbounds nuw i8, ptr %.028232, i64 12 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !48 ; 2 uses
  %i.lt = icmp ult i32 %i.ls, %.1288
  br i1 %i.lt, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lu = zext i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !136
  store i32 %i.lw, ptr %i.lr, align 4, !tbaa !48
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph34
  %i.lx = getelementptr inbounds nuw i8, ptr %.028232, i64 32 ; 2 uses
  %i.ly = icmp ult ptr %i.lx, %i.ln
  br i1 %i.ly, label %.lr.ph34, label %.loopexit, !llvm.loop !175

.loopexit:                                        ; preds = %bb.bb, %bb.al, %bb.ay, %._crit_edge29, %bb.ax
  br i1 %i.jd, label %bb.bc, label %bb.bd, !prof !96

bb.bc:                                            ; preds = %.loopexit
  call void @_efree(ptr noundef %i.jg) #11
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit, %bb.bc, %._crit_edge24
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !135
  %i.mb = load i32, ptr %i.dk, align 8, !tbaa !163
  %i.mc = zext i32 %i.mb to i64
  %i.md = shl nuw nsw i64 %i.mc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ma, i8 -1, i64 %i.md, i1 false)
  %i.me = load i32, ptr %0, align 8, !tbaa !72    ; 2 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %bb.bd
  %i.mg = load ptr, ptr %i.a, align 8, !tbaa !97
end_hunk_0
