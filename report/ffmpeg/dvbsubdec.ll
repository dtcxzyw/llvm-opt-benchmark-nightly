Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvbsubdec?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dvbsub_parse_pixel_data_block:bb.a
  %.pre227 = load i32, ptr %i.v, align 4, !tbaa !70
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !69  ; 2 uses
  %.not81 = icmp slt i32 %.070179, %i.ac
  %.pre228 = load i32, ptr %i.v, align 4, !tbaa !70 ; 2 uses
  br i1 %.not81, label %bb.f, label %split

bb.f:                                             ; preds = %._crit_edge226, %bb.e
  %i.ad = phi i32 [ %.pre227, %._crit_edge226 ], [ %.pre228, %bb.e ] ; 2 uses
  %.not82 = icmp slt i32 %.068180, %i.ad
  br i1 %.not82, label %bb.g, label %._crit_edge224

._crit_edge224:                                   ; preds = %bb.f
  %.pre = load i32, ptr %i.u, align 8, !tbaa !69
  br label %split

split:                                            ; preds = %bb.e, %._crit_edge224
  %i.ae = phi i32 [ %i.ad, %._crit_edge224 ], [ %.pre228, %bb.e ]
  %i.af = phi i32 [ %.pre, %._crit_edge224 ], [ %i.ac, %bb.e ]
  %i.ag = zext i8 %i.ab to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %.070179, i32 noundef %i.af, i32 noundef %.068180, i32 noundef %i.ae, i32 noundef %i.ag) #9
  br label %bb.cu

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.0131178, i64 1 ; 37 uses
  switch i8 %i.ab, label %bb.cs [
    i8 16, label %bb.h
    i8 17, label %bb.as
    i8 18, label %bb.ca
    i8 32, label %bb.cq
    i8 33, label %.preheader.preheader
    i8 34, label %.preheader139.preheader
    i8 -16, label %bb.cr
  ]

.preheader139.preheader:                          ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0131178, i64 17
  %i.aj = load <16 x i8>, ptr %i.ah, align 1, !tbaa !42
  store <16 x i8> %i.aj, ptr %i.c, align 16, !tbaa !42
  br label %dvbsub_read_2bit_string.exit

.preheader.preheader:                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.0131178, i64 5
  %i.al = load <4 x i8>, ptr %i.ah, align 1, !tbaa !42
  store <4 x i8> %i.al, ptr %i.b, align 4, !tbaa !42
  br label %dvbsub_read_2bit_string.exit

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.z, align 8, !tbaa !74
  switch i32 %i.am, label %bb.j [
    i32 8, label %bb.k
    i32 4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ %i.a, %bb.i ], [ %i.b, %bb.h ] ; 7 uses
  %i.an = load i32, ptr %i.u, align 8, !tbaa !69  ; 8 uses
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.aa, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = shl i32 %i.aq, 3                        ; 4 uses
  %or.cond.i.i = icmp ult i32 %i.ar, 2147483135
  %i.as = add nuw nsw i32 %i.ar, 8
  %i.at = select i1 %or.cond.i.i, i32 %i.as, i32 8 ; 11 uses
  %i.au = icmp sgt i32 %i.ar, 0
  %i.av = icmp slt i32 %.070179, %i.an
  %i.aw = and i1 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph190.i, label %._crit_edge.i

.lr.ph190.i:                                      ; preds = %bb.k
  %i.ax = mul nsw i32 %i.an, %.068180
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.n, i64 %i.ay
  %i.ba = sext i32 %.070179 to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %.not119.i = icmp eq ptr %.0, null              ; 6 uses
  %i.bc = add nsw i32 %i.an, -1                   ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph190.i
  %.0189.i = phi i32 [ %.070179, %.lr.ph190.i ], [ %.5.i, %.loopexit.i ] ; 22 uses
  %.097188.i = phi ptr [ %i.bb, %.lr.ph190.i ], [ %.6.i, %.loopexit.i ] ; 20 uses
  %.sroa.14.0187.i = phi i32 [ 0, %.lr.ph190.i ], [ %.sroa.14.1.i, %.loopexit.i ] ; 3 uses
  %i.bd = lshr i32 %.sroa.14.0187.i, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !42
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bi = and i32 %.sroa.14.0187.i, 7
  %i.bj = shl i32 %i.bh, %i.bi
  %i.bk = lshr i32 %i.bj, 30                      ; 4 uses
  %i.bl = add i32 %.sroa.14.0187.i, 2
  %i.bm = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.bl) ; 5 uses
  %.not112.i = icmp eq i32 %i.bk, 0
  br i1 %.not112.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp ne i32 %i.bk, 1
  %or.cond.i = or i1 %.not97.i, %i.bn
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %.not119.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = zext nneg i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !42
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.br = trunc nuw nsw i32 %i.bk to i8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink.i = phi i8 [ %i.bq, %bb.o ], [ %i.br, %bb.p ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.097188.i, i64 1
  store i8 %.sink.i, ptr %.097188.i, align 1, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i, %bb.m
  %.198.i = phi ptr [ %.097188.i, %bb.m ], [ %i.bs, %.sink.split.i ]
  %i.bt = add nsw i32 %.0189.i, 1
  br label %.loopexit.i

bb.r:                                             ; preds = %bb.l
  %i.bu = lshr i32 %i.bm, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !42
  %i.by = icmp slt i32 %i.bm, %i.at
  %i.bz = zext i1 %i.by to i32
  %spec.select.i.i = add nuw i32 %i.bm, %i.bz     ; 6 uses
  %i.ca = zext i8 %i.bx to i32
  %i.cb = and i32 %i.bm, 7
  %i.cc = lshr exact i32 128, %i.cb
  %i.cd = and i32 %i.cc, %i.ca
  %.not113.i = icmp eq i32 %i.cd, 0
  %i.ce = lshr i32 %spec.select.i.i, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cf ; 2 uses
  br i1 %.not113.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !42
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = and i32 %spec.select.i.i, 7
  %i.ck = shl i32 %i.ci, %i.cj
  %i.cl = lshr i32 %i.ck, 29                      ; 2 uses
  %i.cm = add i32 %spec.select.i.i, 3
  %i.cn = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.cm) ; 3 uses
  %i.co = lshr i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !42
  %i.cs = call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.ct = and i32 %i.cn, 7
  %i.cu = shl i32 %i.cs, %i.ct
  %i.cv = lshr i32 %i.cu, 30                      ; 3 uses
  %i.cw = add nuw i32 %i.cn, 2
  %i.cx = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.cw) ; 3 uses
  %i.cy = icmp ne i32 %i.cv, 1
  %or.cond3.not.i = select i1 %.not97.i, i1 true, i1 %i.cy
  br i1 %or.cond3.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = add i32 %.0189.i, 3
  %i.da = add i32 %i.cz, %i.cl
  br label %.loopexit.i

bb.u:                                             ; preds = %bb.s
  br i1 %.not119.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = zext nneg i32 %i.cv to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.0, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !42
  %i.de = zext i8 %i.dd to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.091.i = phi i32 [ %i.de, %bb.v ], [ %i.cv, %bb.u ]
  %i.df = icmp slt i32 %.0189.i, %i.an
  br i1 %i.df, label %.lr.ph.i85, label %.loopexit.i

.lr.ph.i85:                                       ; preds = %bb.w
  %i.dg = trunc nuw i32 %.091.i to i8
  %narrow.i = add nuw nsw i32 %i.cl, 2
  %i.dh = sub i32 %i.bc, %.0189.i
  %i.di = call i32 @llvm.umin.i32(i32 %narrow.i, i32 %i.dh) ; 2 uses
  %umin.i = zext nneg i32 %i.di to i64            ; 2 uses
  %i.dj = add nuw nsw i64 %umin.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.097188.i, i8 %i.dg, i64 %i.dj, i1 false), !tbaa !42
  %scevgep.i = getelementptr i8, ptr %.097188.i, i64 1
  %scevgep208.i = getelementptr i8, ptr %scevgep.i, i64 %umin.i
  %i.dk = add nsw i32 %.0189.i, 1
  %i.dl = add i32 %i.dk, %i.di
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.r
  %i.dm = load i8, ptr %i.cg, align 1, !tbaa !42
  %i.dn = icmp slt i32 %spec.select.i.i, %i.at
  %i.do = zext i1 %i.dn to i32
  %spec.select.i122.i = add i32 %spec.select.i.i, %i.do ; 4 uses
  %i.dp = zext i8 %i.dm to i32
  %i.dq = and i32 %spec.select.i.i, 7
  %i.dr = lshr exact i32 128, %i.dq
  %i.ds = and i32 %i.dr, %i.dp
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  %i.du = lshr i32 %spec.select.i122.i, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !42
  %i.dy = call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = and i32 %spec.select.i122.i, 7
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 30
  %i.ec = add i32 %spec.select.i122.i, 2
  %i.ed = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.ec) ; 9 uses
  switch i32 %i.eb, label %.unreachabledefault [
    i32 2, label %bb.z
    i32 3, label %bb.ae
    i32 1, label %bb.aj
    i32 0, label %bb.am
  ]

bb.z:                                             ; preds = %bb.y
  %i.ee = lshr i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !42
  %i.ei = call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = and i32 %i.ed, 7
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = lshr i32 %i.ek, 28                      ; 2 uses
  %i.em = add nuw i32 %i.ed, 4
  %i.en = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.em) ; 3 uses
  %i.eo = lshr i32 %i.en, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 1, !tbaa !42
  %i.es = call i32 @llvm.bswap.i32(i32 %i.er)
  %i.et = and i32 %i.en, 7
  %i.eu = shl i32 %i.es, %i.et
  %i.ev = lshr i32 %i.eu, 30                      ; 3 uses
  %i.ew = add nuw i32 %i.en, 2
  %i.ex = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.ew) ; 3 uses
  %i.ey = icmp ne i32 %i.ev, 1
  %or.cond5.not.i = select i1 %.not97.i, i1 true, i1 %i.ey
  br i1 %or.cond5.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = add i32 %.0189.i, 12
  %i.fa = add i32 %i.ez, %i.el
  br label %.loopexit.i

bb.ab:                                            ; preds = %bb.z
  br i1 %.not119.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = zext nneg i32 %i.ev to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.0, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !42
  %i.fe = zext i8 %i.fd to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.192.i = phi i32 [ %i.fe, %bb.ac ], [ %i.ev, %bb.ab ]
  %i.ff = icmp slt i32 %.0189.i, %i.an
  br i1 %i.ff, label %.lr.ph184.i, label %.loopexit.i

.lr.ph184.i:                                      ; preds = %bb.ad
  %i.fg = trunc nuw i32 %.192.i to i8
  %narrow237.i = add nuw nsw i32 %i.el, 11
  %i.fh = sub i32 %i.bc, %.0189.i
  %i.fi = call i32 @llvm.umin.i32(i32 %narrow237.i, i32 %i.fh) ; 2 uses
  %umin220.i = zext nneg i32 %i.fi to i64         ; 2 uses
  %i.fj = add nuw nsw i64 %umin220.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.097188.i, i8 %i.fg, i64 %i.fj, i1 false), !tbaa !42
  %scevgep221.i = getelementptr i8, ptr %.097188.i, i64 1
  %scevgep223.i = getelementptr i8, ptr %scevgep221.i, i64 %umin220.i
  %i.fk = add nsw i32 %.0189.i, 1
  %i.fl = add i32 %i.fk, %i.fi
  br label %.loopexit.i

bb.ae:                                            ; preds = %bb.y
  %i.fm = lshr i32 %i.ed, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 1, !tbaa !42
  %i.fq = call i32 @llvm.bswap.i32(i32 %i.fp)
  %i.fr = and i32 %i.ed, 7
  %i.fs = shl i32 %i.fq, %i.fr
  %i.ft = lshr i32 %i.fs, 24                      ; 2 uses
  %i.fu = add nuw i32 %i.ed, 8
  %i.fv = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.fu) ; 3 uses
  %i.fw = lshr i32 %i.fv, 3
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 1, !tbaa !42
  %i.ga = call i32 @llvm.bswap.i32(i32 %i.fz)
  %i.gb = and i32 %i.fv, 7
  %i.gc = shl i32 %i.ga, %i.gb
  %i.gd = lshr i32 %i.gc, 30                      ; 3 uses
  %i.ge = add nuw i32 %i.fv, 2
  %i.gf = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.ge) ; 3 uses
  %i.gg = icmp ne i32 %i.gd, 1
  %or.cond7.not.i = select i1 %.not97.i, i1 true, i1 %i.gg
  br i1 %or.cond7.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gh = add i32 %.0189.i, 29
  %i.gi = add i32 %i.gh, %i.ft
  br label %.loopexit.i

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not119.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = zext nneg i32 %i.gd to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.0, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !42
  %i.gm = zext i8 %i.gl to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.293.i = phi i32 [ %i.gm, %bb.ah ], [ %i.gd, %bb.ag ]
  %i.gn = icmp slt i32 %.0189.i, %i.an
  br i1 %i.gn, label %.lr.ph178.i, label %.loopexit.i

.lr.ph178.i:                                      ; preds = %bb.ai
  %i.go = trunc nuw i32 %.293.i to i8
  %narrow235.i = add nuw nsw i32 %i.ft, 28
  %i.gp = sub i32 %i.bc, %.0189.i
  %i.gq = call i32 @llvm.umin.i32(i32 %narrow235.i, i32 %i.gp) ; 2 uses
  %umin215.i = zext nneg i32 %i.gq to i64         ; 2 uses
  %i.gr = add nuw nsw i64 %umin215.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.097188.i, i8 %i.go, i64 %i.gr, i1 false), !tbaa !42
  %scevgep216.i = getelementptr i8, ptr %.097188.i, i64 1
  %scevgep218.i = getelementptr i8, ptr %scevgep216.i, i64 %umin215.i
  %i.gs = add nsw i32 %.0189.i, 1
  %i.gt = add i32 %i.gs, %i.gq
  br label %.loopexit.i

bb.aj:                                            ; preds = %bb.y
  br i1 %.not119.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gu = load i8, ptr %.0, align 4, !tbaa !42
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.394.i = phi i8 [ %i.gu, %bb.ak ], [ 0, %bb.aj ]
  %i.gv = icmp slt i32 %.0189.i, %i.an
  br i1 %i.gv, label %.lr.ph172.preheader.i, label %.loopexit.i

.lr.ph172.preheader.i:                            ; preds = %bb.al
  %i.gw = icmp ne i32 %i.bc, %.0189.i             ; 3 uses
  %umin210.i = zext i1 %i.gw to i64
  %i.gx = select i1 %i.gw, i64 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.097188.i, i8 %.394.i, i64 %i.gx, i1 false), !tbaa !42
  %scevgep211.i = getelementptr i8, ptr %.097188.i, i64 1
  %scevgep213.i = getelementptr i8, ptr %scevgep211.i, i64 %umin210.i
  %i.gy = add nsw i32 %.0189.i, 1
  %umin214.i = zext i1 %i.gw to i32
  %i.gz = add i32 %i.gy, %umin214.i
  br label %.loopexit.i

.unreachabledefault:                              ; preds = %bb.y
  unreachable

default.unreachable:                              ; preds = %bb.bl
  unreachable

bb.am:                                            ; preds = %bb.y
  %i.ha = add nuw nsw i32 %i.ed, 7
  %i.hb = lshr i32 %i.ha, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.hc
  br label %dvbsub_read_2bit_string.exit

bb.an:                                            ; preds = %bb.x
  br i1 %.not119.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.he = load i8, ptr %.0, align 4, !tbaa !42
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.495.i = phi i8 [ %i.he, %bb.ao ], [ 0, %bb.an ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.097188.i, i64 1
  store i8 %.495.i, ptr %.097188.i, align 1, !tbaa !42
  %i.hg = add nsw i32 %.0189.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ap, %.lr.ph172.preheader.i, %bb.al, %.lr.ph178.i, %bb.ai, %bb.af, %.lr.ph184.i, %bb.ad, %bb.aa, %.lr.ph.i85, %bb.w, %bb.t, %bb.q
  %.sroa.14.1.i = phi i32 [ %i.ex, %bb.aa ], [ %i.bm, %bb.q ], [ %i.gf, %bb.af ], [ %i.ed, %bb.al ], [ %i.ex, %bb.ad ], [ %spec.select.i122.i, %bb.ap ], [ %i.cx, %bb.t ], [ %i.gf, %bb.ai ], [ %i.cx, %bb.w ], [ %i.ex, %.lr.ph184.i ], [ %i.gf, %.lr.ph178.i ], [ %i.ed, %.lr.ph172.preheader.i ], [ %i.cx, %.lr.ph.i85 ] ; 3 uses
  %.6.i = phi ptr [ %.097188.i, %bb.aa ], [ %.198.i, %bb.q ], [ %.097188.i, %bb.af ], [ %.097188.i, %bb.al ], [ %.097188.i, %bb.ad ], [ %i.hf, %bb.ap ], [ %.097188.i, %bb.t ], [ %.097188.i, %bb.ai ], [ %.097188.i, %bb.w ], [ %scevgep223.i, %.lr.ph184.i ], [ %scevgep218.i, %.lr.ph178.i ], [ %scevgep213.i, %.lr.ph172.preheader.i ], [ %scevgep208.i, %.lr.ph.i85 ]
  %.5.i = phi i32 [ %i.fa, %bb.aa ], [ %i.bt, %bb.q ], [ %i.gi, %bb.af ], [ %.0189.i, %bb.al ], [ %.0189.i, %bb.ad ], [ %i.hg, %bb.ap ], [ %i.da, %bb.t ], [ %.0189.i, %bb.ai ], [ %.0189.i, %bb.w ], [ %i.fl, %.lr.ph184.i ], [ %i.gt, %.lr.ph178.i ], [ %i.gz, %.lr.ph172.preheader.i ], [ %i.dl, %.lr.ph.i85 ] ; 3 uses
  %i.hh = icmp slt i32 %.sroa.14.1.i, %i.ar
  %i.hi = icmp slt i32 %.5.i, %i.an
  %i.hj = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %i.hj, label %bb.l, label %._crit_edge.i, !llvm.loop !158

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.k
  %.sroa.14.0.lcssa.i = phi i32 [ 0, %bb.k ], [ %.sroa.14.1.i, %.loopexit.i ] ; 3 uses
  %.0.lcssa.i83 = phi i32 [ %.070179, %bb.k ], [ %.5.i, %.loopexit.i ]
  %i.hk = lshr i32 %.sroa.14.0.lcssa.i, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 1, !tbaa !42
  %i.ho = call i32 @llvm.bswap.i32(i32 %i.hn)
  %i.hp = and i32 %.sroa.14.0.lcssa.i, 7
  %i.hq = shl i32 %i.ho, %i.hp
  %i.hr = add i32 %.sroa.14.0.lcssa.i, 6
  %i.hs = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.hr)
  %.not.i84 = icmp ult i32 %i.hq, 67108864
  br i1 %.not.i84, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.32) #9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i
  %i.ht = add nsw i32 %i.hs, 7
  %i.hu = ashr i32 %i.ht, 3
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %i.ah, i64 %i.hv
  br label %dvbsub_read_2bit_string.exit

bb.as:                                            ; preds = %bb.g
  %i.hx = load i32, ptr %i.z, align 8, !tbaa !74  ; 3 uses
  %i.hy = icmp slt i32 %i.hx, 4
  br i1 %i.hy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.hx) #9
  br label %bb.cu

bb.au:                                            ; preds = %bb.as
  %.not = icmp eq i32 %i.hx, 8                    ; 7 uses
  %i.hz = load i32, ptr %i.u, align 8, !tbaa !69  ; 9 uses
  %i.ia = ptrtoint ptr %i.ah to i64
  %i.ib = sub i64 %i.aa, %i.ia
  %i.ic = trunc i64 %i.ib to i32
  %i.id = shl i32 %i.ic, 3                        ; 4 uses
  %or.cond.i.i86 = icmp ult i32 %i.id, 2147483135
  %i.ie = add nuw nsw i32 %i.id, 8
  %i.if = select i1 %or.cond.i.i86, i32 %i.ie, i32 8 ; 11 uses
  %i.ig = icmp sgt i32 %i.id, 0
  %i.ih = icmp slt i32 %.070179, %i.hz
  %i.ii = and i1 %i.ig, %i.ih
  br i1 %i.ii, label %.lr.ph214.i, label %._crit_edge.i88

.lr.ph214.i:                                      ; preds = %bb.au
  %i.ij = mul nsw i32 %i.hz, %.068180
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %i.n, i64 %i.ik
  %i.im = sext i32 %.070179 to i64
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 %i.im
  %i.io = add nsw i32 %i.hz, -1                   ; 5 uses
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i93, %.lr.ph214.i
  %.0213.i = phi i32 [ %.070179, %.lr.ph214.i ], [ %.6.i94, %.loopexit.i93 ] ; 26 uses
  %.0109212.i = phi ptr [ %i.in, %.lr.ph214.i ], [ %.7.i, %.loopexit.i93 ] ; 23 uses
  %.sroa.15.0211.i = phi i32 [ 0, %.lr.ph214.i ], [ %.sroa.15.1.i, %.loopexit.i93 ] ; 3 uses
  %i.ip = lshr i32 %.sroa.15.0211.i, 3
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 1, !tbaa !42
  %i.it = call i32 @llvm.bswap.i32(i32 %i.is)
  %i.iu = and i32 %.sroa.15.0211.i, 7
  %i.iv = shl i32 %i.it, %i.iu
  %i.iw = lshr i32 %i.iv, 28                      ; 4 uses
  %i.ix = add i32 %.sroa.15.0211.i, 4
  %i.iy = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.ix) ; 5 uses
  %.not127.i = icmp eq i32 %i.iw, 0
  br i1 %.not127.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iz = icmp ne i32 %i.iw, 1
  %or.cond.i92 = or i1 %.not97.i, %i.iz
  br i1 %or.cond.i92, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ja = zext nneg i32 %i.iw to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !42
  br label %.sink.split.i95

bb.az:                                            ; preds = %bb.ax
  %i.jd = trunc nuw nsw i32 %i.iw to i8
  br label %.sink.split.i95

.sink.split.i95:                                  ; preds = %bb.az, %bb.ay
  %.sink.i96 = phi i8 [ %i.jc, %bb.ay ], [ %i.jd, %bb.az ]
  %i.je = getelementptr inbounds nuw i8, ptr %.0109212.i, i64 1
  store i8 %.sink.i96, ptr %.0109212.i, align 1, !tbaa !42
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i95, %bb.aw
  %.1110.i = phi ptr [ %.0109212.i, %bb.aw ], [ %i.je, %.sink.split.i95 ]
  %i.jf = add nsw i32 %.0213.i, 1
  br label %.loopexit.i93

bb.bb:                                            ; preds = %bb.av
  %i.jg = lshr i32 %i.iy, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !42
  %i.jk = icmp slt i32 %i.iy, %i.if
  %i.jl = zext i1 %i.jk to i32
  %spec.select.i.i97 = add nuw i32 %i.iy, %i.jl   ; 6 uses
  %i.jm = zext i8 %i.jj to i32
  %i.jn = and i32 %i.iy, 7
  %i.jo = lshr exact i32 128, %i.jn
  %i.jp = and i32 %i.jo, %i.jm
  %i.jq = icmp eq i32 %i.jp, 0
  %i.jr = lshr i32 %spec.select.i.i97, 3
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.js ; 2 uses
  br i1 %i.jq, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ju = load i32, ptr %i.jt, align 1, !tbaa !42
  %i.jv = call i32 @llvm.bswap.i32(i32 %i.ju)
  %i.jw = and i32 %spec.select.i.i97, 7
  %i.jx = shl i32 %i.jv, %i.jw
  %i.jy = lshr i32 %i.jx, 29                      ; 2 uses
  %i.jz = add i32 %spec.select.i.i97, 3
  %i.ka = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.jz) ; 3 uses
  %i.kb = icmp eq i32 %i.jy, 0
  br i1 %i.kb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kc = add nuw nsw i32 %i.ka, 7
  %i.kd = lshr i32 %i.kc, 3
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ke
  br label %dvbsub_read_2bit_string.exit

bb.be:                                            ; preds = %bb.bc
  %i.kg = icmp slt i32 %.0213.i, %i.hz
  br i1 %i.kg, label %.lr.ph208.preheader.i, label %.loopexit.i93

.lr.ph208.preheader.i:                            ; preds = %bb.be
  %i.kh = load i8, ptr %i.c, align 16
  %spec.select = select i1 %.not, i8 %i.kh, i8 0
  %narrow270.i = add nuw nsw i32 %i.jy, 1
  %i.ki = sub i32 %i.io, %.0213.i
  %i.kj = call i32 @llvm.umin.i32(i32 %narrow270.i, i32 %i.ki) ; 2 uses
  %umin251.i = zext nneg i32 %i.kj to i64         ; 2 uses
  %i.kk = add nuw nsw i64 %umin251.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109212.i, i8 %spec.select, i64 %i.kk, i1 false), !tbaa !42
  %scevgep252.i = getelementptr i8, ptr %.0109212.i, i64 1
  %scevgep254.i = getelementptr i8, ptr %scevgep252.i, i64 %umin251.i
  %i.kl = add nsw i32 %.0213.i, 1
  %i.km = add i32 %i.kl, %i.kj
  br label %.loopexit.i93

bb.bf:                                            ; preds = %bb.bb
  %i.kn = load i8, ptr %i.jt, align 1, !tbaa !42
  %i.ko = icmp slt i32 %spec.select.i.i97, %i.if
  %i.kp = zext i1 %i.ko to i32
  %spec.select.i137.i = add i32 %spec.select.i.i97, %i.kp ; 3 uses
  %i.kq = zext i8 %i.kn to i32
  %i.kr = and i32 %spec.select.i.i97, 7
  %i.ks = lshr exact i32 128, %i.kr
  %i.kt = and i32 %i.ks, %i.kq
  %i.ku = icmp eq i32 %i.kt, 0
  %i.kv = lshr i32 %spec.select.i137.i, 3
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 1, !tbaa !42
  %i.kz = call i32 @llvm.bswap.i32(i32 %i.ky)
  %i.la = and i32 %spec.select.i137.i, 7
  %i.lb = shl i32 %i.kz, %i.la
  %i.lc = lshr i32 %i.lb, 30                      ; 3 uses
  %i.ld = add i32 %spec.select.i137.i, 2
  %i.le = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.ld) ; 12 uses
  br i1 %i.ku, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.lf = lshr i32 %i.le, 3
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 1, !tbaa !42
  %i.lj = call i32 @llvm.bswap.i32(i32 %i.li)
  %i.lk = and i32 %i.le, 7
  %i.ll = shl i32 %i.lj, %i.lk
  %i.lm = lshr i32 %i.ll, 28                      ; 3 uses
  %i.ln = add nuw i32 %i.le, 4
  %i.lo = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.ln) ; 3 uses
  %i.lp = icmp ne i32 %i.lm, 1
  %or.cond3.not.i105 = select i1 %.not97.i, i1 true, i1 %i.lp
  br i1 %or.cond3.not.i105, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lq = add i32 %.0213.i, 4
  %i.lr = add i32 %i.lq, %i.lc
  br label %.loopexit.i93

bb.bi:                                            ; preds = %bb.bg
  br i1 %.not, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ls = zext nneg i32 %i.lm to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !42
  %i.lv = zext i8 %i.lu to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1103.i = phi i32 [ %i.lv, %bb.bj ], [ %i.lm, %bb.bi ]
  %i.lw = icmp slt i32 %.0213.i, %i.hz
  br i1 %i.lw, label %.lr.ph202.i, label %.loopexit.i93

.lr.ph202.i:                                      ; preds = %bb.bk
  %i.lx = trunc nuw i32 %.1103.i to i8
  %narrow269.i = add nuw nsw i32 %i.lc, 3
  %i.ly = sub i32 %i.io, %.0213.i
  %i.lz = call i32 @llvm.umin.i32(i32 %narrow269.i, i32 %i.ly) ; 2 uses
  %umin246.i = zext nneg i32 %i.lz to i64         ; 2 uses
  %i.ma = add nuw nsw i64 %umin246.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109212.i, i8 %i.lx, i64 %i.ma, i1 false), !tbaa !42
  %scevgep247.i = getelementptr i8, ptr %.0109212.i, i64 1
  %scevgep249.i = getelementptr i8, ptr %scevgep247.i, i64 %umin246.i
  %i.mb = add nsw i32 %.0213.i, 1
  %i.mc = add i32 %i.mb, %i.lz
  br label %.loopexit.i93

bb.bl:                                            ; preds = %bb.bf
  switch i32 %i.lc, label %default.unreachable [
    i32 2, label %bb.bm
    i32 3, label %bb.br
    i32 1, label %bb.bw
    i32 0, label %bb.bx
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.md = lshr i32 %i.le, 3
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 1, !tbaa !42
  %i.mh = call i32 @llvm.bswap.i32(i32 %i.mg)
  %i.mi = and i32 %i.le, 7
  %i.mj = shl i32 %i.mh, %i.mi
  %i.mk = lshr i32 %i.mj, 28                      ; 2 uses
  %i.ml = add nuw i32 %i.le, 4
  %i.mm = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.ml) ; 3 uses
  %i.mn = lshr i32 %i.mm, 3
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 1, !tbaa !42
  %i.mr = call i32 @llvm.bswap.i32(i32 %i.mq)
  %i.ms = and i32 %i.mm, 7
  %i.mt = shl i32 %i.mr, %i.ms
  %i.mu = lshr i32 %i.mt, 28                      ; 3 uses
  %i.mv = add nuw i32 %i.mm, 4
  %i.mw = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.mv) ; 3 uses
  %i.mx = icmp ne i32 %i.mu, 1
  %or.cond5.not.i103 = select i1 %.not97.i, i1 true, i1 %i.mx
  br i1 %or.cond5.not.i103, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.my = add i32 %.0213.i, 9
  %i.mz = add i32 %i.my, %i.mk
  br label %.loopexit.i93

bb.bo:                                            ; preds = %bb.bm
  br i1 %.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.na = zext nneg i32 %i.mu to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !42
  %i.nd = zext i8 %i.nc to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.2104.i = phi i32 [ %i.nd, %bb.bp ], [ %i.mu, %bb.bo ]
  %i.ne = icmp slt i32 %.0213.i, %i.hz
  br i1 %i.ne, label %.lr.ph196.i, label %.loopexit.i93

.lr.ph196.i:                                      ; preds = %bb.bq
  %i.nf = trunc nuw i32 %.2104.i to i8
  %narrow267.i = add nuw nsw i32 %i.mk, 8
  %i.ng = sub i32 %i.io, %.0213.i
  %i.nh = call i32 @llvm.umin.i32(i32 %narrow267.i, i32 %i.ng) ; 2 uses
  %umin241.i = zext nneg i32 %i.nh to i64         ; 2 uses
  %i.ni = add nuw nsw i64 %umin241.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109212.i, i8 %i.nf, i64 %i.ni, i1 false), !tbaa !42
  %scevgep242.i = getelementptr i8, ptr %.0109212.i, i64 1
  %scevgep244.i = getelementptr i8, ptr %scevgep242.i, i64 %umin241.i
  %i.nj = add nsw i32 %.0213.i, 1
  %i.nk = add i32 %i.nj, %i.nh
  br label %.loopexit.i93

bb.br:                                            ; preds = %bb.bl
  %i.nl = lshr i32 %i.le, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 1, !tbaa !42
  %i.np = call i32 @llvm.bswap.i32(i32 %i.no)
  %i.nq = and i32 %i.le, 7
  %i.nr = shl i32 %i.np, %i.nq
  %i.ns = lshr i32 %i.nr, 24                      ; 2 uses
  %i.nt = add nuw i32 %i.le, 8
  %i.nu = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.nt) ; 3 uses
  %i.nv = lshr i32 %i.nu, 3
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 1, !tbaa !42
  %i.nz = call i32 @llvm.bswap.i32(i32 %i.ny)
  %i.oa = and i32 %i.nu, 7
  %i.ob = shl i32 %i.nz, %i.oa
  %i.oc = lshr i32 %i.ob, 28                      ; 3 uses
  %i.od = add nuw i32 %i.nu, 4
  %i.oe = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.od) ; 3 uses
  %i.of = icmp ne i32 %i.oc, 1
  %or.cond7.not.i100 = select i1 %.not97.i, i1 true, i1 %i.of
  br i1 %or.cond7.not.i100, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.og = add i32 %.0213.i, 25
  %i.oh = add i32 %i.og, %i.ns
  br label %.loopexit.i93

bb.bt:                                            ; preds = %bb.br
  br i1 %.not, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.oi = zext nneg i32 %i.oc to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !42
  %i.ol = zext i8 %i.ok to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.3105.i = phi i32 [ %i.ol, %bb.bu ], [ %i.oc, %bb.bt ]
  %i.om = icmp slt i32 %.0213.i, %i.hz
  br i1 %i.om, label %.lr.ph190.i101, label %.loopexit.i93

.lr.ph190.i101:                                   ; preds = %bb.bv
  %i.on = trunc nuw i32 %.3105.i to i8
  %narrow.i102 = add nuw nsw i32 %i.ns, 24
  %i.oo = sub i32 %i.io, %.0213.i
  %i.op = call i32 @llvm.umin.i32(i32 %narrow.i102, i32 %i.oo) ; 2 uses
  %umin236.i = zext nneg i32 %i.op to i64         ; 2 uses
  %i.oq = add nuw nsw i64 %umin236.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109212.i, i8 %i.on, i64 %i.oq, i1 false), !tbaa !42
  %scevgep237.i = getelementptr i8, ptr %.0109212.i, i64 1
  %scevgep239.i = getelementptr i8, ptr %scevgep237.i, i64 %umin236.i
  %i.or = add nsw i32 %.0213.i, 1
  %i.os = add i32 %i.or, %i.op
  br label %.loopexit.i93

bb.bw:                                            ; preds = %bb.bl
  %i.ot = icmp slt i32 %.0213.i, %i.hz
  br i1 %i.ot, label %.lr.ph.preheader.i, label %.loopexit.i93

.lr.ph.preheader.i:                               ; preds = %bb.bw
  %i.ou = load i8, ptr %i.c, align 16
  %spec.select134 = select i1 %.not, i8 %i.ou, i8 0
  %i.ov = icmp ne i32 %i.io, %.0213.i             ; 3 uses
  %umin.i98 = zext i1 %i.ov to i64
  %i.ow = select i1 %i.ov, i64 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109212.i, i8 %spec.select134, i64 %i.ow, i1 false), !tbaa !42
  %scevgep.i99 = getelementptr i8, ptr %.0109212.i, i64 1
  %scevgep234.i = getelementptr i8, ptr %scevgep.i99, i64 %umin.i98
  %i.ox = add nsw i32 %.0213.i, 1
  %umin235.i = zext i1 %i.ov to i32
  %i.oy = add i32 %i.ox, %umin235.i
  br label %.loopexit.i93

bb.bx:                                            ; preds = %bb.bl
  %i.oz = load i8, ptr %i.c, align 16
  %spec.select135 = select i1 %.not, i8 %i.oz, i8 0
  %i.pa = getelementptr inbounds nuw i8, ptr %.0109212.i, i64 1
  store i8 %spec.select135, ptr %.0109212.i, align 1, !tbaa !42
  %i.pb = add nsw i32 %.0213.i, 1
  br label %.loopexit.i93

.loopexit.i93:                                    ; preds = %bb.bx, %.lr.ph.preheader.i, %bb.bw, %.lr.ph190.i101, %bb.bv, %bb.bs, %.lr.ph196.i, %bb.bq, %bb.bn, %.lr.ph202.i, %bb.bk, %bb.bh, %.lr.ph208.preheader.i, %bb.be, %bb.ba
  %.sroa.15.1.i = phi i32 [ %i.iy, %bb.ba ], [ %i.lo, %bb.bh ], [ %i.oe, %bb.bv ], [ %i.le, %bb.bx ], [ %i.mw, %bb.bn ], [ %i.ka, %bb.be ], [ %i.oe, %bb.bs ], [ %i.lo, %bb.bk ], [ %i.mw, %bb.bq ], [ %i.le, %bb.bw ], [ %i.ka, %.lr.ph208.preheader.i ], [ %i.lo, %.lr.ph202.i ], [ %i.mw, %.lr.ph196.i ], [ %i.oe, %.lr.ph190.i101 ], [ %i.le, %.lr.ph.preheader.i ] ; 3 uses
  %.7.i = phi ptr [ %.1110.i, %bb.ba ], [ %.0109212.i, %bb.bh ], [ %.0109212.i, %bb.bv ], [ %i.pa, %bb.bx ], [ %.0109212.i, %bb.bn ], [ %.0109212.i, %bb.be ], [ %.0109212.i, %bb.bs ], [ %.0109212.i, %bb.bk ], [ %.0109212.i, %bb.bq ], [ %.0109212.i, %bb.bw ], [ %scevgep254.i, %.lr.ph208.preheader.i ], [ %scevgep249.i, %.lr.ph202.i ], [ %scevgep244.i, %.lr.ph196.i ], [ %scevgep239.i, %.lr.ph190.i101 ], [ %scevgep234.i, %.lr.ph.preheader.i ]
  %.6.i94 = phi i32 [ %i.jf, %bb.ba ], [ %i.lr, %bb.bh ], [ %.0213.i, %bb.bv ], [ %i.pb, %bb.bx ], [ %i.mz, %bb.bn ], [ %.0213.i, %bb.be ], [ %i.oh, %bb.bs ], [ %.0213.i, %bb.bk ], [ %.0213.i, %bb.bq ], [ %.0213.i, %bb.bw ], [ %i.km, %.lr.ph208.preheader.i ], [ %i.mc, %.lr.ph202.i ], [ %i.nk, %.lr.ph196.i ], [ %i.os, %.lr.ph190.i101 ], [ %i.oy, %.lr.ph.preheader.i ] ; 3 uses
  %i.pc = icmp slt i32 %.sroa.15.1.i, %i.id
  %i.pd = icmp slt i32 %.6.i94, %i.hz
  %i.pe = select i1 %i.pc, i1 %i.pd, i1 false
  br i1 %i.pe, label %bb.av, label %._crit_edge.i88, !llvm.loop !159

._crit_edge.i88:                                  ; preds = %.loopexit.i93, %bb.au
  %.sroa.15.0.lcssa.i = phi i32 [ 0, %bb.au ], [ %.sroa.15.1.i, %.loopexit.i93 ] ; 3 uses
  %.0.lcssa.i89 = phi i32 [ %.070179, %bb.au ], [ %.6.i94, %.loopexit.i93 ]
  %i.pf = lshr i32 %.sroa.15.0.lcssa.i, 3
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 1, !tbaa !42
  %i.pj = call i32 @llvm.bswap.i32(i32 %i.pi)
  %i.pk = and i32 %.sroa.15.0.lcssa.i, 7
  %i.pl = shl i32 %i.pj, %i.pk
  %i.pm = add i32 %.sroa.15.0.lcssa.i, 8
  %i.pn = call i32 @llvm.umin.i32(i32 %i.if, i32 %i.pm)
  %.not.i90 = icmp ult i32 %i.pl, 16777216
  br i1 %.not.i90, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i88
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.32) #9
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge.i88
  %i.po = add nsw i32 %i.pn, 7
  %i.pp = ashr i32 %i.po, 3
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds i8, ptr %i.ah, i64 %i.pq
  br label %dvbsub_read_2bit_string.exit

bb.ca:                                            ; preds = %bb.g
  %i.ps = load i32, ptr %i.z, align 8, !tbaa !74  ; 2 uses
  %i.pt = icmp slt i32 %i.ps, 8
  br i1 %i.pt, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.ps) #9
  br label %bb.cu

bb.cc:                                            ; preds = %bb.ca
  %i.pu = load i32, ptr %i.u, align 8, !tbaa !69  ; 8 uses
  %i.pv = mul nsw i32 %i.pu, %.068180
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds i8, ptr %i.n, i64 %i.pw
  %i.py = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.pz = sub i64 %i.aa, %i.py                    ; 2 uses
  %i.qa = trunc i64 %i.pz to i32                  ; 2 uses
  %i.qb = icmp sgt i32 %i.qa, -1
  br i1 %i.qb, label %bytestream2_init.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 141) #9
  call void @abort() #11
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.cc
  %i.qc = and i64 %i.pz, 2147483647               ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.qc ; 6 uses
  %i.qe = ptrtoint ptr %i.qd to i64               ; 8 uses
  %i.qf = icmp ne i32 %i.qa, 0
  %i.qg = icmp slt i32 %.070179, %i.pu
  %i.qh = and i1 %i.qf, %i.qg
  br i1 %i.qh, label %.lr.ph45.i, label %._crit_edge.i107

.lr.ph45.i:                                       ; preds = %bytestream2_init.exit.i
  %i.qi = sext i32 %.070179 to i64
  %i.qj = getelementptr inbounds i8, ptr %i.px, i64 %i.qi ; 2 uses
  br i1 %.not97.i, label %.lr.ph45.split.us.split.us.i, label %.lr.ph45.split.split.i

.lr.ph45.split.us.split.us.i:                     ; preds = %.lr.ph45.i, %.loopexit.us.us.i
  %.044.us.us.i = phi i32 [ %.2.us.us.i, %.loopexit.us.us.i ], [ %.070179, %.lr.ph45.i ]
  %.05543.us.us.i = phi ptr [ %.3.us.us.i, %.loopexit.us.us.i ], [ %i.qj, %.lr.ph45.i ] ; 5 uses
  %.sroa.0.042.us.us.i = phi ptr [ %.sroa.0.4.us.us.i, %.loopexit.us.us.i ], [ %i.ah, %.lr.ph45.i ] ; 4 uses
  %.044.us.us.fr.i = freeze i32 %.044.us.us.i     ; 7 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0.042.us.us.i, i64 1 ; 3 uses
  %i.ql = load i8, ptr %.sroa.0.042.us.us.i, align 1, !tbaa !42 ; 2 uses
  %.not63.us.us.i = icmp eq i8 %i.ql, 0
  br i1 %.not63.us.us.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph45.split.us.split.us.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.05543.us.us.i, i64 1
  store i8 %i.ql, ptr %.05543.us.us.i, align 1, !tbaa !42
  %i.qn = add nsw i32 %.044.us.us.fr.i, 1
  br label %.loopexit.us.us.i

bb.cf:                                            ; preds = %.lr.ph45.split.us.split.us.i
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qe, %i.qo
  %i.qq = icmp slt i64 %i.qp, 1
  br i1 %i.qq, label %.thread.i, label %bytestream2_get_byte.exit69.us.us.i

bytestream2_get_byte.exit69.us.us.i:              ; preds = %bb.cf
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.042.us.us.i, i64 2 ; 4 uses
  %i.qs = load i8, ptr %i.qk, align 1, !tbaa !42  ; 2 uses
  %i.qt = and i8 %i.qs, 127                       ; 3 uses
  %i.qu = zext nneg i8 %i.qt to i32
  %i.qv = icmp sgt i8 %i.qs, -1
  br i1 %i.qv, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bytestream2_get_byte.exit69.us.us.i
  %i.qw = ptrtoint ptr %i.qr to i64
  %i.qx = sub i64 %i.qe, %i.qw
  %i.qy = icmp slt i64 %i.qx, 1
  br i1 %i.qy, label %bytestream2_get_byte.exit67.us.us.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0.042.us.us.i, i64 3
  %i.ra = load i8, ptr %i.qr, align 1, !tbaa !42
  br label %bytestream2_get_byte.exit67.us.us.i

bb.ci:                                            ; preds = %bytestream2_get_byte.exit69.us.us.i
  %i.rb = icmp eq i8 %i.qt, 0
  br i1 %i.rb, label %.thread.i, label %bytestream2_get_byte.exit67.us.us.i

bytestream2_get_byte.exit67.us.us.i:              ; preds = %bb.ci, %bb.ch, %bb.cg
  %.sroa.0.3.us.us.i = phi ptr [ %i.qr, %bb.ci ], [ %i.qz, %bb.ch ], [ %i.qd, %bb.cg ] ; 2 uses
  %.052.us.us.i = phi i8 [ 0, %bb.ci ], [ %i.ra, %bb.ch ], [ 0, %bb.cg ]
  %i.rc = icmp ne i8 %i.qt, 0
  %i.rd = icmp slt i32 %.044.us.us.fr.i, %i.pu
  %i.re = and i1 %i.rd, %i.rc
  br i1 %i.re, label %.lr.ph.us.us.i, label %.loopexit.us.us.i

.lr.ph.us.us.i:                                   ; preds = %bytestream2_get_byte.exit67.us.us.i
  %i.rf = xor i32 %.044.us.us.fr.i, -1
  %i.rg = add i32 %i.pu, %i.rf
  %i.rh = add nsw i32 %i.qu, -1
  %i.ri = call i32 @llvm.umin.i32(i32 %i.rg, i32 %i.rh) ; 2 uses
  %umin112.i = zext nneg i32 %i.ri to i64         ; 2 uses
  %i.rj = add nuw nsw i64 %umin112.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.05543.us.us.i, i8 %.052.us.us.i, i64 %i.rj, i1 false), !tbaa !42
  %scevgep113.i = getelementptr i8, ptr %.05543.us.us.i, i64 1
  %scevgep115.i = getelementptr i8, ptr %scevgep113.i, i64 %umin112.i
  %i.rk = add nsw i32 %.044.us.us.fr.i, 1
  %i.rl = add i32 %i.rk, %i.ri
  br label %.loopexit.us.us.i

.loopexit.us.us.i:                                ; preds = %.lr.ph.us.us.i, %bytestream2_get_byte.exit67.us.us.i, %bb.ce
  %.sroa.0.4.us.us.i = phi ptr [ %i.qk, %bb.ce ], [ %.sroa.0.3.us.us.i, %bytestream2_get_byte.exit67.us.us.i ], [ %.sroa.0.3.us.us.i, %.lr.ph.us.us.i ] ; 3 uses
  %.3.us.us.i = phi ptr [ %i.qm, %bb.ce ], [ %.05543.us.us.i, %bytestream2_get_byte.exit67.us.us.i ], [ %scevgep115.i, %.lr.ph.us.us.i ]
  %.2.us.us.i = phi i32 [ %i.qn, %bb.ce ], [ %.044.us.us.fr.i, %bytestream2_get_byte.exit67.us.us.i ], [ %i.rl, %.lr.ph.us.us.i ] ; 3 uses
  %i.rm = ptrtoint ptr %.sroa.0.4.us.us.i to i64
  %i.rn = sub i64 %i.qe, %i.rm                    ; 2 uses
  %i.ro = and i64 %i.rn, 4294967295
  %i.rp = icmp ne i64 %i.ro, 0
  %i.rq = icmp slt i32 %.2.us.us.i, %i.pu
  %i.rr = select i1 %i.rp, i1 %i.rq, i1 false
  br i1 %i.rr, label %.lr.ph45.split.us.split.us.i, label %._crit_edge.i107, !llvm.loop !160

.lr.ph45.split.split.i:                           ; preds = %.lr.ph45.i, %.loopexit.i110
  %.044.i = phi i32 [ %.2.i, %.loopexit.i110 ], [ %.070179, %.lr.ph45.i ]
  %.05543.i = phi ptr [ %.3.i, %.loopexit.i110 ], [ %i.qj, %.lr.ph45.i ] ; 7 uses
  %.sroa.0.042.i = phi ptr [ %.sroa.0.4.i, %.loopexit.i110 ], [ %i.ah, %.lr.ph45.i ] ; 4 uses
  %.044.fr.i = freeze i32 %.044.i                 ; 8 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 1 ; 3 uses
  %i.rt = load i8, ptr %.sroa.0.042.i, align 1, !tbaa !42 ; 2 uses
  switch i8 %i.rt, label %bb.cj [
    i8 0, label %bb.cl
    i8 1, label %bb.ck
  ]

bb.cj:                                            ; preds = %.lr.ph45.split.split.i
  %i.ru = getelementptr inbounds nuw i8, ptr %.05543.i, i64 1
  store i8 %i.rt, ptr %.05543.i, align 1, !tbaa !42
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph45.split.split.i
  %.156.i = phi ptr [ %.05543.i, %.lr.ph45.split.split.i ], [ %i.ru, %bb.cj ]
  %i.rv = add nsw i32 %.044.fr.i, 1
  br label %.loopexit.i110

bb.cl:                                            ; preds = %.lr.ph45.split.split.i
  %i.rw = ptrtoint ptr %i.rs to i64
  %i.rx = sub i64 %i.qe, %i.rw
  %i.ry = icmp slt i64 %i.rx, 1
  br i1 %i.ry, label %.thread.i, label %bytestream2_get_byte.exit69.i

bytestream2_get_byte.exit69.i:                    ; preds = %bb.cl
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 2 ; 4 uses
  %i.sa = load i8, ptr %i.rs, align 1, !tbaa !42  ; 2 uses
  %i.sb = and i8 %i.sa, 127                       ; 3 uses
  %i.sc = zext nneg i8 %i.sb to i32               ; 2 uses
  %i.sd = icmp sgt i8 %i.sa, -1
  br i1 %i.sd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bytestream2_get_byte.exit69.i
  %i.se = icmp eq i8 %i.sb, 0
  br i1 %i.se, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %bb.cm, %bb.cl, %bb.ci, %bb.cf
  %.us-phi.i = phi i32 [ %.044.us.us.fr.i, %bb.ci ], [ %.044.us.us.fr.i, %bb.cf ], [ %.044.fr.i, %bb.cl ], [ %.044.fr.i, %bb.cm ]
  %.us-phi50.i = phi ptr [ %i.qr, %bb.ci ], [ %i.qd, %bb.cf ], [ %i.rz, %bb.cm ], [ %i.qd, %bb.cl ]
  %i.sf = ptrtoint ptr %.us-phi50.i to i64
  br label %dvbsub_read_8bit_string.exit

bb.cn:                                            ; preds = %bytestream2_get_byte.exit69.i
  %i.sg = ptrtoint ptr %i.rz to i64
  %i.sh = sub i64 %i.qe, %i.sg
  %i.si = icmp slt i64 %i.sh, 1
  br i1 %i.si, label %.preheader.i, label %bytestream2_get_byte.exit67.i

bytestream2_get_byte.exit67.i:                    ; preds = %bb.cn
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 3 ; 2 uses
  %i.sk = load i8, ptr %i.rz, align 1, !tbaa !42  ; 2 uses
  %i.sl = icmp eq i8 %i.sk, 1
  br i1 %i.sl, label %bb.co, label %.preheader.i

.preheader.i:                                     ; preds = %bytestream2_get_byte.exit67.i, %bb.cn, %bb.cm
  %.052126.i = phi i8 [ %i.sk, %bytestream2_get_byte.exit67.i ], [ 0, %bb.cm ], [ 0, %bb.cn ]
  %.sroa.0.3125.i = phi ptr [ %i.sj, %bytestream2_get_byte.exit67.i ], [ %i.rz, %bb.cm ], [ %i.qd, %bb.cn ] ; 2 uses
  %i.sm = icmp ne i8 %i.sb, 0
  %i.sn = icmp slt i32 %.044.fr.i, %i.pu
  %i.so = and i1 %i.sn, %i.sm
  br i1 %i.so, label %.lr.ph.i111, label %.loopexit.i110

.lr.ph.i111:                                      ; preds = %.preheader.i
  %i.sp = xor i32 %.044.fr.i, -1
  %i.sq = add i32 %i.pu, %i.sp
  %i.sr = add nsw i32 %i.sc, -1
  %i.ss = call i32 @llvm.umin.i32(i32 %i.sq, i32 %i.sr) ; 2 uses
  %umin.i112 = zext nneg i32 %i.ss to i64         ; 2 uses
  %i.st = add nuw nsw i64 %umin.i112, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.05543.i, i8 %.052126.i, i64 %i.st, i1 false), !tbaa !42
  %scevgep.i113 = getelementptr i8, ptr %.05543.i, i64 1
  %scevgep110.i = getelementptr i8, ptr %scevgep.i113, i64 %umin.i112
  %i.su = add nsw i32 %.044.fr.i, 1
  %i.sv = add i32 %i.su, %i.ss
  br label %.loopexit.i110

bb.co:                                            ; preds = %bytestream2_get_byte.exit67.i
  %i.sw = add nsw i32 %.044.fr.i, %i.sc
  br label %.loopexit.i110

.loopexit.i110:                                   ; preds = %bb.co, %.lr.ph.i111, %.preheader.i, %bb.ck
  %.sroa.0.4.i = phi ptr [ %i.sj, %bb.co ], [ %i.rs, %bb.ck ], [ %.sroa.0.3125.i, %.preheader.i ], [ %.sroa.0.3125.i, %.lr.ph.i111 ] ; 3 uses
  %.3.i = phi ptr [ %.05543.i, %bb.co ], [ %.156.i, %bb.ck ], [ %.05543.i, %.preheader.i ], [ %scevgep110.i, %.lr.ph.i111 ]
  %.2.i = phi i32 [ %i.sw, %bb.co ], [ %i.rv, %bb.ck ], [ %.044.fr.i, %.preheader.i ], [ %i.sv, %.lr.ph.i111 ] ; 3 uses
  %i.sx = ptrtoint ptr %.sroa.0.4.i to i64
  %i.sy = sub i64 %i.qe, %i.sx                    ; 2 uses
  %i.sz = and i64 %i.sy, 4294967295
  %i.ta = icmp ne i64 %i.sz, 0
  %i.tb = icmp slt i32 %.2.i, %i.pu
  %i.tc = select i1 %i.ta, i1 %i.tb, i1 false
  br i1 %i.tc, label %.lr.ph45.split.split.i, label %._crit_edge.i107, !llvm.loop !160

._crit_edge.i107:                                 ; preds = %.loopexit.i110, %.loopexit.us.us.i, %bytestream2_init.exit.i
  %.sroa.0.0.lcssa.i = phi ptr [ %i.ah, %bytestream2_init.exit.i ], [ %.sroa.0.4.us.us.i, %.loopexit.us.us.i ], [ %.sroa.0.4.i, %.loopexit.i110 ] ; 2 uses
  %.0.lcssa.i108 = phi i32 [ %.070179, %bytestream2_init.exit.i ], [ %.2.us.us.i, %.loopexit.us.us.i ], [ %.2.i, %.loopexit.i110 ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.qc, %bytestream2_init.exit.i ], [ %i.rn, %.loopexit.us.us.i ], [ %i.sy, %.loopexit.i110 ]
  %i.td = icmp slt i64 %.lcssa.i, 1
  br i1 %i.td, label %bytestream2_get_byte.exit65.thread.i, label %bytestream2_get_byte.exit65.i

bytestream2_get_byte.exit65.i:                    ; preds = %._crit_edge.i107
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 1 ; 2 uses
  %i.tf = load i8, ptr %.sroa.0.0.lcssa.i, align 1, !tbaa !42
  %.not.i109 = icmp eq i8 %i.tf, 0
  br i1 %.not.i109, label %bytestream2_get_byte.exit65.thread.i, label %bb.cp

bb.cp:                                            ; preds = %bytestream2_get_byte.exit65.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.32) #9
  br label %bytestream2_get_byte.exit65.thread.i

bytestream2_get_byte.exit65.thread.i:             ; preds = %bb.cp, %bytestream2_get_byte.exit65.i, %._crit_edge.i107
  %.sroa.0.528.i = phi ptr [ %i.te, %bytestream2_get_byte.exit65.i ], [ %i.te, %bb.cp ], [ %i.qd, %._crit_edge.i107 ] ; 3 uses
  %i.tg = ptrtoint ptr %.sroa.0.528.i to i64
  %i.th = sub i64 %i.qe, %i.tg
  %i.ti = icmp slt i64 %i.th, 1
  br i1 %i.ti, label %dvbsub_read_8bit_string.exit, label %bytestream2_peek_byte.exit.i

bytestream2_peek_byte.exit.i:                     ; preds = %bytestream2_get_byte.exit65.thread.i
  %i.tj = load i8, ptr %.sroa.0.528.i, align 1, !tbaa !42
  %.not62.i = icmp eq i8 %i.tj, 0
  %spec.select.idx.i = zext i1 %.not62.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.0.528.i, i64 %spec.select.idx.i
  %.pre.i = ptrtoint ptr %spec.select.i to i64
  br label %dvbsub_read_8bit_string.exit

dvbsub_read_8bit_string.exit:                     ; preds = %.thread.i, %bytestream2_get_byte.exit65.thread.i, %bytestream2_peek_byte.exit.i
  %.pre-phi.sink.i = phi i64 [ %i.sf, %.thread.i ], [ %.pre.i, %bytestream2_peek_byte.exit.i ], [ %i.qe, %bytestream2_get_byte.exit65.thread.i ]
  %.036.i = phi i32 [ %.us-phi.i, %.thread.i ], [ %.0.lcssa.i108, %bytestream2_peek_byte.exit.i ], [ %.0.lcssa.i108, %bytestream2_get_byte.exit65.thread.i ]
  %i.tk = sub i64 %.pre-phi.sink.i, %i.py
  %i.tl = shl i64 %i.tk, 32
  %i.tm = ashr exact i64 %i.tl, 32
  %i.tn = getelementptr inbounds i8, ptr %i.ah, i64 %i.tm
  br label %dvbsub_read_2bit_string.exit

bb.cq:                                            ; preds = %bb.g
  %i.to = load i8, ptr %i.ah, align 1, !tbaa !42  ; 2 uses
  %i.tp = lshr i8 %i.to, 4
  store i8 %i.tp, ptr %i.a, align 4, !tbaa !42
  %i.tq = getelementptr inbounds nuw i8, ptr %.0131178, i64 2 ; 2 uses
  %i.tr = and i8 %i.to, 15
  store i8 %i.tr, ptr %i.w, align 1, !tbaa !42
  %i.ts = load i8, ptr %i.tq, align 1, !tbaa !42
  %i.tt = lshr i8 %i.ts, 4
  store i8 %i.tt, ptr %i.x, align 2, !tbaa !42
  %i.tu = getelementptr inbounds nuw i8, ptr %.0131178, i64 3
  %i.tv = load i8, ptr %i.tq, align 1, !tbaa !42
  %i.tw = and i8 %i.tv, 15
  store i8 %i.tw, ptr %i.y, align 1, !tbaa !42
  br label %dvbsub_read_2bit_string.exit

bb.cr:                                            ; preds = %bb.g
  %i.tx = load i32, ptr %i.p, align 8, !tbaa !80
  %i.ty = add nsw i32 %.068180, 2
  br label %dvbsub_read_2bit_string.exit

bb.cs:                                            ; preds = %bb.g
  %i.tz = zext i8 %i.ab to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.tz) #9
  br label %dvbsub_read_2bit_string.exit

dvbsub_read_2bit_string.exit:                     ; preds = %.preheader139.preheader, %.preheader.preheader, %bb.bz, %bb.bd, %bb.ar, %bb.am, %bb.cs, %bb.cr, %bb.cq, %dvbsub_read_8bit_string.exit
  %.3 = phi ptr [ %i.ah, %bb.cs ], [ %i.ah, %bb.cr ], [ %i.hd, %bb.am ], [ %i.tn, %dvbsub_read_8bit_string.exit ], [ %i.tu, %bb.cq ], [ %i.kf, %bb.bd ], [ %i.ak, %.preheader.preheader ], [ %i.hw, %bb.ar ], [ %i.pr, %bb.bz ], [ %i.ai, %.preheader139.preheader ] ; 2 uses
  %.171 = phi i32 [ %.070179, %bb.cs ], [ %i.tx, %bb.cr ], [ %.0189.i, %bb.am ], [ %.036.i, %dvbsub_read_8bit_string.exit ], [ %.070179, %bb.cq ], [ %.0213.i, %bb.bd ], [ %.070179, %.preheader.preheader ], [ %.0.lcssa.i83, %bb.ar ], [ %.0.lcssa.i89, %bb.bz ], [ %.070179, %.preheader139.preheader ]
  %.169 = phi i32 [ %.068180, %bb.cs ], [ %i.ty, %bb.cr ], [ %.068180, %bb.am ], [ %.068180, %dvbsub_read_8bit_string.exit ], [ %.068180, %bb.cq ], [ %.068180, %bb.bd ], [ %.068180, %.preheader.preheader ], [ %.068180, %bb.ar ], [ %.068180, %bb.bz ], [ %.068180, %.preheader139.preheader ]
  %i.ua = icmp ult ptr %.3, %i.l
  br i1 %i.ua, label %bb.d, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %dvbsub_read_2bit_string.exit, %bb.c
  %i.ub = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !93
  %.not79 = icmp eq i32 %i.uc, -2
  br i1 %.not79, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge
  %i.ud = getelementptr inbounds nuw i8, ptr %.08.i, i64 1052
  store i32 0, ptr %i.ud, align 4, !tbaa !94
  br label %bb.cu

bb.cu:                                            ; preds = %get_region.exit.thread, %._crit_edge, %bb.ct, %bb.cb, %bb.at, %split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{!2, !54}
!3 = distinct !{!3, !54}
!4 = distinct !{!4, !54}
!5 = distinct !{!5, !54}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 1, !"override-stack-alignment", i32 16}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS7AVClass", !15, i64 0}
!17 = !{!"p1 _ZTS7AVCodec", !15, i64 0}
!18 = !{!"p1 _ZTS15AVCodecInternal", !15, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"AVRational", !12, i64 0, !12, i64 4}
!22 = !{!"float", !11, i64 0}
!23 = !{!"p1 short", !15, i64 0}
!24 = !{!"AVChannelLayout", !12, i64 0, !12, i64 4, !11, i64 8, !15, i64 16}
!25 = !{!"p1 _ZTS10RcOverride", !15, i64 0}
!26 = !{!"p1 _ZTS9AVHWAccel", !15, i64 0}
!27 = !{!"p1 _ZTS11AVBufferRef", !15, i64 0}
!28 = !{!"p1 _ZTS17AVCodecDescriptor", !15, i64 0}
!29 = !{!"p1 _ZTS16AVPacketSideData", !15, i64 0}
!30 = !{!"p1 int", !15, i64 0}
!31 = !{!"any p2 pointer", !15, i64 0}
!32 = !{!"p2 _ZTS15AVFrameSideData", !31, i64 0}
!33 = !{!"AVCodecContext", !16, i64 0, !12, i64 8, !12, i64 12, !17, i64 16, !12, i64 24, !12, i64 28, !15, i64 32, !18, i64 40, !15, i64 48, !19, i64 56, !12, i64 64, !12, i64 68, !20, i64 72, !12, i64 80, !21, i64 84, !21, i64 92, !21, i64 100, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !21, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !15, i64 184, !15, i64 192, !12, i64 200, !22, i64 204, !22, i64 208, !22, i64 212, !22, i64 216, !22, i64 220, !22, i64 224, !22, i64 228, !22, i64 232, !22, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !23, i64 288, !23, i64 296, !23, i64 304, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !24, i64 352, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !12, i64 404, !15, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !22, i64 428, !22, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !25, i64 456, !19, i64 464, !19, i64 472, !22, i64 480, !22, i64 484, !12, i64 488, !12, i64 492, !20, i64 496, !20, i64 504, !12, i64 512, !12, i64 516, !12, i64 520, !12, i64 524, !12, i64 528, !26, i64 536, !15, i64 544, !27, i64 552, !27, i64 560, !12, i64 568, !12, i64 572, !11, i64 576, !12, i64 640, !12, i64 644, !12, i64 648, !12, i64 652, !12, i64 656, !12, i64 660, !12, i64 664, !15, i64 672, !15, i64 680, !12, i64 688, !12, i64 692, !12, i64 696, !12, i64 700, !12, i64 704, !12, i64 708, !12, i64 712, !12, i64 716, !12, i64 720, !28, i64 728, !20, i64 736, !12, i64 744, !12, i64 748, !20, i64 752, !20, i64 760, !20, i64 768, !29, i64 776, !12, i64 784, !12, i64 788, !19, i64 792, !12, i64 800, !12, i64 804, !19, i64 808, !15, i64 816, !19, i64 824, !30, i64 832, !12, i64 840, !32, i64 848, !12, i64 856, !12, i64 860}
!34 = !{!33, !15, i64 32}
!35 = !{!"p1 _ZTS12DVBSubRegion", !15, i64 0}
!36 = !{!"p1 _ZTS10DVBSubCLUT", !15, i64 0}
!37 = !{!"p1 _ZTS12DVBSubObject", !15, i64 0}
!38 = !{!"p1 _ZTS19DVBSubRegionDisplay", !15, i64 0}
!39 = !{!"p1 _ZTS23DVBSubDisplayDefinition", !15, i64 0}
!40 = !{!"DVBSubContext", !16, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !11, i64 32, !12, i64 263200, !19, i64 263208, !35, i64 263216, !36, i64 263224, !37, i64 263232, !38, i64 263240, !39, i64 263248}
!41 = !{!12, !12, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!40, !12, i64 8}
!44 = !{!40, !12, i64 12}
!45 = !{!40, !12, i64 16}
!46 = !{!40, !19, i64 263208}
!47 = !{!40, !12, i64 20}
!48 = !{!40, !12, i64 24}
!49 = !{!40, !35, i64 263216}
end_hunk_0
