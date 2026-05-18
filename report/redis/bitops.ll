inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@redisPopcount:bb.a
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph118.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118.preheader
  %n.vec = and i64 %i.aa, 2305843009213693950     ; 4 uses
  %i.ab = mul i64 %n.vec, -28
  %i.ac = add i64 %.084.lcssa, %i.ab              ; 2 uses
  %i.ad = mul i64 %n.vec, 28
  %i.ae = getelementptr i8, ptr %.089.lcssa, i64 %i.ad ; 2 uses
  %i.af = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.085.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.af, %vector.ph ], [ %i.ex, %vector.body ]
  %i.ag = mul i64 %index, 28                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.089.lcssa, i64 %i.ag ; 7 uses
  %i.ah = getelementptr i8, ptr %.089.lcssa, i64 %i.ag ; 7 uses
  %next.gep166 = getelementptr i8, ptr %i.ah, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aj = getelementptr i8, ptr %i.ah, i64 32
  %i.ak = load i32, ptr %next.gep, align 4, !tbaa !9
  %i.al = load i32, ptr %next.gep166, align 4, !tbaa !9
  %i.am = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %i.an = insertelement <2 x i32> %i.am, i32 %i.al, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ap = getelementptr i8, ptr %i.ah, i64 36
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !9
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.as = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.at = insertelement <2 x i32> %i.as, i32 %i.ar, i64 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.av = getelementptr i8, ptr %i.ah, i64 40
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ay = insertelement <2 x i32> poison, i32 %i.aw, i64 0
  %i.az = insertelement <2 x i32> %i.ay, i32 %i.ax, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bb = getelementptr i8, ptr %i.ah, i64 44
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !9
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !9
  %i.be = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bf = insertelement <2 x i32> %i.be, i32 %i.bd, i64 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.bh = getelementptr i8, ptr %i.ah, i64 48
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bk = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.bj, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.bn = getelementptr i8, ptr %i.ah, i64 52
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !9
  %i.bp = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bq = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %i.bp, i64 1 ; 2 uses
  %i.bs = load i32, ptr %i.bm, align 4, !tbaa !9
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bu = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.bv = insertelement <2 x i32> %i.bu, i32 %i.bt, i64 1 ; 2 uses
  %i.bw = lshr <2 x i32> %i.an, splat (i32 1)
  %i.bx = and <2 x i32> %i.bw, splat (i32 1431655765)
  %i.by = sub <2 x i32> %i.an, %i.bx              ; 2 uses
  %i.bz = and <2 x i32> %i.by, splat (i32 858993459)
  %i.ca = lshr <2 x i32> %i.by, splat (i32 2)
  %i.cb = and <2 x i32> %i.ca, splat (i32 858993459)
  %i.cc = add nuw nsw <2 x i32> %i.cb, %i.bz      ; 2 uses
  %i.cd = lshr <2 x i32> %i.at, splat (i32 1)
  %i.ce = and <2 x i32> %i.cd, splat (i32 1431655765)
  %i.cf = sub <2 x i32> %i.at, %i.ce              ; 2 uses
  %i.cg = and <2 x i32> %i.cf, splat (i32 858993459)
  %i.ch = lshr <2 x i32> %i.cf, splat (i32 2)
  %i.ci = and <2 x i32> %i.ch, splat (i32 858993459)
  %i.cj = add nuw nsw <2 x i32> %i.ci, %i.cg      ; 2 uses
  %i.ck = lshr <2 x i32> %i.az, splat (i32 1)
  %i.cl = and <2 x i32> %i.ck, splat (i32 1431655765)
  %i.cm = sub <2 x i32> %i.az, %i.cl              ; 2 uses
  %i.cn = and <2 x i32> %i.cm, splat (i32 858993459)
  %i.co = lshr <2 x i32> %i.cm, splat (i32 2)
  %i.cp = and <2 x i32> %i.co, splat (i32 858993459)
  %i.cq = add nuw nsw <2 x i32> %i.cp, %i.cn      ; 2 uses
  %i.cr = lshr <2 x i32> %i.bf, splat (i32 1)
  %i.cs = and <2 x i32> %i.cr, splat (i32 1431655765)
  %i.ct = sub <2 x i32> %i.bf, %i.cs              ; 2 uses
  %i.cu = and <2 x i32> %i.ct, splat (i32 858993459)
  %i.cv = lshr <2 x i32> %i.ct, splat (i32 2)
  %i.cw = and <2 x i32> %i.cv, splat (i32 858993459)
  %i.cx = add nuw nsw <2 x i32> %i.cw, %i.cu      ; 2 uses
  %i.cy = lshr <2 x i32> %i.bl, splat (i32 1)
  %i.cz = and <2 x i32> %i.cy, splat (i32 1431655765)
  %i.da = sub <2 x i32> %i.bl, %i.cz              ; 2 uses
  %i.db = and <2 x i32> %i.da, splat (i32 858993459)
  %i.dc = lshr <2 x i32> %i.da, splat (i32 2)
  %i.dd = and <2 x i32> %i.dc, splat (i32 858993459)
  %i.de = add nuw nsw <2 x i32> %i.dd, %i.db      ; 2 uses
  %i.df = lshr <2 x i32> %i.br, splat (i32 1)
  %i.dg = and <2 x i32> %i.df, splat (i32 1431655765)
  %i.dh = sub <2 x i32> %i.br, %i.dg              ; 2 uses
  %i.di = and <2 x i32> %i.dh, splat (i32 858993459)
  %i.dj = lshr <2 x i32> %i.dh, splat (i32 2)
  %i.dk = and <2 x i32> %i.dj, splat (i32 858993459)
  %i.dl = add nuw nsw <2 x i32> %i.dk, %i.di      ; 2 uses
  %i.dm = lshr <2 x i32> %i.bv, splat (i32 1)
  %i.dn = and <2 x i32> %i.dm, splat (i32 1431655765)
  %i.do = sub <2 x i32> %i.bv, %i.dn              ; 2 uses
  %i.dp = and <2 x i32> %i.do, splat (i32 858993459)
  %i.dq = lshr <2 x i32> %i.do, splat (i32 2)
  %i.dr = and <2 x i32> %i.dq, splat (i32 858993459)
  %i.ds = add nuw nsw <2 x i32> %i.dr, %i.dp      ; 2 uses
  %i.dt = lshr <2 x i32> %i.cc, splat (i32 4)
  %i.du = add nuw nsw <2 x i32> %i.dt, %i.cc
  %i.dv = and <2 x i32> %i.du, splat (i32 252645135)
  %i.dw = lshr <2 x i32> %i.cj, splat (i32 4)
  %i.dx = add nuw nsw <2 x i32> %i.dw, %i.cj
  %i.dy = and <2 x i32> %i.dx, splat (i32 252645135)
  %i.dz = add nuw nsw <2 x i32> %i.dy, %i.dv
  %i.ea = lshr <2 x i32> %i.cq, splat (i32 4)
  %i.eb = add nuw nsw <2 x i32> %i.ea, %i.cq
  %i.ec = and <2 x i32> %i.eb, splat (i32 252645135)
  %i.ed = add nuw nsw <2 x i32> %i.dz, %i.ec
  %i.ee = lshr <2 x i32> %i.cx, splat (i32 4)
  %i.ef = add nuw nsw <2 x i32> %i.ee, %i.cx
  %i.eg = and <2 x i32> %i.ef, splat (i32 252645135)
  %i.eh = add nuw nsw <2 x i32> %i.ed, %i.eg
  %i.ei = lshr <2 x i32> %i.de, splat (i32 4)
  %i.ej = add nuw nsw <2 x i32> %i.ei, %i.de
  %i.ek = and <2 x i32> %i.ej, splat (i32 252645135)
  %i.el = add nuw nsw <2 x i32> %i.eh, %i.ek
  %i.em = lshr <2 x i32> %i.dl, splat (i32 4)
  %i.en = add nuw nsw <2 x i32> %i.em, %i.dl
  %i.eo = and <2 x i32> %i.en, splat (i32 252645135)
  %i.ep = add nuw nsw <2 x i32> %i.el, %i.eo
  %i.eq = lshr <2 x i32> %i.ds, splat (i32 4)
  %i.er = add nuw nsw <2 x i32> %i.eq, %i.ds
  %i.es = and <2 x i32> %i.er, splat (i32 252645135)
  %i.et = add nuw nsw <2 x i32> %i.ep, %i.es
  %i.eu = mul <2 x i32> %i.et, splat (i32 16843009)
  %i.ev = lshr <2 x i32> %i.eu, splat (i32 24)
  %i.ew = zext nneg <2 x i32> %i.ev to <2 x i64>
  %i.ex = add <2 x i64> %vec.phi, %i.ew           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.ez = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ex) ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph118.preheader168

.lr.ph118.preheader168:                           ; preds = %.lr.ph118.preheader, %middle.block
  %.2117.ph = phi i64 [ %.084.lcssa, %.lr.ph118.preheader ], [ %i.ac, %middle.block ]
  %.186116.ph = phi i64 [ %.085.lcssa, %.lr.ph118.preheader ], [ %i.ez, %middle.block ]
  %.093115.ph = phi ptr [ %.089.lcssa, %.lr.ph118.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph118

.lr.ph107:                                        ; preds = %.preheader95, %.lr.ph107
  %.1106 = phi i64 [ %i.fp, %.lr.ph107 ], [ %.084.lcssa, %.preheader95 ] ; 2 uses
  %.190105 = phi ptr [ %i.fq, %.lr.ph107 ], [ %.089.lcssa, %.preheader95 ] ; 6 uses
  %.sroa.0.0104 = phi i64 [ %i.fc, %.lr.ph107 ], [ 0, %.preheader95 ]
  %.sroa.6.0103 = phi i64 [ %i.fg, %.lr.ph107 ], [ 0, %.preheader95 ]
  %.sroa.12.0102 = phi i64 [ %i.fo, %.lr.ph107 ], [ 0, %.preheader95 ]
  %.sroa.9.0101 = phi i64 [ %i.fk, %.lr.ph107 ], [ 0, %.preheader95 ]
  %i.fa = load i64, ptr %.190105, align 8, !tbaa !20
  %i.fb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fa)
  %i.fc = add i64 %i.fb, %.sroa.0.0104            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.190105, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !20
  %i.ff = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fe)
  %i.fg = add i64 %i.ff, %.sroa.6.0103            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.190105, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !20
  %i.fj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fi)
  %i.fk = add i64 %i.fj, %.sroa.9.0101            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.190105, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !20
  %i.fn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fm)
  %i.fo = add i64 %i.fn, %.sroa.12.0102           ; 2 uses
  %i.fp = add nsw i64 %.1106, -32                 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.190105, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.190105, i64 2080
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fr, i32 0, i32 3, i32 1)
  %i.fs = icmp samesign ugt i64 %.1106, 63
  br i1 %i.fs, label %.lr.ph107, label %._crit_edge108, !llvm.loop !22

._crit_edge108:                                   ; preds = %.lr.ph107, %.preheader95
  %.sroa.9.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fk, %.lr.ph107 ]
  %.sroa.12.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fo, %.lr.ph107 ]
  %.sroa.6.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fg, %.lr.ph107 ]
  %.sroa.0.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fc, %.lr.ph107 ]
  %.190.lcssa = phi ptr [ %.089.lcssa, %.preheader95 ], [ %i.fq, %.lr.ph107 ]
  %.1.lcssa = phi i64 [ %.084.lcssa, %.preheader95 ], [ %i.fp, %.lr.ph107 ]
  %i.ft = add i64 %.sroa.9.0.lcssa, %.085.lcssa
  %i.fu = add i64 %i.ft, %.sroa.12.0.lcssa
  %i.fv = add i64 %i.fu, %.sroa.6.0.lcssa
  %i.fw = add i64 %i.fv, %.sroa.0.0.lcssa
  br label %.loopexit

.lr.ph118:                                        ; preds = %.lr.ph118.preheader168, %.lr.ph118
  %.2117 = phi i64 [ %i.fy, %.lr.ph118 ], [ %.2117.ph, %.lr.ph118.preheader168 ] ; 2 uses
  %.186116 = phi i64 [ %i.gd, %.lr.ph118 ], [ %.186116.ph, %.lr.ph118.preheader168 ]
  %.093115 = phi ptr [ %i.fx, %.lr.ph118 ], [ %.093115.ph, %.lr.ph118.preheader168 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.093115, i64 28 ; 2 uses
  %i.fy = add nsw i64 %.2117, -28                 ; 2 uses
  %2 = load <7 x i32>, ptr %.093115, align 4, !tbaa !9 ; 2 uses
  %3 = lshr <7 x i32> %2, splat (i32 1)
  %4 = and <7 x i32> %3, splat (i32 1431655765)
  %5 = sub <7 x i32> %2, %4                       ; 2 uses
  %6 = and <7 x i32> %5, splat (i32 858993459)
  %7 = lshr <7 x i32> %5, splat (i32 2)
  %8 = and <7 x i32> %7, splat (i32 858993459)
  %9 = add nuw nsw <7 x i32> %8, %6               ; 2 uses
  %10 = lshr <7 x i32> %9, splat (i32 4)
  %11 = add nuw nsw <7 x i32> %10, %9
  %12 = and <7 x i32> %11, splat (i32 252645135)
  %i.fz = tail call i32 @llvm.vector.reduce.add.v7i32(<7 x i32> %12)
  %i.ga = mul i32 %i.fz, 16843009
  %i.gb = lshr i32 %i.ga, 24
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = add nuw nsw i64 %.186116, %i.gc         ; 2 uses
  %i.ge = icmp samesign ugt i64 %.2117, 55
  br i1 %i.ge, label %.lr.ph118, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph118, %middle.block, %.preheader, %._crit_edge108
  %.291 = phi ptr [ %.190.lcssa, %._crit_edge108 ], [ %.089.lcssa, %.preheader ], [ %i.ae, %middle.block ], [ %i.fx, %.lr.ph118 ] ; 2 uses
  %.287 = phi i64 [ %i.fw, %._crit_edge108 ], [ %.085.lcssa, %.preheader ], [ %i.ez, %middle.block ], [ %i.gd, %.lr.ph118 ] ; 3 uses
  %.3 = phi i64 [ %.1.lcssa, %._crit_edge108 ], [ %.084.lcssa, %.preheader ], [ %i.ac, %middle.block ], [ %i.fy, %.lr.ph118 ] ; 5 uses
  %.not94122 = icmp eq i64 %.3, 0
  br i1 %.not94122, label %._crit_edge128, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.loopexit
  %xtraiter = and i64 %.3, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol

.lr.ph127.prol:                                   ; preds = %.lr.ph127.preheader, %.lr.ph127.prol
  %.4125.prol = phi i64 [ %i.gf, %.lr.ph127.prol ], [ %.3, %.lr.ph127.preheader ]
  %.388124.prol = phi i64 [ %i.gm, %.lr.ph127.prol ], [ %.287, %.lr.ph127.preheader ]
  %.392123.prol = phi ptr [ %i.gg, %.lr.ph127.prol ], [ %.291, %.lr.ph127.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph127.prol ], [ 0, %.lr.ph127.preheader ]
  %i.gf = add nsw i64 %.4125.prol, -1             ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.392123.prol, i64 1 ; 2 uses
  %i.gh = load i8, ptr %.392123.prol, align 1, !tbaa !13
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i64
  %i.gm = add nsw i64 %.388124.prol, %i.gl        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol, !llvm.loop !24

.lr.ph127.prol.loopexit:                          ; preds = %.lr.ph127.prol, %.lr.ph127.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph127.preheader ], [ %i.gm, %.lr.ph127.prol ]
  %.4125.unr = phi i64 [ %.3, %.lr.ph127.preheader ], [ %i.gf, %.lr.ph127.prol ]
  %.388124.unr = phi i64 [ %.287, %.lr.ph127.preheader ], [ %i.gm, %.lr.ph127.prol ]
  %.392123.unr = phi ptr [ %.291, %.lr.ph127.preheader ], [ %i.gg, %.lr.ph127.prol ]
  %i.gn = icmp ult i64 %.3, 4
  br i1 %i.gn, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127
  %.4125 = phi i64 [ %i.hj, %.lr.ph127 ], [ %.4125.unr, %.lr.ph127.prol.loopexit ]
  %.388124 = phi i64 [ %i.hq, %.lr.ph127 ], [ %.388124.unr, %.lr.ph127.prol.loopexit ]
  %.392123 = phi ptr [ %i.hk, %.lr.ph127 ], [ %.392123.unr, %.lr.ph127.prol.loopexit ] ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.392123, i64 1
  %i.gp = load i8, ptr %.392123, align 1, !tbaa !13
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13
  %i.gt = zext i8 %i.gs to i64
  %i.gu = add nsw i64 %.388124, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.392123, i64 2
  %i.gw = load i8, ptr %i.go, align 1, !tbaa !13
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !13
  %i.ha = zext i8 %i.gz to i64
  %i.hb = add nsw i64 %i.gu, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %.392123, i64 3
  %i.hd = load i8, ptr %i.gv, align 1, !tbaa !13
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !13
  %i.hh = zext i8 %i.hg to i64
  %i.hi = add nsw i64 %i.hb, %i.hh
  %i.hj = add nsw i64 %.4125, -4                  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.392123, i64 4
  %i.hl = load i8, ptr %i.hc, align 1, !tbaa !13
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !13
  %i.hp = zext i8 %i.ho to i64
  %i.hq = add nsw i64 %i.hi, %i.hp                ; 2 uses
  %.not94.3 = icmp eq i64 %i.hj, 0
  br i1 %.not94.3, label %._crit_edge128, label %.lr.ph127, !llvm.loop !26

._crit_edge128:                                   ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127, %.loopexit
  %.388.lcssa = phi i64 [ %.287, %.loopexit ], [ %.lcssa.unr, %.lr.ph127.prol.loopexit ], [ %i.hq, %.lr.ph127 ]
  ret i64 %.388.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @redisPopCountAvx512(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 63
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne i64 %1, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %iter.check, label %.preheader33

iter.check:                                       ; preds = %bb.a
  %i.f = add i64 %1, -1
  %i.g = and i64 %i.a, 63
  %i.h = xor i64 %i.g, 63
  %umin = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.h) ; 3 uses
  %i.i = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 96                       ; 5 uses
  %i.j = sub i64 %1, %n.vec                       ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = getelementptr i8, ptr %0, i64 24
  %wide.load = load <8 x i8>, ptr %0, align 1, !tbaa !13
  %wide.load90 = load <8 x i8>, ptr %i.l, align 1, !tbaa !13
  %wide.load91 = load <8 x i8>, ptr %i.m, align 1, !tbaa !13
  %wide.load92 = load <8 x i8>, ptr %i.n, align 1, !tbaa !13
  %i.o = freeze <8 x i8> %wide.load
  %i.p = bitcast <8 x i8> %i.o to i64             ; 8 uses
  %i.q = lshr i64 %i.p, 56
  %i.r = lshr i64 %i.p, 48
  %i.s = and i64 %i.r, 255
  %i.t = lshr i64 %i.p, 40
  %i.u = and i64 %i.t, 255
  %i.v = lshr i64 %i.p, 32
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %i.p, 24
  %i.y = and i64 %i.x, 255
  %i.z = lshr i64 %i.p, 16
  %i.aa = and i64 %i.z, 255
  %i.ab = lshr i64 %i.p, 8
  %i.ac = and i64 %i.ab, 255
  %i.ad = and i64 %i.p, 255
  %i.ae = freeze <8 x i8> %wide.load90
  %i.af = bitcast <8 x i8> %i.ae to i64           ; 8 uses
  %i.ag = lshr i64 %i.af, 56
  %i.ah = lshr i64 %i.af, 48
  %i.ai = and i64 %i.ah, 255
  %i.aj = lshr i64 %i.af, 40
  %i.ak = and i64 %i.aj, 255
  %i.al = lshr i64 %i.af, 32
  %i.am = and i64 %i.al, 255
  %i.an = lshr i64 %i.af, 24
  %i.ao = and i64 %i.an, 255
  %i.ap = lshr i64 %i.af, 16
  %i.aq = and i64 %i.ap, 255
  %i.ar = lshr i64 %i.af, 8
  %i.as = and i64 %i.ar, 255
  %i.at = and i64 %i.af, 255
  %i.au = freeze <8 x i8> %wide.load91
  %i.av = bitcast <8 x i8> %i.au to i64           ; 8 uses
  %i.aw = lshr i64 %i.av, 56
  %i.ax = lshr i64 %i.av, 48
  %i.ay = and i64 %i.ax, 255
  %i.az = lshr i64 %i.av, 40
  %i.ba = and i64 %i.az, 255
  %i.bb = lshr i64 %i.av, 32
  %i.bc = and i64 %i.bb, 255
  %i.bd = lshr i64 %i.av, 24
  %i.be = and i64 %i.bd, 255
  %i.bf = lshr i64 %i.av, 16
  %i.bg = and i64 %i.bf, 255
  %i.bh = lshr i64 %i.av, 8
  %i.bi = and i64 %i.bh, 255
  %i.bj = and i64 %i.av, 255
  %i.bk = freeze <8 x i8> %wide.load92
  %i.bl = bitcast <8 x i8> %i.bk to i64           ; 8 uses
  %i.bm = lshr i64 %i.bl, 56
  %i.bn = lshr i64 %i.bl, 48
  %i.bo = and i64 %i.bn, 255
  %i.bp = lshr i64 %i.bl, 40
  %i.bq = and i64 %i.bp, 255
  %i.br = lshr i64 %i.bl, 32
  %i.bs = and i64 %i.br, 255
  %i.bt = lshr i64 %i.bl, 24
  %i.bu = and i64 %i.bt, 255
  %i.bv = lshr i64 %i.bl, 16
  %i.bw = and i64 %i.bv, 255
  %i.bx = lshr i64 %i.bl, 8
  %i.by = and i64 %i.bx, 255
  %i.bz = and i64 %i.bl, 255
  %i.ca = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.ad
  %i.cb = getelementptr inbounds nuw i8, ptr @bitsinbyte, i64 %i.ac
end_hunk_0
begin_hunk_1_@bitfieldGeneric:bb.a

.lr.ph.i313.preheader:                            ; preds = %bb.bt
  %i.pa = load i64, ptr %i.dj, align 8, !tbaa !159
  %i.pb = and i64 %i.nd, -8
  %i.pc = sub i64 %i.pa, %i.pb                    ; 2 uses
  %i.pd = icmp eq i32 %i.nh, 1
  br i1 %i.pd, label %.lr.ph.i313.epil.preheader, label %.lr.ph.i313.preheader.new

.lr.ph.i313.preheader.new:                        ; preds = %.lr.ph.i313.preheader
  %unroll_iter523 = and i64 %i.ni, -2
  br label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %.lr.ph.i313, %.lr.ph.i313.preheader.new
  %.016.i314 = phi i64 [ 0, %.lr.ph.i313.preheader.new ], [ %i.py, %.lr.ph.i313 ]
  %.01314.i316 = phi i64 [ %i.pc, %.lr.ph.i313.preheader.new ], [ %i.pz, %.lr.ph.i313 ] ; 4 uses
  %niter524 = phi i64 [ 0, %.lr.ph.i313.preheader.new ], [ %niter524.next.1, %.lr.ph.i313 ]
  %i.pe = lshr i64 %.01314.i316, 3
  %i.pf = and i64 %.01314.i316, 7
  %i.pg = xor i64 %i.pf, 7
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pe
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !13
  %i.pj = zext i8 %i.pi to i64
  %i.pk = lshr i64 %i.pj, %i.pg
  %i.pl = add i64 %.01314.i316, 1                 ; 2 uses
  %i.pm = lshr i64 %i.pl, 3
  %i.pn = and i64 %i.pl, 7
  %i.po = xor i64 %i.pn, 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pm
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !13
  %i.pr = zext i8 %i.pq to i64
  %i.ps = lshr i64 %i.pr, %i.po
  %i.pt = and i64 %i.ps, 1
  %i.pu = shl i64 %.016.i314, 2
  %i.pv = shl nuw nsw i64 %i.pk, 1
  %i.pw = and i64 %i.pv, 2
  %i.px = or disjoint i64 %i.pu, %i.pw
  %i.py = or disjoint i64 %i.pt, %i.px            ; 3 uses
  %i.pz = add i64 %.01314.i316, 2                 ; 2 uses
  %niter524.next.1 = add i64 %niter524, 2         ; 2 uses
  %niter524.ncmp.1 = icmp eq i64 %niter524.next.1, %unroll_iter523
  br i1 %niter524.ncmp.1, label %getSignedBitfield.exit311.loopexit.unr-lcssa, label %.lr.ph.i313, !llvm.loop !49

getSignedBitfield.exit311.loopexit.unr-lcssa:     ; preds = %.lr.ph.i313
  %i.qa = and i32 %i.nh, 1
  %lcmp.mod520.not = icmp eq i32 %i.qa, 0
  br i1 %lcmp.mod520.not, label %getSignedBitfield.exit311, label %.lr.ph.i313.epil.preheader

.lr.ph.i313.epil.preheader:                       ; preds = %getSignedBitfield.exit311.loopexit.unr-lcssa, %.lr.ph.i313.preheader
  %.016.i314.epil.init = phi i64 [ 0, %.lr.ph.i313.preheader ], [ %i.py, %getSignedBitfield.exit311.loopexit.unr-lcssa ]
  %.01314.i316.epil.init = phi i64 [ %i.pc, %.lr.ph.i313.preheader ], [ %i.pz, %getSignedBitfield.exit311.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod522 = trunc i32 %i.nh to i1
  call void @llvm.assume(i1 %lcmp.mod522)
  %i.qb = lshr i64 %.01314.i316.epil.init, 3
  %i.qc = and i64 %.01314.i316.epil.init, 7
  %i.qd = xor i64 %i.qc, 7
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.qb
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !13
  %i.qg = zext i8 %i.qf to i64
  %i.qh = lshr i64 %i.qg, %i.qd
  %i.qi = and i64 %i.qh, 1
  %i.qj = shl i64 %.016.i314.epil.init, 1
  %i.qk = or disjoint i64 %i.qi, %i.qj
  br label %getSignedBitfield.exit311

getSignedBitfield.exit311:                        ; preds = %.lr.ph.i313.epil.preheader, %getSignedBitfield.exit311.loopexit.unr-lcssa, %bb.bt, %bb.bs, %getUnsignedBitfield.exit.thread.i308, %getUnsignedBitfield.exit.i306
  %.0.lcssa.i318.sink = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i306 ], [ %i.oz, %bb.bs ], [ %.0.lcssa.i10.i309, %getUnsignedBitfield.exit.thread.i308 ], [ 0, %bb.bt ], [ %i.py, %getSignedBitfield.exit311.loopexit.unr-lcssa ], [ %i.qk, %.lr.ph.i313.epil.preheader ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i318.sink) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bg, %setUnsignedBitfield.exit, %bb.av, %setSignedBitfield.exit, %getSignedBitfield.exit311
  %.2334 = phi i64 [ %.1333368, %setSignedBitfield.exit ], [ %.0332434, %getSignedBitfield.exit311 ], [ %.0332434, %bb.av ], [ %.0332434, %setUnsignedBitfield.exit ], [ %.0332434, %bb.bg ]
  %.3 = phi i32 [ %spec.select256, %setSignedBitfield.exit ], [ %.0196435, %getSignedBitfield.exit311 ], [ %.0196435, %bb.av ], [ %spec.select257, %setUnsignedBitfield.exit ], [ %.0196435, %bb.bg ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond454.not, label %._crit_edge439, label %bb.aa, !llvm.loop !167

._crit_edge439:                                   ; preds = %bb.bu
  %.not229 = icmp eq i32 %.3, 0
  br i1 %.not229, label %._crit_edge439.thread, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge439
  %i.ql = load i64, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.qm = icmp ne i64 %i.ql, 0
  %i.qn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.qo = icmp ne i64 %i.qn, 0
  %or.cond9 = select i1 %i.qm, i1 %i.qo, i1 false
  br i1 %or.cond9, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !106
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !90
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !105
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !51
  %i.qx = call i32 @getKeySlot(ptr noundef %i.qw) #23
  %i.qy = add i64 %i.qn, %i.ql
  call void @updateKeysizesHist(ptr noundef %i.qq, i32 noundef %i.qx, i32 noundef 0, i64 noundef %i.ql, i64 noundef %i.qy) #23
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !106
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !90
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !105
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ra, ptr noundef %i.re, ptr noundef %.0, i32 noundef 1) #23
  %i.rf = load ptr, ptr %i.rb, align 8, !tbaa !90
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !105
  %i.ri = load ptr, ptr %i.qz, align 8, !tbaa !106
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 72
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !107
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %i.rh, i32 noundef %i.rk) #23
  %i.rl = sext i32 %.3 to i64
  %i.rm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !110
  %i.rn = add nsw i64 %i.rm, %i.rl
  store i64 %i.rn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !110
  br label %._crit_edge439.thread

._crit_edge439.thread:                            ; preds = %bb.z, %bb.bx, %._crit_edge439
  call void @zfree(ptr noundef %.0203.lcssa477) #23
  br label %bb.by

bb.by:                                            ; preds = %.thread, %._crit_edge439.thread, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #19

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @addReplyNull(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldroCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #3

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbUnshareStringValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #8

declare ptr @sdsgrowzero(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v7i32(<7 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vpopcntdq,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = distinct !{!17, !15, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15, !19, !18}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !15}
!27 = !{!"branch_weights", i32 8, i32 24}
!28 = distinct !{!28, !15, !18, !19}
!29 = distinct !{!29, !15, !19, !18}
!30 = distinct !{!30, !15, !18, !19}
!31 = !{!"branch_weights", i32 4, i32 28}
!32 = distinct !{!32, !15, !18, !19}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15, !18, !19}
!35 = distinct !{!35, !15, !18, !19}
!36 = distinct !{!36, !15, !19, !18}
!37 = distinct !{!37, !15, !19, !18}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15, !18, !19}
!40 = !{!"branch_weights", i32 4, i32 12}
!41 = distinct !{!41, !15, !18, !19}
!42 = distinct !{!42, !15, !18, !19}
!43 = distinct !{!43, !15, !18, !19}
!44 = distinct !{!44, !15, !19, !18}
!45 = distinct !{!45, !15, !19, !18}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = !{!52, !53, i64 8}
!52 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !53, i64 8}
!53 = !{!"any pointer", !11, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !11, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"long long", !11, i64 0}
!58 = !{!59, !57, i64 7792}
!59 = !{!"redisServer", !10, i64 0, !21, i64 8, !60, i64 16, !60, i64 24, !61, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !63, i64 64, !64, i64 72, !64, i64 80, !65, i64 88, !66, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !57, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !60, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !21, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !60, i64 232, !60, i64 240, !10, i64 248, !10, i64 252, !21, i64 256, !11, i64 264, !64, i64 272, !64, i64 280, !64, i64 288, !67, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !60, i64 472, !60, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !68, i64 1336, !67, i64 1440, !67, i64 1448, !67, i64 1456, !67, i64 1464, !67, i64 1472, !67, i64 1480, !67, i64 1488, !70, i64 1496, !70, i64 1504, !53, i64 1512, !66, i64 1520, !10, i64 1528, !66, i64 1536, !10, i64 1544, !67, i64 1552, !11, i64 1560, !11, i64 1624, !64, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !71, i64 2424, !10, i64 2448, !57, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !21, i64 2488, !21, i64 2496, !21, i64 2504, !21, i64 2512, !21, i64 2520, !21, i64 2528, !57, i64 2536, !57, i64 2544, !57, i64 2552, !57, i64 2560, !57, i64 2568, !57, i64 2576, !73, i64 2584, !57, i64 2592, !57, i64 2600, !57, i64 2608, !57, i64 2616, !57, i64 2624, !57, i64 2632, !21, i64 2640, !57, i64 2648, !57, i64 2656, !57, i64 2664, !57, i64 2672, !57, i64 2680, !57, i64 2688, !57, i64 2696, !57, i64 2704, !21, i64 2712, !21, i64 2720, !21, i64 2728, !57, i64 2736, !57, i64 2744, !57, i64 2752, !57, i64 2760, !57, i64 2768, !73, i64 2776, !57, i64 2784, !57, i64 2792, !57, i64 2800, !57, i64 2808, !57, i64 2816, !67, i64 2824, !57, i64 2832, !57, i64 2840, !21, i64 2848, !74, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !21, i64 2976, !21, i64 2984, !21, i64 2992, !21, i64 3000, !21, i64 3008, !21, i64 3016, !21, i64 3024, !21, i64 3032, !73, i64 3040, !11, i64 3048, !21, i64 3080, !57, i64 3088, !57, i64 3096, !57, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !57, i64 5168, !57, i64 5176, !57, i64 5184, !57, i64 5192, !11, i64 5200, !57, i64 6264, !57, i64 6272, !21, i64 6280, !57, i64 6288, !57, i64 6296, !21, i64 6304, !11, i64 6312, !75, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !21, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !21, i64 6496, !21, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !60, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !76, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !60, i64 6680, !60, i64 6688, !10, i64 6696, !10, i64 6700, !21, i64 6704, !21, i64 6712, !21, i64 6720, !21, i64 6728, !21, i64 6736, !10, i64 6744, !10, i64 6748, !60, i64 6752, !10, i64 6760, !10, i64 6764, !57, i64 6768, !57, i64 6776, !21, i64 6784, !21, i64 6792, !21, i64 6800, !10, i64 6808, !10, i64 6812, !21, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !21, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !53, i64 6872, !10, i64 6880, !57, i64 6888, !57, i64 6896, !57, i64 6904, !57, i64 6912, !10, i64 6920, !77, i64 6928, !10, i64 6936, !60, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !21, i64 6968, !21, i64 6976, !21, i64 6984, !21, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !78, i64 7024, !10, i64 7032, !10, i64 7036, !60, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !79, i64 7072, !10, i64 7088, !60, i64 7096, !10, i64 7104, !60, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !57, i64 7232, !57, i64 7240, !11, i64 7248, !57, i64 7256, !10, i64 7264, !10, i64 7268, !81, i64 7272, !57, i64 7280, !57, i64 7288, !82, i64 7296, !21, i64 7344, !21, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !21, i64 7400, !67, i64 7408, !21, i64 7416, !60, i64 7424, !60, i64 7432, !60, i64 7440, !10, i64 7448, !10, i64 7452, !70, i64 7456, !70, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !21, i64 7488, !21, i64 7496, !21, i64 7504, !21, i64 7512, !21, i64 7520, !83, i64 7528, !83, i64 7536, !10, i64 7544, !60, i64 7552, !21, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !21, i64 7584, !21, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !60, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !57, i64 7680, !10, i64 7688, !67, i64 7696, !10, i64 7704, !57, i64 7712, !57, i64 7720, !21, i64 7728, !21, i64 7736, !10, i64 7744, !57, i64 7752, !21, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !57, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !67, i64 7872, !67, i64 7880, !10, i64 7888, !21, i64 7896, !67, i64 7904, !67, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !21, i64 7936, !21, i64 7944, !21, i64 7952, !21, i64 7960, !21, i64 7968, !21, i64 7976, !21, i64 7984, !21, i64 7992, !21, i64 8000, !57, i64 8008, !57, i64 8016, !57, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !21, i64 8048, !11, i64 8056, !57, i64 8064, !57, i64 8072, !10, i64 8080, !21, i64 8088, !57, i64 8096, !21, i64 8104, !57, i64 8112, !84, i64 8120, !64, i64 8128, !10, i64 8136, !84, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !57, i64 8168, !57, i64 8176, !60, i64 8184, !57, i64 8192, !57, i64 8200, !57, i64 8208, !10, i64 8216, !85, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !60, i64 8256, !60, i64 8264, !60, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !57, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !57, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !57, i64 8384, !64, i64 8392, !60, i64 8400, !21, i64 8408, !60, i64 8416, !10, i64 8424, !86, i64 8432, !10, i64 8472, !21, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !87, i64 8504, !60, i64 8624, !60, i64 8632, !60, i64 8640, !60, i64 8648, !88, i64 8656, !57, i64 8664, !10, i64 8672, !60, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !21, i64 8704, !10, i64 8712, !10, i64 8716, !60, i64 8720, !10, i64 8728, !10, i64 8732}
!60 = !{!"p1 omnipotent char", !53, i64 0}
!61 = !{!"p2 omnipotent char", !62, i64 0}
!62 = !{!"any p2 pointer", !53, i64 0}
!63 = !{!"p1 _ZTS7redisDb", !53, i64 0}
!64 = !{!"p1 _ZTS4dict", !53, i64 0}
!65 = !{!"p1 _ZTS11aeEventLoop", !53, i64 0}
!66 = !{!"p1 _ZTS3rax", !53, i64 0}
!67 = !{!"p1 _ZTS4list", !53, i64 0}
!68 = !{!"connListener", !11, i64 0, !10, i64 64, !61, i64 72, !10, i64 80, !10, i64 84, !69, i64 88, !53, i64 96}
!69 = !{!"p1 _ZTS14ConnectionType", !53, i64 0}
!70 = !{!"p1 _ZTS6client", !53, i64 0}
!71 = !{!"pendingCommandPool", !72, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!72 = !{!"p2 _ZTS14pendingCommand", !62, i64 0}
!73 = !{!"double", !11, i64 0}
!74 = !{!"malloc_stats", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80}
!75 = !{!"p1 _ZTS11hotkeyStats", !53, i64 0}
!76 = !{!"p1 double", !53, i64 0}
!77 = !{!"p1 _ZTS9saveparam", !53, i64 0}
!78 = !{!"p2 _ZTS10connection", !62, i64 0}
!79 = !{!"redisOpArray", !80, i64 0, !10, i64 8, !10, i64 12}
!80 = !{!"p1 _ZTS7redisOp", !53, i64 0}
!81 = !{!"p1 _ZTS11replBacklog", !53, i64 0}
!82 = !{!"replDataBuf", !67, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!83 = !{!"p1 _ZTS10connection", !53, i64 0}
!84 = !{!"p1 _ZTS8_kvstore", !53, i64 0}
!85 = !{!"p1 _ZTS12clusterState", !53, i64 0}
!86 = !{!"aclInfo", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!87 = !{!"redisTLSContextConfig", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !10, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!88 = !{!"p1 _ZTS14sentinelConfig", !53, i64 0}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!91, !93, i64 96}
!91 = !{!"client", !21, i64 0, !21, i64 8, !83, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !63, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !60, i64 64, !21, i64 72, !21, i64 80, !10, i64 88, !93, i64 96, !10, i64 104, !10, i64 108, !93, i64 112, !21, i64 120, !94, i64 128, !95, i64 152, !96, i64 160, !10, i64 168, !93, i64 176, !10, i64 184, !10, i64 188, !97, i64 192, !97, i64 200, !97, i64 208, !97, i64 216, !53, i64 224, !10, i64 232, !10, i64 236, !21, i64 240, !67, i64 248, !57, i64 256, !67, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !10, i64 296, !10, i64 300, !98, i64 304, !21, i64 312, !21, i64 320, !21, i64 328, !57, i64 336, !57, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !21, i64 368, !21, i64 376, !60, i64 384, !57, i64 392, !57, i64 400, !57, i64 408, !57, i64 416, !57, i64 424, !57, i64 432, !57, i64 440, !57, i64 448, !57, i64 456, !57, i64 464, !57, i64 472, !11, i64 480, !10, i64 524, !60, i64 528, !10, i64 536, !10, i64 540, !21, i64 544, !99, i64 552, !100, i64 592, !57, i64 664, !67, i64 672, !64, i64 680, !64, i64 688, !64, i64 696, !60, i64 704, !60, i64 712, !101, i64 720, !101, i64 728, !101, i64 736, !53, i64 744, !53, i64 752, !53, i64 760, !53, i64 768, !53, i64 776, !21, i64 784, !66, i64 792, !21, i64 800, !10, i64 808, !101, i64 816, !53, i64 824, !101, i64 832, !21, i64 840, !101, i64 848, !21, i64 856, !101, i64 864, !21, i64 872, !102, i64 880, !102, i64 904, !21, i64 928, !21, i64 936, !21, i64 944, !57, i64 952, !21, i64 960, !21, i64 968, !60, i64 976, !11, i64 984, !103, i64 992, !57, i64 1000, !57, i64 1008, !57, i64 1016, !104, i64 1024, !60, i64 1032, !11, i64 1040}
!92 = !{!"p1 _ZTS11redisObject", !53, i64 0}
!93 = !{!"p2 _ZTS11redisObject", !62, i64 0}
!94 = !{!"pendingCommandList", !95, i64 0, !95, i64 8, !10, i64 16, !10, i64 20}
!95 = !{!"p1 _ZTS14pendingCommand", !53, i64 0}
!96 = !{!"p1 _ZTS14deferredObject", !53, i64 0}
!97 = !{!"p1 _ZTS12redisCommand", !53, i64 0}
!98 = !{!"p1 _ZTS9dictEntry", !53, i64 0}
!99 = !{!"multiState", !72, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !21, i64 24, !10, i64 32}
!100 = !{!"blockingState", !10, i64 0, !57, i64 8, !10, i64 16, !64, i64 24, !10, i64 32, !10, i64 36, !57, i64 40, !53, i64 48, !53, i64 56, !21, i64 64}
!101 = !{!"p1 _ZTS8listNode", !53, i64 0}
!102 = !{!"listNode", !101, i64 0, !101, i64 8, !53, i64 16}
!103 = !{!"p1 _ZTS13payloadHeader", !53, i64 0}
!104 = !{!"p1 _ZTS7asmTask", !53, i64 0}
!105 = !{!92, !92, i64 0}
!106 = !{!91, !63, i64 32}
!107 = !{!108, !10, i64 72}
!108 = !{!"redisDb", !84, i64 0, !84, i64 8, !109, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !10, i64 72, !57, i64 80, !21, i64 88}
!109 = !{!"p1 _ZTS7_estore", !53, i64 0}
!110 = !{!59, !57, i64 6888}
!111 = !{!59, !10, i64 6644}
!112 = !{!113, !92, i64 24}
!113 = !{!"sharedObjectsStruct", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !11, i64 64, !11, i64 96, !11, i64 128, !11, i64 160, !92, i64 192, !92, i64 200, !92, i64 208, !92, i64 216, !92, i64 224, !92, i64 232, !92, i64 240, !92, i64 248, !92, i64 256, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288, !92, i64 296, !92, i64 304, !92, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !92, i64 344, !92, i64 352, !92, i64 360, !92, i64 368, !92, i64 376, !92, i64 384, !92, i64 392, !92, i64 400, !92, i64 408, !92, i64 416, !92, i64 424, !92, i64 432, !92, i64 440, !92, i64 448, !92, i64 456, !92, i64 464, !92, i64 472, !92, i64 480, !92, i64 488, !92, i64 496, !92, i64 504, !92, i64 512, !92, i64 520, !92, i64 528, !92, i64 536, !92, i64 544, !92, i64 552, !92, i64 560, !92, i64 568, !92, i64 576, !92, i64 584, !92, i64 592, !92, i64 600, !92, i64 608, !92, i64 616, !92, i64 624, !92, i64 632, !92, i64 640, !92, i64 648, !92, i64 656, !92, i64 664, !92, i64 672, !92, i64 680, !92, i64 688, !92, i64 696, !92, i64 704, !92, i64 712, !92, i64 720, !92, i64 728, !92, i64 736, !92, i64 744, !92, i64 752, !92, i64 760, !92, i64 768, !92, i64 776, !92, i64 784, !92, i64 792, !92, i64 800, !92, i64 808, !11, i64 816, !11, i64 896, !11, i64 80896, !11, i64 81152, !11, i64 81408, !11, i64 81664, !60, i64 81920, !60, i64 81928}
!114 = !{!60, !60, i64 0}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !25}
!132 = distinct !{!132, !25}
!133 = distinct !{!133, !25}
!134 = !{!113, !92, i64 216}
!135 = !{!91, !10, i64 88}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15, !138}
!138 = !{!"llvm.loop.peeled.count", i32 1}
!139 = !{!140, !140, i64 0}
!140 = !{!"p1 long", !53, i64 0}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = distinct !{!150, !15}
!151 = distinct !{!151, !15}
!152 = distinct !{!152, !15}
!153 = distinct !{!153, !15}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
!156 = distinct !{!156, !15}
end_hunk_1
