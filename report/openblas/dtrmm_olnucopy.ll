Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_olnucopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dtrmm_olnucopy:bb.a
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
  %min.iters.check = icmp ult i64 %i.a, 116
  br i1 %min.iters.check, label %.preheader145.split.split.preheader224, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader145.split.split.preheader
  %i.ci = add nsw i64 %i.a, -1                    ; 4 uses
  %i.cj = shl i64 %3, 4                           ; 4 uses
  %i.ck = mul i64 %3, -16                         ; 2 uses
  %i.cl = mul i64 %5, %3
  %i.cm = add i64 %i.cl, %4
  %i.cn = shl i64 %i.cm, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.cn  ; 4 uses
  %i.co = icmp slt i64 %i.cj, 0                   ; 2 uses
  %i.cp = select i1 %i.co, i64 %i.ck, i64 %i.cj
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cp, i64 %i.ci) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.cq = sub i64 0, %mul.result
  %i.cr = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cs = getelementptr i8, ptr %scevgep, i64 %i.cq
  %i.ct = icmp ult ptr %i.cr, %scevgep
  %i.cu = icmp ugt ptr %i.cs, %scevgep
  %i.cv = select i1 %i.co, i1 %i.cu, i1 %i.ct
  %i.cw = or i1 %i.cv, %mul.overflow
  %i.cx = mul i64 %3, %i.g
  %i.cy = add i64 %i.cx, %5
  %i.cz = shl i64 %i.cy, 3
  %scevgep180 = getelementptr i8, ptr %2, i64 %i.cz ; 2 uses
  %mul.result182 = shl i64 %i.ci, 4
  %mul.overflow183 = icmp ugt i64 %i.ci, 1152921504606846975
  %i.da = getelementptr i8, ptr %scevgep180, i64 %mul.result182
  %i.db = icmp ult ptr %i.da, %scevgep180
  %i.dc = or i1 %i.db, %mul.overflow183
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
  %i.dp = or i1 %i.do, %mul.overflow187
  %i.dq = or i1 %i.cw, %i.dc
  %i.dr = or i1 %i.dq, %i.dp
  br i1 %i.dr, label %.preheader145.split.split.preheader224, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ds = shl i64 %i.a, 4                         ; 3 uses
  %i.dt = getelementptr i8, ptr %6, i64 %i.ds     ; 3 uses
  %7 = add i64 %5, 1
  %i.du = mul i64 %3, %7
  %i.dv = shl i64 %4, 3                           ; 2 uses
  %i.dw = add i64 %i.du, %4
  %i.dx = shl i64 %i.dw, 3
  %i.dy = getelementptr i8, ptr %2, i64 %i.dx     ; 4 uses
  %i.dz = shl i64 %5, 3                           ; 3 uses
  %i.ea = add i64 %i.ds, %i.dz                    ; 2 uses
  %i.eb = add i64 %i.ea, -8
  %i.ec = mul i64 %3, %i.eb
  %i.ed = getelementptr i8, ptr %2, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dv  ; 4 uses
  %i.ef = icmp ult ptr %i.dy, %i.ee
  %i.eg = select i1 %i.ef, ptr %i.dy, ptr %i.ee
  %i.eh = icmp ugt ptr %i.dy, %i.ee
  %i.ei = select i1 %i.eh, ptr %i.dy, ptr %i.ee
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = mul i64 %3, %i.g
  %i.el = shl i64 %i.ek, 3                        ; 2 uses
  %i.em = getelementptr i8, ptr %2, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 %i.dz
  %i.eo = getelementptr i8, ptr %2, i64 %i.el
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ds
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.dz
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %i.es = mul i64 %5, %3
  %i.et = add i64 %i.es, %4
  %i.eu = shl i64 %i.et, 3
  %i.ev = getelementptr i8, ptr %2, i64 %i.eu     ; 4 uses
  %i.ew = add i64 %i.ea, -16
  %i.ex = mul i64 %3, %i.ew
  %i.ey = getelementptr i8, ptr %2, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.dv  ; 4 uses
  %i.fa = icmp ult ptr %i.ev, %i.ez
  %i.fb = select i1 %i.fa, ptr %i.ev, ptr %i.ez
  %i.fc = icmp ugt ptr %i.ev, %i.ez
  %i.fd = select i1 %i.fc, ptr %i.ev, ptr %i.ez
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  %bound0 = icmp ult ptr %6, %i.ej
  %bound1 = icmp ult ptr %i.eg, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %6, %i.er
  %bound1207 = icmp ult ptr %i.en, %i.dt
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %bound0209 = icmp ult ptr %6, %i.fe
  %bound1210 = icmp ult ptr %i.fb, %i.dt
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx, %found.conflict211
  br i1 %conflict.rdx212, label %.preheader145.split.split.preheader224, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.ff = shl nuw nsw i64 %n.vec, 1
  %i.fg = add i64 %5, %i.ff                       ; 2 uses
  %i.fh = shl i64 %n.vec, 4
  %i.fi = getelementptr i8, ptr %6, i64 %i.fh     ; 2 uses
  %i.fj = and i64 %i.a, 3
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
  %i.fk = icmp sgt <4 x i64> %broadcast.splat, %vec.ind ; 3 uses
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <4 x i64> %vec.ind
  %i.fl = mul nsw <4 x i64> %vec.ind, %broadcast.splat214
  %wide.gep217 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fl
  %i.fm = add nsw <4 x i64> %vec.ind, splat (i64 1)
  %i.fn = mul nsw <4 x i64> %i.fm, %broadcast.splat214
  %wide.gep218 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fn
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep217, <4 x i1> %i.fk, <4 x double> poison), !tbaa !20, !alias.scope !22
  %i.fo = icmp sge <4 x i64> %broadcast.splat, %vec.ind ; 3 uses
  %predphi = select <4 x i1> %i.fk, <4 x double> %wide.masked.gather, <4 x double> splat (double 1.000000e+00)
  %predphi219 = select <4 x i1> %i.fk, <4 x ptr> %wide.gep218, <4 x ptr> %wide.gep
  %wide.masked.gather220 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi219, <4 x i1> %i.fo, <4 x double> poison), !tbaa !20
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %predphi, <4 x ptr> align 8 %vector.gep, <4 x i1> %i.fo), !tbaa !20, !alias.scope !23, !noalias !24
  %wide.gep221 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather220, <4 x ptr> align 8 %wide.gep221, <4 x i1> %i.fo), !tbaa !20, !alias.scope !23, !noalias !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 8)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit146, label %.preheader145.split.split.preheader224

.preheader145.split.split.preheader224:           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader145.split.split.preheader, %middle.block
  %.0128.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %vector.scevcheck ], [ %5, %.preheader145.split.split.preheader ], [ %i.fg, %middle.block ]
  %.0121.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %vector.scevcheck ], [ %6, %.preheader145.split.split.preheader ], [ %i.fi, %middle.block ]
  %.0118.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %vector.scevcheck ], [ %i.a, %.preheader145.split.split.preheader ], [ %i.fj, %middle.block ]
  br label %.preheader145.split.split

.preheader145.split.split.us.preheader:           ; preds = %.preheader145.split
  %i.fq = and i64 %1, -2
  %i.fr = add i64 %5, %i.fq
  br label %.loopexit146

.preheader145.split.split:                        ; preds = %.preheader145.split.split.preheader224, %bb.z
  %.0128 = phi i64 [ %i.ga, %bb.z ], [ %.0128.ph, %.preheader145.split.split.preheader224 ] ; 6 uses
  %.0121 = phi ptr [ %.4125, %bb.z ], [ %.0121.ph, %.preheader145.split.split.preheader224 ] ; 3 uses
  %.0118 = phi i64 [ %i.gb, %bb.z ], [ %.0118.ph, %.preheader145.split.split.preheader224 ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0128
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader145.split.split
  %i.fs = mul nsw i64 %.0128, %3
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fs
  %i.fu = add nsw i64 %.0128, 1
  %i.fv = mul nsw i64 %i.fu, %3
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fv
  %i.fx = load double, ptr %i.ft, align 8, !tbaa !20
  br label %.sink.split

bb.x:                                             ; preds = %.preheader145.split.split
  %i.fy = icmp slt i64 %4, %.0128
  br i1 %i.fy, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0128
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.w
  %.sink177 = phi double [ %i.fx, %bb.w ], [ 1.000000e+00, %bb.y ]
  %.sink.in = phi ptr [ %i.fw, %bb.w ], [ %gep, %bb.y ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !20
  store double %.sink177, ptr %.0121, align 8, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %.0121, i64 8
  store double %.sink, ptr %i.fz, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %.4125 = getelementptr inbounds nuw i8, ptr %.0121, i64 16 ; 2 uses
  %i.ga = add nsw i64 %.0128, 2                   ; 2 uses
  %i.gb = add nsw i64 %.0118, -1
  %i.gc = icmp sgt i64 %.0118, 1
  br i1 %i.gc, label %.preheader145.split.split, label %.loopexit146, !llvm.loop !16

.loopexit146:                                     ; preds = %bb.z, %bb.v, %middle.block, %.preheader145.split.split.us.preheader, %bb.a
  %.1129 = phi i64 [ %5, %bb.a ], [ %i.fr, %.preheader145.split.split.us.preheader ], [ %i.cf, %bb.v ], [ %i.fg, %middle.block ], [ %i.ga, %bb.z ] ; 13 uses
  %.5126 = phi ptr [ %6, %bb.a ], [ %6, %.preheader145.split.split.us.preheader ], [ %.4125.us, %bb.v ], [ %i.fi, %middle.block ], [ %.4125, %bb.z ] ; 2 uses
  %.not141 = trunc i64 %1 to i1
  %i.gd = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.gd, %.not141
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit146
  %.not142 = icmp sgt i64 %4, %.1129
  %i.ge = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.gf = mul nsw i64 %.1129, %3
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %2, i64 %.1129
  %i.gi = mul nsw i64 %4, %3
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gi
  %.4 = select i1 %.not142, ptr %i.gg, ptr %i.gj  ; 2 uses
  %xtraiter227 = and i64 %0, 3                    ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %bb.ae
  %.6127.prol = phi ptr [ %.7.prol, %bb.ae ], [ %.5126, %.preheader.preheader ] ; 3 uses
  %.1120.prol = phi i64 [ %i.gr, %bb.ae ], [ %0, %.preheader.preheader ]
  %.2117.prol = phi i64 [ %i.gq, %bb.ae ], [ %4, %.preheader.preheader ] ; 3 uses
  %.5.prol = phi ptr [ %.6.prol, %bb.ae ], [ %.4, %.preheader.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ae ], [ 0, %.preheader.preheader ]
  %i.gk = icmp sgt i64 %.2117.prol, %.1129
  br i1 %i.gk, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.prol
  %i.gl = icmp slt i64 %.2117.prol, %.1129
  br i1 %i.gl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store double 1.000000e+00, ptr %.6127.prol, align 8, !tbaa !20
  %i.gm = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.gn = getelementptr inbounds [8 x i8], ptr %.5.prol, i64 %3
  br label %bb.ae

bb.ad:                                            ; preds = %.preheader.prol
  %i.go = load double, ptr %.5.prol, align 8, !tbaa !20
  store double %i.go, ptr %.6127.prol, align 8, !tbaa !20
  %i.gp = getelementptr inbounds nuw i8, ptr %.5.prol, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.6.prol = phi ptr [ %i.gp, %bb.ad ], [ %i.gn, %bb.ac ], [ %i.gm, %bb.ab ] ; 2 uses
  %.7.prol = getelementptr inbounds nuw i8, ptr %.6127.prol, i64 8 ; 2 uses
  %i.gq = add nsw i64 %.2117.prol, 1              ; 2 uses
  %i.gr = add nsw i64 %.1120.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter227
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !17

.preheader.prol.loopexit:                         ; preds = %bb.ae, %.preheader.preheader
  %.6127.unr = phi ptr [ %.5126, %.preheader.preheader ], [ %.7.prol, %bb.ae ]
  %.1120.unr = phi i64 [ %0, %.preheader.preheader ], [ %i.gr, %bb.ae ]
  %.2117.unr = phi i64 [ %4, %.preheader.preheader ], [ %i.gq, %bb.ae ]
  %.5.unr = phi ptr [ %.4, %.preheader.preheader ], [ %.6.prol, %bb.ae ]
  %i.gs = icmp ult i64 %0, 4
  br i1 %i.gs, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.av
  %.6127 = phi ptr [ %.7.3, %bb.av ], [ %.6127.unr, %.preheader.prol.loopexit ] ; 6 uses
  %.1120 = phi i64 [ %i.hu, %bb.av ], [ %.1120.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.2117 = phi i64 [ %i.ht, %bb.av ], [ %.2117.unr, %.preheader.prol.loopexit ] ; 7 uses
  %.5 = phi ptr [ %.6.3, %bb.av ], [ %.5.unr, %.preheader.prol.loopexit ] ; 4 uses
  %i.gt = icmp sgt i64 %.2117, %.1129
  br i1 %i.gt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader
  %i.gu = load double, ptr %.5, align 8, !tbaa !20
  store double %i.gu, ptr %.6127, align 8, !tbaa !20
  %i.gv = getelementptr inbounds nuw i8, ptr %.5, i64 8
  br label %.preheader.1

bb.ag:                                            ; preds = %.preheader
  %i.gw = icmp slt i64 %.2117, %.1129
  br i1 %i.gw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gx = getelementptr inbounds [8 x i8], ptr %.5, i64 %3
  br label %.preheader.1

bb.ai:                                            ; preds = %bb.ag
  store double 1.000000e+00, ptr %.6127, align 8, !tbaa !20
  %i.gy = getelementptr inbounds nuw i8, ptr %.5, i64 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ah, %bb.ai, %bb.af
  %.6 = phi ptr [ %i.gv, %bb.af ], [ %i.gx, %bb.ah ], [ %i.gy, %bb.ai ] ; 4 uses
  %.7 = getelementptr inbounds nuw i8, ptr %.6127, i64 8 ; 2 uses
  %.not229 = icmp slt i64 %.2117, %.1129
  br i1 %.not229, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.preheader.1
  %i.gz = add nsw i64 %.2117, 1
  %i.ha = icmp slt i64 %i.gz, %.1129
  br i1 %i.ha, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store double 1.000000e+00, ptr %.7, align 8, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %.6, i64 8
  br label %.preheader.2

bb.al:                                            ; preds = %bb.aj
  %i.hc = getelementptr inbounds [8 x i8], ptr %.6, i64 %3
  br label %.preheader.2

bb.am:                                            ; preds = %.preheader.1
  %i.hd = load double, ptr %.6, align 8, !tbaa !20
  store double %i.hd, ptr %.7, align 8, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %.6, i64 8
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.am, %bb.al, %bb.ak
  %.6.1 = phi ptr [ %i.he, %bb.am ], [ %i.hc, %bb.al ], [ %i.hb, %bb.ak ] ; 4 uses
  %.7.1 = getelementptr inbounds nuw i8, ptr %.6127, i64 16 ; 2 uses
  %i.hf = add nsw i64 %.2117, 2                   ; 2 uses
  %i.hg = icmp sgt i64 %i.hf, %.1129
  br i1 %i.hg, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.preheader.2
  %i.hh = icmp slt i64 %i.hf, %.1129
  br i1 %i.hh, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store double 1.000000e+00, ptr %.7.1, align 8, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %.6.1, i64 8
  br label %.preheader.3

bb.ap:                                            ; preds = %bb.an
  %i.hj = getelementptr inbounds [8 x i8], ptr %.6.1, i64 %3
  br label %.preheader.3

bb.aq:                                            ; preds = %.preheader.2
  %i.hk = load double, ptr %.6.1, align 8, !tbaa !20
  store double %i.hk, ptr %.7.1, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %.6.1, i64 8
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.aq, %bb.ap, %bb.ao
  %.6.2 = phi ptr [ %i.hl, %bb.aq ], [ %i.hj, %bb.ap ], [ %i.hi, %bb.ao ] ; 4 uses
  %.7.2 = getelementptr inbounds nuw i8, ptr %.6127, i64 24 ; 2 uses
  %i.hm = add nsw i64 %.2117, 3                   ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, %.1129
  br i1 %i.hn, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %.preheader.3
  %i.ho = icmp slt i64 %i.hm, %.1129
  br i1 %i.ho, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store double 1.000000e+00, ptr %.7.2, align 8, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.6.2, i64 8
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.hq = getelementptr inbounds [8 x i8], ptr %.6.2, i64 %3
  br label %bb.av

bb.au:                                            ; preds = %.preheader.3
  %i.hr = load double, ptr %.6.2, align 8, !tbaa !20
  store double %i.hr, ptr %.7.2, align 8, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %.6.2, i64 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.6.3 = phi ptr [ %i.hs, %bb.au ], [ %i.hq, %bb.at ], [ %i.hp, %bb.as ]
  %.7.3 = getelementptr inbounds nuw i8, ptr %.6127, i64 32
  %i.ht = add nsw i64 %.2117, 4
  %i.hu = add nsw i64 %.1120, -4
  %i.hv = icmp sgt i64 %.1120, 4
  br i1 %i.hv, label %.preheader, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %bb.av, %.loopexit146
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !21, !25, !26}
!16 = distinct !{!16, !21, !25}
!17 = distinct !{!17, !27}
!18 = distinct !{!18, !21}
!19 = !{!"double", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!11}
!23 = !{!12}
!24 = !{!14, !13, !11}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
