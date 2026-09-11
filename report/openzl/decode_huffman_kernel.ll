Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_huffman_kernel?download=true
inline.NumInlined: 96
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ZS_largeHuffmanDecodeUsingDTableX4:bb.a
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ae = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanDecodeUsingDTableX4.__zl_static_error_info.6, ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 218, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14 ; 2 uses
  %i.af = extractvalue { i32, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.ae, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.af, ptr %i.ag, ptr noundef nonnull @.str.5) #14
  %i.ah = ptrtoint ptr %i.ag to i64
  br label %.thread219

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %9, i64 %indvars.iv ; 17 uses
  %i.aj = icmp eq i32 %.val.i121, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 40, i1 false)
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.t, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = icmp ugt i32 %.val.i121, 7
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !35
  %.val.i124 = load i64, ptr %i.ap, align 1, !tbaa !37
  store i64 %.val.i124, ptr %i.ai, align 8, !tbaa !38
  %i.ar = getelementptr i8, ptr %i.ao, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13  ; 2 uses
  %.not51.i = icmp eq i8 %i.as, 0
  br i1 %.not51.i, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  %i.at = zext i8 %i.as to i32
  %i.au = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = sub nuw nsw i32 8, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !39
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !39
  br label %bb.v

bb.l:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.t, ptr %i.az, align 8, !tbaa !35
  %i.ba = load i8, ptr %i.t, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i64                    ; 7 uses
  store i64 %i.bb, ptr %i.ai, align 8, !tbaa !38
  switch i32 %.val.i121, label %bb.s [
    i32 7, label %bb.m
    i32 6, label %bb.n
    i32 5, label %bb.o
    i32 4, label %bb.p
    i32 3, label %bb.q
    i32 2, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 48
  %i.bg = or disjoint i64 %i.bf, %i.bb            ; 2 uses
  store i64 %i.bg, ptr %i.ai, align 8, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = phi i64 [ %i.bg, %bb.m ], [ %i.bb, %bb.l ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 40
  %i.bm = add nuw nsw i64 %i.bl, %i.bh            ; 2 uses
  store i64 %i.bm, ptr %i.ai, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bn = phi i64 [ %i.bm, %bb.n ], [ %i.bb, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 32
  %i.bs = add nuw nsw i64 %i.br, %i.bn            ; 2 uses
  store i64 %i.bs, ptr %i.ai, align 8, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bt = phi i64 [ %i.bs, %bb.o ], [ %i.bb, %bb.l ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 24
  %i.by = add nuw nsw i64 %i.bx, %i.bt            ; 2 uses
  store i64 %i.by, ptr %i.ai, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bz = phi i64 [ %i.by, %bb.p ], [ %i.bb, %bb.l ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 16
  %i.ce = add nuw nsw i64 %i.cd, %i.bz            ; 2 uses
  store i64 %i.ce, ptr %i.ai, align 8, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.cf = phi i64 [ %i.ce, %bb.q ], [ %i.bb, %bb.l ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 8
  %i.ck = add nuw nsw i64 %i.cj, %i.cf
  store i64 %i.ck, ptr %i.ai, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.cl = getelementptr i8, ptr %i.t, i64 %i.w
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13  ; 2 uses
  %.not.i122 = icmp eq i8 %i.cn, 0
  br i1 %.not.i122, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 0, ptr %i.co, align 8, !tbaa !39
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cp = zext i8 %i.cn to i32
  %i.cq = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cp, i1 true)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cs = shl nuw nsw i32 %.val.i121, 3
  %reass.sub = sub nsw i32 %i.cq, %i.cs
  %i.ct = add nsw i32 %reass.sub, 41
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !39
  br label %bb.w

bb.v:                                             ; preds = %bb.h, %bb.t, %bb.k
  %i.cu = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanDecodeUsingDTableX4.__zl_static_error_info.7, ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 222, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14 ; 2 uses
  %i.cv = extractvalue { i32, ptr } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { i32, ptr } %i.cu, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cv, ptr %i.cw, ptr noundef nonnull @.str.5) #14
  %i.cx = ptrtoint ptr %i.cw to i64
  br label %.thread219

bb.w:                                             ; preds = %bb.u, %.thread.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  store ptr %i.cy, ptr %2, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.0285, i64 %i.y ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %bb.x, label %bb.b, !llvm.loop !53

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.cz, ptr %i.da, align 16, !tbaa !57
  %i.db = icmp slt i32 %4, 15
  br i1 %i.db, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  store ptr %i.f, ptr %5, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !57
  %i.df = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.not.i66 = icmp ult i64 %i.dh, 8
  br i1 %.not.i66, label %.loopexit262, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57 ; 2 uses
  %.not355 = icmp ult ptr %i.dk, %i.di
  br i1 %.not355, label %.preheader260.lr.ph, label %.loopexit262

.preheader260.lr.ph:                              ; preds = %bb.z
  %i.dl = sub i32 0, %4
  %i.dm = and i32 %i.dl, 63
  %i.dn = zext nneg i32 %i.dm to i64              ; 16 uses
  %.val106.pre = load i64, ptr %9, align 16, !tbaa !38
  %.phi.trans.insert429 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.promoted330.pre = load i32, ptr %.phi.trans.insert429, align 8, !tbaa !39
  %.promoted332.pre = load ptr, ptr %i.a, align 16, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dr = load ptr, ptr %i.dq, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8            ; 3 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ec = load ptr, ptr %i.eb, align 16           ; 3 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ej = load ptr, ptr %i.ei, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.el = load ptr, ptr %i.ek, align 8            ; 3 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = load ptr, ptr %i.do, align 16           ; 3 uses
  %i.et = ptrtoint ptr %i.es to i64
  %.promoted623 = load i32, ptr %i.dw, align 16, !tbaa !39
  %.promoted613 = load ptr, ptr %i.dx, align 8, !tbaa !57
  %.promoted628 = load i32, ptr %i.ef, align 8, !tbaa !39
  %.promoted616 = load ptr, ptr %i.eg, align 16, !tbaa !57
  %.promoted633 = load i32, ptr %i.eo, align 16, !tbaa !39
  br label %.preheader260

.preheader260:                                    ; preds = %.preheader260.lr.ph, %BIT_reloadDStream.exit.thread.3
  %10 = phi i32 [ %.promoted633, %.preheader260.lr.ph ], [ %15, %BIT_reloadDStream.exit.thread.3 ] ; 2 uses
  %.promoted332.2617 = phi ptr [ %.promoted616, %.preheader260.lr.ph ], [ %i.ln, %BIT_reloadDStream.exit.thread.3 ] ; 5 uses
  %11 = phi i32 [ %.promoted628, %.preheader260.lr.ph ], [ %14, %BIT_reloadDStream.exit.thread.3 ] ; 2 uses
  %.promoted332.1614 = phi ptr [ %.promoted613, %.preheader260.lr.ph ], [ %i.iz, %BIT_reloadDStream.exit.thread.3 ] ; 5 uses
  %12 = phi i32 [ %.promoted623, %.preheader260.lr.ph ], [ %13, %BIT_reloadDStream.exit.thread.3 ] ; 2 uses
  %.promoted332.3 = phi ptr [ %i.dk, %.preheader260.lr.ph ], [ %i.ob, %BIT_reloadDStream.exit.thread.3 ] ; 5 uses
  %.promoted332 = phi ptr [ %.promoted332.pre, %.preheader260.lr.ph ], [ %i.gl, %BIT_reloadDStream.exit.thread.3 ] ; 5 uses
  %.promoted330 = phi i32 [ %.promoted330.pre, %.preheader260.lr.ph ], [ %.promoted330430, %BIT_reloadDStream.exit.thread.3 ] ; 2 uses
  %.val106 = phi i64 [ %.val106.pre, %.preheader260.lr.ph ], [ %.val106427, %BIT_reloadDStream.exit.thread.3 ] ; 6 uses
  %.042.i67337 = phi i32 [ 1, %.preheader260.lr.ph ], [ %i.ox, %BIT_reloadDStream.exit.thread.3 ] ; 2 uses
  %i.eu = and i32 %.promoted330, 63
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl i64 %.val106, %i.ev
  %i.ex = lshr i64 %i.ew, %i.dn
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !41
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !42
  %i.fc = zext i16 %i.fb to i32
  %i.fd = add i32 %.promoted330, %i.fc            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.promoted332, i64 2
  store i16 %i.ez, ptr %.promoted332, align 2, !tbaa !18
  %i.ff = and i32 %i.fd, 63
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl i64 %.val106, %i.fg
  %i.fi = lshr i64 %i.fh, %i.dn
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fi ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !41
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !42
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add i32 %i.fd, %i.fn                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.promoted332, i64 4
  store i16 %i.fk, ptr %i.fe, align 2, !tbaa !18
  %i.fq = and i32 %i.fo, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl i64 %.val106, %i.fr
  %i.ft = lshr i64 %i.fs, %i.dn
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ft ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !42
  %i.fy = zext i16 %i.fx to i32
  %i.fz = add i32 %i.fo, %i.fy                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.promoted332, i64 6
  store i16 %i.fv, ptr %i.fp, align 2, !tbaa !18
  %i.gb = and i32 %i.fz, 63
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl i64 %.val106, %i.gc
  %i.ge = lshr i64 %i.gd, %i.dn
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !41
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !42
  %i.gj = zext i16 %i.gi to i32
  %i.gk = add i32 %i.fz, %i.gj                    ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.promoted332, i64 8 ; 2 uses
  store i16 %i.gg, ptr %i.ga, align 2, !tbaa !18
  %i.gm = icmp ugt i32 %i.gk, 64
  br i1 %i.gm, label %BIT_reloadDStream.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.preheader260
  %i.gn = load ptr, ptr %i.dp, align 16, !tbaa !35 ; 6 uses
  %.not.i125 = icmp ult ptr %i.gn, %i.dr
  br i1 %.not.i125, label %bb.ab, label %BIT_reloadDStream.exit.thread224, !prof !43

BIT_reloadDStream.exit.thread224:                 ; preds = %bb.aa
  %i.go = lshr i32 %i.gk, 3
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.gn, i64 %i.gq ; 2 uses
  store ptr %i.gr, ptr %i.dp, align 16, !tbaa !35
  %i.gs = and i32 %i.gk, 7
  %.val.i.i126 = load i64, ptr %i.gr, align 1, !tbaa !37 ; 2 uses
  store i64 %.val.i.i126, ptr %9, align 16, !tbaa !38
  br label %BIT_reloadDStream.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.gt = icmp eq ptr %i.gn, %i.dt
  br i1 %i.gt, label %BIT_reloadDStream.exit.thread, label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.ab
  %i.gu = lshr i32 %i.gk, 3                       ; 2 uses
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gn, i64 %i.gw
  %i.gy = icmp uge ptr %i.gx, %i.dt
  %cond.fr = freeze i1 %i.gy                      ; 2 uses
  %i.gz = ptrtoint ptr %i.gn to i64
  %i.ha = sub i64 %i.gz, %i.du
  %i.hb = trunc i64 %i.ha to i32
  %.020.i = select i1 %cond.fr, i32 %i.gu, i32 %i.hb ; 2 uses
  %i.hc = zext i32 %.020.i to i64
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.gn, i64 %i.hd ; 2 uses
  store ptr %i.he, ptr %i.dp, align 16, !tbaa !35
  %i.hf = shl i32 %.020.i, 3
  %i.hg = sub i32 %i.gk, %i.hf
  %.val.i128 = load i64, ptr %i.he, align 1, !tbaa !37 ; 2 uses
  store i64 %.val.i128, ptr %9, align 16, !tbaa !38
  %spec.select = select i1 %cond.fr, i32 %.042.i67337, i32 0
  br label %BIT_reloadDStream.exit.thread

BIT_reloadDStream.exit.thread:                    ; preds = %BIT_reloadDStream.exit, %bb.ab, %.preheader260, %BIT_reloadDStream.exit.thread224
  %.promoted330430 = phi i32 [ %i.gk, %bb.ab ], [ %i.hg, %BIT_reloadDStream.exit ], [ %i.gs, %BIT_reloadDStream.exit.thread224 ], [ %i.gk, %.preheader260 ] ; 2 uses
  %.val106427 = phi i64 [ %.val106, %bb.ab ], [ %.val.i128, %BIT_reloadDStream.exit ], [ %.val.i.i126, %BIT_reloadDStream.exit.thread224 ], [ %.val106, %.preheader260 ]
  %i.hh = phi i32 [ 0, %bb.ab ], [ %spec.select, %BIT_reloadDStream.exit ], [ %.042.i67337, %BIT_reloadDStream.exit.thread224 ], [ 0, %.preheader260 ] ; 2 uses
  %.val106.1 = load i64, ptr %i.dv, align 8, !tbaa !38 ; 4 uses
  %i.hi = and i32 %12, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl i64 %.val106.1, %i.hj
  %i.hl = lshr i64 %i.hk, %i.dn
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hl ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !42
  %i.hq = zext i16 %i.hp to i32
  %i.hr = add i32 %12, %i.hq                      ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.promoted332.1614, i64 2
  store i16 %i.hn, ptr %.promoted332.1614, align 2, !tbaa !18
  %i.ht = and i32 %i.hr, 63
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = shl i64 %.val106.1, %i.hu
  %i.hw = lshr i64 %i.hv, %i.dn
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hw ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !41
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !42
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add i32 %i.hr, %i.ib                    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.promoted332.1614, i64 4
  store i16 %i.hy, ptr %i.hs, align 2, !tbaa !18
  %i.ie = and i32 %i.ic, 63
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl i64 %.val106.1, %i.if
  %i.ih = lshr i64 %i.ig, %i.dn
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ih ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !41
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !42
  %i.im = zext i16 %i.il to i32
  %i.in = add i32 %i.ic, %i.im                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.promoted332.1614, i64 6
  store i16 %i.ij, ptr %i.id, align 2, !tbaa !18
  %i.ip = and i32 %i.in, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl i64 %.val106.1, %i.iq
  %i.is = lshr i64 %i.ir, %i.dn
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.is ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !41
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !42
  %i.ix = zext i16 %i.iw to i32
  %i.iy = add i32 %i.in, %i.ix                    ; 7 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.promoted332.1614, i64 8 ; 2 uses
  store i16 %i.iu, ptr %i.io, align 2, !tbaa !18
  %i.ja = icmp ugt i32 %i.iy, 64
  br i1 %i.ja, label %BIT_reloadDStream.exit.thread.1, label %bb.ac

bb.ac:                                            ; preds = %BIT_reloadDStream.exit.thread
  %i.jb = load ptr, ptr %i.dy, align 8, !tbaa !35 ; 6 uses
  %.not.i125.1 = icmp ult ptr %i.jb, %i.ea
  br i1 %.not.i125.1, label %bb.ad, label %BIT_reloadDStream.exit.thread224.1, !prof !43

BIT_reloadDStream.exit.thread224.1:               ; preds = %bb.ac
  %i.jc = lshr i32 %i.iy, 3
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = sub nsw i64 0, %i.jd
  %i.jf = getelementptr inbounds i8, ptr %i.jb, i64 %i.je ; 2 uses
  store ptr %i.jf, ptr %i.dy, align 8, !tbaa !35
  %i.jg = and i32 %i.iy, 7
  %.val.i.i126.1 = load i64, ptr %i.jf, align 1, !tbaa !37
  store i64 %.val.i.i126.1, ptr %i.dv, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit.thread.1

bb.ad:                                            ; preds = %bb.ac
  %i.jh = icmp eq ptr %i.jb, %i.ec
  br i1 %i.jh, label %BIT_reloadDStream.exit.thread.1, label %BIT_reloadDStream.exit.1

BIT_reloadDStream.exit.1:                         ; preds = %bb.ad
  %i.ji = lshr i32 %i.iy, 3                       ; 2 uses
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jb, i64 %i.jk
  %i.jm = icmp uge ptr %i.jl, %i.ec
  %cond.fr.1 = freeze i1 %i.jm                    ; 2 uses
  %i.jn = ptrtoint ptr %i.jb to i64
  %i.jo = sub i64 %i.jn, %i.ed
  %i.jp = trunc i64 %i.jo to i32
  %.020.i.1 = select i1 %cond.fr.1, i32 %i.ji, i32 %i.jp ; 2 uses
  %i.jq = zext i32 %.020.i.1 to i64
  %i.jr = sub nsw i64 0, %i.jq
  %i.js = getelementptr inbounds i8, ptr %i.jb, i64 %i.jr ; 2 uses
  store ptr %i.js, ptr %i.dy, align 8, !tbaa !35
  %i.jt = shl i32 %.020.i.1, 3
  %i.ju = sub i32 %i.iy, %i.jt
  %.val.i128.1 = load i64, ptr %i.js, align 1, !tbaa !37
  store i64 %.val.i128.1, ptr %i.dv, align 8, !tbaa !38
  %spec.select.1 = select i1 %cond.fr.1, i32 %i.hh, i32 0
  br label %BIT_reloadDStream.exit.thread.1

BIT_reloadDStream.exit.thread.1:                  ; preds = %BIT_reloadDStream.exit.1, %bb.ad, %BIT_reloadDStream.exit.thread224.1, %BIT_reloadDStream.exit.thread
  %13 = phi i32 [ %i.iy, %bb.ad ], [ %i.ju, %BIT_reloadDStream.exit.1 ], [ %i.jg, %BIT_reloadDStream.exit.thread224.1 ], [ %i.iy, %BIT_reloadDStream.exit.thread ] ; 2 uses
  %i.jv = phi i32 [ 0, %bb.ad ], [ %spec.select.1, %BIT_reloadDStream.exit.1 ], [ %i.hh, %BIT_reloadDStream.exit.thread224.1 ], [ 0, %BIT_reloadDStream.exit.thread ] ; 2 uses
  %.val106.2 = load i64, ptr %i.ee, align 16, !tbaa !38 ; 4 uses
  %i.jw = and i32 %11, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl i64 %.val106.2, %i.jx
  %i.jz = lshr i64 %i.jy, %i.dn
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jz ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !42
  %i.ke = zext i16 %i.kd to i32
  %i.kf = add i32 %11, %i.ke                      ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.promoted332.2617, i64 2
  store i16 %i.kb, ptr %.promoted332.2617, align 2, !tbaa !18
  %i.kh = and i32 %i.kf, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl i64 %.val106.2, %i.ki
  %i.kk = lshr i64 %i.kj, %i.dn
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kk ; 2 uses
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !42
  %i.kp = zext i16 %i.ko to i32
  %i.kq = add i32 %i.kf, %i.kp                    ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.promoted332.2617, i64 4
  store i16 %i.km, ptr %i.kg, align 2, !tbaa !18
  %i.ks = and i32 %i.kq, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = shl i64 %.val106.2, %i.kt
  %i.kv = lshr i64 %i.ku, %i.dn
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kv ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !41
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !42
  %i.la = zext i16 %i.kz to i32
  %i.lb = add i32 %i.kq, %i.la                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.promoted332.2617, i64 6
  store i16 %i.kx, ptr %i.kr, align 2, !tbaa !18
  %i.ld = and i32 %i.lb, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl i64 %.val106.2, %i.le
  %i.lg = lshr i64 %i.lf, %i.dn
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lg ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !41
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !42
  %i.ll = zext i16 %i.lk to i32
  %i.lm = add i32 %i.lb, %i.ll                    ; 7 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.promoted332.2617, i64 8 ; 2 uses
  store i16 %i.li, ptr %i.lc, align 2, !tbaa !18
  %i.lo = icmp ugt i32 %i.lm, 64
  br i1 %i.lo, label %BIT_reloadDStream.exit.thread.2, label %bb.ae

bb.ae:                                            ; preds = %BIT_reloadDStream.exit.thread.1
  %i.lp = load ptr, ptr %i.eh, align 16, !tbaa !35 ; 6 uses
  %.not.i125.2 = icmp ult ptr %i.lp, %i.ej
  br i1 %.not.i125.2, label %bb.af, label %BIT_reloadDStream.exit.thread224.2, !prof !43

BIT_reloadDStream.exit.thread224.2:               ; preds = %bb.ae
  %i.lq = lshr i32 %i.lm, 3
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.lp, i64 %i.ls ; 2 uses
  store ptr %i.lt, ptr %i.eh, align 16, !tbaa !35
  %i.lu = and i32 %i.lm, 7
  %.val.i.i126.2 = load i64, ptr %i.lt, align 1, !tbaa !37
  store i64 %.val.i.i126.2, ptr %i.ee, align 16, !tbaa !38
  br label %BIT_reloadDStream.exit.thread.2

bb.af:                                            ; preds = %bb.ae
  %i.lv = icmp eq ptr %i.lp, %i.el
  br i1 %i.lv, label %BIT_reloadDStream.exit.thread.2, label %BIT_reloadDStream.exit.2

BIT_reloadDStream.exit.2:                         ; preds = %bb.af
  %i.lw = lshr i32 %i.lm, 3                       ; 2 uses
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = sub nsw i64 0, %i.lx
  %i.lz = getelementptr inbounds i8, ptr %i.lp, i64 %i.ly
  %i.ma = icmp uge ptr %i.lz, %i.el
  %cond.fr.2 = freeze i1 %i.ma                    ; 2 uses
  %i.mb = ptrtoint ptr %i.lp to i64
  %i.mc = sub i64 %i.mb, %i.em
  %i.md = trunc i64 %i.mc to i32
  %.020.i.2 = select i1 %cond.fr.2, i32 %i.lw, i32 %i.md ; 2 uses
  %i.me = zext i32 %.020.i.2 to i64
  %i.mf = sub nsw i64 0, %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.lp, i64 %i.mf ; 2 uses
  store ptr %i.mg, ptr %i.eh, align 16, !tbaa !35
  %i.mh = shl i32 %.020.i.2, 3
  %i.mi = sub i32 %i.lm, %i.mh
  %.val.i128.2 = load i64, ptr %i.mg, align 1, !tbaa !37
  store i64 %.val.i128.2, ptr %i.ee, align 16, !tbaa !38
  %spec.select.2 = select i1 %cond.fr.2, i32 %i.jv, i32 0
  br label %BIT_reloadDStream.exit.thread.2

BIT_reloadDStream.exit.thread.2:                  ; preds = %BIT_reloadDStream.exit.2, %bb.af, %BIT_reloadDStream.exit.thread224.2, %BIT_reloadDStream.exit.thread.1
  %14 = phi i32 [ %i.lm, %bb.af ], [ %i.mi, %BIT_reloadDStream.exit.2 ], [ %i.lu, %BIT_reloadDStream.exit.thread224.2 ], [ %i.lm, %BIT_reloadDStream.exit.thread.1 ] ; 2 uses
  %i.mj = phi i32 [ 0, %bb.af ], [ %spec.select.2, %BIT_reloadDStream.exit.2 ], [ %i.jv, %BIT_reloadDStream.exit.thread224.2 ], [ 0, %BIT_reloadDStream.exit.thread.1 ] ; 2 uses
  %.val106.3 = load i64, ptr %i.en, align 8, !tbaa !38 ; 4 uses
  %i.mk = and i32 %10, 63
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl i64 %.val106.3, %i.ml
  %i.mn = lshr i64 %i.mm, %i.dn
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mn ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !41
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !42
  %i.ms = zext i16 %i.mr to i32
  %i.mt = add i32 %10, %i.ms                      ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.promoted332.3, i64 2
  store i16 %i.mp, ptr %.promoted332.3, align 2, !tbaa !18
  %i.mv = and i32 %i.mt, 63
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl i64 %.val106.3, %i.mw
  %i.my = lshr i64 %i.mx, %i.dn
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.my ; 2 uses
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !41
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !42
  %i.nd = zext i16 %i.nc to i32
  %i.ne = add i32 %i.mt, %i.nd                    ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.promoted332.3, i64 4
  store i16 %i.na, ptr %i.mu, align 2, !tbaa !18
  %i.ng = and i32 %i.ne, 63
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl i64 %.val106.3, %i.nh
  %i.nj = lshr i64 %i.ni, %i.dn
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nj ; 2 uses
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !41
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 2
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !42
  %i.no = zext i16 %i.nn to i32
  %i.np = add i32 %i.ne, %i.no                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.promoted332.3, i64 6
  store i16 %i.nl, ptr %i.nf, align 2, !tbaa !18
  %i.nr = and i32 %i.np, 63
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = shl i64 %.val106.3, %i.ns
  %i.nu = lshr i64 %i.nt, %i.dn
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nu ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !42
  %i.nz = zext i16 %i.ny to i32
  %i.oa = add i32 %i.np, %i.nz                    ; 7 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.promoted332.3, i64 8 ; 3 uses
  store i16 %i.nw, ptr %i.nq, align 2, !tbaa !18
  %i.oc = icmp ugt i32 %i.oa, 64
  br i1 %i.oc, label %.loopexit262.loopexit, label %bb.ag

bb.ag:                                            ; preds = %BIT_reloadDStream.exit.thread.2
  %i.od = load ptr, ptr %i.ep, align 8, !tbaa !35 ; 6 uses
  %.not.i125.3 = icmp ult ptr %i.od, %i.er
  br i1 %.not.i125.3, label %bb.ah, label %BIT_reloadDStream.exit.thread224.3, !prof !43

BIT_reloadDStream.exit.thread224.3:               ; preds = %bb.ag
  %i.oe = lshr i32 %i.oa, 3
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = sub nsw i64 0, %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.od, i64 %i.og ; 2 uses
  store ptr %i.oh, ptr %i.ep, align 8, !tbaa !35
  %i.oi = and i32 %i.oa, 7
  %.val.i.i126.3 = load i64, ptr %i.oh, align 1, !tbaa !37
  store i64 %.val.i.i126.3, ptr %i.en, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit.thread.3

bb.ah:                                            ; preds = %bb.ag
  %i.oj = icmp eq ptr %i.od, %i.es
  br i1 %i.oj, label %.loopexit262.loopexit, label %BIT_reloadDStream.exit.3

BIT_reloadDStream.exit.3:                         ; preds = %bb.ah
  %i.ok = lshr i32 %i.oa, 3                       ; 2 uses
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = sub nsw i64 0, %i.ol
  %i.on = getelementptr inbounds i8, ptr %i.od, i64 %i.om
  %i.oo = icmp uge ptr %i.on, %i.es
  %cond.fr.3 = freeze i1 %i.oo                    ; 2 uses
  %i.op = ptrtoint ptr %i.od to i64
  %i.oq = sub i64 %i.op, %i.et
  %i.or = trunc i64 %i.oq to i32
  %.020.i.3 = select i1 %cond.fr.3, i32 %i.ok, i32 %i.or ; 2 uses
  %i.os = zext i32 %.020.i.3 to i64
  %i.ot = sub nsw i64 0, %i.os
  %i.ou = getelementptr inbounds i8, ptr %i.od, i64 %i.ot ; 2 uses
  store ptr %i.ou, ptr %i.ep, align 8, !tbaa !35
  %i.ov = shl i32 %.020.i.3, 3
  %i.ow = sub i32 %i.oa, %i.ov
  %.val.i128.3 = load i64, ptr %i.ou, align 1, !tbaa !37
  store i64 %.val.i128.3, ptr %i.en, align 8, !tbaa !38
  %spec.select.3 = select i1 %cond.fr.3, i32 %i.mj, i32 0
  br label %BIT_reloadDStream.exit.thread.3

BIT_reloadDStream.exit.thread.3:                  ; preds = %BIT_reloadDStream.exit.3, %BIT_reloadDStream.exit.thread224.3
  %15 = phi i32 [ %i.oi, %BIT_reloadDStream.exit.thread224.3 ], [ %i.ow, %BIT_reloadDStream.exit.3 ] ; 2 uses
  %i.ox = phi i32 [ %i.mj, %BIT_reloadDStream.exit.thread224.3 ], [ %spec.select.3, %BIT_reloadDStream.exit.3 ] ; 2 uses
  %i.oy = icmp uge ptr %i.ob, %i.di
  %.not4647.i68 = icmp eq i32 %i.ox, 0
  %.not46.i69 = select i1 %i.oy, i1 true, i1 %.not4647.i68
  br i1 %.not46.i69, label %.loopexit262.loopexit, label %.preheader260, !llvm.loop !54

.loopexit262.loopexit:                            ; preds = %BIT_reloadDStream.exit.thread.3, %bb.ah, %BIT_reloadDStream.exit.thread.2
  %16 = phi i32 [ %15, %BIT_reloadDStream.exit.thread.3 ], [ %i.oa, %bb.ah ], [ %i.oa, %BIT_reloadDStream.exit.thread.2 ]
  store i32 %.promoted330430, ptr %.phi.trans.insert429, align 8, !tbaa !39
  store ptr %i.gl, ptr %i.a, align 16, !tbaa !57
  store i32 %13, ptr %i.dw, align 16, !tbaa !39
  store ptr %i.iz, ptr %i.dx, align 8, !tbaa !57
  store i32 %14, ptr %i.ef, align 8, !tbaa !39
  store ptr %i.ln, ptr %i.eg, align 16, !tbaa !57
  store i32 %16, ptr %i.eo, align 16, !tbaa !39
  store ptr %i.ob, ptr %i.dj, align 8, !tbaa !57
  br label %.loopexit262

.loopexit262:                                     ; preds = %.loopexit262.loopexit, %bb.z, %bb.y
  %i.oz = sub i32 0, %4
  %i.pa = and i32 %i.oz, 63
  %i.pb = zext nneg i32 %i.pa to i64              ; 5 uses
  br label %bb.ai

.ZS_largeHuffmanDecode_body.exit.loopexit_crit_edge: ; preds = %bb.aq
  store i32 %i.ue, ptr %i.ts, align 8, !tbaa !39
  br label %ZS_largeHuffmanDecode_body.exit.loopexit

ZS_largeHuffmanDecode_body.exit.loopexit:         ; preds = %.ZS_largeHuffmanDecode_body.exit.loopexit_crit_edge, %BIT_reloadDStream.exit148
  %exitcond406 = icmp eq i64 %indvars.iv.next404, 4
  br i1 %exitcond406, label %bb.as, label %bb.ai, !llvm.loop !55

bb.ai:                                            ; preds = %.loopexit262, %ZS_largeHuffmanDecode_body.exit.loopexit
  %indvars.iv403 = phi i64 [ 0, %.loopexit262 ], [ %indvars.iv.next404, %ZS_largeHuffmanDecode_body.exit.loopexit ] ; 3 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv403
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !57 ; 5 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 3 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next404
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !57 ; 5 uses
  %i.pg = icmp ugt ptr %i.pd, %i.pf
  br i1 %i.pg, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pd to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = getelementptr inbounds nuw [40 x i8], ptr %9, i64 %indvars.iv403 ; 15 uses
  %.not.i81 = icmp ult i64 %i.pj, 8
  br i1 %.not.i81, label %.BIT_reloadDStream.exit138.thread_crit_edge, label %.preheader258

.BIT_reloadDStream.exit138.thread_crit_edge:      ; preds = %bb.aj
  %.phi.trans.insert435 = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.pre436 = load i32, ptr %.phi.trans.insert435, align 8, !tbaa !39
  br label %BIT_reloadDStream.exit138.thread

.preheader258:                                    ; preds = %bb.aj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 3 uses
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !39 ; 3 uses
  %i.po = icmp ugt i32 %i.pn, 64
  br i1 %i.po, label %BIT_reloadDStream.exit138.thread.thread, label %.lr.ph343

.lr.ph343:                                        ; preds = %.preheader258
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !34
  %.pre434 = load ptr, ptr %i.pp, align 8, !tbaa !35
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph343, %.preheader
  %i.ps = phi ptr [ %.pre434, %.lr.ph343 ], [ %storemerge256.in, %.preheader ] ; 6 uses
  %i.pt = phi i32 [ %i.pn, %.lr.ph343 ], [ %i.sj, %.preheader ] ; 5 uses
  %.022.i342 = phi ptr [ %i.pd, %.lr.ph343 ], [ %i.sk, %.preheader ] ; 8 uses
  %.not.i129 = icmp ult ptr %i.ps, %i.pr
  br i1 %.not.i129, label %bb.al, label %BIT_reloadDStreamFast.exit.i130, !prof !43

BIT_reloadDStreamFast.exit.i130:                  ; preds = %bb.ak
  %i.pu = lshr i32 %i.pt, 3
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = sub nsw i64 0, %i.pv
  %i.px = getelementptr inbounds i8, ptr %i.ps, i64 %i.pw ; 2 uses
  store ptr %i.px, ptr %i.pp, align 8, !tbaa !35
  %i.py = and i32 %i.pt, 7
  br label %BIT_reloadDStream.exit138

bb.al:                                            ; preds = %bb.ak
  %i.pz = load ptr, ptr %i.pl, align 8, !tbaa !33 ; 3 uses
  %i.qa = icmp eq ptr %i.ps, %i.pz
  br i1 %i.qa, label %BIT_reloadDStream.exit138.thread.thread546, label %bb.am

BIT_reloadDStream.exit138.thread.thread546:       ; preds = %bb.al
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.qc = lshr i32 %i.pt, 3                       ; 2 uses
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.ps, i64 %i.qe
  %i.qg = icmp uge ptr %i.qf, %i.pz               ; 2 uses
  %i.qh = ptrtoint ptr %i.ps to i64
  %i.qi = ptrtoint ptr %i.pz to i64
  %i.qj = sub i64 %i.qh, %i.qi
  %i.qk = trunc i64 %i.qj to i32
  %.020.i133 = select i1 %i.qg, i32 %i.qc, i32 %i.qk ; 2 uses
  %i.ql = zext i32 %.020.i133 to i64
  %i.qm = sub nsw i64 0, %i.ql
  %i.qn = getelementptr inbounds i8, ptr %i.ps, i64 %i.qm ; 2 uses
  store ptr %i.qn, ptr %i.pp, align 8, !tbaa !35
  %i.qo = shl i32 %.020.i133, 3
  %i.qp = sub i32 %i.pt, %i.qo
  br label %BIT_reloadDStream.exit138

BIT_reloadDStream.exit138:                        ; preds = %BIT_reloadDStreamFast.exit.i130, %bb.am
  %.promoted338 = phi i32 [ %i.py, %BIT_reloadDStreamFast.exit.i130 ], [ %i.qp, %bb.am ] ; 4 uses
  %storemerge256.in = phi ptr [ %i.px, %BIT_reloadDStreamFast.exit.i130 ], [ %i.qn, %bb.am ] ; 2 uses
  %.021.i132 = phi i1 [ true, %BIT_reloadDStreamFast.exit.i130 ], [ %i.qg, %bb.am ]
  store i32 %.promoted338, ptr %i.pm, align 8, !tbaa !39
  %storemerge256 = load i64, ptr %storemerge256.in, align 1, !tbaa !37 ; 5 uses
  store i64 %storemerge256, ptr %i.pk, align 8, !tbaa !38
  %i.qq = getelementptr inbounds nuw i8, ptr %.022.i342, i64 8
  %i.qr = icmp ult ptr %i.qq, %i.pf
  %i.qs = and i1 %i.qr, %.021.i132
  br i1 %i.qs, label %.preheader, label %BIT_reloadDStream.exit138.thread

.preheader:                                       ; preds = %BIT_reloadDStream.exit138
  %i.qt = and i32 %.promoted338, 63
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = shl i64 %storemerge256, %i.qu
  %i.qw = lshr i64 %i.qv, %i.pb
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qw ; 2 uses
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !41
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !42
  %i.rb = zext i16 %i.ra to i32
  %i.rc = add i32 %.promoted338, %i.rb            ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.022.i342, i64 2
  store i16 %i.qy, ptr %.022.i342, align 2, !tbaa !18
  %i.re = and i32 %i.rc, 63
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = shl i64 %storemerge256, %i.rf
  %i.rh = lshr i64 %i.rg, %i.pb
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rh ; 2 uses
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !41
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !42
  %i.rm = zext i16 %i.rl to i32
  %i.rn = add i32 %i.rc, %i.rm                    ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.022.i342, i64 4
  store i16 %i.rj, ptr %i.rd, align 2, !tbaa !18
  %i.rp = and i32 %i.rn, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl i64 %storemerge256, %i.rq
  %i.rs = lshr i64 %i.rr, %i.pb
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rs ; 2 uses
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !41
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !42
  %i.rx = zext i16 %i.rw to i32
  %i.ry = add i32 %i.rn, %i.rx                    ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.022.i342, i64 6
  store i16 %i.ru, ptr %i.ro, align 2, !tbaa !18
  %i.sa = and i32 %i.ry, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl i64 %storemerge256, %i.sb
  %i.sd = lshr i64 %i.sc, %i.pb
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sd ; 2 uses
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !41
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 2
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !42
  %i.si = zext i16 %i.sh to i32
  %i.sj = add i32 %i.ry, %i.si                    ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.022.i342, i64 8 ; 2 uses
  store i16 %i.sf, ptr %i.rz, align 2, !tbaa !18
  store i32 %i.sj, ptr %i.pm, align 8, !tbaa !39
  %i.sl = icmp ugt i32 %i.sj, 64
  br i1 %i.sl, label %BIT_reloadDStream.exit138.thread.thread, label %bb.ak, !llvm.loop !0

BIT_reloadDStream.exit138.thread.thread:          ; preds = %.preheader, %.preheader258
  %.ph = phi i32 [ %i.pn, %.preheader258 ], [ %i.sj, %.preheader ]
  %.2.i.ph = phi ptr [ %i.pd, %.preheader258 ], [ %i.sk, %.preheader ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  br label %BIT_reloadDStream.exit148

BIT_reloadDStream.exit138.thread:                 ; preds = %BIT_reloadDStream.exit138, %.BIT_reloadDStream.exit138.thread_crit_edge
  %i.sn = phi i32 [ %.pre436, %.BIT_reloadDStream.exit138.thread_crit_edge ], [ %.promoted338, %BIT_reloadDStream.exit138 ] ; 3 uses
  %.2.i = phi ptr [ %i.pd, %.BIT_reloadDStream.exit138.thread_crit_edge ], [ %.022.i342, %BIT_reloadDStream.exit138 ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 2 uses
  %i.sp = icmp ugt i32 %i.sn, 64
  br i1 %i.sp, label %BIT_reloadDStream.exit148, label %bb.an

bb.an:                                            ; preds = %BIT_reloadDStream.exit138.thread.thread546, %BIT_reloadDStream.exit138.thread
  %i.sq = phi ptr [ %i.qb, %BIT_reloadDStream.exit138.thread.thread546 ], [ %i.so, %BIT_reloadDStream.exit138.thread ] ; 5 uses
  %.2.i548 = phi ptr [ %.022.i342, %BIT_reloadDStream.exit138.thread.thread546 ], [ %.2.i, %BIT_reloadDStream.exit138.thread ] ; 3 uses
  %i.sr = phi i32 [ %i.pt, %BIT_reloadDStream.exit138.thread.thread546 ], [ %i.sn, %BIT_reloadDStream.exit138.thread ] ; 5 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 3 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !35 ; 6 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !34
  %.not.i139 = icmp ult ptr %i.st, %i.sv
  br i1 %.not.i139, label %bb.ao, label %BIT_reloadDStreamFast.exit.i140, !prof !43

BIT_reloadDStreamFast.exit.i140:                  ; preds = %bb.an
  %i.sw = lshr i32 %i.sr, 3
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = sub nsw i64 0, %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.st, i64 %i.sy ; 2 uses
  store ptr %i.sz, ptr %i.ss, align 8, !tbaa !35
  %i.ta = and i32 %i.sr, 7                        ; 2 uses
  store i32 %i.ta, ptr %i.sq, align 8, !tbaa !39
  %.val.i.i141 = load i64, ptr %i.sz, align 1, !tbaa !37
  store i64 %.val.i.i141, ptr %i.pk, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit148

bb.ao:                                            ; preds = %bb.an
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !33 ; 3 uses
  %i.td = icmp eq ptr %i.st, %i.tc
  br i1 %i.td, label %BIT_reloadDStream.exit148, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.te = lshr i32 %i.sr, 3                       ; 2 uses
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = sub nsw i64 0, %i.tf
  %i.th = getelementptr inbounds i8, ptr %i.st, i64 %i.tg
  %i.ti = icmp ult ptr %i.th, %i.tc
  %i.tj = ptrtoint ptr %i.st to i64
  %i.tk = ptrtoint ptr %i.tc to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = trunc i64 %i.tl to i32
  %.020.i143 = select i1 %i.ti, i32 %i.tm, i32 %i.te ; 2 uses
  %i.tn = zext i32 %.020.i143 to i64
  %i.to = sub nsw i64 0, %i.tn
  %i.tp = getelementptr inbounds i8, ptr %i.st, i64 %i.to ; 2 uses
  store ptr %i.tp, ptr %i.ss, align 8, !tbaa !35
  %i.tq = shl i32 %.020.i143, 3
  %i.tr = sub i32 %i.sr, %i.tq                    ; 2 uses
  store i32 %i.tr, ptr %i.sq, align 8, !tbaa !39
  %.val.i145 = load i64, ptr %i.tp, align 1, !tbaa !37
  store i64 %.val.i145, ptr %i.pk, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit148

BIT_reloadDStream.exit148:                        ; preds = %BIT_reloadDStream.exit138.thread.thread, %bb.ao, %BIT_reloadDStream.exit138.thread, %BIT_reloadDStreamFast.exit.i140, %bb.ap
  %i.ts = phi ptr [ %i.sq, %bb.ao ], [ %i.so, %BIT_reloadDStream.exit138.thread ], [ %i.sq, %BIT_reloadDStreamFast.exit.i140 ], [ %i.sq, %bb.ap ], [ %i.sm, %BIT_reloadDStream.exit138.thread.thread ]
  %.2.i545 = phi ptr [ %.2.i548, %bb.ao ], [ %.2.i, %BIT_reloadDStream.exit138.thread ], [ %.2.i548, %BIT_reloadDStreamFast.exit.i140 ], [ %.2.i548, %bb.ap ], [ %.2.i.ph, %BIT_reloadDStream.exit138.thread.thread ] ; 2 uses
  %.promoted350 = phi i32 [ %i.sr, %bb.ao ], [ %i.sn, %BIT_reloadDStream.exit138.thread ], [ %i.ta, %BIT_reloadDStreamFast.exit.i140 ], [ %i.tr, %bb.ap ], [ %.ph, %BIT_reloadDStream.exit138.thread.thread ]
  %i.tt = icmp ult ptr %.2.i545, %i.pf
  br i1 %i.tt, label %.lr.ph349, label %ZS_largeHuffmanDecode_body.exit.loopexit

.lr.ph349:                                        ; preds = %BIT_reloadDStream.exit148
  %.val108 = load i64, ptr %i.pk, align 8, !tbaa !38
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph349, %bb.aq
  %i.tu = phi i32 [ %.promoted350, %.lr.ph349 ], [ %i.ue, %bb.aq ] ; 2 uses
  %.3.i348 = phi ptr [ %.2.i545, %.lr.ph349 ], [ %i.uf, %bb.aq ] ; 2 uses
  %i.tv = and i32 %i.tu, 63
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = shl i64 %.val108, %i.tw
  %i.ty = lshr i64 %i.tx, %i.pb
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ty ; 2 uses
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !41
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !42
  %i.ud = zext i16 %i.uc to i32
  %i.ue = add i32 %i.tu, %i.ud                    ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.3.i348, i64 2 ; 2 uses
  store i16 %i.ua, ptr %.3.i348, align 2, !tbaa !18
  %i.ug = icmp ult ptr %i.uf, %i.pf
  br i1 %i.ug, label %bb.aq, label %.ZS_largeHuffmanDecode_body.exit.loopexit_crit_edge, !llvm.loop !1

bb.ar:                                            ; preds = %bb.ai
  %i.uh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanDecodeX4_body.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 185, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14 ; 2 uses
  %i.ui = extractvalue { i32, ptr } %i.uh, 0      ; 2 uses
  %i.uj = extractvalue { i32, ptr } %i.uh, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ui, ptr %i.uj, ptr noundef nonnull @.str.5) #14
  %i.uk = ptrtoint ptr %i.uj to i64
  br label %ZS_largeHuffmanDecodeX4_body.exit80

bb.as:                                            ; preds = %ZS_largeHuffmanDecode_body.exit.loopexit
  %i.ul = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = sub i64 %i.df, %i.um
  %i.uo = ashr exact i64 %i.un, 1
  br label %ZS_largeHuffmanDecodeX4_body.exit80

ZS_largeHuffmanDecodeX4_body.exit80:              ; preds = %bb.ar, %bb.as
  %.sroa.038.1.i76 = phi i32 [ 0, %bb.as ], [ %i.ui, %bb.ar ]
  %.sroa.4.1.i77 = phi i64 [ %i.uo, %bb.as ], [ %i.uk, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.thread219

bb.at:                                            ; preds = %bb.x
  %i.up = icmp samesign ult i32 %4, 19
  %i.uq = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ur = ptrtoint ptr %i.cz to i64               ; 4 uses
  br i1 %i.up, label %bb.au, label %bb.bp

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.us = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.us, i8 0, i64 24, i1 false)
  store ptr %i.f, ptr %6, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.ut = load ptr, ptr %i.uq, align 8, !tbaa !57
  %i.uu = ptrtoint ptr %i.ut to i64
  %i.uv = sub i64 %i.ur, %i.uu
  %.not.i51 = icmp ult i64 %i.uv, 5
  br i1 %.not.i51, label %.loopexit269, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.uw = getelementptr inbounds i8, ptr %i.cz, i64 -6 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !57 ; 2 uses
  %.not354 = icmp ult ptr %i.uy, %i.uw
  br i1 %.not354, label %.preheader267.lr.ph, label %.loopexit269

.preheader267.lr.ph:                              ; preds = %bb.av
  %i.uz = sub nsw i32 0, %4
  %i.va = and i32 %i.uz, 63
  %i.vb = zext nneg i32 %i.va to i64              ; 12 uses
  %.val104.pre = load i64, ptr %9, align 16, !tbaa !38
  %.phi.trans.insert418 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.promoted307.pre = load i32, ptr %.phi.trans.insert418, align 8, !tbaa !39
  %.promoted309.pre = load ptr, ptr %i.b, align 16, !tbaa !57
  %i.vc = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.vd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.vf = load ptr, ptr %i.ve, align 16
  %i.vg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8            ; 3 uses
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.vq = load ptr, ptr %i.vp, align 16           ; 3 uses
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.vx = load ptr, ptr %i.vw, align 16
  %i.vy = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.vz = load ptr, ptr %i.vy, align 8            ; 3 uses
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = load ptr, ptr %i.vc, align 16           ; 3 uses
  %i.wh = ptrtoint ptr %i.wg to i64
  %.promoted610 = load i32, ptr %i.vk, align 16, !tbaa !39
  %.promoted605 = load ptr, ptr %i.vl, align 8, !tbaa !57
  %.promoted615 = load i32, ptr %i.vt, align 8, !tbaa !39
  %.promoted608 = load ptr, ptr %i.vu, align 16, !tbaa !57
  %.promoted620 = load i32, ptr %i.wc, align 16, !tbaa !39
  br label %.preheader267

.preheader267:                                    ; preds = %.preheader267.lr.ph, %BIT_reloadDStream.exit159.thread.3
  %17 = phi i32 [ %.promoted620, %.preheader267.lr.ph ], [ %22, %BIT_reloadDStream.exit159.thread.3 ] ; 2 uses
  %.promoted309.2609 = phi ptr [ %.promoted608, %.preheader267.lr.ph ], [ %i.abu, %BIT_reloadDStream.exit159.thread.3 ] ; 4 uses
  %18 = phi i32 [ %.promoted615, %.preheader267.lr.ph ], [ %21, %BIT_reloadDStream.exit159.thread.3 ] ; 2 uses
  %.promoted309.1606 = phi ptr [ %.promoted605, %.preheader267.lr.ph ], [ %i.zr, %BIT_reloadDStream.exit159.thread.3 ] ; 4 uses
  %19 = phi i32 [ %.promoted610, %.preheader267.lr.ph ], [ %20, %BIT_reloadDStream.exit159.thread.3 ] ; 2 uses
  %.promoted309.3 = phi ptr [ %i.uy, %.preheader267.lr.ph ], [ %i.adx, %BIT_reloadDStream.exit159.thread.3 ] ; 4 uses
  %.promoted309 = phi ptr [ %.promoted309.pre, %.preheader267.lr.ph ], [ %i.xo, %BIT_reloadDStream.exit159.thread.3 ] ; 4 uses
  %.promoted307 = phi i32 [ %.promoted307.pre, %.preheader267.lr.ph ], [ %.promoted307419, %BIT_reloadDStream.exit159.thread.3 ] ; 2 uses
  %.val104 = phi i64 [ %.val104.pre, %.preheader267.lr.ph ], [ %.val104416, %BIT_reloadDStream.exit159.thread.3 ] ; 5 uses
  %.042.i52314 = phi i32 [ 1, %.preheader267.lr.ph ], [ %i.aet, %BIT_reloadDStream.exit159.thread.3 ] ; 2 uses
  %i.wi = and i32 %.promoted307, 63
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = shl i64 %.val104, %i.wj
  %i.wl = lshr i64 %i.wk, %i.vb
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.wl ; 2 uses
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !41
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 2
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !42
  %i.wq = zext i16 %i.wp to i32
  %i.wr = add i32 %.promoted307, %i.wq            ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.promoted309, i64 2
  store i16 %i.wn, ptr %.promoted309, align 2, !tbaa !18
  %i.wt = and i32 %i.wr, 63
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = shl i64 %.val104, %i.wu
  %i.ww = lshr i64 %i.wv, %i.vb
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ww ; 2 uses
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !41
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !42
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add i32 %i.wr, %i.xb                    ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.promoted309, i64 4
  store i16 %i.wy, ptr %i.ws, align 2, !tbaa !18
  %i.xe = and i32 %i.xc, 63
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = shl i64 %.val104, %i.xf
  %i.xh = lshr i64 %i.xg, %i.vb
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xh ; 2 uses
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !41
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !42
  %i.xm = zext i16 %i.xl to i32
  %i.xn = add i32 %i.xc, %i.xm                    ; 7 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.promoted309, i64 6 ; 2 uses
  store i16 %i.xj, ptr %i.xd, align 2, !tbaa !18
  %i.xp = icmp ugt i32 %i.xn, 64
  br i1 %i.xp, label %BIT_reloadDStream.exit159.thread, label %bb.aw

bb.aw:                                            ; preds = %.preheader267
  %i.xq = load ptr, ptr %i.vd, align 16, !tbaa !35 ; 6 uses
  %.not.i150 = icmp ult ptr %i.xq, %i.vf
  br i1 %.not.i150, label %bb.ax, label %BIT_reloadDStream.exit159.thread234, !prof !43

BIT_reloadDStream.exit159.thread234:              ; preds = %bb.aw
  %i.xr = lshr i32 %i.xn, 3
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = sub nsw i64 0, %i.xs
  %i.xu = getelementptr inbounds i8, ptr %i.xq, i64 %i.xt ; 2 uses
  store ptr %i.xu, ptr %i.vd, align 16, !tbaa !35
  %i.xv = and i32 %i.xn, 7
  %.val.i.i152 = load i64, ptr %i.xu, align 1, !tbaa !37 ; 2 uses
  store i64 %.val.i.i152, ptr %9, align 16, !tbaa !38
  br label %BIT_reloadDStream.exit159.thread

bb.ax:                                            ; preds = %bb.aw
  %i.xw = icmp eq ptr %i.xq, %i.vh
  br i1 %i.xw, label %BIT_reloadDStream.exit159.thread, label %BIT_reloadDStream.exit159

BIT_reloadDStream.exit159:                        ; preds = %bb.ax
  %i.xx = lshr i32 %i.xn, 3                       ; 2 uses
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = sub nsw i64 0, %i.xy
  %i.ya = getelementptr inbounds i8, ptr %i.xq, i64 %i.xz
  %i.yb = icmp uge ptr %i.ya, %i.vh
  %cond.fr231 = freeze i1 %i.yb                   ; 2 uses
  %i.yc = ptrtoint ptr %i.xq to i64
  %i.yd = sub i64 %i.yc, %i.vi
  %i.ye = trunc i64 %i.yd to i32
  %.020.i154 = select i1 %cond.fr231, i32 %i.xx, i32 %i.ye ; 2 uses
  %i.yf = zext i32 %.020.i154 to i64
  %i.yg = sub nsw i64 0, %i.yf
  %i.yh = getelementptr inbounds i8, ptr %i.xq, i64 %i.yg ; 2 uses
  store ptr %i.yh, ptr %i.vd, align 16, !tbaa !35
  %i.yi = shl i32 %.020.i154, 3
  %i.yj = sub i32 %i.xn, %i.yi
  %.val.i156 = load i64, ptr %i.yh, align 1, !tbaa !37 ; 2 uses
  store i64 %.val.i156, ptr %9, align 16, !tbaa !38
  %spec.select251 = select i1 %cond.fr231, i32 %.042.i52314, i32 0
  br label %BIT_reloadDStream.exit159.thread

BIT_reloadDStream.exit159.thread:                 ; preds = %BIT_reloadDStream.exit159, %bb.ax, %.preheader267, %BIT_reloadDStream.exit159.thread234
  %.promoted307419 = phi i32 [ %i.xn, %bb.ax ], [ %i.yj, %BIT_reloadDStream.exit159 ], [ %i.xv, %BIT_reloadDStream.exit159.thread234 ], [ %i.xn, %.preheader267 ] ; 2 uses
  %.val104416 = phi i64 [ %.val104, %bb.ax ], [ %.val.i156, %BIT_reloadDStream.exit159 ], [ %.val.i.i152, %BIT_reloadDStream.exit159.thread234 ], [ %.val104, %.preheader267 ]
  %i.yk = phi i32 [ 0, %bb.ax ], [ %spec.select251, %BIT_reloadDStream.exit159 ], [ %.042.i52314, %BIT_reloadDStream.exit159.thread234 ], [ 0, %.preheader267 ] ; 2 uses
  %.val104.1 = load i64, ptr %i.vj, align 8, !tbaa !38 ; 3 uses
  %i.yl = and i32 %19, 63
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = shl i64 %.val104.1, %i.ym
  %i.yo = lshr i64 %i.yn, %i.vb
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yo ; 2 uses
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !41
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 2
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !42
  %i.yt = zext i16 %i.ys to i32
  %i.yu = add i32 %19, %i.yt                      ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.promoted309.1606, i64 2
  store i16 %i.yq, ptr %.promoted309.1606, align 2, !tbaa !18
  %i.yw = and i32 %i.yu, 63
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = shl i64 %.val104.1, %i.yx
  %i.yz = lshr i64 %i.yy, %i.vb
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yz ; 2 uses
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !41
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !42
  %i.ze = zext i16 %i.zd to i32
  %i.zf = add i32 %i.yu, %i.ze                    ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.promoted309.1606, i64 4
  store i16 %i.zb, ptr %i.yv, align 2, !tbaa !18
  %i.zh = and i32 %i.zf, 63
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl i64 %.val104.1, %i.zi
  %i.zk = lshr i64 %i.zj, %i.vb
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zk ; 2 uses
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !41
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 2
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !42
  %i.zp = zext i16 %i.zo to i32
  %i.zq = add i32 %i.zf, %i.zp                    ; 7 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.promoted309.1606, i64 6 ; 2 uses
  store i16 %i.zm, ptr %i.zg, align 2, !tbaa !18
  %i.zs = icmp ugt i32 %i.zq, 64
  br i1 %i.zs, label %BIT_reloadDStream.exit159.thread.1, label %bb.ay

bb.ay:                                            ; preds = %BIT_reloadDStream.exit159.thread
  %i.zt = load ptr, ptr %i.vm, align 8, !tbaa !35 ; 6 uses
  %.not.i150.1 = icmp ult ptr %i.zt, %i.vo
  br i1 %.not.i150.1, label %bb.az, label %BIT_reloadDStream.exit159.thread234.1, !prof !43

BIT_reloadDStream.exit159.thread234.1:            ; preds = %bb.ay
  %i.zu = lshr i32 %i.zq, 3
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = sub nsw i64 0, %i.zv
  %i.zx = getelementptr inbounds i8, ptr %i.zt, i64 %i.zw ; 2 uses
  store ptr %i.zx, ptr %i.vm, align 8, !tbaa !35
  %i.zy = and i32 %i.zq, 7
  %.val.i.i152.1 = load i64, ptr %i.zx, align 1, !tbaa !37
  store i64 %.val.i.i152.1, ptr %i.vj, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit159.thread.1

bb.az:                                            ; preds = %bb.ay
  %i.zz = icmp eq ptr %i.zt, %i.vq
  br i1 %i.zz, label %BIT_reloadDStream.exit159.thread.1, label %BIT_reloadDStream.exit159.1

BIT_reloadDStream.exit159.1:                      ; preds = %bb.az
  %i.aaa = lshr i32 %i.zq, 3                      ; 2 uses
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = sub nsw i64 0, %i.aab
  %i.aad = getelementptr inbounds i8, ptr %i.zt, i64 %i.aac
  %i.aae = icmp uge ptr %i.aad, %i.vq
  %cond.fr231.1 = freeze i1 %i.aae                ; 2 uses
  %i.aaf = ptrtoint ptr %i.zt to i64
  %i.aag = sub i64 %i.aaf, %i.vr
  %i.aah = trunc i64 %i.aag to i32
  %.020.i154.1 = select i1 %cond.fr231.1, i32 %i.aaa, i32 %i.aah ; 2 uses
  %i.aai = zext i32 %.020.i154.1 to i64
  %i.aaj = sub nsw i64 0, %i.aai
  %i.aak = getelementptr inbounds i8, ptr %i.zt, i64 %i.aaj ; 2 uses
  store ptr %i.aak, ptr %i.vm, align 8, !tbaa !35
  %i.aal = shl i32 %.020.i154.1, 3
  %i.aam = sub i32 %i.zq, %i.aal
  %.val.i156.1 = load i64, ptr %i.aak, align 1, !tbaa !37
  store i64 %.val.i156.1, ptr %i.vj, align 8, !tbaa !38
  %spec.select251.1 = select i1 %cond.fr231.1, i32 %i.yk, i32 0
  br label %BIT_reloadDStream.exit159.thread.1

BIT_reloadDStream.exit159.thread.1:               ; preds = %BIT_reloadDStream.exit159.1, %bb.az, %BIT_reloadDStream.exit159.thread234.1, %BIT_reloadDStream.exit159.thread
  %20 = phi i32 [ %i.zq, %bb.az ], [ %i.aam, %BIT_reloadDStream.exit159.1 ], [ %i.zy, %BIT_reloadDStream.exit159.thread234.1 ], [ %i.zq, %BIT_reloadDStream.exit159.thread ] ; 2 uses
  %i.aan = phi i32 [ 0, %bb.az ], [ %spec.select251.1, %BIT_reloadDStream.exit159.1 ], [ %i.yk, %BIT_reloadDStream.exit159.thread234.1 ], [ 0, %BIT_reloadDStream.exit159.thread ] ; 2 uses
  %.val104.2 = load i64, ptr %i.vs, align 16, !tbaa !38 ; 3 uses
  %i.aao = and i32 %18, 63
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = shl i64 %.val104.2, %i.aap
  %i.aar = lshr i64 %i.aaq, %i.vb
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aar ; 2 uses
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !41
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !42
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = add i32 %18, %i.aaw                    ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.promoted309.2609, i64 2
  store i16 %i.aat, ptr %.promoted309.2609, align 2, !tbaa !18
  %i.aaz = and i32 %i.aax, 63
  %i.aba = zext nneg i32 %i.aaz to i64
  %i.abb = shl i64 %.val104.2, %i.aba
  %i.abc = lshr i64 %i.abb, %i.vb
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abc ; 2 uses
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !41
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 2
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !42
  %i.abh = zext i16 %i.abg to i32
  %i.abi = add i32 %i.aax, %i.abh                 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.promoted309.2609, i64 4
  store i16 %i.abe, ptr %i.aay, align 2, !tbaa !18
  %i.abk = and i32 %i.abi, 63
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = shl i64 %.val104.2, %i.abl
  %i.abn = lshr i64 %i.abm, %i.vb
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abn ; 2 uses
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !41
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !42
  %i.abs = zext i16 %i.abr to i32
  %i.abt = add i32 %i.abi, %i.abs                 ; 7 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.promoted309.2609, i64 6 ; 2 uses
  store i16 %i.abp, ptr %i.abj, align 2, !tbaa !18
  %i.abv = icmp ugt i32 %i.abt, 64
  br i1 %i.abv, label %BIT_reloadDStream.exit159.thread.2, label %bb.ba

bb.ba:                                            ; preds = %BIT_reloadDStream.exit159.thread.1
  %i.abw = load ptr, ptr %i.vv, align 16, !tbaa !35 ; 6 uses
  %.not.i150.2 = icmp ult ptr %i.abw, %i.vx
  br i1 %.not.i150.2, label %bb.bb, label %BIT_reloadDStream.exit159.thread234.2, !prof !43

BIT_reloadDStream.exit159.thread234.2:            ; preds = %bb.ba
  %i.abx = lshr i32 %i.abt, 3
  %i.aby = zext nneg i32 %i.abx to i64
  %i.abz = sub nsw i64 0, %i.aby
  %i.aca = getelementptr inbounds i8, ptr %i.abw, i64 %i.abz ; 2 uses
  store ptr %i.aca, ptr %i.vv, align 16, !tbaa !35
  %i.acb = and i32 %i.abt, 7
  %.val.i.i152.2 = load i64, ptr %i.aca, align 1, !tbaa !37
  store i64 %.val.i.i152.2, ptr %i.vs, align 16, !tbaa !38
  br label %BIT_reloadDStream.exit159.thread.2

bb.bb:                                            ; preds = %bb.ba
  %i.acc = icmp eq ptr %i.abw, %i.vz
  br i1 %i.acc, label %BIT_reloadDStream.exit159.thread.2, label %BIT_reloadDStream.exit159.2

BIT_reloadDStream.exit159.2:                      ; preds = %bb.bb
  %i.acd = lshr i32 %i.abt, 3                     ; 2 uses
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = sub nsw i64 0, %i.ace
  %i.acg = getelementptr inbounds i8, ptr %i.abw, i64 %i.acf
  %i.ach = icmp uge ptr %i.acg, %i.vz
  %cond.fr231.2 = freeze i1 %i.ach                ; 2 uses
  %i.aci = ptrtoint ptr %i.abw to i64
  %i.acj = sub i64 %i.aci, %i.wa
  %i.ack = trunc i64 %i.acj to i32
  %.020.i154.2 = select i1 %cond.fr231.2, i32 %i.acd, i32 %i.ack ; 2 uses
  %i.acl = zext i32 %.020.i154.2 to i64
  %i.acm = sub nsw i64 0, %i.acl
  %i.acn = getelementptr inbounds i8, ptr %i.abw, i64 %i.acm ; 2 uses
  store ptr %i.acn, ptr %i.vv, align 16, !tbaa !35
  %i.aco = shl i32 %.020.i154.2, 3
  %i.acp = sub i32 %i.abt, %i.aco
  %.val.i156.2 = load i64, ptr %i.acn, align 1, !tbaa !37
  store i64 %.val.i156.2, ptr %i.vs, align 16, !tbaa !38
  %spec.select251.2 = select i1 %cond.fr231.2, i32 %i.aan, i32 0
  br label %BIT_reloadDStream.exit159.thread.2

BIT_reloadDStream.exit159.thread.2:               ; preds = %BIT_reloadDStream.exit159.2, %bb.bb, %BIT_reloadDStream.exit159.thread234.2, %BIT_reloadDStream.exit159.thread.1
  %21 = phi i32 [ %i.abt, %bb.bb ], [ %i.acp, %BIT_reloadDStream.exit159.2 ], [ %i.acb, %BIT_reloadDStream.exit159.thread234.2 ], [ %i.abt, %BIT_reloadDStream.exit159.thread.1 ] ; 2 uses
  %i.acq = phi i32 [ 0, %bb.bb ], [ %spec.select251.2, %BIT_reloadDStream.exit159.2 ], [ %i.aan, %BIT_reloadDStream.exit159.thread234.2 ], [ 0, %BIT_reloadDStream.exit159.thread.1 ] ; 2 uses
  %.val104.3 = load i64, ptr %i.wb, align 8, !tbaa !38 ; 3 uses
  %i.acr = and i32 %17, 63
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = shl i64 %.val104.3, %i.acs
  %i.acu = lshr i64 %i.act, %i.vb
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acu ; 2 uses
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !41
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 2
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !42
  %i.acz = zext i16 %i.acy to i32
  %i.ada = add i32 %17, %i.acz                    ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.promoted309.3, i64 2
  store i16 %i.acw, ptr %.promoted309.3, align 2, !tbaa !18
  %i.adc = and i32 %i.ada, 63
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = shl i64 %.val104.3, %i.add
  %i.adf = lshr i64 %i.ade, %i.vb
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adf ; 2 uses
  %i.adh = load i16, ptr %i.adg, align 2, !tbaa !41
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 2
  %i.adj = load i16, ptr %i.adi, align 2, !tbaa !42
  %i.adk = zext i16 %i.adj to i32
  %i.adl = add i32 %i.ada, %i.adk                 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.promoted309.3, i64 4
  store i16 %i.adh, ptr %i.adb, align 2, !tbaa !18
  %i.adn = and i32 %i.adl, 63
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = shl i64 %.val104.3, %i.ado
  %i.adq = lshr i64 %i.adp, %i.vb
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adq ; 2 uses
  %i.ads = load i16, ptr %i.adr, align 2, !tbaa !41
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 2
  %i.adu = load i16, ptr %i.adt, align 2, !tbaa !42
  %i.adv = zext i16 %i.adu to i32
  %i.adw = add i32 %i.adl, %i.adv                 ; 7 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.promoted309.3, i64 6 ; 3 uses
  store i16 %i.ads, ptr %i.adm, align 2, !tbaa !18
  %i.ady = icmp ugt i32 %i.adw, 64
  br i1 %i.ady, label %.loopexit269.loopexit, label %bb.bc

bb.bc:                                            ; preds = %BIT_reloadDStream.exit159.thread.2
  %i.adz = load ptr, ptr %i.wd, align 8, !tbaa !35 ; 6 uses
  %.not.i150.3 = icmp ult ptr %i.adz, %i.wf
  br i1 %.not.i150.3, label %bb.bd, label %BIT_reloadDStream.exit159.thread234.3, !prof !43

BIT_reloadDStream.exit159.thread234.3:            ; preds = %bb.bc
  %i.aea = lshr i32 %i.adw, 3
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = sub nsw i64 0, %i.aeb
  %i.aed = getelementptr inbounds i8, ptr %i.adz, i64 %i.aec ; 2 uses
  store ptr %i.aed, ptr %i.wd, align 8, !tbaa !35
  %i.aee = and i32 %i.adw, 7
  %.val.i.i152.3 = load i64, ptr %i.aed, align 1, !tbaa !37
  store i64 %.val.i.i152.3, ptr %i.wb, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit159.thread.3

bb.bd:                                            ; preds = %bb.bc
  %i.aef = icmp eq ptr %i.adz, %i.wg
  br i1 %i.aef, label %.loopexit269.loopexit, label %BIT_reloadDStream.exit159.3

BIT_reloadDStream.exit159.3:                      ; preds = %bb.bd
  %i.aeg = lshr i32 %i.adw, 3                     ; 2 uses
  %i.aeh = zext nneg i32 %i.aeg to i64
  %i.aei = sub nsw i64 0, %i.aeh
  %i.aej = getelementptr inbounds i8, ptr %i.adz, i64 %i.aei
  %i.aek = icmp uge ptr %i.aej, %i.wg
  %cond.fr231.3 = freeze i1 %i.aek                ; 2 uses
  %i.ael = ptrtoint ptr %i.adz to i64
  %i.aem = sub i64 %i.ael, %i.wh
  %i.aen = trunc i64 %i.aem to i32
  %.020.i154.3 = select i1 %cond.fr231.3, i32 %i.aeg, i32 %i.aen ; 2 uses
  %i.aeo = zext i32 %.020.i154.3 to i64
  %i.aep = sub nsw i64 0, %i.aeo
  %i.aeq = getelementptr inbounds i8, ptr %i.adz, i64 %i.aep ; 2 uses
  store ptr %i.aeq, ptr %i.wd, align 8, !tbaa !35
  %i.aer = shl i32 %.020.i154.3, 3
  %i.aes = sub i32 %i.adw, %i.aer
  %.val.i156.3 = load i64, ptr %i.aeq, align 1, !tbaa !37
  store i64 %.val.i156.3, ptr %i.wb, align 8, !tbaa !38
  %spec.select251.3 = select i1 %cond.fr231.3, i32 %i.acq, i32 0
  br label %BIT_reloadDStream.exit159.thread.3

BIT_reloadDStream.exit159.thread.3:               ; preds = %BIT_reloadDStream.exit159.3, %BIT_reloadDStream.exit159.thread234.3
  %22 = phi i32 [ %i.aee, %BIT_reloadDStream.exit159.thread234.3 ], [ %i.aes, %BIT_reloadDStream.exit159.3 ] ; 2 uses
  %i.aet = phi i32 [ %i.acq, %BIT_reloadDStream.exit159.thread234.3 ], [ %spec.select251.3, %BIT_reloadDStream.exit159.3 ] ; 2 uses
  %i.aeu = icmp uge ptr %i.adx, %i.uw
  %.not4647.i53 = icmp eq i32 %i.aet, 0
  %.not46.i54 = select i1 %i.aeu, i1 true, i1 %.not4647.i53
  br i1 %.not46.i54, label %.loopexit269.loopexit, label %.preheader267, !llvm.loop !54

.loopexit269.loopexit:                            ; preds = %BIT_reloadDStream.exit159.thread.3, %bb.bd, %BIT_reloadDStream.exit159.thread.2
  %23 = phi i32 [ %22, %BIT_reloadDStream.exit159.thread.3 ], [ %i.adw, %bb.bd ], [ %i.adw, %BIT_reloadDStream.exit159.thread.2 ]
  store i32 %.promoted307419, ptr %.phi.trans.insert418, align 8, !tbaa !39
  store ptr %i.xo, ptr %i.b, align 16, !tbaa !57
  store i32 %20, ptr %i.vk, align 16, !tbaa !39
  store ptr %i.zr, ptr %i.vl, align 8, !tbaa !57
  store i32 %21, ptr %i.vt, align 8, !tbaa !39
  store ptr %i.abu, ptr %i.vu, align 16, !tbaa !57
  store i32 %23, ptr %i.wc, align 16, !tbaa !39
  store ptr %i.adx, ptr %i.ux, align 8, !tbaa !57
  br label %.loopexit269

.loopexit269:                                     ; preds = %.loopexit269.loopexit, %bb.av, %bb.au
  %i.aev = sub nsw i32 0, %4
  %i.aew = and i32 %i.aev, 63
  %i.aex = zext nneg i32 %i.aew to i64            ; 4 uses
  br label %bb.be

.ZS_largeHuffmanDecode_body.exit90.loopexit_crit_edge: ; preds = %bb.bm
  store i32 %i.ajp, ptr %i.ajd, align 8, !tbaa !39
  br label %ZS_largeHuffmanDecode_body.exit90.loopexit

ZS_largeHuffmanDecode_body.exit90.loopexit:       ; preds = %.ZS_largeHuffmanDecode_body.exit90.loopexit_crit_edge, %BIT_reloadDStream.exit179
  %exitcond396 = icmp eq i64 %indvars.iv.next394, 4
  br i1 %exitcond396, label %bb.bo, label %bb.be, !llvm.loop !55

bb.be:                                            ; preds = %.loopexit269, %ZS_largeHuffmanDecode_body.exit90.loopexit
  %indvars.iv393 = phi i64 [ 0, %.loopexit269 ], [ %indvars.iv.next394, %ZS_largeHuffmanDecode_body.exit90.loopexit ] ; 3 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv393
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !57 ; 5 uses
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 3 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next394
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !57 ; 5 uses
  %i.afc = icmp ugt ptr %i.aez, %i.afb
  br i1 %i.afc, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.afd = ptrtoint ptr %i.afb to i64
  %i.afe = ptrtoint ptr %i.aez to i64
  %i.aff = sub i64 %i.afd, %i.afe
  %i.afg = getelementptr inbounds nuw [40 x i8], ptr %9, i64 %indvars.iv393 ; 15 uses
  %.not.i84 = icmp ult i64 %i.aff, 5
  br i1 %.not.i84, label %.BIT_reloadDStream.exit169.thread_crit_edge, label %.preheader265

.BIT_reloadDStream.exit169.thread_crit_edge:      ; preds = %bb.bf
  %.phi.trans.insert424 = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %.pre425 = load i32, ptr %.phi.trans.insert424, align 8, !tbaa !39
  br label %BIT_reloadDStream.exit169.thread

.preheader265:                                    ; preds = %bb.bf
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 24
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 3 uses
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !39 ; 3 uses
  %i.afk = icmp ugt i32 %i.afj, 64
  br i1 %i.afk, label %BIT_reloadDStream.exit169.thread.thread, label %.lr.ph320

.lr.ph320:                                        ; preds = %.preheader265
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !34
  %.pre423 = load ptr, ptr %i.afl, align 8, !tbaa !35
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph320, %.preheader263
  %i.afo = phi ptr [ %.pre423, %.lr.ph320 ], [ %storemerge254.in, %.preheader263 ] ; 6 uses
  %i.afp = phi i32 [ %i.afj, %.lr.ph320 ], [ %i.ahu, %.preheader263 ] ; 5 uses
  %.022.i85319 = phi ptr [ %i.aez, %.lr.ph320 ], [ %i.ahv, %.preheader263 ] ; 7 uses
  %.not.i160 = icmp ult ptr %i.afo, %i.afn
  br i1 %.not.i160, label %bb.bh, label %BIT_reloadDStreamFast.exit.i161, !prof !43

BIT_reloadDStreamFast.exit.i161:                  ; preds = %bb.bg
  %i.afq = lshr i32 %i.afp, 3
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = sub nsw i64 0, %i.afr
  %i.aft = getelementptr inbounds i8, ptr %i.afo, i64 %i.afs ; 2 uses
  store ptr %i.aft, ptr %i.afl, align 8, !tbaa !35
  %i.afu = and i32 %i.afp, 7
  br label %BIT_reloadDStream.exit169

bb.bh:                                            ; preds = %bb.bg
  %i.afv = load ptr, ptr %i.afh, align 8, !tbaa !33 ; 3 uses
  %i.afw = icmp eq ptr %i.afo, %i.afv
  br i1 %i.afw, label %BIT_reloadDStream.exit169.thread.thread554, label %bb.bi

BIT_reloadDStream.exit169.thread.thread554:       ; preds = %bb.bh
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.afy = lshr i32 %i.afp, 3                     ; 2 uses
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = sub nsw i64 0, %i.afz
  %i.agb = getelementptr inbounds i8, ptr %i.afo, i64 %i.aga
  %i.agc = icmp uge ptr %i.agb, %i.afv            ; 2 uses
  %i.agd = ptrtoint ptr %i.afo to i64
  %i.age = ptrtoint ptr %i.afv to i64
  %i.agf = sub i64 %i.agd, %i.age
  %i.agg = trunc i64 %i.agf to i32
  %.020.i164 = select i1 %i.agc, i32 %i.afy, i32 %i.agg ; 2 uses
  %i.agh = zext i32 %.020.i164 to i64
  %i.agi = sub nsw i64 0, %i.agh
  %i.agj = getelementptr inbounds i8, ptr %i.afo, i64 %i.agi ; 2 uses
  store ptr %i.agj, ptr %i.afl, align 8, !tbaa !35
  %i.agk = shl i32 %.020.i164, 3
  %i.agl = sub i32 %i.afp, %i.agk
  br label %BIT_reloadDStream.exit169

BIT_reloadDStream.exit169:                        ; preds = %BIT_reloadDStreamFast.exit.i161, %bb.bi
  %.promoted315 = phi i32 [ %i.afu, %BIT_reloadDStreamFast.exit.i161 ], [ %i.agl, %bb.bi ] ; 4 uses
  %storemerge254.in = phi ptr [ %i.aft, %BIT_reloadDStreamFast.exit.i161 ], [ %i.agj, %bb.bi ] ; 2 uses
  %.021.i163 = phi i1 [ true, %BIT_reloadDStreamFast.exit.i161 ], [ %i.agc, %bb.bi ]
  store i32 %.promoted315, ptr %i.afi, align 8, !tbaa !39
  %storemerge254 = load i64, ptr %storemerge254.in, align 1, !tbaa !37 ; 4 uses
  store i64 %storemerge254, ptr %i.afg, align 8, !tbaa !38
  %i.agm = getelementptr inbounds nuw i8, ptr %.022.i85319, i64 6
  %i.agn = icmp ult ptr %i.agm, %i.afb
  %i.ago = and i1 %i.agn, %.021.i163
  br i1 %i.ago, label %.preheader263, label %BIT_reloadDStream.exit169.thread

.preheader263:                                    ; preds = %BIT_reloadDStream.exit169
  %i.agp = and i32 %.promoted315, 63
  %i.agq = zext nneg i32 %i.agp to i64
  %i.agr = shl i64 %storemerge254, %i.agq
  %i.ags = lshr i64 %i.agr, %i.aex
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ags ; 2 uses
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !41
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 2
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !42
  %i.agx = zext i16 %i.agw to i32
  %i.agy = add i32 %.promoted315, %i.agx          ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.022.i85319, i64 2
  store i16 %i.agu, ptr %.022.i85319, align 2, !tbaa !18
  %i.aha = and i32 %i.agy, 63
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = shl i64 %storemerge254, %i.ahb
  %i.ahd = lshr i64 %i.ahc, %i.aex
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahd ; 2 uses
  %i.ahf = load i16, ptr %i.ahe, align 2, !tbaa !41
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 2
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !42
  %i.ahi = zext i16 %i.ahh to i32
  %i.ahj = add i32 %i.agy, %i.ahi                 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.022.i85319, i64 4
  store i16 %i.ahf, ptr %i.agz, align 2, !tbaa !18
  %i.ahl = and i32 %i.ahj, 63
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = shl i64 %storemerge254, %i.ahm
  %i.aho = lshr i64 %i.ahn, %i.aex
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aho ; 2 uses
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !41
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !42
  %i.aht = zext i16 %i.ahs to i32
  %i.ahu = add i32 %i.ahj, %i.aht                 ; 4 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.022.i85319, i64 6 ; 2 uses
  store i16 %i.ahq, ptr %i.ahk, align 2, !tbaa !18
  store i32 %i.ahu, ptr %i.afi, align 8, !tbaa !39
  %i.ahw = icmp ugt i32 %i.ahu, 64
  br i1 %i.ahw, label %BIT_reloadDStream.exit169.thread.thread, label %bb.bg, !llvm.loop !0

BIT_reloadDStream.exit169.thread.thread:          ; preds = %.preheader263, %.preheader265
  %.ph551 = phi i32 [ %i.afj, %.preheader265 ], [ %i.ahu, %.preheader263 ]
  %.2.i86.ph = phi ptr [ %i.aez, %.preheader265 ], [ %i.ahv, %.preheader263 ]
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  br label %BIT_reloadDStream.exit179

BIT_reloadDStream.exit169.thread:                 ; preds = %BIT_reloadDStream.exit169, %.BIT_reloadDStream.exit169.thread_crit_edge
  %i.ahy = phi i32 [ %.pre425, %.BIT_reloadDStream.exit169.thread_crit_edge ], [ %.promoted315, %BIT_reloadDStream.exit169 ] ; 3 uses
  %.2.i86 = phi ptr [ %i.aez, %.BIT_reloadDStream.exit169.thread_crit_edge ], [ %.022.i85319, %BIT_reloadDStream.exit169 ] ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 2 uses
  %i.aia = icmp ugt i32 %i.ahy, 64
  br i1 %i.aia, label %BIT_reloadDStream.exit179, label %bb.bj

bb.bj:                                            ; preds = %BIT_reloadDStream.exit169.thread.thread554, %BIT_reloadDStream.exit169.thread
  %i.aib = phi ptr [ %i.afx, %BIT_reloadDStream.exit169.thread.thread554 ], [ %i.ahz, %BIT_reloadDStream.exit169.thread ] ; 5 uses
  %.2.i86556 = phi ptr [ %.022.i85319, %BIT_reloadDStream.exit169.thread.thread554 ], [ %.2.i86, %BIT_reloadDStream.exit169.thread ] ; 3 uses
  %i.aic = phi i32 [ %i.afp, %BIT_reloadDStream.exit169.thread.thread554 ], [ %i.ahy, %BIT_reloadDStream.exit169.thread ] ; 5 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 3 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !35 ; 6 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !34
  %.not.i170 = icmp ult ptr %i.aie, %i.aig
  br i1 %.not.i170, label %bb.bk, label %BIT_reloadDStreamFast.exit.i171, !prof !43

BIT_reloadDStreamFast.exit.i171:                  ; preds = %bb.bj
  %i.aih = lshr i32 %i.aic, 3
  %i.aii = zext nneg i32 %i.aih to i64
  %i.aij = sub nsw i64 0, %i.aii
  %i.aik = getelementptr inbounds i8, ptr %i.aie, i64 %i.aij ; 2 uses
  store ptr %i.aik, ptr %i.aid, align 8, !tbaa !35
  %i.ail = and i32 %i.aic, 7                      ; 2 uses
  store i32 %i.ail, ptr %i.aib, align 8, !tbaa !39
  %.val.i.i172 = load i64, ptr %i.aik, align 1, !tbaa !37
  store i64 %.val.i.i172, ptr %i.afg, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit179

bb.bk:                                            ; preds = %bb.bj
  %i.aim = getelementptr inbounds nuw i8, ptr %i.afg, i64 24
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !33 ; 3 uses
  %i.aio = icmp eq ptr %i.aie, %i.ain
  br i1 %i.aio, label %BIT_reloadDStream.exit179, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aip = lshr i32 %i.aic, 3                     ; 2 uses
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = sub nsw i64 0, %i.aiq
  %i.ais = getelementptr inbounds i8, ptr %i.aie, i64 %i.air
  %i.ait = icmp ult ptr %i.ais, %i.ain
  %i.aiu = ptrtoint ptr %i.aie to i64
  %i.aiv = ptrtoint ptr %i.ain to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv
  %i.aix = trunc i64 %i.aiw to i32
  %.020.i174 = select i1 %i.ait, i32 %i.aix, i32 %i.aip ; 2 uses
  %i.aiy = zext i32 %.020.i174 to i64
  %i.aiz = sub nsw i64 0, %i.aiy
  %i.aja = getelementptr inbounds i8, ptr %i.aie, i64 %i.aiz ; 2 uses
  store ptr %i.aja, ptr %i.aid, align 8, !tbaa !35
  %i.ajb = shl i32 %.020.i174, 3
  %i.ajc = sub i32 %i.aic, %i.ajb                 ; 2 uses
  store i32 %i.ajc, ptr %i.aib, align 8, !tbaa !39
  %.val.i176 = load i64, ptr %i.aja, align 1, !tbaa !37
  store i64 %.val.i176, ptr %i.afg, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit179

BIT_reloadDStream.exit179:                        ; preds = %BIT_reloadDStream.exit169.thread.thread, %bb.bk, %BIT_reloadDStream.exit169.thread, %BIT_reloadDStreamFast.exit.i171, %bb.bl
  %i.ajd = phi ptr [ %i.aib, %bb.bk ], [ %i.ahz, %BIT_reloadDStream.exit169.thread ], [ %i.aib, %BIT_reloadDStreamFast.exit.i171 ], [ %i.aib, %bb.bl ], [ %i.ahx, %BIT_reloadDStream.exit169.thread.thread ]
  %.2.i86553 = phi ptr [ %.2.i86556, %bb.bk ], [ %.2.i86, %BIT_reloadDStream.exit169.thread ], [ %.2.i86556, %BIT_reloadDStreamFast.exit.i171 ], [ %.2.i86556, %bb.bl ], [ %.2.i86.ph, %BIT_reloadDStream.exit169.thread.thread ] ; 2 uses
  %.promoted327 = phi i32 [ %i.aic, %bb.bk ], [ %i.ahy, %BIT_reloadDStream.exit169.thread ], [ %i.ail, %BIT_reloadDStreamFast.exit.i171 ], [ %i.ajc, %bb.bl ], [ %.ph551, %BIT_reloadDStream.exit169.thread.thread ]
  %i.aje = icmp ult ptr %.2.i86553, %i.afb
  br i1 %i.aje, label %.lr.ph326, label %ZS_largeHuffmanDecode_body.exit90.loopexit

.lr.ph326:                                        ; preds = %BIT_reloadDStream.exit179
  %.val112 = load i64, ptr %i.afg, align 8, !tbaa !38
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph326, %bb.bm
  %i.ajf = phi i32 [ %.promoted327, %.lr.ph326 ], [ %i.ajp, %bb.bm ] ; 2 uses
  %.3.i87325 = phi ptr [ %.2.i86553, %.lr.ph326 ], [ %i.ajq, %bb.bm ] ; 2 uses
  %i.ajg = and i32 %i.ajf, 63
  %i.ajh = zext nneg i32 %i.ajg to i64
  %i.aji = shl i64 %.val112, %i.ajh
  %i.ajj = lshr i64 %i.aji, %i.aex
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ajj ; 2 uses
  %i.ajl = load i16, ptr %i.ajk, align 2, !tbaa !41
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 2
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !42
  %i.ajo = zext i16 %i.ajn to i32
  %i.ajp = add i32 %i.ajf, %i.ajo                 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.3.i87325, i64 2 ; 2 uses
  store i16 %i.ajl, ptr %.3.i87325, align 2, !tbaa !18
  %i.ajr = icmp ult ptr %i.ajq, %i.afb
  br i1 %i.ajr, label %bb.bm, label %.ZS_largeHuffmanDecode_body.exit90.loopexit_crit_edge, !llvm.loop !1

bb.bn:                                            ; preds = %bb.be
  %i.ajs = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_largeHuffmanDecodeX4_body.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 185, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14 ; 2 uses
  %i.ajt = extractvalue { i32, ptr } %i.ajs, 0    ; 2 uses
  %i.aju = extractvalue { i32, ptr } %i.ajs, 1    ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ajt, ptr %i.aju, ptr noundef nonnull @.str.5) #14
  %i.ajv = ptrtoint ptr %i.aju to i64
  br label %ZS_largeHuffmanDecodeX4_body.exit65

bb.bo:                                            ; preds = %ZS_largeHuffmanDecode_body.exit90.loopexit
  %i.ajw = load ptr, ptr %i.d, align 16, !tbaa !57
  %i.ajx = ptrtoint ptr %i.ajw to i64
  %i.ajy = sub i64 %i.ur, %i.ajx
  %i.ajz = ashr exact i64 %i.ajy, 1
  br label %ZS_largeHuffmanDecodeX4_body.exit65

ZS_largeHuffmanDecodeX4_body.exit65:              ; preds = %bb.bn, %bb.bo
  %.sroa.038.1.i61 = phi i32 [ 0, %bb.bo ], [ %i.ajt, %bb.bn ]
  %.sroa.4.1.i62 = phi i64 [ %i.ajz, %bb.bo ], [ %i.ajv, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread219

bb.bp:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.aka = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aka, i8 0, i64 24, i1 false)
  store ptr %i.f, ptr %7, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.akb = load ptr, ptr %i.uq, align 8, !tbaa !57
  %i.akc = ptrtoint ptr %i.akb to i64
  %i.akd = sub i64 %i.ur, %i.akc
  %.not.i = icmp ult i64 %i.akd, 3
  br i1 %.not.i, label %.loopexit276, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ake = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !57 ; 2 uses
  %.not = icmp ult ptr %i.akg, %i.ake
  br i1 %.not, label %.preheader274.lr.ph, label %.loopexit276

.preheader274.lr.ph:                              ; preds = %bb.bq
  %i.akh = sub nsw i32 0, %4
  %i.aki = and i32 %i.akh, 63
  %i.akj = zext nneg i32 %i.aki to i64            ; 8 uses
  %.val102.pre = load i64, ptr %9, align 16, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.promoted286.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !39
  %.promoted288.pre = load ptr, ptr %i.c, align 16, !tbaa !57
  %i.akk = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.akl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.akn = load ptr, ptr %i.akm, align 16
  %i.ako = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8          ; 3 uses
  %i.akq = ptrtoint ptr %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.akw = load ptr, ptr %i.akv, align 8
  %i.akx = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aky = load ptr, ptr %i.akx, align 16         ; 3 uses
  %i.akz = ptrtoint ptr %i.aky to i64
  %i.ala = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.alf = load ptr, ptr %i.ale, align 16
  %i.alg = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.alh = load ptr, ptr %i.alg, align 8          ; 3 uses
  %i.ali = ptrtoint ptr %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 3 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.aln = load ptr, ptr %i.alm, align 8
  %i.alo = load ptr, ptr %i.akk, align 16         ; 3 uses
  %i.alp = ptrtoint ptr %i.alo to i64
  %.promoted597 = load i32, ptr %i.aks, align 16, !tbaa !39
  %.promoted597.a = load ptr, ptr %i.akt, align 8, !tbaa !57
  %.promoted602 = load i32, ptr %i.alb, align 8, !tbaa !39
  %.promoted600 = load ptr, ptr %i.alc, align 16, !tbaa !57
  %.promoted607 = load i32, ptr %i.alk, align 16, !tbaa !39
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.lr.ph, %BIT_reloadDStream.exit190.thread.3
  %24 = phi i32 [ %.promoted607, %.preheader274.lr.ph ], [ %29, %BIT_reloadDStream.exit190.thread.3 ] ; 2 uses
  %.promoted288.2601 = phi ptr [ %.promoted600, %.preheader274.lr.ph ], [ %i.apv, %BIT_reloadDStream.exit190.thread.3 ] ; 3 uses
  %25 = phi i32 [ %.promoted602, %.preheader274.lr.ph ], [ %28, %BIT_reloadDStream.exit190.thread.3 ] ; 2 uses
  %.promoted288.1598 = phi ptr [ %.promoted597.a, %.preheader274.lr.ph ], [ %i.aod, %BIT_reloadDStream.exit190.thread.3 ] ; 3 uses
  %26 = phi i32 [ %.promoted597, %.preheader274.lr.ph ], [ %27, %BIT_reloadDStream.exit190.thread.3 ] ; 2 uses
  %.promoted288.3 = phi ptr [ %i.akg, %.preheader274.lr.ph ], [ %i.arn, %BIT_reloadDStream.exit190.thread.3 ] ; 3 uses
  %.promoted288 = phi ptr [ %.promoted288.pre, %.preheader274.lr.ph ], [ %i.aml, %BIT_reloadDStream.exit190.thread.3 ] ; 3 uses
  %.promoted286 = phi i32 [ %.promoted286.pre, %.preheader274.lr.ph ], [ %.promoted286409, %BIT_reloadDStream.exit190.thread.3 ] ; 2 uses
  %.val102 = phi i64 [ %.val102.pre, %.preheader274.lr.ph ], [ %.val102407, %BIT_reloadDStream.exit190.thread.3 ] ; 4 uses
  %.042.i293 = phi i32 [ 1, %.preheader274.lr.ph ], [ %i.asj, %BIT_reloadDStream.exit190.thread.3 ] ; 2 uses
  %i.alq = and i32 %.promoted286, 63
  %i.alr = zext nneg i32 %i.alq to i64
  %i.als = shl i64 %.val102, %i.alr
  %i.alt = lshr i64 %i.als, %i.akj
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.alt ; 2 uses
  %i.alv = load i16, ptr %i.alu, align 2, !tbaa !41
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 2
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !42
  %i.aly = zext i16 %i.alx to i32
  %i.alz = add i32 %.promoted286, %i.aly          ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.promoted288, i64 2
  store i16 %i.alv, ptr %.promoted288, align 2, !tbaa !18
  %i.amb = and i32 %i.alz, 63
  %i.amc = zext nneg i32 %i.amb to i64
  %i.amd = shl i64 %.val102, %i.amc
  %i.ame = lshr i64 %i.amd, %i.akj
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ame ; 2 uses
  %i.amg = load i16, ptr %i.amf, align 2, !tbaa !41
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amf, i64 2
  %i.ami = load i16, ptr %i.amh, align 2, !tbaa !42
  %i.amj = zext i16 %i.ami to i32
  %i.amk = add i32 %i.alz, %i.amj                 ; 7 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.promoted288, i64 4 ; 2 uses
  store i16 %i.amg, ptr %i.ama, align 2, !tbaa !18
  %i.amm = icmp ugt i32 %i.amk, 64
  br i1 %i.amm, label %BIT_reloadDStream.exit190.thread, label %bb.br

bb.br:                                            ; preds = %.preheader274
  %i.amn = load ptr, ptr %i.akl, align 16, !tbaa !35 ; 6 uses
  %.not.i181 = icmp ult ptr %i.amn, %i.akn
  br i1 %.not.i181, label %bb.bs, label %BIT_reloadDStream.exit190.thread244, !prof !43

BIT_reloadDStream.exit190.thread244:              ; preds = %bb.br
  %i.amo = lshr i32 %i.amk, 3
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = sub nsw i64 0, %i.amp
  %i.amr = getelementptr inbounds i8, ptr %i.amn, i64 %i.amq ; 2 uses
  store ptr %i.amr, ptr %i.akl, align 16, !tbaa !35
  %i.ams = and i32 %i.amk, 7
  %.val.i.i183 = load i64, ptr %i.amr, align 1, !tbaa !37 ; 2 uses
  store i64 %.val.i.i183, ptr %9, align 16, !tbaa !38
  br label %BIT_reloadDStream.exit190.thread

bb.bs:                                            ; preds = %bb.br
  %i.amt = icmp eq ptr %i.amn, %i.akp
  br i1 %i.amt, label %BIT_reloadDStream.exit190.thread, label %BIT_reloadDStream.exit190

BIT_reloadDStream.exit190:                        ; preds = %bb.bs
  %i.amu = lshr i32 %i.amk, 3                     ; 2 uses
  %i.amv = zext nneg i32 %i.amu to i64
  %i.amw = sub nsw i64 0, %i.amv
  %i.amx = getelementptr inbounds i8, ptr %i.amn, i64 %i.amw
  %i.amy = icmp uge ptr %i.amx, %i.akp
  %cond.fr241 = freeze i1 %i.amy                  ; 2 uses
  %i.amz = ptrtoint ptr %i.amn to i64
  %i.ana = sub i64 %i.amz, %i.akq
  %i.anb = trunc i64 %i.ana to i32
  %.020.i185 = select i1 %cond.fr241, i32 %i.amu, i32 %i.anb ; 2 uses
  %i.anc = zext i32 %.020.i185 to i64
  %i.and = sub nsw i64 0, %i.anc
  %i.ane = getelementptr inbounds i8, ptr %i.amn, i64 %i.and ; 2 uses
  store ptr %i.ane, ptr %i.akl, align 16, !tbaa !35
  %i.anf = shl i32 %.020.i185, 3
  %i.ang = sub i32 %i.amk, %i.anf
  %.val.i187 = load i64, ptr %i.ane, align 1, !tbaa !37 ; 2 uses
  store i64 %.val.i187, ptr %9, align 16, !tbaa !38
  %spec.select252 = select i1 %cond.fr241, i32 %.042.i293, i32 0
  br label %BIT_reloadDStream.exit190.thread

BIT_reloadDStream.exit190.thread:                 ; preds = %BIT_reloadDStream.exit190, %bb.bs, %.preheader274, %BIT_reloadDStream.exit190.thread244
  %.promoted286409 = phi i32 [ %i.amk, %bb.bs ], [ %i.ang, %BIT_reloadDStream.exit190 ], [ %i.ams, %BIT_reloadDStream.exit190.thread244 ], [ %i.amk, %.preheader274 ] ; 2 uses
  %.val102407 = phi i64 [ %.val102, %bb.bs ], [ %.val.i187, %BIT_reloadDStream.exit190 ], [ %.val.i.i183, %BIT_reloadDStream.exit190.thread244 ], [ %.val102, %.preheader274 ]
  %i.anh = phi i32 [ 0, %bb.bs ], [ %spec.select252, %BIT_reloadDStream.exit190 ], [ %.042.i293, %BIT_reloadDStream.exit190.thread244 ], [ 0, %.preheader274 ] ; 2 uses
  %.val102.1 = load i64, ptr %i.akr, align 8, !tbaa !38 ; 2 uses
  %i.ani = and i32 %26, 63
  %i.anj = zext nneg i32 %i.ani to i64
  %i.ank = shl i64 %.val102.1, %i.anj
  %i.anl = lshr i64 %i.ank, %i.akj
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.anl ; 2 uses
  %i.ann = load i16, ptr %i.anm, align 2, !tbaa !41
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anm, i64 2
  %i.anp = load i16, ptr %i.ano, align 2, !tbaa !42
  %i.anq = zext i16 %i.anp to i32
  %i.anr = add i32 %26, %i.anq                    ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.promoted288.1598, i64 2
  store i16 %i.ann, ptr %.promoted288.1598, align 2, !tbaa !18
  %i.ant = and i32 %i.anr, 63
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = shl i64 %.val102.1, %i.anu
  %i.anw = lshr i64 %i.anv, %i.akj
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.anw ; 2 uses
  %i.any = load i16, ptr %i.anx, align 2, !tbaa !41
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 2
  %i.aoa = load i16, ptr %i.anz, align 2, !tbaa !42
  %i.aob = zext i16 %i.aoa to i32
  %i.aoc = add i32 %i.anr, %i.aob                 ; 7 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.promoted288.1598, i64 4 ; 2 uses
  store i16 %i.any, ptr %i.ans, align 2, !tbaa !18
  %i.aoe = icmp ugt i32 %i.aoc, 64
  br i1 %i.aoe, label %BIT_reloadDStream.exit190.thread.1, label %bb.bt

bb.bt:                                            ; preds = %BIT_reloadDStream.exit190.thread
  %i.aof = load ptr, ptr %i.aku, align 8, !tbaa !35 ; 6 uses
  %.not.i181.1 = icmp ult ptr %i.aof, %i.akw
  br i1 %.not.i181.1, label %bb.bu, label %BIT_reloadDStream.exit190.thread244.1, !prof !43

BIT_reloadDStream.exit190.thread244.1:            ; preds = %bb.bt
  %i.aog = lshr i32 %i.aoc, 3
  %i.aoh = zext nneg i32 %i.aog to i64
  %i.aoi = sub nsw i64 0, %i.aoh
  %i.aoj = getelementptr inbounds i8, ptr %i.aof, i64 %i.aoi ; 2 uses
  store ptr %i.aoj, ptr %i.aku, align 8, !tbaa !35
  %i.aok = and i32 %i.aoc, 7
  %.val.i.i183.1 = load i64, ptr %i.aoj, align 1, !tbaa !37
  store i64 %.val.i.i183.1, ptr %i.akr, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit190.thread.1

bb.bu:                                            ; preds = %bb.bt
  %i.aol = icmp eq ptr %i.aof, %i.aky
  br i1 %i.aol, label %BIT_reloadDStream.exit190.thread.1, label %BIT_reloadDStream.exit190.1

BIT_reloadDStream.exit190.1:                      ; preds = %bb.bu
  %i.aom = lshr i32 %i.aoc, 3                     ; 2 uses
  %i.aon = zext nneg i32 %i.aom to i64
  %i.aoo = sub nsw i64 0, %i.aon
  %i.aop = getelementptr inbounds i8, ptr %i.aof, i64 %i.aoo
  %i.aoq = icmp uge ptr %i.aop, %i.aky
  %cond.fr241.1 = freeze i1 %i.aoq                ; 2 uses
  %i.aor = ptrtoint ptr %i.aof to i64
  %i.aos = sub i64 %i.aor, %i.akz
  %i.aot = trunc i64 %i.aos to i32
  %.020.i185.1 = select i1 %cond.fr241.1, i32 %i.aom, i32 %i.aot ; 2 uses
  %i.aou = zext i32 %.020.i185.1 to i64
  %i.aov = sub nsw i64 0, %i.aou
  %i.aow = getelementptr inbounds i8, ptr %i.aof, i64 %i.aov ; 2 uses
  store ptr %i.aow, ptr %i.aku, align 8, !tbaa !35
  %i.aox = shl i32 %.020.i185.1, 3
  %i.aoy = sub i32 %i.aoc, %i.aox
  %.val.i187.1 = load i64, ptr %i.aow, align 1, !tbaa !37
  store i64 %.val.i187.1, ptr %i.akr, align 8, !tbaa !38
  %spec.select252.1 = select i1 %cond.fr241.1, i32 %i.anh, i32 0
  br label %BIT_reloadDStream.exit190.thread.1

BIT_reloadDStream.exit190.thread.1:               ; preds = %BIT_reloadDStream.exit190.1, %bb.bu, %BIT_reloadDStream.exit190.thread244.1, %BIT_reloadDStream.exit190.thread
  %27 = phi i32 [ %i.aoc, %bb.bu ], [ %i.aoy, %BIT_reloadDStream.exit190.1 ], [ %i.aok, %BIT_reloadDStream.exit190.thread244.1 ], [ %i.aoc, %BIT_reloadDStream.exit190.thread ] ; 2 uses
  %i.aoz = phi i32 [ 0, %bb.bu ], [ %spec.select252.1, %BIT_reloadDStream.exit190.1 ], [ %i.anh, %BIT_reloadDStream.exit190.thread244.1 ], [ 0, %BIT_reloadDStream.exit190.thread ] ; 2 uses
  %.val102.2 = load i64, ptr %i.ala, align 16, !tbaa !38 ; 2 uses
  %i.apa = and i32 %25, 63
  %i.apb = zext nneg i32 %i.apa to i64
  %i.apc = shl i64 %.val102.2, %i.apb
  %i.apd = lshr i64 %i.apc, %i.akj
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apd ; 2 uses
  %i.apf = load i16, ptr %i.ape, align 2, !tbaa !41
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ape, i64 2
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !42
  %i.api = zext i16 %i.aph to i32
  %i.apj = add i32 %25, %i.api                    ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.promoted288.2601, i64 2
  store i16 %i.apf, ptr %.promoted288.2601, align 2, !tbaa !18
  %i.apl = and i32 %i.apj, 63
  %i.apm = zext nneg i32 %i.apl to i64
  %i.apn = shl i64 %.val102.2, %i.apm
  %i.apo = lshr i64 %i.apn, %i.akj
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apo ; 2 uses
  %i.apq = load i16, ptr %i.app, align 2, !tbaa !41
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 2
  %i.aps = load i16, ptr %i.apr, align 2, !tbaa !42
  %i.apt = zext i16 %i.aps to i32
  %i.apu = add i32 %i.apj, %i.apt                 ; 7 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.promoted288.2601, i64 4 ; 2 uses
  store i16 %i.apq, ptr %i.apk, align 2, !tbaa !18
  %i.apw = icmp ugt i32 %i.apu, 64
  br i1 %i.apw, label %BIT_reloadDStream.exit190.thread.2, label %bb.bv

bb.bv:                                            ; preds = %BIT_reloadDStream.exit190.thread.1
  %i.apx = load ptr, ptr %i.ald, align 16, !tbaa !35 ; 6 uses
  %.not.i181.2 = icmp ult ptr %i.apx, %i.alf
  br i1 %.not.i181.2, label %bb.bw, label %BIT_reloadDStream.exit190.thread244.2, !prof !43

BIT_reloadDStream.exit190.thread244.2:            ; preds = %bb.bv
  %i.apy = lshr i32 %i.apu, 3
  %i.apz = zext nneg i32 %i.apy to i64
  %i.aqa = sub nsw i64 0, %i.apz
  %i.aqb = getelementptr inbounds i8, ptr %i.apx, i64 %i.aqa ; 2 uses
  store ptr %i.aqb, ptr %i.ald, align 16, !tbaa !35
  %i.aqc = and i32 %i.apu, 7
  %.val.i.i183.2 = load i64, ptr %i.aqb, align 1, !tbaa !37
  store i64 %.val.i.i183.2, ptr %i.ala, align 16, !tbaa !38
  br label %BIT_reloadDStream.exit190.thread.2

bb.bw:                                            ; preds = %bb.bv
  %i.aqd = icmp eq ptr %i.apx, %i.alh
  br i1 %i.aqd, label %BIT_reloadDStream.exit190.thread.2, label %BIT_reloadDStream.exit190.2

BIT_reloadDStream.exit190.2:                      ; preds = %bb.bw
  %i.aqe = lshr i32 %i.apu, 3                     ; 2 uses
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = sub nsw i64 0, %i.aqf
  %i.aqh = getelementptr inbounds i8, ptr %i.apx, i64 %i.aqg
  %i.aqi = icmp uge ptr %i.aqh, %i.alh
  %cond.fr241.2 = freeze i1 %i.aqi                ; 2 uses
  %i.aqj = ptrtoint ptr %i.apx to i64
  %i.aqk = sub i64 %i.aqj, %i.ali
  %i.aql = trunc i64 %i.aqk to i32
  %.020.i185.2 = select i1 %cond.fr241.2, i32 %i.aqe, i32 %i.aql ; 2 uses
  %i.aqm = zext i32 %.020.i185.2 to i64
  %i.aqn = sub nsw i64 0, %i.aqm
  %i.aqo = getelementptr inbounds i8, ptr %i.apx, i64 %i.aqn ; 2 uses
  store ptr %i.aqo, ptr %i.ald, align 16, !tbaa !35
  %i.aqp = shl i32 %.020.i185.2, 3
  %i.aqq = sub i32 %i.apu, %i.aqp
  %.val.i187.2 = load i64, ptr %i.aqo, align 1, !tbaa !37
  store i64 %.val.i187.2, ptr %i.ala, align 16, !tbaa !38
  %spec.select252.2 = select i1 %cond.fr241.2, i32 %i.aoz, i32 0
  br label %BIT_reloadDStream.exit190.thread.2

BIT_reloadDStream.exit190.thread.2:               ; preds = %BIT_reloadDStream.exit190.2, %bb.bw, %BIT_reloadDStream.exit190.thread244.2, %BIT_reloadDStream.exit190.thread.1
  %28 = phi i32 [ %i.apu, %bb.bw ], [ %i.aqq, %BIT_reloadDStream.exit190.2 ], [ %i.aqc, %BIT_reloadDStream.exit190.thread244.2 ], [ %i.apu, %BIT_reloadDStream.exit190.thread.1 ] ; 2 uses
  %i.aqr = phi i32 [ 0, %bb.bw ], [ %spec.select252.2, %BIT_reloadDStream.exit190.2 ], [ %i.aoz, %BIT_reloadDStream.exit190.thread244.2 ], [ 0, %BIT_reloadDStream.exit190.thread.1 ] ; 2 uses
  %.val102.3 = load i64, ptr %i.alj, align 8, !tbaa !38 ; 2 uses
  %i.aqs = and i32 %24, 63
  %i.aqt = zext nneg i32 %i.aqs to i64
  %i.aqu = shl i64 %.val102.3, %i.aqt
  %i.aqv = lshr i64 %i.aqu, %i.akj
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqv ; 2 uses
  %i.aqx = load i16, ptr %i.aqw, align 2, !tbaa !41
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqw, i64 2
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !42
  %i.ara = zext i16 %i.aqz to i32
  %i.arb = add i32 %24, %i.ara                    ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.promoted288.3, i64 2
  store i16 %i.aqx, ptr %.promoted288.3, align 2, !tbaa !18
  %i.ard = and i32 %i.arb, 63
  %i.are = zext nneg i32 %i.ard to i64
  %i.arf = shl i64 %.val102.3, %i.are
  %i.arg = lshr i64 %i.arf, %i.akj
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.arg ; 2 uses
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !41
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 2
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !42
  %i.arl = zext i16 %i.ark to i32
  %i.arm = add i32 %i.arb, %i.arl                 ; 7 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.promoted288.3, i64 4 ; 3 uses
  store i16 %i.ari, ptr %i.arc, align 2, !tbaa !18
  %i.aro = icmp ugt i32 %i.arm, 64
  br i1 %i.aro, label %.loopexit276.loopexit, label %bb.bx

bb.bx:                                            ; preds = %BIT_reloadDStream.exit190.thread.2
  %i.arp = load ptr, ptr %i.all, align 8, !tbaa !35 ; 6 uses
  %.not.i181.3 = icmp ult ptr %i.arp, %i.aln
  br i1 %.not.i181.3, label %bb.by, label %BIT_reloadDStream.exit190.thread244.3, !prof !43

BIT_reloadDStream.exit190.thread244.3:            ; preds = %bb.bx
  %i.arq = lshr i32 %i.arm, 3
  %i.arr = zext nneg i32 %i.arq to i64
  %i.ars = sub nsw i64 0, %i.arr
  %i.art = getelementptr inbounds i8, ptr %i.arp, i64 %i.ars ; 2 uses
  store ptr %i.art, ptr %i.all, align 8, !tbaa !35
  %i.aru = and i32 %i.arm, 7
  %.val.i.i183.3 = load i64, ptr %i.art, align 1, !tbaa !37
  store i64 %.val.i.i183.3, ptr %i.alj, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit190.thread.3

bb.by:                                            ; preds = %bb.bx
  %i.arv = icmp eq ptr %i.arp, %i.alo
  br i1 %i.arv, label %.loopexit276.loopexit, label %BIT_reloadDStream.exit190.3

BIT_reloadDStream.exit190.3:                      ; preds = %bb.by
  %i.arw = lshr i32 %i.arm, 3                     ; 2 uses
  %i.arx = zext nneg i32 %i.arw to i64
  %i.ary = sub nsw i64 0, %i.arx
  %i.arz = getelementptr inbounds i8, ptr %i.arp, i64 %i.ary
  %i.asa = icmp uge ptr %i.arz, %i.alo
  %cond.fr241.3 = freeze i1 %i.asa                ; 2 uses
  %i.asb = ptrtoint ptr %i.arp to i64
  %i.asc = sub i64 %i.asb, %i.alp
  %i.asd = trunc i64 %i.asc to i32
  %.020.i185.3 = select i1 %cond.fr241.3, i32 %i.arw, i32 %i.asd ; 2 uses
  %i.ase = zext i32 %.020.i185.3 to i64
  %i.asf = sub nsw i64 0, %i.ase
  %i.asg = getelementptr inbounds i8, ptr %i.arp, i64 %i.asf ; 2 uses
  store ptr %i.asg, ptr %i.all, align 8, !tbaa !35
  %i.ash = shl i32 %.020.i185.3, 3
  %i.asi = sub i32 %i.arm, %i.ash
  %.val.i187.3 = load i64, ptr %i.asg, align 1, !tbaa !37
  store i64 %.val.i187.3, ptr %i.alj, align 8, !tbaa !38
  %spec.select252.3 = select i1 %cond.fr241.3, i32 %i.aqr, i32 0
  br label %BIT_reloadDStream.exit190.thread.3

BIT_reloadDStream.exit190.thread.3:               ; preds = %BIT_reloadDStream.exit190.3, %BIT_reloadDStream.exit190.thread244.3
  %29 = phi i32 [ %i.aru, %BIT_reloadDStream.exit190.thread244.3 ], [ %i.asi, %BIT_reloadDStream.exit190.3 ] ; 2 uses
  %i.asj = phi i32 [ %i.aqr, %BIT_reloadDStream.exit190.thread244.3 ], [ %spec.select252.3, %BIT_reloadDStream.exit190.3 ] ; 2 uses
  %i.ask = icmp uge ptr %i.arn, %i.ake
  %.not4647.i = icmp eq i32 %i.asj, 0
  %.not46.i = select i1 %i.ask, i1 true, i1 %.not4647.i
  br i1 %.not46.i, label %.loopexit276.loopexit, label %.preheader274, !llvm.loop !54

.loopexit276.loopexit:                            ; preds = %BIT_reloadDStream.exit190.thread.3, %bb.by, %BIT_reloadDStream.exit190.thread.2
  %30 = phi i32 [ %29, %BIT_reloadDStream.exit190.thread.3 ], [ %i.arm, %bb.by ], [ %i.arm, %BIT_reloadDStream.exit190.thread.2 ]
  store i32 %.promoted286409, ptr %.phi.trans.insert, align 8, !tbaa !39
  store ptr %i.aml, ptr %i.c, align 16, !tbaa !57
  store i32 %27, ptr %i.aks, align 16, !tbaa !39
  store ptr %i.aod, ptr %i.akt, align 8, !tbaa !57
  store i32 %28, ptr %i.alb, align 8, !tbaa !39
  store ptr %i.apv, ptr %i.alc, align 16, !tbaa !57
  store i32 %30, ptr %i.alk, align 16, !tbaa !39
  store ptr %i.arn, ptr %i.akf, align 8, !tbaa !57
  br label %.loopexit276

.loopexit276:                                     ; preds = %.loopexit276.loopexit, %bb.bq, %bb.bp
  %i.asl = sub nsw i32 0, %4
  %i.asm = and i32 %i.asl, 63
  %i.asn = zext nneg i32 %i.asm to i64            ; 3 uses
  br label %bb.bz

.ZS_largeHuffmanDecode_body.exit97.loopexit_crit_edge: ; preds = %bb.ch
  store i32 %i.awu, ptr %i.awi, align 8, !tbaa !39
  br label %ZS_largeHuffmanDecode_body.exit97.loopexit

ZS_largeHuffmanDecode_body.exit97.loopexit:       ; preds = %.ZS_largeHuffmanDecode_body.exit97.loopexit_crit_edge, %BIT_reloadDStream.exit210
  %exitcond386 = icmp eq i64 %indvars.iv.next384, 4
  br i1 %exitcond386, label %bb.cj, label %bb.bz, !llvm.loop !55

bb.bz:                                            ; preds = %.loopexit276, %ZS_largeHuffmanDecode_body.exit97.loopexit
  %indvars.iv383 = phi i64 [ 0, %.loopexit276 ], [ %indvars.iv.next384, %ZS_largeHuffmanDecode_body.exit97.loopexit ] ; 3 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv383
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !57 ; 5 uses
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 3 uses
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next384
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !57 ; 5 uses
  %i.ass = icmp ugt ptr %i.asp, %i.asr
  br i1 %i.ass, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ast = ptrtoint ptr %i.asr to i64
  %i.asu = ptrtoint ptr %i.asp to i64
  %i.asv = sub i64 %i.ast, %i.asu
  %i.asw = getelementptr inbounds nuw [40 x i8], ptr %9, i64 %indvars.iv383 ; 15 uses
  %.not.i91 = icmp ult i64 %i.asv, 3
  br i1 %.not.i91, label %.BIT_reloadDStream.exit200.thread_crit_edge, label %.preheader272

.BIT_reloadDStream.exit200.thread_crit_edge:      ; preds = %bb.ca
  %.phi.trans.insert413 = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  %.pre414 = load i32, ptr %.phi.trans.insert413, align 8, !tbaa !39
  br label %BIT_reloadDStream.exit200.thread

.preheader272:                                    ; preds = %bb.ca
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 24
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asw, i64 8 ; 3 uses
  %i.asz = load i32, ptr %i.asy, align 8, !tbaa !39 ; 3 uses
  %i.ata = icmp ugt i32 %i.asz, 64
  br i1 %i.ata, label %BIT_reloadDStream.exit200.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader272
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asw, i64 16 ; 3 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asw, i64 32
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !34
  %.pre = load ptr, ptr %i.atb, align 8, !tbaa !35
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph, %.preheader270
  %i.ate = phi ptr [ %.pre, %.lr.ph ], [ %storemerge.in, %.preheader270 ] ; 6 uses
  %i.atf = phi i32 [ %i.asz, %.lr.ph ], [ %i.auz, %.preheader270 ] ; 5 uses
  %.022.i92298 = phi ptr [ %i.asp, %.lr.ph ], [ %i.ava, %.preheader270 ] ; 6 uses
  %.not.i191 = icmp ult ptr %i.ate, %i.atd
  br i1 %.not.i191, label %bb.cc, label %BIT_reloadDStreamFast.exit.i192, !prof !43

BIT_reloadDStreamFast.exit.i192:                  ; preds = %bb.cb
  %i.atg = lshr i32 %i.atf, 3
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = sub nsw i64 0, %i.ath
  %i.atj = getelementptr inbounds i8, ptr %i.ate, i64 %i.ati ; 2 uses
  store ptr %i.atj, ptr %i.atb, align 8, !tbaa !35
  %i.atk = and i32 %i.atf, 7
  br label %BIT_reloadDStream.exit200

bb.cc:                                            ; preds = %bb.cb
  %i.atl = load ptr, ptr %i.asx, align 8, !tbaa !33 ; 3 uses
  %i.atm = icmp eq ptr %i.ate, %i.atl
  br i1 %i.atm, label %BIT_reloadDStream.exit200.thread.thread562, label %bb.cd

BIT_reloadDStream.exit200.thread.thread562:       ; preds = %bb.cc
  %i.atn = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ato = lshr i32 %i.atf, 3                     ; 2 uses
  %i.atp = zext nneg i32 %i.ato to i64
  %i.atq = sub nsw i64 0, %i.atp
  %i.atr = getelementptr inbounds i8, ptr %i.ate, i64 %i.atq
  %i.ats = icmp uge ptr %i.atr, %i.atl            ; 2 uses
  %i.att = ptrtoint ptr %i.ate to i64
  %i.atu = ptrtoint ptr %i.atl to i64
  %i.atv = sub i64 %i.att, %i.atu
  %i.atw = trunc i64 %i.atv to i32
  %.020.i195 = select i1 %i.ats, i32 %i.ato, i32 %i.atw ; 2 uses
  %i.atx = zext i32 %.020.i195 to i64
  %i.aty = sub nsw i64 0, %i.atx
  %i.atz = getelementptr inbounds i8, ptr %i.ate, i64 %i.aty ; 2 uses
  store ptr %i.atz, ptr %i.atb, align 8, !tbaa !35
  %i.aua = shl i32 %.020.i195, 3
  %i.aub = sub i32 %i.atf, %i.aua
  br label %BIT_reloadDStream.exit200

BIT_reloadDStream.exit200:                        ; preds = %BIT_reloadDStreamFast.exit.i192, %bb.cd
  %.promoted294 = phi i32 [ %i.atk, %BIT_reloadDStreamFast.exit.i192 ], [ %i.aub, %bb.cd ] ; 4 uses
  %storemerge.in = phi ptr [ %i.atj, %BIT_reloadDStreamFast.exit.i192 ], [ %i.atz, %bb.cd ] ; 2 uses
  %.021.i194 = phi i1 [ true, %BIT_reloadDStreamFast.exit.i192 ], [ %i.ats, %bb.cd ]
  store i32 %.promoted294, ptr %i.asy, align 8, !tbaa !39
  %storemerge = load i64, ptr %storemerge.in, align 1, !tbaa !37 ; 3 uses
  store i64 %storemerge, ptr %i.asw, align 8, !tbaa !38
  %i.auc = getelementptr inbounds nuw i8, ptr %.022.i92298, i64 4
  %i.aud = icmp ult ptr %i.auc, %i.asr
  %i.aue = and i1 %i.aud, %.021.i194
  br i1 %i.aue, label %.preheader270, label %BIT_reloadDStream.exit200.thread

.preheader270:                                    ; preds = %BIT_reloadDStream.exit200
  %i.auf = and i32 %.promoted294, 63
  %i.aug = zext nneg i32 %i.auf to i64
  %i.auh = shl i64 %storemerge, %i.aug
  %i.aui = lshr i64 %i.auh, %i.asn
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aui ; 2 uses
  %i.auk = load i16, ptr %i.auj, align 2, !tbaa !41
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auj, i64 2
  %i.aum = load i16, ptr %i.aul, align 2, !tbaa !42
  %i.aun = zext i16 %i.aum to i32
  %i.auo = add i32 %.promoted294, %i.aun          ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.022.i92298, i64 2
  store i16 %i.auk, ptr %.022.i92298, align 2, !tbaa !18
  %i.auq = and i32 %i.auo, 63
  %i.aur = zext nneg i32 %i.auq to i64
  %i.aus = shl i64 %storemerge, %i.aur
  %i.aut = lshr i64 %i.aus, %i.asn
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aut ; 2 uses
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !41
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auu, i64 2
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !42
  %i.auy = zext i16 %i.aux to i32
  %i.auz = add i32 %i.auo, %i.auy                 ; 4 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.022.i92298, i64 4 ; 2 uses
  store i16 %i.auv, ptr %i.aup, align 2, !tbaa !18
  store i32 %i.auz, ptr %i.asy, align 8, !tbaa !39
  %i.avb = icmp ugt i32 %i.auz, 64
  br i1 %i.avb, label %BIT_reloadDStream.exit200.thread.thread, label %bb.cb, !llvm.loop !0

BIT_reloadDStream.exit200.thread.thread:          ; preds = %.preheader270, %.preheader272
  %.ph559 = phi i32 [ %i.asz, %.preheader272 ], [ %i.auz, %.preheader270 ]
  %.2.i93.ph = phi ptr [ %i.asp, %.preheader272 ], [ %i.ava, %.preheader270 ]
  %i.avc = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  br label %BIT_reloadDStream.exit210

BIT_reloadDStream.exit200.thread:                 ; preds = %BIT_reloadDStream.exit200, %.BIT_reloadDStream.exit200.thread_crit_edge
  %i.avd = phi i32 [ %.pre414, %.BIT_reloadDStream.exit200.thread_crit_edge ], [ %.promoted294, %BIT_reloadDStream.exit200 ] ; 3 uses
  %.2.i93 = phi ptr [ %i.asp, %.BIT_reloadDStream.exit200.thread_crit_edge ], [ %.022.i92298, %BIT_reloadDStream.exit200 ] ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.asw, i64 8 ; 2 uses
  %i.avf = icmp ugt i32 %i.avd, 64
  br i1 %i.avf, label %BIT_reloadDStream.exit210, label %bb.ce

bb.ce:                                            ; preds = %BIT_reloadDStream.exit200.thread.thread562, %BIT_reloadDStream.exit200.thread
  %i.avg = phi ptr [ %i.atn, %BIT_reloadDStream.exit200.thread.thread562 ], [ %i.ave, %BIT_reloadDStream.exit200.thread ] ; 5 uses
  %.2.i93564 = phi ptr [ %.022.i92298, %BIT_reloadDStream.exit200.thread.thread562 ], [ %.2.i93, %BIT_reloadDStream.exit200.thread ] ; 3 uses
  %i.avh = phi i32 [ %i.atf, %BIT_reloadDStream.exit200.thread.thread562 ], [ %i.avd, %BIT_reloadDStream.exit200.thread ] ; 5 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.asw, i64 16 ; 3 uses
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !35 ; 6 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.asw, i64 32
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !34
  %.not.i201 = icmp ult ptr %i.avj, %i.avl
  br i1 %.not.i201, label %bb.cf, label %BIT_reloadDStreamFast.exit.i202, !prof !43

BIT_reloadDStreamFast.exit.i202:                  ; preds = %bb.ce
  %i.avm = lshr i32 %i.avh, 3
  %i.avn = zext nneg i32 %i.avm to i64
  %i.avo = sub nsw i64 0, %i.avn
  %i.avp = getelementptr inbounds i8, ptr %i.avj, i64 %i.avo ; 2 uses
  store ptr %i.avp, ptr %i.avi, align 8, !tbaa !35
  %i.avq = and i32 %i.avh, 7                      ; 2 uses
  store i32 %i.avq, ptr %i.avg, align 8, !tbaa !39
  %.val.i.i203 = load i64, ptr %i.avp, align 1, !tbaa !37
  store i64 %.val.i.i203, ptr %i.asw, align 8, !tbaa !38
  br label %BIT_reloadDStream.exit210

bb.cf:                                            ; preds = %bb.ce
  %i.avr = getelementptr inbounds nuw i8, ptr %i.asw, i64 24
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !33 ; 3 uses
  %i.avt = icmp eq ptr %i.avj, %i.avs
  br i1 %i.avt, label %BIT_reloadDStream.exit210, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.avu = lshr i32 %i.avh, 3                     ; 2 uses
  %i.avv = zext nneg i32 %i.avu to i64
  %i.avw = sub nsw i64 0, %i.avv
  %i.avx = getelementptr inbounds i8, ptr %i.avj, i64 %i.avw
  %i.avy = icmp ult ptr %i.avx, %i.avs
  %i.avz = ptrtoint ptr %i.avj to i64
  %i.awa = ptrtoint ptr %i.avs to i64
  %i.awb = sub i64 %i.avz, %i.awa
  %i.awc = trunc i64 %i.awb to i32
  %.020.i205 = select i1 %i.avy, i32 %i.awc, i32 %i.avu ; 2 uses
  %i.awd = zext i32 %.020.i205 to i64
  %i.awe = sub nsw i64 0, %i.awd
  %i.awf = getelementptr inbounds i8, ptr %i.avj, i64 %i.awe ; 2 uses
  store ptr %i.awf, ptr %i.avi, align 8, !tbaa !35
  %i.awg = shl i32 %.020.i205, 3
  %i.awh = sub i32 %i.avh, %i.awg                 ; 2 uses
  store i32 %i.awh, ptr %i.avg, align 8, !tbaa !39
  %.val.i207 = load i64, ptr %i.awf, align 1, !tbaa !37
end_hunk_0
