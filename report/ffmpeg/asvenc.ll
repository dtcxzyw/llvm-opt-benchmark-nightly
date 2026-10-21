Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asvenc?download=true
inline.NumInlined: 26
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@encode_frame:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 512 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 640 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 768 ; 2 uses
  %i.at = load i32, ptr %i.ag, align 16, !tbaa !69 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.preheader, label %._crit_edge85

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.av = phi i32 [ %i.be, %._crit_edge ], [ %i.ae, %.preheader.lr.ph ]
  %i.aw = phi i32 [ %i.bf, %._crit_edge ], [ %i.at, %.preheader.lr.ph ] ; 2 uses
  %.07584 = phi i32 [ %i.bg, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ay = shl nuw nsw i32 %.07584, 4
  %i.az = shl nuw nsw i32 %.07584, 3              ; 2 uses
  br label %bb.c

._crit_edge85:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  %i.ba = phi i32 [ %i.ae, %bb.b ], [ %i.ae, %.preheader.lr.ph ], [ %i.be, %._crit_edge ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !70
  %i.bd = and i32 %i.bc, 15                       ; 2 uses
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.f, label %bb.d

._crit_edge.loopexit:                             ; preds = %dct_get.exit
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.be = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.av, %.preheader ] ; 3 uses
  %i.bf = phi i32 [ %i.dc, %._crit_edge.loopexit ], [ %i.aw, %.preheader ]
  %i.bg = add nuw nsw i32 %.07584, 1              ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.be
  br i1 %i.bh, label %.preheader, label %._crit_edge85, !llvm.loop !54

bb.c:                                             ; preds = %.lr.ph, %dct_get.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %dct_get.exit ] ; 3 uses
  %i.bi = load i32, ptr %i.ai, align 8, !tbaa !41 ; 3 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !47
  %i.bk = mul nsw i32 %i.ay, %i.bi
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl
  %i.bn = shl nuw nsw i64 %indvars.iv, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.bq = load i32, ptr %i.ak, align 4, !tbaa !41
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.bs = load i32, ptr %i.am, align 8, !tbaa !41
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.bu = sext i32 %i.bi to i64                   ; 4 uses
  tail call void %i.bt(ptr noundef nonnull %i.ah, ptr noundef %i.bo, i64 noundef %i.bu) #9, !inline_history !55
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  tail call void %i.bv(ptr noundef nonnull %i.an, ptr noundef nonnull %i.bw, i64 noundef %i.bu) #9, !inline_history !55
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.by = shl nsw i32 %i.bi, 3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz ; 2 uses
  tail call void %i.bx(ptr noundef nonnull %i.ao, ptr noundef %i.ca, i64 noundef %i.bu) #9, !inline_history !55
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  tail call void %i.cb(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.cc, i64 noundef %i.bu) #9, !inline_history !55
  %i.cd = load ptr, ptr %i.aq, align 16, !tbaa !38
  tail call void %i.cd(ptr noundef nonnull %i.ah) #9, !inline_history !55
  %i.ce = load ptr, ptr %i.aq, align 16, !tbaa !38
  tail call void %i.ce(ptr noundef nonnull %i.an) #9, !inline_history !55
  %i.cf = load ptr, ptr %i.aq, align 16, !tbaa !38
  tail call void %i.cf(ptr noundef nonnull %i.ao) #9, !inline_history !55
  %i.cg = load ptr, ptr %i.aq, align 16, !tbaa !38
  tail call void %i.cg(ptr noundef nonnull %i.ap) #9, !inline_history !55
  %i.ch = load ptr, ptr %i.d, align 16, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !49
  %i.ck = and i32 %i.cj, 8192
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %.loopexit.loopexit.i, label %dct_get.exit

.loopexit.loopexit.i:                             ; preds = %bb.c
  %i.cl = mul nsw i32 %i.bs, %i.az
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.br, i64 %i.cm
  %i.co = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = mul nsw i32 %i.bq, %i.az
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.bp, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.co
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.cv = load i32, ptr %i.ak, align 4, !tbaa !41
  %i.cw = sext i32 %i.cv to i64
  tail call void %i.cu(ptr noundef nonnull %i.ar, ptr noundef %i.ct, i64 noundef %i.cw) #9, !inline_history !55
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.cy = load i32, ptr %i.am, align 8, !tbaa !41
  %i.cz = sext i32 %i.cy to i64
  tail call void %i.cx(ptr noundef nonnull %i.as, ptr noundef %i.cp, i64 noundef %i.cz) #9, !inline_history !55
  %i.da = load ptr, ptr %i.aq, align 16, !tbaa !38
  tail call void %i.da(ptr noundef nonnull %i.ar) #9, !inline_history !55
  %i.db = load ptr, ptr %i.aq, align 16, !tbaa !38
  tail call void %i.db(ptr noundef nonnull %i.as) #9, !inline_history !55
  br label %dct_get.exit

dct_get.exit:                                     ; preds = %bb.c, %.loopexit.loopexit.i
  tail call fastcc void @encode_mb(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ah)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load i32, ptr %i.ag, align 16, !tbaa !69 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.de, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !56

bb.d:                                             ; preds = %._crit_edge85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.df = load ptr, ptr %2, align 8, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !69 ; 2 uses
  %i.di = shl nsw i32 %i.dh, 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 %i.dj ; 2 uses
  store ptr %i.dk, ptr %i.a, align 16, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !47
  %i.do = shl nsw i32 %i.dh, 3
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.dp ; 2 uses
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !47
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dp ; 2 uses
  store ptr %i.du, ptr %i.dr, align 16, !tbaa !47
  %i.dv = icmp sgt i32 %i.ba, 0
  br i1 %i.dv, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %bb.d
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.e

._crit_edge89:                                    ; preds = %bb.e, %bb.d
  %i.dz = phi i32 [ %i.ba, %bb.d ], [ %i.eq, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph88, %bb.e
  %.07386 = phi i32 [ 0, %.lr.ph88 ], [ %i.ep, %bb.e ]
  %i.ea = phi ptr [ %i.dk, %.lr.ph88 ], [ %i.eg, %bb.e ]
  %i.eb = phi ptr [ %i.dq, %.lr.ph88 ], [ %i.ek, %bb.e ]
  %i.ec = phi ptr [ %i.du, %.lr.ph88 ], [ %i.eo, %bb.e ]
  call fastcc void @handle_partial_mb(ptr noundef nonnull %i.d, ptr noundef %i.a, ptr noundef nonnull %i.dw, i32 noundef %i.bd, i32 noundef 16)
  %i.ed = load i32, ptr %i.dw, align 8, !tbaa !41
  %i.ee = shl nsw i32 %i.ed, 4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ea, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.a, align 16, !tbaa !47
  %i.eh = load i32, ptr %i.dx, align 4, !tbaa !41
  %i.ei = shl nsw i32 %i.eh, 3
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eb, i64 %i.ej ; 2 uses
  store ptr %i.ek, ptr %i.dl, align 8, !tbaa !47
  %i.el = load i32, ptr %i.dy, align 8, !tbaa !41
  %i.em = shl nsw i32 %i.el, 3
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ec, i64 %i.en ; 2 uses
  store ptr %i.eo, ptr %i.dr, align 16, !tbaa !47
  %i.ep = add nuw nsw i32 %.07386, 1              ; 2 uses
  %i.eq = load i32, ptr %i.ad, align 4, !tbaa !68 ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.e, label %._crit_edge89, !llvm.loop !57

bb.f:                                             ; preds = %._crit_edge89, %._crit_edge85
  %i.es = phi i32 [ %i.dz, %._crit_edge89 ], [ %i.ba, %._crit_edge85 ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !72
  %i.ev = and i32 %i.eu, 15                       ; 3 uses
  %.not78 = icmp eq i32 %i.ev, 0
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ew = load ptr, ptr %2, align 8, !tbaa !47
  %i.ex = shl nsw i32 %i.es, 4
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !41
  %i.fa = mul nsw i32 %i.ex, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ew, i64 %i.fb ; 2 uses
  store ptr %i.fc, ptr %i.b, align 16, !tbaa !47
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !47
  %i.fg = shl nsw i32 %i.es, 3                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !41
  %i.fj = mul nsw i32 %i.fi, %i.fg
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.ff, i64 %i.fk ; 2 uses
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !41
  %i.fr = mul nsw i32 %i.fq, %i.fg
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %i.fs ; 2 uses
  store ptr %i.ft, ptr %i.fm, align 16, !tbaa !47
  %i.fu = load i32, ptr %i.bb, align 8, !tbaa !70 ; 3 uses
  call fastcc void @handle_partial_mb(ptr noundef %i.d, ptr noundef %i.b, ptr noundef nonnull %i.ey, i32 noundef %i.fu, i32 noundef %i.ev)
  %i.fv = icmp slt i32 %i.fu, 17
  br i1 %i.fv, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %.lr.ph92, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.h

.lr.ph92:                                         ; preds = %bb.g, %.lr.ph92
  %.090 = phi i32 [ %i.fy, %.lr.ph92 ], [ %i.fu, %bb.g ] ; 2 uses
  %4 = phi ptr [ %6, %.lr.ph92 ], [ %i.fc, %bb.g ]
  %5 = phi ptr [ %7, %.lr.ph92 ], [ %i.fl, %bb.g ]
  %i.fw = phi ptr [ %i.fx, %.lr.ph92 ], [ %i.ft, %bb.g ]
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %6, ptr %i.b, align 16, !tbaa !47
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %7, ptr %i.fd, align 8, !tbaa !47
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  store ptr %i.fx, ptr %i.fm, align 16, !tbaa !47
  %i.fy = add nsw i32 %.090, -16                  ; 2 uses
  call fastcc void @handle_partial_mb(ptr noundef %i.d, ptr noundef %i.b, ptr noundef nonnull %i.ey, i32 noundef %i.fy, i32 noundef %i.ev)
  %i.fz = icmp samesign ult i32 %.090, 33
  br i1 %i.fz, label %._crit_edge93, label %.lr.ph92

bb.h:                                             ; preds = %._crit_edge93, %bb.f
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !29
  %i.gc = icmp eq i32 %i.gb, 31
  %i.gd = load i32, ptr %i.ac, align 4, !tbaa !45 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 32                  ; 2 uses
  br i1 %i.gc, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.ge, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.gf = load i32, ptr %i.r, align 8, !tbaa !46
  %i.gg = shl i32 %i.gf, %i.gd                    ; 2 uses
  store i32 %i.gg, ptr %i.r, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %i.gh = phi i32 [ %i.gp, %bb.l ], [ %i.gg, %.lr.ph.i ]
  %i.gi = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 3 uses
  %i.gj = load ptr, ptr %i.aa, align 16, !tbaa !43
  %i.gk = icmp ult ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 160) #9
  tail call void @abort() #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.gl = lshr i32 %i.gh, 24
  %i.gm = trunc nuw i32 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gn, ptr %i.ab, align 8, !tbaa !44
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !30
  %i.go = load i32, ptr %i.r, align 8, !tbaa !46
  %i.gp = shl i32 %i.go, 8                        ; 2 uses
  store i32 %i.gp, ptr %i.r, align 8, !tbaa !46
  %i.gq = load i32, ptr %i.ac, align 4, !tbaa !45 ; 2 uses
  %i.gr = add nsw i32 %i.gq, 8
  store i32 %i.gr, ptr %i.ac, align 4, !tbaa !45
  %i.gs = icmp slt i32 %i.gq, 24
  br i1 %i.gs, label %bb.j, label %flush_put_bits.exit, !llvm.loop !58

bb.m:                                             ; preds = %bb.h
  br i1 %i.ge, label %.lr.ph.i81, label %flush_put_bits.exit

.lr.ph.i81:                                       ; preds = %bb.m, %bb.o
  %i.gt = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 3 uses
  %i.gu = load ptr, ptr %i.aa, align 16, !tbaa !43
  %i.gv = icmp ult ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i81
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 177) #9
  tail call void @abort() #10
  unreachable

bb.o:                                             ; preds = %.lr.ph.i81
  %i.gw = load i32, ptr %i.r, align 8, !tbaa !46
  %i.gx = trunc i32 %i.gw to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  store ptr %i.gy, ptr %i.ab, align 8, !tbaa !44
  store i8 %i.gx, ptr %i.gt, align 1, !tbaa !30
  %i.gz = load i32, ptr %i.r, align 8, !tbaa !46
  %i.ha = lshr i32 %i.gz, 8
  store i32 %i.ha, ptr %i.r, align 8, !tbaa !46
  %i.hb = load i32, ptr %i.ac, align 4, !tbaa !45 ; 2 uses
  %i.hc = add nsw i32 %i.hb, 8
  store i32 %i.hc, ptr %i.ac, align 4, !tbaa !45
  %i.hd = icmp slt i32 %i.hb, 24
  br i1 %i.hd, label %.lr.ph.i81, label %flush_put_bits.exit, !llvm.loop !59

flush_put_bits.exit:                              ; preds = %bb.o, %bb.l, %bb.m, %bb.i
  store i32 32, ptr %i.ac, align 4, !tbaa !45
  store i32 0, ptr %i.r, align 8, !tbaa !46
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !44
  store i32 0, ptr %.val, align 1, !tbaa !30
  %.val79 = load ptr, ptr %i.x, align 16, !tbaa !67
  %.val80 = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.he = ptrtoint ptr %.val80 to i64
  %i.hf = ptrtoint ptr %.val79 to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = add nsw i32 %i.hh, 3
  %i.hj = sdiv i32 %i.hi, 4                       ; 2 uses
  %i.hk = load i32, ptr %i.ga, align 8, !tbaa !29
  %i.hl = icmp eq i32 %i.hk, 31
  br i1 %i.hl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %flush_put_bits.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !73
  %i.ho = load ptr, ptr %i.s, align 8, !tbaa !65  ; 2 uses
  tail call void %i.hn(ptr noundef %i.ho, ptr noundef %i.ho, i32 noundef %i.hj) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %flush_put_bits.exit
  %i.hp = shl nsw i32 %i.hj, 2
  store i32 %i.hp, ptr %i.u, align 8, !tbaa !66
  store i32 1, ptr %3, align 4, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.076 = phi i32 [ 0, %bb.q ], [ %i.m, %bb.a ]
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_asv_common_init(ptr noundef) local_unnamed_addr #3

declare hidden void @ff_fdctdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_pixblockdsp_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

declare hidden void @ff_fdct_ifast(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @encode_mb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 43 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 18 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 3 uses
  %i.j = sub nsw i32 32, %i.i
  %i.k = ashr i32 %i.j, 3
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %i.g, %i.l
  %i.n = sub i64 %i.f, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 704
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 202) #9
  tail call void @abort() #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 16, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29
  %i.t = icmp eq i32 %i.s, 31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 10 uses
  br i1 %i.t, label %.preheader, label %.preheader25

.preheader:                                       ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %asv1_encode_block.exit
  %i.v = phi i32 [ %i.i, %.preheader ], [ %i.jf, %asv1_encode_block.exit ] ; 4 uses
  %i.w = phi i32 [ %.pre, %.preheader ], [ %.026.i.i73.i, %asv1_encode_block.exit ] ; 2 uses
  %indvars.iv36 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next37, %asv1_encode_block.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv36 ; 6 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !40
  %i.z = sext i16 %i.y to i32
  %i.aa = add nsw i32 %i.z, 32
  %i.ab = ashr i32 %i.aa, 6                       ; 4 uses
  %i.ac = icmp sgt i32 %i.v, 8
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = shl i32 %i.w, 8
  %i.ae = or i32 %i.ab, %i.ad
  br label %put_bits.exit.i

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !43
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 3
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = shl i32 %i.w, %i.v
  %i.am = sub nsw i32 8, %i.v
end_hunk_0
