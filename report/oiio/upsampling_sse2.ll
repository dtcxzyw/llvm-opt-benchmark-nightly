Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/upsampling_sse2?download=true
inline.NumInlined: 53
inline.NumDeleted: 13
begin_hunk_0_@UpsampleRgbaLinePair_SSE2:bb.a
  %i.ar = lshr i32 %i.aq, 8
  %i.as = mul nuw nsw i32 %i.ab, 13320
  %i.at = lshr i32 %i.as, 8
  %i.au = add nuw nsw i32 %i.ar, %i.at
  %i.av = sub nsw i32 %i.af, %i.au                ; 2 uses
  %i.aw = add nsw i32 %i.av, 8708                 ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 16384
  %i.ay = lshr i32 %i.aw, 6
  %i.az = icmp slt i32 %i.av, -8708
  %i.ba = select i1 %i.az, i32 0, i32 255
  %i.bb = select i1 %i.ax, i32 %i.ay, i32 %i.ba
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = mul nuw nsw i32 %i.z, 33050
  %i.bf = lshr i32 %i.be, 8
  %i.bg = add nuw nsw i32 %i.bf, %i.af            ; 2 uses
  %i.bh = add nsw i32 %i.bg, -17685               ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 16384
  %i.bj = lshr i32 %i.bh, 6
  %i.bk = icmp samesign ult i32 %i.bg, 17685
  %i.bl = select i1 %i.bk, i32 0, i32 255
  %i.bm = select i1 %i.bi, i32 %i.bj, i32 %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 -1, ptr %i.bp, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bq = add nuw nsw i32 %i.q, %i.n
  %i.br = lshr i32 %i.bq, 1                       ; 2 uses
  %i.bs = add nuw nsw i32 %i.x, %i.u
  %i.bt = lshr i32 %i.bs, 1                       ; 2 uses
  %i.bu = load i8, ptr %1, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, 19077
  %i.bx = lshr i32 %i.bw, 8                       ; 3 uses
  %i.by = mul nuw nsw i32 %i.bt, 26149
  %i.bz = lshr i32 %i.by, 8
  %i.ca = add nuw nsw i32 %i.bx, %i.bz            ; 2 uses
  %i.cb = add nsw i32 %i.ca, -14234               ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 16384
  %i.cd = lshr i32 %i.cb, 6
  %i.ce = icmp samesign ult i32 %i.ca, 14234
  %i.cf = select i1 %i.ce, i32 0, i32 255
  %i.cg = select i1 %i.cc, i32 %i.cd, i32 %i.cf
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %7, align 1, !tbaa !9
  %i.ci = mul nuw nsw i32 %i.br, 6419
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = mul nuw nsw i32 %i.bt, 13320
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = add nuw nsw i32 %i.cl, %i.cj
  %i.cn = sub nsw i32 %i.bx, %i.cm                ; 2 uses
  %i.co = add nsw i32 %i.cn, 8708                 ; 2 uses
  %i.cp = icmp ult i32 %i.co, 16384
  %i.cq = lshr i32 %i.co, 6
  %i.cr = icmp slt i32 %i.cn, -8708
  %i.cs = select i1 %i.cr, i32 0, i32 255
  %i.ct = select i1 %i.cp, i32 %i.cq, i32 %i.cs
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !9
  %i.cw = mul nuw nsw i32 %i.br, 33050
  %i.cx = lshr i32 %i.cw, 8
  %i.cy = add nuw nsw i32 %i.bx, %i.cx            ; 2 uses
  %i.cz = add nsw i32 %i.cy, -17685               ; 2 uses
  %i.da = icmp ult i32 %i.cz, 16384
  %i.db = lshr i32 %i.cz, 6
  %i.dc = icmp samesign ult i32 %i.cy, 17685
  %i.dd = select i1 %i.dc, i32 0, i32 255
  %i.de = select i1 %i.da, i32 %i.db, i32 %i.dd
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 -1, ptr %i.dh, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !9 ; 2 uses
  %i.dw = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.dx = bitcast <2 x i64> %i.dv to <16 x i8>    ; 2 uses
  %i.dy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.dx) ; 4 uses
  %i.dz = bitcast <2 x i64> %i.dr to <16 x i8>    ; 2 uses
  %i.ea = bitcast <2 x i64> %i.dt to <16 x i8>    ; 2 uses
  %i.eb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.ea) ; 4 uses
  %.inner = xor <16 x i8> %i.eb, %i.dy
  %i.ec = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.ed = xor <2 x i64> %i.dv, %i.dp              ; 2 uses
  %i.ee = xor <2 x i64> %i.dt, %i.dr              ; 2 uses
  %i.ef = or <2 x i64> %i.ed, %i.ee
  %i.eg = or <2 x i64> %i.ef, %i.ec
  %i.eh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.eb)
  %i.ei = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ej = and <16 x i8> %i.ei, splat (i8 1)
  %i.ek = sub <16 x i8> %i.eh, %i.ej              ; 4 uses
  %i.el = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ek, <16 x i8> %i.eb)
  %i.em = and <2 x i64> %i.ee, %i.ec
  %.inner284 = xor <16 x i8> %i.ek, %i.eb
  %i.en = bitcast <2 x i64> %i.em to <16 x i8>
  %i.eo = or <16 x i8> %.inner284, %i.en
  %i.ep = and <16 x i8> %i.eo, splat (i8 1)
  %i.eq = sub <16 x i8> %i.el, %i.ep              ; 2 uses
  %i.er = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ek, <16 x i8> %i.dy)
  %i.es = and <2 x i64> %i.ed, %i.ec
  %.inner286 = xor <16 x i8> %i.ek, %i.dy
  %i.et = bitcast <2 x i64> %i.es to <16 x i8>
  %i.eu = or <16 x i8> %.inner286, %i.et
  %i.ev = and <16 x i8> %i.eu, splat (i8 1)
  %i.ew = sub <16 x i8> %i.er, %i.ev              ; 2 uses
  %i.ex = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.eq) ; 2 uses
  %i.ey = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.ew) ; 2 uses
  %i.ez = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fa = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ez, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.fa, ptr %i.di, align 16, !tbaa !9
  %i.fb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ea, <16 x i8> %i.ew) ; 2 uses
  %i.fc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dx, <16 x i8> %i.eq) ; 2 uses
  %i.fd = shufflevector <16 x i8> %i.fb, <16 x i8> %i.fc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fe = shufflevector <16 x i8> %i.fb, <16 x i8> %i.fc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fd, ptr %i.dj, align 16, !tbaa !9
  store <16 x i8> %i.fe, ptr %i.dk, align 16, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fk = load <2 x i64>, ptr %i.fj, align 1, !tbaa !9 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fm = load <2 x i64>, ptr %i.fl, align 1, !tbaa !9 ; 2 uses
  %i.fn = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fo = bitcast <2 x i64> %i.fm to <16 x i8>    ; 2 uses
  %i.fp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.fo) ; 4 uses
  %i.fq = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fr = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.fs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.fr) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fs, %i.fp
  %i.ft = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fu = xor <2 x i64> %i.fm, %i.fg              ; 2 uses
  %i.fv = xor <2 x i64> %i.fk, %i.fi              ; 2 uses
  %i.fw = or <2 x i64> %i.fu, %i.fv
  %i.fx = or <2 x i64> %i.fw, %i.ft
  %i.fy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.fs)
  %i.fz = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.ga = and <16 x i8> %i.fz, splat (i8 1)
  %i.gb = sub <16 x i8> %i.fy, %i.ga              ; 4 uses
  %i.gc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gb, <16 x i8> %i.fs)
  %i.gd = and <2 x i64> %i.fv, %i.ft
  %.inner290 = xor <16 x i8> %i.gb, %i.fs
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = or <16 x i8> %.inner290, %i.ge
  %i.gg = and <16 x i8> %i.gf, splat (i8 1)
  %i.gh = sub <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gb, <16 x i8> %i.fp)
  %i.gj = and <2 x i64> %i.fu, %i.ft
  %.inner292 = xor <16 x i8> %i.gb, %i.fp
  %i.gk = bitcast <2 x i64> %i.gj to <16 x i8>
  %i.gl = or <16 x i8> %.inner292, %i.gk
  %i.gm = and <16 x i8> %i.gl, splat (i8 1)
  %i.gn = sub <16 x i8> %i.gi, %i.gm              ; 2 uses
  %i.go = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.gh) ; 2 uses
  %i.gp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.gn) ; 2 uses
  %i.gq = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gr = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gq, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gr, ptr %i.dl, align 16, !tbaa !9
  %i.gs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fr, <16 x i8> %i.gn) ; 2 uses
  %i.gt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.gh) ; 2 uses
  %i.gu = shufflevector <16 x i8> %i.gs, <16 x i8> %i.gt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gv = shufflevector <16 x i8> %i.gs, <16 x i8> %i.gt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gu, ptr %i.dm, align 16, !tbaa !9
  store <16 x i8> %i.gv, ptr %i.dn, align 16, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gx = shl nsw i64 %indvars.iv274, 2           ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 %i.gx
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gy) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 %i.gx
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.ha) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.hb = trunc i64 %indvars.iv to i32
  %i.hc = add i32 %i.hb, 33
  %.not259 = icmp sgt i32 %i.hc, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.hd = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.hd, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %indvars.iv.next273, %._crit_edge.loopexit ] ; 4 uses
  %i.he = icmp sgt i32 %8, 1
  br i1 %i.he, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hf = add nuw nsw i32 %8, 1
  %i.hg = lshr i32 %i.hf, 1
  %i.hh = lshr i32 %.0255.lcssa, 1
  %i.hi = sub nsw i32 %i.hg, %i.hh                ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hm = sext i32 %i.hi to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hl, i64 %i.hm, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hn, i64 %i.hm, i1 false)
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 %i.hm
  %i.hp = add nsw i32 %i.hi, -1
  %i.hq = sext i32 %i.hp to i64                   ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.b, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  %i.ht = sub nsw i32 17, %i.hi
  %i.hu = sext i32 %i.ht to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ho, i8 %i.hs, i64 %i.hu, i1 false)
  %i.hv = getelementptr inbounds i8, ptr %i.c, i64 %i.hm
  %i.hw = getelementptr inbounds i8, ptr %i.c, i64 %i.hq
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hv, i8 %i.hx, i64 %i.hu, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.hy = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.ib = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.ie = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.if = bitcast <2 x i64> %i.id to <16 x i8>    ; 2 uses
  %i.ig = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.if) ; 4 uses
  %i.ih = bitcast <2 x i64> %i.ia to <16 x i8>    ; 2 uses
  %i.ii = bitcast <2 x i64> %i.ib to <16 x i8>    ; 2 uses
  %i.ij = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.ii) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ij, %i.ig
  %i.ik = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.il = xor <2 x i64> %i.id, %i.hy              ; 2 uses
  %i.im = xor <2 x i64> %i.ib, %i.ia              ; 2 uses
  %i.in = or <2 x i64> %i.il, %i.im
  %i.io = or <2 x i64> %i.in, %i.ik
  %i.ip = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ig, <16 x i8> %i.ij)
  %i.iq = bitcast <2 x i64> %i.io to <16 x i8>
  %i.ir = and <16 x i8> %i.iq, splat (i8 1)
  %i.is = sub <16 x i8> %i.ip, %i.ir              ; 4 uses
  %i.it = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.is, <16 x i8> %i.ij)
  %i.iu = and <2 x i64> %i.im, %i.ik
  %.inner296 = xor <16 x i8> %i.is, %i.ij
  %i.iv = bitcast <2 x i64> %i.iu to <16 x i8>
  %i.iw = or <16 x i8> %.inner296, %i.iv
  %i.ix = and <16 x i8> %i.iw, splat (i8 1)
  %i.iy = sub <16 x i8> %i.it, %i.ix              ; 2 uses
  %i.iz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.is, <16 x i8> %i.ig)
  %i.ja = and <2 x i64> %i.il, %i.ik
  %.inner298 = xor <16 x i8> %i.is, %i.ig
  %i.jb = bitcast <2 x i64> %i.ja to <16 x i8>
  %i.jc = or <16 x i8> %.inner298, %i.jb
  %i.jd = and <16 x i8> %i.jc, splat (i8 1)
  %i.je = sub <16 x i8> %i.iz, %i.jd              ; 2 uses
  %i.jf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.iy) ; 2 uses
  %i.jg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.je) ; 2 uses
  %i.jh = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ji = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jh, ptr %i.i, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.ji, ptr %i.jj, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ii, <16 x i8> %i.je) ; 2 uses
  %i.jl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.iy) ; 2 uses
  %i.jm = shufflevector <16 x i8> %i.jk, <16 x i8> %i.jl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jn = shufflevector <16 x i8> %i.jk, <16 x i8> %i.jl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jo = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jm, ptr %i.jo, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jn, ptr %i.jp, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jq, i64 %i.hm, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jr, i64 %i.hm, i1 false)
  %i.js = getelementptr inbounds i8, ptr %i.d, i64 %i.hm
  %i.jt = getelementptr inbounds i8, ptr %i.d, i64 %i.hq
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.js, i8 %i.ju, i64 %i.hu, i1 false)
  %i.jv = getelementptr inbounds i8, ptr %i.e, i64 %i.hm
  %i.jw = getelementptr inbounds i8, ptr %i.e, i64 %i.hq
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jv, i8 %i.jx, i64 %i.hu, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.jy = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ka = load <2 x i64>, ptr %i.jz, align 1, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kd = load <2 x i64>, ptr %i.kc, align 1, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.ke = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kf = bitcast <2 x i64> %i.kd to <16 x i8>    ; 2 uses
  %i.kg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.kf) ; 4 uses
  %i.kh = bitcast <2 x i64> %i.ka to <16 x i8>    ; 2 uses
  %i.ki = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %i.kj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.ki) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kj, %i.kg
  %i.kk = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kl = xor <2 x i64> %i.kd, %i.jy              ; 2 uses
  %i.km = xor <2 x i64> %i.kb, %i.ka              ; 2 uses
  %i.kn = or <2 x i64> %i.kl, %i.km
  %i.ko = or <2 x i64> %i.kn, %i.kk
  %i.kp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.kj)
  %i.kq = bitcast <2 x i64> %i.ko to <16 x i8>
  %i.kr = and <16 x i8> %i.kq, splat (i8 1)
  %i.ks = sub <16 x i8> %i.kp, %i.kr              ; 4 uses
  %i.kt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ks, <16 x i8> %i.kj)
  %i.ku = and <2 x i64> %i.km, %i.kk
  %.inner302 = xor <16 x i8> %i.ks, %i.kj
  %i.kv = bitcast <2 x i64> %i.ku to <16 x i8>
  %i.kw = or <16 x i8> %.inner302, %i.kv
  %i.kx = and <16 x i8> %i.kw, splat (i8 1)
  %i.ky = sub <16 x i8> %i.kt, %i.kx              ; 2 uses
  %i.kz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ks, <16 x i8> %i.kg)
  %i.la = and <2 x i64> %i.kl, %i.kk
  %.inner304 = xor <16 x i8> %i.ks, %i.kg
  %i.lb = bitcast <2 x i64> %i.la to <16 x i8>
  %i.lc = or <16 x i8> %.inner304, %i.lb
  %i.ld = and <16 x i8> %i.lc, splat (i8 1)
  %i.le = sub <16 x i8> %i.kz, %i.ld              ; 2 uses
  %i.lf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.ky) ; 2 uses
  %i.lg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.le) ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lh, ptr %i.j, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.li, ptr %i.lj, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ki, <16 x i8> %i.le) ; 2 uses
  %i.ll = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.ky) ; 2 uses
  %i.lm = shufflevector <16 x i8> %i.lk, <16 x i8> %i.ll, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ln = shufflevector <16 x i8> %i.lk, <16 x i8> %i.ll, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lo = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lm, ptr %i.lo, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lp = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.ln, ptr %i.lp, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lq = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  %i.ls = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hk, ptr nonnull align 1 %i.lr, i64 %i.lt, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hj) #8
  %i.lu = shl nsw i32 %.0255.lcssa, 2
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 %i.lv
  %i.lx = shl nsw i32 %i.ls, 2
  %i.ly = sext i32 %i.lx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lw, ptr nonnull align 16 %i.hj, i64 %i.ly, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 %i.lq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lz, ptr nonnull align 1 %i.mb, i64 %i.lt, i1 false)
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hj) #8
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.lz, ptr noundef nonnull %i.jo, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.ma) #8
  %i.mc = shl nsw i32 %.0255.lcssa, 2
  %i.md = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md
  %i.mf = shl nsw i32 %i.ls, 2
  %i.mg = sext i32 %i.mf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.me, ptr nonnull align 16 %i.hj, i64 %i.mg, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 %i.md
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 16 %i.ma, i64 %i.mg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleBgraLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 4)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.z, 33050
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -17685               ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 16384
  %i.al = lshr i32 %i.aj, 6
  %i.am = icmp samesign ult i32 %i.ai, 17685
  %i.an = select i1 %i.am, i32 0, i32 255
  %i.ao = select i1 %i.ak, i32 %i.al, i32 %i.an
  %i.ap = trunc i32 %i.ao to i8
  store i8 %i.ap, ptr %6, align 1, !tbaa !9
  %i.aq = mul nuw nsw i32 %i.z, 6419
  %i.ar = lshr i32 %i.aq, 8
  %i.as = mul nuw nsw i32 %i.ab, 13320
  %i.at = lshr i32 %i.as, 8
  %i.au = add nuw nsw i32 %i.ar, %i.at
  %i.av = sub nsw i32 %i.af, %i.au                ; 2 uses
  %i.aw = add nsw i32 %i.av, 8708                 ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 16384
  %i.ay = lshr i32 %i.aw, 6
  %i.az = icmp slt i32 %i.av, -8708
  %i.ba = select i1 %i.az, i32 0, i32 255
  %i.bb = select i1 %i.ax, i32 %i.ay, i32 %i.ba
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = mul nuw nsw i32 %i.ab, 26149
  %i.bf = lshr i32 %i.be, 8
  %i.bg = add nuw nsw i32 %i.bf, %i.af            ; 2 uses
  %i.bh = add nsw i32 %i.bg, -14234               ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 16384
  %i.bj = lshr i32 %i.bh, 6
  %i.bk = icmp samesign ult i32 %i.bg, 14234
  %i.bl = select i1 %i.bk, i32 0, i32 255
  %i.bm = select i1 %i.bi, i32 %i.bj, i32 %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 -1, ptr %i.bp, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bq = add nuw nsw i32 %i.q, %i.n
  %i.br = lshr i32 %i.bq, 1                       ; 2 uses
  %i.bs = add nuw nsw i32 %i.x, %i.u
  %i.bt = lshr i32 %i.bs, 1                       ; 2 uses
  %i.bu = load i8, ptr %1, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, 19077
  %i.bx = lshr i32 %i.bw, 8                       ; 3 uses
  %i.by = mul nuw nsw i32 %i.br, 33050
  %i.bz = lshr i32 %i.by, 8
  %i.ca = add nuw nsw i32 %i.bx, %i.bz            ; 2 uses
  %i.cb = add nsw i32 %i.ca, -17685               ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 16384
  %i.cd = lshr i32 %i.cb, 6
  %i.ce = icmp samesign ult i32 %i.ca, 17685
  %i.cf = select i1 %i.ce, i32 0, i32 255
  %i.cg = select i1 %i.cc, i32 %i.cd, i32 %i.cf
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %7, align 1, !tbaa !9
  %i.ci = mul nuw nsw i32 %i.br, 6419
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = mul nuw nsw i32 %i.bt, 13320
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = add nuw nsw i32 %i.cl, %i.cj
  %i.cn = sub nsw i32 %i.bx, %i.cm                ; 2 uses
  %i.co = add nsw i32 %i.cn, 8708                 ; 2 uses
  %i.cp = icmp ult i32 %i.co, 16384
  %i.cq = lshr i32 %i.co, 6
  %i.cr = icmp slt i32 %i.cn, -8708
  %i.cs = select i1 %i.cr, i32 0, i32 255
  %i.ct = select i1 %i.cp, i32 %i.cq, i32 %i.cs
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !9
  %i.cw = mul nuw nsw i32 %i.bt, 26149
  %i.cx = lshr i32 %i.cw, 8
  %i.cy = add nuw nsw i32 %i.bx, %i.cx            ; 2 uses
  %i.cz = add nsw i32 %i.cy, -14234               ; 2 uses
  %i.da = icmp ult i32 %i.cz, 16384
  %i.db = lshr i32 %i.cz, 6
  %i.dc = icmp samesign ult i32 %i.cy, 14234
  %i.dd = select i1 %i.dc, i32 0, i32 255
  %i.de = select i1 %i.da, i32 %i.db, i32 %i.dd
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 -1, ptr %i.dh, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !9 ; 2 uses
  %i.dw = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.dx = bitcast <2 x i64> %i.dv to <16 x i8>    ; 2 uses
  %i.dy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.dx) ; 4 uses
  %i.dz = bitcast <2 x i64> %i.dr to <16 x i8>    ; 2 uses
  %i.ea = bitcast <2 x i64> %i.dt to <16 x i8>    ; 2 uses
  %i.eb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.ea) ; 4 uses
  %.inner = xor <16 x i8> %i.eb, %i.dy
  %i.ec = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.ed = xor <2 x i64> %i.dv, %i.dp              ; 2 uses
  %i.ee = xor <2 x i64> %i.dt, %i.dr              ; 2 uses
  %i.ef = or <2 x i64> %i.ed, %i.ee
  %i.eg = or <2 x i64> %i.ef, %i.ec
  %i.eh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.eb)
  %i.ei = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ej = and <16 x i8> %i.ei, splat (i8 1)
  %i.ek = sub <16 x i8> %i.eh, %i.ej              ; 4 uses
  %i.el = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ek, <16 x i8> %i.eb)
  %i.em = and <2 x i64> %i.ee, %i.ec
  %.inner284 = xor <16 x i8> %i.ek, %i.eb
  %i.en = bitcast <2 x i64> %i.em to <16 x i8>
  %i.eo = or <16 x i8> %.inner284, %i.en
  %i.ep = and <16 x i8> %i.eo, splat (i8 1)
  %i.eq = sub <16 x i8> %i.el, %i.ep              ; 2 uses
  %i.er = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ek, <16 x i8> %i.dy)
  %i.es = and <2 x i64> %i.ed, %i.ec
  %.inner286 = xor <16 x i8> %i.ek, %i.dy
  %i.et = bitcast <2 x i64> %i.es to <16 x i8>
  %i.eu = or <16 x i8> %.inner286, %i.et
  %i.ev = and <16 x i8> %i.eu, splat (i8 1)
  %i.ew = sub <16 x i8> %i.er, %i.ev              ; 2 uses
  %i.ex = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.eq) ; 2 uses
  %i.ey = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.ew) ; 2 uses
  %i.ez = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fa = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ez, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.fa, ptr %i.di, align 16, !tbaa !9
  %i.fb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ea, <16 x i8> %i.ew) ; 2 uses
  %i.fc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dx, <16 x i8> %i.eq) ; 2 uses
  %i.fd = shufflevector <16 x i8> %i.fb, <16 x i8> %i.fc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fe = shufflevector <16 x i8> %i.fb, <16 x i8> %i.fc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fd, ptr %i.dj, align 16, !tbaa !9
  store <16 x i8> %i.fe, ptr %i.dk, align 16, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fk = load <2 x i64>, ptr %i.fj, align 1, !tbaa !9 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fm = load <2 x i64>, ptr %i.fl, align 1, !tbaa !9 ; 2 uses
  %i.fn = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fo = bitcast <2 x i64> %i.fm to <16 x i8>    ; 2 uses
  %i.fp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.fo) ; 4 uses
  %i.fq = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fr = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.fs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.fr) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fs, %i.fp
  %i.ft = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fu = xor <2 x i64> %i.fm, %i.fg              ; 2 uses
  %i.fv = xor <2 x i64> %i.fk, %i.fi              ; 2 uses
  %i.fw = or <2 x i64> %i.fu, %i.fv
  %i.fx = or <2 x i64> %i.fw, %i.ft
  %i.fy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.fs)
  %i.fz = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.ga = and <16 x i8> %i.fz, splat (i8 1)
  %i.gb = sub <16 x i8> %i.fy, %i.ga              ; 4 uses
  %i.gc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gb, <16 x i8> %i.fs)
  %i.gd = and <2 x i64> %i.fv, %i.ft
  %.inner290 = xor <16 x i8> %i.gb, %i.fs
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = or <16 x i8> %.inner290, %i.ge
  %i.gg = and <16 x i8> %i.gf, splat (i8 1)
  %i.gh = sub <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gb, <16 x i8> %i.fp)
  %i.gj = and <2 x i64> %i.fu, %i.ft
  %.inner292 = xor <16 x i8> %i.gb, %i.fp
  %i.gk = bitcast <2 x i64> %i.gj to <16 x i8>
  %i.gl = or <16 x i8> %.inner292, %i.gk
  %i.gm = and <16 x i8> %i.gl, splat (i8 1)
  %i.gn = sub <16 x i8> %i.gi, %i.gm              ; 2 uses
  %i.go = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.gh) ; 2 uses
  %i.gp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.gn) ; 2 uses
  %i.gq = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gr = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gq, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gr, ptr %i.dl, align 16, !tbaa !9
  %i.gs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fr, <16 x i8> %i.gn) ; 2 uses
  %i.gt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.gh) ; 2 uses
  %i.gu = shufflevector <16 x i8> %i.gs, <16 x i8> %i.gt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gv = shufflevector <16 x i8> %i.gs, <16 x i8> %i.gt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gu, ptr %i.dm, align 16, !tbaa !9
  store <16 x i8> %i.gv, ptr %i.dn, align 16, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gx = shl nsw i64 %indvars.iv274, 2           ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 %i.gx
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gy) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 %i.gx
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.ha) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.hb = trunc i64 %indvars.iv to i32
  %i.hc = add i32 %i.hb, 33
  %.not259 = icmp sgt i32 %i.hc, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !32

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.hd = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.hd, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %indvars.iv.next273, %._crit_edge.loopexit ] ; 4 uses
  %i.he = icmp sgt i32 %8, 1
  br i1 %i.he, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hf = add nuw nsw i32 %8, 1
  %i.hg = lshr i32 %i.hf, 1
  %i.hh = lshr i32 %.0255.lcssa, 1
  %i.hi = sub nsw i32 %i.hg, %i.hh                ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hm = sext i32 %i.hi to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hl, i64 %i.hm, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hn, i64 %i.hm, i1 false)
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 %i.hm
  %i.hp = add nsw i32 %i.hi, -1
  %i.hq = sext i32 %i.hp to i64                   ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.b, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  %i.ht = sub nsw i32 17, %i.hi
  %i.hu = sext i32 %i.ht to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ho, i8 %i.hs, i64 %i.hu, i1 false)
  %i.hv = getelementptr inbounds i8, ptr %i.c, i64 %i.hm
  %i.hw = getelementptr inbounds i8, ptr %i.c, i64 %i.hq
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hv, i8 %i.hx, i64 %i.hu, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.hy = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.ib = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.ie = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.if = bitcast <2 x i64> %i.id to <16 x i8>    ; 2 uses
  %i.ig = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.if) ; 4 uses
  %i.ih = bitcast <2 x i64> %i.ia to <16 x i8>    ; 2 uses
  %i.ii = bitcast <2 x i64> %i.ib to <16 x i8>    ; 2 uses
  %i.ij = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.ii) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ij, %i.ig
  %i.ik = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.il = xor <2 x i64> %i.id, %i.hy              ; 2 uses
  %i.im = xor <2 x i64> %i.ib, %i.ia              ; 2 uses
  %i.in = or <2 x i64> %i.il, %i.im
  %i.io = or <2 x i64> %i.in, %i.ik
  %i.ip = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ig, <16 x i8> %i.ij)
  %i.iq = bitcast <2 x i64> %i.io to <16 x i8>
  %i.ir = and <16 x i8> %i.iq, splat (i8 1)
  %i.is = sub <16 x i8> %i.ip, %i.ir              ; 4 uses
  %i.it = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.is, <16 x i8> %i.ij)
  %i.iu = and <2 x i64> %i.im, %i.ik
  %.inner296 = xor <16 x i8> %i.is, %i.ij
  %i.iv = bitcast <2 x i64> %i.iu to <16 x i8>
  %i.iw = or <16 x i8> %.inner296, %i.iv
  %i.ix = and <16 x i8> %i.iw, splat (i8 1)
  %i.iy = sub <16 x i8> %i.it, %i.ix              ; 2 uses
  %i.iz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.is, <16 x i8> %i.ig)
  %i.ja = and <2 x i64> %i.il, %i.ik
  %.inner298 = xor <16 x i8> %i.is, %i.ig
  %i.jb = bitcast <2 x i64> %i.ja to <16 x i8>
  %i.jc = or <16 x i8> %.inner298, %i.jb
  %i.jd = and <16 x i8> %i.jc, splat (i8 1)
  %i.je = sub <16 x i8> %i.iz, %i.jd              ; 2 uses
  %i.jf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.iy) ; 2 uses
  %i.jg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.je) ; 2 uses
  %i.jh = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ji = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jh, ptr %i.i, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.ji, ptr %i.jj, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ii, <16 x i8> %i.je) ; 2 uses
  %i.jl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.iy) ; 2 uses
  %i.jm = shufflevector <16 x i8> %i.jk, <16 x i8> %i.jl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jn = shufflevector <16 x i8> %i.jk, <16 x i8> %i.jl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jo = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jm, ptr %i.jo, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jn, ptr %i.jp, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jq, i64 %i.hm, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jr, i64 %i.hm, i1 false)
  %i.js = getelementptr inbounds i8, ptr %i.d, i64 %i.hm
  %i.jt = getelementptr inbounds i8, ptr %i.d, i64 %i.hq
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.js, i8 %i.ju, i64 %i.hu, i1 false)
  %i.jv = getelementptr inbounds i8, ptr %i.e, i64 %i.hm
  %i.jw = getelementptr inbounds i8, ptr %i.e, i64 %i.hq
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jv, i8 %i.jx, i64 %i.hu, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.jy = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !43, !noalias !50 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ka = load <2 x i64>, ptr %i.jz, align 1, !tbaa !9, !alias.scope !43, !noalias !50 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !46, !noalias !51 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kd = load <2 x i64>, ptr %i.kc, align 1, !tbaa !9, !alias.scope !46, !noalias !51 ; 2 uses
  %i.ke = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kf = bitcast <2 x i64> %i.kd to <16 x i8>    ; 2 uses
  %i.kg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.kf) ; 4 uses
  %i.kh = bitcast <2 x i64> %i.ka to <16 x i8>    ; 2 uses
  %i.ki = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %i.kj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.ki) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kj, %i.kg
  %i.kk = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kl = xor <2 x i64> %i.kd, %i.jy              ; 2 uses
  %i.km = xor <2 x i64> %i.kb, %i.ka              ; 2 uses
  %i.kn = or <2 x i64> %i.kl, %i.km
  %i.ko = or <2 x i64> %i.kn, %i.kk
  %i.kp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.kj)
  %i.kq = bitcast <2 x i64> %i.ko to <16 x i8>
  %i.kr = and <16 x i8> %i.kq, splat (i8 1)
  %i.ks = sub <16 x i8> %i.kp, %i.kr              ; 4 uses
  %i.kt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ks, <16 x i8> %i.kj)
  %i.ku = and <2 x i64> %i.km, %i.kk
  %.inner302 = xor <16 x i8> %i.ks, %i.kj
  %i.kv = bitcast <2 x i64> %i.ku to <16 x i8>
  %i.kw = or <16 x i8> %.inner302, %i.kv
  %i.kx = and <16 x i8> %i.kw, splat (i8 1)
  %i.ky = sub <16 x i8> %i.kt, %i.kx              ; 2 uses
  %i.kz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ks, <16 x i8> %i.kg)
  %i.la = and <2 x i64> %i.kl, %i.kk
  %.inner304 = xor <16 x i8> %i.ks, %i.kg
  %i.lb = bitcast <2 x i64> %i.la to <16 x i8>
  %i.lc = or <16 x i8> %.inner304, %i.lb
  %i.ld = and <16 x i8> %i.lc, splat (i8 1)
  %i.le = sub <16 x i8> %i.kz, %i.ld              ; 2 uses
  %i.lf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.ky) ; 2 uses
  %i.lg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.le) ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lh, ptr %i.j, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.li, ptr %i.lj, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.lk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ki, <16 x i8> %i.le) ; 2 uses
  %i.ll = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.ky) ; 2 uses
  %i.lm = shufflevector <16 x i8> %i.lk, <16 x i8> %i.ll, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ln = shufflevector <16 x i8> %i.lk, <16 x i8> %i.ll, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lo = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lm, ptr %i.lo, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.lp = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.ln, ptr %i.lp, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lq = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  %i.ls = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hk, ptr nonnull align 1 %i.lr, i64 %i.lt, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hj) #8
  %i.lu = shl nsw i32 %.0255.lcssa, 2
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 %i.lv
  %i.lx = shl nsw i32 %i.ls, 2
  %i.ly = sext i32 %i.lx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lw, ptr nonnull align 16 %i.hj, i64 %i.ly, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 %i.lq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lz, ptr nonnull align 1 %i.mb, i64 %i.lt, i1 false)
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hj) #8
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.lz, ptr noundef nonnull %i.jo, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.ma) #8
  %i.mc = shl nsw i32 %.0255.lcssa, 2
  %i.md = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md
  %i.mf = shl nsw i32 %i.ls, 2
  %i.mg = sext i32 %i.mf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.me, ptr nonnull align 16 %i.hj, i64 %i.mg, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 %i.md
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 16 %i.ma, i64 %i.mg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgbLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 3)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.ab, 26149
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -14234               ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 16384
  %i.al = lshr i32 %i.aj, 6
  %i.am = icmp samesign ult i32 %i.ai, 14234
  %i.an = select i1 %i.am, i32 0, i32 255
  %i.ao = select i1 %i.ak, i32 %i.al, i32 %i.an
  %i.ap = trunc i32 %i.ao to i8
  store i8 %i.ap, ptr %6, align 1, !tbaa !9
  %i.aq = mul nuw nsw i32 %i.z, 6419
  %i.ar = lshr i32 %i.aq, 8
  %i.as = mul nuw nsw i32 %i.ab, 13320
  %i.at = lshr i32 %i.as, 8
  %i.au = add nuw nsw i32 %i.ar, %i.at
  %i.av = sub nsw i32 %i.af, %i.au                ; 2 uses
  %i.aw = add nsw i32 %i.av, 8708                 ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 16384
  %i.ay = lshr i32 %i.aw, 6
  %i.az = icmp slt i32 %i.av, -8708
  %i.ba = select i1 %i.az, i32 0, i32 255
  %i.bb = select i1 %i.ax, i32 %i.ay, i32 %i.ba
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = mul nuw nsw i32 %i.z, 33050
  %i.bf = lshr i32 %i.be, 8
  %i.bg = add nuw nsw i32 %i.bf, %i.af            ; 2 uses
  %i.bh = add nsw i32 %i.bg, -17685               ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 16384
  %i.bj = lshr i32 %i.bh, 6
  %i.bk = icmp samesign ult i32 %i.bg, 17685
  %i.bl = select i1 %i.bk, i32 0, i32 255
  %i.bm = select i1 %i.bi, i32 %i.bj, i32 %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = add nuw nsw i32 %i.q, %i.n
  %i.bq = lshr i32 %i.bp, 1                       ; 2 uses
  %i.br = add nuw nsw i32 %i.x, %i.u
  %i.bs = lshr i32 %i.br, 1                       ; 2 uses
  %i.bt = load i8, ptr %1, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i32
  %i.bv = mul nuw nsw i32 %i.bu, 19077
  %i.bw = lshr i32 %i.bv, 8                       ; 3 uses
  %i.bx = mul nuw nsw i32 %i.bs, 26149
  %i.by = lshr i32 %i.bx, 8
  %i.bz = add nuw nsw i32 %i.bw, %i.by            ; 2 uses
  %i.ca = add nsw i32 %i.bz, -14234               ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 16384
  %i.cc = lshr i32 %i.ca, 6
  %i.cd = icmp samesign ult i32 %i.bz, 14234
  %i.ce = select i1 %i.cd, i32 0, i32 255
  %i.cf = select i1 %i.cb, i32 %i.cc, i32 %i.ce
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %7, align 1, !tbaa !9
  %i.ch = mul nuw nsw i32 %i.bq, 6419
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = mul nuw nsw i32 %i.bs, 13320
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = add nuw nsw i32 %i.ck, %i.ci
  %i.cm = sub nsw i32 %i.bw, %i.cl                ; 2 uses
  %i.cn = add nsw i32 %i.cm, 8708                 ; 2 uses
  %i.co = icmp ult i32 %i.cn, 16384
  %i.cp = lshr i32 %i.cn, 6
  %i.cq = icmp slt i32 %i.cm, -8708
  %i.cr = select i1 %i.cq, i32 0, i32 255
  %i.cs = select i1 %i.co, i32 %i.cp, i32 %i.cr
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !9
  %i.cv = mul nuw nsw i32 %i.bq, 33050
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = add nuw nsw i32 %i.bw, %i.cw            ; 2 uses
  %i.cy = add nsw i32 %i.cx, -17685               ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 16384
  %i.da = lshr i32 %i.cy, 6
  %i.db = icmp samesign ult i32 %i.cx, 17685
  %i.dc = select i1 %i.db, i32 0, i32 255
  %i.dd = select i1 %i.cz, i32 %i.da, i32 %i.dc
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.de, ptr %i.df, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !9 ; 2 uses
  %i.du = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dv = bitcast <2 x i64> %i.dt to <16 x i8>    ; 2 uses
  %i.dw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.du, <16 x i8> %i.dv) ; 4 uses
  %i.dx = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dr to <16 x i8>    ; 2 uses
  %i.dz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dx, <16 x i8> %i.dy) ; 4 uses
  %.inner = xor <16 x i8> %i.dz, %i.dw
  %i.ea = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.eb = xor <2 x i64> %i.dt, %i.dn              ; 2 uses
  %i.ec = xor <2 x i64> %i.dr, %i.dp              ; 2 uses
  %i.ed = or <2 x i64> %i.eb, %i.ec
  %i.ee = or <2 x i64> %i.ed, %i.ea
  %i.ef = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.dz)
  %i.eg = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.eh = and <16 x i8> %i.eg, splat (i8 1)
  %i.ei = sub <16 x i8> %i.ef, %i.eh              ; 4 uses
  %i.ej = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ei, <16 x i8> %i.dz)
  %i.ek = and <2 x i64> %i.ec, %i.ea
  %.inner284 = xor <16 x i8> %i.ei, %i.dz
  %i.el = bitcast <2 x i64> %i.ek to <16 x i8>
  %i.em = or <16 x i8> %.inner284, %i.el
  %i.en = and <16 x i8> %i.em, splat (i8 1)
  %i.eo = sub <16 x i8> %i.ej, %i.en              ; 2 uses
  %i.ep = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ei, <16 x i8> %i.dw)
  %i.eq = and <2 x i64> %i.eb, %i.ea
  %.inner286 = xor <16 x i8> %i.ei, %i.dw
  %i.er = bitcast <2 x i64> %i.eq to <16 x i8>
  %i.es = or <16 x i8> %.inner286, %i.er
  %i.et = and <16 x i8> %i.es, splat (i8 1)
  %i.eu = sub <16 x i8> %i.ep, %i.et              ; 2 uses
  %i.ev = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.du, <16 x i8> %i.eo) ; 2 uses
  %i.ew = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dx, <16 x i8> %i.eu) ; 2 uses
  %i.ex = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ey = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
end_hunk_0
begin_hunk_1_@UpsampleArgbLinePair_SSE2:bb.a
  store i8 %i.aq, ptr %i.ae, align 1, !tbaa !9
  %i.ar = mul nuw nsw i32 %i.z, 6419
  %i.as = lshr i32 %i.ar, 8
  %i.at = mul nuw nsw i32 %i.ab, 13320
  %i.au = lshr i32 %i.at, 8
  %i.av = add nuw nsw i32 %i.as, %i.au
  %i.aw = sub nsw i32 %i.ag, %i.av                ; 2 uses
  %i.ax = add nsw i32 %i.aw, 8708                 ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 16384
  %i.az = lshr i32 %i.ax, 6
  %i.ba = icmp slt i32 %i.aw, -8708
  %i.bb = select i1 %i.ba, i32 0, i32 255
  %i.bc = select i1 %i.ay, i32 %i.az, i32 %i.bb
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !9
  %i.bf = mul nuw nsw i32 %i.z, 33050
  %i.bg = lshr i32 %i.bf, 8
  %i.bh = add nuw nsw i32 %i.bg, %i.ag            ; 2 uses
  %i.bi = add nsw i32 %i.bh, -17685               ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 16384
  %i.bk = lshr i32 %i.bi, 6
  %i.bl = icmp samesign ult i32 %i.bh, 17685
  %i.bm = select i1 %i.bl, i32 0, i32 255
  %i.bn = select i1 %i.bj, i32 %i.bk, i32 %i.bm
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bq = add nuw nsw i32 %i.q, %i.n
  %i.br = lshr i32 %i.bq, 1                       ; 2 uses
  %i.bs = add nuw nsw i32 %i.x, %i.u
  %i.bt = lshr i32 %i.bs, 1                       ; 2 uses
  %i.bu = load i8, ptr %1, align 1, !tbaa !9
  store i8 -1, ptr %7, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bx = mul nuw nsw i32 %i.bv, 19077
  %i.by = lshr i32 %i.bx, 8                       ; 3 uses
  %i.bz = mul nuw nsw i32 %i.bt, 26149
  %i.ca = lshr i32 %i.bz, 8
  %i.cb = add nuw nsw i32 %i.by, %i.ca            ; 2 uses
  %i.cc = add nsw i32 %i.cb, -14234               ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 16384
  %i.ce = lshr i32 %i.cc, 6
  %i.cf = icmp samesign ult i32 %i.cb, 14234
  %i.cg = select i1 %i.cf, i32 0, i32 255
  %i.ch = select i1 %i.cd, i32 %i.ce, i32 %i.cg
  %i.ci = trunc i32 %i.ch to i8
  store i8 %i.ci, ptr %i.bw, align 1, !tbaa !9
  %i.cj = mul nuw nsw i32 %i.br, 6419
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = mul nuw nsw i32 %i.bt, 13320
  %i.cm = lshr i32 %i.cl, 8
  %i.cn = add nuw nsw i32 %i.cm, %i.ck
  %i.co = sub nsw i32 %i.by, %i.cn                ; 2 uses
  %i.cp = add nsw i32 %i.co, 8708                 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 16384
  %i.cr = lshr i32 %i.cp, 6
  %i.cs = icmp slt i32 %i.co, -8708
  %i.ct = select i1 %i.cs, i32 0, i32 255
  %i.cu = select i1 %i.cq, i32 %i.cr, i32 %i.ct
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !9
  %i.cx = mul nuw nsw i32 %i.br, 33050
  %i.cy = lshr i32 %i.cx, 8
  %i.cz = add nuw nsw i32 %i.by, %i.cy            ; 2 uses
  %i.da = add nsw i32 %i.cz, -17685               ; 2 uses
  %i.db = icmp ult i32 %i.da, 16384
  %i.dc = lshr i32 %i.da, 6
  %i.dd = icmp samesign ult i32 %i.cz, 17685
  %i.de = select i1 %i.dd, i32 0, i32 255
  %i.df = select i1 %i.db, i32 %i.dc, i32 %i.de
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !9 ; 2 uses
  %i.dw = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.dx = bitcast <2 x i64> %i.dv to <16 x i8>    ; 2 uses
  %i.dy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.dx) ; 4 uses
  %i.dz = bitcast <2 x i64> %i.dr to <16 x i8>    ; 2 uses
  %i.ea = bitcast <2 x i64> %i.dt to <16 x i8>    ; 2 uses
  %i.eb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.ea) ; 4 uses
  %.inner = xor <16 x i8> %i.eb, %i.dy
  %i.ec = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.ed = xor <2 x i64> %i.dv, %i.dp              ; 2 uses
  %i.ee = xor <2 x i64> %i.dt, %i.dr              ; 2 uses
  %i.ef = or <2 x i64> %i.ed, %i.ee
  %i.eg = or <2 x i64> %i.ef, %i.ec
  %i.eh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.eb)
  %i.ei = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ej = and <16 x i8> %i.ei, splat (i8 1)
  %i.ek = sub <16 x i8> %i.eh, %i.ej              ; 4 uses
  %i.el = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ek, <16 x i8> %i.eb)
  %i.em = and <2 x i64> %i.ee, %i.ec
  %.inner284 = xor <16 x i8> %i.ek, %i.eb
  %i.en = bitcast <2 x i64> %i.em to <16 x i8>
  %i.eo = or <16 x i8> %.inner284, %i.en
  %i.ep = and <16 x i8> %i.eo, splat (i8 1)
  %i.eq = sub <16 x i8> %i.el, %i.ep              ; 2 uses
  %i.er = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ek, <16 x i8> %i.dy)
  %i.es = and <2 x i64> %i.ed, %i.ec
  %.inner286 = xor <16 x i8> %i.ek, %i.dy
  %i.et = bitcast <2 x i64> %i.es to <16 x i8>
  %i.eu = or <16 x i8> %.inner286, %i.et
  %i.ev = and <16 x i8> %i.eu, splat (i8 1)
  %i.ew = sub <16 x i8> %i.er, %i.ev              ; 2 uses
  %i.ex = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.eq) ; 2 uses
  %i.ey = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.ew) ; 2 uses
  %i.ez = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fa = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ez, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.fa, ptr %i.di, align 16, !tbaa !9
  %i.fb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ea, <16 x i8> %i.ew) ; 2 uses
  %i.fc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dx, <16 x i8> %i.eq) ; 2 uses
  %i.fd = shufflevector <16 x i8> %i.fb, <16 x i8> %i.fc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fe = shufflevector <16 x i8> %i.fb, <16 x i8> %i.fc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fd, ptr %i.dj, align 16, !tbaa !9
  store <16 x i8> %i.fe, ptr %i.dk, align 16, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fk = load <2 x i64>, ptr %i.fj, align 1, !tbaa !9 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fm = load <2 x i64>, ptr %i.fl, align 1, !tbaa !9 ; 2 uses
  %i.fn = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fo = bitcast <2 x i64> %i.fm to <16 x i8>    ; 2 uses
  %i.fp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.fo) ; 4 uses
  %i.fq = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fr = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.fs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.fr) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fs, %i.fp
  %i.ft = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fu = xor <2 x i64> %i.fm, %i.fg              ; 2 uses
  %i.fv = xor <2 x i64> %i.fk, %i.fi              ; 2 uses
  %i.fw = or <2 x i64> %i.fu, %i.fv
  %i.fx = or <2 x i64> %i.fw, %i.ft
  %i.fy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.fs)
  %i.fz = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.ga = and <16 x i8> %i.fz, splat (i8 1)
  %i.gb = sub <16 x i8> %i.fy, %i.ga              ; 4 uses
  %i.gc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gb, <16 x i8> %i.fs)
  %i.gd = and <2 x i64> %i.fv, %i.ft
  %.inner290 = xor <16 x i8> %i.gb, %i.fs
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = or <16 x i8> %.inner290, %i.ge
  %i.gg = and <16 x i8> %i.gf, splat (i8 1)
  %i.gh = sub <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gb, <16 x i8> %i.fp)
  %i.gj = and <2 x i64> %i.fu, %i.ft
  %.inner292 = xor <16 x i8> %i.gb, %i.fp
  %i.gk = bitcast <2 x i64> %i.gj to <16 x i8>
  %i.gl = or <16 x i8> %.inner292, %i.gk
  %i.gm = and <16 x i8> %i.gl, splat (i8 1)
  %i.gn = sub <16 x i8> %i.gi, %i.gm              ; 2 uses
  %i.go = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.gh) ; 2 uses
  %i.gp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.gn) ; 2 uses
  %i.gq = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gr = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gq, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gr, ptr %i.dl, align 16, !tbaa !9
  %i.gs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fr, <16 x i8> %i.gn) ; 2 uses
  %i.gt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.gh) ; 2 uses
  %i.gu = shufflevector <16 x i8> %i.gs, <16 x i8> %i.gt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gv = shufflevector <16 x i8> %i.gs, <16 x i8> %i.gt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gu, ptr %i.dm, align 16, !tbaa !9
  store <16 x i8> %i.gv, ptr %i.dn, align 16, !tbaa !9
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gx = shl nsw i64 %indvars.iv274, 2           ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 %i.gx
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gy) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 %i.gx
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.ha) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.hb = trunc i64 %indvars.iv to i32
  %i.hc = add i32 %i.hb, 33
  %.not259 = icmp sgt i32 %i.hc, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.hd = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.hd, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %indvars.iv.next273, %._crit_edge.loopexit ] ; 4 uses
  %i.he = icmp sgt i32 %8, 1
  br i1 %i.he, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hf = add nuw nsw i32 %8, 1
  %i.hg = lshr i32 %i.hf, 1
  %i.hh = lshr i32 %.0255.lcssa, 1
  %i.hi = sub nsw i32 %i.hg, %i.hh                ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hm = sext i32 %i.hi to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hl, i64 %i.hm, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hn, i64 %i.hm, i1 false)
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 %i.hm
  %i.hp = add nsw i32 %i.hi, -1
  %i.hq = sext i32 %i.hp to i64                   ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.b, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  %i.ht = sub nsw i32 17, %i.hi
  %i.hu = sext i32 %i.ht to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ho, i8 %i.hs, i64 %i.hu, i1 false)
  %i.hv = getelementptr inbounds i8, ptr %i.c, i64 %i.hm
  %i.hw = getelementptr inbounds i8, ptr %i.c, i64 %i.hq
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hv, i8 %i.hx, i64 %i.hu, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.hy = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !96, !noalias !103 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !9, !alias.scope !96, !noalias !103 ; 2 uses
  %i.ib = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !99, !noalias !104 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !9, !alias.scope !99, !noalias !104 ; 2 uses
  %i.ie = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.if = bitcast <2 x i64> %i.id to <16 x i8>    ; 2 uses
  %i.ig = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.if) ; 4 uses
  %i.ih = bitcast <2 x i64> %i.ia to <16 x i8>    ; 2 uses
  %i.ii = bitcast <2 x i64> %i.ib to <16 x i8>    ; 2 uses
  %i.ij = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.ii) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ij, %i.ig
  %i.ik = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.il = xor <2 x i64> %i.id, %i.hy              ; 2 uses
  %i.im = xor <2 x i64> %i.ib, %i.ia              ; 2 uses
  %i.in = or <2 x i64> %i.il, %i.im
  %i.io = or <2 x i64> %i.in, %i.ik
  %i.ip = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ig, <16 x i8> %i.ij)
  %i.iq = bitcast <2 x i64> %i.io to <16 x i8>
  %i.ir = and <16 x i8> %i.iq, splat (i8 1)
  %i.is = sub <16 x i8> %i.ip, %i.ir              ; 4 uses
  %i.it = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.is, <16 x i8> %i.ij)
  %i.iu = and <2 x i64> %i.im, %i.ik
  %.inner296 = xor <16 x i8> %i.is, %i.ij
  %i.iv = bitcast <2 x i64> %i.iu to <16 x i8>
  %i.iw = or <16 x i8> %.inner296, %i.iv
  %i.ix = and <16 x i8> %i.iw, splat (i8 1)
  %i.iy = sub <16 x i8> %i.it, %i.ix              ; 2 uses
  %i.iz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.is, <16 x i8> %i.ig)
  %i.ja = and <2 x i64> %i.il, %i.ik
  %.inner298 = xor <16 x i8> %i.is, %i.ig
  %i.jb = bitcast <2 x i64> %i.ja to <16 x i8>
  %i.jc = or <16 x i8> %.inner298, %i.jb
  %i.jd = and <16 x i8> %i.jc, splat (i8 1)
  %i.je = sub <16 x i8> %i.iz, %i.jd              ; 2 uses
  %i.jf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.iy) ; 2 uses
  %i.jg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.je) ; 2 uses
  %i.jh = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ji = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jh, ptr %i.i, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.ji, ptr %i.jj, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  %i.jk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ii, <16 x i8> %i.je) ; 2 uses
  %i.jl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.iy) ; 2 uses
  %i.jm = shufflevector <16 x i8> %i.jk, <16 x i8> %i.jl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jn = shufflevector <16 x i8> %i.jk, <16 x i8> %i.jl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jo = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jm, ptr %i.jo, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jn, ptr %i.jp, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jq, i64 %i.hm, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jr, i64 %i.hm, i1 false)
  %i.js = getelementptr inbounds i8, ptr %i.d, i64 %i.hm
  %i.jt = getelementptr inbounds i8, ptr %i.d, i64 %i.hq
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.js, i8 %i.ju, i64 %i.hu, i1 false)
  %i.jv = getelementptr inbounds i8, ptr %i.e, i64 %i.hm
  %i.jw = getelementptr inbounds i8, ptr %i.e, i64 %i.hq
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jv, i8 %i.jx, i64 %i.hu, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.jy = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !106, !noalias !113 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ka = load <2 x i64>, ptr %i.jz, align 1, !tbaa !9, !alias.scope !106, !noalias !113 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !109, !noalias !114 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kd = load <2 x i64>, ptr %i.kc, align 1, !tbaa !9, !alias.scope !109, !noalias !114 ; 2 uses
  %i.ke = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kf = bitcast <2 x i64> %i.kd to <16 x i8>    ; 2 uses
  %i.kg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.kf) ; 4 uses
  %i.kh = bitcast <2 x i64> %i.ka to <16 x i8>    ; 2 uses
  %i.ki = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %i.kj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.ki) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kj, %i.kg
  %i.kk = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kl = xor <2 x i64> %i.kd, %i.jy              ; 2 uses
  %i.km = xor <2 x i64> %i.kb, %i.ka              ; 2 uses
  %i.kn = or <2 x i64> %i.kl, %i.km
  %i.ko = or <2 x i64> %i.kn, %i.kk
  %i.kp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.kj)
  %i.kq = bitcast <2 x i64> %i.ko to <16 x i8>
  %i.kr = and <16 x i8> %i.kq, splat (i8 1)
  %i.ks = sub <16 x i8> %i.kp, %i.kr              ; 4 uses
  %i.kt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ks, <16 x i8> %i.kj)
  %i.ku = and <2 x i64> %i.km, %i.kk
  %.inner302 = xor <16 x i8> %i.ks, %i.kj
  %i.kv = bitcast <2 x i64> %i.ku to <16 x i8>
  %i.kw = or <16 x i8> %.inner302, %i.kv
  %i.kx = and <16 x i8> %i.kw, splat (i8 1)
  %i.ky = sub <16 x i8> %i.kt, %i.kx              ; 2 uses
  %i.kz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ks, <16 x i8> %i.kg)
  %i.la = and <2 x i64> %i.kl, %i.kk
  %.inner304 = xor <16 x i8> %i.ks, %i.kg
  %i.lb = bitcast <2 x i64> %i.la to <16 x i8>
  %i.lc = or <16 x i8> %.inner304, %i.lb
  %i.ld = and <16 x i8> %i.lc, splat (i8 1)
  %i.le = sub <16 x i8> %i.kz, %i.ld              ; 2 uses
  %i.lf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.ky) ; 2 uses
  %i.lg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.le) ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lh, ptr %i.j, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.li, ptr %i.lj, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  %i.lk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ki, <16 x i8> %i.le) ; 2 uses
  %i.ll = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.ky) ; 2 uses
  %i.lm = shufflevector <16 x i8> %i.lk, <16 x i8> %i.ll, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ln = shufflevector <16 x i8> %i.lk, <16 x i8> %i.ll, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lo = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lm, ptr %i.lo, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  %i.lp = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.ln, ptr %i.lp, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lq = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  %i.ls = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hk, ptr nonnull align 1 %i.lr, i64 %i.lt, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hj) #8
  %i.lu = shl nsw i32 %.0255.lcssa, 2
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 %i.lv
  %i.lx = shl nsw i32 %i.ls, 2
  %i.ly = sext i32 %i.lx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lw, ptr nonnull align 16 %i.hj, i64 %i.ly, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 %i.lq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lz, ptr nonnull align 1 %i.mb, i64 %i.lt, i1 false)
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hj) #8
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.lz, ptr noundef nonnull %i.jo, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.ma) #8
  %i.mc = shl nsw i32 %.0255.lcssa, 2
  %i.md = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md
  %i.mf = shl nsw i32 %i.ls, 2
  %i.mg = sext i32 %i.mf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.me, ptr nonnull align 16 %i.hj, i64 %i.mg, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 %i.md
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 16 %i.ma, i64 %i.mg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgb565LinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 2)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.ab, 26149
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -14234               ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 16384
  %i.al = lshr i32 %i.aj, 6
  %i.am = icmp samesign ult i32 %i.ai, 14234
  %i.an = select i1 %i.am, i32 0, i32 248
  %i.ao = mul nuw nsw i32 %i.z, 6419
  %i.ap = lshr i32 %i.ao, 8
  %i.aq = mul nuw nsw i32 %i.ab, 13320
  %i.ar = lshr i32 %i.aq, 8
  %i.as = add nuw nsw i32 %i.ap, %i.ar
  %i.at = sub nsw i32 %i.af, %i.as                ; 2 uses
  %i.au = add nsw i32 %i.at, 8708                 ; 2 uses
  %i.av = icmp ult i32 %i.au, 16384
  %i.aw = lshr i32 %i.au, 6
  %i.ax = icmp slt i32 %i.at, -8708
  %i.ay = select i1 %i.ax, i32 0, i32 255
  %i.az = select i1 %i.av, i32 %i.aw, i32 %i.ay   ; 2 uses
  %i.ba = mul nuw nsw i32 %i.z, 33050
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = add nuw nsw i32 %i.bb, %i.af            ; 2 uses
  %i.bd = add nsw i32 %i.bc, -17685               ; 2 uses
  %i.be = icmp ult i32 %i.bd, 16384
  %i.bf = lshr i32 %i.bd, 6
  %i.bg = icmp samesign ult i32 %i.bc, 17685
  %i.bh = select i1 %i.bg, i32 0, i32 248
  %i.bi = select i1 %i.be, i32 %i.bf, i32 %i.bh
  %i.bj = and i32 %i.al, 248
  %i.bk = select i1 %i.ak, i32 %i.bj, i32 %i.an
  %i.bl = lshr i32 %i.az, 5
  %i.bm = or i32 %i.bk, %i.bl
  %i.bn = shl nuw nsw i32 %i.az, 3
  %i.bo = and i32 %i.bn, 224
  %i.bp = lshr i32 %i.bi, 3
  %i.bq = or i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bm to i8
  store i8 %i.br, ptr %6, align 1, !tbaa !9
  %i.bs = trunc i32 %i.bq to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = add nuw nsw i32 %i.q, %i.n
  %i.bv = lshr i32 %i.bu, 1                       ; 2 uses
  %i.bw = add nuw nsw i32 %i.x, %i.u
  %i.bx = lshr i32 %i.bw, 1                       ; 2 uses
  %i.by = load i8, ptr %1, align 1, !tbaa !9
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, 19077
  %i.cb = lshr i32 %i.ca, 8                       ; 3 uses
  %i.cc = mul nuw nsw i32 %i.bx, 26149
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = add nuw nsw i32 %i.cb, %i.cd            ; 2 uses
  %i.cf = add nsw i32 %i.ce, -14234               ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 16384
  %i.ch = lshr i32 %i.cf, 6
  %i.ci = icmp samesign ult i32 %i.ce, 14234
  %i.cj = select i1 %i.ci, i32 0, i32 248
  %i.ck = mul nuw nsw i32 %i.bv, 6419
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = mul nuw nsw i32 %i.bx, 13320
  %i.cn = lshr i32 %i.cm, 8
  %i.co = add nuw nsw i32 %i.cn, %i.cl
  %i.cp = sub nsw i32 %i.cb, %i.co                ; 2 uses
  %i.cq = add nsw i32 %i.cp, 8708                 ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 16384
  %i.cs = lshr i32 %i.cq, 6
  %i.ct = icmp slt i32 %i.cp, -8708
  %i.cu = select i1 %i.ct, i32 0, i32 255
  %i.cv = select i1 %i.cr, i32 %i.cs, i32 %i.cu   ; 2 uses
  %i.cw = mul nuw nsw i32 %i.bv, 33050
  %i.cx = lshr i32 %i.cw, 8
  %i.cy = add nuw nsw i32 %i.cb, %i.cx            ; 2 uses
  %i.cz = add nsw i32 %i.cy, -17685               ; 2 uses
  %i.da = icmp ult i32 %i.cz, 16384
  %i.db = lshr i32 %i.cz, 6
  %i.dc = icmp samesign ult i32 %i.cy, 17685
  %i.dd = select i1 %i.dc, i32 0, i32 248
  %i.de = select i1 %i.da, i32 %i.db, i32 %i.dd
  %i.df = and i32 %i.ch, 248
  %i.dg = select i1 %i.cg, i32 %i.df, i32 %i.cj
  %i.dh = lshr i32 %i.cv, 5
  %i.di = or i32 %i.dg, %i.dh
  %i.dj = shl nuw nsw i32 %i.cv, 3
  %i.dk = and i32 %i.dj, 224
  %i.dl = lshr i32 %i.de, 3
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.di to i8
  store i8 %i.dn, ptr %7, align 1, !tbaa !9
  %i.do = trunc i32 %i.dm to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dx = load <2 x i64>, ptr %i.dw, align 1, !tbaa !9 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dz = load <2 x i64>, ptr %i.dy, align 1, !tbaa !9 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.eb = load <2 x i64>, ptr %i.ea, align 1, !tbaa !9 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ed = load <2 x i64>, ptr %i.ec, align 1, !tbaa !9 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.dx to <16 x i8>    ; 2 uses
  %i.ef = bitcast <2 x i64> %i.ed to <16 x i8>    ; 2 uses
  %i.eg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.ef) ; 4 uses
  %i.eh = bitcast <2 x i64> %i.dz to <16 x i8>    ; 2 uses
  %i.ei = bitcast <2 x i64> %i.eb to <16 x i8>    ; 2 uses
  %i.ej = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.eh, <16 x i8> %i.ei) ; 4 uses
  %.inner = xor <16 x i8> %i.ej, %i.eg
  %i.ek = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.el = xor <2 x i64> %i.ed, %i.dx              ; 2 uses
  %i.em = xor <2 x i64> %i.eb, %i.dz              ; 2 uses
  %i.en = or <2 x i64> %i.el, %i.em
  %i.eo = or <2 x i64> %i.en, %i.ek
  %i.ep = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.eg, <16 x i8> %i.ej)
  %i.eq = bitcast <2 x i64> %i.eo to <16 x i8>
  %i.er = and <16 x i8> %i.eq, splat (i8 1)
  %i.es = sub <16 x i8> %i.ep, %i.er              ; 4 uses
  %i.et = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.es, <16 x i8> %i.ej)
  %i.eu = and <2 x i64> %i.em, %i.ek
  %.inner284 = xor <16 x i8> %i.es, %i.ej
  %i.ev = bitcast <2 x i64> %i.eu to <16 x i8>
  %i.ew = or <16 x i8> %.inner284, %i.ev
  %i.ex = and <16 x i8> %i.ew, splat (i8 1)
  %i.ey = sub <16 x i8> %i.et, %i.ex              ; 2 uses
  %i.ez = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.es, <16 x i8> %i.eg)
  %i.fa = and <2 x i64> %i.el, %i.ek
  %.inner286 = xor <16 x i8> %i.es, %i.eg
end_hunk_1
begin_hunk_2_@UpsampleRgba4444LinePair_SSE2:bb.a
  %i.ip = or <2 x i64> %i.in, %i.io
  %i.iq = or <2 x i64> %i.ip, %i.im
  %i.ir = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ii, <16 x i8> %i.il)
  %i.is = bitcast <2 x i64> %i.iq to <16 x i8>
  %i.it = and <16 x i8> %i.is, splat (i8 1)
  %i.iu = sub <16 x i8> %i.ir, %i.it              ; 4 uses
  %i.iv = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iu, <16 x i8> %i.il)
  %i.iw = and <2 x i64> %i.io, %i.im
  %.inner296 = xor <16 x i8> %i.iu, %i.il
  %i.ix = bitcast <2 x i64> %i.iw to <16 x i8>
  %i.iy = or <16 x i8> %.inner296, %i.ix
  %i.iz = and <16 x i8> %i.iy, splat (i8 1)
  %i.ja = sub <16 x i8> %i.iv, %i.iz              ; 2 uses
  %i.jb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iu, <16 x i8> %i.ii)
  %i.jc = and <2 x i64> %i.in, %i.im
  %.inner298 = xor <16 x i8> %i.iu, %i.ii
  %i.jd = bitcast <2 x i64> %i.jc to <16 x i8>
  %i.je = or <16 x i8> %.inner298, %i.jd
  %i.jf = and <16 x i8> %i.je, splat (i8 1)
  %i.jg = sub <16 x i8> %i.jb, %i.jf              ; 2 uses
  %i.jh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ig, <16 x i8> %i.ja) ; 2 uses
  %i.ji = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ij, <16 x i8> %i.jg) ; 2 uses
  %i.jj = shufflevector <16 x i8> %i.jh, <16 x i8> %i.ji, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jk = shufflevector <16 x i8> %i.jh, <16 x i8> %i.ji, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jj, ptr %i.i, align 16, !tbaa !9, !alias.scope !143, !noalias !147
  %i.jl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jk, ptr %i.jl, align 16, !tbaa !9, !alias.scope !143, !noalias !147
  %i.jm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ik, <16 x i8> %i.jg) ; 2 uses
  %i.jn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.ja) ; 2 uses
  %i.jo = shufflevector <16 x i8> %i.jm, <16 x i8> %i.jn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jp = shufflevector <16 x i8> %i.jm, <16 x i8> %i.jn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jq = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jo, ptr %i.jq, align 16, !tbaa !9, !alias.scope !143, !noalias !147
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jp, ptr %i.jr, align 16, !tbaa !9, !alias.scope !143, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.js, i64 %i.ho, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jt, i64 %i.ho, i1 false)
  %i.ju = getelementptr inbounds i8, ptr %i.d, i64 %i.ho
  %i.jv = getelementptr inbounds i8, ptr %i.d, i64 %i.hs
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ju, i8 %i.jw, i64 %i.hw, i1 false)
  %i.jx = getelementptr inbounds i8, ptr %i.e, i64 %i.ho
  %i.jy = getelementptr inbounds i8, ptr %i.e, i64 %i.hs
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jx, i8 %i.jz, i64 %i.hw, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ka = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !148, !noalias !155 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.kc = load <2 x i64>, ptr %i.kb, align 1, !tbaa !9, !alias.scope !148, !noalias !155 ; 2 uses
  %i.kd = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !151, !noalias !156 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kf = load <2 x i64>, ptr %i.ke, align 1, !tbaa !9, !alias.scope !151, !noalias !156 ; 2 uses
  %i.kg = bitcast <2 x i64> %i.ka to <16 x i8>    ; 2 uses
  %i.kh = bitcast <2 x i64> %i.kf to <16 x i8>    ; 2 uses
  %i.ki = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.kh) ; 4 uses
  %i.kj = bitcast <2 x i64> %i.kc to <16 x i8>    ; 2 uses
  %i.kk = bitcast <2 x i64> %i.kd to <16 x i8>    ; 2 uses
  %i.kl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kj, <16 x i8> %i.kk) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kl, %i.ki
  %i.km = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kn = xor <2 x i64> %i.kf, %i.ka              ; 2 uses
  %i.ko = xor <2 x i64> %i.kd, %i.kc              ; 2 uses
  %i.kp = or <2 x i64> %i.kn, %i.ko
  %i.kq = or <2 x i64> %i.kp, %i.km
  %i.kr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ki, <16 x i8> %i.kl)
  %i.ks = bitcast <2 x i64> %i.kq to <16 x i8>
  %i.kt = and <16 x i8> %i.ks, splat (i8 1)
  %i.ku = sub <16 x i8> %i.kr, %i.kt              ; 4 uses
  %i.kv = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ku, <16 x i8> %i.kl)
  %i.kw = and <2 x i64> %i.ko, %i.km
  %.inner302 = xor <16 x i8> %i.ku, %i.kl
  %i.kx = bitcast <2 x i64> %i.kw to <16 x i8>
  %i.ky = or <16 x i8> %.inner302, %i.kx
  %i.kz = and <16 x i8> %i.ky, splat (i8 1)
  %i.la = sub <16 x i8> %i.kv, %i.kz              ; 2 uses
  %i.lb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ku, <16 x i8> %i.ki)
  %i.lc = and <2 x i64> %i.kn, %i.km
  %.inner304 = xor <16 x i8> %i.ku, %i.ki
  %i.ld = bitcast <2 x i64> %i.lc to <16 x i8>
  %i.le = or <16 x i8> %.inner304, %i.ld
  %i.lf = and <16 x i8> %i.le, splat (i8 1)
  %i.lg = sub <16 x i8> %i.lb, %i.lf              ; 2 uses
  %i.lh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.la) ; 2 uses
  %i.li = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kj, <16 x i8> %i.lg) ; 2 uses
  %i.lj = shufflevector <16 x i8> %i.lh, <16 x i8> %i.li, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lk = shufflevector <16 x i8> %i.lh, <16 x i8> %i.li, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lj, ptr %i.j, align 16, !tbaa !9, !alias.scope !153, !noalias !157
  %i.ll = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.lk, ptr %i.ll, align 16, !tbaa !9, !alias.scope !153, !noalias !157
  %i.lm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kk, <16 x i8> %i.lg) ; 2 uses
  %i.ln = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.la) ; 2 uses
  %i.lo = shufflevector <16 x i8> %i.lm, <16 x i8> %i.ln, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lp = shufflevector <16 x i8> %i.lm, <16 x i8> %i.ln, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lq = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lo, ptr %i.lq, align 16, !tbaa !9, !alias.scope !153, !noalias !157
  %i.lr = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.lp, ptr %i.lr, align 16, !tbaa !9, !alias.scope !153, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ls = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ls
  %i.lu = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hm, ptr nonnull align 1 %i.lt, i64 %i.lv, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgba444432_SSE2(ptr noundef nonnull %i.hm, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hl) #8
  %i.lw = shl nuw nsw i32 %.0255.lcssa, 1
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 %i.lx
  %i.lz = shl nsw i32 %i.lu, 1
  %i.ma = sext i32 %i.lz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ly, ptr nonnull align 16 %i.hl, i64 %i.ma, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.mb = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 %i.ls
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mb, ptr nonnull align 1 %i.md, i64 %i.lv, i1 false)
  call void @VP8YuvToRgba444432_SSE2(ptr noundef nonnull %i.hm, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hl) #8
  call void @VP8YuvToRgba444432_SSE2(ptr noundef nonnull %i.mb, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.mc) #8
  %i.me = shl nuw nsw i32 %.0255.lcssa, 1
  %i.mf = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 %i.mf
  %i.mh = shl nsw i32 %i.lu, 1
  %i.mi = sext i32 %i.mh to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mg, ptr nonnull align 16 %i.hl, i64 %i.mi, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %7, i64 %i.mf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mj, ptr nonnull align 16 %i.mc, i64 %i.mi, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitYUV444ConvertersSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @Yuv444ToRgba_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 8), align 8, !tbaa !7
  store ptr @Yuv444ToBgra_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 24), align 8, !tbaa !7
  store ptr @Yuv444ToRgba_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 56), align 8, !tbaa !7
  store ptr @Yuv444ToBgra_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 64), align 8, !tbaa !7
  store ptr @Yuv444ToRgb_SSE2, ptr @WebPYUV444Converters, align 8, !tbaa !7
  store ptr @Yuv444ToBgr_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 16), align 8, !tbaa !7
  store ptr @Yuv444ToArgb_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 32), align 8, !tbaa !7
  store ptr @Yuv444ToRgba4444_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 40), align 8, !tbaa !7
  store ptr @Yuv444ToRgb565_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 48), align 8, !tbaa !7
  store ptr @Yuv444ToArgb_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 72), align 8, !tbaa !7
  store ptr @Yuv444ToRgba4444_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 80), align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToRgba_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = shl nuw nsw i64 %indvars.iv, 2
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToRgba32_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !158

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = shl nsw i32 %.0.lcssa, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToRgba_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToBgra_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = shl nuw nsw i64 %indvars.iv, 2
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToBgra32_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !159

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = shl nsw i32 %.0.lcssa, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToBgra_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToRgb_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = mul nuw nsw i64 %indvars.iv, 3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToRgb32_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !160

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = mul nuw nsw i32 %.0.lcssa, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToRgb_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToBgr_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = mul nuw nsw i64 %indvars.iv, 3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToBgr32_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !161

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = mul nuw nsw i32 %.0.lcssa, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToBgr_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToArgb_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = shl nuw nsw i64 %indvars.iv, 2
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToArgb32_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !162

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = shl nsw i32 %.0.lcssa, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToArgb_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToRgba4444_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = shl nuw nsw i64 %indvars.iv, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToRgba444432_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !163

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = shl nuw nsw i32 %.0.lcssa, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToRgba4444_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Yuv444ToRgb565_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 31
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %4, 2147483616
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = shl nuw nsw i64 %indvars.iv, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  tail call void @VP8YuvToRgb56532_SSE2(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0.lcssa, %4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.p = shl nuw nsw i32 %.0.lcssa, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.s = sub nuw nsw i32 %4, %.0.lcssa
  tail call void @WebPYuv444ToRgb565_C(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, i32 noundef %i.s) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @VP8YuvToRgba32_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #6

declare void @VP8YuvToBgra32_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @VP8YuvToRgb32_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @VP8YuvToBgr32_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @VP8YuvToArgb32_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @VP8YuvToRgb56532_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @VP8YuvToRgba444432_SSE2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @WebPYuv444ToRgba_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @WebPYuv444ToBgra_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @WebPYuv444ToRgb_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @WebPYuv444ToBgr_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @WebPYuv444ToArgb_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @WebPYuv444ToRgba4444_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @WebPYuv444ToRgb565_C(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"Upsample32Pixels_SSE2: argument 0"}
!14 = distinct !{!14, !"Upsample32Pixels_SSE2"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"Upsample32Pixels_SSE2: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !14, !"Upsample32Pixels_SSE2: argument 2"}
!19 = !{!16, !18}
!20 = !{!13, !18}
!21 = !{!13, !16}
!22 = !{!23}
!23 = distinct !{!23, !24, !"Upsample32Pixels_SSE2: argument 0"}
!24 = distinct !{!24, !"Upsample32Pixels_SSE2"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"Upsample32Pixels_SSE2: argument 1"}
!27 = !{!28}
!28 = distinct !{!28, !24, !"Upsample32Pixels_SSE2: argument 2"}
!29 = !{!26, !28}
!30 = !{!23, !28}
!31 = !{!23, !26}
!32 = distinct !{!32, !11}
!33 = !{!34}
end_hunk_2
