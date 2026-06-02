begin_hunk_0_@residual_and_restriction:bb.a
  %i.om = load double, ptr %i.ol, align 8, !tbaa !44
  %i.on = tail call double @llvm.fmuladd.f64(double %i.oj, double 1.250000e-01, double %i.om)
  store double %i.on, ptr %i.ol, align 8, !tbaa !44
  %indvars.iv.next245.1.1 = add nuw nsw i64 %indvars.iv244.1.1, 1 ; 2 uses
  %exitcond248.1.1.not = icmp eq i64 %indvars.iv.next245.1.1, %wide.trip.count247
  br i1 %exitcond248.1.1.not, label %._crit_edge.us.us.us.us.us.1.1, label %bb.f, !llvm.loop !196

._crit_edge.us.us.us.us.us.1.1:                   ; preds = %bb.f
  %i.oo = add nuw nsw i32 %.0191206.us.us.us, 2   ; 2 uses
  %i.op = icmp slt i32 %i.oo, %i.ak
  %indvar.next280 = add i32 %indvar279, 1
  br i1 %i.op, label %.preheader197.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !197

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.1.1
  %i.oq = add nuw nsw i32 %.0190213.us.us, 2      ; 2 uses
  %i.or = icmp slt i32 %i.oq, %i.ai
  %indvar.next = add i32 %indvar, 1
  br i1 %i.or, label %.preheader198.us.us, label %._crit_edge216, !llvm.loop !198

.preheader198.lr.ph.split.us.split:               ; preds = %.preheader198.lr.ph.split.us
  br i1 %i.by, label %.preheader198.us.us232.preheader, label %._crit_edge216

.preheader198.us.us232.preheader:                 ; preds = %.preheader198.lr.ph.split.us.split
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 6 uses
  %i.os = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check287 = icmp ult i32 %i.y, 8
  %i.ot = trunc nsw i64 %i.os to i32
  %i.ou = icmp ugt i64 %i.os, 4294967295
  %n.vec290 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n295 = icmp eq i64 %n.vec290, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader198.us.us232

.preheader198.us.us232:                           ; preds = %.preheader198.us.us232.preheader, %._crit_edge.split.split.us.us.us
  %indvar282 = phi i32 [ 0, %.preheader198.us.us232.preheader ], [ %indvar.next283, %._crit_edge.split.split.us.us.us ] ; 2 uses
  %.0190213.us.us233 = phi i32 [ 0, %.preheader198.us.us232.preheader ], [ %i.qh, %._crit_edge.split.split.us.us.us ] ; 2 uses
  %i.ov = mul i32 %i.u, %indvar282
  %i.ow = lshr exact i32 %.0190213.us.us233, 1
  %i.ox = mul nsw i32 %i.ow, %i.u
  br label %.preheader197.us207.us.us

.preheader197.us207.us.us:                        ; preds = %..preheader196_crit_edge.us212.us.us, %.preheader198.us.us232
  %indvar284 = phi i32 [ %indvar.next285, %..preheader196_crit_edge.us212.us.us ], [ 0, %.preheader198.us.us232 ] ; 2 uses
  %.0191206.us208.us.us = phi i32 [ %i.qf, %..preheader196_crit_edge.us212.us.us ], [ 0, %.preheader198.us.us232 ] ; 2 uses
  %i.oy = lshr exact i32 %.0191206.us208.us.us, 1
  %i.oz = mul nsw i32 %i.oy, %i.s
  %i.pa = add i32 %i.oz, %i.ox                    ; 6 uses
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.scevcheck281

vector.scevcheck281:                              ; preds = %.preheader197.us207.us.us
  %i.pb = mul i32 %i.s, %indvar284
  %i.pc = add i32 %i.ov, %i.pb                    ; 2 uses
  %i.pd = add i32 %i.pc, %i.ot
  %i.pe = icmp slt i32 %i.pd, %i.pc
  %i.pf = or i1 %i.pe, %i.ou
  br i1 %i.pf, label %scalar.ph286.preheader, label %vector.body291

vector.body291:                                   ; preds = %vector.scevcheck281, %vector.body291
  %index292 = phi i64 [ %index.next293, %vector.body291 ], [ 0, %vector.scevcheck281 ] ; 2 uses
  %i.pg = trunc nuw nsw i64 %index292 to i32
  %i.ph = add i32 %i.pa, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pi ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store <2 x double> zeroinitializer, ptr %i.pj, align 8, !tbaa !44
  store <2 x double> zeroinitializer, ptr %i.pk, align 8, !tbaa !44
  %index.next293 = add nuw i64 %index292, 4       ; 2 uses
  %i.pl = icmp eq i64 %index.next293, %n.vec290
  br i1 %i.pl, label %middle.block294, label %vector.body291, !llvm.loop !199

middle.block294:                                  ; preds = %vector.body291
  br i1 %cmp.n295, label %..preheader196_crit_edge.us212.us.us, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %vector.scevcheck281, %.preheader197.us207.us.us, %middle.block294
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck281 ], [ 0, %.preheader197.us207.us.us ], [ %n.vec290, %middle.block294 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph286.prol.loopexit, label %scalar.ph286.prol

scalar.ph286.prol:                                ; preds = %scalar.ph286.preheader, %scalar.ph286.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph286.prol ], [ %indvars.iv.ph, %scalar.ph286.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph286.prol ], [ 0, %scalar.ph286.preheader ]
  %i.pm = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.pn = add i32 %i.pa, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.po
  store double 0.000000e+00, ptr %i.pp, align 8, !tbaa !44
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph286.prol.loopexit, label %scalar.ph286.prol, !llvm.loop !200

scalar.ph286.prol.loopexit:                       ; preds = %scalar.ph286.prol, %scalar.ph286.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph286.preheader ], [ %indvars.iv.next.prol, %scalar.ph286.prol ]
  %i.pq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.pr = icmp ugt i64 %i.pq, -4
  br i1 %i.pr, label %..preheader196_crit_edge.us212.us.us, label %scalar.ph286.preheader.new

scalar.ph286.preheader.new:                       ; preds = %scalar.ph286.prol.loopexit
  %invariant.op = add i32 1, %i.pa
  %invariant.op302 = add i32 2, %i.pa
  %invariant.op304 = add i32 3, %i.pa
  br label %scalar.ph286

scalar.ph286:                                     ; preds = %scalar.ph286, %scalar.ph286.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph286.preheader.new ], [ %indvars.iv.next.3, %scalar.ph286 ] ; 5 uses
  %i.ps = trunc nuw nsw i64 %indvars.iv to i32
  %i.pt = add i32 %i.pa, %i.ps
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pu
  store double 0.000000e+00, ptr %i.pv, align 8, !tbaa !44
  %i.pw = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.pw, %invariant.op
  %i.px = sext i32 %.reass to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.px
  store double 0.000000e+00, ptr %i.py, align 8, !tbaa !44
  %i.pz = trunc i64 %indvars.iv to i32
  %.reass303 = add i32 %i.pz, %invariant.op302
  %i.qa = sext i32 %.reass303 to i64
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.qa
  store double 0.000000e+00, ptr %i.qb, align 8, !tbaa !44
  %i.qc = trunc i64 %indvars.iv to i32
  %.reass305 = add i32 %i.qc, %invariant.op304
  %i.qd = sext i32 %.reass305 to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.qd
  store double 0.000000e+00, ptr %i.qe, align 8, !tbaa !44
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..preheader196_crit_edge.us212.us.us, label %scalar.ph286, !llvm.loop !201

..preheader196_crit_edge.us212.us.us:             ; preds = %scalar.ph286.prol.loopexit, %scalar.ph286, %middle.block294
  %i.qf = add nuw nsw i32 %.0191206.us208.us.us, 2 ; 2 uses
  %i.qg = icmp slt i32 %i.qf, %i.ak
  %indvar.next285 = add i32 %indvar284, 1
  br i1 %i.qg, label %.preheader197.us207.us.us, label %._crit_edge.split.split.us.us.us, !llvm.loop !197

._crit_edge.split.split.us.us.us:                 ; preds = %..preheader196_crit_edge.us212.us.us
  %i.qh = add nuw nsw i32 %.0190213.us.us233, 2   ; 2 uses
  %i.qi = icmp slt i32 %i.qh, %i.ai
  %indvar.next283 = add i32 %indvar282, 1
  br i1 %i.qi, label %.preheader198.us.us232, label %._crit_edge216, !llvm.loop !198

._crit_edge216:                                   ; preds = %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us, %.preheader198.lr.ph.split.us.split, %.preheader198.lr.ph, %bb.b
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263
  br i1 %exitcond264.not, label %._crit_edge, label %bb.b, !llvm.loop !202

._crit_edge:                                      ; preds = %._crit_edge216, %bb.a
  %i.qj = tail call i64 (...) @CycleTime() #10
  %i.qk = sub i64 %i.qj, %i.a
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.b ; 2 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !63
  %i.qo = add i64 %i.qk, %i.qn
  store i64 %i.qo, ptr %i.qm, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @restriction(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.._crit_edge113_crit_edge

.._crit_edge113_crit_edge:                        ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge113

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = sext i32 %3 to i64
  %i.i = sext i32 %2 to i64
  %wide.trip.count122 = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv119 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next120, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.f, i64 %indvars.iv119
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr [216 x i8], ptr %i.l, i64 %i.g ; 10 uses
  %i.n = getelementptr i8, ptr %i.m, i64 260
  %i.o = load i32, ptr %i.n, align 4, !tbaa !67
  %i.p = getelementptr i8, ptr %i.m, i64 264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !65   ; 4 uses
  %i.r = getelementptr i8, ptr %i.m, i64 268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66   ; 4 uses
  %i.t = getelementptr i8, ptr %i.m, i64 236
  %i.u = load i32, ptr %i.t, align 4, !tbaa !70   ; 3 uses
  %i.v = getelementptr i8, ptr %i.m, i64 240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 244
  %i.y = load i32, ptr %i.x, align 4, !tbaa !68   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !4 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds [8 x i8], ptr %5, i64 %i.h
  %i.ad = load ptr, ptr %6, align 8, !tbaa !42    ; 17 uses
  %7 = extractelement <2 x i32> %i.ac, i64 0      ; 12 uses
  %8 = add i32 %7, 1                              ; 2 uses
  %9 = extractelement <2 x i32> %i.ac, i64 1      ; 19 uses
  %i.ae = add i32 %8, %9                          ; 3 uses
  %i.af = mul i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ag ; 24 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 392
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 3 uses
  %i.am = add i32 %i.q, 1
  %i.an = add i32 %i.am, %i.s
  %i.ao = mul i32 %i.an, %i.o
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ap ; 2 uses
  %i.ar = icmp sgt i32 %i.y, 0
  %i.as = icmp sgt i32 %i.w, 0
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = icmp sgt i32 %i.u, 0
  %or.cond129 = select i1 %or.cond, i1 %i.at, i1 false
  br i1 %or.cond129, label %.preheader102.us.us.preheader, label %._crit_edge

.preheader102.us.us.preheader:                    ; preds = %bb.b
  %i.au = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 6 uses
  %i.av = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.aw = shl i32 %9, 1
  %i.ax = shl i32 %7, 1                           ; 2 uses
  %i.ay = shufflevector <4 x i32> <i32 1, i32 0, i32 1, i32 poison>, <4 x i32> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.az = add <4 x i32> %i.au, %i.ay
  %i.ba = shl nsw i64 %i.ap, 3
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ba
  %i.bb = add nsw i64 %i.ap, %wide.trip.count
  %i.bc = shl nsw i64 %i.bb, 3
  %scevgep153 = getelementptr i8, ptr %i.al, i64 %i.bc
  %i.bd = shl nsw i64 %i.ag, 3                    ; 9 uses
  %scevgep155 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %i.be = shl i32 %9, 1
  %i.bf = shl i32 %7, 1
  %scevgep157 = getelementptr i8, ptr %i.ad, i64 -8
  %i.bg = shl nuw nsw i64 %wide.trip.count, 4
  %i.bh = add nsw i64 %i.bg, %i.bd                ; 8 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.bh
  %scevgep160 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %i.bi = add i32 %7, %9
  %scevgep162 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.bh
  %scevgep165 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %i.bj = add i32 %9, 1
  %scevgep167 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.bh
  %scevgep170 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %scevgep172 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.bh
  %scevgep175 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %scevgep177 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.bh
  %scevgep180 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %scevgep182 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.bh
  %scevgep185 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %scevgep187 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.bh
  %scevgep190 = getelementptr i8, ptr %i.ad, i64 %i.bd
  %scevgep192 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.bh
  %10 = shufflevector <2 x i32> <i32 1, i32 poison>, <2 x i32> %i.ac, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.q, i64 1
  %min.iters.check = icmp ult i32 %i.u, 27
  %i.bm = trunc nsw i64 %i.av to i32
  %i.bn = insertelement <8 x i32> poison, i32 %i.bm, i64 0
  %i.bo = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bp = icmp ugt i64 %i.av, 4294967295
  %i.bq = shl <8 x i32> %i.bo, <i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.br = trunc nsw i64 %i.av to i32
  %mul.result150 = shl i32 %i.br, 1
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %.preheader102.us.us

.preheader102.us.us:                              ; preds = %.preheader102.us.us.preheader, %._crit_edge105.split.us.us.us
  %.0100106.us.us = phi i32 [ %i.jp, %._crit_edge105.split.us.us.us ], [ 0, %.preheader102.us.us.preheader ] ; 7 uses
  %i.bs = mul i32 %i.s, %.0100106.us.us
  %i.bt = mul i32 %i.be, %.0100106.us.us          ; 8 uses
  %i.bu = add i32 %i.ae, %i.bt
  %i.bv = add i32 %i.bi, %i.bt
  %i.bw = add i32 %i.bj, %i.bt
  %i.bx = add i32 %9, %i.bt
  %i.by = add i32 %8, %i.bt
  %i.bz = add i32 %7, %i.bt
  %i.ca = or disjoint i32 %i.bt, 1
  %i.cb = mul i32 %i.s, %.0100106.us.us
  %i.cc = mul i32 %i.aw, %.0100106.us.us          ; 3 uses
  %i.cd = insertelement <2 x i32> poison, i32 %i.cc, i64 0
  %11 = shufflevector <2 x i32> %i.cd, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = or disjoint <2 x i32> %10, %11
  %12 = add <2 x i32> %10, %11
  %i.cf = insertelement <4 x i32> poison, i32 %i.cc, i64 0 ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ch = add <4 x i32> %i.az, %i.cg
  %i.ci = add i32 %i.ae, %i.cc
  %i.cj = mul nsw i32 %.0100106.us.us, %i.s
  %i.ck = mul i32 %.0100106.us.us, %9
  %i.cl = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = insertelement <8 x i32> %i.cl, i32 %i.cb, i64 1
  %14 = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <2 x i32> %i.ce, <2 x i32> %12, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <8 x i32> %13, <8 x i32> %15, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <8 x i32> %16, <8 x i32> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %invariant.op = add <8 x i32> %i.cm, %i.bq
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader102.us.us
  %.099104.us.us.us = phi i32 [ 0, %.preheader102.us.us ], [ %i.jo, %._crit_edge.us.us.us ] ; 7 uses
  %i.cn = mul i32 %i.q, %.099104.us.us.us
  %i.co = add i32 %i.bs, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 3                    ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.cq ; 8 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.cq ; 8 uses
  %i.cr = mul i32 %i.bf, %.099104.us.us.us        ; 8 uses
  %i.cs = add i32 %i.bu, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 3                    ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.cu
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.cu
  %i.cv = add i32 %i.bv, %i.cr
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 3                    ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.cx
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.cx
  %i.cy = add i32 %i.bw, %i.cr
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.da
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.da
  %i.db = add i32 %i.bx, %i.cr
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 3                    ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.dd
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.dd
  %i.de = add i32 %i.by, %i.cr
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3                    ; 2 uses
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.dg
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.dg
  %i.dh = add i32 %i.bz, %i.cr
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3                    ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.dj
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.dj
  %i.dk = add i32 %i.ca, %i.cr
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 3                    ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.dm
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.dm
  %i.dn = add i32 %i.bt, %i.cr
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3                    ; 2 uses
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.dp
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.dp
  %i.dq = mul nsw i32 %.099104.us.us.us, %i.q
  %i.dr = add i32 %i.dq, %i.cj                    ; 2 uses
  %i.ds = mul i32 %.099104.us.us.us, %7
  %reass.add.us.us.us = add i32 %i.ds, %i.ck      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.us
  %i.dt = insertelement <2 x i32> poison, i32 %.099104.us.us.us, i64 0
  %i.du = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dv = mul <2 x i32> %i.bl, %i.du
  %i.dw = shufflevector <2 x i32> %i.dv, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 2 uses
  %i.dx = mul i32 %i.ax, %.099104.us.us.us
  %i.dy = add i32 %i.ci, %i.dx                    ; 2 uses
  %i.dz = add <8 x i32> %i.cm, %i.dw
  %.reass = add <8 x i32> %i.dw, %invariant.op
  %i.ea = icmp slt <8 x i32> %.reass, %i.dz
  %i.eb = add i32 %i.dy, %mul.result150
  %i.ec = icmp slt i32 %i.eb, %i.dy
  %i.ed = bitcast <8 x i1> %i.ea to i8
  %i.ee = icmp ne i8 %i.ed, 0
  %op.rdx = or i1 %i.ee, %i.ec
  %op.rdx222 = or i1 %op.rdx, %i.bp
  br i1 %op.rdx222, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep152, %scevgep159
  %bound1 = icmp ult ptr %scevgep156, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  %bound0195 = icmp ult ptr %scevgep152, %scevgep164
  %bound1196 = icmp ult ptr %scevgep161, %scevgep154
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx = or i1 %found.conflict, %found.conflict197
  %bound0198 = icmp ult ptr %scevgep152, %scevgep169
  %bound1199 = icmp ult ptr %scevgep166, %scevgep154
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx, %found.conflict200
  %bound0202 = icmp ult ptr %scevgep152, %scevgep174
  %bound1203 = icmp ult ptr %scevgep171, %scevgep154
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %scevgep152, %scevgep179
  %bound1207 = icmp ult ptr %scevgep176, %scevgep154
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %scevgep152, %scevgep184
  %bound1211 = icmp ult ptr %scevgep181, %scevgep154
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %scevgep152, %scevgep189
  %bound1215 = icmp ult ptr %scevgep186, %scevgep154
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %scevgep152, %scevgep194
  %bound1219 = icmp ult ptr %scevgep191, %scevgep154
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  br i1 %conflict.rdx221, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ef = trunc i64 %index to i32                 ; 3 uses
  %i.eg = or disjoint i32 %i.ef, 1
  %i.eh = add i32 %i.dr, %i.ef
  %i.ei = add i32 %reass.add.us.us.us, %i.ef
  %i.ej = add i32 %reass.add.us.us.us, %i.eg
  %i.ek = shl i32 %i.ei, 1                        ; 4 uses
  %i.el = shl i32 %i.ej, 1                        ; 4 uses
  %i.em = sext i32 %i.ek to i64
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.em
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.en
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !44, !alias.scope !203
  %i.er = load double, ptr %i.ep, align 8, !tbaa !44, !alias.scope !203
  %i.es = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.er, i64 1
  %i.eu = or disjoint i32 %i.ek, 1                ; 3 uses
  %i.ev = or disjoint i32 %i.el, 1                ; 3 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ew
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ex
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !44, !alias.scope !206
  %i.fb = load double, ptr %i.ez, align 8, !tbaa !44, !alias.scope !206
  %i.fc = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1
  %i.fe = fadd <2 x double> %i.et, %i.fd
  %i.ff = add nsw i32 %i.ek, %7                   ; 2 uses
  %i.fg = add nsw i32 %i.el, %7                   ; 2 uses
  %i.fh = sext i32 %i.ff to i64
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fh
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fi
  %i.fl = load double, ptr %i.fj, align 8, !tbaa !44, !alias.scope !208
  %i.fm = load double, ptr %i.fk, align 8, !tbaa !44, !alias.scope !208
  %i.fn = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1
  %i.fp = fadd <2 x double> %i.fe, %i.fo
  %i.fq = add nsw i32 %i.eu, %7                   ; 2 uses
  %i.fr = add nsw i32 %i.ev, %7                   ; 2 uses
  %i.fs = sext i32 %i.fq to i64
  %i.ft = sext i32 %i.fr to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fs
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ft
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !44, !alias.scope !210
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !44, !alias.scope !210
  %i.fy = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fx, i64 1
  %i.ga = fadd <2 x double> %i.fp, %i.fz
  %i.gb = add nsw i32 %i.ek, %9
  %i.gc = add nsw i32 %i.el, %9
  %i.gd = sext i32 %i.gb to i64
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.gd
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ge
  %i.gh = load double, ptr %i.gf, align 8, !tbaa !44, !alias.scope !212
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !44, !alias.scope !212
  %i.gj = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gi, i64 1
  %i.gl = fadd <2 x double> %i.ga, %i.gk
  %i.gm = add nsw i32 %i.eu, %9
  %i.gn = add nsw i32 %i.ev, %9
  %i.go = sext i32 %i.gm to i64
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.go
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.gp
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !44, !alias.scope !214
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !44, !alias.scope !214
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1
  %i.gw = fadd <2 x double> %i.gl, %i.gv
  %i.gx = add nsw i32 %i.ff, %9
  %i.gy = add nsw i32 %i.fg, %9
  %i.gz = sext i32 %i.gx to i64
  %i.ha = sext i32 %i.gy to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.gz
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ha
  %i.hd = load double, ptr %i.hb, align 8, !tbaa !44, !alias.scope !216
  %i.he = load double, ptr %i.hc, align 8, !tbaa !44, !alias.scope !216
  %i.hf = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.he, i64 1
  %i.hh = fadd <2 x double> %i.gw, %i.hg
  %i.hi = add nsw i32 %i.fq, %9
  %i.hj = add nsw i32 %i.fr, %9
  %i.hk = sext i32 %i.hi to i64
  %i.hl = sext i32 %i.hj to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hk
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hl
  %i.ho = load double, ptr %i.hm, align 8, !tbaa !44, !alias.scope !218
  %i.hp = load double, ptr %i.hn, align 8, !tbaa !44, !alias.scope !218
  %i.hq = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hp, i64 1
  %i.hs = fadd <2 x double> %i.hh, %i.hr
  %i.ht = fmul <2 x double> %i.hs, splat (double 1.250000e-01)
  %i.hu = sext i32 %i.eh to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.hu
  store <2 x double> %i.ht, ptr %i.hv, align 8, !tbaa !44, !alias.scope !220, !noalias !222
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !223

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader.us.us.us
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.us.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.hy = add i32 %i.dr, %i.hx
  %reass.add101.us.us.us = add i32 %reass.add.us.us.us, %i.hx
  %reass.mul.us.us.us = shl i32 %reass.add101.us.us.us, 1 ; 4 uses
  %i.hz = sext i32 %reass.mul.us.us.us to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !44
  %i.ic = or disjoint i32 %reass.mul.us.us.us, 1  ; 3 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !44
  %i.ig = fadd double %i.ib, %i.if
  %i.ih = add nsw i32 %reass.mul.us.us.us, %7     ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !44
  %i.il = fadd double %i.ig, %i.ik
  %i.im = add nsw i32 %i.ic, %7                   ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !44
  %i.iq = fadd double %i.il, %i.ip
  %i.ir = add nsw i32 %reass.mul.us.us.us, %9
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !44
  %i.iv = fadd double %i.iq, %i.iu
  %i.iw = add nsw i32 %i.ic, %9
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !44
  %i.ja = fadd double %i.iv, %i.iz
  %i.jb = add nsw i32 %i.ih, %9
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.jc
  %i.je = load double, ptr %i.jd, align 8, !tbaa !44
  %i.jf = fadd double %i.ja, %i.je
  %i.jg = add nsw i32 %i.im, %9
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !44
  %i.jk = fadd double %i.jf, %i.jj
  %i.jl = fmul double %i.jk, 1.250000e-01
  %i.jm = sext i32 %i.hy to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.jm
  store double %i.jl, ptr %i.jn, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !224

._crit_edge.us.us.us:                             ; preds = %scalar.ph
  %i.jo = add nuw nsw i32 %.099104.us.us.us, 1    ; 2 uses
  %exitcond117.not = icmp eq i32 %i.jo, %i.w
  br i1 %exitcond117.not, label %._crit_edge105.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !225

._crit_edge105.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.jp = add nuw nsw i32 %.0100106.us.us, 1      ; 2 uses
  %exitcond118.not = icmp eq i32 %i.jp, %i.y
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader102.us.us, !llvm.loop !226

._crit_edge:                                      ; preds = %._crit_edge105.split.us.us.us, %bb.b
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge113, label %bb.b, !llvm.loop !227

._crit_edge113:                                   ; preds = %._crit_edge, %.._crit_edge113_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge113_crit_edge ], [ %i.g, %._crit_edge ]
  %i.jq = tail call i64 (...) @CycleTime() #10
  %i.jr = sub i64 %i.jq, %i.a
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.js, i64 %.pre-phi ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !63
  %i.jv = add i64 %i.jr, %i.ju
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @restriction_betas(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.._crit_edge231_crit_edge

.._crit_edge231_crit_edge:                        ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge231

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count258 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge224
  %indvars.iv255 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next256, %._crit_edge224 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv255
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.b ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !67   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !65   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66   ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !70   ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !69   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !68   ; 4 uses
  %i.y = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.h ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !67  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !4 ; 5 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 1   ; 28 uses
  %i.ae = extractelement <2 x i32> %i.ac, i64 0   ; 25 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 9 uses
  %i.aj = mul i32 %i.ad, %i.aa
  %i.ak = sext i32 %i.aj to i64                   ; 6 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = mul i32 %i.ae, %i.aa
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = sext i32 %i.aa to i64                   ; 6 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42 ; 3 uses
  %i.av = mul i32 %i.r, %i.n
  %i.aw = sext i32 %i.av to i64                   ; 6 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = mul i32 %i.p, %i.n
  %i.az = sext i32 %i.ay to i64                   ; 6 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = sext i32 %i.n to i64                    ; 6 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %i.x, 0
  br i1 %i.bd, label %.preheader200.lr.ph, label %._crit_edge224

.preheader200.lr.ph:                              ; preds = %bb.b
  %i.be = icmp sgt i32 %i.v, 0
  %i.bf = icmp sgt i32 %i.t, 0
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %.preheader200.us.us.preheader, label %.preheader199.lr.ph

.preheader200.us.us.preheader:                    ; preds = %.preheader200.lr.ph
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 6 uses
  %i.bg = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.bh = shl i32 %i.ad, 1
  %i.bi = shl i32 %i.ae, 1
  %i.bj = add i32 %i.ae, %i.ad
  %i.bk = add nsw i64 %i.bb, %i.az
  %i.bl = add nsw i64 %i.bk, %i.aw                ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep410 = getelementptr i8, ptr %i.au, i64 %i.bm
  %i.bn = add nsw i64 %i.bl, %wide.trip.count
  %i.bo = shl nsw i64 %i.bn, 3
  %scevgep412 = getelementptr i8, ptr %i.au, i64 %i.bo
  %i.bp = shl nsw i64 %i.ap, 3                    ; 2 uses
  %i.bq = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.br = add nsw i64 %i.bp, %i.bq
  %i.bs = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.bt = add nsw i64 %i.br, %i.bs                ; 4 uses
  %scevgep414 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %i.bu = add i32 %i.ae, %i.ad
  %i.bv = shl i32 %i.ad, 1
  %i.bw = shl i32 %i.ae, 1
  %scevgep416 = getelementptr i8, ptr %i.ai, i64 -8
  %i.bx = shl nuw nsw i64 %wide.trip.count, 4
  %i.by = add nsw i64 %i.bx, %i.bp
  %i.bz = add nsw i64 %i.by, %i.bq
  %i.ca = add nsw i64 %i.bz, %i.bs                ; 4 uses
  %scevgep417 = getelementptr i8, ptr %scevgep416, i64 %i.ca
  %scevgep419 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %scevgep421 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep422 = getelementptr i8, ptr %scevgep421, i64 %i.ca
  %scevgep424 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %scevgep426 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.ca
  %scevgep429 = getelementptr i8, ptr %i.ai, i64 %i.bt
  %scevgep431 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.ca
  %i.cb = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %min.iters.check450 = icmp ult i32 %i.t, 25
  %i.cc = trunc nsw i64 %i.bg to i32
  %i.cd = trunc nsw i64 %i.bg to i32
  %i.ce = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.cf = icmp ugt i64 %i.bg, 4294967295
  %i.cg = shl <4 x i32> %i.ce, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> zeroinitializer
  %.neg = or i64 %wide.trip.count, -2
  %n.vec453 = add nsw i64 %.neg, %wide.trip.count ; 2 uses
  br label %.preheader200.us.us

.preheader200.us.us:                              ; preds = %.preheader200.us.us.preheader, %._crit_edge203.split.us.us.us
  %.0185204.us.us = phi i32 [ %i.hi, %._crit_edge203.split.us.us.us ], [ 0, %.preheader200.us.us.preheader ] ; 7 uses
  %i.ci = mul i32 %i.r, %.0185204.us.us
  %i.cj = mul i32 %i.bv, %.0185204.us.us          ; 4 uses
  %i.ck = add i32 %i.bu, %i.cj
  %i.cl = add i32 %i.ad, %i.cj
  %i.cm = add i32 %i.ae, %i.cj
  %i.cn = mul i32 %i.r, %.0185204.us.us
  %i.co = mul i32 %i.bh, %.0185204.us.us          ; 3 uses
  %i.cp = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %i.cq = add i32 %i.bj, %i.co
  %i.cr = mul nsw i32 %.0185204.us.us, %i.r
  %i.cs = mul i32 %.0185204.us.us, %i.ad
  %i.ct = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.cu = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.cv = add <4 x i32> %i.cb, %i.cu
  %i.cw = shufflevector <4 x i32> %i.ct, <4 x i32> %i.cv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.co, i64 3 ; 2 uses
  %invariant.op = add <4 x i32> %i.cx, %i.ch
  br label %.preheader197.us.us.us

.preheader197.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader200.us.us
  %.0182202.us.us.us = phi i32 [ 0, %.preheader200.us.us ], [ %i.hh, %._crit_edge.us.us.us ] ; 7 uses
  %i.cy = mul i32 %i.p, %.0182202.us.us.us
  %i.cz = add i32 %i.ci, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3                    ; 2 uses
  %scevgep411 = getelementptr i8, ptr %scevgep410, i64 %i.db ; 4 uses
  %scevgep413 = getelementptr i8, ptr %scevgep412, i64 %i.db ; 4 uses
  %i.dc = mul i32 %i.bw, %.0182202.us.us.us       ; 4 uses
  %i.dd = add i32 %i.ck, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 3                    ; 2 uses
end_hunk_0
