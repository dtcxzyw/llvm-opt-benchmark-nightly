inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@crcspeed64big:bb.a
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %i.cz, label %.lr.ph.6, label %.preheader42

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.da = lshr i64 %i.ct, 56
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !14
  %i.dh = shl i64 %i.ct, 8
  %i.di = xor i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = add i64 %3, -7                          ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = ptrtoint ptr %i.db to i64
  %i.dm = and i64 %i.dl, 7
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = select i1 %i.dk, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.7, label %.preheader42

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.dp = lshr i64 %i.di, 56
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load i8, ptr %i.db, align 1, !tbaa !13
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !14
  %i.dw = shl i64 %i.di, 8
  %i.dx = xor i64 %i.dv, %i.dw
  %i.dy = add i64 %3, -8
  br label %.preheader42

.preheader:                                       ; preds = %bb.b, %.preheader42
  %.140.lcssa = phi i64 [ %.039.lcssa, %.preheader42 ], [ %i.fw, %bb.b ] ; 4 uses
  %.137.lcssa = phi i64 [ %.036.lcssa, %.preheader42 ], [ %i.fy, %bb.b ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader42 ], [ %i.fx, %bb.b ] ; 3 uses
  %.not55 = icmp eq i64 %.137.lcssa, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.137.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol

.lr.ph59.prol:                                    ; preds = %.lr.ph59.preheader
  %i.dz = lshr i64 %.140.lcssa, 56
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %i.eb = load i8, ptr %.1.lcssa, align 1, !tbaa !13
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !14
  %i.eg = shl i64 %.140.lcssa, 8
  %i.eh = xor i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = add nsw i64 %.137.lcssa, -1
  br label %.lr.ph59.prol.loopexit

.lr.ph59.prol.loopexit:                           ; preds = %.lr.ph59.prol, %.lr.ph59.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph59.preheader ], [ %i.eh, %.lr.ph59.prol ]
  %.258.unr = phi ptr [ %.1.lcssa, %.lr.ph59.preheader ], [ %i.ea, %.lr.ph59.prol ]
  %.23857.unr = phi i64 [ %.137.lcssa, %.lr.ph59.preheader ], [ %i.ei, %.lr.ph59.prol ]
  %.24156.unr = phi i64 [ %.140.lcssa, %.lr.ph59.preheader ], [ %i.eh, %.lr.ph59.prol ]
  %i.ej = icmp eq i64 %.137.lcssa, 1
  br i1 %i.ej, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %.lr.ph51, %bb.b
  %.150 = phi ptr [ %.0.lcssa, %.lr.ph51 ], [ %i.fx, %bb.b ] ; 2 uses
  %.13749 = phi i64 [ %.036.lcssa, %.lr.ph51 ], [ %i.fy, %bb.b ]
  %.14048 = phi i64 [ %.039.lcssa, %.lr.ph51 ], [ %i.fw, %bb.b ]
  %i.ek = load i64, ptr %.150, align 8, !tbaa !14
  %i.el = xor i64 %i.ek, %.14048                  ; 8 uses
  %i.em = and i64 %i.el, 255
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !14
  %i.ep = lshr i64 %i.el, 8
  %i.eq = and i64 %i.ep, 255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !14
  %i.et = xor i64 %i.es, %i.eo
  %i.eu = lshr i64 %i.el, 16
  %i.ev = and i64 %i.eu, 255
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !14
  %i.ey = xor i64 %i.et, %i.ex
  %i.ez = lshr i64 %i.el, 24
  %i.fa = and i64 %i.ez, 255
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !14
  %i.fd = xor i64 %i.ey, %i.fc
  %i.fe = lshr i64 %i.el, 32
  %i.ff = and i64 %i.fe, 255
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !14
  %i.fi = xor i64 %i.fd, %i.fh
  %i.fj = lshr i64 %i.el, 40
  %i.fk = and i64 %i.fj, 255
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !14
  %i.fn = xor i64 %i.fi, %i.fm
  %i.fo = lshr i64 %i.el, 48
  %i.fp = and i64 %i.fo, 255
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !14
  %i.fs = xor i64 %i.fn, %i.fr
  %i.ft = lshr i64 %i.el, 56
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !14
  %i.fw = xor i64 %i.fs, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
  %i.fy = add i64 %.13749, -8                     ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 7
  br i1 %i.fz, label %bb.b, label %.preheader, !llvm.loop !39

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59
  %.258 = phi ptr [ %i.gk, %.lr.ph59 ], [ %.258.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.23857 = phi i64 [ %i.gs, %.lr.ph59 ], [ %.23857.unr, %.lr.ph59.prol.loopexit ]
  %.24156 = phi i64 [ %i.gr, %.lr.ph59 ], [ %.24156.unr, %.lr.ph59.prol.loopexit ] ; 2 uses
  %i.ga = lshr i64 %.24156, 56
  %i.gb = getelementptr inbounds nuw i8, ptr %.258, i64 1
  %i.gc = load i8, ptr %.258, align 1, !tbaa !13
  %i.gd = zext i8 %i.gc to i64
  %i.ge = xor i64 %i.ga, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !14
  %i.gh = shl i64 %.24156, 8
  %i.gi = xor i64 %i.gg, %i.gh                    ; 2 uses
  %i.gj = lshr i64 %i.gi, 56
  %i.gk = getelementptr inbounds nuw i8, ptr %.258, i64 2
  %i.gl = load i8, ptr %i.gb, align 1, !tbaa !13
  %i.gm = zext i8 %i.gl to i64
  %i.gn = xor i64 %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !14
  %i.gq = shl i64 %i.gi, 8
  %i.gr = xor i64 %i.gp, %i.gq                    ; 2 uses
  %i.gs = add nsw i64 %.23857, -2                 ; 2 uses
  %.not.1 = icmp eq i64 %i.gs, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59, %.preheader
  %.241.lcssa = phi i64 [ %.140.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %i.gr, %.lr.ph59 ]
  %i.gt = tail call noundef i64 @llvm.bswap.i64(i64 %.241.lcssa)
  ret i64 %i.gt
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i16 @crcspeed16big(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a) ; 4 uses
  %i.c = icmp ne i64 %3, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader46

.preheader46:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.041.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ], [ %i.af, %.lr.ph.1 ], [ %i.as, %.lr.ph.2 ], [ %i.bg, %.lr.ph.3 ], [ %i.bu, %.lr.ph.4 ], [ %i.ci, %.lr.ph.5 ], [ %i.cw, %.lr.ph.6 ], [ %i.dk, %.lr.ph.7 ]
  %.038.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.x, %.lr.ph ], [ %i.al, %.lr.ph.1 ], [ %i.az, %.lr.ph.2 ], [ %i.bn, %.lr.ph.3 ], [ %i.cb, %.lr.ph.4 ], [ %i.cp, %.lr.ph.5 ], [ %i.dd, %.lr.ph.6 ], [ %i.dr, %.lr.ph.7 ] ; 2 uses
  %.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.y, %.lr.ph ], [ %i.am, %.lr.ph.1 ], [ %i.ba, %.lr.ph.2 ], [ %i.bo, %.lr.ph.3 ], [ %i.cc, %.lr.ph.4 ], [ %i.cq, %.lr.ph.5 ], [ %i.de, %.lr.ph.6 ], [ %i.ds, %.lr.ph.7 ] ; 3 uses
  %i.h = icmp ugt i64 %.0.lcssa, 7
  br i1 %i.h, label %.lr.ph55, label %.preheader

.lr.ph55:                                         ; preds = %.preheader46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3584
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.p = lshr exact i64 %i.b, 48
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.r = load i8, ptr %2, align 1, !tbaa !13
  %.tr44 = trunc i64 %i.p to i8
  %.narrow45 = xor i8 %i.r, %.tr44
  %i.s = zext i8 %.narrow45 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19
  %i.v = zext i16 %i.u to i64
  %i.w = lshr exact i64 %i.b, 8
  %i.x = or disjoint i64 %i.w, %i.v               ; 2 uses
  %i.y = add i64 %3, -1                           ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.1, label %.preheader46

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ae = lshr i64 %i.b, 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.ag = load i8, ptr %i.q, align 1, !tbaa !13
  %.tr44.1 = trunc nuw i64 %i.ae to i8
  %.narrow45.1 = xor i8 %i.ag, %.tr44.1
  %4 = zext i8 %.narrow45.1 to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !19
  %i.aj = zext i16 %i.ai to i64
  %i.ak = lshr i64 %i.x, 8
  %i.al = xor i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = add i64 %3, -2                          ; 2 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.2, label %.preheader46

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.at = load i8, ptr %i.af, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !19
  %i.ax = zext i16 %i.aw to i64
  %i.ay = lshr i64 %i.al, 8
  %i.az = xor i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = add i64 %3, -3                          ; 2 uses
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = ptrtoint ptr %i.as to i64
  %i.bd = and i64 %i.bc, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph.3, label %.preheader46

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.bh = load i8, ptr %i.as, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !19
  %i.bl = zext i16 %i.bk to i64
  %i.bm = lshr i64 %i.az, 8
  %i.bn = xor i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = add i64 %3, -4                          ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = ptrtoint ptr %i.bg to i64
  %i.br = and i64 %i.bq, 7
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph.4, label %.preheader46

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 3 uses
  %i.bv = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !19
  %i.bz = zext i16 %i.by to i64
  %i.ca = lshr i64 %i.bn, 8
  %i.cb = xor i64 %i.ca, %i.bz                    ; 2 uses
  %i.cc = add i64 %3, -5                          ; 2 uses
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = ptrtoint ptr %i.bu to i64
  %i.cf = and i64 %i.ce, 7
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = select i1 %i.cd, i1 %i.cg, i1 false
  br i1 %i.ch, label %.lr.ph.5, label %.preheader46

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.cj = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !19
  %i.cn = zext i16 %i.cm to i64
  %i.co = lshr i64 %i.cb, 8
  %i.cp = xor i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = add i64 %3, -6                          ; 2 uses
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = ptrtoint ptr %i.ci to i64
  %i.ct = and i64 %i.cs, 7
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph.6, label %.preheader46

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.cx = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !19
  %i.db = zext i16 %i.da to i64
  %i.dc = lshr i64 %i.cp, 8
  %i.dd = xor i64 %i.dc, %i.db                    ; 2 uses
  %i.de = add i64 %3, -7                          ; 2 uses
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = ptrtoint ptr %i.cw to i64
  %i.dh = and i64 %i.dg, 7
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  br i1 %i.dj, label %.lr.ph.7, label %.preheader46

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !19
  %i.dp = zext i16 %i.do to i64
  %i.dq = lshr i64 %i.dd, 8
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = add i64 %3, -8
  br label %.preheader46

.preheader:                                       ; preds = %bb.b, %.preheader46
  %.139.lcssa = phi i64 [ %.038.lcssa, %.preheader46 ], [ %i.fl, %bb.b ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader46 ], [ %i.fn, %bb.b ] ; 4 uses
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph63.prol

.lr.ph63.prol:                                    ; preds = %.preheader, %.lr.ph63.prol
  %.262.prol = phi i64 [ %i.du, %.lr.ph63.prol ], [ %.1.lcssa, %.preheader ]
  %.24061.prol = phi i64 [ %i.dt, %.lr.ph63.prol ], [ %.139.lcssa, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph63.prol ], [ 0, %.preheader ]
  %i.dt = lshr i64 %.24061.prol, 8                ; 2 uses
  %i.du = add nsw i64 %.262.prol, -1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.1.lcssa
  br i1 %prol.iter.cmp.not, label %.lr.ph63.prol.loopexit, label %.lr.ph63.prol, !llvm.loop !41

.lr.ph63.prol.loopexit:                           ; preds = %.lr.ph63.prol
  %i.dv = icmp ult i64 %.1.lcssa, 8
  br i1 %i.dv, label %._crit_edge, label %.lr.ph63

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %.154 = phi i64 [ %.0.lcssa, %.lr.ph55 ], [ %i.fn, %bb.b ]
  %.13953 = phi i64 [ %.038.lcssa, %.lr.ph55 ], [ %i.fl, %bb.b ] ; 2 uses
  %.14252 = phi ptr [ %.041.lcssa, %.lr.ph55 ], [ %i.fm, %bb.b ] ; 2 uses
  %i.dw = load i64, ptr %.14252, align 8, !tbaa !14 ; 8 uses
  %i.dx = lshr i64 %.13953, 48
  %i.dy = xor i64 %i.dw, %i.dx
  %i.dz = and i64 %i.dy, 255
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !19
  %i.ec = lshr i64 %i.dw, 8
  %i.ed = xor i64 %i.ec, %.13953
  %i.ee = and i64 %i.ed, 255
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !19
  %i.eh = xor i16 %i.eg, %i.eb
  %i.ei = lshr i64 %i.dw, 16
  %i.ej = and i64 %i.ei, 255
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !19
  %i.em = xor i16 %i.eh, %i.el
  %i.en = lshr i64 %i.dw, 24
  %i.eo = and i64 %i.en, 255
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !19
  %i.er = xor i16 %i.em, %i.eq
  %i.es = lshr i64 %i.dw, 32
  %i.et = and i64 %i.es, 255
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !19
  %i.ew = xor i16 %i.er, %i.ev
  %i.ex = lshr i64 %i.dw, 40
  %i.ey = and i64 %i.ex, 255
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !19
  %i.fb = xor i16 %i.ew, %i.fa
  %i.fc = lshr i64 %i.dw, 48
  %i.fd = and i64 %i.fc, 255
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !19
  %i.fg = xor i16 %i.fb, %i.ff
  %i.fh = lshr i64 %i.dw, 56
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !19
  %i.fk = xor i16 %i.fg, %i.fj
  %i.fl = zext i16 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.14252, i64 8
  %i.fn = add i64 %.154, -8                       ; 3 uses
  %i.fo = icmp ugt i64 %i.fn, 7
  br i1 %i.fo, label %bb.b, label %.preheader, !llvm.loop !43

.lr.ph63:                                         ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63
  %.262 = phi i64 [ %i.fp, %.lr.ph63 ], [ %i.du, %.lr.ph63.prol.loopexit ]
  %i.fp = add nsw i64 %.262, -8                   ; 2 uses
  %.not.7 = icmp eq i64 %i.fp, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph63, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63, %.preheader
  %.240.lcssa = phi i64 [ %.139.lcssa, %.preheader ], [ %i.dt, %.lr.ph63.prol.loopexit ], [ 0, %.lr.ph63 ]
  %i.fq = tail call noundef i64 @llvm.bswap.i64(i64 %.240.lcssa)
  %i.fr = trunc i64 %i.fq to i16
  ret i16 %i.fr
}

; Function Attrs: nounwind uwtable
define dso_local i64 @crcspeed64native(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @crcspeed64little(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  ret i64 %i.a
}

end_hunk_0
