Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nbench1?download=true
inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoIDEA:.preheader188.preheader
  %i.i = trunc i32 %i.h to i16
  %i.j = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.k = trunc i32 %i.j to i16
  %i.l = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.m = trunc i32 %i.l to i16
  %i.n = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.o = trunc i32 %i.n to i16
  %i.p = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.q = trunc i32 %i.p to i16
  %i.r = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.s = trunc i32 %i.r to i16
  %i.t = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.u = trunc i32 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.v, i8 0, i64 88, i1 false), !tbaa !127
  store i16 %i.g, ptr %i.b, align 16, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store i16 %i.i, ptr %i.w, align 2, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.k, ptr %i.x, align 4, !tbaa !127
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  store i16 %i.m, ptr %i.y, align 2, !tbaa !127
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i16 %i.o, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.q, ptr %i.aa, align 2, !tbaa !127
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.s, ptr %i.ab, align 4, !tbaa !127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.u, ptr %i.ac, align 2, !tbaa !127
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader188.preheader
  %.123.i = phi i32 [ 8, %.preheader188.preheader ], [ %i.bl, %.lr.ph.i ]
  %.01622.i = phi i32 [ 0, %.preheader188.preheader ], [ %i.av, %.lr.ph.i ] ; 4 uses
  %.01721.i = phi ptr [ %i.b, %.preheader188.preheader ], [ %i.bk, %.lr.ph.i ] ; 4 uses
  %i.ad = add nuw nsw i32 %.01622.i, 1            ; 2 uses
  %i.ae = and i32 %i.ad, 7                        ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.01721.i, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !127
  %i.ai = add nuw nsw i32 %.01622.i, 2
  %i.aj = and i32 %i.ai, 7
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.01721.i, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !127
  %i.an = tail call i16 @llvm.fshl.i16(i16 %i.ah, i16 %i.am, i16 9)
  %i.ao = zext nneg i32 %.01622.i to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.01721.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i16 %i.an, ptr %i.aq, align 2, !tbaa !127
  %i.ar = and i32 %i.ad, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.01721.i, i64 %i.as ; 4 uses
  %i.au = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %i.av = and i32 %i.au, 7                        ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !127
  %i.az = add nuw nsw i32 %.01622.i, 3
  %i.ba = and i32 %i.az, 7
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !127
  %i.be = tail call i16 @llvm.fshl.i16(i16 %i.ay, i16 %i.bd, i16 9)
  %i.bf = zext nneg i32 %i.ae to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i16 %i.be, ptr %i.bh, align 2, !tbaa !127
  %i.bi = and i32 %i.au, 8
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bj
  %i.bl = add nuw nsw i32 %.123.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.bl, 52
  br i1 %exitcond.not.i.1, label %en_key_idea.exit, label %.lr.ph.i, !llvm.loop !209

en_key_idea.exit:                                 ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bm = load i16, ptr %i.b, align 16, !tbaa !127 ; 4 uses
  %i.bn = icmp ult i16 %i.bm, 2
  br i1 %i.bn, label %inv.exit.i, label %bb.a

bb.a:                                             ; preds = %en_key_idea.exit
  %i.bo = zext i16 %i.bm to i32                   ; 2 uses
  %i.bp = udiv i32 65537, %i.bo                   ; 2 uses
  %i.bq = urem i32 65537, %i.bo                   ; 2 uses
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.b, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  %i.bs = trunc nuw i32 %i.bq to i16
  br label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %i.bt = trunc nuw i32 %i.bp to i16
  %i.bu = sub i16 1, %i.bt
  br label %inv.exit.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.preheader.i.i
  %.027.i.i = phi i16 [ %i.bw, %bb.d ], [ %i.bm, %.preheader.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i32 [ %i.by, %bb.d ], [ 1, %.preheader.preheader.i.i ]
  %.025.i.i = phi i32 [ %i.ce, %bb.d ], [ %i.bp, %.preheader.preheader.i.i ] ; 2 uses
  %.0.i.i = phi i16 [ %i.cc, %bb.d ], [ %i.bs, %.preheader.preheader.i.i ] ; 4 uses
  %i.bv = udiv i16 %.027.i.i, %.0.i.i
  %.zext.i.i = zext i16 %i.bv to i32
  %i.bw = urem i16 %.027.i.i, %.0.i.i             ; 4 uses
  %i.bx = mul i32 %.025.i.i, %.zext.i.i
  %i.by = add i32 %i.bx, %.026.i.i                ; 3 uses
  %i.bz = icmp eq i16 %i.bw, 1
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i
  %i.ca = trunc i32 %i.by to i16
  br label %inv.exit.i

bb.d:                                             ; preds = %.preheader.i.i
  %i.cb = udiv i16 %.0.i.i, %i.bw
  %.zext36.i.i = zext i16 %i.cb to i32
  %i.cc = urem i16 %.0.i.i, %i.bw                 ; 2 uses
  %i.cd = mul i32 %i.by, %.zext36.i.i
  %i.ce = add i32 %i.cd, %.025.i.i                ; 2 uses
  %.not.i.i = icmp eq i16 %i.cc, 1
  br i1 %.not.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !210

bb.e:                                             ; preds = %bb.d
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = sub i16 1, %i.cf
  br label %inv.exit.i

inv.exit.i:                                       ; preds = %bb.e, %bb.c, %bb.b, %en_key_idea.exit
  %.028.i.i = phi i16 [ %i.cg, %bb.e ], [ %i.bu, %bb.b ], [ %i.ca, %bb.c ], [ %i.bm, %en_key_idea.exit ]
  %i.ch = load <2 x i16>, ptr %i.w, align 2, !tbaa !127
  %i.ci = sub <2 x i16> zeroinitializer, %i.ch
  %i.cj = load i16, ptr %i.y, align 2, !tbaa !127 ; 4 uses
  %i.ck = icmp ult i16 %i.cj, 2
  br i1 %i.ck, label %inv.exit63.i, label %bb.f

bb.f:                                             ; preds = %inv.exit.i
  %i.cl = zext i16 %i.cj to i32                   ; 2 uses
  %i.cm = udiv i32 65537, %i.cl                   ; 2 uses
  %i.cn = urem i32 65537, %i.cl                   ; 2 uses
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.g, label %.preheader.preheader.i53.i

.preheader.preheader.i53.i:                       ; preds = %bb.f
  %i.cp = trunc nuw i32 %i.cn to i16
  br label %.preheader.i54.i

bb.g:                                             ; preds = %bb.f
  %i.cq = trunc nuw i32 %i.cm to i16
  %i.cr = sub i16 1, %i.cq
  br label %inv.exit63.i

.preheader.i54.i:                                 ; preds = %bb.i, %.preheader.preheader.i53.i
  %.027.i55.i = phi i16 [ %i.ct, %bb.i ], [ %i.cj, %.preheader.preheader.i53.i ] ; 2 uses
  %.026.i56.i = phi i32 [ %i.cv, %bb.i ], [ 1, %.preheader.preheader.i53.i ]
  %.025.i57.i = phi i32 [ %i.db, %bb.i ], [ %i.cm, %.preheader.preheader.i53.i ] ; 2 uses
  %.0.i58.i = phi i16 [ %i.cz, %bb.i ], [ %i.cp, %.preheader.preheader.i53.i ] ; 4 uses
  %i.cs = udiv i16 %.027.i55.i, %.0.i58.i
  %.zext.i59.i = zext i16 %i.cs to i32
  %i.ct = urem i16 %.027.i55.i, %.0.i58.i         ; 4 uses
  %i.cu = mul i32 %.025.i57.i, %.zext.i59.i
  %i.cv = add i32 %i.cu, %.026.i56.i              ; 3 uses
  %i.cw = icmp eq i16 %i.ct, 1
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i54.i
  %i.cx = trunc i32 %i.cv to i16
  br label %inv.exit63.i

bb.i:                                             ; preds = %.preheader.i54.i
  %i.cy = udiv i16 %.0.i58.i, %i.ct
  %.zext36.i60.i = zext i16 %i.cy to i32
  %i.cz = urem i16 %.0.i58.i, %i.ct               ; 2 uses
  %i.da = mul i32 %i.cv, %.zext36.i60.i
  %i.db = add i32 %i.da, %.025.i57.i              ; 2 uses
  %.not.i61.i = icmp eq i16 %i.cz, 1
  br i1 %.not.i61.i, label %bb.j, label %.preheader.i54.i, !llvm.loop !210

bb.j:                                             ; preds = %bb.i
  %i.dc = trunc i32 %i.db to i16
  %i.dd = sub i16 1, %i.dc
  br label %inv.exit63.i

inv.exit63.i:                                     ; preds = %bb.j, %bb.h, %bb.g, %inv.exit.i
  %.028.i62.i = phi i16 [ %i.dd, %bb.j ], [ %i.cr, %bb.g ], [ %i.cx, %bb.h ], [ %i.cj, %inv.exit.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  store i16 %.028.i62.i, ptr %i.de, align 2, !tbaa !127
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store <2 x i16> %i.ci, ptr %i.df, align 2, !tbaa !127
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  store i16 %.028.i.i, ptr %i.dg, align 16, !tbaa !127
  br label %bb.k

bb.k:                                             ; preds = %inv.exit85.i, %inv.exit63.i
  %.0127.i = phi ptr [ %i.dg, %inv.exit63.i ], [ %i.fi, %inv.exit85.i ] ; 8 uses
  %.049126.i = phi i32 [ 1, %inv.exit63.i ], [ %i.fj, %inv.exit85.i ]
  %.052125.i = phi ptr [ %i.z, %inv.exit63.i ], [ %i.ej, %inv.exit85.i ] ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.052125.i, i64 4
  %i.di = getelementptr inbounds i8, ptr %.0127.i, i64 -4
  %i.dj = load <2 x i16>, ptr %.052125.i, align 4, !tbaa !127
  store <2 x i16> %i.dj, ptr %i.di, align 4, !tbaa !127
  %i.dk = getelementptr inbounds nuw i8, ptr %.052125.i, i64 6
  %i.dl = load i16, ptr %i.dh, align 4, !tbaa !127 ; 4 uses
  %i.dm = icmp ult i16 %i.dl, 2
  br i1 %i.dm, label %inv.exit74.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = zext i16 %i.dl to i32                   ; 2 uses
  %i.do = udiv i32 65537, %i.dn                   ; 2 uses
  %i.dp = urem i32 65537, %i.dn                   ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.m, label %.preheader.preheader.i64.i

.preheader.preheader.i64.i:                       ; preds = %bb.l
  %i.dr = trunc nuw i32 %i.dp to i16
  br label %.preheader.i65.i

bb.m:                                             ; preds = %bb.l
  %i.ds = trunc nuw i32 %i.do to i16
  %i.dt = sub i16 1, %i.ds
  br label %inv.exit74.i

.preheader.i65.i:                                 ; preds = %bb.o, %.preheader.preheader.i64.i
  %.027.i66.i = phi i16 [ %i.dv, %bb.o ], [ %i.dl, %.preheader.preheader.i64.i ] ; 2 uses
  %.026.i67.i = phi i32 [ %i.dx, %bb.o ], [ 1, %.preheader.preheader.i64.i ]
  %.025.i68.i = phi i32 [ %i.ed, %bb.o ], [ %i.do, %.preheader.preheader.i64.i ] ; 2 uses
  %.0.i69.i = phi i16 [ %i.eb, %bb.o ], [ %i.dr, %.preheader.preheader.i64.i ] ; 4 uses
  %i.du = udiv i16 %.027.i66.i, %.0.i69.i
  %.zext.i70.i = zext i16 %i.du to i32
  %i.dv = urem i16 %.027.i66.i, %.0.i69.i         ; 4 uses
  %i.dw = mul i32 %.025.i68.i, %.zext.i70.i
  %i.dx = add i32 %i.dw, %.026.i67.i              ; 3 uses
  %i.dy = icmp eq i16 %i.dv, 1
  br i1 %i.dy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i65.i
  %i.dz = trunc i32 %i.dx to i16
  br label %inv.exit74.i

bb.o:                                             ; preds = %.preheader.i65.i
  %i.ea = udiv i16 %.0.i69.i, %i.dv
  %.zext36.i71.i = zext i16 %i.ea to i32
  %i.eb = urem i16 %.0.i69.i, %i.dv               ; 2 uses
  %i.ec = mul i32 %i.dx, %.zext36.i71.i
  %i.ed = add i32 %i.ec, %.025.i68.i              ; 2 uses
  %.not.i72.i = icmp eq i16 %i.eb, 1
  br i1 %.not.i72.i, label %bb.p, label %.preheader.i65.i, !llvm.loop !210

bb.p:                                             ; preds = %bb.o
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = sub i16 1, %i.ee
  br label %inv.exit74.i

inv.exit74.i:                                     ; preds = %bb.p, %bb.n, %bb.m, %bb.k
  %.028.i73.i = phi i16 [ %i.ef, %bb.p ], [ %i.dt, %bb.m ], [ %i.dz, %bb.n ], [ %i.dl, %bb.k ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.052125.i, i64 10
  %i.eh = load <2 x i16>, ptr %i.dk, align 2, !tbaa !127
  %i.ei = sub <2 x i16> zeroinitializer, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.052125.i, i64 12 ; 2 uses
  %i.ek = load i16, ptr %i.eg, align 2, !tbaa !127 ; 4 uses
  %i.el = icmp ult i16 %i.ek, 2
  br i1 %i.el, label %inv.exit85.i, label %bb.q

bb.q:                                             ; preds = %inv.exit74.i
  %i.em = zext i16 %i.ek to i32                   ; 2 uses
  %i.en = udiv i32 65537, %i.em                   ; 2 uses
  %i.eo = urem i32 65537, %i.em                   ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.r, label %.preheader.preheader.i75.i

.preheader.preheader.i75.i:                       ; preds = %bb.q
  %i.eq = trunc nuw i32 %i.eo to i16
  br label %.preheader.i76.i

bb.r:                                             ; preds = %bb.q
  %i.er = trunc nuw i32 %i.en to i16
  %i.es = sub i16 1, %i.er
  br label %inv.exit85.i

.preheader.i76.i:                                 ; preds = %bb.t, %.preheader.preheader.i75.i
  %.027.i77.i = phi i16 [ %i.eu, %bb.t ], [ %i.ek, %.preheader.preheader.i75.i ] ; 2 uses
  %.026.i78.i = phi i32 [ %i.ew, %bb.t ], [ 1, %.preheader.preheader.i75.i ]
  %.025.i79.i = phi i32 [ %i.fc, %bb.t ], [ %i.en, %.preheader.preheader.i75.i ] ; 2 uses
  %.0.i80.i = phi i16 [ %i.fa, %bb.t ], [ %i.eq, %.preheader.preheader.i75.i ] ; 4 uses
  %i.et = udiv i16 %.027.i77.i, %.0.i80.i
  %.zext.i81.i = zext i16 %i.et to i32
  %i.eu = urem i16 %.027.i77.i, %.0.i80.i         ; 4 uses
  %i.ev = mul i32 %.025.i79.i, %.zext.i81.i
  %i.ew = add i32 %i.ev, %.026.i78.i              ; 3 uses
  %i.ex = icmp eq i16 %i.eu, 1
  br i1 %i.ex, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i76.i
  %i.ey = trunc i32 %i.ew to i16
  br label %inv.exit85.i

bb.t:                                             ; preds = %.preheader.i76.i
  %i.ez = udiv i16 %.0.i80.i, %i.eu
  %.zext36.i82.i = zext i16 %i.ez to i32
  %i.fa = urem i16 %.0.i80.i, %i.eu               ; 2 uses
  %i.fb = mul i32 %i.ew, %.zext36.i82.i
  %i.fc = add i32 %i.fb, %.025.i79.i              ; 2 uses
  %.not.i83.i = icmp eq i16 %i.fa, 1
  br i1 %.not.i83.i, label %bb.u, label %.preheader.i76.i, !llvm.loop !210

bb.u:                                             ; preds = %bb.t
  %i.fd = trunc i32 %i.fc to i16
  %i.fe = sub i16 1, %i.fd
  br label %inv.exit85.i

inv.exit85.i:                                     ; preds = %bb.u, %bb.s, %bb.r, %inv.exit74.i
  %.028.i84.i = phi i16 [ %i.fe, %bb.u ], [ %i.es, %bb.r ], [ %i.ey, %bb.s ], [ %i.ek, %inv.exit74.i ]
  %i.ff = getelementptr inbounds i8, ptr %.0127.i, i64 -6
  store i16 %.028.i84.i, ptr %i.ff, align 2, !tbaa !127
  %i.fg = getelementptr inbounds i8, ptr %.0127.i, i64 -10
  %i.fh = shufflevector <2 x i16> %i.ei, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.fh, ptr %i.fg, align 2, !tbaa !127
  %i.fi = getelementptr inbounds i8, ptr %.0127.i, i64 -12 ; 2 uses
  store i16 %.028.i73.i, ptr %i.fi, align 4, !tbaa !127
  %i.fj = add nuw nsw i32 %.049126.i, 1           ; 2 uses
  %exitcond.not.i55 = icmp eq i32 %i.fj, 8
  br i1 %exitcond.not.i55, label %bb.v, label %bb.k, !llvm.loop !211

bb.v:                                             ; preds = %inv.exit85.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.052125.i, i64 16
  %i.fl = getelementptr inbounds i8, ptr %.0127.i, i64 -16
  %i.fm = load <2 x i16>, ptr %i.ej, align 2, !tbaa !127
  store <2 x i16> %i.fm, ptr %i.fl, align 2, !tbaa !127
  %i.fn = getelementptr inbounds nuw i8, ptr %.052125.i, i64 18
  %i.fo = load i16, ptr %i.fk, align 2, !tbaa !127 ; 4 uses
  %i.fp = icmp ult i16 %i.fo, 2
  br i1 %i.fp, label %inv.exit96.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fq = zext i16 %i.fo to i32                   ; 2 uses
  %i.fr = udiv i32 65537, %i.fq                   ; 2 uses
  %i.fs = urem i32 65537, %i.fq                   ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.x, label %.preheader.preheader.i86.i

.preheader.preheader.i86.i:                       ; preds = %bb.w
  %i.fu = trunc nuw i32 %i.fs to i16
  br label %.preheader.i87.i

bb.x:                                             ; preds = %bb.w
  %i.fv = trunc nuw i32 %i.fr to i16
  %i.fw = sub i16 1, %i.fv
  br label %inv.exit96.i

.preheader.i87.i:                                 ; preds = %bb.z, %.preheader.preheader.i86.i
  %.027.i88.i = phi i16 [ %i.fy, %bb.z ], [ %i.fo, %.preheader.preheader.i86.i ] ; 2 uses
  %.026.i89.i = phi i32 [ %i.ga, %bb.z ], [ 1, %.preheader.preheader.i86.i ]
  %.025.i90.i = phi i32 [ %i.gg, %bb.z ], [ %i.fr, %.preheader.preheader.i86.i ] ; 2 uses
  %.0.i91.i = phi i16 [ %i.ge, %bb.z ], [ %i.fu, %.preheader.preheader.i86.i ] ; 4 uses
  %i.fx = udiv i16 %.027.i88.i, %.0.i91.i
  %.zext.i92.i = zext i16 %i.fx to i32
  %i.fy = urem i16 %.027.i88.i, %.0.i91.i         ; 4 uses
  %i.fz = mul i32 %.025.i90.i, %.zext.i92.i
  %i.ga = add i32 %i.fz, %.026.i89.i              ; 3 uses
  %i.gb = icmp eq i16 %i.fy, 1
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader.i87.i
  %i.gc = trunc i32 %i.ga to i16
  br label %inv.exit96.i

bb.z:                                             ; preds = %.preheader.i87.i
  %i.gd = udiv i16 %.0.i91.i, %i.fy
  %.zext36.i93.i = zext i16 %i.gd to i32
  %i.ge = urem i16 %.0.i91.i, %i.fy               ; 2 uses
  %i.gf = mul i32 %i.ga, %.zext36.i93.i
  %i.gg = add i32 %i.gf, %.025.i90.i              ; 2 uses
  %.not.i94.i = icmp eq i16 %i.ge, 1
  br i1 %.not.i94.i, label %bb.aa, label %.preheader.i87.i, !llvm.loop !210

bb.aa:                                            ; preds = %bb.z
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = sub i16 1, %i.gh
  br label %inv.exit96.i

inv.exit96.i:                                     ; preds = %bb.aa, %bb.y, %bb.x, %bb.v
  %.028.i95.i = phi i16 [ %i.gi, %bb.aa ], [ %i.fw, %bb.x ], [ %i.gc, %bb.y ], [ %i.fo, %bb.v ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.052125.i, i64 22
  %i.gk = load <2 x i16>, ptr %i.fn, align 2, !tbaa !127
  %i.gl = load i16, ptr %i.gj, align 2, !tbaa !127 ; 4 uses
  %i.gm = icmp ult i16 %i.gl, 2
  br i1 %i.gm, label %de_key_idea.exit, label %bb.ab

bb.ab:                                            ; preds = %inv.exit96.i
  %i.gn = zext i16 %i.gl to i32                   ; 2 uses
  %i.go = udiv i32 65537, %i.gn                   ; 2 uses
  %i.gp = urem i32 65537, %i.gn                   ; 2 uses
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %bb.ac, label %.preheader.preheader.i97.i

.preheader.preheader.i97.i:                       ; preds = %bb.ab
  %i.gr = trunc nuw i32 %i.gp to i16
  br label %.preheader.i98.i

bb.ac:                                            ; preds = %bb.ab
  %i.gs = trunc nuw i32 %i.go to i16
  %i.gt = sub i16 1, %i.gs
  br label %de_key_idea.exit

.preheader.i98.i:                                 ; preds = %bb.ae, %.preheader.preheader.i97.i
  %.027.i99.i = phi i16 [ %i.gv, %bb.ae ], [ %i.gl, %.preheader.preheader.i97.i ] ; 2 uses
  %.026.i100.i = phi i32 [ %i.gx, %bb.ae ], [ 1, %.preheader.preheader.i97.i ]
  %.025.i101.i = phi i32 [ %i.hd, %bb.ae ], [ %i.go, %.preheader.preheader.i97.i ] ; 2 uses
  %.0.i102.i = phi i16 [ %i.hb, %bb.ae ], [ %i.gr, %.preheader.preheader.i97.i ] ; 4 uses
  %i.gu = udiv i16 %.027.i99.i, %.0.i102.i
  %.zext.i103.i = zext i16 %i.gu to i32
  %i.gv = urem i16 %.027.i99.i, %.0.i102.i        ; 4 uses
  %i.gw = mul i32 %.025.i101.i, %.zext.i103.i
  %i.gx = add i32 %i.gw, %.026.i100.i             ; 3 uses
  %i.gy = icmp eq i16 %i.gv, 1
  br i1 %i.gy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.i98.i
  %i.gz = trunc i32 %i.gx to i16
  br label %de_key_idea.exit

bb.ae:                                            ; preds = %.preheader.i98.i
  %i.ha = udiv i16 %.0.i102.i, %i.gv
  %.zext36.i104.i = zext i16 %i.ha to i32
  %i.hb = urem i16 %.0.i102.i, %i.gv              ; 2 uses
  %i.hc = mul i32 %i.gx, %.zext36.i104.i
  %i.hd = add i32 %i.hc, %.025.i101.i             ; 2 uses
  %.not.i105.i = icmp eq i16 %i.hb, 1
  br i1 %.not.i105.i, label %bb.af, label %.preheader.i98.i, !llvm.loop !210

bb.af:                                            ; preds = %bb.ae
  %i.he = trunc i32 %i.hd to i16
  %i.hf = sub i16 1, %i.he
  br label %de_key_idea.exit

de_key_idea.exit:                                 ; preds = %inv.exit96.i, %bb.ac, %bb.ad, %bb.af
  %.028.i106.i = phi i16 [ %i.hf, %bb.af ], [ %i.gt, %bb.ac ], [ %i.gz, %bb.ad ], [ %i.gl, %inv.exit96.i ]
  %i.hg = sub <2 x i16> zeroinitializer, %i.gk
  %i.hh = getelementptr inbounds i8, ptr %.0127.i, i64 -18
  store i16 %.028.i106.i, ptr %i.hh, align 2, !tbaa !127
  %i.hi = getelementptr inbounds i8, ptr %.0127.i, i64 -22
  store <2 x i16> %i.hg, ptr %i.hi, align 2, !tbaa !127
  %i.hj = getelementptr inbounds i8, ptr %.0127.i, i64 -24
  store i16 %.028.i95.i, ptr %i.hj, align 2, !tbaa !127
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hl = load <8 x i16>, ptr %i.a, align 16, !tbaa !127
  store <8 x i16> %i.hl, ptr %i.c, align 16, !tbaa !127
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ho = load <8 x i16>, ptr %i.hm, align 16, !tbaa !127
  store <8 x i16> %i.ho, ptr %i.hk, align 16, !tbaa !127
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.hr = load <8 x i16>, ptr %i.hp, align 16, !tbaa !127
  store <8 x i16> %i.hr, ptr %i.hn, align 16, !tbaa !127
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.hu = load <8 x i16>, ptr %i.hs, align 16, !tbaa !127
  store <8 x i16> %i.hu, ptr %i.hq, align 16, !tbaa !127
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.hx = load <8 x i16>, ptr %i.hv, align 16, !tbaa !127
  store <8 x i16> %i.hx, ptr %i.ht, align 16, !tbaa !127
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ia = load <8 x i16>, ptr %i.hy, align 16, !tbaa !127
  store <8 x i16> %i.ia, ptr %i.hw, align 16, !tbaa !127
  %i.ib = load <4 x i16>, ptr %i.dg, align 16, !tbaa !127 ; 11 uses
  store <4 x i16> %i.ib, ptr %i.hz, align 16, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ic = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118
  %i.id = call ptr @AllocateMemory(i64 noundef %i.ic, ptr noundef nonnull %i.d) #11 ; 6 uses
  %i.ie = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %.not = icmp eq i32 %i.ie, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %de_key_idea.exit
  call void @ReportError(ptr noundef nonnull @.str.58, i32 noundef %i.ie) #11
  call void (...) @ErrorExit() #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %de_key_idea.exit
  %i.if = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118
  %i.ig = call ptr @AllocateMemory(i64 noundef %i.if, ptr noundef nonnull %i.d) #11 ; 6 uses
  %i.ih = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %.not53 = icmp eq i32 %i.ih, 0
  br i1 %.not53, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @ReportError(ptr noundef nonnull @.str.58, i32 noundef %i.ih) #11
  call void @FreeMemory(ptr noundef %i.id, ptr noundef nonnull %i.d) #11
  call void (...) @ErrorExit() #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ii = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118
  %i.ij = call ptr @AllocateMemory(i64 noundef %i.ii, ptr noundef nonnull %i.d) #11 ; 3 uses
  %i.ik = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %.not54 = icmp eq i32 %i.ik, 0
  br i1 %.not54, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @ReportError(ptr noundef nonnull @.str.58, i32 noundef %i.ik) #11
  call void @FreeMemory(ptr noundef %i.id, ptr noundef nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.ig, ptr noundef nonnull %i.d) #11
  call void (...) @ErrorExit() #11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.il = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118
  %.not233 = icmp eq i64 %i.il, 0
  br i1 %.not233, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.al ] ; 2 uses
  %i.im = call i32 @abs_randwc(i32 noundef 255) #11
  %i.in = trunc i32 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv
  store i8 %i.in, ptr %i.io, align 1, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ip = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118
  %i.iq = icmp ugt i64 %i.ip, %indvars.iv.next
  br i1 %i.iq, label %.lr.ph, label %._crit_edge, !llvm.loop !212

._crit_edge:                                      ; preds = %.lr.ph, %bb.al
  %i.ir = load i32, ptr @global_ideastruct, align 8, !tbaa !119
  %i.is = icmp eq i32 %i.ir, 0
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 98 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 102 ; 2 uses
  br i1 %i.is, label %.preheader, label %._crit_edge..loopexit_crit_edge

._crit_edge..loopexit_crit_edge:                  ; preds = %._crit_edge
  %scevgep.i156.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i16, ptr %scevgep.i156.phi.trans.insert, align 16 ; 3 uses
  %.pre277 = load i16, ptr %i.it, align 2
  %.pre279 = load i16, ptr %i.iu, align 4
  %.pre281 = load i16, ptr %i.iv, align 2         ; 3 uses
  %.pre283 = zext i16 %.pre to i32
  %.pre284 = sub i16 1, %.pre
  %.pre286 = zext i16 %.pre281 to i32
  %.pre288 = sub i16 1, %.pre281
  %i.iw = extractelement <4 x i16> %i.ib, i64 0   ; 2 uses
  %.pre290 = zext i16 %i.iw to i32
  %.pre292 = sub i16 1, %i.iw
  %i.ix = extractelement <4 x i16> %i.ib, i64 3   ; 2 uses
  %.pre294 = zext i16 %i.ix to i32
  %.pre296 = sub i16 1, %i.ix
  br label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  store i64 100, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !120
  %scevgep.i92 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.iy = load i16, ptr %scevgep.i92, align 16    ; 5 uses
  %i.iz = load i16, ptr %i.it, align 2            ; 3 uses
  %i.ja = load i16, ptr %i.iu, align 4            ; 3 uses
  %i.jb = load i16, ptr %i.iv, align 2            ; 5 uses
  %.not15.i64.i94 = icmp eq i16 %i.iy, 0
  %i.jc = zext i16 %i.iy to i32                   ; 3 uses
  %i.jd = sub i16 1, %i.iy                        ; 3 uses
  %.not15.i68.i98 = icmp eq i16 %i.jb, 0
  %i.je = zext i16 %i.jb to i32                   ; 3 uses
  %i.jf = sub i16 1, %i.jb                        ; 3 uses
  %i.jg = extractelement <4 x i16> %i.ib, i64 0   ; 3 uses
  %.not15.i64.i = icmp eq i16 %i.jg, 0
  %i.jh = zext i16 %i.jg to i32                   ; 3 uses
  %i.ji = sub i16 1, %i.jg                        ; 3 uses
  %i.jj = extractelement <4 x i16> %i.ib, i64 3   ; 3 uses
  %.not15.i68.i = icmp eq i16 %i.jj, 0
  %i.jk = zext i16 %i.jj to i32                   ; 3 uses
  %i.jl = sub i16 1, %i.jj                        ; 3 uses
  %i.jm = extractelement <4 x i16> %i.ib, i64 1
  %i.jn = extractelement <4 x i16> %i.ib, i64 2
  br label %bb.am

bb.am:                                            ; preds = %.preheader, %bb.ck
  %storemerge232 = phi i64 [ 100, %.preheader ], [ %i.sd, %bb.ck ] ; 2 uses
  %i.jo = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118 ; 3 uses
  %i.jp = call i64 (...) @StartStopwatch() #11
  %i.jq = icmp ne i64 %storemerge232, 0
  %i.jr = icmp ne i64 %i.jo, 0
  %or.cond.i = and i1 %i.jq, %i.jr
  br i1 %or.cond.i, label %.preheader21.us.us.i, label %DoIDEAIteration.exit

.preheader21.us.us.i:                             ; preds = %bb.am, %._crit_edge.us.us.i
  %.01925.us.us.i = phi i64 [ %i.ry, %._crit_edge.us.us.i ], [ 0, %bb.am ]
  br label %bb.an

bb.an:                                            ; preds = %cipher_idea.exit100, %.preheader21.us.us.i
  %.022.us.us.i = phi i64 [ 0, %.preheader21.us.us.i ], [ %i.nt, %cipher_idea.exit100 ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.id, i64 %.022.us.us.i ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.ju = load i16, ptr %i.js, align 2, !tbaa !127
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jw = load i16, ptr %i.jt, align 2, !tbaa !127
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 6
  %i.jy = load i16, ptr %i.jv, align 2, !tbaa !127
  %i.jz = load i16, ptr %i.jx, align 2, !tbaa !127
  br label %bb.ao

bb.ao:                                            ; preds = %mul.exit62.i89, %bb.an
  %.050.i69 = phi ptr [ %i.b, %bb.an ], [ %i.lz, %mul.exit62.i89 ] ; 7 uses
  %.049.i70 = phi i16 [ %i.ju, %bb.an ], [ %i.mo, %mul.exit62.i89 ] ; 3 uses
  %.048.in.i71 = phi i16 [ %i.jw, %bb.an ], [ %i.mr, %mul.exit62.i89 ]
  %.047.in.i72 = phi i16 [ %i.jy, %bb.an ], [ %i.mq, %mul.exit62.i89 ]
  %.046.i73 = phi i16 [ %i.jz, %bb.an ], [ %i.mp, %mul.exit62.i89 ] ; 3 uses
  %.0.i74 = phi i32 [ 8, %bb.an ], [ %i.ms, %mul.exit62.i89 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.050.i69, i64 2
  %i.kb = load i16, ptr %.050.i69, align 4, !tbaa !127 ; 3 uses
  %.not.i.i75 = icmp eq i16 %.049.i70, 0
  br i1 %.not.i.i75, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not15.i.i76 = icmp eq i16 %i.kb, 0
  br i1 %.not15.i.i76, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kc = zext i16 %.049.i70 to i32
  %i.kd = zext i16 %i.kb to i32
  %i.ke = mul nuw nsw i32 %i.kd, %i.kc            ; 3 uses
  %i.kf = lshr i32 %i.ke, 16                      ; 2 uses
  %i.kg = and i32 %i.ke, 65535
  %i.kh = sub nsw i32 %i.ke, %i.kf
  %i.ki = icmp samesign ult i32 %i.kg, %i.kf
  %i.kj = zext i1 %i.ki to i32
  %i.kk = add i32 %i.kh, %i.kj
  %i.kl = trunc i32 %i.kk to i16
  br label %mul.exit.i77

bb.ar:                                            ; preds = %bb.ap
  %i.km = sub i16 1, %.049.i70
  br label %mul.exit.i77

bb.as:                                            ; preds = %bb.ao
  %i.kn = sub i16 1, %i.kb
  br label %mul.exit.i77

mul.exit.i77:                                     ; preds = %bb.as, %bb.ar, %bb.aq
  %.0.i.i78 = phi i16 [ %i.kl, %bb.aq ], [ %i.km, %bb.ar ], [ %i.kn, %bb.as ] ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.050.i69, i64 4
  %i.kp = load i16, ptr %i.ka, align 2, !tbaa !127
  %i.kq = add i16 %i.kp, %.048.in.i71             ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.050.i69, i64 6
  %i.ks = load i16, ptr %i.ko, align 4, !tbaa !127
  %i.kt = add i16 %i.ks, %.047.in.i72             ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.050.i69, i64 8
  %i.kv = load i16, ptr %i.kr, align 2, !tbaa !127 ; 3 uses
  %.not.i51.i79 = icmp eq i16 %.046.i73, 0
  br i1 %.not.i51.i79, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %mul.exit.i77
  %.not15.i52.i80 = icmp eq i16 %i.kv, 0
  br i1 %.not15.i52.i80, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kw = zext i16 %.046.i73 to i32
  %i.kx = zext i16 %i.kv to i32
  %i.ky = mul nuw nsw i32 %i.kx, %i.kw            ; 3 uses
  %i.kz = lshr i32 %i.ky, 16                      ; 2 uses
  %i.la = and i32 %i.ky, 65535
  %i.lb = sub nsw i32 %i.ky, %i.kz
  %i.lc = icmp samesign ult i32 %i.la, %i.kz
  %i.ld = zext i1 %i.lc to i32
  %i.le = add i32 %i.lb, %i.ld
  %i.lf = trunc i32 %i.le to i16
  br label %mul.exit54.i81

bb.av:                                            ; preds = %bb.at
  %i.lg = sub i16 1, %.046.i73
  br label %mul.exit54.i81

bb.aw:                                            ; preds = %mul.exit.i77
  %i.lh = sub i16 1, %i.kv
  br label %mul.exit54.i81

mul.exit54.i81:                                   ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i53.i82 = phi i16 [ %i.lf, %bb.au ], [ %i.lg, %bb.av ], [ %i.lh, %bb.aw ] ; 3 uses
  %i.li = xor i16 %i.kt, %.0.i.i78                ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.050.i69, i64 10
  %i.lk = load i16, ptr %i.ku, align 4, !tbaa !127 ; 3 uses
  %.not.i55.i83 = icmp eq i16 %.0.i.i78, %i.kt
  br i1 %.not.i55.i83, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %mul.exit54.i81
  %.not15.i56.i84 = icmp eq i16 %i.lk, 0
  br i1 %.not15.i56.i84, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ll = zext i16 %i.li to i32
  %i.lm = zext i16 %i.lk to i32
  %i.ln = mul nuw nsw i32 %i.lm, %i.ll            ; 3 uses
  %i.lo = lshr i32 %i.ln, 16                      ; 2 uses
  %i.lp = and i32 %i.ln, 65535
  %i.lq = sub nsw i32 %i.ln, %i.lo
  %i.lr = icmp samesign ult i32 %i.lp, %i.lo
  %i.ls = zext i1 %i.lr to i32
  %i.lt = add i32 %i.lq, %i.ls
  %i.lu = trunc i32 %i.lt to i16
  br label %mul.exit58.i85

bb.az:                                            ; preds = %bb.ax
  %i.lv = sub i16 1, %i.li
  br label %mul.exit58.i85

bb.ba:                                            ; preds = %mul.exit54.i81
  %i.lw = sub i16 1, %i.lk
  br label %mul.exit58.i85

mul.exit58.i85:                                   ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i57.i86 = phi i16 [ %i.lu, %bb.ay ], [ %i.lv, %bb.az ], [ %i.lw, %bb.ba ] ; 2 uses
  %i.lx = xor i16 %.0.i53.i82, %i.kq
  %i.ly = add i16 %.0.i57.i86, %i.lx              ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.050.i69, i64 12
  %i.ma = load i16, ptr %i.lj, align 2, !tbaa !127 ; 3 uses
  %.not.i59.i87 = icmp eq i16 %i.ly, 0
  br i1 %.not.i59.i87, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %mul.exit58.i85
  %.not15.i60.i88 = icmp eq i16 %i.ma, 0
  br i1 %.not15.i60.i88, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mb = zext i16 %i.ly to i32
  %i.mc = zext i16 %i.ma to i32
  %i.md = mul nuw nsw i32 %i.mc, %i.mb            ; 3 uses
  %i.me = lshr i32 %i.md, 16                      ; 2 uses
  %i.mf = and i32 %i.md, 65535
  %i.mg = sub nsw i32 %i.md, %i.me
  %i.mh = icmp samesign ult i32 %i.mf, %i.me
  %i.mi = zext i1 %i.mh to i32
  %i.mj = add i32 %i.mg, %i.mi
  %i.mk = trunc i32 %i.mj to i16
  br label %mul.exit62.i89

bb.bd:                                            ; preds = %bb.bb
  %i.ml = sub i16 1, %i.ly
  br label %mul.exit62.i89

bb.be:                                            ; preds = %mul.exit58.i85
  %i.mm = sub i16 1, %i.ma
  br label %mul.exit62.i89

mul.exit62.i89:                                   ; preds = %bb.be, %bb.bd, %bb.bc
  %.0.i61.i90 = phi i16 [ %i.mk, %bb.bc ], [ %i.ml, %bb.bd ], [ %i.mm, %bb.be ] ; 4 uses
  %i.mn = add i16 %.0.i61.i90, %.0.i57.i86        ; 3 uses
  %i.mo = xor i16 %.0.i61.i90, %.0.i.i78          ; 3 uses
  %i.mp = xor i16 %i.mn, %.0.i53.i82              ; 3 uses
  %i.mq = xor i16 %i.mn, %i.kq                    ; 2 uses
  %i.mr = xor i16 %.0.i61.i90, %i.kt              ; 2 uses
  %i.ms = add nsw i32 %.0.i74, -1                 ; 2 uses
  %.not.i91 = icmp eq i32 %i.ms, 0
  br i1 %.not.i91, label %bb.bf, label %bb.ao, !llvm.loop !213

bb.bf:                                            ; preds = %mul.exit62.i89
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.022.us.us.i ; 4 uses
  %.not.i63.i93 = icmp eq i16 %.0.i.i78, %.0.i61.i90
  br i1 %.not.i63.i93, label %mul.exit66.i95, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not15.i64.i94, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mu = zext i16 %i.mo to i32
  %i.mv = mul nuw nsw i32 %i.jc, %i.mu            ; 3 uses
  %i.mw = lshr i32 %i.mv, 16                      ; 2 uses
  %i.mx = and i32 %i.mv, 65535
  %i.my = sub nsw i32 %i.mv, %i.mw
  %i.mz = icmp samesign ult i32 %i.mx, %i.mw
  %i.na = zext i1 %i.mz to i32
  %i.nb = add i32 %i.my, %i.na
  %i.nc = trunc i32 %i.nb to i16
  br label %mul.exit66.i95

bb.bi:                                            ; preds = %bb.bg
  %i.nd = sub i16 1, %i.mo
  br label %mul.exit66.i95

mul.exit66.i95:                                   ; preds = %bb.bf, %bb.bi, %bb.bh
  %.0.i65.i96 = phi i16 [ %i.nc, %bb.bh ], [ %i.nd, %bb.bi ], [ %i.jd, %bb.bf ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  store i16 %.0.i65.i96, ptr %i.mt, align 2, !tbaa !127
  %i.nf = add i16 %i.iz, %i.mq
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store i16 %i.nf, ptr %i.ne, align 2, !tbaa !127
  %i.nh = add i16 %i.ja, %i.mr
  store i16 %i.nh, ptr %i.ng, align 2, !tbaa !127
  %.not.i67.i97 = icmp eq i16 %.0.i53.i82, %i.mn
  br i1 %.not.i67.i97, label %cipher_idea.exit100, label %bb.bj

bb.bj:                                            ; preds = %mul.exit66.i95
  br i1 %.not15.i68.i98, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ni = zext i16 %i.mp to i32
  %i.nj = mul nuw nsw i32 %i.je, %i.ni            ; 3 uses
  %i.nk = lshr i32 %i.nj, 16                      ; 2 uses
  %i.nl = and i32 %i.nj, 65535
  %i.nm = sub nsw i32 %i.nj, %i.nk
  %i.nn = icmp samesign ult i32 %i.nl, %i.nk
  %i.no = zext i1 %i.nn to i32
  %i.np = add i32 %i.nm, %i.no
  %i.nq = trunc i32 %i.np to i16
  br label %cipher_idea.exit100

bb.bl:                                            ; preds = %bb.bj
  %i.nr = sub i16 1, %i.mp
  br label %cipher_idea.exit100

cipher_idea.exit100:                              ; preds = %mul.exit66.i95, %bb.bk, %bb.bl
  %.0.i69.i99 = phi i16 [ %i.nq, %bb.bk ], [ %i.nr, %bb.bl ], [ %i.jf, %mul.exit66.i95 ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mt, i64 6
  store i16 %.0.i69.i99, ptr %i.ns, align 2, !tbaa !127
  %i.nt = add nuw i64 %.022.us.us.i, 8            ; 2 uses
  %i.nu = icmp ult i64 %i.nt, %i.jo
  br i1 %i.nu, label %bb.an, label %..preheader_crit_edge.us.us.i, !llvm.loop !214

..preheader_crit_edge.us.us.i:                    ; preds = %cipher_idea.exit100, %cipher_idea.exit
  %.123.us.us.i = phi i64 [ %i.rw, %cipher_idea.exit ], [ 0, %cipher_idea.exit100 ] ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.123.us.us.i ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.nx = load i16, ptr %i.nv, align 2, !tbaa !127
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.nz = load i16, ptr %i.nw, align 2, !tbaa !127
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 6
  %i.ob = load i16, ptr %i.ny, align 2, !tbaa !127
  %i.oc = load i16, ptr %i.oa, align 2, !tbaa !127
  br label %bb.bm

bb.bm:                                            ; preds = %mul.exit62.i, %..preheader_crit_edge.us.us.i
  %.050.i = phi ptr [ %i.c, %..preheader_crit_edge.us.us.i ], [ %i.qc, %mul.exit62.i ] ; 7 uses
  %.049.i = phi i16 [ %i.nx, %..preheader_crit_edge.us.us.i ], [ %i.qr, %mul.exit62.i ] ; 3 uses
  %.048.in.i = phi i16 [ %i.nz, %..preheader_crit_edge.us.us.i ], [ %i.qu, %mul.exit62.i ]
  %.047.in.i = phi i16 [ %i.ob, %..preheader_crit_edge.us.us.i ], [ %i.qt, %mul.exit62.i ]
  %.046.i = phi i16 [ %i.oc, %..preheader_crit_edge.us.us.i ], [ %i.qs, %mul.exit62.i ] ; 3 uses
  %.0.i = phi i32 [ 8, %..preheader_crit_edge.us.us.i ], [ %i.qv, %mul.exit62.i ]
  %i.od = getelementptr inbounds nuw i8, ptr %.050.i, i64 2
  %i.oe = load i16, ptr %.050.i, align 4, !tbaa !127 ; 3 uses
  %.not.i.i66 = icmp eq i16 %.049.i, 0
  br i1 %.not.i.i66, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.not15.i.i = icmp eq i16 %i.oe, 0
  br i1 %.not15.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.of = zext i16 %.049.i to i32
  %i.og = zext i16 %i.oe to i32
  %i.oh = mul nuw nsw i32 %i.og, %i.of            ; 3 uses
  %i.oi = lshr i32 %i.oh, 16                      ; 2 uses
  %i.oj = and i32 %i.oh, 65535
  %i.ok = sub nsw i32 %i.oh, %i.oi
  %i.ol = icmp samesign ult i32 %i.oj, %i.oi
  %i.om = zext i1 %i.ol to i32
  %i.on = add i32 %i.ok, %i.om
  %i.oo = trunc i32 %i.on to i16
  br label %mul.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.op = sub i16 1, %.049.i
  br label %mul.exit.i

bb.bq:                                            ; preds = %bb.bm
  %i.oq = sub i16 1, %i.oe
  br label %mul.exit.i

mul.exit.i:                                       ; preds = %bb.bq, %bb.bp, %bb.bo
  %.0.i.i67 = phi i16 [ %i.oo, %bb.bo ], [ %i.op, %bb.bp ], [ %i.oq, %bb.bq ] ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.050.i, i64 4
  %i.os = load i16, ptr %i.od, align 2, !tbaa !127
  %i.ot = add i16 %i.os, %.048.in.i               ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.050.i, i64 6
  %i.ov = load i16, ptr %i.or, align 4, !tbaa !127
  %i.ow = add i16 %i.ov, %.047.in.i               ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.050.i, i64 8
  %i.oy = load i16, ptr %i.ou, align 2, !tbaa !127 ; 3 uses
  %.not.i51.i = icmp eq i16 %.046.i, 0
  br i1 %.not.i51.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %mul.exit.i
  %.not15.i52.i = icmp eq i16 %i.oy, 0
  br i1 %.not15.i52.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oz = zext i16 %.046.i to i32
  %i.pa = zext i16 %i.oy to i32
  %i.pb = mul nuw nsw i32 %i.pa, %i.oz            ; 3 uses
  %i.pc = lshr i32 %i.pb, 16                      ; 2 uses
  %i.pd = and i32 %i.pb, 65535
  %i.pe = sub nsw i32 %i.pb, %i.pc
  %i.pf = icmp samesign ult i32 %i.pd, %i.pc
  %i.pg = zext i1 %i.pf to i32
  %i.ph = add i32 %i.pe, %i.pg
  %i.pi = trunc i32 %i.ph to i16
  br label %mul.exit54.i

bb.bt:                                            ; preds = %bb.br
  %i.pj = sub i16 1, %.046.i
  br label %mul.exit54.i

bb.bu:                                            ; preds = %mul.exit.i
  %i.pk = sub i16 1, %i.oy
  br label %mul.exit54.i

mul.exit54.i:                                     ; preds = %bb.bu, %bb.bt, %bb.bs
  %.0.i53.i = phi i16 [ %i.pi, %bb.bs ], [ %i.pj, %bb.bt ], [ %i.pk, %bb.bu ] ; 3 uses
  %i.pl = xor i16 %i.ow, %.0.i.i67                ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.050.i, i64 10
  %i.pn = load i16, ptr %i.ox, align 4, !tbaa !127 ; 3 uses
  %.not.i55.i = icmp eq i16 %.0.i.i67, %i.ow
  br i1 %.not.i55.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %mul.exit54.i
  %.not15.i56.i = icmp eq i16 %i.pn, 0
  br i1 %.not15.i56.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.po = zext i16 %i.pl to i32
  %i.pp = zext i16 %i.pn to i32
  %i.pq = mul nuw nsw i32 %i.pp, %i.po            ; 3 uses
  %i.pr = lshr i32 %i.pq, 16                      ; 2 uses
  %i.ps = and i32 %i.pq, 65535
  %i.pt = sub nsw i32 %i.pq, %i.pr
  %i.pu = icmp samesign ult i32 %i.ps, %i.pr
  %i.pv = zext i1 %i.pu to i32
  %i.pw = add i32 %i.pt, %i.pv
  %i.px = trunc i32 %i.pw to i16
  br label %mul.exit58.i

bb.bx:                                            ; preds = %bb.bv
  %i.py = sub i16 1, %i.pl
  br label %mul.exit58.i

bb.by:                                            ; preds = %mul.exit54.i
  %i.pz = sub i16 1, %i.pn
  br label %mul.exit58.i

mul.exit58.i:                                     ; preds = %bb.by, %bb.bx, %bb.bw
  %.0.i57.i = phi i16 [ %i.px, %bb.bw ], [ %i.py, %bb.bx ], [ %i.pz, %bb.by ] ; 2 uses
  %i.qa = xor i16 %.0.i53.i, %i.ot
  %i.qb = add i16 %.0.i57.i, %i.qa                ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.050.i, i64 12
  %i.qd = load i16, ptr %i.pm, align 2, !tbaa !127 ; 3 uses
  %.not.i59.i = icmp eq i16 %i.qb, 0
  br i1 %.not.i59.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %mul.exit58.i
  %.not15.i60.i = icmp eq i16 %i.qd, 0
  br i1 %.not15.i60.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qe = zext i16 %i.qb to i32
  %i.qf = zext i16 %i.qd to i32
  %i.qg = mul nuw nsw i32 %i.qf, %i.qe            ; 3 uses
  %i.qh = lshr i32 %i.qg, 16                      ; 2 uses
  %i.qi = and i32 %i.qg, 65535
  %i.qj = sub nsw i32 %i.qg, %i.qh
  %i.qk = icmp samesign ult i32 %i.qi, %i.qh
  %i.ql = zext i1 %i.qk to i32
  %i.qm = add i32 %i.qj, %i.ql
  %i.qn = trunc i32 %i.qm to i16
  br label %mul.exit62.i

bb.cb:                                            ; preds = %bb.bz
  %i.qo = sub i16 1, %i.qb
  br label %mul.exit62.i

bb.cc:                                            ; preds = %mul.exit58.i
  %i.qp = sub i16 1, %i.qd
  br label %mul.exit62.i

mul.exit62.i:                                     ; preds = %bb.cc, %bb.cb, %bb.ca
  %.0.i61.i = phi i16 [ %i.qn, %bb.ca ], [ %i.qo, %bb.cb ], [ %i.qp, %bb.cc ] ; 4 uses
  %i.qq = add i16 %.0.i61.i, %.0.i57.i            ; 3 uses
  %i.qr = xor i16 %.0.i61.i, %.0.i.i67            ; 3 uses
  %i.qs = xor i16 %i.qq, %.0.i53.i                ; 3 uses
  %i.qt = xor i16 %i.qq, %i.ot                    ; 2 uses
  %i.qu = xor i16 %.0.i61.i, %i.ow                ; 2 uses
  %i.qv = add nsw i32 %.0.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.qv, 0
  br i1 %.not.i, label %bb.cd, label %bb.bm, !llvm.loop !213

bb.cd:                                            ; preds = %mul.exit62.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.123.us.us.i ; 4 uses
  %.not.i63.i = icmp eq i16 %.0.i.i67, %.0.i61.i
  br i1 %.not.i63.i, label %mul.exit66.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not15.i64.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qx = zext i16 %i.qr to i32
  %i.qy = mul nuw nsw i32 %i.qx, %i.jh            ; 3 uses
  %i.qz = lshr i32 %i.qy, 16                      ; 2 uses
  %i.ra = and i32 %i.qy, 65535
  %i.rb = sub nsw i32 %i.qy, %i.qz
  %i.rc = icmp samesign ult i32 %i.ra, %i.qz
  %i.rd = zext i1 %i.rc to i32
  %i.re = add i32 %i.rb, %i.rd
  %i.rf = trunc i32 %i.re to i16
  br label %mul.exit66.i

bb.cg:                                            ; preds = %bb.ce
  %i.rg = sub i16 1, %i.qr
  br label %mul.exit66.i

mul.exit66.i:                                     ; preds = %bb.cd, %bb.cg, %bb.cf
  %.0.i65.i = phi i16 [ %i.rf, %bb.cf ], [ %i.rg, %bb.cg ], [ %i.ji, %bb.cd ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qw, i64 2
  store i16 %.0.i65.i, ptr %i.qw, align 2, !tbaa !127
  %i.ri = add i16 %i.qt, %i.jm
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i16 %i.ri, ptr %i.rh, align 2, !tbaa !127
  %i.rk = add i16 %i.qu, %i.jn
  store i16 %i.rk, ptr %i.rj, align 2, !tbaa !127
  %.not.i67.i = icmp eq i16 %.0.i53.i, %i.qq
  br i1 %.not.i67.i, label %cipher_idea.exit, label %bb.ch

bb.ch:                                            ; preds = %mul.exit66.i
  br i1 %.not15.i68.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rl = zext i16 %i.qs to i32
  %i.rm = mul nuw nsw i32 %i.rl, %i.jk            ; 3 uses
  %i.rn = lshr i32 %i.rm, 16                      ; 2 uses
  %i.ro = and i32 %i.rm, 65535
  %i.rp = sub nsw i32 %i.rm, %i.rn
  %i.rq = icmp samesign ult i32 %i.ro, %i.rn
  %i.rr = zext i1 %i.rq to i32
  %i.rs = add i32 %i.rp, %i.rr
  %i.rt = trunc i32 %i.rs to i16
  br label %cipher_idea.exit

bb.cj:                                            ; preds = %bb.ch
  %i.ru = sub i16 1, %i.qs
  br label %cipher_idea.exit

cipher_idea.exit:                                 ; preds = %mul.exit66.i, %bb.ci, %bb.cj
  %.0.i69.i68 = phi i16 [ %i.rt, %bb.ci ], [ %i.ru, %bb.cj ], [ %i.jl, %mul.exit66.i ]
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qw, i64 6
  store i16 %.0.i69.i68, ptr %i.rv, align 2, !tbaa !127
  %i.rw = add nuw i64 %.123.us.us.i, 8            ; 2 uses
  %i.rx = icmp ult i64 %i.rw, %i.jo
  br i1 %i.rx, label %..preheader_crit_edge.us.us.i, label %._crit_edge.us.us.i, !llvm.loop !215

._crit_edge.us.us.i:                              ; preds = %cipher_idea.exit
  %i.ry = add nuw nsw i64 %.01925.us.us.i, 1      ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.ry, %storemerge232
  br i1 %exitcond.not.i56, label %DoIDEAIteration.exit, label %.preheader21.us.us.i, !llvm.loop !216

DoIDEAIteration.exit:                             ; preds = %._crit_edge.us.us.i, %bb.am
  %i.rz = call i64 @StopStopwatch(i64 noundef %i.jp) #11
  %i.sa = load i64, ptr @global_min_ticks, align 8, !tbaa !108
  %i.sb = icmp ugt i64 %i.rz, %i.sa
  br i1 %i.sb, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %DoIDEAIteration.exit
  %i.sc = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !120
  %i.sd = add i64 %i.sc, 10                       ; 3 uses
  store i64 %i.sd, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !120
  %i.se = icmp ult i64 %i.sd, 500000
  br i1 %i.se, label %bb.am, label %.loopexit, !llvm.loop !217

.loopexit:                                        ; preds = %bb.ck, %DoIDEAIteration.exit, %._crit_edge..loopexit_crit_edge
  %.pre-phi297 = phi i16 [ %.pre296, %._crit_edge..loopexit_crit_edge ], [ %i.jl, %DoIDEAIteration.exit ], [ %i.jl, %bb.ck ]
  %.pre-phi295 = phi i32 [ %.pre294, %._crit_edge..loopexit_crit_edge ], [ %i.jk, %DoIDEAIteration.exit ], [ %i.jk, %bb.ck ]
  %.pre-phi293 = phi i16 [ %.pre292, %._crit_edge..loopexit_crit_edge ], [ %i.ji, %DoIDEAIteration.exit ], [ %i.ji, %bb.ck ]
  %.pre-phi291 = phi i32 [ %.pre290, %._crit_edge..loopexit_crit_edge ], [ %i.jh, %DoIDEAIteration.exit ], [ %i.jh, %bb.ck ]
  %.pre-phi289 = phi i16 [ %.pre288, %._crit_edge..loopexit_crit_edge ], [ %i.jf, %DoIDEAIteration.exit ], [ %i.jf, %bb.ck ]
  %.pre-phi287 = phi i32 [ %.pre286, %._crit_edge..loopexit_crit_edge ], [ %i.je, %DoIDEAIteration.exit ], [ %i.je, %bb.ck ]
  %.pre-phi285 = phi i16 [ %.pre284, %._crit_edge..loopexit_crit_edge ], [ %i.jd, %DoIDEAIteration.exit ], [ %i.jd, %bb.ck ]
  %.pre-phi = phi i32 [ %.pre283, %._crit_edge..loopexit_crit_edge ], [ %i.jc, %DoIDEAIteration.exit ], [ %i.jc, %bb.ck ]
  %i.sf = phi i16 [ %.pre281, %._crit_edge..loopexit_crit_edge ], [ %i.jb, %DoIDEAIteration.exit ], [ %i.jb, %bb.ck ]
  %i.sg = phi i16 [ %.pre279, %._crit_edge..loopexit_crit_edge ], [ %i.ja, %DoIDEAIteration.exit ], [ %i.ja, %bb.ck ]
  %i.sh = phi i16 [ %.pre277, %._crit_edge..loopexit_crit_edge ], [ %i.iz, %DoIDEAIteration.exit ], [ %i.iz, %bb.ck ]
  %i.si = phi i16 [ %.pre, %._crit_edge..loopexit_crit_edge ], [ %i.iy, %DoIDEAIteration.exit ], [ %i.iy, %bb.ck ]
  %.not15.i64.i158 = icmp eq i16 %i.si, 0
  %.not15.i68.i162 = icmp eq i16 %i.sf, 0
  %i.sj = extractelement <4 x i16> %i.ib, i64 0
  %.not15.i64.i126 = icmp eq i16 %i.sj, 0
  %i.sk = extractelement <4 x i16> %i.ib, i64 3
  %.not15.i68.i130 = icmp eq i16 %i.sk, 0
  %.pre282 = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !120
  %i.sl = extractelement <4 x i16> %i.ib, i64 1
  %i.sm = extractelement <4 x i16> %i.ib, i64 2
  br label %bb.cl

bb.cl:                                            ; preds = %DoIDEAIteration.exit65, %.loopexit
  %i.sn = phi i64 [ %.pre282, %.loopexit ], [ %i.abb, %DoIDEAIteration.exit65 ] ; 2 uses
  %.045 = phi i64 [ 0, %.loopexit ], [ %i.aba, %DoIDEAIteration.exit65 ]
  %.0 = phi double [ 0.000000e+00, %.loopexit ], [ %i.abd, %DoIDEAIteration.exit65 ]
  %i.so = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !118 ; 3 uses
  %i.sp = call i64 (...) @StartStopwatch() #11
  %i.sq = icmp ne i64 %i.sn, 0
  %i.sr = icmp ne i64 %i.so, 0
  %or.cond.i57 = and i1 %i.sr, %i.sq
  br i1 %or.cond.i57, label %.preheader21.us.us.i58, label %DoIDEAIteration.exit65

.preheader21.us.us.i58:                           ; preds = %bb.cl, %._crit_edge.us.us.i63
  %.01925.us.us.i59 = phi i64 [ %i.aay, %._crit_edge.us.us.i63 ], [ 0, %bb.cl ]
  br label %bb.cm

bb.cm:                                            ; preds = %cipher_idea.exit164, %.preheader21.us.us.i58
  %.022.us.us.i60 = phi i64 [ 0, %.preheader21.us.us.i58 ], [ %i.wt, %cipher_idea.exit164 ] ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.id, i64 %.022.us.us.i60 ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 2
  %i.su = load i16, ptr %i.ss, align 2, !tbaa !127
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.sw = load i16, ptr %i.st, align 2, !tbaa !127
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ss, i64 6
  %i.sy = load i16, ptr %i.sv, align 2, !tbaa !127
  %i.sz = load i16, ptr %i.sx, align 2, !tbaa !127
  br label %bb.cn

bb.cn:                                            ; preds = %mul.exit62.i153, %bb.cm
  %.050.i133 = phi ptr [ %i.b, %bb.cm ], [ %i.uz, %mul.exit62.i153 ] ; 7 uses
  %.049.i134 = phi i16 [ %i.su, %bb.cm ], [ %i.vo, %mul.exit62.i153 ] ; 3 uses
  %.048.in.i135 = phi i16 [ %i.sw, %bb.cm ], [ %i.vr, %mul.exit62.i153 ]
  %.047.in.i136 = phi i16 [ %i.sy, %bb.cm ], [ %i.vq, %mul.exit62.i153 ]
  %.046.i137 = phi i16 [ %i.sz, %bb.cm ], [ %i.vp, %mul.exit62.i153 ] ; 3 uses
  %.0.i138 = phi i32 [ 8, %bb.cm ], [ %i.vs, %mul.exit62.i153 ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.050.i133, i64 2
  %i.tb = load i16, ptr %.050.i133, align 4, !tbaa !127 ; 3 uses
  %.not.i.i139 = icmp eq i16 %.049.i134, 0
  br i1 %.not.i.i139, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not15.i.i140 = icmp eq i16 %i.tb, 0
  br i1 %.not15.i.i140, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tc = zext i16 %.049.i134 to i32
  %i.td = zext i16 %i.tb to i32
  %i.te = mul nuw nsw i32 %i.td, %i.tc            ; 3 uses
  %i.tf = lshr i32 %i.te, 16                      ; 2 uses
  %i.tg = and i32 %i.te, 65535
  %i.th = sub nsw i32 %i.te, %i.tf
  %i.ti = icmp samesign ult i32 %i.tg, %i.tf
  %i.tj = zext i1 %i.ti to i32
  %i.tk = add i32 %i.th, %i.tj
  %i.tl = trunc i32 %i.tk to i16
  br label %mul.exit.i141

bb.cq:                                            ; preds = %bb.co
  %i.tm = sub i16 1, %.049.i134
  br label %mul.exit.i141

bb.cr:                                            ; preds = %bb.cn
  %i.tn = sub i16 1, %i.tb
  br label %mul.exit.i141

mul.exit.i141:                                    ; preds = %bb.cr, %bb.cq, %bb.cp
  %.0.i.i142 = phi i16 [ %i.tl, %bb.cp ], [ %i.tm, %bb.cq ], [ %i.tn, %bb.cr ] ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.050.i133, i64 4
  %i.tp = load i16, ptr %i.ta, align 2, !tbaa !127
  %i.tq = add i16 %i.tp, %.048.in.i135            ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.050.i133, i64 6
  %i.ts = load i16, ptr %i.to, align 4, !tbaa !127
  %i.tt = add i16 %i.ts, %.047.in.i136            ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.050.i133, i64 8
  %i.tv = load i16, ptr %i.tr, align 2, !tbaa !127 ; 3 uses
  %.not.i51.i143 = icmp eq i16 %.046.i137, 0
  br i1 %.not.i51.i143, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %mul.exit.i141
  %.not15.i52.i144 = icmp eq i16 %i.tv, 0
  br i1 %.not15.i52.i144, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tw = zext i16 %.046.i137 to i32
  %i.tx = zext i16 %i.tv to i32
  %i.ty = mul nuw nsw i32 %i.tx, %i.tw            ; 3 uses
  %i.tz = lshr i32 %i.ty, 16                      ; 2 uses
  %i.ua = and i32 %i.ty, 65535
  %i.ub = sub nsw i32 %i.ty, %i.tz
  %i.uc = icmp samesign ult i32 %i.ua, %i.tz
  %i.ud = zext i1 %i.uc to i32
  %i.ue = add i32 %i.ub, %i.ud
  %i.uf = trunc i32 %i.ue to i16
  br label %mul.exit54.i145

bb.cu:                                            ; preds = %bb.cs
  %i.ug = sub i16 1, %.046.i137
  br label %mul.exit54.i145

bb.cv:                                            ; preds = %mul.exit.i141
  %i.uh = sub i16 1, %i.tv
  br label %mul.exit54.i145

mul.exit54.i145:                                  ; preds = %bb.cv, %bb.cu, %bb.ct
  %.0.i53.i146 = phi i16 [ %i.uf, %bb.ct ], [ %i.ug, %bb.cu ], [ %i.uh, %bb.cv ] ; 3 uses
  %i.ui = xor i16 %i.tt, %.0.i.i142               ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.050.i133, i64 10
  %i.uk = load i16, ptr %i.tu, align 4, !tbaa !127 ; 3 uses
  %.not.i55.i147 = icmp eq i16 %.0.i.i142, %i.tt
  br i1 %.not.i55.i147, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %mul.exit54.i145
  %.not15.i56.i148 = icmp eq i16 %i.uk, 0
  br i1 %.not15.i56.i148, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ul = zext i16 %i.ui to i32
  %i.um = zext i16 %i.uk to i32
  %i.un = mul nuw nsw i32 %i.um, %i.ul            ; 3 uses
  %i.uo = lshr i32 %i.un, 16                      ; 2 uses
  %i.up = and i32 %i.un, 65535
  %i.uq = sub nsw i32 %i.un, %i.uo
  %i.ur = icmp samesign ult i32 %i.up, %i.uo
  %i.us = zext i1 %i.ur to i32
  %i.ut = add i32 %i.uq, %i.us
  %i.uu = trunc i32 %i.ut to i16
  br label %mul.exit58.i149

bb.cy:                                            ; preds = %bb.cw
  %i.uv = sub i16 1, %i.ui
  br label %mul.exit58.i149

bb.cz:                                            ; preds = %mul.exit54.i145
  %i.uw = sub i16 1, %i.uk
  br label %mul.exit58.i149

mul.exit58.i149:                                  ; preds = %bb.cz, %bb.cy, %bb.cx
  %.0.i57.i150 = phi i16 [ %i.uu, %bb.cx ], [ %i.uv, %bb.cy ], [ %i.uw, %bb.cz ] ; 2 uses
  %i.ux = xor i16 %.0.i53.i146, %i.tq
  %i.uy = add i16 %.0.i57.i150, %i.ux             ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.050.i133, i64 12
  %i.va = load i16, ptr %i.uj, align 2, !tbaa !127 ; 3 uses
  %.not.i59.i151 = icmp eq i16 %i.uy, 0
  br i1 %.not.i59.i151, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %mul.exit58.i149
  %.not15.i60.i152 = icmp eq i16 %i.va, 0
  br i1 %.not15.i60.i152, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vb = zext i16 %i.uy to i32
  %i.vc = zext i16 %i.va to i32
  %i.vd = mul nuw nsw i32 %i.vc, %i.vb            ; 3 uses
  %i.ve = lshr i32 %i.vd, 16                      ; 2 uses
  %i.vf = and i32 %i.vd, 65535
  %i.vg = sub nsw i32 %i.vd, %i.ve
  %i.vh = icmp samesign ult i32 %i.vf, %i.ve
  %i.vi = zext i1 %i.vh to i32
  %i.vj = add i32 %i.vg, %i.vi
  %i.vk = trunc i32 %i.vj to i16
  br label %mul.exit62.i153

bb.dc:                                            ; preds = %bb.da
  %i.vl = sub i16 1, %i.uy
  br label %mul.exit62.i153

bb.dd:                                            ; preds = %mul.exit58.i149
  %i.vm = sub i16 1, %i.va
  br label %mul.exit62.i153

mul.exit62.i153:                                  ; preds = %bb.dd, %bb.dc, %bb.db
  %.0.i61.i154 = phi i16 [ %i.vk, %bb.db ], [ %i.vl, %bb.dc ], [ %i.vm, %bb.dd ] ; 4 uses
  %i.vn = add i16 %.0.i61.i154, %.0.i57.i150      ; 3 uses
  %i.vo = xor i16 %.0.i61.i154, %.0.i.i142        ; 3 uses
  %i.vp = xor i16 %i.vn, %.0.i53.i146             ; 3 uses
  %i.vq = xor i16 %i.vn, %i.tq                    ; 2 uses
  %i.vr = xor i16 %.0.i61.i154, %i.tt             ; 2 uses
  %i.vs = add nsw i32 %.0.i138, -1                ; 2 uses
  %.not.i155 = icmp eq i32 %i.vs, 0
  br i1 %.not.i155, label %bb.de, label %bb.cn, !llvm.loop !213

bb.de:                                            ; preds = %mul.exit62.i153
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.022.us.us.i60 ; 4 uses
  %.not.i63.i157 = icmp eq i16 %.0.i.i142, %.0.i61.i154
  br i1 %.not.i63.i157, label %mul.exit66.i159, label %bb.df

bb.df:                                            ; preds = %bb.de
  br i1 %.not15.i64.i158, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vu = zext i16 %i.vo to i32
  %i.vv = mul nuw nsw i32 %.pre-phi, %i.vu        ; 3 uses
  %i.vw = lshr i32 %i.vv, 16                      ; 2 uses
  %i.vx = and i32 %i.vv, 65535
  %i.vy = sub nsw i32 %i.vv, %i.vw
  %i.vz = icmp samesign ult i32 %i.vx, %i.vw
  %i.wa = zext i1 %i.vz to i32
  %i.wb = add i32 %i.vy, %i.wa
  %i.wc = trunc i32 %i.wb to i16
  br label %mul.exit66.i159

bb.dh:                                            ; preds = %bb.df
  %i.wd = sub i16 1, %i.vo
  br label %mul.exit66.i159

mul.exit66.i159:                                  ; preds = %bb.de, %bb.dh, %bb.dg
  %.0.i65.i160 = phi i16 [ %i.wc, %bb.dg ], [ %i.wd, %bb.dh ], [ %.pre-phi285, %bb.de ]
  %i.we = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  store i16 %.0.i65.i160, ptr %i.vt, align 2, !tbaa !127
  %i.wf = add i16 %i.sh, %i.vq
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  store i16 %i.wf, ptr %i.we, align 2, !tbaa !127
  %i.wh = add i16 %i.sg, %i.vr
  store i16 %i.wh, ptr %i.wg, align 2, !tbaa !127
  %.not.i67.i161 = icmp eq i16 %.0.i53.i146, %i.vn
  br i1 %.not.i67.i161, label %cipher_idea.exit164, label %bb.di

bb.di:                                            ; preds = %mul.exit66.i159
  br i1 %.not15.i68.i162, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wi = zext i16 %i.vp to i32
  %i.wj = mul nuw nsw i32 %.pre-phi287, %i.wi     ; 3 uses
  %i.wk = lshr i32 %i.wj, 16                      ; 2 uses
  %i.wl = and i32 %i.wj, 65535
  %i.wm = sub nsw i32 %i.wj, %i.wk
  %i.wn = icmp samesign ult i32 %i.wl, %i.wk
  %i.wo = zext i1 %i.wn to i32
  %i.wp = add i32 %i.wm, %i.wo
  %i.wq = trunc i32 %i.wp to i16
  br label %cipher_idea.exit164

bb.dk:                                            ; preds = %bb.di
  %i.wr = sub i16 1, %i.vp
  br label %cipher_idea.exit164

cipher_idea.exit164:                              ; preds = %mul.exit66.i159, %bb.dj, %bb.dk
  %.0.i69.i163 = phi i16 [ %i.wq, %bb.dj ], [ %i.wr, %bb.dk ], [ %.pre-phi289, %mul.exit66.i159 ]
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vt, i64 6
  store i16 %.0.i69.i163, ptr %i.ws, align 2, !tbaa !127
  %i.wt = add nuw i64 %.022.us.us.i60, 8          ; 2 uses
  %i.wu = icmp ult i64 %i.wt, %i.so
  br i1 %i.wu, label %bb.cm, label %..preheader_crit_edge.us.us.i61, !llvm.loop !214

..preheader_crit_edge.us.us.i61:                  ; preds = %cipher_idea.exit164, %cipher_idea.exit132
  %.123.us.us.i62 = phi i64 [ %i.aaw, %cipher_idea.exit132 ], [ 0, %cipher_idea.exit164 ] ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.123.us.us.i62 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 2
  %i.wx = load i16, ptr %i.wv, align 2, !tbaa !127
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.wz = load i16, ptr %i.ww, align 2, !tbaa !127
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 6
  %i.xb = load i16, ptr %i.wy, align 2, !tbaa !127
  %i.xc = load i16, ptr %i.xa, align 2, !tbaa !127
  br label %bb.dl

bb.dl:                                            ; preds = %mul.exit62.i121, %..preheader_crit_edge.us.us.i61
  %.050.i101 = phi ptr [ %i.c, %..preheader_crit_edge.us.us.i61 ], [ %i.zc, %mul.exit62.i121 ] ; 7 uses
  %.049.i102 = phi i16 [ %i.wx, %..preheader_crit_edge.us.us.i61 ], [ %i.zr, %mul.exit62.i121 ] ; 3 uses
  %.048.in.i103 = phi i16 [ %i.wz, %..preheader_crit_edge.us.us.i61 ], [ %i.zu, %mul.exit62.i121 ]
  %.047.in.i104 = phi i16 [ %i.xb, %..preheader_crit_edge.us.us.i61 ], [ %i.zt, %mul.exit62.i121 ]
  %.046.i105 = phi i16 [ %i.xc, %..preheader_crit_edge.us.us.i61 ], [ %i.zs, %mul.exit62.i121 ] ; 3 uses
  %.0.i106 = phi i32 [ 8, %..preheader_crit_edge.us.us.i61 ], [ %i.zv, %mul.exit62.i121 ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.050.i101, i64 2
  %i.xe = load i16, ptr %.050.i101, align 4, !tbaa !127 ; 3 uses
  %.not.i.i107 = icmp eq i16 %.049.i102, 0
  br i1 %.not.i.i107, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.not15.i.i108 = icmp eq i16 %i.xe, 0
  br i1 %.not15.i.i108, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xf = zext i16 %.049.i102 to i32
  %i.xg = zext i16 %i.xe to i32
  %i.xh = mul nuw nsw i32 %i.xg, %i.xf            ; 3 uses
  %i.xi = lshr i32 %i.xh, 16                      ; 2 uses
  %i.xj = and i32 %i.xh, 65535
  %i.xk = sub nsw i32 %i.xh, %i.xi
  %i.xl = icmp samesign ult i32 %i.xj, %i.xi
  %i.xm = zext i1 %i.xl to i32
  %i.xn = add i32 %i.xk, %i.xm
  %i.xo = trunc i32 %i.xn to i16
  br label %mul.exit.i109

bb.do:                                            ; preds = %bb.dm
  %i.xp = sub i16 1, %.049.i102
  br label %mul.exit.i109

bb.dp:                                            ; preds = %bb.dl
  %i.xq = sub i16 1, %i.xe
  br label %mul.exit.i109

mul.exit.i109:                                    ; preds = %bb.dp, %bb.do, %bb.dn
  %.0.i.i110 = phi i16 [ %i.xo, %bb.dn ], [ %i.xp, %bb.do ], [ %i.xq, %bb.dp ] ; 4 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.050.i101, i64 4
  %i.xs = load i16, ptr %i.xd, align 2, !tbaa !127
  %i.xt = add i16 %i.xs, %.048.in.i103            ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.050.i101, i64 6
  %i.xv = load i16, ptr %i.xr, align 4, !tbaa !127
  %i.xw = add i16 %i.xv, %.047.in.i104            ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.050.i101, i64 8
  %i.xy = load i16, ptr %i.xu, align 2, !tbaa !127 ; 3 uses
  %.not.i51.i111 = icmp eq i16 %.046.i105, 0
  br i1 %.not.i51.i111, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %mul.exit.i109
  %.not15.i52.i112 = icmp eq i16 %i.xy, 0
  br i1 %.not15.i52.i112, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xz = zext i16 %.046.i105 to i32
  %i.ya = zext i16 %i.xy to i32
  %i.yb = mul nuw nsw i32 %i.ya, %i.xz            ; 3 uses
  %i.yc = lshr i32 %i.yb, 16                      ; 2 uses
  %i.yd = and i32 %i.yb, 65535
  %i.ye = sub nsw i32 %i.yb, %i.yc
  %i.yf = icmp samesign ult i32 %i.yd, %i.yc
  %i.yg = zext i1 %i.yf to i32
  %i.yh = add i32 %i.ye, %i.yg
  %i.yi = trunc i32 %i.yh to i16
  br label %mul.exit54.i113

bb.ds:                                            ; preds = %bb.dq
  %i.yj = sub i16 1, %.046.i105
  br label %mul.exit54.i113

bb.dt:                                            ; preds = %mul.exit.i109
  %i.yk = sub i16 1, %i.xy
  br label %mul.exit54.i113

mul.exit54.i113:                                  ; preds = %bb.dt, %bb.ds, %bb.dr
  %.0.i53.i114 = phi i16 [ %i.yi, %bb.dr ], [ %i.yj, %bb.ds ], [ %i.yk, %bb.dt ] ; 3 uses
  %i.yl = xor i16 %i.xw, %.0.i.i110               ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.050.i101, i64 10
  %i.yn = load i16, ptr %i.xx, align 4, !tbaa !127 ; 3 uses
  %.not.i55.i115 = icmp eq i16 %.0.i.i110, %i.xw
  br i1 %.not.i55.i115, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %mul.exit54.i113
  %.not15.i56.i116 = icmp eq i16 %i.yn, 0
  br i1 %.not15.i56.i116, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.yo = zext i16 %i.yl to i32
  %i.yp = zext i16 %i.yn to i32
  %i.yq = mul nuw nsw i32 %i.yp, %i.yo            ; 3 uses
  %i.yr = lshr i32 %i.yq, 16                      ; 2 uses
  %i.ys = and i32 %i.yq, 65535
  %i.yt = sub nsw i32 %i.yq, %i.yr
  %i.yu = icmp samesign ult i32 %i.ys, %i.yr
  %i.yv = zext i1 %i.yu to i32
  %i.yw = add i32 %i.yt, %i.yv
  %i.yx = trunc i32 %i.yw to i16
  br label %mul.exit58.i117

bb.dw:                                            ; preds = %bb.du
  %i.yy = sub i16 1, %i.yl
  br label %mul.exit58.i117

bb.dx:                                            ; preds = %mul.exit54.i113
  %i.yz = sub i16 1, %i.yn
  br label %mul.exit58.i117

mul.exit58.i117:                                  ; preds = %bb.dx, %bb.dw, %bb.dv
  %.0.i57.i118 = phi i16 [ %i.yx, %bb.dv ], [ %i.yy, %bb.dw ], [ %i.yz, %bb.dx ] ; 2 uses
  %i.za = xor i16 %.0.i53.i114, %i.xt
  %i.zb = add i16 %.0.i57.i118, %i.za             ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.050.i101, i64 12
  %i.zd = load i16, ptr %i.ym, align 2, !tbaa !127 ; 3 uses
  %.not.i59.i119 = icmp eq i16 %i.zb, 0
  br i1 %.not.i59.i119, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %mul.exit58.i117
  %.not15.i60.i120 = icmp eq i16 %i.zd, 0
  br i1 %.not15.i60.i120, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ze = zext i16 %i.zb to i32
  %i.zf = zext i16 %i.zd to i32
  %i.zg = mul nuw nsw i32 %i.zf, %i.ze            ; 3 uses
  %i.zh = lshr i32 %i.zg, 16                      ; 2 uses
  %i.zi = and i32 %i.zg, 65535
  %i.zj = sub nsw i32 %i.zg, %i.zh
  %i.zk = icmp samesign ult i32 %i.zi, %i.zh
  %i.zl = zext i1 %i.zk to i32
  %i.zm = add i32 %i.zj, %i.zl
  %i.zn = trunc i32 %i.zm to i16
  br label %mul.exit62.i121

bb.ea:                                            ; preds = %bb.dy
  %i.zo = sub i16 1, %i.zb
  br label %mul.exit62.i121

bb.eb:                                            ; preds = %mul.exit58.i117
  %i.zp = sub i16 1, %i.zd
  br label %mul.exit62.i121

mul.exit62.i121:                                  ; preds = %bb.eb, %bb.ea, %bb.dz
  %.0.i61.i122 = phi i16 [ %i.zn, %bb.dz ], [ %i.zo, %bb.ea ], [ %i.zp, %bb.eb ] ; 4 uses
  %i.zq = add i16 %.0.i61.i122, %.0.i57.i118      ; 3 uses
  %i.zr = xor i16 %.0.i61.i122, %.0.i.i110        ; 3 uses
  %i.zs = xor i16 %i.zq, %.0.i53.i114             ; 3 uses
  %i.zt = xor i16 %i.zq, %i.xt                    ; 2 uses
  %i.zu = xor i16 %.0.i61.i122, %i.xw             ; 2 uses
  %i.zv = add nsw i32 %.0.i106, -1                ; 2 uses
  %.not.i123 = icmp eq i32 %i.zv, 0
  br i1 %.not.i123, label %bb.ec, label %bb.dl, !llvm.loop !213

bb.ec:                                            ; preds = %mul.exit62.i121
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.123.us.us.i62 ; 4 uses
  %.not.i63.i125 = icmp eq i16 %.0.i.i110, %.0.i61.i122
  br i1 %.not.i63.i125, label %mul.exit66.i127, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  br i1 %.not15.i64.i126, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.zx = zext i16 %i.zr to i32
  %i.zy = mul nuw nsw i32 %.pre-phi291, %i.zx     ; 3 uses
  %i.zz = lshr i32 %i.zy, 16                      ; 2 uses
  %i.aaa = and i32 %i.zy, 65535
  %i.aab = sub nsw i32 %i.zy, %i.zz
  %i.aac = icmp samesign ult i32 %i.aaa, %i.zz
  %i.aad = zext i1 %i.aac to i32
  %i.aae = add i32 %i.aab, %i.aad
  %i.aaf = trunc i32 %i.aae to i16
  br label %mul.exit66.i127

bb.ef:                                            ; preds = %bb.ed
  %i.aag = sub i16 1, %i.zr
  br label %mul.exit66.i127

mul.exit66.i127:                                  ; preds = %bb.ec, %bb.ef, %bb.ee
  %.0.i65.i128 = phi i16 [ %i.aaf, %bb.ee ], [ %i.aag, %bb.ef ], [ %.pre-phi293, %bb.ec ]
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zw, i64 2
  store i16 %.0.i65.i128, ptr %i.zw, align 2, !tbaa !127
  %i.aai = add i16 %i.zt, %i.sl
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  store i16 %i.aai, ptr %i.aah, align 2, !tbaa !127
  %i.aak = add i16 %i.zu, %i.sm
  store i16 %i.aak, ptr %i.aaj, align 2, !tbaa !127
  %.not.i67.i129 = icmp eq i16 %.0.i53.i114, %i.zq
  br i1 %.not.i67.i129, label %cipher_idea.exit132, label %bb.eg

bb.eg:                                            ; preds = %mul.exit66.i127
  br i1 %.not15.i68.i130, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aal = zext i16 %i.zs to i32
  %i.aam = mul nuw nsw i32 %.pre-phi295, %i.aal   ; 3 uses
  %i.aan = lshr i32 %i.aam, 16                    ; 2 uses
  %i.aao = and i32 %i.aam, 65535
  %i.aap = sub nsw i32 %i.aam, %i.aan
  %i.aaq = icmp samesign ult i32 %i.aao, %i.aan
  %i.aar = zext i1 %i.aaq to i32
  %i.aas = add i32 %i.aap, %i.aar
  %i.aat = trunc i32 %i.aas to i16
  br label %cipher_idea.exit132

bb.ei:                                            ; preds = %bb.eg
  %i.aau = sub i16 1, %i.zs
  br label %cipher_idea.exit132

cipher_idea.exit132:                              ; preds = %mul.exit66.i127, %bb.eh, %bb.ei
  %.0.i69.i131 = phi i16 [ %i.aat, %bb.eh ], [ %i.aau, %bb.ei ], [ %.pre-phi297, %mul.exit66.i127 ]
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zw, i64 6
  store i16 %.0.i69.i131, ptr %i.aav, align 2, !tbaa !127
  %i.aaw = add nuw i64 %.123.us.us.i62, 8         ; 2 uses
  %i.aax = icmp ult i64 %i.aaw, %i.so
  br i1 %i.aax, label %..preheader_crit_edge.us.us.i61, label %._crit_edge.us.us.i63, !llvm.loop !215

._crit_edge.us.us.i63:                            ; preds = %cipher_idea.exit132
  %i.aay = add nuw i64 %.01925.us.us.i59, 1       ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.aay, %i.sn
  br i1 %exitcond.not.i64, label %DoIDEAIteration.exit65, label %.preheader21.us.us.i58, !llvm.loop !216

DoIDEAIteration.exit65:                           ; preds = %._crit_edge.us.us.i63, %bb.cl
  %i.aaz = call i64 @StopStopwatch(i64 noundef %i.sp) #11
  %i.aba = add i64 %i.aaz, %.045                  ; 2 uses
  %i.abb = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !120 ; 2 uses
  %i.abc = uitofp i64 %i.abb to double
  %i.abd = fadd double %.0, %i.abc                ; 3 uses
  %i.abe = fcmp olt double %i.abd, 1.875000e+03
  br i1 %i.abe, label %bb.cl, label %bb.ej, !llvm.loop !218

bb.ej:                                            ; preds = %DoIDEAIteration.exit65
  call void @FreeMemory(ptr noundef %i.id, ptr noundef nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.ig, ptr noundef nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.ij, ptr noundef nonnull %i.d) #11
  %i.abf = call double @TicksToFracSecs(i64 noundef %i.aba) #11
  %i.abg = fdiv double %i.abd, %i.abf
  store double %i.abg, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 32), align 8, !tbaa !121
  %i.abh = load i32, ptr @global_ideastruct, align 8, !tbaa !119
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  store i32 1, ptr @global_ideastruct, align 8, !tbaa !119
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

declare i32 @randnum(i32 noundef) local_unnamed_addr #2

declare i32 @abs_randwc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DoHuffman() local_unnamed_addr #0 !guid !224 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !118
  %i.d = call ptr @AllocateMemory(i64 noundef %i.c, ptr noundef nonnull %i.b) #11 ; 8 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ReportError(ptr noundef nonnull @.str.59, i32 noundef %i.e) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !118
  %i.g = call ptr @AllocateMemory(i64 noundef %i.f, ptr noundef nonnull %i.b) #11 ; 5 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %bb.e, label %bb.d

end_hunk_0
