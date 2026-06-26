inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0_@UpsampleRgbLinePair_SSE41:bb.a
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
  store <16 x i8> %i.ex, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.ey, ptr %i.dg, align 16, !tbaa !9
  %i.ez = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.eu) ; 2 uses
  %i.fa = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dv, <16 x i8> %i.eo) ; 2 uses
  %i.fb = shufflevector <16 x i8> %i.ez, <16 x i8> %i.fa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fc = shufflevector <16 x i8> %i.ez, <16 x i8> %i.fa, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fb, ptr %i.dh, align 16, !tbaa !9
  store <16 x i8> %i.fc, ptr %i.di, align 16, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fk = load <2 x i64>, ptr %i.fj, align 1, !tbaa !9 ; 2 uses
  %i.fl = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fm = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.fn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.fm) ; 4 uses
  %i.fo = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.fp) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fq, %i.fn
  %i.fr = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fs = xor <2 x i64> %i.fk, %i.fe              ; 2 uses
  %i.ft = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fu = or <2 x i64> %i.fs, %i.ft
  %i.fv = or <2 x i64> %i.fu, %i.fr
  %i.fw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.fq)
  %i.fx = bitcast <2 x i64> %i.fv to <16 x i8>
  %i.fy = and <16 x i8> %i.fx, splat (i8 1)
  %i.fz = sub <16 x i8> %i.fw, %i.fy              ; 4 uses
  %i.ga = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fz, <16 x i8> %i.fq)
  %i.gb = and <2 x i64> %i.ft, %i.fr
  %.inner290 = xor <16 x i8> %i.fz, %i.fq
  %i.gc = bitcast <2 x i64> %i.gb to <16 x i8>
  %i.gd = or <16 x i8> %.inner290, %i.gc
  %i.ge = and <16 x i8> %i.gd, splat (i8 1)
  %i.gf = sub <16 x i8> %i.ga, %i.ge              ; 2 uses
  %i.gg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fz, <16 x i8> %i.fn)
  %i.gh = and <2 x i64> %i.fs, %i.fr
  %.inner292 = xor <16 x i8> %i.fz, %i.fn
  %i.gi = bitcast <2 x i64> %i.gh to <16 x i8>
  %i.gj = or <16 x i8> %.inner292, %i.gi
  %i.gk = and <16 x i8> %i.gj, splat (i8 1)
  %i.gl = sub <16 x i8> %i.gg, %i.gk              ; 2 uses
  %i.gm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.gf) ; 2 uses
  %i.gn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.gl) ; 2 uses
  %i.go = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gp = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.go, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gp, ptr %i.dj, align 16, !tbaa !9
  %i.gq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.gl) ; 2 uses
  %i.gr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fm, <16 x i8> %i.gf) ; 2 uses
  %i.gs = shufflevector <16 x i8> %i.gq, <16 x i8> %i.gr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gt = shufflevector <16 x i8> %i.gq, <16 x i8> %i.gr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gs, ptr %i.dk, align 16, !tbaa !9
  store <16 x i8> %i.gt, ptr %i.dl, align 16, !tbaa !9
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gv = mul nuw nsw i64 %indvars.iv274, 3       ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 %i.gv
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gw) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 %i.gv
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.gy) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gz = trunc i64 %indvars.iv to i32
  %i.ha = add i32 %i.gz, 33
  %.not259 = icmp sgt i32 %i.ha, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.hb = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.hb, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %indvars.iv.next273, %._crit_edge.loopexit ] ; 4 uses
  %i.hc = icmp sgt i32 %8, 1
  br i1 %i.hc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hd = add nuw nsw i32 %8, 1
  %i.he = lshr i32 %i.hd, 1
  %i.hf = lshr i32 %.0255.lcssa, 1
  %i.hg = sub nsw i32 %i.he, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hk = sext i32 %i.hg to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hj, i64 %i.hk, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hl, i64 %i.hk, i1 false)
  %i.hm = getelementptr inbounds i8, ptr %i.b, i64 %i.hk
  %i.hn = add nsw i32 %i.hg, -1
  %i.ho = sext i32 %i.hn to i64                   ; 4 uses
  %i.hp = getelementptr inbounds i8, ptr %i.b, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = sub nsw i32 17, %i.hg
  %i.hs = sext i32 %i.hr to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hm, i8 %i.hq, i64 %i.hs, i1 false)
  %i.ht = getelementptr inbounds i8, ptr %i.c, i64 %i.hk
  %i.hu = getelementptr inbounds i8, ptr %i.c, i64 %i.ho
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ht, i8 %i.hv, i64 %i.hs, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.hw = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.ic = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.id = bitcast <2 x i64> %i.ib to <16 x i8>    ; 2 uses
  %i.ie = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.id) ; 4 uses
  %i.if = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.ig = bitcast <2 x i64> %i.hz to <16 x i8>    ; 2 uses
  %i.ih = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.ig) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ih, %i.ie
  %i.ii = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ij = xor <2 x i64> %i.ib, %i.hw              ; 2 uses
  %i.ik = xor <2 x i64> %i.hz, %i.hy              ; 2 uses
  %i.il = or <2 x i64> %i.ij, %i.ik
  %i.im = or <2 x i64> %i.il, %i.ii
  %i.in = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.ih)
  %i.io = bitcast <2 x i64> %i.im to <16 x i8>
  %i.ip = and <16 x i8> %i.io, splat (i8 1)
  %i.iq = sub <16 x i8> %i.in, %i.ip              ; 4 uses
  %i.ir = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iq, <16 x i8> %i.ih)
  %i.is = and <2 x i64> %i.ik, %i.ii
  %.inner296 = xor <16 x i8> %i.iq, %i.ih
  %i.it = bitcast <2 x i64> %i.is to <16 x i8>
  %i.iu = or <16 x i8> %.inner296, %i.it
  %i.iv = and <16 x i8> %i.iu, splat (i8 1)
  %i.iw = sub <16 x i8> %i.ir, %i.iv              ; 2 uses
  %i.ix = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iq, <16 x i8> %i.ie)
  %i.iy = and <2 x i64> %i.ij, %i.ii
  %.inner298 = xor <16 x i8> %i.iq, %i.ie
  %i.iz = bitcast <2 x i64> %i.iy to <16 x i8>
  %i.ja = or <16 x i8> %.inner298, %i.iz
  %i.jb = and <16 x i8> %i.ja, splat (i8 1)
  %i.jc = sub <16 x i8> %i.ix, %i.jb              ; 2 uses
  %i.jd = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.iw) ; 2 uses
  %i.je = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.jc) ; 2 uses
  %i.jf = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jg = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jf, ptr %i.i, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jg, ptr %i.jh, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.ji = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ig, <16 x i8> %i.jc) ; 2 uses
  %i.jj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.id, <16 x i8> %i.iw) ; 2 uses
  %i.jk = shufflevector <16 x i8> %i.ji, <16 x i8> %i.jj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jl = shufflevector <16 x i8> %i.ji, <16 x i8> %i.jj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jm = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jk, ptr %i.jm, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jn = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jl, ptr %i.jn, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jo, i64 %i.hk, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jp, i64 %i.hk, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.d, i64 %i.hk
  %i.jr = getelementptr inbounds i8, ptr %i.d, i64 %i.ho
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jq, i8 %i.js, i64 %i.hs, i1 false)
  %i.jt = getelementptr inbounds i8, ptr %i.e, i64 %i.hk
  %i.ju = getelementptr inbounds i8, ptr %i.e, i64 %i.ho
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jt, i8 %i.jv, i64 %i.hs, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.jw = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.jz = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.kc = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.kd = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %i.ke = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kd) ; 4 uses
  %i.kf = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kg = bitcast <2 x i64> %i.jz to <16 x i8>    ; 2 uses
  %i.kh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.kg) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kh, %i.ke
  %i.ki = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kj = xor <2 x i64> %i.kb, %i.jw              ; 2 uses
  %i.kk = xor <2 x i64> %i.jz, %i.jy              ; 2 uses
  %i.kl = or <2 x i64> %i.kj, %i.kk
  %i.km = or <2 x i64> %i.kl, %i.ki
  %i.kn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.kh)
  %i.ko = bitcast <2 x i64> %i.km to <16 x i8>
  %i.kp = and <16 x i8> %i.ko, splat (i8 1)
  %i.kq = sub <16 x i8> %i.kn, %i.kp              ; 4 uses
  %i.kr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kq, <16 x i8> %i.kh)
  %i.ks = and <2 x i64> %i.kk, %i.ki
  %.inner302 = xor <16 x i8> %i.kq, %i.kh
  %i.kt = bitcast <2 x i64> %i.ks to <16 x i8>
  %i.ku = or <16 x i8> %.inner302, %i.kt
  %i.kv = and <16 x i8> %i.ku, splat (i8 1)
  %i.kw = sub <16 x i8> %i.kr, %i.kv              ; 2 uses
  %i.kx = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kq, <16 x i8> %i.ke)
  %i.ky = and <2 x i64> %i.kj, %i.ki
  %.inner304 = xor <16 x i8> %i.kq, %i.ke
  %i.kz = bitcast <2 x i64> %i.ky to <16 x i8>
  %i.la = or <16 x i8> %.inner304, %i.kz
  %i.lb = and <16 x i8> %i.la, splat (i8 1)
  %i.lc = sub <16 x i8> %i.kx, %i.lb              ; 2 uses
  %i.ld = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kw) ; 2 uses
  %i.le = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.lc) ; 2 uses
  %i.lf = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lg = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lf, ptr %i.j, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.lg, ptr %i.lh, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.li = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.lc) ; 2 uses
  %i.lj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kd, <16 x i8> %i.kw) ; 2 uses
  %i.lk = shufflevector <16 x i8> %i.li, <16 x i8> %i.lj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ll = shufflevector <16 x i8> %i.li, <16 x i8> %i.lj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lm = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lk, ptr %i.lm, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.ln = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.ll, ptr %i.ln, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lo = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %i.lo
  %i.lq = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hi, ptr nonnull align 1 %i.lp, i64 %i.lr, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hh) #8
  %i.ls = mul nuw nsw i32 %.0255.lcssa, 3
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 %i.lt
  %i.lv = mul nsw i32 %i.lq, 3
  %i.lw = sext i32 %i.lv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lu, ptr nonnull align 16 %i.hh, i64 %i.lw, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lx = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 %i.lo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lx, ptr nonnull align 1 %i.lz, i64 %i.lr, i1 false)
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hh) #8
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.lx, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.lm, ptr noundef nonnull %i.ly) #8
  %i.ma = mul nuw nsw i32 %.0255.lcssa, 3
  %i.mb = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 %i.mb
  %i.md = mul nsw i32 %i.lq, 3
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull align 16 %i.hh, i64 %i.me, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %7, i64 %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr nonnull align 16 %i.ly, i64 %i.me, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleBgrLinePair_SSE41(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 3)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
end_hunk_0
begin_hunk_1_@UpsampleBgrLinePair_SSE41:bb.a
  %i.bi = icmp ult i32 %i.bh, 16384
  %i.bj = lshr i32 %i.bh, 6
  %i.bk = icmp samesign ult i32 %i.bg, 14234
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
  %i.bx = mul nuw nsw i32 %i.bq, 33050
  %i.by = lshr i32 %i.bx, 8
  %i.bz = add nuw nsw i32 %i.bw, %i.by            ; 2 uses
  %i.ca = add nsw i32 %i.bz, -17685               ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 16384
  %i.cc = lshr i32 %i.ca, 6
  %i.cd = icmp samesign ult i32 %i.bz, 17685
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
  %i.cv = mul nuw nsw i32 %i.bs, 26149
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = add nuw nsw i32 %i.bw, %i.cw            ; 2 uses
  %i.cy = add nsw i32 %i.cx, -14234               ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 16384
  %i.da = lshr i32 %i.cy, 6
  %i.db = icmp samesign ult i32 %i.cx, 14234
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
  store <16 x i8> %i.ex, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.ey, ptr %i.dg, align 16, !tbaa !9
  %i.ez = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.eu) ; 2 uses
  %i.fa = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dv, <16 x i8> %i.eo) ; 2 uses
  %i.fb = shufflevector <16 x i8> %i.ez, <16 x i8> %i.fa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fc = shufflevector <16 x i8> %i.ez, <16 x i8> %i.fa, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fb, ptr %i.dh, align 16, !tbaa !9
  store <16 x i8> %i.fc, ptr %i.di, align 16, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fk = load <2 x i64>, ptr %i.fj, align 1, !tbaa !9 ; 2 uses
  %i.fl = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fm = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.fn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.fm) ; 4 uses
  %i.fo = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.fp) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fq, %i.fn
  %i.fr = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fs = xor <2 x i64> %i.fk, %i.fe              ; 2 uses
  %i.ft = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fu = or <2 x i64> %i.fs, %i.ft
  %i.fv = or <2 x i64> %i.fu, %i.fr
  %i.fw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.fq)
  %i.fx = bitcast <2 x i64> %i.fv to <16 x i8>
  %i.fy = and <16 x i8> %i.fx, splat (i8 1)
  %i.fz = sub <16 x i8> %i.fw, %i.fy              ; 4 uses
  %i.ga = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fz, <16 x i8> %i.fq)
  %i.gb = and <2 x i64> %i.ft, %i.fr
  %.inner290 = xor <16 x i8> %i.fz, %i.fq
  %i.gc = bitcast <2 x i64> %i.gb to <16 x i8>
  %i.gd = or <16 x i8> %.inner290, %i.gc
  %i.ge = and <16 x i8> %i.gd, splat (i8 1)
  %i.gf = sub <16 x i8> %i.ga, %i.ge              ; 2 uses
  %i.gg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fz, <16 x i8> %i.fn)
  %i.gh = and <2 x i64> %i.fs, %i.fr
  %.inner292 = xor <16 x i8> %i.fz, %i.fn
  %i.gi = bitcast <2 x i64> %i.gh to <16 x i8>
  %i.gj = or <16 x i8> %.inner292, %i.gi
  %i.gk = and <16 x i8> %i.gj, splat (i8 1)
  %i.gl = sub <16 x i8> %i.gg, %i.gk              ; 2 uses
  %i.gm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.gf) ; 2 uses
  %i.gn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fo, <16 x i8> %i.gl) ; 2 uses
  %i.go = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gp = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.go, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gp, ptr %i.dj, align 16, !tbaa !9
  %i.gq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.gl) ; 2 uses
  %i.gr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fm, <16 x i8> %i.gf) ; 2 uses
  %i.gs = shufflevector <16 x i8> %i.gq, <16 x i8> %i.gr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gt = shufflevector <16 x i8> %i.gq, <16 x i8> %i.gr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gs, ptr %i.dk, align 16, !tbaa !9
  store <16 x i8> %i.gt, ptr %i.dl, align 16, !tbaa !9
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gv = mul nuw nsw i64 %indvars.iv274, 3       ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 %i.gv
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gw) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 %i.gv
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.gy) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gz = trunc i64 %indvars.iv to i32
  %i.ha = add i32 %i.gz, 33
  %.not259 = icmp sgt i32 %i.ha, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !32

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.hb = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.hb, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %indvars.iv.next273, %._crit_edge.loopexit ] ; 4 uses
  %i.hc = icmp sgt i32 %8, 1
  br i1 %i.hc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hd = add nuw nsw i32 %8, 1
  %i.he = lshr i32 %i.hd, 1
  %i.hf = lshr i32 %.0255.lcssa, 1
  %i.hg = sub nsw i32 %i.he, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hk = sext i32 %i.hg to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hj, i64 %i.hk, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hl, i64 %i.hk, i1 false)
  %i.hm = getelementptr inbounds i8, ptr %i.b, i64 %i.hk
  %i.hn = add nsw i32 %i.hg, -1
  %i.ho = sext i32 %i.hn to i64                   ; 4 uses
  %i.hp = getelementptr inbounds i8, ptr %i.b, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = sub nsw i32 17, %i.hg
  %i.hs = sext i32 %i.hr to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hm, i8 %i.hq, i64 %i.hs, i1 false)
  %i.ht = getelementptr inbounds i8, ptr %i.c, i64 %i.hk
  %i.hu = getelementptr inbounds i8, ptr %i.c, i64 %i.ho
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ht, i8 %i.hv, i64 %i.hs, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.hw = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.ic = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.id = bitcast <2 x i64> %i.ib to <16 x i8>    ; 2 uses
  %i.ie = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.id) ; 4 uses
  %i.if = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.ig = bitcast <2 x i64> %i.hz to <16 x i8>    ; 2 uses
  %i.ih = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.ig) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ih, %i.ie
  %i.ii = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ij = xor <2 x i64> %i.ib, %i.hw              ; 2 uses
  %i.ik = xor <2 x i64> %i.hz, %i.hy              ; 2 uses
  %i.il = or <2 x i64> %i.ij, %i.ik
  %i.im = or <2 x i64> %i.il, %i.ii
  %i.in = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.ih)
  %i.io = bitcast <2 x i64> %i.im to <16 x i8>
  %i.ip = and <16 x i8> %i.io, splat (i8 1)
  %i.iq = sub <16 x i8> %i.in, %i.ip              ; 4 uses
  %i.ir = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iq, <16 x i8> %i.ih)
  %i.is = and <2 x i64> %i.ik, %i.ii
  %.inner296 = xor <16 x i8> %i.iq, %i.ih
  %i.it = bitcast <2 x i64> %i.is to <16 x i8>
  %i.iu = or <16 x i8> %.inner296, %i.it
  %i.iv = and <16 x i8> %i.iu, splat (i8 1)
  %i.iw = sub <16 x i8> %i.ir, %i.iv              ; 2 uses
  %i.ix = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iq, <16 x i8> %i.ie)
  %i.iy = and <2 x i64> %i.ij, %i.ii
  %.inner298 = xor <16 x i8> %i.iq, %i.ie
  %i.iz = bitcast <2 x i64> %i.iy to <16 x i8>
  %i.ja = or <16 x i8> %.inner298, %i.iz
  %i.jb = and <16 x i8> %i.ja, splat (i8 1)
  %i.jc = sub <16 x i8> %i.ix, %i.jb              ; 2 uses
  %i.jd = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.iw) ; 2 uses
  %i.je = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.if, <16 x i8> %i.jc) ; 2 uses
  %i.jf = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jg = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jf, ptr %i.i, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jg, ptr %i.jh, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.ji = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ig, <16 x i8> %i.jc) ; 2 uses
  %i.jj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.id, <16 x i8> %i.iw) ; 2 uses
  %i.jk = shufflevector <16 x i8> %i.ji, <16 x i8> %i.jj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jl = shufflevector <16 x i8> %i.ji, <16 x i8> %i.jj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jm = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jk, ptr %i.jm, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jn = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jl, ptr %i.jn, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jo, i64 %i.hk, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jp, i64 %i.hk, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.d, i64 %i.hk
  %i.jr = getelementptr inbounds i8, ptr %i.d, i64 %i.ho
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jq, i8 %i.js, i64 %i.hs, i1 false)
  %i.jt = getelementptr inbounds i8, ptr %i.e, i64 %i.hk
  %i.ju = getelementptr inbounds i8, ptr %i.e, i64 %i.ho
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jt, i8 %i.jv, i64 %i.hs, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.jw = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !43, !noalias !50 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !9, !alias.scope !43, !noalias !50 ; 2 uses
  %i.jz = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !46, !noalias !51 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !9, !alias.scope !46, !noalias !51 ; 2 uses
  %i.kc = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.kd = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %i.ke = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kd) ; 4 uses
  %i.kf = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kg = bitcast <2 x i64> %i.jz to <16 x i8>    ; 2 uses
  %i.kh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.kg) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kh, %i.ke
  %i.ki = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kj = xor <2 x i64> %i.kb, %i.jw              ; 2 uses
  %i.kk = xor <2 x i64> %i.jz, %i.jy              ; 2 uses
  %i.kl = or <2 x i64> %i.kj, %i.kk
  %i.km = or <2 x i64> %i.kl, %i.ki
  %i.kn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ke, <16 x i8> %i.kh)
  %i.ko = bitcast <2 x i64> %i.km to <16 x i8>
  %i.kp = and <16 x i8> %i.ko, splat (i8 1)
  %i.kq = sub <16 x i8> %i.kn, %i.kp              ; 4 uses
  %i.kr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kq, <16 x i8> %i.kh)
  %i.ks = and <2 x i64> %i.kk, %i.ki
  %.inner302 = xor <16 x i8> %i.kq, %i.kh
  %i.kt = bitcast <2 x i64> %i.ks to <16 x i8>
  %i.ku = or <16 x i8> %.inner302, %i.kt
  %i.kv = and <16 x i8> %i.ku, splat (i8 1)
  %i.kw = sub <16 x i8> %i.kr, %i.kv              ; 2 uses
  %i.kx = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kq, <16 x i8> %i.ke)
  %i.ky = and <2 x i64> %i.kj, %i.ki
  %.inner304 = xor <16 x i8> %i.kq, %i.ke
  %i.kz = bitcast <2 x i64> %i.ky to <16 x i8>
  %i.la = or <16 x i8> %.inner304, %i.kz
  %i.lb = and <16 x i8> %i.la, splat (i8 1)
  %i.lc = sub <16 x i8> %i.kx, %i.lb              ; 2 uses
  %i.ld = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kw) ; 2 uses
  %i.le = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kf, <16 x i8> %i.lc) ; 2 uses
  %i.lf = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lg = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lf, ptr %i.j, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.lg, ptr %i.lh, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.li = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kg, <16 x i8> %i.lc) ; 2 uses
  %i.lj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kd, <16 x i8> %i.kw) ; 2 uses
  %i.lk = shufflevector <16 x i8> %i.li, <16 x i8> %i.lj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ll = shufflevector <16 x i8> %i.li, <16 x i8> %i.lj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lm = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lk, ptr %i.lm, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.ln = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.ll, ptr %i.ln, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lo = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %i.lo
  %i.lq = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hi, ptr nonnull align 1 %i.lp, i64 %i.lr, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hh) #8
  %i.ls = mul nuw nsw i32 %.0255.lcssa, 3
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 %i.lt
  %i.lv = mul nsw i32 %i.lq, 3
  %i.lw = sext i32 %i.lv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lu, ptr nonnull align 16 %i.hh, i64 %i.lw, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lx = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 %i.lo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lx, ptr nonnull align 1 %i.lz, i64 %i.lr, i1 false)
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hh) #8
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.lx, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.lm, ptr noundef nonnull %i.ly) #8
  %i.ma = mul nuw nsw i32 %.0255.lcssa, 3
  %i.mb = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 %i.mb
  %i.md = mul nsw i32 %i.lq, 3
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull align 16 %i.hh, i64 %i.me, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %7, i64 %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr nonnull align 16 %i.ly, i64 %i.me, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitYUV444ConvertersSSE41() local_unnamed_addr #0 {
bb.a:
  store ptr @Yuv444ToRgb_SSE41, ptr @WebPYUV444Converters, align 8, !tbaa !7
  store ptr @Yuv444ToBgr_SSE41, ptr getelementptr inbounds nuw (i8, ptr @WebPYUV444Converters, i64 16), align 8, !tbaa !7
  ret void
end_hunk_1
