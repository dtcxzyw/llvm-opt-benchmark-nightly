Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_olnncopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dtrmm_olnncopy:bb.a
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
  %min.iters.check = icmp ult i64 %i.a, 160
  br i1 %min.iters.check, label %.preheader153.split.split.preheader234, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader153.split.split.preheader
  %i.cv = add nsw i64 %i.a, -1                    ; 4 uses
  %i.cw = mul i64 %3, %i.g
  %i.cx = add i64 %i.cw, %5
  %i.cy = shl i64 %i.cx, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.cy  ; 2 uses
  %mul.result = shl i64 %i.cv, 4                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.cv, 1152921504606846975
  %i.cz = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.da = icmp ult ptr %i.cz, %scevgep
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
  %i.dt = getelementptr i8, ptr %scevgep192, i64 %mul.result
  %i.du = icmp ult ptr %i.dt, %scevgep192
  %i.dv = or i1 %i.du, %mul.overflow
  %i.dw = mul i64 %5, %3
  %i.dx = add i64 %i.dw, %4
  %i.dy = shl i64 %i.dx, 3
  %scevgep193 = getelementptr i8, ptr %2, i64 %i.dy ; 4 uses
  %i.dz = icmp slt i64 %i.db, 0                   ; 2 uses
  %i.ea = select i1 %i.dz, i64 %i.dc, i64 %i.db
  %mul194 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ea, i64 %i.cv) ; 2 uses
  %mul.result195 = extractvalue { i64, i1 } %mul194, 0 ; 2 uses
  %mul.overflow196 = extractvalue { i64, i1 } %mul194, 1
  %i.eb = sub i64 0, %mul.result195
  %i.ec = getelementptr i8, ptr %scevgep193, i64 %mul.result195
  %i.ed = getelementptr i8, ptr %scevgep193, i64 %i.eb
  %i.ee = icmp ult ptr %i.ec, %scevgep193
  %i.ef = icmp ugt ptr %i.ed, %scevgep193
  %i.eg = select i1 %i.dz, i1 %i.ef, i1 %i.ee
  %i.eh = or i1 %i.eg, %mul.overflow196
  %i.ei = or i1 %i.da, %i.dp
  %i.ej = or i1 %i.ei, %i.dv
  %i.ek = or i1 %i.ej, %i.eh
  br i1 %i.ek, label %.preheader153.split.split.preheader234, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.el = shl i64 %i.a, 4                         ; 5 uses
  %scevgep197 = getelementptr i8, ptr %6, i64 %i.el ; 4 uses
  %i.em = mul i64 %5, %3
  %i.en = shl i64 %4, 3                           ; 2 uses
  %i.eo = add i64 %i.em, %4
  %i.ep = shl i64 %i.eo, 3
  %scevgep198 = getelementptr i8, ptr %2, i64 %i.ep ; 4 uses
  %i.eq = shl i64 %5, 3                           ; 6 uses
  %i.er = add i64 %i.el, %i.eq
  %i.es = add i64 %i.er, -16
  %i.et = mul i64 %3, %i.es
  %i.eu = getelementptr i8, ptr %2, i64 %i.et
  %scevgep199 = getelementptr i8, ptr %i.eu, i64 %i.en ; 4 uses
  %i.ev = icmp ult ptr %scevgep198, %scevgep199
  %umin = select i1 %i.ev, ptr %scevgep198, ptr %scevgep199
  %i.ew = icmp ugt ptr %scevgep198, %scevgep199
  %umax = select i1 %i.ew, ptr %scevgep198, ptr %scevgep199
  %scevgep200 = getelementptr i8, ptr %umax, i64 8
  %i.ex = mul i64 %4, %3
  %i.ey = shl i64 %i.ex, 3                        ; 2 uses
  %i.ez = getelementptr i8, ptr %2, i64 %i.ey
  %scevgep201 = getelementptr i8, ptr %i.ez, i64 %i.eq
  %i.fa = getelementptr i8, ptr %2, i64 %i.ey
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.el
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.eq
  %scevgep202 = getelementptr i8, ptr %i.fc, i64 -8
  %i.fd = add i64 %5, 1
  %i.fe = mul i64 %3, %i.fd
  %i.ff = add i64 %i.fe, %4
  %i.fg = shl i64 %i.ff, 3
  %scevgep203 = getelementptr i8, ptr %2, i64 %i.fg ; 4 uses
  %7 = add i64 %i.el, %i.eq
  %i.fh = add i64 %7, -8
  %i.fi = mul i64 %3, %i.fh
  %i.fj = getelementptr i8, ptr %2, i64 %i.fi
  %scevgep204 = getelementptr i8, ptr %i.fj, i64 %i.en ; 4 uses
  %i.fk = icmp ult ptr %scevgep203, %scevgep204
  %umin205 = select i1 %i.fk, ptr %scevgep203, ptr %scevgep204
  %i.fl = icmp ugt ptr %scevgep203, %scevgep204
  %umax206 = select i1 %i.fl, ptr %scevgep203, ptr %scevgep204
  %scevgep207 = getelementptr i8, ptr %umax206, i64 8
  %i.fm = mul i64 %3, %i.g
  %i.fn = shl i64 %i.fm, 3                        ; 2 uses
  %i.fo = getelementptr i8, ptr %2, i64 %i.fn
  %scevgep208 = getelementptr i8, ptr %i.fo, i64 %i.eq
  %i.fp = getelementptr i8, ptr %2, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.el
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.eq
  %scevgep209 = getelementptr i8, ptr %i.fr, i64 -8
  %bound0 = icmp ult ptr %6, %scevgep200
  %bound1 = icmp ult ptr %umin, %scevgep197
  %found.conflict = and i1 %bound0, %bound1
  %bound0210 = icmp ult ptr %6, %scevgep202
  %bound1211 = icmp ult ptr %scevgep201, %scevgep197
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx = or i1 %found.conflict, %found.conflict212
  %bound0213 = icmp ult ptr %6, %scevgep207
  %bound1214 = icmp ult ptr %umin205, %scevgep197
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx, %found.conflict215
  %bound0217 = icmp ult ptr %6, %scevgep209
  %bound1218 = icmp ult ptr %scevgep208, %scevgep197
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  br i1 %conflict.rdx220, label %.preheader153.split.split.preheader234, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.fs = shl nuw nsw i64 %n.vec, 1
  %i.ft = add i64 %5, %i.fs                       ; 2 uses
  %i.fu = shl i64 %n.vec, 4
  %i.fv = getelementptr i8, ptr %6, i64 %i.fu     ; 2 uses
  %i.fw = and i64 %i.a, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %4, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert221 = insertelement <4 x i64> poison, i64 %3, i64 0
  %broadcast.splat222 = shufflevector <4 x i64> %broadcast.splatinsert221, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert223 = insertelement <4 x i64> poison, i64 %5, i64 0
  %broadcast.splat224 = shufflevector <4 x i64> %broadcast.splatinsert223, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat224, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %pointer.phi = phi ptr [ %6, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.fx = icmp sgt <4 x i64> %broadcast.splat, %vec.ind ; 2 uses
  %wide.gep = getelementptr inbounds [8 x i8], ptr %2, <4 x i64> %vec.ind ; 2 uses
  %wide.gep225 = getelementptr inbounds [8 x i8], <4 x ptr> %wide.gep, i64 %i.h
  %wide.gep226 = getelementptr inbounds [8 x i8], <4 x ptr> %wide.gep, i64 %i.f
  %i.fy = mul nsw <4 x i64> %vec.ind, %broadcast.splat222
  %wide.gep227 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.fy
  %i.fz = add nsw <4 x i64> %vec.ind, splat (i64 1)
  %i.ga = mul nsw <4 x i64> %i.fz, %broadcast.splat222
  %wide.gep228 = getelementptr inbounds [8 x i8], ptr %i.i, <4 x i64> %i.ga
  %i.gb = icmp sge <4 x i64> %broadcast.splat, %vec.ind ; 4 uses
  %predphi = select <4 x i1> %i.fx, <4 x ptr> %wide.gep227, <4 x ptr> %wide.gep226
  %predphi229 = select <4 x i1> %i.fx, <4 x ptr> %wide.gep228, <4 x ptr> %wide.gep225
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi229, <4 x i1> %i.gb, <4 x double> poison), !tbaa !20
  %wide.masked.gather230 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %predphi, <4 x i1> %i.gb, <4 x double> poison), !tbaa !20
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather230, <4 x ptr> align 8 %vector.gep, <4 x i1> %i.gb), !tbaa !20, !alias.scope !22, !noalias !23
  %wide.gep231 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.masked.gather, <4 x ptr> align 8 %wide.gep231, <4 x i1> %i.gb), !tbaa !20, !alias.scope !22, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 8)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit154, label %.preheader153.split.split.preheader234

.preheader153.split.split.preheader234:           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader153.split.split.preheader, %middle.block
  %.0136.ph = phi i64 [ %5, %vector.memcheck ], [ %5, %vector.scevcheck ], [ %5, %.preheader153.split.split.preheader ], [ %i.ft, %middle.block ]
  %.0129.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %vector.scevcheck ], [ %6, %.preheader153.split.split.preheader ], [ %i.fv, %middle.block ]
  %.0126.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %vector.scevcheck ], [ %i.a, %.preheader153.split.split.preheader ], [ %i.fw, %middle.block ]
  br label %.preheader153.split.split

.preheader153.split.split.us.preheader:           ; preds = %.preheader153.split
  %i.gd = and i64 %1, -2
  %i.ge = add i64 %5, %i.gd
  br label %.loopexit154

.preheader153.split.split:                        ; preds = %.preheader153.split.split.preheader234, %bb.z
  %.0136 = phi i64 [ %i.gp, %bb.z ], [ %.0136.ph, %.preheader153.split.split.preheader234 ] ; 6 uses
  %.0129 = phi ptr [ %.4133, %bb.z ], [ %.0129.ph, %.preheader153.split.split.preheader234 ] ; 3 uses
  %.0126 = phi i64 [ %i.gq, %bb.z ], [ %.0126.ph, %.preheader153.split.split.preheader234 ] ; 2 uses
  %.not = icmp sgt i64 %4, %.0136
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader153.split.split
  %i.gf = mul nsw i64 %.0136, %3
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gf
  %i.gh = add nsw i64 %.0136, 1
  %i.gi = mul nsw i64 %i.gh, %3
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gi
  br label %.sink.split

bb.x:                                             ; preds = %.preheader153.split.split
  %i.gk = icmp slt i64 %4, %.0136
  br i1 %i.gk, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = getelementptr inbounds [8 x i8], ptr %2, i64 %.0136 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.h
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.w
  %.sink185.in = phi ptr [ %i.gg, %bb.w ], [ %i.gn, %bb.y ]
  %.sink.in = phi ptr [ %i.gj, %bb.w ], [ %i.gm, %bb.y ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !20
  %.sink185 = load double, ptr %.sink185.in, align 8, !tbaa !20
  store double %.sink185, ptr %.0129, align 8, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  store double %.sink, ptr %i.go, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %.4133 = getelementptr inbounds nuw i8, ptr %.0129, i64 16 ; 2 uses
  %i.gp = add nsw i64 %.0136, 2                   ; 2 uses
  %i.gq = add nsw i64 %.0126, -1
  %i.gr = icmp sgt i64 %.0126, 1
  br i1 %i.gr, label %.preheader153.split.split, label %.loopexit154, !llvm.loop !17

.loopexit154:                                     ; preds = %bb.z, %bb.v, %middle.block, %.preheader153.split.split.us.preheader, %bb.a
  %.1137 = phi i64 [ %5, %bb.a ], [ %i.ge, %.preheader153.split.split.us.preheader ], [ %i.cs, %bb.v ], [ %i.ft, %middle.block ], [ %i.gp, %bb.z ] ; 9 uses
  %.5134 = phi ptr [ %6, %bb.a ], [ %6, %.preheader153.split.split.us.preheader ], [ %.4133.us, %bb.v ], [ %i.fv, %middle.block ], [ %.4133, %bb.z ] ; 4 uses
  %.not149 = trunc i64 %1 to i1
  %i.gs = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.gs, %.not149
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit154
  %.not150 = icmp sgt i64 %4, %.1137
  %i.gt = getelementptr inbounds [8 x i8], ptr %2, i64 %4
  %i.gu = mul nsw i64 %.1137, %3
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = getelementptr inbounds [8 x i8], ptr %2, i64 %.1137
  %i.gx = mul nsw i64 %4, %3
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gx
  %.4 = select i1 %.not150, ptr %i.gv, ptr %i.gy  ; 6 uses
  %xtraiter237 = and i64 %0, 1
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.gz = icmp sgt i64 %4, %.1137
  br i1 %i.gz, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader.prol
  %i.ha = icmp slt i64 %4, %.1137
  br i1 %i.ha, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hb = load double, ptr %.4, align 8, !tbaa !20
  store double %i.hb, ptr %.5134, align 8, !tbaa !20
  %i.hc = getelementptr inbounds nuw i8, ptr %.4, i64 8
  br label %.preheader.prol.loopexit.unr-lcssa

bb.ac:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds [8 x i8], ptr %.4, i64 %3
  br label %.preheader.prol.loopexit.unr-lcssa

bb.ad:                                            ; preds = %.preheader.prol
  %i.he = load double, ptr %.4, align 8, !tbaa !20
  store double %i.he, ptr %.5134, align 8, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %.4, i64 8
  br label %.preheader.prol.loopexit.unr-lcssa

.preheader.prol.loopexit.unr-lcssa:               ; preds = %bb.ad, %bb.ac, %bb.ab
  %.6.prol = phi ptr [ %i.hf, %bb.ad ], [ %i.hd, %bb.ac ], [ %i.hc, %bb.ab ]
  %.7.prol = getelementptr inbounds nuw i8, ptr %.5134, i64 8
  %i.hg = add nsw i64 %4, 1
  %i.hh = add nsw i64 %0, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.preheader.preheader
  %.6135.unr = phi ptr [ %.5134, %.preheader.preheader ], [ %.7.prol, %.preheader.prol.loopexit.unr-lcssa ]
  %.1128.unr = phi i64 [ %0, %.preheader.preheader ], [ %i.hh, %.preheader.prol.loopexit.unr-lcssa ]
  %.2125.unr = phi i64 [ %4, %.preheader.preheader ], [ %i.hg, %.preheader.prol.loopexit.unr-lcssa ]
  %.5.unr = phi ptr [ %.4, %.preheader.preheader ], [ %.6.prol, %.preheader.prol.loopexit.unr-lcssa ]
  %i.hi = icmp eq i64 %0, 1
  br i1 %i.hi, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %bb.am
  %.6135 = phi ptr [ %.7.1, %bb.am ], [ %.6135.unr, %.preheader.prol.loopexit ] ; 4 uses
  %.1128 = phi i64 [ %i.hy, %bb.am ], [ %.1128.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.2125 = phi i64 [ %i.hx, %bb.am ], [ %.2125.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.5 = phi ptr [ %.6.1, %bb.am ], [ %.5.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.hj = icmp sgt i64 %.2125, %.1137
end_hunk_0
