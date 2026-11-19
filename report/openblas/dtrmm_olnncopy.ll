Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_olnncopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
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
  %i.aa = load double, ptr %.1120.us.ph, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %.1120.us.ph, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !20
  %i.af = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aa, i64 0
  store <2 x double> %i.af, ptr %.0129.us, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %.0129.us, i64 16
  store double %i.ac, ptr %i.ag, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %.0129.us, i64 24
  store double %i.ae, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %.1120.us.ph, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader151.us.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds [8 x i8], ptr %.1120.us.ph, i64 %i.j
  %i.al = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader151.us.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.preheader151.us.prol
  %i.am = load <2 x double>, ptr %.1120.us.ph, align 8, !tbaa !20
  %i.an = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !20
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ao, ptr %.0129.us, align 8, !tbaa !20
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
  %i.at = load double, ptr %.1120.us, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %.1120.us, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.us, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !20
  %i.ay = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.at, i64 0
  store <2 x double> %i.ay, ptr %.1130.us, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.1130.us, i64 16
  store double %i.av, ptr %i.az, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %.1130.us, i64 24
  store double %i.ax, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %.1120.us, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader151.us.1

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds [8 x i8], ptr %.1120.us, i64 %i.j
  %i.be = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader151.us.1

bb.k:                                             ; preds = %.preheader151.us
  %i.bf = load <2 x double>, ptr %.1120.us, align 8, !tbaa !20
  %i.bg = load <2 x double>, ptr %.1.us, align 8, !tbaa !20
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> %i.bg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.bh, ptr %.1130.us, align 8, !tbaa !20
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
  %i.bn = load double, ptr %.2121.us, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %.2121.us, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %.2.us, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !20
  %i.bs = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bn, i64 0
  store <2 x double> %i.bs, ptr %.2131.us, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %.1130.us, i64 48
  store double %i.bp, ptr %i.bt, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %.1130.us, i64 56
  store double %i.br, ptr %i.bu, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %.2121.us, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds [8 x i8], ptr %.2121.us, i64 %i.j
  %i.by = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.o:                                             ; preds = %.preheader151.us.1
  %i.bz = load <2 x double>, ptr %.2121.us, align 8, !tbaa !20
  %i.ca = load <2 x double>, ptr %.2.us, align 8, !tbaa !20
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.cb, ptr %.2131.us, align 8, !tbaa !20
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
  br i1 %i.cg, label %.preheader151.us, label %.loopexit152.us, !llvm.loop !8

bb.q:                                             ; preds = %.loopexit152.us
  %i.ch = icmp sgt i64 %i.l, %.0136.us
  br i1 %i.ch, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = icmp slt i64 %i.l, %.0136.us
  br i1 %i.ci, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = load double, ptr %.2121.us.lcssa, align 8, !tbaa !20
  %i.ck = load double, ptr %.2.us.lcssa, align 8, !tbaa !20
  store double %i.cj, ptr %.2131.us.lcssa, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 40
  store double %i.ck, ptr %i.cl, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 48
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 48
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.co = load double, ptr %.2121.us.lcssa, align 8, !tbaa !20
  %i.cp = load double, ptr %.2.us.lcssa, align 8, !tbaa !20
  store double %i.co, ptr %.2131.us.lcssa, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 40
  store double %i.cp, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %.1130.us.lcssa, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.loopexit152.us
  %.4133.us = phi ptr [ %i.cr, %bb.u ], [ %i.cn, %bb.t ], [ %i.cm, %bb.s ], [ %.2131.us.lcssa, %.loopexit152.us ] ; 2 uses
  %i.cs = add nsw i64 %.0136.us, 2                ; 2 uses
  %i.ct = add nsw i64 %.0126.us, -1
  %i.cu = icmp sgt i64 %.0126.us, 1
  br i1 %i.cu, label %.preheader153.split.us, label %.loopexit154, !llvm.loop !9

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
  br i1 %min.iters.check, label %.preheader153.split.split.preheader245, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader153.split.split.preheader
  %i.cv = add nsw i64 %i.a, -1                    ; 4 uses
  %mul.result = shl i64 %i.cv, 4                  ; 4 uses
  %mul.overflow = icmp ugt i64 %i.cv, 1152921504606846975
  %7 = getelementptr i8, ptr %6, i64 %mul.result
  %8 = icmp ult ptr %7, %6
  %scevgep = getelementptr i8, ptr %6, i64 8      ; 2 uses
  %scevgep.a = getelementptr i8, ptr %scevgep, i64 %mul.result
  %9 = icmp ult ptr %scevgep.a, %scevgep
  %10 = mul i64 %3, %i.g
  %11 = add i64 %10, %5
  %mul.result.a = shl i64 %11, 3
  %scevgep188 = getelementptr i8, ptr %2, i64 %mul.result.a ; 2 uses
  %i.cw = getelementptr i8, ptr %scevgep188, i64 %mul.result
  %i.cx = icmp ult ptr %i.cw, %scevgep188
  %12 = or i1 %i.cx, %mul.overflow
  %i.cy = shl i64 %3, 4                           ; 4 uses
  %i.cz = mul i64 %3, -16                         ; 2 uses
  %i.da = add i64 %5, 1
  %i.db = mul i64 %3, %i.da
  %i.dc = add i64 %i.db, %4
  %i.dd = shl i64 %i.dc, 3
  %scevgep188.a = getelementptr i8, ptr %2, i64 %i.dd ; 4 uses
  %i.de = icmp slt i64 %i.cy, 0                   ; 2 uses
  %i.df = select i1 %i.de, i64 %i.cz, i64 %i.cy
  %mul189 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.df, i64 %i.cv) ; 2 uses
  %mul.result190 = extractvalue { i64, i1 } %mul189, 0 ; 2 uses
  %mul.overflow191 = extractvalue { i64, i1 } %mul189, 1
  %i.dg = sub i64 0, %mul.result190
  %i.dh = getelementptr i8, ptr %scevgep188.a, i64 %mul.result190
  %i.di = getelementptr i8, ptr %scevgep188.a, i64 %i.dg
  %i.dj = icmp ult ptr %i.dh, %scevgep188.a
  %i.dk = icmp ugt ptr %i.di, %scevgep188.a
  %i.dl = select i1 %i.de, i1 %i.dk, i1 %i.dj
  %i.dm = or i1 %i.dl, %mul.overflow191
  %i.dn = mul i64 %4, %3
  %i.do = add i64 %i.dn, %5
  %i.dp = shl i64 %i.do, 3
  %scevgep192 = getelementptr i8, ptr %2, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %scevgep192, i64 %mul.result
  %i.dr = icmp ult ptr %i.dq, %scevgep192
  %i.ds = mul i64 %5, %3
  %i.dt = add i64 %i.ds, %4
  %i.du = shl i64 %i.dt, 3
  %scevgep193 = getelementptr i8, ptr %2, i64 %i.du ; 4 uses
  %i.dv = icmp slt i64 %i.cy, 0                   ; 2 uses
  %i.dw = select i1 %i.dv, i64 %i.cz, i64 %i.cy
  %mul194 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dw, i64 %i.cv) ; 2 uses
  %mul.result195 = extractvalue { i64, i1 } %mul194, 0 ; 2 uses
  %mul.overflow196 = extractvalue { i64, i1 } %mul194, 1
  %i.dx = sub i64 0, %mul.result195
  %i.dy = getelementptr i8, ptr %scevgep193, i64 %mul.result195
  %i.dz = getelementptr i8, ptr %scevgep193, i64 %i.dx
  %i.ea = icmp ult ptr %i.dy, %scevgep193
  %i.eb = icmp ugt ptr %i.dz, %scevgep193
  %i.ec = select i1 %i.dv, i1 %i.eb, i1 %i.ea
  %13 = or i1 %i.ec, %mul.overflow196
  %14 = or i1 %9, %8
  %i.ed = or i1 %14, %12
  %i.ee = or i1 %i.ed, %i.dm
  %i.ef = or i1 %i.dr, %i.ee
  %i.eg = or i1 %i.ef, %13
  br i1 %i.eg, label %.preheader153.split.split.preheader245, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.eh = shl i64 %i.a, 4                         ; 4 uses
  %i.ei = getelementptr i8, ptr %6, i64 %i.eh     ; 4 uses
  %i.ej = mul i64 %5, %3
  %i.ek = shl i64 %4, 3                           ; 2 uses
  %i.el = add i64 %i.ej, %4
  %i.em = shl i64 %i.el, 3
  %i.en = getelementptr i8, ptr %2, i64 %i.em     ; 4 uses
  %i.eo = shl i64 %5, 3                           ; 5 uses
  %i.ep = add i64 %i.eh, %i.eo                    ; 2 uses
  %i.eq = add i64 %i.ep, -16
  %i.er = mul i64 %3, %i.eq
  %i.es = getelementptr i8, ptr %2, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ek  ; 4 uses
  %i.eu = icmp ult ptr %i.en, %i.et
  %i.ev = select i1 %i.eu, ptr %i.en, ptr %i.et
  %i.ew = icmp ugt ptr %i.en, %i.et
  %i.ex = select i1 %i.ew, ptr %i.en, ptr %i.et
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %i.ez = mul i64 %4, %3
  %i.fa = shl i64 %i.ez, 3                        ; 2 uses
  %i.fb = getelementptr i8, ptr %2, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.eo
  %i.fd = getelementptr i8, ptr %2, i64 %i.fa
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.eh
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.eo
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = add i64 %5, 1
  %i.fi = mul i64 %3, %i.fh
  %i.fj = add i64 %i.fi, %4
  %i.fk = shl i64 %i.fj, 3
  %i.fl = getelementptr i8, ptr %2, i64 %i.fk     ; 4 uses
  %i.fm = add i64 %i.ep, -8
  %i.fn = mul i64 %3, %i.fm
  %i.fo = getelementptr i8, ptr %2, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.ek  ; 4 uses
  %i.fq = icmp ult ptr %i.fl, %i.fp
  %i.fr = select i1 %i.fq, ptr %i.fl, ptr %i.fp
  %i.fs = icmp ugt ptr %i.fl, %i.fp
  %i.ft = select i1 %i.fs, ptr %i.fl, ptr %i.fp
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = mul i64 %3, %i.g
  %i.fw = shl i64 %i.fv, 3                        ; 2 uses
  %i.fx = getelementptr i8, ptr %2, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.eo
  %i.fz = getelementptr i8, ptr %2, i64 %i.fw
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.eh
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.eo
  %i.gc = getelementptr i8, ptr %i.gb, i64 -8
  %bound0 = icmp ult ptr %6, %i.ey
  %bound1 = icmp ult ptr %i.ev, %i.ei
  %found.conflict = and i1 %bound0, %bound1
  %bound0221 = icmp ult ptr %6, %i.fg
  %bound1222 = icmp ult ptr %i.fc, %i.ei
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx = or i1 %found.conflict, %found.conflict223
  %bound0224 = icmp ult ptr %6, %i.fu
  %bound1225 = icmp ult ptr %i.fr, %i.ei
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx, %found.conflict226
  %bound0228 = icmp ult ptr %6, %i.gc
  %bound1229 = icmp ult ptr %i.fy, %i.ei
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %conflict.rdx227, %found.conflict230
  br i1 %conflict.rdx231, label %.preheader153.split.split.preheader245, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.gd = shl nuw nsw i64 %n.vec, 1
  %i.ge = add i64 %5, %i.gd                       ; 2 uses
  %i.gf = shl i64 %n.vec, 4
  %i.gg = getelementptr i8, ptr %6, i64 %i.gf     ; 2 uses
  %i.gh = and i64 %i.a, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert232 = insertelement <4 x i64> poison, i64 %3, i64 0
  %broadcast.splat233 = shufflevector <4 x i64> %broadcast.splatinsert232, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert234 = insertelement <4 x i64> poison, i64 %5, i64 0
  %broadcast.splat235 = shufflevector <4 x i64> %broadcast.splatinsert234, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat235, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %pointer.phi = phi ptr [ %6, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.gi = icmp sgt <4 x i64> %broadcast.splat, %vec.ind ; 2 uses
  %wide.gep = getelementptr inbounds [8 x i8], ptr %2, <4 x i64> %vec.ind ; 2 uses
  %wide.gep236 = getelementptr inbounds [8 x i8], <4 x ptr> %wide.gep, i64 %i.h
  %wide.gep237 = getelementptr inbounds [8 x i8], <4 x ptr> %wide.gep, i64 %i.f
  %i.gj = mul nsw <4 x i64> %vec.ind, %broadcast.splat233
  %wide.gep238 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.gj
  %i.gk = add nsw <4 x i64> %vec.ind, splat (i64 1)
  %i.gl = mul nsw <4 x i64> %i.gk, %broadcast.splat233
  %wide.gep239 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.gl
  %i.gm = icmp sge <4 x i64> %broadcast.splat, %vec.ind ; 4 uses
  %predphi = select <4 x i1> %i.gi, <4 x ptr> %wide.gep238, <4 x ptr> %wide.gep237
  %predphi240 = select <4 x i1> %i.gi, <4 x ptr> %wide.gep239, <4 x ptr> %wide.gep236
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi240, <4 x i1> %i.gm, <4 x double> poison), !tbaa !20
  %wide.masked.gather241 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi, <4 x i1> %i.gm, <4 x double> poison), !tbaa !20
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather241, <4 x ptr> align 8 %vector.gep, <4 x i1> %i.gm), !tbaa !20, !alias.scope !22, !noalias !23
  %wide.gep242 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather, <4 x ptr> align 8 %wide.gep242, <4 x i1> %i.gm), !tbaa !20, !alias.scope !22, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 8)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit154, label %.preheader153.split.split.preheader245

.preheader153.split.split.preheader245:           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader153.split.split.preheader, %middle.block
  %.0136.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %vector.scevcheck ], [ %5, %.preheader153.split.split.preheader ], [ %i.ge, %middle.block ]
  %.0129.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %vector.scevcheck ], [ %6, %.preheader153.split.split.preheader ], [ %i.gg, %middle.block ]
  %.0126.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %vector.scevcheck ], [ %i.a, %.preheader153.split.split.preheader ], [ %i.gh, %middle.block ]
  br label %.preheader153.split.split

.preheader153.split.split.us.preheader:           ; preds = %.preheader153.split
  %i.go = and i64 %1, -2
  %i.gp = add i64 %5, %i.go
  br label %.loopexit154

.preheader153.split.split:                        ; preds = %.preheader153.split.split.preheader245, %bb.z
  %.0136 = phi i64 [ %i.ha, %bb.z ], [ %.0136.ph, %.preheader153.split.split.preheader245 ] ; 6 uses
  %.0129 = phi ptr [ %.4133, %bb.z ], [ %.0129.ph, %.preheader153.split.split.preheader245 ] ; 3 uses
  %.0126 = phi i64 [ %i.hb, %bb.z ], [ %.0126.ph, %.preheader153.split.split.preheader245 ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0136
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader153.split.split
  %i.gq = mul nsw i64 %.0136, %3
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gq
  %i.gs = add nsw i64 %.0136, 1
  %i.gt = mul nsw i64 %i.gs, %3
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gt
  br label %.sink.split

bb.x:                                             ; preds = %.preheader153.split.split
  %i.gv = icmp slt i64 %4, %.0136
  br i1 %i.gv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gw = getelementptr inbounds [8 x i8], ptr %2, i64 %.0136 ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.h
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.w
  %.sink185.in = phi ptr [ %i.gr, %bb.w ], [ %i.gy, %bb.y ]
  %.sink.in = phi ptr [ %i.gu, %bb.w ], [ %i.gx, %bb.y ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !20
  %.sink185 = load double, ptr %.sink185.in, align 8, !tbaa !20
  store double %.sink185, ptr %.0129, align 8, !tbaa !20
  %i.gz = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  store double %.sink, ptr %i.gz, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %.4133 = getelementptr inbounds nuw i8, ptr %.0129, i64 16 ; 2 uses
  %i.ha = add nsw i64 %.0136, 2                   ; 2 uses
  %i.hb = add nsw i64 %.0126, -1
  %i.hc = icmp sgt i64 %.0126, 1
  br i1 %i.hc, label %.preheader153.split.split, label %.loopexit154, !llvm.loop !17

.loopexit154:                                     ; preds = %bb.z, %bb.v, %middle.block, %.preheader153.split.split.us.preheader, %bb.a
  %.1137 = phi i64 [ %5, %bb.a ], [ %i.gp, %.preheader153.split.split.us.preheader ], [ %i.cs, %bb.v ], [ %i.ge, %middle.block ], [ %i.ha, %bb.z ] ; 9 uses
  %.5134 = phi ptr [ %6, %bb.a ], [ %6, %.preheader153.split.split.us.preheader ], [ %.4133.us, %bb.v ], [ %i.gg, %middle.block ], [ %.4133, %bb.z ] ; 4 uses
  %.not149 = trunc i64 %1 to i1
  %i.hd = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.hd, %.not149
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit154
  %.not150 = icmp sgt i64 %4, %.1137
  %i.he = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.hf = mul nsw i64 %.1137, %3
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hf
  %i.hh = getelementptr inbounds [8 x i8], ptr %2, i64 %.1137
  %i.hi = mul nsw i64 %4, %3
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.hi
  %.4 = select i1 %.not150, ptr %i.hg, ptr %i.hj  ; 6 uses
  %xtraiter248 = and i64 %0, 1
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.hk = icmp sgt i64 %4, %.1137
  br i1 %i.hk, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.prol
  %i.hl = icmp slt i64 %4, %.1137
  br i1 %i.hl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hm = load double, ptr %.4, align 8, !tbaa !20
end_hunk_0
