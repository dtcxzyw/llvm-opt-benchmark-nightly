Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exr?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_block:bb.a
  %spec.select474 = zext nneg i32 %narrow514 to i64
  %i.bp = add nsw i64 %spec.select474, %i.bm
  %i.bq = udiv i32 2147483647, %i.al
  %.zext = zext nneg i32 %i.bq to i64
  %.not459 = icmp ult i64 %i.bp, %.zext
  br i1 %.not459, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %._crit_edge614, %bb.j
  %.pre-phi = phi i64 [ %.pre626, %._crit_edge614 ], [ %i.bm, %bb.j ] ; 2 uses
  %i.br = phi i32 [ %.pre, %._crit_edge614 ], [ %i.bo, %bb.j ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bt = mul nsw i64 %.pre-phi, %i.am            ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.br, %i.bu                    ; 3 uses
  %i.bw = load i32, ptr %i.bs, align 8, !tbaa !51 ; 2 uses
  %i.bx = mul i32 %i.bw, %i.ai                    ; 3 uses
  %i.by = icmp slt i32 %i.bv, %i.br
  br i1 %i.by, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !66
  %i.cb = icmp sgt i32 %i.bv, %i.ca
  %i.cc = icmp slt i32 %i.bx, 0
  %or.cond475 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond475, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !63
  %i.cf = add nsw i32 %i.ce, %i.bx
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !64
  %i.ci = icmp sgt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !68
  %i.cl = zext i32 %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.bt
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %.pre-phi)
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 876 ; 2 uses
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !85
  %i.cq = sext i32 %i.bw to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !67
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.cq, %i.aj
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.cq) ; 2 uses
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 880 ; 2 uses
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !86
  %sext = shl i64 %i.cw, 32
  %i.cz = ashr exact i64 %sext, 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 204 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !47
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.cz, %i.dc
  %i.de = icmp ugt i64 %i.dd, 2147483647
  br i1 %i.de, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 792
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !74
  %i.dj = tail call i32 @av_image_check_size2(i32 noundef %i.cx, i32 noundef %i.co, i64 noundef %i.di, i32 noundef -1, i32 noundef 0, ptr noundef %i.dg) #12
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load i32, ptr %i.cy, align 8, !tbaa !86 ; 2 uses
  %i.dm = load i32, ptr %i.da, align 4, !tbaa !47
  %i.dn = mul nsw i32 %i.dm, %i.dl                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 884
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !87
  %i.dp = sext i32 %i.dn to i64
  %i.dq = load i32, ptr %i.cp, align 4, !tbaa !85 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.dr, %i.dp
  br label %.thread

bb.q:                                             ; preds = %bb.a
  %i.dt = icmp slt i32 %i.r, 8
  %i.du = add nsw i32 %i.r, -8
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = icmp ugt i64 %i.x, %i.dv
  %or.cond478 = select i1 %i.dt, i1 true, i1 %i.dw
  br i1 %or.cond478, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !56
  %.not452 = icmp eq i32 %i.dz, 0
  %spec.select479.v = select i1 %.not452, i64 8, i64 12
  %spec.select479 = getelementptr inbounds nuw i8, ptr %i.dx, i64 %spec.select479.v ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %spec.select479, i64 -8
  %i.eb = load i32, ptr %i.ea, align 1, !tbaa !54 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !65
  %i.ee = icmp slt i32 %i.eb, %i.ed
  br i1 %i.ee, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66 ; 2 uses
  %i.eh = icmp sgt i32 %i.eb, %i.eg
  br i1 %i.eh, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds i8, ptr %spec.select479, i64 -4
  %i.ej = load i32, ptr %i.ei, align 1, !tbaa !54 ; 5 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = zext i32 %i.ej to i64                   ; 4 uses
  %i.em = zext nneg i32 %i.r to i64               ; 2 uses
  %i.en = add nsw i64 %i.em, -8
  %i.eo = sub nsw i64 %i.en, %i.x
  %i.ep = icmp ult i64 %i.eo, %i.el
  br i1 %i.ep, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !69
  %reass.sub = sub i32 %i.eg, %i.eb
  %i.es = add i32 %reass.sub, 1
  %. = tail call i32 @llvm.smin.i32(i32 %i.er, i32 %i.es) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 876 ; 2 uses
  store i32 %., ptr %i.et, align 4, !tbaa !85
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !67 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 880 ; 2 uses
  store i32 %i.ev, ptr %i.ew, align 8, !tbaa !86
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 204 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !47
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.fa, %i.ex
  %i.fc = icmp ugt i64 %i.fb, 2147483647
  br i1 %i.fc, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !41 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 792
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !74
  %i.fh = tail call i32 @av_image_check_size2(i32 noundef %i.ev, i32 noundef %., i64 noundef %i.fg, i32 noundef -1, i32 noundef 0, ptr noundef %i.fe) #12
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = load i32, ptr %i.ew, align 8, !tbaa !86 ; 3 uses
  %i.fk = load i32, ptr %i.ey, align 4, !tbaa !47
  %i.fl = mul nsw i32 %i.fk, %i.fj                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 884
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !87
  %i.fn = sext i32 %i.fl to i64
  %i.fo = load i32, ptr %i.et, align 4, !tbaa !85 ; 3 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = mul nsw i64 %i.fp, %i.fn                ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !49
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.not453 = icmp ne i64 %i.fq, %i.el
  %i.fu = sub nsw i64 %i.em, %i.fq
  %i.fv = icmp ugt i64 %i.x, %i.fu
  %or.cond481 = select i1 %.not453, i1 true, i1 %i.fv
  br i1 %or.cond481, label %.loopexit, label %.thread

bb.z:                                             ; preds = %bb.x
  %i.fw = icmp ult i64 %i.fq, %i.el
  %i.fx = sub i32 %i.r, %i.ej
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp samesign ugt i64 %i.x, %i.fy
  %or.cond484 = select i1 %i.fw, i1 true, i1 %i.fz
  br i1 %or.cond484, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.y, %bb.z, %bb.p
  %i.ga = phi i32 [ %i.dq, %bb.p ], [ %i.fo, %bb.z ], [ %i.fo, %bb.y ]
  %i.gb = phi i32 [ %i.dl, %bb.p ], [ %i.fj, %bb.z ], [ %i.fj, %bb.y ] ; 2 uses
  %.0405 = phi i64 [ %i.ds, %bb.p ], [ %i.fq, %bb.z ], [ %i.el, %bb.y ] ; 9 uses
  %.0402 = phi i32 [ %i.as, %bb.p ], [ %i.ej, %bb.z ], [ %i.ej, %bb.y ] ; 7 uses
  %.0401 = phi i32 [ %i.bv, %bb.p ], [ %i.eb, %bb.z ], [ %i.eb, %bb.y ] ; 4 uses
  %.0400 = phi i32 [ %i.bx, %bb.p ], [ 0, %bb.z ], [ 0, %bb.y ] ; 4 uses
  %.2399 = phi ptr [ %spec.select, %bb.p ], [ %spec.select479, %bb.z ], [ %spec.select479, %bb.y ] ; 8 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !71 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !63 ; 2 uses
  %i.gg = add nsw i32 %i.gf, %.0400               ; 2 uses
  %spec.select485 = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %spec.select512 = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %spec.select485) ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 880 ; 2 uses
  %i.gi = add nsw i32 %i.gg, %i.gb
  %spec.select487 = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gj = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %spec.select487)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !78 ; 2 uses
  %i.gm = tail call i32 @llvm.smax.i32(i32 %.0401, i32 0)
  %.489 = tail call i32 @llvm.smin.i32(i32 %i.gl, i32 %i.gm) ; 3 uses
  %i.gn = add i32 %i.ga, %.0401
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gp = tail call i32 @llvm.smin.i32(i32 %i.gl, i32 %i.go)
  %i.gq = sub nsw i32 %i.gj, %spec.select512
  %.fr562 = freeze i32 %i.gq                      ; 12 uses
  %i.gr = sub i32 %i.gp, %.489                    ; 4 uses
  %i.gs = icmp slt i32 %.fr562, 1
  %i.gt = icmp slt i32 %i.gr, 1
  %or.cond3 = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %or.cond3, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.thread
  %i.gu = icmp eq i32 %.0400, 0                   ; 3 uses
  %spec.select491 = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 0) ; 2 uses
  %i.gv = mul nsw i32 %spec.select491, %i.p
  %narrow515 = select i1 %i.gu, i32 %i.gv, i32 0
  %.0396 = sext i32 %narrow515 to i64             ; 3 uses
  %.0394 = select i1 %i.gu, i32 %spec.select491, i32 0 ; 2 uses
  %.0393 = select i1 %i.gu, i32 0, i32 %spec.select512 ; 2 uses
  %i.gw = add nsw i32 %i.gb, %.0400
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !67
  %i.gz = icmp eq i32 %i.gw, %i.gy
  br i1 %i.gz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !64
  %.neg = xor i32 %i.hb, -1
  %i.hc = add i32 %i.gd, %.neg                    ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 0
  %i.he = mul nsw i32 %i.hc, %i.p
  %narrow516 = select i1 %i.hd, i32 0, i32 %i.he
  %i.hf = sext i32 %narrow516 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0395 = phi i64 [ %i.hf, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !74 ; 2 uses
  %.not460 = icmp ne i64 %i.hh, 0
  %i.hi = shl nsw i64 %i.hh, 4
  %i.hj = icmp ugt i64 %.0405, %i.hi
  %or.cond493 = select i1 %.not460, i1 %i.hj, i1 false
  br i1 %or.cond493, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = zext i32 %.0402 to i64
  %i.hl = icmp ugt i64 %.0405, %i.hk
  br i1 %i.hl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hm = load i32, ptr %i.y, align 8, !tbaa !55
  %.not461 = icmp eq i32 %i.hm, 0
  br i1 %.not461, label %.thread503, label %.thread504

bb.af:                                            ; preds = %bb.ad
  %i.hn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.hn, ptr noundef nonnull %i.ho, i64 noundef %.0405) #12
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !88
  %.not462 = icmp eq ptr %i.hp, null
  br i1 %.not462, label %.loopexit, label %bb.ag

.thread504:                                       ; preds = %bb.ae
  %i.hq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr, i64 noundef %.0405) #12
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !88
  %.not462505 = icmp eq ptr %i.hs, null
  br i1 %.not462505, label %.loopexit, label %.thread503

bb.ag:                                            ; preds = %bb.af
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hu = add nsw i64 %.0405, 64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ht, i64 noundef %i.hu) #12
  %i.hv = load ptr, ptr %i.j, align 8, !tbaa !89
  %.not463 = icmp eq ptr %i.hv, null
  br i1 %.not463, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !49
  switch i32 %i.hx, label %.thread507 [
    i32 2, label %bb.ai
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
    i32 1, label %bb.al
    i32 6, label %bb.am
    i32 7, label %bb.am
    i32 8, label %bb.an
    i32 9, label %bb.an
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.hy = trunc i64 %.0405 to i32
  %i.hz = tail call fastcc i32 @zip_uncompress(ptr noundef nonnull %i.d, ptr noundef nonnull %.2399, i32 noundef %.0402, i32 noundef %i.hy, ptr noundef nonnull %i.j)
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.ia = trunc i64 %.0405 to i32
  %i.ib = tail call fastcc i32 @piz_uncompress(ptr noundef nonnull %i.d, ptr noundef nonnull %.2399, i32 noundef %.0402, i32 noundef %i.ia, ptr noundef nonnull %i.j)
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ah
  %i.ic = tail call fastcc i32 @pxr24_uncompress(ptr noundef nonnull %i.d, ptr noundef nonnull %.2399, i32 noundef %.0402, ptr noundef nonnull %i.j)
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.id = trunc i64 %.0405 to i32
  %i.ie = tail call fastcc i32 @rle_uncompress(ptr noundef nonnull %i.d, ptr noundef nonnull %.2399, i32 noundef %.0402, i32 noundef %i.id, ptr noundef nonnull %i.j)
  br label %bb.ao

bb.am:                                            ; preds = %bb.ah, %bb.ah
  %i.if = tail call fastcc i32 @b44_uncompress(ptr noundef nonnull %i.d, ptr noundef nonnull %.2399, i32 noundef %.0402, ptr noundef nonnull %i.j)
  br label %bb.ao

bb.an:                                            ; preds = %bb.ah, %bb.ah
  %i.ig = trunc i64 %.0405 to i32
  %i.ih = tail call fastcc i32 @dwa_uncompress(ptr noundef nonnull %i.d, ptr noundef nonnull %.2399, i32 noundef %.0402, i32 noundef %i.ig, ptr noundef nonnull %i.j)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.0385 = phi i32 [ %i.ih, %bb.an ], [ %i.hz, %bb.ai ], [ %i.ib, %bb.aj ], [ %i.ic, %bb.ak ], [ %i.ie, %bb.al ], [ %i.if, %bb.am ] ; 2 uses
  %i.ii = icmp slt i32 %.0385, 0
  br i1 %i.ii, label %.thread507, label %bb.ap

.thread507:                                       ; preds = %bb.ah, %bb.ao
  %.0385509 = phi i32 [ %.0385, %bb.ao ], [ -1094995529, %bb.ah ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.80) #12
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ij = load ptr, ptr %i.j, align 8, !tbaa !89
  br label %.thread503

.thread503:                                       ; preds = %.thread504, %bb.ae, %bb.ap
  %.3 = phi ptr [ %i.ij, %bb.ap ], [ %.2399, %bb.ae ], [ %.2399, %.thread504 ] ; 5 uses
  %i.ik = load i32, ptr %i.ge, align 8, !tbaa !63
  %i.il = add nsw i32 %i.ik, %.0400
  %i.im = tail call i32 @llvm.smin.i32(i32 %i.il, i32 0)
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !48
  %i.ip = icmp eq i32 %i.io, 1
  %i.iq = select i1 %i.ip, i32 1, i32 2
  %i.ir = tail call i32 @llvm.smin.i32(i32 %.0401, i32 0)
  %i.is = sub nsw i32 0, %i.ir
  %i.it = icmp slt i32 %.0401, 0
  %i.iu = select i1 %i.it, i32 %i.is, i32 0
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 884 ; 4 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !87
  %i.ix = mul nsw i32 %i.iw, %i.iu
  %i.iy = shl i32 %i.im, %i.iq
  %i.iz = sub i32 %i.ix, %i.iy                    ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !58 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread503
  %i.je = load i32, ptr %i.gh, align 8, !tbaa !86
  %i.jf = mul nsw i32 %i.je, %i.jc
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds i8, ptr %.3, i64 %i.jg
  %i.ji = sext i32 %i.iz to i64
  %i.jj = getelementptr inbounds i8, ptr %i.jh, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !53
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread503
  %i.jl = phi ptr [ %i.jj, %bb.aq ], [ null, %.thread503 ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !62
  %.not464.not.not = icmp eq i32 %i.jn, 0         ; 3 uses
  %i.jo = load i32, ptr %i.gh, align 8, !tbaa !86 ; 4 uses
  br i1 %.not464.not.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jp = load i32, ptr %i.ja, align 8, !tbaa !58
  %i.jq = mul nsw i32 %i.jp, %i.jo
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %.3, i64 %i.jr
  %i.jt = sext i32 %i.iz to i64                   ; 3 uses
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 %i.jt ; 2 uses
  store ptr %i.ju, ptr %i.a, align 16, !tbaa !53
  %i.jv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !58
  %i.jx = mul nsw i32 %i.jw, %i.jo
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %.3, i64 %i.jy
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.jt ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !53
  %i.kc = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !58
  %i.ke = mul nsw i32 %i.kd, %i.jo
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds i8, ptr %.3, i64 %i.kf
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %i.jt ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.kh, ptr %i.ki, align 16, !tbaa !53
  %.pre617 = load ptr, ptr %i.m, align 8, !tbaa !70 ; 2 uses
  %.phi.trans.insert618 = getelementptr inbounds nuw i8, ptr %.pre617, i64 16
  %.pre619 = load i64, ptr %.phi.trans.insert618, align 8, !tbaa !157
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.kj = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !58
  %i.kl = mul nsw i32 %i.kk, %i.jo
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %.3, i64 %i.km
  %i.ko = sext i32 %i.iz to i64
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 %i.ko ; 3 uses
  store ptr %i.kp, ptr %i.a, align 16, !tbaa !53
  %i.kq = load ptr, ptr %i.m, align 8, !tbaa !70  ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !157 ; 3 uses
  %i.kt = and i64 %i.ks, 16
  %.not465 = icmp eq i64 %i.kt, 0
  br i1 %.not465, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.jl, ptr %i.ku, align 8, !tbaa !53
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %.promoted558 = phi ptr [ %i.kh, %bb.as ], [ null, %bb.au ], [ null, %bb.at ]
  %.promoted557 = phi ptr [ %i.ka, %bb.as ], [ %i.jl, %bb.au ], [ null, %bb.at ]
  %.promoted556 = phi ptr [ %i.ju, %bb.as ], [ %i.kp, %bb.au ], [ %i.kp, %bb.at ]
  %i.kv = phi i64 [ %.pre619, %bb.as ], [ %i.ks, %bb.au ], [ %i.ks, %bb.at ]
  %i.kw = phi ptr [ %.pre617, %bb.as ], [ %i.kq, %bb.au ], [ %i.kq, %bb.at ] ; 3 uses
  %.0386 = phi i64 [ 24, %bb.as ], [ 8, %bb.au ], [ 8, %bb.at ]
  %i.kx = and i64 %i.kv, 512
  %.not466 = icmp eq i64 %i.kx, 0
  br i1 %.not466, label %.lr.ph555, label %.preheader523

.preheader523:                                    ; preds = %bb.av
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.kz = load i8, ptr %i.ky, align 8, !tbaa !158
  %.not561 = icmp eq i8 %i.kz, 0
  br i1 %.not561, label %.loopexit, label %.lr.ph535.us.us.preheader

.lr.ph535.us.us.preheader:                        ; preds = %.preheader523
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.lb = mul nsw i32 %.0393, %i.p
  %i.lc = sext i32 %i.lb to i64
  %i.ld = mul nsw i32 %.0394, %i.p
  %i.le = sext i32 %i.ld to i64                   ; 2 uses
  %i.lf = sext i32 %i.p to i64                    ; 36 uses
  %i.lg = add nsw i32 %.fr562, -1                 ; 4 uses
  %xtraiter = and i32 %.fr562, 7                  ; 3 uses
  %i.lh = icmp ult i32 %i.lg, 7
  %unroll_iter = and i32 %.fr562, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod690 = icmp ne i32 %xtraiter, 0
  %xtraiter691 = and i32 %.fr562, 7               ; 3 uses
  %i.li = icmp ult i32 %i.lg, 7
  %unroll_iter696 = and i32 %.fr562, 2147483640
  %lcmp.mod693.not = icmp eq i32 %xtraiter691, 0
  %lcmp.mod695 = icmp ne i32 %xtraiter691, 0
  %xtraiter698 = and i32 %.fr562, 7               ; 3 uses
  %i.lj = icmp ult i32 %i.lg, 7
  %unroll_iter703 = and i32 %.fr562, 2147483640
  %lcmp.mod700.not = icmp eq i32 %xtraiter698, 0
  %lcmp.mod702 = icmp ne i32 %xtraiter698, 0
  %xtraiter705 = and i32 %.fr562, 7               ; 3 uses
  %i.lk = icmp ult i32 %i.lg, 7
  %unroll_iter710 = and i32 %.fr562, 2147483640
  %lcmp.mod707.not = icmp eq i32 %xtraiter705, 0
  %lcmp.mod709 = icmp ne i32 %xtraiter705, 0
  br label %.lr.ph535.us.us

.lr.ph535.us.us:                                  ; preds = %.lr.ph535.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvars.iv596 = phi i64 [ 0, %.lr.ph535.us.us.preheader ], [ %indvars.iv.next597, %._crit_edge.split.us.us.split.us.us ] ; 4 uses
  %i.ll = phi ptr [ %i.kw, %.lr.ph535.us.us.preheader ], [ %i.rl, %._crit_edge.split.us.us.split.us.us ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = getelementptr inbounds nuw [20 x i8], ptr %i.lm, i64 %indvars.iv596 ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !159
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !53
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lp ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !58
  %i.lu = mul nsw i32 %i.lt, %.489
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds i8, ptr %i.lr, i64 %i.lv
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 %i.lc
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !160
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %i.lx, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv596 ; 2 uses
  %.not563 = icmp eq i64 %indvars.iv596, 0
  %.promoted.us.us = load ptr, ptr %i.mc, align 8, !tbaa !53 ; 2 uses
  br i1 %.not563, label %.lr.ph535.split.us.us.split.us.us.split.us, label %.lr.ph535.split.us.us.split.us.us.split

.lr.ph535.split.us.us.split.us.us.split.us:       ; preds = %.lr.ph535.us.us, %..loopexit522_crit_edge.us.us.us.us.us
  %i.md = phi ptr [ %i.ok, %..loopexit522_crit_edge.us.us.us.us.us ], [ %.promoted.us.us, %.lr.ph535.us.us ] ; 5 uses
  %.0391534.us.us.us.us.us = phi i32 [ %i.ol, %..loopexit522_crit_edge.us.us.us.us.us ], [ 0, %.lr.ph535.us.us ]
  %.0403533.us.us.us.us.us = phi ptr [ %i.oo, %..loopexit522_crit_edge.us.us.us.us.us ], [ %i.mb, %.lr.ph535.us.us ] ; 3 uses
  %i.me = getelementptr inbounds i8, ptr %.0403533.us.us.us.us.us, i64 %i.le ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0403533.us.us.us.us.us, i8 0, i64 %.0396, i1 false)
  %i.mf = load i32, ptr %i.in, align 4, !tbaa !48
  switch i32 %i.mf, label %..loopexit522_crit_edge.us.us.us.us.us [
    i32 2, label %.preheader519.us.us.us.us.us.preheader
    i32 1, label %.preheader521.us.us.us.us.us.preheader
  ]

.preheader521.us.us.us.us.us.preheader:           ; preds = %.lr.ph535.split.us.us.split.us.us.split.us
  br i1 %i.lj, label %.preheader521.us.us.us.us.us.epil.preheader, label %.preheader521.us.us.us.us.us

.preheader519.us.us.us.us.us.preheader:           ; preds = %.lr.ph535.split.us.us.split.us.us.split.us
  br i1 %i.lk, label %.preheader519.us.us.us.us.us.epil.preheader, label %.preheader519.us.us.us.us.us

.preheader521.us.us.us.us.us:                     ; preds = %.preheader521.us.us.us.us.us.preheader, %.preheader521.us.us.us.us.us
  %.1383526.us.us.us.us.us = phi ptr [ %i.nd, %.preheader521.us.us.us.us.us ], [ %i.me, %.preheader521.us.us.us.us.us.preheader ] ; 2 uses
  %.1502525.us.us.us.us.us = phi ptr [ %i.nb, %.preheader521.us.us.us.us.us ], [ %i.md, %.preheader521.us.us.us.us.us.preheader ] ; 9 uses
  %niter704 = phi i32 [ %niter704.next.7, %.preheader521.us.us.us.us.us ], [ 0, %.preheader521.us.us.us.us.us.preheader ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 2
  %i.mh = load i16, ptr %.1502525.us.us.us.us.us, align 1, !tbaa !54
  store i16 %i.mh, ptr %.1383526.us.us.us.us.us, align 2, !tbaa !54
  %i.mi = getelementptr inbounds i8, ptr %.1383526.us.us.us.us.us, i64 %i.lf ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 4
  %i.mk = load i16, ptr %i.mg, align 1, !tbaa !54
  store i16 %i.mk, ptr %i.mi, align 2, !tbaa !54
  %i.ml = getelementptr inbounds i8, ptr %i.mi, i64 %i.lf ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 6
  %i.mn = load i16, ptr %i.mj, align 1, !tbaa !54
  store i16 %i.mn, ptr %i.ml, align 2, !tbaa !54
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 %i.lf ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 8
  %i.mq = load i16, ptr %i.mm, align 1, !tbaa !54
  store i16 %i.mq, ptr %i.mo, align 2, !tbaa !54
  %i.mr = getelementptr inbounds i8, ptr %i.mo, i64 %i.lf ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 10
  %i.mt = load i16, ptr %i.mp, align 1, !tbaa !54
  store i16 %i.mt, ptr %i.mr, align 2, !tbaa !54
  %i.mu = getelementptr inbounds i8, ptr %i.mr, i64 %i.lf ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 12
  %i.mw = load i16, ptr %i.ms, align 1, !tbaa !54
  store i16 %i.mw, ptr %i.mu, align 2, !tbaa !54
  %i.mx = getelementptr inbounds i8, ptr %i.mu, i64 %i.lf ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 14
  %i.mz = load i16, ptr %i.mv, align 1, !tbaa !54
  store i16 %i.mz, ptr %i.mx, align 2, !tbaa !54
  %i.na = getelementptr inbounds i8, ptr %i.mx, i64 %i.lf ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us, i64 16 ; 2 uses
  %i.nc = load i16, ptr %i.my, align 1, !tbaa !54
  store i16 %i.nc, ptr %i.na, align 2, !tbaa !54
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 %i.lf ; 3 uses
  %niter704.next.7 = add i32 %niter704, 8         ; 2 uses
  %niter704.ncmp.7 = icmp eq i32 %niter704.next.7, %unroll_iter703
  br i1 %niter704.ncmp.7, label %..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa, label %.preheader521.us.us.us.us.us, !llvm.loop !145

.preheader519.us.us.us.us.us:                     ; preds = %.preheader519.us.us.us.us.us.preheader, %.preheader519.us.us.us.us.us
  %.0382529.us.us.us.us.us = phi ptr [ %i.ob, %.preheader519.us.us.us.us.us ], [ %i.me, %.preheader519.us.us.us.us.us.preheader ] ; 2 uses
  %.0501528.us.us.us.us.us = phi ptr [ %i.nz, %.preheader519.us.us.us.us.us ], [ %i.md, %.preheader519.us.us.us.us.us.preheader ] ; 9 uses
  %niter711 = phi i32 [ %niter711.next.7, %.preheader519.us.us.us.us.us ], [ 0, %.preheader519.us.us.us.us.us.preheader ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 4
  %i.nf = load i32, ptr %.0501528.us.us.us.us.us, align 1, !tbaa !54
  store i32 %i.nf, ptr %.0382529.us.us.us.us.us, align 4, !tbaa !54
  %i.ng = getelementptr inbounds i8, ptr %.0382529.us.us.us.us.us, i64 %i.lf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 8
  %i.ni = load i32, ptr %i.ne, align 1, !tbaa !54
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !54
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.lf ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 12
  %i.nl = load i32, ptr %i.nh, align 1, !tbaa !54
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !54
  %i.nm = getelementptr inbounds i8, ptr %i.nj, i64 %i.lf ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 16
  %i.no = load i32, ptr %i.nk, align 1, !tbaa !54
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !54
  %i.np = getelementptr inbounds i8, ptr %i.nm, i64 %i.lf ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 20
  %i.nr = load i32, ptr %i.nn, align 1, !tbaa !54
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !54
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.lf ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 24
  %i.nu = load i32, ptr %i.nq, align 1, !tbaa !54
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !54
  %i.nv = getelementptr inbounds i8, ptr %i.ns, i64 %i.lf ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 28
  %i.nx = load i32, ptr %i.nt, align 1, !tbaa !54
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !54
  %i.ny = getelementptr inbounds i8, ptr %i.nv, i64 %i.lf ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us, i64 32 ; 2 uses
  %i.oa = load i32, ptr %i.nw, align 1, !tbaa !54
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !54
  %i.ob = getelementptr inbounds i8, ptr %i.ny, i64 %i.lf ; 3 uses
  %niter711.next.7 = add i32 %niter711, 8         ; 2 uses
  %niter711.ncmp.7 = icmp eq i32 %niter711.next.7, %unroll_iter710
  br i1 %niter711.ncmp.7, label %..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa, label %.preheader519.us.us.us.us.us, !llvm.loop !146

..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa: ; preds = %.preheader519.us.us.us.us.us
  br i1 %lcmp.mod707.not, label %..loopexit522_crit_edge.us.us.us.us.us, label %.preheader519.us.us.us.us.us.epil.preheader

.preheader519.us.us.us.us.us.epil.preheader:      ; preds = %..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa, %.preheader519.us.us.us.us.us.preheader
  %.0382529.us.us.us.us.us.epil.init = phi ptr [ %i.me, %.preheader519.us.us.us.us.us.preheader ], [ %i.ob, %..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa ]
  %.0501528.us.us.us.us.us.epil.init = phi ptr [ %i.md, %.preheader519.us.us.us.us.us.preheader ], [ %i.nz, %..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod709)
  br label %.preheader519.us.us.us.us.us.epil

.preheader519.us.us.us.us.us.epil:                ; preds = %.preheader519.us.us.us.us.us.epil, %.preheader519.us.us.us.us.us.epil.preheader
  %.0382529.us.us.us.us.us.epil = phi ptr [ %i.oe, %.preheader519.us.us.us.us.us.epil ], [ %.0382529.us.us.us.us.us.epil.init, %.preheader519.us.us.us.us.us.epil.preheader ] ; 2 uses
  %.0501528.us.us.us.us.us.epil = phi ptr [ %i.oc, %.preheader519.us.us.us.us.us.epil ], [ %.0501528.us.us.us.us.us.epil.init, %.preheader519.us.us.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter706 = phi i32 [ %epil.iter706.next, %.preheader519.us.us.us.us.us.epil ], [ 0, %.preheader519.us.us.us.us.us.epil.preheader ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.us.epil, i64 4
  %i.od = load i32, ptr %.0501528.us.us.us.us.us.epil, align 1, !tbaa !54
  store i32 %i.od, ptr %.0382529.us.us.us.us.us.epil, align 4, !tbaa !54
  %i.oe = getelementptr inbounds i8, ptr %.0382529.us.us.us.us.us.epil, i64 %i.lf ; 2 uses
  %epil.iter706.next = add i32 %epil.iter706, 1   ; 2 uses
  %epil.iter706.cmp.not = icmp eq i32 %epil.iter706.next, %xtraiter705
  br i1 %epil.iter706.cmp.not, label %..loopexit522_crit_edge.us.us.us.us.us, label %.preheader519.us.us.us.us.us.epil, !llvm.loop !147

..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa: ; preds = %.preheader521.us.us.us.us.us
  br i1 %lcmp.mod700.not, label %..loopexit522_crit_edge.us.us.us.us.us, label %.preheader521.us.us.us.us.us.epil.preheader

.preheader521.us.us.us.us.us.epil.preheader:      ; preds = %..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa, %.preheader521.us.us.us.us.us.preheader
  %.1383526.us.us.us.us.us.epil.init = phi ptr [ %i.me, %.preheader521.us.us.us.us.us.preheader ], [ %i.nd, %..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa ]
  %.1502525.us.us.us.us.us.epil.init = phi ptr [ %i.md, %.preheader521.us.us.us.us.us.preheader ], [ %i.nb, %..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod702)
  br label %.preheader521.us.us.us.us.us.epil

.preheader521.us.us.us.us.us.epil:                ; preds = %.preheader521.us.us.us.us.us.epil, %.preheader521.us.us.us.us.us.epil.preheader
  %.1383526.us.us.us.us.us.epil = phi ptr [ %i.oh, %.preheader521.us.us.us.us.us.epil ], [ %.1383526.us.us.us.us.us.epil.init, %.preheader521.us.us.us.us.us.epil.preheader ] ; 2 uses
  %.1502525.us.us.us.us.us.epil = phi ptr [ %i.of, %.preheader521.us.us.us.us.us.epil ], [ %.1502525.us.us.us.us.us.epil.init, %.preheader521.us.us.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter699 = phi i32 [ %epil.iter699.next, %.preheader521.us.us.us.us.us.epil ], [ 0, %.preheader521.us.us.us.us.us.epil.preheader ]
  %i.of = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.us.epil, i64 2
  %i.og = load i16, ptr %.1502525.us.us.us.us.us.epil, align 1, !tbaa !54
  store i16 %i.og, ptr %.1383526.us.us.us.us.us.epil, align 2, !tbaa !54
  %i.oh = getelementptr inbounds i8, ptr %.1383526.us.us.us.us.us.epil, i64 %i.lf ; 2 uses
  %epil.iter699.next = add i32 %epil.iter699, 1   ; 2 uses
  %epil.iter699.cmp.not = icmp eq i32 %epil.iter699.next, %xtraiter698
  br i1 %epil.iter699.cmp.not, label %..loopexit522_crit_edge.us.us.us.us.us, label %.preheader521.us.us.us.us.us.epil, !llvm.loop !148

..loopexit522_crit_edge.us.us.us.us.us:           ; preds = %..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa, %.preheader521.us.us.us.us.us.epil, %..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa, %.preheader519.us.us.us.us.us.epil, %.lr.ph535.split.us.us.split.us.us.split.us
  %.2384.us.us.us.us.us = phi ptr [ %i.me, %.lr.ph535.split.us.us.split.us.us.split.us ], [ %i.oe, %.preheader519.us.us.us.us.us.epil ], [ %i.ob, %..loopexit522_crit_edge.us.us.us.us.us.loopexit.unr-lcssa ], [ %i.nd, %..loopexit522_crit_edge.us.us.us.us.us.loopexit679.unr-lcssa ], [ %i.oh, %.preheader521.us.us.us.us.us.epil ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2384.us.us.us.us.us, i8 0, i64 %.0395, i1 false)
  %i.oi = load i32, ptr %i.iv, align 4, !tbaa !87
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.md, i64 %i.oj ; 2 uses
  %i.ol = add nuw nsw i32 %.0391534.us.us.us.us.us, 1 ; 2 uses
  %i.om = load i32, ptr %i.ls, align 4, !tbaa !58
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds i8, ptr %.0403533.us.us.us.us.us, i64 %i.on
  %exitcond595.not = icmp eq i32 %i.ol, %i.gr
  br i1 %exitcond595.not, label %._crit_edge.split.us.us.split.us.us, label %.lr.ph535.split.us.us.split.us.us.split.us, !llvm.loop !149

.lr.ph535.split.us.us.split.us.us.split:          ; preds = %.lr.ph535.us.us, %bb.az
  %i.op = phi ptr [ %i.rg, %bb.az ], [ %.promoted.us.us, %.lr.ph535.us.us ] ; 5 uses
  %.0391534.us.us.us.us = phi i32 [ %i.rh, %bb.az ], [ 0, %.lr.ph535.us.us ]
  %.0403533.us.us.us.us = phi ptr [ %i.rk, %bb.az ], [ %i.mb, %.lr.ph535.us.us ] ; 3 uses
  %i.oq = getelementptr inbounds i8, ptr %.0403533.us.us.us.us, i64 %i.le ; 5 uses
  %i.or = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !157
  %i.ou = and i64 %i.ot, 16
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph535.split.us.us.split.us.us.split
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0403533.us.us.us.us, i8 0, i64 %.0396, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph535.split.us.us.split.us.us.split
  %i.ow = load i32, ptr %i.in, align 4, !tbaa !48
  switch i32 %i.ow, label %..loopexit522_crit_edge.us.us.us.us [
end_hunk_0
begin_hunk_1_@decode_block:bb.a
  store i32 %i.pw, ptr %.0382529.us.us.us.us, align 4, !tbaa !54
  %i.px = getelementptr inbounds i8, ptr %.0382529.us.us.us.us, i64 %i.lf ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 8
  %i.pz = load i32, ptr %i.pv, align 1, !tbaa !54
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !54
  %i.qa = getelementptr inbounds i8, ptr %i.px, i64 %i.lf ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 12
  %i.qc = load i32, ptr %i.py, align 1, !tbaa !54
  store i32 %i.qc, ptr %i.qa, align 4, !tbaa !54
  %i.qd = getelementptr inbounds i8, ptr %i.qa, i64 %i.lf ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 16
  %i.qf = load i32, ptr %i.qb, align 1, !tbaa !54
  store i32 %i.qf, ptr %i.qd, align 4, !tbaa !54
  %i.qg = getelementptr inbounds i8, ptr %i.qd, i64 %i.lf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 20
  %i.qi = load i32, ptr %i.qe, align 1, !tbaa !54
  store i32 %i.qi, ptr %i.qg, align 4, !tbaa !54
  %i.qj = getelementptr inbounds i8, ptr %i.qg, i64 %i.lf ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 24
  %i.ql = load i32, ptr %i.qh, align 1, !tbaa !54
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !54
  %i.qm = getelementptr inbounds i8, ptr %i.qj, i64 %i.lf ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 28
  %i.qo = load i32, ptr %i.qk, align 1, !tbaa !54
  store i32 %i.qo, ptr %i.qm, align 4, !tbaa !54
  %i.qp = getelementptr inbounds i8, ptr %i.qm, i64 %i.lf ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us, i64 32 ; 2 uses
  %i.qr = load i32, ptr %i.qn, align 1, !tbaa !54
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !54
  %i.qs = getelementptr inbounds i8, ptr %i.qp, i64 %i.lf ; 3 uses
  %niter697.next.7 = add i32 %niter697, 8         ; 2 uses
  %niter697.ncmp.7 = icmp eq i32 %niter697.next.7, %unroll_iter696
  br i1 %niter697.ncmp.7, label %..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa, label %.preheader519.us.us.us.us, !llvm.loop !146

..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa: ; preds = %.preheader519.us.us.us.us
  br i1 %lcmp.mod693.not, label %..loopexit522_crit_edge.us.us.us.us, label %.preheader519.us.us.us.us.epil.preheader

.preheader519.us.us.us.us.epil.preheader:         ; preds = %..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa, %.preheader519.us.us.us.us.preheader
  %.0382529.us.us.us.us.epil.init = phi ptr [ %i.oq, %.preheader519.us.us.us.us.preheader ], [ %i.qs, %..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa ]
  %.0501528.us.us.us.us.epil.init = phi ptr [ %i.op, %.preheader519.us.us.us.us.preheader ], [ %i.qq, %..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod695)
  br label %.preheader519.us.us.us.us.epil

.preheader519.us.us.us.us.epil:                   ; preds = %.preheader519.us.us.us.us.epil, %.preheader519.us.us.us.us.epil.preheader
  %.0382529.us.us.us.us.epil = phi ptr [ %i.qv, %.preheader519.us.us.us.us.epil ], [ %.0382529.us.us.us.us.epil.init, %.preheader519.us.us.us.us.epil.preheader ] ; 2 uses
  %.0501528.us.us.us.us.epil = phi ptr [ %i.qt, %.preheader519.us.us.us.us.epil ], [ %.0501528.us.us.us.us.epil.init, %.preheader519.us.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter692 = phi i32 [ %epil.iter692.next, %.preheader519.us.us.us.us.epil ], [ 0, %.preheader519.us.us.us.us.epil.preheader ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.0501528.us.us.us.us.epil, i64 4
  %i.qu = load i32, ptr %.0501528.us.us.us.us.epil, align 1, !tbaa !54
  store i32 %i.qu, ptr %.0382529.us.us.us.us.epil, align 4, !tbaa !54
  %i.qv = getelementptr inbounds i8, ptr %.0382529.us.us.us.us.epil, i64 %i.lf ; 2 uses
  %epil.iter692.next = add i32 %epil.iter692, 1   ; 2 uses
  %epil.iter692.cmp.not = icmp eq i32 %epil.iter692.next, %xtraiter691
  br i1 %epil.iter692.cmp.not, label %..loopexit522_crit_edge.us.us.us.us, label %.preheader519.us.us.us.us.epil, !llvm.loop !150

..loopexit522_crit_edge.us.us.us.us.loopexit680.unr-lcssa: ; preds = %.preheader521.us.us.us.us
  br i1 %lcmp.mod.not, label %..loopexit522_crit_edge.us.us.us.us, label %.preheader521.us.us.us.us.epil.preheader

.preheader521.us.us.us.us.epil.preheader:         ; preds = %..loopexit522_crit_edge.us.us.us.us.loopexit680.unr-lcssa, %.preheader521.us.us.us.us.preheader
  %.1383526.us.us.us.us.epil.init = phi ptr [ %i.oq, %.preheader521.us.us.us.us.preheader ], [ %i.pu, %..loopexit522_crit_edge.us.us.us.us.loopexit680.unr-lcssa ]
  %.1502525.us.us.us.us.epil.init = phi ptr [ %i.op, %.preheader521.us.us.us.us.preheader ], [ %i.ps, %..loopexit522_crit_edge.us.us.us.us.loopexit680.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod690)
  br label %.preheader521.us.us.us.us.epil

.preheader521.us.us.us.us.epil:                   ; preds = %.preheader521.us.us.us.us.epil, %.preheader521.us.us.us.us.epil.preheader
  %.1383526.us.us.us.us.epil = phi ptr [ %i.qy, %.preheader521.us.us.us.us.epil ], [ %.1383526.us.us.us.us.epil.init, %.preheader521.us.us.us.us.epil.preheader ] ; 2 uses
  %.1502525.us.us.us.us.epil = phi ptr [ %i.qw, %.preheader521.us.us.us.us.epil ], [ %.1502525.us.us.us.us.epil.init, %.preheader521.us.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader521.us.us.us.us.epil ], [ 0, %.preheader521.us.us.us.us.epil.preheader ]
  %i.qw = getelementptr inbounds nuw i8, ptr %.1502525.us.us.us.us.epil, i64 2
  %i.qx = load i16, ptr %.1502525.us.us.us.us.epil, align 1, !tbaa !54
  store i16 %i.qx, ptr %.1383526.us.us.us.us.epil, align 2, !tbaa !54
  %i.qy = getelementptr inbounds i8, ptr %.1383526.us.us.us.us.epil, i64 %i.lf ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit522_crit_edge.us.us.us.us, label %.preheader521.us.us.us.us.epil, !llvm.loop !151

..loopexit522_crit_edge.us.us.us.us:              ; preds = %..loopexit522_crit_edge.us.us.us.us.loopexit680.unr-lcssa, %.preheader521.us.us.us.us.epil, %..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa, %.preheader519.us.us.us.us.epil, %bb.ax
  %.2384.us.us.us.us = phi ptr [ %i.oq, %bb.ax ], [ %i.qv, %.preheader519.us.us.us.us.epil ], [ %i.qs, %..loopexit522_crit_edge.us.us.us.us.loopexit.unr-lcssa ], [ %i.pu, %..loopexit522_crit_edge.us.us.us.us.loopexit680.unr-lcssa ], [ %i.qy, %.preheader521.us.us.us.us.epil ]
  %i.qz = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !157
  %i.rc = and i64 %i.rb, 16
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %..loopexit522_crit_edge.us.us.us.us
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2384.us.us.us.us, i8 0, i64 %.0395, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %..loopexit522_crit_edge.us.us.us.us
  %i.re = load i32, ptr %i.iv, align 4, !tbaa !87
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %i.op, i64 %i.rf ; 2 uses
  %i.rh = add nuw nsw i32 %.0391534.us.us.us.us, 1 ; 2 uses
  %i.ri = load i32, ptr %i.ls, align 4, !tbaa !58
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds i8, ptr %.0403533.us.us.us.us, i64 %i.rj
  %exitcond592.not = icmp eq i32 %i.rh, %i.gr
  br i1 %exitcond592.not, label %._crit_edge.split.us.us.split.us.us, label %.lr.ph535.split.us.us.split.us.us.split, !llvm.loop !149

._crit_edge.split.us.us.split.us.us:              ; preds = %bb.az, %..loopexit522_crit_edge.us.us.us.us.us
  %.us-phi = phi ptr [ %i.ok, %..loopexit522_crit_edge.us.us.us.us.us ], [ %i.rg, %bb.az ]
  store ptr %.us-phi, ptr %i.mc, align 8, !tbaa !53
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %i.rl = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load i8, ptr %i.rm, align 8, !tbaa !158
  %i.ro = zext i8 %i.rn to i64
  %i.rp = icmp samesign ult i64 %indvars.iv.next597, %i.ro
  br i1 %i.rp, label %.lr.ph535.us.us, label %.loopexit, !llvm.loop !152

.lr.ph555:                                        ; preds = %bb.av
  %i.rq = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.rr = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.rs = load i32, ptr %i.rq, align 8, !tbaa !58
  %i.rt = mul nsw i32 %i.rs, %.489
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds i8, ptr %i.rr, i64 %i.ru
  %i.rw = shl i32 %.0393, 1
  %i.rx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ry = load i8, ptr %i.rx, align 8, !tbaa !158
  %i.rz = zext i8 %i.ry to i32
  %i.sa = mul i32 %i.rw, %i.rz
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds i8, ptr %i.rv, i64 %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..sroa_idx713 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..sroa_idx717 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.8..sroa_idx714 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.16..sroa_idx718 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..sroa_idx720 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.bf, %.lr.ph555
  %i.sg = phi ptr [ %i.jl, %.lr.ph555 ], [ %i.ui, %bb.bf ] ; 4 uses
  %i.sh = phi ptr [ %.promoted558, %.lr.ph555 ], [ %i.ug, %bb.bf ]
  %i.si = phi ptr [ %.promoted557, %.lr.ph555 ], [ %i.uf, %bb.bf ]
  %i.sj = phi ptr [ %.promoted556, %.lr.ph555 ], [ %i.ue, %bb.bf ]
  %.1392553 = phi i32 [ 0, %.lr.ph555 ], [ %i.uj, %bb.bf ]
  %.1404552 = phi ptr [ %i.sc, %.lr.ph555 ], [ %i.um, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %.0386, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 2 %.1404552, i8 0, i64 %.0396, i1 false)
  %i.sk = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load i8, ptr %i.sl, align 8, !tbaa !158
  %i.sn = zext i8 %i.sm to i32
  %i.so = mul nuw nsw i32 %.0394, %i.sn
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %.1404552, i64 %i.sp ; 2 uses
  %.not467 = icmp eq ptr %i.sg, null
  br i1 %.not467, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.promoted = load ptr, ptr %i.b, align 16, !tbaa !53
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %.promoted737 = load ptr, ptr %i.b, align 16, !tbaa !53
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.bb
  %.0.712738 = phi ptr [ %i.sr, %bb.bb ], [ %.promoted737, %.preheader.us.preheader ] ; 2 uses
  %.0547.us = phi ptr [ %.lcssa678, %bb.bb ], [ %i.sq, %.preheader.us.preheader ] ; 4 uses
  %.0390546.us = phi i32 [ %i.tg, %bb.bb ], [ 0, %.preheader.us.preheader ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.712738, i64 4 ; 2 uses
  %i.ss = load i32, ptr %.0.712738, align 1, !tbaa !54
  %i.st = lshr i32 %i.ss, 16
  %i.su = trunc nuw i32 %i.st to i16
  %i.sv = getelementptr inbounds nuw i8, ptr %.0547.us, i64 2 ; 2 uses
  store i16 %i.su, ptr %.0547.us, align 2, !tbaa !92
  br i1 %.not464.not.not, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.preheader.us
  %.8.715 = load ptr, ptr %.8..sroa_idx714, align 8, !tbaa !53 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.8.715, i64 4
  store ptr %i.sw, ptr %.8..sroa_idx716, align 8, !tbaa !53
  %i.sx = load i32, ptr %.8.715, align 1, !tbaa !54
  %i.sy = lshr i32 %i.sx, 16
  %i.sz = trunc nuw i32 %i.sy to i16
  store i16 %i.sz, ptr %i.sv, align 2, !tbaa !92
  %i.ta = getelementptr inbounds nuw i8, ptr %.0547.us, i64 4
  %.16.719 = load ptr, ptr %.16..sroa_idx718, align 16, !tbaa !53 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.16.719, i64 4
  store ptr %i.tb, ptr %.16..sroa_idx720, align 16, !tbaa !53
  %i.tc = load i32, ptr %.16.719, align 1, !tbaa !54
  %i.td = lshr i32 %i.tc, 16
  %i.te = trunc nuw i32 %i.td to i16
  %i.tf = getelementptr inbounds nuw i8, ptr %.0547.us, i64 6
  store i16 %i.te, ptr %i.ta, align 2, !tbaa !92
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader.us
  %.lcssa678 = phi ptr [ %i.sv, %.preheader.us ], [ %i.tf, %bb.ba ] ; 2 uses
  %i.tg = add nuw nsw i32 %.0390546.us, 1         ; 2 uses
  %exitcond612.not = icmp eq i32 %i.tg, %.fr562
  br i1 %exitcond612.not, label %._crit_edge.loopexit, label %.preheader.us, !llvm.loop !153

.preheader:                                       ; preds = %.preheader.preheader, %bb.bd
  %.0.736 = phi ptr [ %i.th, %bb.bd ], [ %.promoted, %.preheader.preheader ] ; 2 uses
  %.0547 = phi ptr [ %i.ua, %bb.bd ], [ %i.sq, %.preheader.preheader ] ; 5 uses
  %.0390546 = phi i32 [ %i.ub, %bb.bd ], [ 0, %.preheader.preheader ]
  %.1499545 = phi ptr [ %i.tw, %bb.bd ], [ %i.sg, %.preheader.preheader ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.0.736, i64 4 ; 2 uses
  store ptr %i.th, ptr %i.b, align 16, !tbaa !53
  %i.ti = load i32, ptr %.0.736, align 1, !tbaa !54
  %i.tj = lshr i32 %i.ti, 16
  %i.tk = trunc nuw i32 %i.tj to i16
  %i.tl = getelementptr inbounds nuw i8, ptr %.0547, i64 2 ; 2 uses
  store i16 %i.tk, ptr %.0547, align 2, !tbaa !92
  br i1 %.not464.not.not, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.preheader
  %.8. = load ptr, ptr %.8..sroa_idx, align 8, !tbaa !53 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.8., i64 4
  store ptr %i.tm, ptr %.8..sroa_idx713, align 8, !tbaa !53
  %i.tn = load i32, ptr %.8., align 1, !tbaa !54
  %i.to = lshr i32 %i.tn, 16
  %i.tp = trunc nuw i32 %i.to to i16
  store i16 %i.tp, ptr %i.tl, align 2, !tbaa !92
  %i.tq = getelementptr inbounds nuw i8, ptr %.0547, i64 4 ; 2 uses
  %.16. = load ptr, ptr %.16..sroa_idx, align 16, !tbaa !53 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.16., i64 4
  store ptr %i.tr, ptr %.16..sroa_idx717, align 16, !tbaa !53
  %i.ts = load i32, ptr %.16., align 1, !tbaa !54
  %i.tt = lshr i32 %i.ts, 16
  %i.tu = trunc nuw i32 %i.tt to i16
  %i.tv = getelementptr inbounds nuw i8, ptr %.0547, i64 6
  store i16 %i.tu, ptr %i.tq, align 2, !tbaa !92
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader
  %.1544.lcssa = phi ptr [ %.0547, %.preheader ], [ %i.tq, %bb.bc ]
  %.lcssa = phi ptr [ %i.tl, %.preheader ], [ %i.tv, %bb.bc ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.1499545, i64 4
  %i.tx = load i32, ptr %.1499545, align 1, !tbaa !54
  %i.ty = lshr i32 %i.tx, 16
  %i.tz = trunc nuw i32 %i.ty to i16
  %i.ua = getelementptr inbounds nuw i8, ptr %.1544.lcssa, i64 4 ; 2 uses
  store i16 %i.tz, ptr %.lcssa, align 2, !tbaa !92
  %i.ub = add nuw nsw i32 %.0390546, 1            ; 2 uses
  %exitcond606.not.a = icmp eq i32 %i.ub, %.fr562
  br i1 %exitcond606.not.a, label %._crit_edge, label %.preheader, !llvm.loop !153

._crit_edge.loopexit:                             ; preds = %bb.bb
  store ptr %i.sr, ptr %i.b, align 16, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bd, %._crit_edge.loopexit
  %.0.lcssa = phi ptr [ %.lcssa678, %._crit_edge.loopexit ], [ %i.ua, %bb.bd ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %.0.lcssa, i8 0, i64 %.0395, i1 false)
  %i.uc = load i32, ptr %i.iv, align 4, !tbaa !87
  %i.ud = sext i32 %i.uc to i64                   ; 4 uses
  %i.ue = getelementptr inbounds i8, ptr %i.sj, i64 %i.ud ; 2 uses
  store ptr %i.ue, ptr %i.a, align 16, !tbaa !53
  %i.uf = getelementptr inbounds i8, ptr %i.si, i64 %i.ud ; 2 uses
  store ptr %i.uf, ptr %i.se, align 8, !tbaa !53
  %i.ug = getelementptr inbounds i8, ptr %i.sh, i64 %i.ud ; 2 uses
  store ptr %i.ug, ptr %i.sf, align 16, !tbaa !53
  %.not468 = icmp eq ptr %i.sg, null
  br i1 %.not468, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge
  %i.uh = getelementptr inbounds i8, ptr %i.sg, i64 %i.ud ; 2 uses
  store ptr %i.uh, ptr %i.sd, align 8, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge
  %i.ui = phi ptr [ %i.uh, %bb.be ], [ null, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.uj = add nuw nsw i32 %.1392553, 1            ; 2 uses
  %i.uk = load i32, ptr %i.rq, align 8, !tbaa !58
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds i8, ptr %.1404552, i64 %i.ul
  %exitcond613.not = icmp eq i32 %i.uj, %i.gr
  br i1 %exitcond613.not, label %.loopexit, label %.preheader.lr.ph, !llvm.loop !154

.loopexit:                                        ; preds = %._crit_edge.split.us.us.split.us.us, %bb.bf, %.preheader523, %.thread504, %bb.ag, %bb.af, %bb.ac, %.thread, %bb.y, %bb.z, %bb.v, %bb.w, %bb.t, %bb.u, %bb.r, %bb.s, %bb.q, %bb.n, %bb.o, %bb.k, %bb.l, %bb.m, %bb.j, %bb.h, %bb.c, %bb.d, %bb.b, %.thread507, %bb.f
  %.0406 = phi i32 [ -1094995529, %bb.v ], [ -1094995529, %bb.b ], [ -1163346256, %bb.f ], [ -1094995529, %bb.c ], [ -1094995529, %bb.h ], [ -1094995529, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.y ], [ 0, %.thread ], [ %.0385509, %.thread507 ], [ -12, %bb.ag ], [ -12, %bb.af ], [ -1094995529, %bb.ac ], [ -1094995529, %bb.n ], [ -1094995529, %bb.q ], [ -1094995529, %bb.r ], [ -1094995529, %bb.t ], [ -1094995529, %bb.d ], [ -1094995529, %bb.m ], [ -1094995529, %bb.l ], [ -1094995529, %bb.o ], [ -1094995529, %bb.s ], [ -1094995529, %bb.u ], [ -1094995529, %bb.w ], [ -1094995529, %bb.z ], [ -12, %.thread504 ], [ 0, %bb.bf ], [ 0, %.preheader523 ], [ 0, %._crit_edge.split.us.us.split.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0406
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_header_variable(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 39) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.not = icmp ugt i32 %3, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %1) #14
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.k = getelementptr i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 1        ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !44
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %2) #14
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n     ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1        ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.e, %i.q
  %i.s = icmp slt i64 %i.r, 4
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.a, align 8, !tbaa !44
  br label %bytestream2_get_le32.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.o, i64 5        ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !53
  %i.u = load i32, ptr %i.p, align 1, !tbaa !54
  %.pre = ptrtoint ptr %i.t to i64
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.e, %bb.e ], [ %.pre, %bb.f ]
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.u, %bb.f ]   ; 2 uses
  %i.v = sub i64 %i.e, %.pre-phi
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp sgt i32 %.0.i, %i.w
  %spec.select = select i1 %i.x, i32 0, i32 %.0.i
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.z = xor i64 %i.y, -1
  %i.aa = getelementptr inbounds i8, ptr %i.l, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 24, ptr noundef nonnull @.str.78, ptr noundef nonnull %2, ptr noundef nonnull %1) #12
  br label %bb.h

bb.h:                                             ; preds = %bytestream2_get_le32.exit, %bb.g, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.a ], [ %spec.select, %bytestream2_get_le32.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_dict_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @av_image_check_size2(i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @zip_uncompress(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = sext i32 %3 to i64                       ; 4 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = sext i32 %2 to i64
  %i.f = call i32 @uncompress(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %i.e) #12
  %.not = icmp eq i32 %i.f, 0
  %i.g = load i64, ptr %i.a, align 8
  %.not13 = icmp eq i64 %i.g, %i.b
  %or.cond = select i1 %.not, i1 %.not13, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !88
  call void %i.j(ptr noundef %i.k, i64 noundef %i.b) #12
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.m = load ptr, ptr %4, align 8, !tbaa !89
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !88
  call void %i.l(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1094995529, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @piz_uncompress(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.GetByteContext, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @av_malloc(i64 noundef 8192) #12 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !172
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173
  %.not95 = icmp eq ptr %i.h, null
  br i1 %.not95, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
end_hunk_1
