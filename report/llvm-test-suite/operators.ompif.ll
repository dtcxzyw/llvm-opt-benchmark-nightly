begin_hunk_0_@residual_and_restriction:bb.a
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
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !4 ; 3 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 1   ; 19 uses
  %i.ae = extractelement <2 x i32> %i.ac, i64 0   ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 17 uses
  %i.aj = add i32 %i.ae, 1                        ; 2 uses
  %i.ak = add i32 %i.aj, %i.ad                    ; 3 uses
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.am ; 24 uses
  %i.ao = getelementptr i8, ptr %i.m, i64 392
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 3 uses
  %i.as = add i32 %i.q, 1
  %i.at = add i32 %i.as, %i.s
  %i.au = mul i32 %i.at, %i.o
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ax = icmp sgt i32 %i.y, 0
  %i.ay = icmp sgt i32 %i.w, 0
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = icmp sgt i32 %i.u, 0
  %or.cond129 = select i1 %or.cond, i1 %i.az, i1 false
  br i1 %or.cond129, label %.preheader102.us.us.preheader, label %._crit_edge

.preheader102.us.us.preheader:                    ; preds = %bb.b
  %i.ba = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 6 uses
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.bc = shl i32 %i.ad, 1
  %i.bd = shl i32 %i.ae, 1                        ; 2 uses
  %i.be = shufflevector <4 x i32> <i32 1, i32 0, i32 1, i32 poison>, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bf = add <4 x i32> %i.ba, %i.be
  %i.bg = shl nsw i64 %i.av, 3
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.bg
  %i.bh = add nsw i64 %i.av, %wide.trip.count
  %i.bi = shl nsw i64 %i.bh, 3
  %scevgep153 = getelementptr i8, ptr %i.ar, i64 %i.bi
  %i.bj = shl nsw i64 %i.am, 3                    ; 9 uses
  %scevgep155 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %i.bk = shl i32 %i.ad, 1
  %i.bl = shl i32 %i.ae, 1
  %scevgep157 = getelementptr i8, ptr %i.ai, i64 -8
  %i.bm = shl nuw nsw i64 %wide.trip.count, 4
  %i.bn = add nsw i64 %i.bm, %i.bj                ; 8 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.bn
  %scevgep160 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %i.bo = add i32 %i.ae, %i.ad
  %scevgep162 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.bn
  %scevgep165 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %i.bp = add i32 %i.ad, 1
  %scevgep167 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.bn
  %scevgep170 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %scevgep172 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.bn
  %scevgep175 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %scevgep177 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.bn
  %scevgep180 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %scevgep182 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.bn
  %scevgep185 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %scevgep187 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.bn
  %scevgep190 = getelementptr i8, ptr %i.ai, i64 %i.bj
  %scevgep192 = getelementptr i8, ptr %i.ai, i64 -8
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.bn
  %i.bq = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %i.q, i64 1
  %min.iters.check = icmp ult i32 %i.u, 27
  %i.bs = trunc nsw i64 %i.bb to i32
  %i.bt = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %i.bu = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bv = icmp ugt i64 %i.bb, 4294967295
  %i.bw = shl <8 x i32> %i.bu, <i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bx = trunc nsw i64 %i.bb to i32
  %mul.result150 = shl i32 %i.bx, 1
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %.preheader102.us.us

.preheader102.us.us:                              ; preds = %.preheader102.us.us.preheader, %._crit_edge105.split.us.us.us
  %.0100106.us.us = phi i32 [ %i.kb, %._crit_edge105.split.us.us.us ], [ 0, %.preheader102.us.us.preheader ] ; 7 uses
  %i.by = mul i32 %i.s, %.0100106.us.us
  %i.bz = mul i32 %i.bk, %.0100106.us.us          ; 8 uses
  %i.ca = add i32 %i.ak, %i.bz
  %i.cb = add i32 %i.bo, %i.bz
  %i.cc = add i32 %i.bp, %i.bz
  %i.cd = add i32 %i.ad, %i.bz
  %i.ce = add i32 %i.aj, %i.bz
  %i.cf = add i32 %i.ae, %i.bz
  %i.cg = or disjoint i32 %i.bz, 1
  %i.ch = mul i32 %i.s, %.0100106.us.us
  %i.ci = mul i32 %i.bc, %.0100106.us.us          ; 4 uses
  %i.cj = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.ck = insertelement <2 x i32> %i.cj, i32 %i.ci, i64 1
  %i.cl = or disjoint <2 x i32> %i.ck, <i32 0, i32 1>
  %i.cm = add i32 %i.ae, %i.ci
  %i.cn = insertelement <4 x i32> poison, i32 %i.ci, i64 0 ; 2 uses
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cp = add <4 x i32> %i.bf, %i.co
  %i.cq = add i32 %i.ak, %i.ci
  %i.cr = mul nsw i32 %.0100106.us.us, %i.s
  %i.cs = mul i32 %.0100106.us.us, %i.ad
  %i.ct = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cv = shufflevector <2 x i32> %i.cl, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cw = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cv, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cx = insertelement <8 x i32> %i.cw, i32 %i.cm, i64 3
  %i.cy = shufflevector <8 x i32> %i.cx, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %invariant.op = add <8 x i32> %i.cy, %i.bw
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader102.us.us
  %.099104.us.us.us = phi i32 [ 0, %.preheader102.us.us ], [ %i.ka, %._crit_edge.us.us.us ] ; 7 uses
  %i.cz = mul i32 %i.q, %.099104.us.us.us
  %i.da = add i32 %i.by, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 3                    ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.dc ; 8 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.dc ; 8 uses
  %i.dd = mul i32 %i.bl, %.099104.us.us.us        ; 8 uses
  %i.de = add i32 %i.ca, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3                    ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.dg
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.dg
  %i.dh = add i32 %i.cb, %i.dd
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3                    ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.dj
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.dj
  %i.dk = add i32 %i.cc, %i.dd
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 3                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.dm
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.dm
  %i.dn = add i32 %i.cd, %i.dd
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3                    ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.dp
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.dp
  %i.dq = add i32 %i.ce, %i.dd
  %i.dr = sext i32 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 3                    ; 2 uses
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.ds
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.ds
  %i.dt = add i32 %i.cf, %i.dd
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 3                    ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.dv
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.dv
  %i.dw = add i32 %i.cg, %i.dd
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 3                    ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.dy
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.dy
  %i.dz = add i32 %i.bz, %i.dd
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 3                    ; 2 uses
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.eb
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.eb
  %i.ec = mul nsw i32 %.099104.us.us.us, %i.q
  %i.ed = add i32 %i.ec, %i.cr                    ; 2 uses
  %i.ee = mul i32 %.099104.us.us.us, %i.ae
  %reass.add.us.us.us = add i32 %i.ee, %i.cs      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.us
  %i.ef = insertelement <2 x i32> poison, i32 %.099104.us.us.us, i64 0
  %i.eg = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eh = mul <2 x i32> %i.br, %i.eg
  %i.ei = shufflevector <2 x i32> %i.eh, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 2 uses
  %i.ej = mul i32 %i.bd, %.099104.us.us.us
  %i.ek = add i32 %i.cq, %i.ej                    ; 2 uses
  %i.el = add <8 x i32> %i.cy, %i.ei
  %.reass = add <8 x i32> %i.ei, %invariant.op
  %i.em = icmp slt <8 x i32> %.reass, %i.el
  %i.en = add i32 %i.ek, %mul.result150
  %i.eo = icmp slt i32 %i.en, %i.ek
  %i.ep = bitcast <8 x i1> %i.em to i8
  %i.eq = icmp ne i8 %i.ep, 0
  %op.rdx = or i1 %i.eq, %i.eo
  %op.rdx222 = or i1 %op.rdx, %i.bv
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
  %i.er = trunc i64 %index to i32                 ; 3 uses
  %i.es = or disjoint i32 %i.er, 1
  %i.et = add i32 %i.ed, %i.er
  %i.eu = add i32 %reass.add.us.us.us, %i.er
  %i.ev = add i32 %reass.add.us.us.us, %i.es
  %i.ew = shl i32 %i.eu, 1                        ; 4 uses
  %i.ex = shl i32 %i.ev, 1                        ; 4 uses
  %i.ey = sext i32 %i.ew to i64
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ey
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ez
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !44, !alias.scope !203
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !44, !alias.scope !203
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1
  %i.fg = or disjoint i32 %i.ew, 1                ; 3 uses
  %i.fh = or disjoint i32 %i.ex, 1                ; 3 uses
  %i.fi = sext i32 %i.fg to i64
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fi
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fj
  %i.fm = load double, ptr %i.fk, align 8, !tbaa !44, !alias.scope !206
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !44, !alias.scope !206
  %i.fo = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = fadd <2 x double> %i.ff, %i.fp
  %i.fr = add nsw i32 %i.ew, %i.ae                ; 2 uses
  %i.fs = add nsw i32 %i.ex, %i.ae                ; 2 uses
  %i.ft = sext i32 %i.fr to i64
  %i.fu = sext i32 %i.fs to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ft
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.fu
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !44, !alias.scope !208
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !44, !alias.scope !208
  %i.fz = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fy, i64 1
  %i.gb = fadd <2 x double> %i.fq, %i.ga
  %i.gc = add nsw i32 %i.fg, %i.ae                ; 2 uses
  %i.gd = add nsw i32 %i.fh, %i.ae                ; 2 uses
  %i.ge = sext i32 %i.gc to i64
  %i.gf = sext i32 %i.gd to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ge
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gf
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !44, !alias.scope !210
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !44, !alias.scope !210
  %i.gk = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 1
  %i.gm = fadd <2 x double> %i.gb, %i.gl
  %i.gn = add nsw i32 %i.ew, %i.ad
  %i.go = add nsw i32 %i.ex, %i.ad
  %i.gp = sext i32 %i.gn to i64
  %i.gq = sext i32 %i.go to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gp
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.gq
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !44, !alias.scope !212
  %i.gu = load double, ptr %i.gs, align 8, !tbaa !44, !alias.scope !212
  %i.gv = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gu, i64 1
  %i.gx = fadd <2 x double> %i.gm, %i.gw
  %i.gy = add nsw i32 %i.fg, %i.ad
  %i.gz = add nsw i32 %i.fh, %i.ad
  %i.ha = sext i32 %i.gy to i64
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ha
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.hb
  %i.he = load double, ptr %i.hc, align 8, !tbaa !44, !alias.scope !214
  %i.hf = load double, ptr %i.hd, align 8, !tbaa !44, !alias.scope !214
  %i.hg = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.hf, i64 1
  %i.hi = fadd <2 x double> %i.gx, %i.hh
  %i.hj = add nsw i32 %i.fr, %i.ad
  %i.hk = add nsw i32 %i.fs, %i.ad
  %i.hl = sext i32 %i.hj to i64
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.hl
end_hunk_0
