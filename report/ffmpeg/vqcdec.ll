Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vqcdec?download=true
inline.NumInlined: 33
inline.NumDeleted: 17
begin_hunk_0_@decode_strip:bb.a
  br i1 %i.ag, label %.lr.ph.preheader.i, label %transform1.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.03336.i = phi i32 [ %i.ae, %.lr.ph.preheader.i ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %i.ah = trunc i32 %.03336.i to i16
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i ; 2 uses
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !40
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.an = load i16, ptr %i.am, align 2, !tbaa !40
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !40
  %i.ar = sext i16 %i.aq to i32
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = ashr i32 %i.as, 1
  %i.au = add nsw i32 %i.at, %i.al                ; 3 uses
  %sext.i = shl i32 %.03336.i, 16
  %i.av = ashr exact i32 %sext.i, 16
  %i.aw = add nsw i32 %i.au, %i.av
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = shl nsw i32 %i.ao, 1
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !40
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %transform1.exit, label %.lr.ph.i, !llvm.loop !55

transform1.exit:                                  ; preds = %.lr.ph.i, %._crit_edge
  %.033.lcssa.i = phi i32 [ %i.ae, %._crit_edge ], [ %i.au, %.lr.ph.i ]
  %i.bc = trunc i32 %.033.lcssa.i to i16
  %i.bd = sext i32 %i.y to i64                    ; 6 uses
  %i.be = getelementptr [2 x i8], ptr %i.x, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  store i16 %i.bc, ptr %i.bf, align 2, !tbaa !40
  %i.bg = sext i32 %i.af to i64                   ; 4 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !40
  %i.bj = getelementptr [2 x i8], ptr %i.v, i64 %i.u
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !40
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.bg
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !40 ; 2 uses
  %i.bp = sext i16 %i.bo to i32
  %i.bq = shl nsw i32 %i.bp, 1
  %i.br = sub nsw i32 %i.bm, %i.bq
  %i.bs = lshr i32 %i.br, 2
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = sub i16 %i.bi, %i.bo
  %i.bv = add i16 %i.bu, %i.bt
  %i.bw = getelementptr i8, ptr %i.be, i64 -2
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !40
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.bd ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !36 ; 5 uses
  %i.ca = sdiv i32 %3, 2                          ; 2 uses
  %i.cb = load i16, ptr %i.x, align 2, !tbaa !40
  %i.cc = zext i16 %i.cb to i32
  %i.cd = load i16, ptr %i.bx, align 2, !tbaa !40
  %i.ce = ashr i16 %i.cd, 1
  %i.cf = zext i16 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, %i.cc            ; 2 uses
  %i.ch = add nsw i32 %i.y, -1                    ; 3 uses
  %i.ci = icmp sgt i32 %3, 7                      ; 2 uses
  br i1 %i.ci, label %.lr.ph.preheader.i53, label %transform1.exit63

.lr.ph.preheader.i53:                             ; preds = %transform1.exit
  %smax.i54 = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %wide.trip.count.i55 = zext nneg i32 %smax.i54 to i64
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.preheader.i53
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %indvars.iv.next.i60, %.lr.ph.i56 ] ; 3 uses
  %.03336.i58 = phi i32 [ %i.cg, %.lr.ph.preheader.i53 ], [ %i.cw, %.lr.ph.i56 ] ; 2 uses
  %i.cj = trunc i32 %.03336.i58 to i16
  %.idx.i59 = shl nuw nsw i64 %indvars.iv.i57, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i59 ; 2 uses
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !40
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i57, 1 ; 4 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next.i60
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !40
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.i57
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !40
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next.i60
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !40
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, %i.cq
  %i.cv = ashr i32 %i.cu, 1
  %i.cw = add nsw i32 %i.cv, %i.cn                ; 3 uses
  %sext.i61 = shl i32 %.03336.i58, 16
  %i.cx = ashr exact i32 %sext.i61, 16
  %i.cy = add nsw i32 %i.cw, %i.cx
  %i.cz = lshr i32 %i.cy, 1
  %i.da = shl nsw i32 %i.cq, 1
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !40
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i55
  br i1 %exitcond.not.i62, label %transform1.exit63, label %.lr.ph.i56, !llvm.loop !55

transform1.exit63:                                ; preds = %.lr.ph.i56, %transform1.exit
  %.033.lcssa.i52 = phi i32 [ %i.cg, %transform1.exit ], [ %i.cw, %.lr.ph.i56 ]
  %i.de = trunc i32 %.033.lcssa.i52 to i16
  %i.df = sext i32 %i.ca to i64                   ; 6 uses
  %i.dg = getelementptr [2 x i8], ptr %i.bz, i64 %i.df ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  store i16 %i.de, ptr %i.dh, align 2, !tbaa !40
  %i.di = sext i32 %i.ch to i64                   ; 4 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !40
  %i.dl = getelementptr [2 x i8], ptr %i.bx, i64 %i.bd
  %i.dm = getelementptr i8, ptr %i.dl, i64 -4
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !40
  %i.do = sext i16 %i.dn to i32
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.di
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !40 ; 2 uses
  %i.dr = sext i16 %i.dq to i32
  %i.ds = shl nsw i32 %i.dr, 1
  %i.dt = sub nsw i32 %i.do, %i.ds
  %i.du = lshr i32 %i.dt, 2
  %i.dv = trunc i32 %i.du to i16
  %i.dw = sub i16 %i.dk, %i.dq
  %i.dx = add i16 %i.dw, %i.dv
  %i.dy = getelementptr i8, ptr %i.dg, i64 -2
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !40
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.df ; 5 uses
  %i.ea = load i16, ptr %i.bz, align 2, !tbaa !40
  %i.eb = sext i16 %i.ea to i32
  %i.ec = load i16, ptr %i.dz, align 2, !tbaa !40
  %i.ed = ashr i16 %i.ec, 1
  %i.ee = sext i16 %i.ed to i32
  %i.ef = add nsw i32 %i.ee, %i.eb                ; 2 uses
  %i.eg = add nsw i32 %i.ca, -1                   ; 3 uses
  %i.eh = icmp sgt i32 %3, 3                      ; 2 uses
  br i1 %i.eh, label %.lr.ph.preheader.i65, label %transform2.exit

.lr.ph.preheader.i65:                             ; preds = %transform1.exit63
  %smax.i66 = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 1)
  %wide.trip.count.i67 = zext nneg i32 %smax.i66 to i64
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.lr.ph.preheader.i65
  %indvars.iv.i69 = phi i64 [ 0, %.lr.ph.preheader.i65 ], [ %indvars.iv.next.i70, %.lr.ph.i68 ] ; 3 uses
  %.03338.i = phi i32 [ %i.ef, %.lr.ph.preheader.i65 ], [ %i.ez, %.lr.ph.i68 ] ; 3 uses
  %i.ei = add nsw i32 %.03338.i, 128              ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, 255
  %isnotneg.i35.i = icmp sgt i32 %.03338.i, -129
  %i.ek = sext i1 %isnotneg.i35.i to i8
  %i.el = trunc nuw i32 %i.ei to i8
  %.0.i36.i = select i1 %i.ej, i8 %i.ek, i8 %i.el
  %i.em = shl nuw nsw i64 %indvars.iv.i69, 1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.em ; 2 uses
  store i8 %.0.i36.i, ptr %i.en, align 1, !tbaa !38
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 4 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv.next.i70
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !40
  %i.eq = sext i16 %i.ep to i32
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %indvars.iv.i69
  %i.es = load i16, ptr %i.er, align 2, !tbaa !40
  %i.et = sext i16 %i.es to i32                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %indvars.iv.next.i70
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !40
  %i.ew = sext i16 %i.ev to i32
  %i.ex = add nsw i32 %i.ew, %i.et
  %i.ey = ashr i32 %i.ex, 1
  %i.ez = add nsw i32 %i.ey, %i.eq                ; 3 uses
  %i.fa = add nsw i32 %i.ez, %.03338.i
  %i.fb = ashr i32 %i.fa, 1
  %i.fc = shl nsw i32 %i.et, 1
  %i.fd = sub nsw i32 %i.fb, %i.fc                ; 2 uses
  %i.fe = add nsw i32 %i.fd, 128                  ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, 255
  %isnotneg.i.i = icmp sgt i32 %i.fd, -129
  %i.fg = sext i1 %isnotneg.i.i to i8
  %i.fh = trunc nuw i32 %i.fe to i8
  %.0.i.i = select i1 %i.ff, i8 %i.fg, i8 %i.fh
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %.0.i.i, ptr %i.fi, align 1, !tbaa !38
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i67
  br i1 %exitcond.not.i71, label %transform2.exit, label %.lr.ph.i68, !llvm.loop !56

transform2.exit:                                  ; preds = %.lr.ph.i68, %transform1.exit63
  %.033.lcssa.i64 = phi i32 [ %i.ef, %transform1.exit63 ], [ %i.ez, %.lr.ph.i68 ] ; 3 uses
  %i.fj = icmp sgt i32 %.033.lcssa.i64, -129
  %i.fk = icmp slt i32 %.033.lcssa.i64, 128
  %i.fl = trunc nsw i32 %.033.lcssa.i64 to i8
  %i.fm = xor i8 %i.fl, -128
  %i.fn = select i1 %i.fk, i8 %i.fm, i8 0
  %i.fo = select i1 %i.fj, i8 %i.fn, i8 -1
  %i.fp = sext i32 %3 to i64                      ; 3 uses
  %i.fq = getelementptr i8, ptr %1, i64 %i.fp     ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 -2
  store i8 %i.fo, ptr %i.fr, align 1, !tbaa !38
  %i.fs = sext i32 %i.eg to i64                   ; 4 uses
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !40
  %i.fv = sext i16 %i.fu to i32
  %i.fw = getelementptr [2 x i8], ptr %i.dz, i64 %i.df
  %i.fx = getelementptr i8, ptr %i.fw, i64 -4
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !40
  %i.fz = sext i16 %i.fy to i32
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.fs
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !40
  %i.gc = sext i16 %i.gb to i32                   ; 2 uses
  %i.gd = shl nsw i32 %i.gc, 1
  %i.ge = sub nsw i32 %i.fz, %i.gd
  %i.gf = ashr i32 %i.ge, 2
  %i.gg = sub nsw i32 %i.fv, %i.gc
  %i.gh = add nsw i32 %i.gf, %i.gg                ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, -129
  %i.gj = icmp slt i32 %i.gh, 128
  %i.gk = trunc nsw i32 %i.gh to i8
  %i.gl = xor i8 %i.gk, -128
  %i.gm = select i1 %i.gj, i8 %i.gl, i8 0
  %i.gn = select i1 %i.gi, i8 %i.gm, i8 -1
  %i.go = getelementptr i8, ptr %i.fq, i64 -1
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !38
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.fp ; 6 uses
  %i.gq = sext i32 %2 to i64
  %i.gr = getelementptr inbounds i8, ptr %1, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.u ; 5 uses
  %i.gt = load ptr, ptr %i.w, align 8, !tbaa !35  ; 5 uses
  %i.gu = load i16, ptr %i.gp, align 2, !tbaa !40
  %i.gv = zext i16 %i.gu to i32
  %i.gw = load i16, ptr %i.gs, align 2, !tbaa !40
  %i.gx = ashr i16 %i.gw, 1
  %i.gy = zext i16 %i.gx to i32
  %i.gz = add nuw nsw i32 %i.gy, %i.gv            ; 2 uses
  br i1 %i.ag, label %.lr.ph.preheader.i73, label %transform1.exit83

.lr.ph.preheader.i73:                             ; preds = %transform2.exit
  %smax.i74 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %wide.trip.count.i75 = zext nneg i32 %smax.i74 to i64
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.lr.ph.i76, %.lr.ph.preheader.i73
  %indvars.iv.i77 = phi i64 [ 0, %.lr.ph.preheader.i73 ], [ %indvars.iv.next.i80, %.lr.ph.i76 ] ; 3 uses
  %.03336.i78 = phi i32 [ %i.gz, %.lr.ph.preheader.i73 ], [ %i.hn, %.lr.ph.i76 ] ; 2 uses
  %i.ha = trunc i32 %.03336.i78 to i16
  %.idx.i79 = shl nuw nsw i64 %indvars.iv.i77, 2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.i79 ; 2 uses
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !40
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i77, 1 ; 4 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %indvars.iv.next.i80
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !40
  %i.he = sext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %indvars.iv.i77
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !40
  %i.hh = sext i16 %i.hg to i32                   ; 2 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %indvars.iv.next.i80
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !40
  %i.hk = sext i16 %i.hj to i32
  %i.hl = add nsw i32 %i.hk, %i.hh
  %i.hm = ashr i32 %i.hl, 1
  %i.hn = add nsw i32 %i.hm, %i.he                ; 3 uses
  %sext.i81 = shl i32 %.03336.i78, 16
  %i.ho = ashr exact i32 %sext.i81, 16
  %i.hp = add nsw i32 %i.hn, %i.ho
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = shl nsw i32 %i.hh, 1
  %i.hs = sub i32 %i.hq, %i.hr
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !40
  %exitcond.not.i82 = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i75
  br i1 %exitcond.not.i82, label %transform1.exit83, label %.lr.ph.i76, !llvm.loop !55

transform1.exit83:                                ; preds = %.lr.ph.i76, %transform2.exit
  %.033.lcssa.i72 = phi i32 [ %i.gz, %transform2.exit ], [ %i.hn, %.lr.ph.i76 ]
  %i.hv = trunc i32 %.033.lcssa.i72 to i16
  %i.hw = getelementptr [2 x i8], ptr %i.gt, i64 %i.bd ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 -4
  store i16 %i.hv, ptr %i.hx, align 2, !tbaa !40
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.bg
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !40
  %i.ia = getelementptr [2 x i8], ptr %i.gs, i64 %i.u
  %i.ib = getelementptr i8, ptr %i.ia, i64 -4
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !40
  %i.id = sext i16 %i.ic to i32
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.bg
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !40 ; 2 uses
  %i.ig = sext i16 %i.if to i32
  %i.ih = shl nsw i32 %i.ig, 1
  %i.ii = sub nsw i32 %i.id, %i.ih
  %i.ij = lshr i32 %i.ii, 2
  %i.ik = trunc i32 %i.ij to i16
  %i.il = sub i16 %i.hz, %i.if
  %i.im = add i16 %i.il, %i.ik
  %i.in = getelementptr i8, ptr %i.hw, i64 -2
  store i16 %i.im, ptr %i.in, align 2, !tbaa !40
  %i.io = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.bd ; 5 uses
  %i.ip = load ptr, ptr %i.by, align 8, !tbaa !36 ; 5 uses
  %i.iq = load i16, ptr %i.gt, align 2, !tbaa !40
  %i.ir = zext i16 %i.iq to i32
  %i.is = load i16, ptr %i.io, align 2, !tbaa !40
  %i.it = ashr i16 %i.is, 1
  %i.iu = zext i16 %i.it to i32
  %i.iv = add nuw nsw i32 %i.iu, %i.ir            ; 2 uses
  br i1 %i.ci, label %.lr.ph.preheader.i85, label %transform1.exit95

.lr.ph.preheader.i85:                             ; preds = %transform1.exit83
  %smax.i86 = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %wide.trip.count.i87 = zext nneg i32 %smax.i86 to i64
  br label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88, %.lr.ph.preheader.i85
  %indvars.iv.i89 = phi i64 [ 0, %.lr.ph.preheader.i85 ], [ %indvars.iv.next.i92, %.lr.ph.i88 ] ; 3 uses
  %.03336.i90 = phi i32 [ %i.iv, %.lr.ph.preheader.i85 ], [ %i.jj, %.lr.ph.i88 ] ; 2 uses
  %i.iw = trunc i32 %.03336.i90 to i16
  %.idx.i91 = shl nuw nsw i64 %indvars.iv.i89, 2
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx.i91 ; 2 uses
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !40
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i89, 1 ; 4 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv.next.i92
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !40
  %i.ja = sext i16 %i.iz to i32
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv.i89
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !40
  %i.jd = sext i16 %i.jc to i32                   ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv.next.i92
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !40
  %i.jg = sext i16 %i.jf to i32
  %i.jh = add nsw i32 %i.jg, %i.jd
  %i.ji = ashr i32 %i.jh, 1
  %i.jj = add nsw i32 %i.ji, %i.ja                ; 3 uses
  %sext.i93 = shl i32 %.03336.i90, 16
  %i.jk = ashr exact i32 %sext.i93, 16
  %i.jl = add nsw i32 %i.jj, %i.jk
  %i.jm = lshr i32 %i.jl, 1
  %i.jn = shl nsw i32 %i.jd, 1
  %i.jo = sub i32 %i.jm, %i.jn
  %i.jp = trunc i32 %i.jo to i16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  store i16 %i.jp, ptr %i.jq, align 2, !tbaa !40
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i87
  br i1 %exitcond.not.i94, label %transform1.exit95, label %.lr.ph.i88, !llvm.loop !55

transform1.exit95:                                ; preds = %.lr.ph.i88, %transform1.exit83
  %.033.lcssa.i84 = phi i32 [ %i.iv, %transform1.exit83 ], [ %i.jj, %.lr.ph.i88 ]
  %i.jr = trunc i32 %.033.lcssa.i84 to i16
  %i.js = getelementptr [2 x i8], ptr %i.ip, i64 %i.df ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !40
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.di
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !40
  %i.jw = getelementptr [2 x i8], ptr %i.io, i64 %i.bd
  %i.jx = getelementptr i8, ptr %i.jw, i64 -4
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !40
  %i.jz = sext i16 %i.jy to i32
  %i.ka = getelementptr inbounds [2 x i8], ptr %i.io, i64 %i.di
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !40 ; 2 uses
  %i.kc = sext i16 %i.kb to i32
  %i.kd = shl nsw i32 %i.kc, 1
  %i.ke = sub nsw i32 %i.jz, %i.kd
  %i.kf = lshr i32 %i.ke, 2
  %i.kg = trunc i32 %i.kf to i16
  %i.kh = sub i16 %i.jv, %i.kb
  %i.ki = add i16 %i.kh, %i.kg
  %i.kj = getelementptr i8, ptr %i.js, i64 -2
  store i16 %i.ki, ptr %i.kj, align 2, !tbaa !40
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.df ; 5 uses
  %i.kl = load i16, ptr %i.ip, align 2, !tbaa !40
  %i.km = sext i16 %i.kl to i32
  %i.kn = load i16, ptr %i.kk, align 2, !tbaa !40
  %i.ko = ashr i16 %i.kn, 1
  %i.kp = sext i16 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, %i.km                ; 2 uses
  br i1 %i.eh, label %.lr.ph.preheader.i97, label %transform2.exit109

.lr.ph.preheader.i97:                             ; preds = %transform1.exit95
  %smax.i98 = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 1)
  %wide.trip.count.i99 = zext nneg i32 %smax.i98 to i64
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100, %.lr.ph.preheader.i97
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.preheader.i97 ], [ %indvars.iv.next.i105, %.lr.ph.i100 ] ; 3 uses
  %.03338.i102 = phi i32 [ %i.kq, %.lr.ph.preheader.i97 ], [ %i.li, %.lr.ph.i100 ] ; 3 uses
  %i.kr = add nsw i32 %.03338.i102, 128           ; 2 uses
  %i.ks = icmp ugt i32 %i.kr, 255
  %isnotneg.i35.i103 = icmp sgt i32 %.03338.i102, -129
  %i.kt = sext i1 %isnotneg.i35.i103 to i8
  %i.ku = trunc nuw i32 %i.kr to i8
  %.0.i36.i104 = select i1 %i.ks, i8 %i.kt, i8 %i.ku
  %i.kv = shl nuw nsw i64 %indvars.iv.i101, 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.kv ; 2 uses
  store i8 %.0.i36.i104, ptr %i.kw, align 1, !tbaa !38
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i101, 1 ; 4 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %indvars.iv.next.i105
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !40
  %i.kz = sext i16 %i.ky to i32
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %indvars.iv.i101
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !40
  %i.lc = sext i16 %i.lb to i32                   ; 2 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %indvars.iv.next.i105
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !40
  %i.lf = sext i16 %i.le to i32
  %i.lg = add nsw i32 %i.lf, %i.lc
  %i.lh = ashr i32 %i.lg, 1
  %i.li = add nsw i32 %i.lh, %i.kz                ; 3 uses
  %i.lj = add nsw i32 %i.li, %.03338.i102
  %i.lk = ashr i32 %i.lj, 1
  %i.ll = shl nsw i32 %i.lc, 1
  %i.lm = sub nsw i32 %i.lk, %i.ll                ; 2 uses
  %i.ln = add nsw i32 %i.lm, 128                  ; 2 uses
  %i.lo = icmp ugt i32 %i.ln, 255
  %isnotneg.i.i106 = icmp sgt i32 %i.lm, -129
  %i.lp = sext i1 %isnotneg.i.i106 to i8
  %i.lq = trunc nuw i32 %i.ln to i8
  %.0.i.i107 = select i1 %i.lo, i8 %i.lp, i8 %i.lq
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  store i8 %.0.i.i107, ptr %i.lr, align 1, !tbaa !38
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i105, %wide.trip.count.i99
  br i1 %exitcond.not.i108, label %transform2.exit109, label %.lr.ph.i100, !llvm.loop !56

transform2.exit109:                               ; preds = %.lr.ph.i100, %transform1.exit95
  %.033.lcssa.i96 = phi i32 [ %i.kq, %transform1.exit95 ], [ %i.li, %.lr.ph.i100 ] ; 3 uses
  %i.ls = icmp sgt i32 %.033.lcssa.i96, -129
  %i.lt = icmp slt i32 %.033.lcssa.i96, 128
  %i.lu = trunc nsw i32 %.033.lcssa.i96 to i8
  %i.lv = xor i8 %i.lu, -128
  %i.lw = select i1 %i.lt, i8 %i.lv, i8 0
  %i.lx = select i1 %i.ls, i8 %i.lw, i8 -1
  %i.ly = getelementptr i8, ptr %i.gr, i64 %i.fp  ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 -2
  store i8 %i.lx, ptr %i.lz, align 1, !tbaa !38
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.fs
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !40
  %i.mc = sext i16 %i.mb to i32
  %i.md = getelementptr [2 x i8], ptr %i.kk, i64 %i.df
  %i.me = getelementptr i8, ptr %i.md, i64 -4
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !40
  %i.mg = sext i16 %i.mf to i32
  %i.mh = getelementptr inbounds [2 x i8], ptr %i.kk, i64 %i.fs
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !40
  %i.mj = sext i16 %i.mi to i32                   ; 2 uses
  %i.mk = shl nsw i32 %i.mj, 1
  %i.ml = sub nsw i32 %i.mg, %i.mk
  %i.mm = ashr i32 %i.ml, 2
  %i.mn = sub nsw i32 %i.mc, %i.mj
  %i.mo = add nsw i32 %i.mm, %i.mn                ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, -129
  %i.mq = icmp slt i32 %i.mo, 128
  %i.mr = trunc nsw i32 %i.mo to i8
  %i.ms = xor i8 %i.mr, -128
  %i.mt = select i1 %i.mq, i8 %i.ms, i8 0
  %i.mu = select i1 %i.mp, i8 %i.mt, i8 -1
  %i.mv = getelementptr i8, ptr %i.ly, i64 -1
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !38
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !40 ; 2 uses
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.my = load i16, ptr %gep, align 2, !tbaa !40  ; 2 uses
  %i.mz = sub i16 %i.mx, %i.my
  store i16 %i.mz, ptr %i.mw, align 2, !tbaa !40
  %i.na = add i16 %i.my, %i.mx
  store i16 %i.na, ptr %gep, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !57
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 112}
!30 = !{!27, !6, i64 116}
!31 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!32 = !{!"VqcContext", !31, i64 0, !14, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !5, i64 40}
!33 = !{!32, !14, i64 8}
!34 = !{!32, !17, i64 16}
!35 = !{!32, !17, i64 24}
!36 = !{!32, !17, i64 32}
!37 = !{!32, !31, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!"short", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!27, !6, i64 136}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!48 = !{!47, !14, i64 24}
!49 = !{!47, !6, i64 32}
!50 = !{!14, !14, i64 0}
!51 = !{!6, !6, i64 0}
!52 = distinct !{!52, !41}
!53 = distinct !{!53, !41, !58, !59}
!54 = distinct !{!54, !41, !58, !59}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41, !59, !58}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
