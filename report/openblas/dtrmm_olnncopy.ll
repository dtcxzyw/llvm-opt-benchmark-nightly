begin_hunk_0_@dtrmm_olnncopy:bb.a
  %.1.us.ph = phi ptr [ %i.s, %bb.b ], [ %i.x, %bb.c ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader151.us.prol.loopexit, label %.preheader151.us.prol

.preheader151.us.prol:                            ; preds = %.preheader151.us.preheader
  %i.y = icmp sgt i64 %4, %.0136.us
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader151.us.prol
  %i.z = icmp slt i64 %4, %.0136.us
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %.1120.us.ph, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.1120.us.ph, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aa, i64 0
  store <2 x double> %i.af, ptr %.0129.us, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0129.us, i64 16
  store double %i.ac, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0129.us, i64 24
  store double %i.ae, ptr %i.ah, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.1120.us.ph, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader151.us.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds [8 x i8], ptr %.1120.us.ph, i64 %i.j
  %i.al = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader151.us.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.preheader151.us.prol
  %i.am = load <2 x double>, ptr %.1120.us.ph, align 8, !tbaa !8
  %i.an = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !8
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ao, ptr %.0129.us, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.1120.us.ph, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader151.us.prol.loopexit.unr-lcssa

.preheader151.us.prol.loopexit.unr-lcssa:         ; preds = %bb.g, %bb.f, %bb.e
  %.2121.us.prol = phi ptr [ %i.ap, %bb.g ], [ %i.ak, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  %.2.us.prol = phi ptr [ %i.aq, %bb.g ], [ %i.al, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %.2131.us.prol = getelementptr inbounds nuw i8, ptr %.0129.us, i64 32 ; 2 uses
  br label %.preheader151.us.prol.loopexit

.preheader151.us.prol.loopexit:                   ; preds = %.preheader151.us.prol.loopexit.unr-lcssa, %.preheader151.us.preheader
  %.1130.us.unr = phi ptr [ %.0129.us, %.preheader151.us.preheader ], [ %.2131.us.prol, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.0127.us.unr = phi i64 [ %i.c, %.preheader151.us.preheader ], [ %i.o, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.0123.us.unr = phi i64 [ %4, %.preheader151.us.preheader ], [ %i.n, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.1120.us.unr = phi ptr [ %.1120.us.ph, %.preheader151.us.preheader ], [ %.2121.us.prol, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.1.us.unr = phi ptr [ %.1.us.ph, %.preheader151.us.preheader ], [ %.2.us.prol, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.2121.us.lcssa.unr = phi ptr [ poison, %.preheader151.us.preheader ], [ %.2121.us.prol, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.2.us.lcssa.unr = phi ptr [ poison, %.preheader151.us.preheader ], [ %.2.us.prol, %.preheader151.us.prol.loopexit.unr-lcssa ]
  %.2131.us.lcssa.unr = phi ptr [ poison, %.preheader151.us.preheader ], [ %.2131.us.prol, %.preheader151.us.prol.loopexit.unr-lcssa ]
  br i1 %i.p, label %.loopexit152.us, label %.preheader151.us

.preheader151.us:                                 ; preds = %.preheader151.us.prol.loopexit, %bb.p
  %.1130.us = phi ptr [ %.2131.us.1, %bb.p ], [ %.1130.us.unr, %.preheader151.us.prol.loopexit ] ; 8 uses
  %.0127.us = phi i64 [ %i.cf, %bb.p ], [ %.0127.us.unr, %.preheader151.us.prol.loopexit ] ; 2 uses
  %.0123.us = phi i64 [ %i.ce, %bb.p ], [ %.0123.us.unr, %.preheader151.us.prol.loopexit ] ; 4 uses
  %.1120.us = phi ptr [ %.2121.us.1, %bb.p ], [ %.1120.us.unr, %.preheader151.us.prol.loopexit ] ; 6 uses
  %.1.us = phi ptr [ %.2.us.1, %bb.p ], [ %.1.us.unr, %.preheader151.us.prol.loopexit ] ; 5 uses
  %i.ar = icmp sgt i64 %.0123.us, %.0136.us
  br i1 %i.ar, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader151.us
  %i.as = icmp slt i64 %.0123.us, %.0136.us
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load double, ptr %.1120.us, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %.1120.us, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.us, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8
  %i.ay = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.at, i64 0
  store <2 x double> %i.ay, ptr %.1130.us, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %.1130.us, i64 16
  store double %i.av, ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %.1130.us, i64 24
  store double %i.ax, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %.1120.us, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader151.us.1

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds [8 x i8], ptr %.1120.us, i64 %i.j
  %i.be = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader151.us.1

bb.k:                                             ; preds = %.preheader151.us
  %i.bf = load <2 x double>, ptr %.1120.us, align 8, !tbaa !8
  %i.bg = load <2 x double>, ptr %.1.us, align 8, !tbaa !8
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> %i.bg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.bh, ptr %.1130.us, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %.1120.us, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader151.us.1

.preheader151.us.1:                               ; preds = %bb.k, %bb.j, %bb.i
  %.2121.us = phi ptr [ %i.bi, %bb.k ], [ %i.bd, %bb.j ], [ %i.bb, %bb.i ] ; 6 uses
  %.2.us = phi ptr [ %i.bj, %bb.k ], [ %i.be, %bb.j ], [ %i.bc, %bb.i ] ; 5 uses
  %.2131.us = getelementptr inbounds nuw i8, ptr %.1130.us, i64 32 ; 3 uses
  %i.bk = add nsw i64 %.0123.us, 2                ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, %.0136.us
  br i1 %i.bl, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.preheader151.us.1
  %i.bm = icmp slt i64 %i.bk, %.0136.us
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load double, ptr %.2121.us, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.2121.us, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.2.us, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bs = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bn, i64 0
  store <2 x double> %i.bs, ptr %.2131.us, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.1130.us, i64 48
  store double %i.bp, ptr %i.bt, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.1130.us, i64 56
  store double %i.br, ptr %i.bu, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.2121.us, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds [8 x i8], ptr %.2121.us, i64 %i.j
  %i.by = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.o:                                             ; preds = %.preheader151.us.1
  %i.bz = load <2 x double>, ptr %.2121.us, align 8, !tbaa !8
  %i.ca = load <2 x double>, ptr %.2.us, align 8, !tbaa !8
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.cb, ptr %.2131.us, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.2121.us, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.2121.us.1 = phi ptr [ %i.cc, %bb.o ], [ %i.bx, %bb.n ], [ %i.bv, %bb.m ] ; 2 uses
  %.2.us.1 = phi ptr [ %i.cd, %bb.o ], [ %i.by, %bb.n ], [ %i.bw, %bb.m ] ; 2 uses
  %.2131.us.1 = getelementptr inbounds nuw i8, ptr %.1130.us, i64 64 ; 2 uses
  %i.ce = add nsw i64 %.0123.us, 4
  %i.cf = add nsw i64 %.0127.us, -2
  %i.cg = icmp sgt i64 %.0127.us, 2
  br i1 %i.cg, label %.preheader151.us, label %.loopexit152.us, !llvm.loop !10

bb.q:                                             ; preds = %.loopexit152.us
  %i.ch = icmp sgt i64 %i.l, %.0136.us
  br i1 %i.ch, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = icmp slt i64 %i.l, %.0136.us
  br i1 %i.ci, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = load double, ptr %.2121.us.lcssa, align 8, !tbaa !8
  %i.ck = load double, ptr %.2.us.lcssa, align 8, !tbaa !8
  store double %i.cj, ptr %.2131.us.lcssa, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 40
  store double %i.ck, ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 48
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 48
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.co = load double, ptr %.2121.us.lcssa, align 8, !tbaa !8
  %i.cp = load double, ptr %.2.us.lcssa, align 8, !tbaa !8
  store double %i.co, ptr %.2131.us.lcssa, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 40
  store double %i.cp, ptr %i.cq, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.loopexit152.us
  %.4133.us = phi ptr [ %i.cr, %bb.u ], [ %i.cn, %bb.t ], [ %i.cm, %bb.s ], [ %.2131.us.lcssa, %.loopexit152.us ] ; 2 uses
  %i.cs = add nsw i64 %.0136.us, 2                ; 2 uses
  %i.ct = add nsw i64 %.0126.us, -1
  %i.cu = icmp sgt i64 %.0126.us, 1
  br i1 %i.cu, label %.preheader153.split.us, label %.loopexit154, !llvm.loop !12

.loopexit152.us:                                  ; preds = %bb.p, %.preheader151.us.prol.loopexit
  %.2121.us.lcssa = phi ptr [ %.2121.us.lcssa.unr, %.preheader151.us.prol.loopexit ], [ %.2121.us.1, %bb.p ] ; 2 uses
  %.2.us.lcssa = phi ptr [ %.2.us.lcssa.unr, %.preheader151.us.prol.loopexit ], [ %.2.us.1, %bb.p ] ; 2 uses
  %.2131.us.lcssa = phi ptr [ %.2131.us.lcssa.unr, %.preheader151.us.prol.loopexit ], [ %.2131.us.1, %bb.p ] ; 3 uses
  %.1130.us.lcssa = phi ptr [ %.0129.us, %.preheader151.us.prol.loopexit ], [ %.2131.us, %bb.p ] ; 5 uses
  br i1 %.not148, label %bb.v, label %bb.q

.preheader153.split:                              ; preds = %.preheader153
  br i1 %.not148, label %.preheader153.split.split.us.preheader, label %.preheader153.split.split.preheader

.preheader153.split.split.preheader:              ; preds = %.preheader153.split
  %min.iters.check = icmp ult i64 %i.a, 168
  br i1 %min.iters.check, label %.preheader153.split.split.preheader237, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader153.split.split.preheader
  %i.cv = add nsw i64 %i.a, -1                    ; 5 uses
  %i.cw = mul i64 %3, %i.g
  %i.cx = add i64 %i.cw, %5
  %i.cy = shl i64 %i.cx, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.cy  ; 2 uses
  %mul.result = shl i64 %i.cv, 4
  %mul.overflow = icmp ugt i64 %i.cv, 1152921504606846975
  %i.cz = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.da = icmp ult ptr %i.cz, %scevgep
  %7 = or i1 %i.da, %mul.overflow
  %i.db = shl i64 %3, 4                           ; 4 uses
  %i.dc = mul i64 %3, -16                         ; 2 uses
  %i.dd = add i64 %5, 1
  %i.de = mul i64 %3, %i.dd
  %i.df = add i64 %i.de, %4
  %i.dg = shl i64 %i.df, 3
  %scevgep188 = getelementptr i8, ptr %2, i64 %i.dg ; 4 uses
  %i.dh = icmp slt i64 %i.db, 0                   ; 2 uses
  %i.di = select i1 %i.dh, i64 %i.dc, i64 %i.db
  %mul189 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.di, i64 %i.cv) ; 2 uses
  %mul.result190 = extractvalue { i64, i1 } %mul189, 0 ; 2 uses
  %mul.overflow191 = extractvalue { i64, i1 } %mul189, 1
  %i.dj = sub i64 0, %mul.result190
  %i.dk = getelementptr i8, ptr %scevgep188, i64 %mul.result190
  %i.dl = getelementptr i8, ptr %scevgep188, i64 %i.dj
  %i.dm = icmp ult ptr %i.dk, %scevgep188
  %i.dn = icmp ugt ptr %i.dl, %scevgep188
  %i.do = select i1 %i.dh, i1 %i.dn, i1 %i.dm
  %i.dp = or i1 %i.do, %mul.overflow191
  %i.dq = mul i64 %4, %3
  %i.dr = add i64 %i.dq, %5
  %i.ds = shl i64 %i.dr, 3
  %scevgep192 = getelementptr i8, ptr %2, i64 %i.ds ; 2 uses
  %mul.result194 = shl i64 %i.cv, 4
  %8 = getelementptr i8, ptr %scevgep192, i64 %mul.result194
  %9 = icmp ult ptr %8, %scevgep192
  %i.dt = mul i64 %5, %3
  %i.du = add i64 %i.dt, %4
  %i.dv = shl i64 %i.du, 3
  %scevgep196 = getelementptr i8, ptr %2, i64 %i.dv ; 4 uses
  %i.dw = icmp slt i64 %i.db, 0                   ; 2 uses
  %i.dx = select i1 %i.dw, i64 %i.dc, i64 %i.db
  %mul197 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dx, i64 %i.cv) ; 2 uses
  %mul.result198 = extractvalue { i64, i1 } %mul197, 0 ; 2 uses
  %mul.overflow199 = extractvalue { i64, i1 } %mul197, 1
  %i.dy = sub i64 0, %mul.result198
  %i.dz = getelementptr i8, ptr %scevgep196, i64 %mul.result198
  %i.ea = getelementptr i8, ptr %scevgep196, i64 %i.dy
  %i.eb = icmp ult ptr %i.dz, %scevgep196
  %i.ec = icmp ugt ptr %i.ea, %scevgep196
  %i.ed = select i1 %i.dw, i1 %i.ec, i1 %i.eb
  %i.ee = or i1 %i.ed, %mul.overflow199
  %i.ef = or i1 %7, %i.dp
  %i.eg = or i1 %9, %i.ef
  %i.eh = or i1 %i.eg, %i.ee
  br i1 %i.eh, label %.preheader153.split.split.preheader237, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ei = shl i64 %i.a, 4                         ; 5 uses
  %scevgep200.a = getelementptr i8, ptr %6, i64 %i.ei ; 4 uses
  %i.ej = mul i64 %5, %3
  %i.ek = shl i64 %4, 3                           ; 2 uses
  %i.el = add i64 %i.ej, %4
  %i.em = shl i64 %i.el, 3
  %scevgep201.a = getelementptr i8, ptr %2, i64 %i.em ; 4 uses
  %i.en = shl i64 %5, 3                           ; 6 uses
  %i.eo = add i64 %i.ei, %i.en
  %i.ep = add i64 %i.eo, -16
  %i.eq = mul i64 %3, %i.ep
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  %scevgep202.a = getelementptr i8, ptr %i.er, i64 %i.ek ; 4 uses
  %i.es = icmp ult ptr %scevgep201.a, %scevgep202.a
  %umin = select i1 %i.es, ptr %scevgep201.a, ptr %scevgep202.a
  %i.et = icmp ugt ptr %scevgep201.a, %scevgep202.a
  %umax = select i1 %i.et, ptr %scevgep201.a, ptr %scevgep202.a
  %scevgep203.a = getelementptr i8, ptr %umax, i64 8
  %i.eu = mul i64 %4, %3
  %i.ev = shl i64 %i.eu, 3                        ; 2 uses
  %i.ew = getelementptr i8, ptr %2, i64 %i.ev
  %scevgep204.a = getelementptr i8, ptr %i.ew, i64 %i.en
  %i.ex = getelementptr i8, ptr %2, i64 %i.ev
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ei
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.en
  %scevgep205 = getelementptr i8, ptr %i.ez, i64 -8
  %i.fa = add i64 %5, 1
  %i.fb = mul i64 %3, %i.fa
  %i.fc = add i64 %i.fb, %4
  %i.fd = shl i64 %i.fc, 3
  %scevgep206 = getelementptr i8, ptr %2, i64 %i.fd ; 4 uses
  %i.fe = add i64 %i.ei, %i.en
  %i.ff = add i64 %i.fe, -8
  %i.fg = mul i64 %3, %i.ff
  %i.fh = getelementptr i8, ptr %2, i64 %i.fg
  %scevgep207.a = getelementptr i8, ptr %i.fh, i64 %i.ek ; 4 uses
  %i.fi = icmp ult ptr %scevgep206, %scevgep207.a
  %umin208 = select i1 %i.fi, ptr %scevgep206, ptr %scevgep207.a
  %i.fj = icmp ugt ptr %scevgep206, %scevgep207.a
  %umax209 = select i1 %i.fj, ptr %scevgep206, ptr %scevgep207.a
  %scevgep210 = getelementptr i8, ptr %umax209, i64 8
  %i.fk = mul i64 %3, %i.g
  %i.fl = shl i64 %i.fk, 3                        ; 2 uses
  %i.fm = getelementptr i8, ptr %2, i64 %i.fl
  %scevgep211 = getelementptr i8, ptr %i.fm, i64 %i.en
  %i.fn = getelementptr i8, ptr %2, i64 %i.fl
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.ei
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.en
  %scevgep212 = getelementptr i8, ptr %i.fp, i64 -8
  %bound0 = icmp ult ptr %6, %scevgep203.a
  %bound1 = icmp ult ptr %umin, %scevgep200.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0213.a = icmp ult ptr %6, %scevgep205
  %bound1214.a = icmp ult ptr %scevgep204.a, %scevgep200.a
  %found.conflict215.a = and i1 %bound0213.a, %bound1214.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict215.a
  %bound0216 = icmp ult ptr %6, %scevgep210
  %bound1217 = icmp ult ptr %umin208, %scevgep200.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx, %found.conflict218
  %bound0220 = icmp ult ptr %6, %scevgep212
  %bound1221 = icmp ult ptr %scevgep211, %scevgep200.a
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  br i1 %conflict.rdx223, label %.preheader153.split.split.preheader237, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.fq = shl nuw nsw i64 %n.vec, 1
  %i.fr = add i64 %5, %i.fq                       ; 2 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %6, i64 %i.fs     ; 2 uses
  %i.fu = and i64 %i.a, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert224 = insertelement <4 x i64> poison, i64 %3, i64 0
  %broadcast.splat225 = shufflevector <4 x i64> %broadcast.splatinsert224, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert226 = insertelement <4 x i64> poison, i64 %5, i64 0
  %broadcast.splat227 = shufflevector <4 x i64> %broadcast.splatinsert226, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat227, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %pointer.phi = phi ptr [ %6, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.fv = icmp sgt <4 x i64> %broadcast.splat, %vec.ind ; 2 uses
  %wide.gep = getelementptr inbounds [8 x i8], ptr %2, <4 x i64> %vec.ind ; 2 uses
  %wide.gep228.a = getelementptr inbounds [8 x i8], <4 x ptr> %wide.gep, i64 %i.h
  %wide.gep229 = getelementptr inbounds [8 x i8], <4 x ptr> %wide.gep, i64 %i.f
  %i.fw = mul nsw <4 x i64> %vec.ind, %broadcast.splat225
  %wide.gep230 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fw
  %i.fx = add nsw <4 x i64> %vec.ind, splat (i64 1)
  %i.fy = mul nsw <4 x i64> %i.fx, %broadcast.splat225
  %wide.gep231.a = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fy
  %i.fz = icmp sge <4 x i64> %broadcast.splat, %vec.ind ; 4 uses
  %predphi = select <4 x i1> %i.fv, <4 x ptr> %wide.gep230, <4 x ptr> %wide.gep229
  %predphi232 = select <4 x i1> %i.fv, <4 x ptr> %wide.gep231.a, <4 x ptr> %wide.gep228.a
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi232, <4 x i1> %i.fz, <4 x double> poison), !tbaa !8
  %wide.masked.gather233 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi, <4 x i1> %i.fz, <4 x double> poison), !tbaa !8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather233, <4 x ptr> align 8 %vector.gep, <4 x i1> %i.fz), !tbaa !8, !alias.scope !13, !noalias !16
  %wide.gep234 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather, <4 x ptr> align 8 %wide.gep234, <4 x i1> %i.fz), !tbaa !8, !alias.scope !13, !noalias !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 8)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit154, label %.preheader153.split.split.preheader237

.preheader153.split.split.preheader237:           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader153.split.split.preheader, %middle.block
  %.0136.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %vector.scevcheck ], [ %5, %.preheader153.split.split.preheader ], [ %i.fr, %middle.block ]
  %.0129.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %vector.scevcheck ], [ %6, %.preheader153.split.split.preheader ], [ %i.ft, %middle.block ]
  %.0126.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %vector.scevcheck ], [ %i.a, %.preheader153.split.split.preheader ], [ %i.fu, %middle.block ]
  br label %.preheader153.split.split

.preheader153.split.split.us.preheader:           ; preds = %.preheader153.split
  %i.gb = and i64 %1, -2
  %i.gc = add i64 %5, %i.gb
  br label %.loopexit154

.preheader153.split.split:                        ; preds = %.preheader153.split.split.preheader237, %bb.z
  %.0136 = phi i64 [ %i.gn, %bb.z ], [ %.0136.ph, %.preheader153.split.split.preheader237 ] ; 6 uses
  %.0129 = phi ptr [ %.4133, %bb.z ], [ %.0129.ph, %.preheader153.split.split.preheader237 ] ; 3 uses
  %.0126 = phi i64 [ %i.go, %bb.z ], [ %.0126.ph, %.preheader153.split.split.preheader237 ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0136
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader153.split.split
  %i.gd = mul nsw i64 %.0136, %3
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gd
  %i.gf = add nsw i64 %.0136, 1
  %i.gg = mul nsw i64 %i.gf, %3
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gg
  br label %.sink.split

bb.x:                                             ; preds = %.preheader153.split.split
  %i.gi = icmp slt i64 %4, %.0136
  br i1 %i.gi, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds [8 x i8], ptr %2, i64 %.0136 ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.w
  %.sink185.in = phi ptr [ %i.ge, %bb.w ], [ %i.gl, %bb.y ]
  %.sink.in = phi ptr [ %i.gh, %bb.w ], [ %i.gk, %bb.y ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !8
  %.sink185 = load double, ptr %.sink185.in, align 8, !tbaa !8
  store double %.sink185, ptr %.0129, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  store double %.sink, ptr %i.gm, align 8, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %.4133 = getelementptr inbounds nuw i8, ptr %.0129, i64 16 ; 2 uses
  %i.gn = add nsw i64 %.0136, 2                   ; 2 uses
  %i.go = add nsw i64 %.0126, -1
  %i.gp = icmp sgt i64 %.0126, 1
  br i1 %i.gp, label %.preheader153.split.split, label %.loopexit154, !llvm.loop !24

.loopexit154:                                     ; preds = %bb.z, %bb.v, %middle.block, %.preheader153.split.split.us.preheader, %bb.a
  %.1137 = phi i64 [ %5, %bb.a ], [ %i.gc, %.preheader153.split.split.us.preheader ], [ %i.cs, %bb.v ], [ %i.fr, %middle.block ], [ %i.gn, %bb.z ] ; 9 uses
  %.5134 = phi ptr [ %6, %bb.a ], [ %6, %.preheader153.split.split.us.preheader ], [ %.4133.us, %bb.v ], [ %i.ft, %middle.block ], [ %.4133, %bb.z ] ; 4 uses
  %.not149 = trunc i64 %1 to i1
  %i.gq = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.gq, %.not149
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit154
  %.not150 = icmp sgt i64 %4, %.1137
  %i.gr = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.gs = mul nsw i64 %.1137, %3
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = getelementptr inbounds [8 x i8], ptr %2, i64 %.1137
  %i.gv = mul nsw i64 %4, %3
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gv
  %.4 = select i1 %.not150, ptr %i.gt, ptr %i.gw  ; 6 uses
  %xtraiter240 = and i64 %0, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.gx = icmp sgt i64 %4, %.1137
  br i1 %i.gx, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.prol
  %i.gy = icmp slt i64 %4, %.1137
  br i1 %i.gy, label %bb.ac, label %bb.ab

end_hunk_0
