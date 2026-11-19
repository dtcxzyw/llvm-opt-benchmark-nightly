Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_olnucopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dtrmm_olnucopy:bb.a
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.h
  br label %.preheader143.us.preheader

bb.c:                                             ; preds = %.preheader145.split.us
  %i.t = mul nsw i64 %.0128.us, %3
  %i.u = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.t
  %i.v = add nsw i64 %.0128.us, 1
  %i.w = mul nsw i64 %i.v, %3
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w
  br label %.preheader143.us.preheader

.preheader143.us.preheader:                       ; preds = %bb.c, %bb.b
  %.1112.us.ph = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ] ; 6 uses
  %.1.us.ph = phi ptr [ %i.s, %bb.b ], [ %i.x, %bb.c ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader143.us.prol.loopexit, label %.preheader143.us.prol

.preheader143.us.prol:                            ; preds = %.preheader143.us.preheader
  %i.y = icmp sgt i64 %4, %.0128.us
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader143.us.prol
  %i.z = icmp slt i64 %4, %.0128.us
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1112.us.ph, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.0121.us, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.0121.us, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.0121.us, i64 24
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %.1112.us.ph, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader143.us.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds [8 x i8], ptr %.1112.us.ph, i64 %i.j
  %i.ah = getelementptr inbounds [8 x i8], ptr %.1.us.ph, i64 %i.j
  br label %.preheader143.us.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.preheader143.us.prol
  %i.ai = load <2 x double>, ptr %.1112.us.ph, align 8, !tbaa !20
  %i.aj = load <2 x double>, ptr %.1.us.ph, align 8, !tbaa !20
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ak, ptr %.0121.us, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %.1112.us.ph, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.1.us.ph, i64 16
  br label %.preheader143.us.prol.loopexit.unr-lcssa

.preheader143.us.prol.loopexit.unr-lcssa:         ; preds = %bb.g, %bb.f, %bb.e
  %.2113.us.prol = phi ptr [ %i.al, %bb.g ], [ %i.ag, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %.2.us.prol = phi ptr [ %i.am, %bb.g ], [ %i.ah, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %.2123.us.prol = getelementptr inbounds nuw i8, ptr %.0121.us, i64 32 ; 2 uses
  br label %.preheader143.us.prol.loopexit

.preheader143.us.prol.loopexit:                   ; preds = %.preheader143.us.prol.loopexit.unr-lcssa, %.preheader143.us.preheader
  %.1122.us.unr = phi ptr [ %.0121.us, %.preheader143.us.preheader ], [ %.2123.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.0119.us.unr = phi i64 [ %i.c, %.preheader143.us.preheader ], [ %i.o, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.0115.us.unr = phi i64 [ %4, %.preheader143.us.preheader ], [ %i.n, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.1112.us.unr = phi ptr [ %.1112.us.ph, %.preheader143.us.preheader ], [ %.2113.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.1.us.unr = phi ptr [ %.1.us.ph, %.preheader143.us.preheader ], [ %.2.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.2113.us.lcssa.unr = phi ptr [ poison, %.preheader143.us.preheader ], [ %.2113.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.2.us.lcssa.unr = phi ptr [ poison, %.preheader143.us.preheader ], [ %.2.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  %.2123.us.lcssa.unr = phi ptr [ poison, %.preheader143.us.preheader ], [ %.2123.us.prol, %.preheader143.us.prol.loopexit.unr-lcssa ]
  br i1 %i.p, label %.loopexit144.us, label %.preheader143.us

.preheader143.us:                                 ; preds = %.preheader143.us.prol.loopexit, %bb.p
  %.1122.us = phi ptr [ %.2123.us.1, %bb.p ], [ %.1122.us.unr, %.preheader143.us.prol.loopexit ] ; 8 uses
  %.0119.us = phi i64 [ %i.bt, %bb.p ], [ %.0119.us.unr, %.preheader143.us.prol.loopexit ] ; 2 uses
  %.0115.us = phi i64 [ %i.bs, %bb.p ], [ %.0115.us.unr, %.preheader143.us.prol.loopexit ] ; 4 uses
  %.1112.us = phi ptr [ %.2113.us.1, %bb.p ], [ %.1112.us.unr, %.preheader143.us.prol.loopexit ] ; 5 uses
  %.1.us = phi ptr [ %.2.us.1, %bb.p ], [ %.1.us.unr, %.preheader143.us.prol.loopexit ] ; 4 uses
  %i.an = icmp sgt i64 %.0115.us, %.0128.us
  br i1 %i.an, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader143.us
  %i.ao = icmp slt i64 %.0115.us, %.0128.us
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.1112.us, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !20
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.1122.us, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.1122.us, i64 16
  store double %i.aq, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.1122.us, i64 24
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.1112.us, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader143.us.1

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds [8 x i8], ptr %.1112.us, i64 %i.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %.1.us, i64 %i.j
  br label %.preheader143.us.1

bb.k:                                             ; preds = %.preheader143.us
  %i.ax = load <2 x double>, ptr %.1112.us, align 8, !tbaa !20
  %i.ay = load <2 x double>, ptr %.1.us, align 8, !tbaa !20
  %i.az = shufflevector <2 x double> %i.ax, <2 x double> %i.ay, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.az, ptr %.1122.us, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %.1112.us, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.us, i64 16
  br label %.preheader143.us.1

.preheader143.us.1:                               ; preds = %bb.k, %bb.j, %bb.i
  %.2113.us = phi ptr [ %i.ba, %bb.k ], [ %i.av, %bb.j ], [ %i.at, %bb.i ] ; 5 uses
  %.2.us = phi ptr [ %i.bb, %bb.k ], [ %i.aw, %bb.j ], [ %i.au, %bb.i ] ; 4 uses
  %.2123.us = getelementptr inbounds nuw i8, ptr %.1122.us, i64 32 ; 3 uses
  %i.bc = add nsw i64 %.0115.us, 2                ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, %.0128.us
  br i1 %i.bd, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.preheader143.us.1
  %i.be = icmp slt i64 %i.bc, %.0128.us
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.2113.us, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.2123.us, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %.1122.us, i64 48
  store double %i.bg, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.1122.us, i64 56
  store double 1.000000e+00, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.2113.us, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds [8 x i8], ptr %.2113.us, i64 %i.j
  %i.bm = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.j
  br label %bb.p

bb.o:                                             ; preds = %.preheader143.us.1
  %i.bn = load <2 x double>, ptr %.2113.us, align 8, !tbaa !20
  %i.bo = load <2 x double>, ptr %.2.us, align 8, !tbaa !20
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.bp, ptr %.2123.us, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %.2113.us, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.2.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.2113.us.1 = phi ptr [ %i.bq, %bb.o ], [ %i.bl, %bb.n ], [ %i.bj, %bb.m ] ; 2 uses
  %.2.us.1 = phi ptr [ %i.br, %bb.o ], [ %i.bm, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %.2123.us.1 = getelementptr inbounds nuw i8, ptr %.1122.us, i64 64 ; 2 uses
  %i.bs = add nsw i64 %.0115.us, 4
  %i.bt = add nsw i64 %.0119.us, -2
  %i.bu = icmp sgt i64 %.0119.us, 2
  br i1 %i.bu, label %.preheader143.us, label %.loopexit144.us, !llvm.loop !8

bb.q:                                             ; preds = %.loopexit144.us
  %i.bv = icmp sgt i64 %i.l, %.0128.us
  br i1 %i.bv, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = icmp slt i64 %i.l, %.0128.us
  br i1 %i.bw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load double, ptr %.2.us.lcssa, align 8, !tbaa !20
  %i.by = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bx, i64 1
  store <2 x double> %i.by, ptr %.2123.us.lcssa, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 48
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 48
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.cb = load double, ptr %.2113.us.lcssa, align 8, !tbaa !20
  %i.cc = load double, ptr %.2.us.lcssa, align 8, !tbaa !20
  store double %i.cb, ptr %.2123.us.lcssa, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 40
  store double %i.cc, ptr %i.cd, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %.1122.us.lcssa, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.loopexit144.us
  %.4125.us = phi ptr [ %i.ce, %bb.u ], [ %i.ca, %bb.t ], [ %i.bz, %bb.s ], [ %.2123.us.lcssa, %.loopexit144.us ] ; 2 uses
  %i.cf = add nsw i64 %.0128.us, 2                ; 2 uses
  %i.cg = add nsw i64 %.0118.us, -1
  %i.ch = icmp sgt i64 %.0118.us, 1
  br i1 %i.ch, label %.preheader145.split.us, label %.loopexit146, !llvm.loop !9

.loopexit144.us:                                  ; preds = %bb.p, %.preheader143.us.prol.loopexit
  %.2113.us.lcssa = phi ptr [ %.2113.us.lcssa.unr, %.preheader143.us.prol.loopexit ], [ %.2113.us.1, %bb.p ]
  %.2.us.lcssa = phi ptr [ %.2.us.lcssa.unr, %.preheader143.us.prol.loopexit ], [ %.2.us.1, %bb.p ] ; 2 uses
  %.2123.us.lcssa = phi ptr [ %.2123.us.lcssa.unr, %.preheader143.us.prol.loopexit ], [ %.2123.us.1, %bb.p ] ; 3 uses
  %.1122.us.lcssa = phi ptr [ %.0121.us, %.preheader143.us.prol.loopexit ], [ %.2123.us, %bb.p ] ; 4 uses
  br i1 %.not140, label %bb.v, label %bb.q

.preheader145.split:                              ; preds = %.preheader145
  br i1 %.not140, label %.preheader145.split.split.us.preheader, label %.preheader145.split.split.preheader

.preheader145.split.split.preheader:              ; preds = %.preheader145.split
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 120
  br i1 %min.iters.check, label %.preheader145.split.split.preheader224, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader145.split.split.preheader
  %i.ci = add nsw i64 %i.a, -1                    ; 4 uses
  %mul.result = shl i64 %i.ci, 4                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.ci, 1152921504606846975
  %7 = getelementptr i8, ptr %6, i64 %mul.result
  %8 = icmp ult ptr %7, %6
  %scevgep = getelementptr i8, ptr %6, i64 8      ; 2 uses
  %9 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %10 = icmp ult ptr %9, %scevgep
  %i.cj = shl i64 %3, 4                           ; 4 uses
  %i.ck = mul i64 %3, -16                         ; 2 uses
  %i.cl = mul i64 %5, %3
  %i.cm = add i64 %i.cl, %4
  %i.cn = shl i64 %i.cm, 3
  %scevgep.a = getelementptr i8, ptr %2, i64 %i.cn ; 4 uses
  %i.co = icmp slt i64 %i.cj, 0                   ; 2 uses
  %i.cp = select i1 %i.co, i64 %i.ck, i64 %i.cj
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cp, i64 %i.ci) ; 2 uses
  %mul.result.a = extractvalue { i64, i1 } %mul, 0 ; 2 uses
  %mul.overflow.a = extractvalue { i64, i1 } %mul, 1
  %i.cq = sub i64 0, %mul.result.a
  %i.cr = getelementptr i8, ptr %scevgep.a, i64 %mul.result.a
  %i.cs = getelementptr i8, ptr %scevgep.a, i64 %i.cq
  %i.ct = icmp ult ptr %i.cr, %scevgep.a
  %i.cu = icmp ugt ptr %i.cs, %scevgep.a
  %i.cv = select i1 %i.co, i1 %i.cu, i1 %i.ct
  %i.cw = or i1 %i.cv, %mul.overflow.a
  %i.cx = mul i64 %3, %i.g
  %i.cy = add i64 %i.cx, %5
  %i.cz = shl i64 %i.cy, 3
  %scevgep180 = getelementptr i8, ptr %2, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %scevgep180, i64 %mul.result
  %i.db = icmp ult ptr %i.da, %scevgep180
  %i.dc = or i1 %i.db, %mul.overflow
  %i.dd = add i64 %5, 1
  %i.de = mul i64 %3, %i.dd
  %i.df = add i64 %i.de, %4
  %i.dg = shl i64 %i.df, 3
  %scevgep184 = getelementptr i8, ptr %2, i64 %i.dg ; 4 uses
  %i.dh = icmp slt i64 %i.cj, 0                   ; 2 uses
  %i.di = select i1 %i.dh, i64 %i.ck, i64 %i.cj
  %mul185 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.di, i64 %i.ci) ; 2 uses
  %mul.result186 = extractvalue { i64, i1 } %mul185, 0 ; 2 uses
  %mul.overflow187 = extractvalue { i64, i1 } %mul185, 1
  %i.dj = sub i64 0, %mul.result186
  %i.dk = getelementptr i8, ptr %scevgep184, i64 %mul.result186
  %i.dl = getelementptr i8, ptr %scevgep184, i64 %i.dj
  %i.dm = icmp ult ptr %i.dk, %scevgep184
  %i.dn = icmp ugt ptr %i.dl, %scevgep184
  %i.do = select i1 %i.dh, i1 %i.dn, i1 %i.dm
  %11 = or i1 %i.do, %mul.overflow187
  %12 = or i1 %10, %8
  %i.dp = or i1 %12, %i.cw
  %i.dq = or i1 %i.dp, %i.dc
  %i.dr = or i1 %i.dq, %11
  br i1 %i.dr, label %.preheader145.split.split.preheader224, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ds = shl i64 %i.a, 4                         ; 3 uses
  %i.dt = getelementptr i8, ptr %6, i64 %i.ds     ; 3 uses
  %i.du = add i64 %5, 1
  %i.dv = mul i64 %3, %i.du
  %i.dw = shl i64 %4, 3                           ; 2 uses
  %i.dx = add i64 %i.dv, %4
  %i.dy = shl i64 %i.dx, 3
  %i.dz = getelementptr i8, ptr %2, i64 %i.dy     ; 4 uses
  %i.ea = shl i64 %5, 3                           ; 3 uses
  %i.eb = add i64 %i.ds, %i.ea                    ; 2 uses
  %i.ec = add i64 %i.eb, -8
  %i.ed = mul i64 %3, %i.ec
  %i.ee = getelementptr i8, ptr %2, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.dw  ; 4 uses
  %i.eg = icmp ult ptr %i.dz, %i.ef
  %i.eh = select i1 %i.eg, ptr %i.dz, ptr %i.ef
  %i.ei = icmp ugt ptr %i.dz, %i.ef
  %i.ej = select i1 %i.ei, ptr %i.dz, ptr %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = mul i64 %3, %i.g
  %i.em = shl i64 %i.el, 3                        ; 2 uses
  %i.en = getelementptr i8, ptr %2, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.ea
  %i.ep = getelementptr i8, ptr %2, i64 %i.em
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.ds
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.ea
  %i.es = getelementptr i8, ptr %i.er, i64 -8
  %i.et = mul i64 %5, %3
  %i.eu = add i64 %i.et, %4
  %i.ev = shl i64 %i.eu, 3
  %i.ew = getelementptr i8, ptr %2, i64 %i.ev     ; 4 uses
  %i.ex = add i64 %i.eb, -16
  %i.ey = mul i64 %3, %i.ex
  %i.ez = getelementptr i8, ptr %2, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.dw  ; 4 uses
  %i.fb = icmp ult ptr %i.ew, %i.fa
  %i.fc = select i1 %i.fb, ptr %i.ew, ptr %i.fa
  %i.fd = icmp ugt ptr %i.ew, %i.fa
  %i.fe = select i1 %i.fd, ptr %i.ew, ptr %i.fa
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  %bound0 = icmp ult ptr %6, %i.ek
  %bound1 = icmp ult ptr %i.eh, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %6, %i.es
  %bound1207 = icmp ult ptr %i.eo, %i.dt
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %bound0209 = icmp ult ptr %6, %i.ff
  %bound1210 = icmp ult ptr %i.fc, %i.dt
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx, %found.conflict211
  br i1 %conflict.rdx212, label %.preheader145.split.split.preheader224, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.fg = shl nuw nsw i64 %n.vec, 1
  %i.fh = add i64 %5, %i.fg                       ; 2 uses
  %i.fi = shl i64 %n.vec, 4
  %i.fj = getelementptr i8, ptr %6, i64 %i.fi     ; 2 uses
  %i.fk = and i64 %i.a, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert213 = insertelement <4 x i64> poison, i64 %3, i64 0
  %broadcast.splat214 = shufflevector <4 x i64> %broadcast.splatinsert213, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert215 = insertelement <4 x i64> poison, i64 %5, i64 0
  %broadcast.splat216 = shufflevector <4 x i64> %broadcast.splatinsert215, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat216, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %pointer.phi = phi ptr [ %6, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.fl = icmp sgt <4 x i64> %broadcast.splat, %vec.ind ; 3 uses
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <4 x i64> %vec.ind
  %i.fm = mul nsw <4 x i64> %vec.ind, %broadcast.splat214
  %wide.gep217 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fm
  %i.fn = add nsw <4 x i64> %vec.ind, splat (i64 1)
  %i.fo = mul nsw <4 x i64> %i.fn, %broadcast.splat214
  %wide.gep218 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fo
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep217, <4 x i1> %i.fl, <4 x double> poison), !tbaa !20, !alias.scope !22
  %i.fp = icmp sge <4 x i64> %broadcast.splat, %vec.ind ; 3 uses
  %predphi = select <4 x i1> %i.fl, <4 x double> %wide.masked.gather, <4 x double> splat (double 1.000000e+00)
  %predphi219 = select <4 x i1> %i.fl, <4 x ptr> %wide.gep218, <4 x ptr> %wide.gep
  %wide.masked.gather220 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi219, <4 x i1> %i.fp, <4 x double> poison), !tbaa !20
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %predphi, <4 x ptr> align 8 %vector.gep, <4 x i1> %i.fp), !tbaa !20, !alias.scope !23, !noalias !24
  %wide.gep221 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather220, <4 x ptr> align 8 %wide.gep221, <4 x i1> %i.fp), !tbaa !20, !alias.scope !23, !noalias !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 8)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit146, label %.preheader145.split.split.preheader224

.preheader145.split.split.preheader224:           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader145.split.split.preheader, %middle.block
  %.0128.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %vector.scevcheck ], [ %5, %.preheader145.split.split.preheader ], [ %i.fh, %middle.block ]
  %.0121.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %vector.scevcheck ], [ %6, %.preheader145.split.split.preheader ], [ %i.fj, %middle.block ]
  %.0118.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %vector.scevcheck ], [ %i.a, %.preheader145.split.split.preheader ], [ %i.fk, %middle.block ]
  br label %.preheader145.split.split

.preheader145.split.split.us.preheader:           ; preds = %.preheader145.split
  %i.fr = and i64 %1, -2
  %i.fs = add i64 %5, %i.fr
  br label %.loopexit146

.preheader145.split.split:                        ; preds = %.preheader145.split.split.preheader224, %bb.z
  %.0128 = phi i64 [ %i.gb, %bb.z ], [ %.0128.ph, %.preheader145.split.split.preheader224 ] ; 6 uses
  %.0121 = phi ptr [ %.4125, %bb.z ], [ %.0121.ph, %.preheader145.split.split.preheader224 ] ; 3 uses
  %.0118 = phi i64 [ %i.gc, %bb.z ], [ %.0118.ph, %.preheader145.split.split.preheader224 ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0128
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader145.split.split
  %i.ft = mul nsw i64 %.0128, %3
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ft
  %i.fv = add nsw i64 %.0128, 1
  %i.fw = mul nsw i64 %i.fv, %3
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fw
  %i.fy = load double, ptr %i.fu, align 8, !tbaa !20
  br label %.sink.split

bb.x:                                             ; preds = %.preheader145.split.split
  %i.fz = icmp slt i64 %4, %.0128
  br i1 %i.fz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0128
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.w
  %.sink177 = phi double [ %i.fy, %bb.w ], [ 1.000000e+00, %bb.y ]
  %.sink.in = phi ptr [ %i.fx, %bb.w ], [ %gep, %bb.y ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !20
  store double %.sink177, ptr %.0121, align 8, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %.0121, i64 8
  store double %.sink, ptr %i.ga, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %.4125 = getelementptr inbounds nuw i8, ptr %.0121, i64 16 ; 2 uses
  %i.gb = add nsw i64 %.0128, 2                   ; 2 uses
  %i.gc = add nsw i64 %.0118, -1
  %i.gd = icmp sgt i64 %.0118, 1
  br i1 %i.gd, label %.preheader145.split.split, label %.loopexit146, !llvm.loop !16

.loopexit146:                                     ; preds = %bb.z, %bb.v, %middle.block, %.preheader145.split.split.us.preheader, %bb.a
  %.1129 = phi i64 [ %5, %bb.a ], [ %i.fs, %.preheader145.split.split.us.preheader ], [ %i.cf, %bb.v ], [ %i.fh, %middle.block ], [ %i.gb, %bb.z ] ; 13 uses
  %.5126 = phi ptr [ %6, %bb.a ], [ %6, %.preheader145.split.split.us.preheader ], [ %.4125.us, %bb.v ], [ %i.fj, %middle.block ], [ %.4125, %bb.z ] ; 2 uses
  %.not141 = trunc i64 %1 to i1
  %i.ge = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.ge, %.not141
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit146
  %.not142 = icmp sgt i64 %4, %.1129
  %i.gf = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.gg = mul nsw i64 %.1129, %3
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %2, i64 %.1129
  %i.gj = mul nsw i64 %4, %3
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gj
  %.4 = select i1 %.not142, ptr %i.gh, ptr %i.gk  ; 2 uses
  %xtraiter227 = and i64 %0, 3                    ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ae
  %.6127.prol = phi ptr [ %.7.prol, %bb.ae ], [ %.5126, %.preheader.preheader ] ; 3 uses
  %.1120.prol = phi i64 [ %i.gs, %bb.ae ], [ %0, %.preheader.preheader ]
  %.2117.prol = phi i64 [ %i.gr, %bb.ae ], [ %4, %.preheader.preheader ] ; 3 uses
  %.5.prol = phi ptr [ %.6.prol, %bb.ae ], [ %.4, %.preheader.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ae ], [ 0, %.preheader.preheader ]
  %i.gl = icmp sgt i64 %.2117.prol, %.1129
  br i1 %i.gl, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.prol
  %i.gm = icmp slt i64 %.2117.prol, %.1129
  br i1 %i.gm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store double 1.000000e+00, ptr %.6127.prol, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.go = getelementptr inbounds [8 x i8], ptr %.5.prol, i64 %3
  br label %bb.ae

bb.ad:                                            ; preds = %.preheader.prol
  %i.gp = load double, ptr %.5.prol, align 8, !tbaa !20
  store double %i.gp, ptr %.6127.prol, align 8, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
end_hunk_0
