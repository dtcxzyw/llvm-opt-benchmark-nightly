begin_hunk_0_@residual_and_restriction:bb.a
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !44
  %i.nx = sub nsw i32 %i.ly, %i.ad
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ny
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !44
  %i.ob = fsub double %i.mg, %i.oa
  %i.oc = fneg double %i.nw
  %i.od = tail call double @llvm.fmuladd.f64(double %i.oc, double %i.ob, double %i.nu)
  %i.oe = fneg double %i.od
  %i.of = fmul double %i.bz, %i.oe
  %i.og = tail call double @llvm.fmuladd.f64(double %i.me, double %i.mg, double %i.of)
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.mb
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !44
  %i.oj = fsub double %i.oi, %i.og
  %i.ok = sext i32 %i.ma to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ok ; 2 uses
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
  %i.m = getelementptr [216 x i8], ptr %i.l, i64 %i.g ; 11 uses
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
  %4 = load i32, ptr %i.ab, align 8, !tbaa !65    ; 15 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %6 = load i32, ptr %5, align 4, !tbaa !66       ; 21 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.h
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 17 uses
  %i.ag = add i32 %4, 1                           ; 2 uses
  %i.ah = add i32 %i.ag, %6                       ; 3 uses
  %i.ai = mul i32 %i.ah, %i.aa
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aj ; 24 uses
  %i.al = getelementptr i8, ptr %i.m, i64 392
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42 ; 3 uses
  %i.ap = add i32 %i.q, 1
  %i.aq = add i32 %i.ap, %i.s
  %i.ar = mul i32 %i.aq, %i.o
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.as ; 2 uses
  %i.au = icmp sgt i32 %i.y, 0
  %i.av = icmp sgt i32 %i.w, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = icmp sgt i32 %i.u, 0
  %or.cond129 = select i1 %or.cond, i1 %i.aw, i1 false
  br i1 %or.cond129, label %.preheader102.us.us.preheader, label %._crit_edge

.preheader102.us.us.preheader:                    ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 6 uses
  %i.ax = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.ay = shl i32 %6, 1
  %i.az = shl i32 %4, 1                           ; 2 uses
  %7 = add i32 %4, 1
  %8 = insertelement <2 x i32> poison, i32 %6, i64 0
  %9 = add i32 %4, %6
  %i.ba = shl nsw i64 %i.as, 3
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.ba
  %i.bb = add nsw i64 %i.as, %wide.trip.count
  %i.bc = shl nsw i64 %i.bb, 3
  %scevgep153 = getelementptr i8, ptr %i.ao, i64 %i.bc
  %i.bd = shl nsw i64 %i.aj, 3                    ; 9 uses
  %scevgep155 = getelementptr i8, ptr %i.af, i64 %i.bd
  %i.be = shl i32 %6, 1
  %i.bf = shl i32 %4, 1
  %scevgep157 = getelementptr i8, ptr %i.af, i64 -8
  %i.bg = shl nuw nsw i64 %wide.trip.count, 4
  %i.bh = add nsw i64 %i.bg, %i.bd                ; 8 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.bh
  %scevgep160 = getelementptr i8, ptr %i.af, i64 %i.bd
  %i.bi = add i32 %4, %6
  %scevgep162 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.bh
  %scevgep165 = getelementptr i8, ptr %i.af, i64 %i.bd
  %i.bj = add i32 %6, 1
  %scevgep167 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.bh
  %scevgep170 = getelementptr i8, ptr %i.af, i64 %i.bd
  %scevgep172 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.bh
  %scevgep175 = getelementptr i8, ptr %i.af, i64 %i.bd
  %scevgep177 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.bh
  %scevgep180 = getelementptr i8, ptr %i.af, i64 %i.bd
  %scevgep182 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.bh
  %scevgep185 = getelementptr i8, ptr %i.af, i64 %i.bd
  %scevgep187 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.bh
  %scevgep190 = getelementptr i8, ptr %i.af, i64 %i.bd
  %scevgep192 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.bh
  %10 = insertelement <4 x i32> poison, i32 %7, i64 0
  %11 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %12 = add <4 x i32> %11, <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x i32> %10, <4 x i32> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x i32> %13, i32 %9, i64 3
  %i.bk = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.q, i64 1
  %min.iters.check = icmp ult i32 %i.u, 27
  %i.bm = trunc nsw i64 %i.ax to i32
  %i.bn = insertelement <8 x i32> poison, i32 %i.bm, i64 0
  %i.bo = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bp = icmp ugt i64 %i.ax, 4294967295
  %i.bq = shl <8 x i32> %i.bo, <i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.br = trunc nsw i64 %i.ax to i32
  %mul.result150 = shl i32 %i.br, 1
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %.preheader102.us.us

.preheader102.us.us:                              ; preds = %.preheader102.us.us.preheader, %._crit_edge105.split.us.us.us
  %.0100106.us.us = phi i32 [ %i.jv, %._crit_edge105.split.us.us.us ], [ 0, %.preheader102.us.us.preheader ] ; 7 uses
  %i.bs = mul i32 %i.s, %.0100106.us.us
  %i.bt = mul i32 %i.be, %.0100106.us.us          ; 8 uses
  %i.bu = add i32 %i.ah, %i.bt
  %i.bv = add i32 %i.bi, %i.bt
  %i.bw = add i32 %i.bj, %i.bt
  %i.bx = add i32 %6, %i.bt
  %i.by = add i32 %i.ag, %i.bt
  %i.bz = add i32 %4, %i.bt
  %i.ca = or disjoint i32 %i.bt, 1
  %i.cb = mul i32 %i.s, %.0100106.us.us
  %i.cc = mul i32 %i.ay, %.0100106.us.us          ; 4 uses
  %i.cd = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %i.ce = insertelement <2 x i32> %i.cd, i32 %i.cc, i64 1
  %i.cf = or <2 x i32> %i.ce, <i32 0, i32 1>
  %i.cg = add i32 %4, %i.cc
  %i.ch = insertelement <4 x i32> poison, i32 %i.cc, i64 0 ; 2 uses
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cj = add <4 x i32> %14, %i.ci
  %i.ck = add i32 %i.ah, %i.cc
  %i.cl = mul nsw i32 %.0100106.us.us, %i.s
  %i.cm = mul i32 %.0100106.us.us, %6
  %i.cn = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cp = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <8 x i32> %i.cn, <8 x i32> %i.cp, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = insertelement <8 x i32> %i.cq, i32 %i.cg, i64 3
  %i.cs = shufflevector <8 x i32> %i.cr, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %invariant.op = add <8 x i32> %i.cs, %i.bq
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader102.us.us
  %.099104.us.us.us = phi i32 [ 0, %.preheader102.us.us ], [ %i.ju, %._crit_edge.us.us.us ] ; 7 uses
  %i.ct = mul i32 %i.q, %.099104.us.us.us
  %i.cu = add i32 %i.bs, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3                    ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.cw ; 8 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.cw ; 8 uses
  %i.cx = mul i32 %i.bf, %.099104.us.us.us        ; 8 uses
  %i.cy = add i32 %i.bu, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3                    ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.da
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.da
  %i.db = add i32 %i.bv, %i.cx
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 3                    ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.dd
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.dd
  %i.de = add i32 %i.bw, %i.cx
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.dg
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.dg
  %i.dh = add i32 %i.bx, %i.cx
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3                    ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.dj
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.dj
  %i.dk = add i32 %i.by, %i.cx
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 3                    ; 2 uses
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.dm
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.dm
  %i.dn = add i32 %i.bz, %i.cx
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3                    ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.dp
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.dp
  %i.dq = add i32 %i.ca, %i.cx
  %i.dr = sext i32 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 3                    ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.ds
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.ds
  %i.dt = add i32 %i.bt, %i.cx
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 3                    ; 2 uses
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.dv
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.dv
  %i.dw = mul nsw i32 %.099104.us.us.us, %i.q
  %i.dx = add i32 %i.dw, %i.cl                    ; 2 uses
  %i.dy = mul i32 %.099104.us.us.us, %4
  %reass.add.us.us.us = add i32 %i.dy, %i.cm      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.us
  %i.dz = insertelement <2 x i32> poison, i32 %.099104.us.us.us, i64 0
  %i.ea = shufflevector <2 x i32> %i.dz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eb = mul <2 x i32> %i.bl, %i.ea
  %i.ec = shufflevector <2 x i32> %i.eb, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 2 uses
  %i.ed = mul i32 %i.az, %.099104.us.us.us
  %i.ee = add i32 %i.ck, %i.ed                    ; 2 uses
  %i.ef = add <8 x i32> %i.cs, %i.ec
  %.reass = add <8 x i32> %i.ec, %invariant.op
  %i.eg = icmp slt <8 x i32> %.reass, %i.ef
  %i.eh = add i32 %i.ee, %mul.result150
  %i.ei = icmp slt i32 %i.eh, %i.ee
  %i.ej = bitcast <8 x i1> %i.eg to i8
  %i.ek = icmp ne i8 %i.ej, 0
  %op.rdx = or i1 %i.ek, %i.ei
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
  %i.el = trunc i64 %index to i32                 ; 3 uses
  %i.em = or disjoint i32 %i.el, 1
  %i.en = add i32 %i.dx, %i.el
  %i.eo = add i32 %reass.add.us.us.us, %i.el
  %i.ep = add i32 %reass.add.us.us.us, %i.em
  %i.eq = shl i32 %i.eo, 1                        ; 4 uses
  %i.er = shl i32 %i.ep, 1                        ; 4 uses
  %i.es = sext i32 %i.eq to i64
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.es
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.et
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !44, !alias.scope !203
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !44, !alias.scope !203
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.ex, i64 1
  %i.fa = or disjoint i32 %i.eq, 1                ; 3 uses
  %i.fb = or disjoint i32 %i.er, 1                ; 3 uses
  %i.fc = sext i32 %i.fa to i64
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fc
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fd
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !44, !alias.scope !206
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !44, !alias.scope !206
  %i.fi = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.fh, i64 1
  %i.fk = fadd <2 x double> %i.ez, %i.fj
  %i.fl = add nsw i32 %i.eq, %4                   ; 2 uses
  %i.fm = add nsw i32 %i.er, %4                   ; 2 uses
  %i.fn = sext i32 %i.fl to i64
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fn
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fo
  %i.fr = load double, ptr %i.fp, align 8, !tbaa !44, !alias.scope !208
  %i.fs = load double, ptr %i.fq, align 8, !tbaa !44, !alias.scope !208
  %i.ft = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  %i.fv = fadd <2 x double> %i.fk, %i.fu
  %i.fw = add nsw i32 %i.fa, %4                   ; 2 uses
  %i.fx = add nsw i32 %i.fb, %4                   ; 2 uses
  %i.fy = sext i32 %i.fw to i64
  %i.fz = sext i32 %i.fx to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fy
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fz
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !44, !alias.scope !210
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !44, !alias.scope !210
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fadd <2 x double> %i.fv, %i.gf
  %i.gh = add nsw i32 %i.eq, %6
  %i.gi = add nsw i32 %i.er, %6
  %i.gj = sext i32 %i.gh to i64
  %i.gk = sext i32 %i.gi to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gj
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gk
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !44, !alias.scope !212
  %i.go = load double, ptr %i.gm, align 8, !tbaa !44, !alias.scope !212
  %i.gp = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.go, i64 1
  %i.gr = fadd <2 x double> %i.gg, %i.gq
  %i.gs = add nsw i32 %i.fa, %6
  %i.gt = add nsw i32 %i.fb, %6
  %i.gu = sext i32 %i.gs to i64
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gu
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gv
  %i.gy = load double, ptr %i.gw, align 8, !tbaa !44, !alias.scope !214
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !44, !alias.scope !214
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = fadd <2 x double> %i.gr, %i.hb
  %i.hd = add nsw i32 %i.fl, %6
  %i.he = add nsw i32 %i.fm, %6
  %i.hf = sext i32 %i.hd to i64
  %i.hg = sext i32 %i.he to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.hf
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.hg
  %i.hj = load double, ptr %i.hh, align 8, !tbaa !44, !alias.scope !216
  %i.hk = load double, ptr %i.hi, align 8, !tbaa !44, !alias.scope !216
  %i.hl = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hk, i64 1
  %i.hn = fadd <2 x double> %i.hc, %i.hm
  %i.ho = add nsw i32 %i.fw, %6
  %i.hp = add nsw i32 %i.fx, %6
  %i.hq = sext i32 %i.ho to i64
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.hq
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.hr
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !44, !alias.scope !218
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !44, !alias.scope !218
  %i.hw = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.hv, i64 1
  %i.hy = fadd <2 x double> %i.hn, %i.hx
  %i.hz = fmul <2 x double> %i.hy, splat (double 1.250000e-01)
  %i.ia = sext i32 %i.en to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ia
  store <2 x double> %i.hz, ptr %i.ib, align 8, !tbaa !44, !alias.scope !220, !noalias !222
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %scalar.ph.preheader, label %vector.body, !llvm.loop !223

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader.us.us.us
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.us.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.id = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ie = add i32 %i.dx, %i.id
  %reass.add101.us.us.us = add i32 %reass.add.us.us.us, %i.id
  %reass.mul.us.us.us = shl i32 %reass.add101.us.us.us, 1 ; 4 uses
  %i.if = sext i32 %reass.mul.us.us.us to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !44
  %i.ii = or disjoint i32 %reass.mul.us.us.us, 1  ; 3 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !44
  %i.im = fadd double %i.ih, %i.il
  %i.in = add nsw i32 %reass.mul.us.us.us, %4     ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !44
  %i.ir = fadd double %i.im, %i.iq
  %i.is = add nsw i32 %i.ii, %4                   ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.it
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !44
  %i.iw = fadd double %i.ir, %i.iv
  %i.ix = add nsw i32 %reass.mul.us.us.us, %6
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.iy
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !44
  %i.jb = fadd double %i.iw, %i.ja
  %i.jc = add nsw i32 %i.ii, %6
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jd
  %i.jf = load double, ptr %i.je, align 8, !tbaa !44
  %i.jg = fadd double %i.jb, %i.jf
  %i.jh = add nsw i32 %i.in, %6
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ji
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !44
  %i.jl = fadd double %i.jg, %i.jk
  %i.jm = add nsw i32 %i.is, %6
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !44
  %i.jq = fadd double %i.jl, %i.jp
  %i.jr = fmul double %i.jq, 1.250000e-01
  %i.js = sext i32 %i.ie to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.js
  store double %i.jr, ptr %i.jt, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !224

._crit_edge.us.us.us:                             ; preds = %scalar.ph
  %i.ju = add nuw nsw i32 %.099104.us.us.us, 1    ; 2 uses
  %exitcond117.not = icmp eq i32 %i.ju, %i.w
  br i1 %exitcond117.not, label %._crit_edge105.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !225

._crit_edge105.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.jv = add nuw nsw i32 %.0100106.us.us, 1      ; 2 uses
  %exitcond118.not = icmp eq i32 %i.jv, %i.y
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader102.us.us, !llvm.loop !226

._crit_edge:                                      ; preds = %._crit_edge105.split.us.us.us, %bb.b
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge113, label %bb.b, !llvm.loop !227

._crit_edge113:                                   ; preds = %._crit_edge, %.._crit_edge113_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge113_crit_edge ], [ %i.g, %._crit_edge ]
  %i.jw = tail call i64 (...) @CycleTime() #10
  %i.jx = sub i64 %i.jw, %i.a
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %.pre-phi ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !63
  %i.kb = add i64 %i.jx, %i.ka
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !63
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
  %i.y = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.h ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !67  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %3 = load i32, ptr %i.ab, align 8, !tbaa !65    ; 27 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %5 = load i32, ptr %4, align 4, !tbaa !66       ; 30 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 9 uses
  %i.ag = mul i32 %5, %i.aa
  %i.ah = sext i32 %i.ag to i64                   ; 6 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = mul i32 %3, %i.aa
  %i.ak = sext i32 %i.aj to i64                   ; 6 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sext i32 %i.aa to i64                   ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 3 uses
  %i.as = mul i32 %i.r, %i.n
  %i.at = sext i32 %i.as to i64                   ; 6 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.at
  %i.av = mul i32 %i.p, %i.n
  %i.aw = sext i32 %i.av to i64                   ; 6 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = sext i32 %i.n to i64                    ; 6 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = icmp sgt i32 %i.x, 0
  br i1 %i.ba, label %.preheader200.lr.ph, label %._crit_edge224

.preheader200.lr.ph:                              ; preds = %bb.b
  %i.bb = icmp sgt i32 %i.v, 0
  %i.bc = icmp sgt i32 %i.t, 0
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond, label %.preheader200.us.us.preheader, label %.preheader199.lr.ph

.preheader200.us.us.preheader:                    ; preds = %.preheader200.lr.ph
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 6 uses
  %i.bd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.be = shl i32 %5, 1
  %i.bf = shl i32 %3, 1
  %i.bg = add i32 %3, %5
  %i.bh = add nsw i64 %i.ay, %i.aw
  %i.bi = add nsw i64 %i.bh, %i.at                ; 2 uses
  %i.bj = shl nsw i64 %i.bi, 3
  %scevgep410 = getelementptr i8, ptr %i.ar, i64 %i.bj
  %i.bk = add nsw i64 %i.bi, %wide.trip.count
  %i.bl = shl nsw i64 %i.bk, 3
  %scevgep412 = getelementptr i8, ptr %i.ar, i64 %i.bl
  %i.bm = shl nsw i64 %i.am, 3                    ; 2 uses
  %i.bn = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.bo = add nsw i64 %i.bm, %i.bn
  %i.bp = shl nsw i64 %i.ah, 3                    ; 2 uses
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 4 uses
  %scevgep414 = getelementptr i8, ptr %i.af, i64 %i.bq
  %i.br = add i32 %3, %5
  %i.bs = shl i32 %5, 1
  %i.bt = shl i32 %3, 1
  %scevgep416 = getelementptr i8, ptr %i.af, i64 -8
  %i.bu = shl nuw nsw i64 %wide.trip.count, 4
  %i.bv = add nsw i64 %i.bu, %i.bm
  %i.bw = add nsw i64 %i.bv, %i.bn
  %i.bx = add nsw i64 %i.bw, %i.bp                ; 4 uses
  %scevgep417 = getelementptr i8, ptr %scevgep416, i64 %i.bx
  %scevgep419 = getelementptr i8, ptr %i.af, i64 %i.bq
  %scevgep421 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep422 = getelementptr i8, ptr %scevgep421, i64 %i.bx
  %scevgep424 = getelementptr i8, ptr %i.af, i64 %i.bq
  %scevgep426 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.bx
  %scevgep429 = getelementptr i8, ptr %i.af, i64 %i.bq
  %scevgep431 = getelementptr i8, ptr %i.af, i64 -8
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.bx
  %min.iters.check450 = icmp ult i32 %i.t, 25
  %i.by = trunc nsw i64 %i.bd to i32
  %i.bz = trunc nsw i64 %i.bd to i32
  %i.ca = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.cb = icmp ugt i64 %i.bd, 4294967295
  %i.cc = shl <4 x i32> %i.ca, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> zeroinitializer
  %.neg = or i64 %wide.trip.count, -2
  %n.vec453 = add nsw i64 %.neg, %wide.trip.count ; 2 uses
  br label %.preheader200.us.us

.preheader200.us.us:                              ; preds = %.preheader200.us.us.preheader, %._crit_edge203.split.us.us.us
  %.0185204.us.us = phi i32 [ %i.gy, %._crit_edge203.split.us.us.us ], [ 0, %.preheader200.us.us.preheader ] ; 7 uses
  %i.ce = mul i32 %i.r, %.0185204.us.us
  %i.cf = mul i32 %i.bs, %.0185204.us.us          ; 4 uses
  %i.cg = add i32 %i.br, %i.cf
  %i.ch = add i32 %5, %i.cf
  %i.ci = add i32 %3, %i.cf
  %i.cj = mul i32 %i.r, %.0185204.us.us
  %i.ck = mul i32 %i.be, %.0185204.us.us          ; 4 uses
  %6 = add i32 %3, %i.ck
  %i.cl = add i32 %5, %i.ck
  %7 = add i32 %i.bg, %i.ck
  %i.cm = mul nsw i32 %.0185204.us.us, %i.r
  %8 = mul i32 %.0185204.us.us, %5
  %9 = insertelement <4 x i32> poison, i32 %7, i64 0
  %10 = insertelement <4 x i32> %9, i32 %i.cl, i64 1
  %11 = insertelement <4 x i32> %10, i32 %6, i64 2
  %i.cn = insertelement <4 x i32> %11, i32 %i.ck, i64 3 ; 2 uses
  %invariant.op = add <4 x i32> %i.cn, %i.cd
  br label %.preheader197.us.us.us

.preheader197.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader200.us.us
  %.0182202.us.us.us = phi i32 [ 0, %.preheader200.us.us ], [ %i.gx, %._crit_edge.us.us.us ] ; 7 uses
  %i.co = mul i32 %i.p, %.0182202.us.us.us
  %i.cp = add i32 %i.ce, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 3                    ; 2 uses
  %scevgep411 = getelementptr i8, ptr %scevgep410, i64 %i.cr ; 4 uses
  %scevgep413 = getelementptr i8, ptr %scevgep412, i64 %i.cr ; 4 uses
  %i.cs = mul i32 %i.bt, %.0182202.us.us.us       ; 4 uses
  %i.ct = add i32 %i.cg, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 3                    ; 2 uses
  %scevgep415 = getelementptr i8, ptr %scevgep414, i64 %i.cv
  %scevgep418 = getelementptr i8, ptr %scevgep417, i64 %i.cv
  %i.cw = add i32 %i.ch, %i.cs
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 3                    ; 2 uses
  %scevgep420 = getelementptr i8, ptr %scevgep419, i64 %i.cy
  %scevgep423 = getelementptr i8, ptr %scevgep422, i64 %i.cy
  %i.cz = add i32 %i.ci, %i.cs
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3                    ; 2 uses
  %scevgep425 = getelementptr i8, ptr %scevgep424, i64 %i.db
  %scevgep428 = getelementptr i8, ptr %scevgep427, i64 %i.db
  %i.dc = add i32 %i.cf, %i.cs
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3                    ; 2 uses
  %scevgep430 = getelementptr i8, ptr %scevgep429, i64 %i.de
  %scevgep433 = getelementptr i8, ptr %scevgep432, i64 %i.de
  %i.df = mul nsw i32 %.0182202.us.us.us, %i.p
  %i.dg = add i32 %i.df, %i.cm                    ; 2 uses
  %i.dh = mul i32 %.0182202.us.us.us, %3
  %reass.add193.us.us.us = add i32 %i.dh, %8      ; 3 uses
  br i1 %min.iters.check450, label %scalar.ph449.preheader, label %vector.scevcheck396

vector.scevcheck396:                              ; preds = %.preheader197.us.us.us
  %i.di = mul i32 %i.bf, %.0182202.us.us.us
  %i.dj = mul i32 %i.p, %.0182202.us.us.us
  %i.dk = add i32 %i.cj, %i.dj                    ; 2 uses
  %i.dl = add i32 %i.dk, %i.by
  %i.dm = icmp slt i32 %i.dl, %i.dk
  %i.dn = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %i.do = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dp = add <4 x i32> %i.cn, %i.do
  %.reass = add <4 x i32> %i.do, %invariant.op
  %i.dq = icmp slt <4 x i32> %.reass, %i.dp       ; 4 uses
  %i.dr = extractelement <4 x i1> %i.dq, i64 3
  %i.ds = or i1 %i.dr, %i.cb
  %i.dt = or i1 %i.dm, %i.ds
  %i.du = extractelement <4 x i1> %i.dq, i64 2
  %i.dv = or i1 %i.du, %i.dt
  %i.dw = extractelement <4 x i1> %i.dq, i64 1
  %i.dx = or i1 %i.dw, %i.dv
  %i.dy = extractelement <4 x i1> %i.dq, i64 0
  %i.dz = or i1 %i.dy, %i.dx
  br i1 %i.dz, label %scalar.ph449.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %vector.scevcheck396
  %bound0434 = icmp ult ptr %scevgep411, %scevgep418
  %bound1435 = icmp ult ptr %scevgep415, %scevgep413
  %found.conflict436 = and i1 %bound0434, %bound1435
  %bound0437 = icmp ult ptr %scevgep411, %scevgep423
  %bound1438 = icmp ult ptr %scevgep420, %scevgep413
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %found.conflict436, %found.conflict439
  %bound0441 = icmp ult ptr %scevgep411, %scevgep428
  %bound1442 = icmp ult ptr %scevgep425, %scevgep413
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  %bound0445 = icmp ult ptr %scevgep411, %scevgep433
  %bound1446 = icmp ult ptr %scevgep430, %scevgep413
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx448 = or i1 %conflict.rdx444, %found.conflict447
  br i1 %conflict.rdx448, label %scalar.ph449.preheader, label %vector.body454

vector.body454:                                   ; preds = %vector.memcheck409, %vector.body454
  %index455 = phi i64 [ %index.next456, %vector.body454 ], [ 0, %vector.memcheck409 ] ; 2 uses
  %i.ea = trunc i64 %index455 to i32              ; 3 uses
  %i.eb = or disjoint i32 %i.ea, 1
  %i.ec = add i32 %i.dg, %i.ea
  %i.ed = add i32 %reass.add193.us.us.us, %i.ea
  %i.ee = add i32 %reass.add193.us.us.us, %i.eb
  %i.ef = shl i32 %i.ed, 1                        ; 3 uses
  %i.eg = shl i32 %i.ee, 1                        ; 3 uses
  %i.eh = sext i32 %i.ef to i64
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.eh
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ei
  %i.el = load double, ptr %i.ej, align 8, !tbaa !44, !alias.scope !228
  %i.em = load double, ptr %i.ek, align 8, !tbaa !44, !alias.scope !228
  %i.en = insertelement <2 x double> poison, double %i.el, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.em, i64 1
  %i.ep = add nsw i32 %i.ef, %3                   ; 2 uses
  %i.eq = add nsw i32 %i.eg, %3                   ; 2 uses
  %i.er = sext i32 %i.ep to i64
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.er
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.es
  %i.ev = load double, ptr %i.et, align 8, !tbaa !44, !alias.scope !231
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !44, !alias.scope !231
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = fadd <2 x double> %i.eo, %i.ey
  %i.fa = add nsw i32 %i.ef, %5
  %i.fb = add nsw i32 %i.eg, %5
  %i.fc = sext i32 %i.fa to i64
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fc
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fd
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !44, !alias.scope !233
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !44, !alias.scope !233
  %i.fi = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.fh, i64 1
  %i.fk = fadd <2 x double> %i.ez, %i.fj
  %i.fl = add nsw i32 %i.ep, %5
  %i.fm = add nsw i32 %i.eq, %5
  %i.fn = sext i32 %i.fl to i64
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fn
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fo
  %i.fr = load double, ptr %i.fp, align 8, !tbaa !44, !alias.scope !235
  %i.fs = load double, ptr %i.fq, align 8, !tbaa !44, !alias.scope !235
  %i.ft = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  %i.fv = fadd <2 x double> %i.fk, %i.fu
  %i.fw = fmul <2 x double> %i.fv, splat (double 2.500000e-01)
  %i.fx = sext i32 %i.ec to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fx
  store <2 x double> %i.fw, ptr %i.fy, align 8, !tbaa !44, !alias.scope !237, !noalias !239
  %index.next456 = add nuw i64 %index455, 2       ; 2 uses
  %i.fz = icmp eq i64 %index.next456, %n.vec453
  br i1 %i.fz, label %scalar.ph449.preheader, label %vector.body454, !llvm.loop !240

scalar.ph449.preheader:                           ; preds = %vector.body454, %vector.memcheck409, %vector.scevcheck396, %.preheader197.us.us.us
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %vector.scevcheck396 ], [ 0, %.preheader197.us.us.us ], [ %n.vec453, %vector.body454 ]
  br label %scalar.ph449

scalar.ph449:                                     ; preds = %scalar.ph449.preheader, %scalar.ph449
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph449 ], [ %indvars.iv.ph, %scalar.ph449.preheader ] ; 2 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.gb = add i32 %i.dg, %i.ga
  %reass.add194.us.us.us = add i32 %reass.add193.us.us.us, %i.ga
  %reass.mul195.us.us.us = shl i32 %reass.add194.us.us.us, 1 ; 3 uses
  %i.gc = sext i32 %reass.mul195.us.us.us to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !44
  %i.gf = add nsw i32 %reass.mul195.us.us.us, %3  ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !44
  %i.gj = fadd double %i.ge, %i.gi
  %i.gk = add nsw i32 %reass.mul195.us.us.us, %5
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !44
  %i.go = fadd double %i.gj, %i.gn
  %i.gp = add nsw i32 %i.gf, %5
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !44
  %i.gt = fadd double %i.go, %i.gs
  %i.gu = fmul double %i.gt, 2.500000e-01
  %i.gv = sext i32 %i.gb to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.gv
  store double %i.gu, ptr %i.gw, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph449, !llvm.loop !241

._crit_edge.us.us.us:                             ; preds = %scalar.ph449
  %i.gx = add nuw nsw i32 %.0182202.us.us.us, 1   ; 2 uses
  %exitcond239.not = icmp eq i32 %i.gx, %i.v
  br i1 %exitcond239.not, label %._crit_edge203.split.us.us.us, label %.preheader197.us.us.us, !llvm.loop !242

._crit_edge203.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.gy = add nuw nsw i32 %.0185204.us.us, 1      ; 2 uses
  %exitcond240.not = icmp eq i32 %i.gy, %i.x
  br i1 %exitcond240.not, label %.preheader199.lr.ph, label %.preheader200.us.us, !llvm.loop !243

.preheader199.lr.ph:                              ; preds = %._crit_edge203.split.us.us.us, %.preheader200.lr.ph
  %.pn282.in = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.pn282 = load ptr, ptr %.pn282.in, align 8, !tbaa !42 ; 9 uses
  %.pn281 = getelementptr inbounds [8 x i8], ptr %.pn282, i64 %i.ah
  %.pn280 = getelementptr inbounds [8 x i8], ptr %.pn281, i64 %i.ak
  %i.gz = getelementptr inbounds [8 x i8], ptr %.pn280, i64 %i.am ; 12 uses
  %.pn279.in = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.pn279 = load ptr, ptr %.pn279.in, align 8, !tbaa !42 ; 3 uses
  %.pn278 = getelementptr inbounds [8 x i8], ptr %.pn279, i64 %i.at
  %.pn = getelementptr inbounds [8 x i8], ptr %.pn278, i64 %i.aw
  %i.ha = getelementptr inbounds [8 x i8], ptr %.pn, i64 %i.ay ; 2 uses
  %i.hb = icmp sgt i32 %i.v, 0
  %i.hc = icmp sgt i32 %i.t, 0
  %or.cond276 = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %or.cond276, label %.preheader199.us.us.preheader, label %.preheader198.lr.ph

.preheader199.us.us.preheader:                    ; preds = %.preheader199.lr.ph
  %wide.trip.count244 = zext nneg i32 %i.t to i64 ; 6 uses
  %i.hd = add nsw i64 %wide.trip.count244, -1     ; 3 uses
  %i.he = shl i32 %5, 1
  %i.hf = shl i32 %3, 1
  %i.hg = add i32 %5, 1
  %i.hh = add nsw i64 %i.ay, %i.aw
  %i.hi = add nsw i64 %i.hh, %i.at                ; 2 uses
  %i.hj = shl nsw i64 %i.hi, 3
  %scevgep347 = getelementptr i8, ptr %.pn279, i64 %i.hj
  %i.hk = add nsw i64 %i.hi, %wide.trip.count244
  %i.hl = shl nsw i64 %i.hk, 3
  %scevgep349 = getelementptr i8, ptr %.pn279, i64 %i.hl
  %i.hm = shl nsw i64 %i.am, 3                    ; 2 uses
  %i.hn = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.ho = add nsw i64 %i.hm, %i.hn
  %i.hp = shl nsw i64 %i.ah, 3                    ; 2 uses
  %i.hq = add nsw i64 %i.ho, %i.hp                ; 4 uses
  %scevgep351 = getelementptr i8, ptr %.pn282, i64 %i.hq
  %i.hr = add i32 %5, 1
  %i.hs = shl i32 %5, 1
  %i.ht = shl i32 %3, 1
  %scevgep353 = getelementptr i8, ptr %.pn282, i64 -8
  %i.hu = shl nuw nsw i64 %wide.trip.count244, 4
  %i.hv = add nsw i64 %i.hu, %i.hm
  %i.hw = add nsw i64 %i.hv, %i.hn
  %i.hx = add nsw i64 %i.hw, %i.hp                ; 4 uses
  %scevgep354 = getelementptr i8, ptr %scevgep353, i64 %i.hx
  %scevgep356 = getelementptr i8, ptr %.pn282, i64 %i.hq
  %scevgep358 = getelementptr i8, ptr %.pn282, i64 -8
  %scevgep359 = getelementptr i8, ptr %scevgep358, i64 %i.hx
  %scevgep361 = getelementptr i8, ptr %.pn282, i64 %i.hq
  %scevgep363 = getelementptr i8, ptr %.pn282, i64 -8
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.hx
  %scevgep366 = getelementptr i8, ptr %.pn282, i64 %i.hq
  %scevgep368 = getelementptr i8, ptr %.pn282, i64 -8
  %scevgep369 = getelementptr i8, ptr %scevgep368, i64 %i.hx
  %min.iters.check387 = icmp ult i32 %i.t, 25
  %i.hy = trunc nsw i64 %i.hd to i32
  %i.hz = trunc nsw i64 %i.hd to i32
  %i.ia = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %i.ib = icmp ugt i64 %i.hd, 4294967295
  %i.ic = shl <4 x i32> %i.ia, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.id = shufflevector <4 x i32> %i.ic, <4 x i32> poison, <4 x i32> zeroinitializer
  %.neg459 = or i64 %wide.trip.count244, -2
  %n.vec390 = add nsw i64 %.neg459, %wide.trip.count244 ; 2 uses
  br label %.preheader199.us.us

.preheader199.us.us:                              ; preds = %.preheader199.us.us.preheader, %._crit_edge212.split.us.us.us
  %.1186213.us.us = phi i32 [ %i.na, %._crit_edge212.split.us.us.us ], [ 0, %.preheader199.us.us.preheader ] ; 7 uses
  %i.ie = mul i32 %i.r, %.1186213.us.us
  %i.if = mul i32 %i.hs, %.1186213.us.us          ; 4 uses
  %i.ig = add i32 %i.hr, %i.if
  %i.ih = add i32 %5, %i.if
  %i.ii = or disjoint i32 %i.if, 1
  %i.ij = mul i32 %i.r, %.1186213.us.us
  %i.ik = mul i32 %i.he, %.1186213.us.us          ; 4 uses
  %12 = or disjoint i32 %i.ik, 1
  %13 = add i32 %5, %i.ik
  %i.il = add i32 %i.hg, %i.ik
  %i.im = mul nsw i32 %.1186213.us.us, %i.r
  %i.in = mul i32 %.1186213.us.us, %5
  %i.io = insertelement <4 x i32> poison, i32 %i.il, i64 0
  %14 = insertelement <4 x i32> %i.io, i32 %13, i64 1
  %15 = insertelement <4 x i32> %14, i32 %12, i64 2
  %i.ip = insertelement <4 x i32> %15, i32 %i.ik, i64 3 ; 2 uses
  %invariant.op461 = add <4 x i32> %i.ip, %i.id
  br label %.preheader196.us.us.us

.preheader196.us.us.us:                           ; preds = %._crit_edge210.us.us.us, %.preheader199.us.us
  %.1183211.us.us.us = phi i32 [ 0, %.preheader199.us.us ], [ %i.mz, %._crit_edge210.us.us.us ] ; 7 uses
  %i.iq = mul i32 %i.p, %.1183211.us.us.us
  %i.ir = add i32 %i.ie, %i.iq
  %i.is = sext i32 %i.ir to i64
  %i.it = shl nsw i64 %i.is, 3                    ; 2 uses
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.it ; 4 uses
  %scevgep350 = getelementptr i8, ptr %scevgep349, i64 %i.it ; 4 uses
  %i.iu = mul i32 %i.ht, %.1183211.us.us.us       ; 4 uses
  %i.iv = add i32 %i.ig, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 3                    ; 2 uses
  %scevgep352 = getelementptr i8, ptr %scevgep351, i64 %i.ix
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.ix
  %i.iy = add i32 %i.ih, %i.iu
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl nsw i64 %i.iz, 3                    ; 2 uses
  %scevgep357 = getelementptr i8, ptr %scevgep356, i64 %i.ja
  %scevgep360 = getelementptr i8, ptr %scevgep359, i64 %i.ja
  %i.jb = add i32 %i.ii, %i.iu
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 3                    ; 2 uses
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.jd
  %scevgep365 = getelementptr i8, ptr %scevgep364, i64 %i.jd
  %i.je = add i32 %i.if, %i.iu
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep367 = getelementptr i8, ptr %scevgep366, i64 %i.jg
  %scevgep370 = getelementptr i8, ptr %scevgep369, i64 %i.jg
  %i.jh = mul nsw i32 %.1183211.us.us.us, %i.p
  %i.ji = add i32 %i.jh, %i.im                    ; 2 uses
  %i.jj = mul i32 %.1183211.us.us.us, %3
  %reass.add190.us.us.us = add i32 %i.jj, %i.in   ; 3 uses
  br i1 %min.iters.check387, label %scalar.ph386.preheader, label %vector.scevcheck333

vector.scevcheck333:                              ; preds = %.preheader196.us.us.us
  %i.jk = mul i32 %i.hf, %.1183211.us.us.us
  %i.jl = mul i32 %i.p, %.1183211.us.us.us
  %i.jm = add i32 %i.ij, %i.jl                    ; 2 uses
  %i.jn = add i32 %i.jm, %i.hy
  %i.jo = icmp slt i32 %i.jn, %i.jm
  %i.jp = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %i.jq = shufflevector <4 x i32> %i.jp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jr = add <4 x i32> %i.ip, %i.jq
  %.reass462 = add <4 x i32> %i.jq, %invariant.op461
  %i.js = icmp slt <4 x i32> %.reass462, %i.jr    ; 4 uses
  %i.jt = extractelement <4 x i1> %i.js, i64 3
  %i.ju = or i1 %i.jt, %i.ib
  %i.jv = or i1 %i.jo, %i.ju
  %i.jw = extractelement <4 x i1> %i.js, i64 2
  %i.jx = or i1 %i.jw, %i.jv
  %i.jy = extractelement <4 x i1> %i.js, i64 1
  %i.jz = or i1 %i.jy, %i.jx
  %i.ka = extractelement <4 x i1> %i.js, i64 0
  %i.kb = or i1 %i.ka, %i.jz
  br i1 %i.kb, label %scalar.ph386.preheader, label %vector.memcheck346

vector.memcheck346:                               ; preds = %vector.scevcheck333
  %bound0371 = icmp ult ptr %scevgep348, %scevgep355
  %bound1372 = icmp ult ptr %scevgep352, %scevgep350
  %found.conflict373 = and i1 %bound0371, %bound1372
  %bound0374 = icmp ult ptr %scevgep348, %scevgep360
  %bound1375 = icmp ult ptr %scevgep357, %scevgep350
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %found.conflict373, %found.conflict376
  %bound0378 = icmp ult ptr %scevgep348, %scevgep365
  %bound1379 = icmp ult ptr %scevgep362, %scevgep350
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  %bound0382 = icmp ult ptr %scevgep348, %scevgep370
  %bound1383 = icmp ult ptr %scevgep367, %scevgep350
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  br i1 %conflict.rdx385, label %scalar.ph386.preheader, label %vector.body391

vector.body391:                                   ; preds = %vector.memcheck346, %vector.body391
  %index392 = phi i64 [ %index.next393, %vector.body391 ], [ 0, %vector.memcheck346 ] ; 2 uses
  %i.kc = trunc i64 %index392 to i32              ; 3 uses
  %i.kd = or disjoint i32 %i.kc, 1
  %i.ke = add i32 %i.ji, %i.kc
  %i.kf = add i32 %reass.add190.us.us.us, %i.kc
  %i.kg = add i32 %reass.add190.us.us.us, %i.kd
  %i.kh = shl i32 %i.kf, 1                        ; 3 uses
  %i.ki = shl i32 %i.kg, 1                        ; 3 uses
  %i.kj = sext i32 %i.kh to i64
  %i.kk = sext i32 %i.ki to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.kj
  %i.km = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.kk
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !44, !alias.scope !244
  %i.ko = load double, ptr %i.km, align 8, !tbaa !44, !alias.scope !244
  %i.kp = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.ko, i64 1
  %i.kr = or disjoint i32 %i.kh, 1                ; 2 uses
  %i.ks = or disjoint i32 %i.ki, 1                ; 2 uses
  %i.kt = sext i32 %i.kr to i64
  %i.ku = sext i32 %i.ks to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.kt
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ku
  %i.kx = load double, ptr %i.kv, align 8, !tbaa !44, !alias.scope !247
  %i.ky = load double, ptr %i.kw, align 8, !tbaa !44, !alias.scope !247
  %i.kz = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.la = insertelement <2 x double> %i.kz, double %i.ky, i64 1
  %i.lb = fadd <2 x double> %i.kq, %i.la
  %i.lc = add nsw i32 %i.kh, %5
  %i.ld = add nsw i32 %i.ki, %5
  %i.le = sext i32 %i.lc to i64
  %i.lf = sext i32 %i.ld to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.le
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.lf
  %i.li = load double, ptr %i.lg, align 8, !tbaa !44, !alias.scope !249
  %i.lj = load double, ptr %i.lh, align 8, !tbaa !44, !alias.scope !249
  %i.lk = insertelement <2 x double> poison, double %i.li, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.lj, i64 1
  %i.lm = fadd <2 x double> %i.lb, %i.ll
  %i.ln = add nsw i32 %i.kr, %5
  %i.lo = add nsw i32 %i.ks, %5
  %i.lp = sext i32 %i.ln to i64
  %i.lq = sext i32 %i.lo to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.lp
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.lq
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !44, !alias.scope !251
  %i.lu = load double, ptr %i.ls, align 8, !tbaa !44, !alias.scope !251
  %i.lv = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lu, i64 1
  %i.lx = fadd <2 x double> %i.lm, %i.lw
  %i.ly = fmul <2 x double> %i.lx, splat (double 2.500000e-01)
  %i.lz = sext i32 %i.ke to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.lz
  store <2 x double> %i.ly, ptr %i.ma, align 8, !tbaa !44, !alias.scope !253, !noalias !255
  %index.next393 = add nuw i64 %index392, 2       ; 2 uses
  %i.mb = icmp eq i64 %index.next393, %n.vec390
  br i1 %i.mb, label %scalar.ph386.preheader, label %vector.body391, !llvm.loop !256

scalar.ph386.preheader:                           ; preds = %vector.body391, %vector.memcheck346, %vector.scevcheck333, %.preheader196.us.us.us
  %indvars.iv241.ph = phi i64 [ 0, %vector.memcheck346 ], [ 0, %vector.scevcheck333 ], [ 0, %.preheader196.us.us.us ], [ %n.vec390, %vector.body391 ]
  br label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.preheader, %scalar.ph386
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %scalar.ph386 ], [ %indvars.iv241.ph, %scalar.ph386.preheader ] ; 2 uses
  %i.mc = trunc nuw nsw i64 %indvars.iv241 to i32 ; 2 uses
  %i.md = add i32 %i.ji, %i.mc
  %reass.add191.us.us.us = add i32 %reass.add190.us.us.us, %i.mc
  %reass.mul192.us.us.us = shl i32 %reass.add191.us.us.us, 1 ; 3 uses
  %i.me = sext i32 %reass.mul192.us.us.us to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.me
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !44
  %i.mh = or disjoint i32 %reass.mul192.us.us.us, 1 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.mi
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !44
  %i.ml = fadd double %i.mg, %i.mk
  %i.mm = add nsw i32 %reass.mul192.us.us.us, %5
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !44
  %i.mq = fadd double %i.ml, %i.mp
  %i.mr = add nsw i32 %i.mh, %5
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !44
  %i.mv = fadd double %i.mq, %i.mu
  %i.mw = fmul double %i.mv, 2.500000e-01
  %i.mx = sext i32 %i.md to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.mx
  store double %i.mw, ptr %i.my, align 8, !tbaa !44
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %._crit_edge210.us.us.us, label %scalar.ph386, !llvm.loop !257

._crit_edge210.us.us.us:                          ; preds = %scalar.ph386
  %i.mz = add nuw nsw i32 %.1183211.us.us.us, 1   ; 2 uses
  %exitcond246.not = icmp eq i32 %i.mz, %i.v
  br i1 %exitcond246.not, label %._crit_edge212.split.us.us.us, label %.preheader196.us.us.us, !llvm.loop !258

._crit_edge212.split.us.us.us:                    ; preds = %._crit_edge210.us.us.us
  %i.na = add nuw nsw i32 %.1186213.us.us, 1      ; 2 uses
  %exitcond247.not = icmp eq i32 %i.na, %i.x
  br i1 %exitcond247.not, label %.preheader198.lr.ph, label %.preheader199.us.us, !llvm.loop !259

.preheader198.lr.ph:                              ; preds = %._crit_edge212.split.us.us.us, %.preheader199.lr.ph
  %.pn288.in = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.pn288 = load ptr, ptr %.pn288.in, align 8, !tbaa !42 ; 9 uses
  %.pn287 = getelementptr inbounds [8 x i8], ptr %.pn288, i64 %i.ah
  %.pn286 = getelementptr inbounds [8 x i8], ptr %.pn287, i64 %i.ak
  %i.nb = getelementptr inbounds [8 x i8], ptr %.pn286, i64 %i.am ; 12 uses
  %.pn285.in = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.pn285 = load ptr, ptr %.pn285.in, align 8, !tbaa !42 ; 3 uses
  %.pn284 = getelementptr inbounds [8 x i8], ptr %.pn285, i64 %i.at
  %.pn283 = getelementptr inbounds [8 x i8], ptr %.pn284, i64 %i.aw
  %i.nc = getelementptr inbounds [8 x i8], ptr %.pn283, i64 %i.ay ; 2 uses
  %i.nd = icmp sgt i32 %i.v, 0
  %i.ne = icmp sgt i32 %i.t, 0
  %or.cond277 = select i1 %i.nd, i1 %i.ne, i1 false
  br i1 %or.cond277, label %.preheader198.us.us.preheader, label %._crit_edge224

.preheader198.us.us.preheader:                    ; preds = %.preheader198.lr.ph
  %wide.trip.count251 = zext nneg i32 %i.t to i64 ; 6 uses
  %i.nf = add nsw i64 %wide.trip.count251, -1     ; 3 uses
  %i.ng = shl i32 %5, 1
  %i.nh = shl i32 %3, 1
  %i.ni = add i32 %3, 1
  %i.nj = add nsw i64 %i.ay, %i.aw
  %i.nk = add nsw i64 %i.nj, %i.at                ; 2 uses
  %i.nl = shl nsw i64 %i.nk, 3
  %scevgep = getelementptr i8, ptr %.pn285, i64 %i.nl
  %i.nm = add nsw i64 %i.nk, %wide.trip.count251
  %i.nn = shl nsw i64 %i.nm, 3
  %scevgep300 = getelementptr i8, ptr %.pn285, i64 %i.nn
  %i.no = shl nsw i64 %i.am, 3                    ; 2 uses
  %i.np = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.nq = add nsw i64 %i.no, %i.np
  %i.nr = shl nsw i64 %i.ah, 3                    ; 2 uses
  %i.ns = add nsw i64 %i.nq, %i.nr                ; 4 uses
  %scevgep302 = getelementptr i8, ptr %.pn288, i64 %i.ns
  %i.nt = add i32 %3, 1
  %i.nu = shl i32 %5, 1
  %i.nv = shl i32 %3, 1
  %scevgep304 = getelementptr i8, ptr %.pn288, i64 -8
  %i.nw = shl nuw nsw i64 %wide.trip.count251, 4
  %i.nx = add nsw i64 %i.nw, %i.no
  %i.ny = add nsw i64 %i.nx, %i.np
  %i.nz = add nsw i64 %i.ny, %i.nr                ; 4 uses
  %scevgep305 = getelementptr i8, ptr %scevgep304, i64 %i.nz
  %scevgep307 = getelementptr i8, ptr %.pn288, i64 %i.ns
  %scevgep309 = getelementptr i8, ptr %.pn288, i64 -8
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.nz
  %scevgep312 = getelementptr i8, ptr %.pn288, i64 %i.ns
  %scevgep314 = getelementptr i8, ptr %.pn288, i64 -8
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.nz
  %scevgep317 = getelementptr i8, ptr %.pn288, i64 %i.ns
  %scevgep319 = getelementptr i8, ptr %.pn288, i64 -8
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.nz
  %min.iters.check = icmp ult i32 %i.t, 25
  %i.oa = trunc nsw i64 %i.nf to i32
  %i.ob = trunc nsw i64 %i.nf to i32
  %i.oc = insertelement <4 x i32> poison, i32 %i.ob, i64 0
  %i.od = icmp ugt i64 %i.nf, 4294967295
  %i.oe = shl <4 x i32> %i.oc, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.of = shufflevector <4 x i32> %i.oe, <4 x i32> poison, <4 x i32> zeroinitializer
  %.neg460 = or i64 %wide.trip.count251, -2
  %n.vec = add nsw i64 %.neg460, %wide.trip.count251 ; 2 uses
  br label %.preheader198.us.us

.preheader198.us.us:                              ; preds = %.preheader198.us.us.preheader, %._crit_edge222.split.us.us.us
  %.2187223.us.us = phi i32 [ %i.tc, %._crit_edge222.split.us.us.us ], [ 0, %.preheader198.us.us.preheader ] ; 7 uses
  %i.og = mul i32 %i.r, %.2187223.us.us
  %i.oh = mul i32 %i.nu, %.2187223.us.us          ; 4 uses
  %i.oi = add i32 %i.nt, %i.oh
  %i.oj = add i32 %3, %i.oh
  %i.ok = or disjoint i32 %i.oh, 1
  %i.ol = mul i32 %i.r, %.2187223.us.us
  %i.om = mul i32 %i.ng, %.2187223.us.us          ; 4 uses
  %16 = or disjoint i32 %i.om, 1
  %17 = add i32 %3, %i.om
  %i.on = add i32 %i.ni, %i.om
  %i.oo = mul nsw i32 %.2187223.us.us, %i.r
  %i.op = mul i32 %.2187223.us.us, %5
  %i.oq = insertelement <4 x i32> poison, i32 %i.on, i64 0
  %18 = insertelement <4 x i32> %i.oq, i32 %17, i64 1
  %19 = insertelement <4 x i32> %18, i32 %16, i64 2
  %i.or = insertelement <4 x i32> %19, i32 %i.om, i64 3 ; 2 uses
  %invariant.op463 = add <4 x i32> %i.or, %i.of
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge220.us.us.us, %.preheader198.us.us
  %.2184221.us.us.us = phi i32 [ 0, %.preheader198.us.us ], [ %i.tb, %._crit_edge220.us.us.us ] ; 7 uses
  %i.os = mul i32 %i.p, %.2184221.us.us.us
  %i.ot = add i32 %i.og, %i.os
  %i.ou = sext i32 %i.ot to i64
  %i.ov = shl nsw i64 %i.ou, 3                    ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep, i64 %i.ov ; 4 uses
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.ov ; 4 uses
  %i.ow = mul i32 %i.nv, %.2184221.us.us.us       ; 4 uses
  %i.ox = add i32 %i.oi, %i.ow
  %i.oy = sext i32 %i.ox to i64
  %i.oz = shl nsw i64 %i.oy, 3                    ; 2 uses
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.oz
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.oz
  %i.pa = add i32 %i.oj, %i.ow
  %i.pb = sext i32 %i.pa to i64
  %i.pc = shl nsw i64 %i.pb, 3                    ; 2 uses
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.pc
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.pc
  %i.pd = add i32 %i.ok, %i.ow
  %i.pe = sext i32 %i.pd to i64
  %i.pf = shl nsw i64 %i.pe, 3                    ; 2 uses
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.pf
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.pf
  %i.pg = add i32 %i.oh, %i.ow
  %i.ph = sext i32 %i.pg to i64
  %i.pi = shl nsw i64 %i.ph, 3                    ; 2 uses
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.pi
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.pi
  %i.pj = mul nsw i32 %.2184221.us.us.us, %i.p
  %i.pk = add i32 %i.pj, %i.oo                    ; 2 uses
  %i.pl = mul i32 %.2184221.us.us.us, %3
  %reass.add.us.us.us = add i32 %i.pl, %i.op      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.us
  %i.pm = mul i32 %i.nh, %.2184221.us.us.us
  %i.pn = mul i32 %i.p, %.2184221.us.us.us
  %i.po = add i32 %i.ol, %i.pn                    ; 2 uses
  %i.pp = add i32 %i.po, %i.oa
  %i.pq = icmp slt i32 %i.pp, %i.po
  %i.pr = insertelement <4 x i32> poison, i32 %i.pm, i64 0
  %i.ps = shufflevector <4 x i32> %i.pr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pt = add <4 x i32> %i.or, %i.ps
  %.reass464 = add <4 x i32> %i.ps, %invariant.op463
  %i.pu = icmp slt <4 x i32> %.reass464, %i.pt    ; 4 uses
  %i.pv = extractelement <4 x i1> %i.pu, i64 3
  %i.pw = or i1 %i.pv, %i.od
  %i.px = or i1 %i.pq, %i.pw
  %i.py = extractelement <4 x i1> %i.pu, i64 2
  %i.pz = or i1 %i.py, %i.px
  %i.qa = extractelement <4 x i1> %i.pu, i64 1
  %i.qb = or i1 %i.qa, %i.pz
  %i.qc = extractelement <4 x i1> %i.pu, i64 0
  %i.qd = or i1 %i.qc, %i.qb
  br i1 %i.qd, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep299, %scevgep306
  %bound1 = icmp ult ptr %scevgep303, %scevgep301
  %found.conflict = and i1 %bound0, %bound1
  %bound0322 = icmp ult ptr %scevgep299, %scevgep311
  %bound1323 = icmp ult ptr %scevgep308, %scevgep301
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx = or i1 %found.conflict, %found.conflict324
  %bound0325 = icmp ult ptr %scevgep299, %scevgep316
  %bound1326 = icmp ult ptr %scevgep313, %scevgep301
  %found.conflict327 = and i1 %bound0325, %bound1326
  %conflict.rdx328 = or i1 %conflict.rdx, %found.conflict327
  %bound0329 = icmp ult ptr %scevgep299, %scevgep321
  %bound1330 = icmp ult ptr %scevgep318, %scevgep301
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx332 = or i1 %conflict.rdx328, %found.conflict331
  br i1 %conflict.rdx332, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.qe = trunc i64 %index to i32                 ; 3 uses
  %i.qf = or disjoint i32 %i.qe, 1
  %i.qg = add i32 %i.pk, %i.qe
  %i.qh = add i32 %reass.add.us.us.us, %i.qe
  %i.qi = add i32 %reass.add.us.us.us, %i.qf
  %i.qj = shl i32 %i.qh, 1                        ; 3 uses
  %i.qk = shl i32 %i.qi, 1                        ; 3 uses
  %i.ql = sext i32 %i.qj to i64
  %i.qm = sext i32 %i.qk to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.ql
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.qm
  %i.qp = load double, ptr %i.qn, align 8, !tbaa !44, !alias.scope !260
  %i.qq = load double, ptr %i.qo, align 8, !tbaa !44, !alias.scope !260
  %i.qr = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.qs = insertelement <2 x double> %i.qr, double %i.qq, i64 1
  %i.qt = or disjoint i32 %i.qj, 1                ; 2 uses
  %i.qu = or disjoint i32 %i.qk, 1                ; 2 uses
  %i.qv = sext i32 %i.qt to i64
  %i.qw = sext i32 %i.qu to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.qv
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.qw
  %i.qz = load double, ptr %i.qx, align 8, !tbaa !44, !alias.scope !263
  %i.ra = load double, ptr %i.qy, align 8, !tbaa !44, !alias.scope !263
  %i.rb = insertelement <2 x double> poison, double %i.qz, i64 0
  %i.rc = insertelement <2 x double> %i.rb, double %i.ra, i64 1
  %i.rd = fadd <2 x double> %i.qs, %i.rc
  %i.re = add nsw i32 %i.qj, %3
  %i.rf = add nsw i32 %i.qk, %3
  %i.rg = sext i32 %i.re to i64
  %i.rh = sext i32 %i.rf to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.rg
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.rh
  %i.rk = load double, ptr %i.ri, align 8, !tbaa !44, !alias.scope !265
  %i.rl = load double, ptr %i.rj, align 8, !tbaa !44, !alias.scope !265
  %i.rm = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rn = insertelement <2 x double> %i.rm, double %i.rl, i64 1
  %i.ro = fadd <2 x double> %i.rd, %i.rn
  %i.rp = add nsw i32 %i.qt, %3
  %i.rq = add nsw i32 %i.qu, %3
  %i.rr = sext i32 %i.rp to i64
  %i.rs = sext i32 %i.rq to i64
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.rr
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.rs
  %i.rv = load double, ptr %i.rt, align 8, !tbaa !44, !alias.scope !267
  %i.rw = load double, ptr %i.ru, align 8, !tbaa !44, !alias.scope !267
  %i.rx = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.ry = insertelement <2 x double> %i.rx, double %i.rw, i64 1
  %i.rz = fadd <2 x double> %i.ro, %i.ry
  %i.sa = fmul <2 x double> %i.rz, splat (double 2.500000e-01)
  %i.sb = sext i32 %i.qg to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.sb
  store <2 x double> %i.sa, ptr %i.sc, align 8, !tbaa !44, !alias.scope !269, !noalias !271
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.sd = icmp eq i64 %index.next, %n.vec
  br i1 %i.sd, label %scalar.ph.preheader, label %vector.body, !llvm.loop !272

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader.us.us.us
  %indvars.iv248.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.us.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %scalar.ph ], [ %indvars.iv248.ph, %scalar.ph.preheader ] ; 2 uses
  %i.se = trunc nuw nsw i64 %indvars.iv248 to i32 ; 2 uses
  %i.sf = add i32 %i.pk, %i.se
  %reass.add189.us.us.us = add i32 %reass.add.us.us.us, %i.se
  %reass.mul.us.us.us = shl i32 %reass.add189.us.us.us, 1 ; 3 uses
  %i.sg = sext i32 %reass.mul.us.us.us to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.sg
  %i.si = load double, ptr %i.sh, align 8, !tbaa !44
  %i.sj = or disjoint i32 %reass.mul.us.us.us, 1  ; 2 uses
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.sk
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !44
  %i.sn = fadd double %i.si, %i.sm
  %i.so = add nsw i32 %reass.mul.us.us.us, %3
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.sp
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !44
  %i.ss = fadd double %i.sn, %i.sr
  %i.st = add nsw i32 %i.sj, %3
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.su
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !44
  %i.sx = fadd double %i.ss, %i.sw
  %i.sy = fmul double %i.sx, 2.500000e-01
  %i.sz = sext i32 %i.sf to i64
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.sz
  store double %i.sy, ptr %i.ta, align 8, !tbaa !44
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %._crit_edge220.us.us.us, label %scalar.ph, !llvm.loop !273

._crit_edge220.us.us.us:                          ; preds = %scalar.ph
  %i.tb = add nuw nsw i32 %.2184221.us.us.us, 1   ; 2 uses
  %exitcond253.not = icmp eq i32 %i.tb, %i.v
  br i1 %exitcond253.not, label %._crit_edge222.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !274

._crit_edge222.split.us.us.us:                    ; preds = %._crit_edge220.us.us.us
  %i.tc = add nuw nsw i32 %.2187223.us.us, 1      ; 2 uses
  %exitcond254.not = icmp eq i32 %i.tc, %i.x
  br i1 %exitcond254.not, label %._crit_edge224, label %.preheader198.us.us, !llvm.loop !275

._crit_edge224:                                   ; preds = %._crit_edge222.split.us.us.us, %bb.b, %.preheader198.lr.ph
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %._crit_edge231, label %bb.b, !llvm.loop !276

._crit_edge231:                                   ; preds = %._crit_edge224, %.._crit_edge231_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge231_crit_edge ], [ %i.h, %._crit_edge224 ]
  %i.td = tail call i64 (...) @CycleTime() #10
  %i.te = sub i64 %i.td, %i.a
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %.pre-phi ; 2 uses
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !63
  %i.ti = add i64 %i.te, %i.th
  store i64 %i.ti, ptr %i.tg, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpolation_constant(ptr noundef captures(none) %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge93

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %3 to i64
  %i.i = sext i32 %4 to i64
  %wide.trip.count102 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv99
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr [216 x i8], ptr %i.l, i64 %i.b ; 11 uses
  %i.n = getelementptr i8, ptr %i.m, i64 260
  %i.o = load i32, ptr %i.n, align 4, !tbaa !67
  %i.p = getelementptr i8, ptr %i.m, i64 264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !65   ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !66   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !70  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = add nsw i32 %i.w, 1
  %i.ak = add nsw i32 %i.aj, %i.y
  %i.al = mul nsw i32 %i.ak, %i.u
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.am ; 3 uses
  %i.ao = getelementptr i8, ptr %i.m, i64 392
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.as = add nsw i32 %i.q, 1
  %i.at = add nsw i32 %i.as, %i.s
  %i.au = mul nsw i32 %i.at, %i.o
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av ; 3 uses
  %i.ax = icmp sgt i32 %i.ae, 0
  %i.ay = icmp sgt i32 %i.ac, 0
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = icmp sgt i32 %i.aa, 0
  %or.cond109 = select i1 %or.cond, i1 %i.az, i1 false
  br i1 %or.cond109, label %.preheader82.us.us.preheader, label %._crit_edge

.preheader82.us.us.preheader:                     ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ba = icmp eq i32 %i.aa, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod110 = trunc i32 %i.aa to i1
  br label %.preheader82.us.us

.preheader82.us.us:                               ; preds = %.preheader82.us.us.preheader, %._crit_edge85.split.us.us.us
  %.08186.us.us = phi i32 [ %i.cs, %._crit_edge85.split.us.us.us ], [ 0, %.preheader82.us.us.preheader ] ; 3 uses
  %i.bb = mul nsw i32 %.08186.us.us, %i.y
  %i.bc = lshr i32 %.08186.us.us, 1
  %i.bd = mul nsw i32 %i.bc, %i.s
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader82.us.us
  %.08084.us.us.us = phi i32 [ 0, %.preheader82.us.us ], [ %i.cr, %._crit_edge.us.us.us ] ; 3 uses
  %i.be = mul nsw i32 %.08084.us.us.us, %i.w
  %i.bf = add i32 %i.be, %i.bb                    ; 3 uses
  %i.bg = lshr i32 %.08084.us.us.us, 1
  %i.bh = mul nsw i32 %i.bg, %i.q
  %i.bi = add i32 %i.bh, %i.bd                    ; 3 uses
  br i1 %i.ba, label %.epil.preheader, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bk = add i32 %i.bf, %i.bj
  %i.bl = lshr exact i32 %i.bj, 1
  %i.bm = add i32 %i.bi, %i.bl
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bn ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !44
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !44
  %i.bt = tail call double @llvm.fmuladd.f64(double %2, double %i.bp, double %i.bs)
  store double %i.bt, ptr %i.bo, align 8, !tbaa !44
  %i.bu = trunc i64 %indvars.iv to i32            ; 2 uses
  %i.bv = or disjoint i32 %i.bu, 1
  %i.bw = add i32 %i.bf, %i.bv
  %i.bx = lshr exact i32 %i.bu, 1
  %i.by = add i32 %i.bi, %i.bx
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bz ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !44
  %i.cc = sext i32 %i.by to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !44
  %i.cf = tail call double @llvm.fmuladd.f64(double %2, double %i.cb, double %i.ce)
  store double %i.cf, ptr %i.ca, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !277

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.cg = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.ch = add i32 %i.bf, %i.cg
  %i.ci = lshr i32 %i.cg, 1
  %i.cj = add i32 %i.bi, %i.ci
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ck ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !44
  %i.cn = sext i32 %i.cj to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !44
  %i.cq = tail call double @llvm.fmuladd.f64(double %2, double %i.cm, double %i.cp)
  store double %i.cq, ptr %i.cl, align 8, !tbaa !44
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader
  %i.cr = add nuw nsw i32 %.08084.us.us.us, 1     ; 2 uses
  %exitcond97.not = icmp eq i32 %i.cr, %i.ac
  br i1 %exitcond97.not, label %._crit_edge85.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !278

._crit_edge85.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cs = add nuw nsw i32 %.08186.us.us, 1        ; 2 uses
  %exitcond98.not = icmp eq i32 %i.cs, %i.ae
  br i1 %exitcond98.not, label %._crit_edge, label %.preheader82.us.us, !llvm.loop !279

._crit_edge:                                      ; preds = %._crit_edge85.split.us.us.us, %bb.b
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge93, label %bb.b, !llvm.loop !280

._crit_edge93:                                    ; preds = %._crit_edge, %bb.a
end_hunk_0
