Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 97
begin_hunk_0_@Abc_TtSwapVars:bb.a
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !45
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !45
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not135 = icmp eq i32 %i.x, 31
  br i1 %.not135, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45 ; 4 uses
  %min.iters.check211 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check211, label %scalar.ph210, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec213 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert214.a = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat215.a = shufflevector <2 x i64> %broadcast.splatinsert214.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert216.a = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat217.a = shufflevector <2 x i64> %broadcast.splatinsert216.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert218.a = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat219.a = shufflevector <2 x i64> %broadcast.splatinsert218.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert220 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat221 = shufflevector <2 x i64> %broadcast.splatinsert220, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph212
  %index223 = phi i64 [ 0, %vector.ph212 ], [ %index.next226, %vector.body222 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index223 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load224 = load <2 x i64>, ptr %i.am, align 8, !tbaa !45 ; 3 uses
  %wide.load225 = load <2 x i64>, ptr %i.an, align 8, !tbaa !45 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat215.a, %wide.load224
  %i.ap = and <2 x i64> %broadcast.splat215.a, %wide.load225
  %i.aq = and <2 x i64> %broadcast.splat217.a, %wide.load224
  %i.ar = and <2 x i64> %broadcast.splat217.a, %wide.load225
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat219.a
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat219.a
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat221, %wide.load224
  %i.ax = and <2 x i64> %broadcast.splat221, %wide.load225
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat219.a
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat219.a
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !45
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !45
  %index.next226 = add nuw i64 %index223, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next226, %n.vec213
  br i1 %i.bc, label %.loopexit, label %vector.body222, !llvm.loop !320

scalar.ph210:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !45    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !45
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph210.1

scalar.ph210.1:                                   ; preds = %scalar.ph210
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !45
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph210.2

scalar.ph210.2:                                   ; preds = %scalar.ph210.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !45 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !45
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx132 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx132 ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 3 uses
  %.not133 = icmp eq i32 %i.ce, 31
  br i1 %.not133, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %.not134 = icmp eq i32 %i.ci, 31
  %i.cl = sext i32 %spec.select117 to i64         ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.cl ; 5 uses
  %i.cn = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.co = shl i32 2, %i.ci
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  br i1 %.not134, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.cq = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 4 uses
  %i.cr = shl nuw nsw i64 %wide.trip.count153, 3
  %i.cs = shl nsw i64 %i.cp, 3
  %i.ct = add nsw i64 %i.cq, %wide.trip.count153
  %i.cu = shl nsw i64 %i.ct, 3
  %i.cv = shl nsw i64 %i.cl, 3
  %i.cw = getelementptr i8, ptr @s_Truths6, i64 %i.cv
  %scevgep183 = getelementptr i8, ptr %i.cw, i64 8 ; 2 uses
  %min.iters.check195 = icmp slt i32 %i.cj, 4
  %i.cx = getelementptr i8, ptr %0, i64 %i.cu
  %i.cy = getelementptr i8, ptr %0, i64 %i.cr
  %n.vec197 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar179 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next180, %._crit_edge.us ] ; 2 uses
  %.0128.us = phi ptr [ %0, %.preheader.us.preheader ], [ %i.eb, %._crit_edge.us ] ; 6 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cq ; 4 uses
  br i1 %min.iters.check195, label %scalar.ph194.preheader, label %vector.memcheck178

scalar.ph194.preheader:                           ; preds = %vector.memcheck178, %.preheader.us
  br label %scalar.ph194

vector.memcheck178:                               ; preds = %.preheader.us
  %i.cz = mul i64 %i.cs, %indvar179               ; 2 uses
  %scevgep182 = getelementptr i8, ptr %i.cx, i64 %i.cz ; 2 uses
  %scevgep181 = getelementptr i8, ptr %i.cy, i64 %i.cz ; 2 uses
  %bound0184 = icmp ult ptr %.0128.us, %scevgep182
  %bound1185 = icmp ult ptr %invariant.gep169, %scevgep181
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0187 = icmp ult ptr %.0128.us, %scevgep183
  %bound1188 = icmp ult ptr %i.cm, %scevgep181
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx = or i1 %found.conflict186, %found.conflict189
  %bound0190 = icmp ult ptr %invariant.gep169, %scevgep183
  %bound1191 = icmp ult ptr %i.cm, %scevgep182
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx, %found.conflict192
  br i1 %conflict.rdx193, label %scalar.ph194.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck178
  %i.da = load i64, ptr %i.cm, align 8, !tbaa !45, !alias.scope !335 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.db = xor <2 x i64> %broadcast.splat, splat (i64 -1)
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph196
  %index201 = phi i64 [ 0, %vector.ph196 ], [ %index.next206, %vector.body200 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index201 ; 2 uses
  %wide.load202 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !45, !alias.scope !336, !noalias !337 ; 2 uses
  %i.dd = and <2 x i64> %broadcast.splat, %wide.load202
  %i.de = lshr <2 x i64> %i.dd, %broadcast.splat199
  %i.df = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index201 ; 2 uses
  %wide.load203 = load <2 x i64>, ptr %i.df, align 8, !tbaa !45, !alias.scope !338, !noalias !335 ; 2 uses
  %i.dg = shl <2 x i64> %wide.load203, %broadcast.splat199
  %i.dh = and <2 x i64> %i.dg, %broadcast.splat
  %i.di = and <2 x i64> %wide.load202, %i.db
  %i.dj = or <2 x i64> %i.dh, %i.di
  store <2 x i64> %i.dj, ptr %i.dc, align 8, !tbaa !45, !alias.scope !336, !noalias !337
  %i.dk = and <2 x i64> %broadcast.splat205, %wide.load203
  %i.dl = or <2 x i64> %i.dk, %i.de
  store <2 x i64> %i.dl, ptr %i.df, align 8, !tbaa !45, !alias.scope !338, !noalias !335
  %index.next206 = add nuw i64 %index201, 2       ; 2 uses
  %i.dm = icmp eq i64 %index.next206, %n.vec197
  br i1 %i.dm, label %._crit_edge.us, label %vector.body200, !llvm.loop !325

scalar.ph194:                                     ; preds = %scalar.ph194.preheader, %scalar.ph194
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph194 ], [ 0, %scalar.ph194.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !45 ; 2 uses
  %i.dp = load i64, ptr %i.cm, align 8, !tbaa !45 ; 3 uses
  %i.dq = and i64 %i.dp, %i.do
  %i.dr = lshr i64 %i.dq, %i.cn
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.ds = load i64, ptr %gep170, align 8, !tbaa !45 ; 2 uses
  %i.dt = shl i64 %i.ds, %i.cn
  %i.du = and i64 %i.dt, %i.dp
  %i.dv = xor i64 %i.dp, -1
  %i.dw = and i64 %i.do, %i.dv
  %i.dx = or i64 %i.du, %i.dw
  store i64 %i.dx, ptr %i.dn, align 8, !tbaa !45
  %i.dy = load i64, ptr %i.cm, align 8, !tbaa !45
  %i.dz = and i64 %i.dy, %i.ds
  %i.ea = or i64 %i.dz, %i.dr
  store i64 %i.ea, ptr %gep170, align 8, !tbaa !45
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph194, !llvm.loop !326

._crit_edge.us:                                   ; preds = %vector.body200, %scalar.ph194
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cp ; 2 uses
  %i.ec = icmp ult ptr %i.eb, %i.ch
  %indvar.next180 = add i64 %indvar179, 1
  br i1 %i.ec, label %.preheader.us, label %.loopexit, !llvm.loop !327

bb.h:                                             ; preds = %bb.f
  %i.ed = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.ee = shl nuw i32 1, %i.ed                    ; 4 uses
  %i.ef = add nsw i32 %spec.select, -6            ; 3 uses
  %i.eg = shl nuw i32 1, %i.ef                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.ef, 31
  %i.eh = shl i32 2, %i.ef
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.ed, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.ej = shl i32 2, %i.ed                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1) ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 5 uses
  %i.el = sext i32 %i.ee to i64                   ; 2 uses
  %i.em = sext i32 %i.eg to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %smax173 = tail call i64 @llvm.smax.i64(i64 %i.em, i64 %i.ek)
  %i.en = icmp slt i32 %i.ej, %i.eg
  %umin = zext i1 %i.en to i64                    ; 2 uses
  %i.eo = or disjoint i64 %umin, %i.ek
  %i.ep = sub i64 %smax173, %i.eo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.eq = udiv i64 %i.ep, %umax
  %i.er = add i64 %i.eq, %umin
  %i.es = mul i64 %i.er, %i.ek                    ; 2 uses
  %i.et = add i64 %i.es, %i.el
  %i.eu = add i64 %i.et, %wide.trip.count
  %i.ev = shl i64 %i.eu, 3
  %i.ew = shl nsw i64 %i.ei, 3
  %i.ex = add i64 %i.es, %i.em
  %i.ey = add i64 %i.ex, %wide.trip.count
  %i.ez = shl i64 %i.ey, 3
  %i.fa = getelementptr i8, ptr %0, i64 %i.ev
  %i.fb = getelementptr i8, ptr %0, i64 %i.ez
  %min.iters.check = icmp slt i32 %i.ee, 4
  %stride.check = icmp slt i32 %i.ej, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fc = icmp slt i32 %i.ee, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod235 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fx, %._crit_edge124.us.us ] ; 3 uses
  %i.fd = mul i64 %i.ew, %indvar                  ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.el ; 2 uses
  %invariant.gep167 = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.em ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fa, i64 %i.fd
  %scevgep174 = getelementptr i8, ptr %i.fb, i64 %i.fd
  %bound0 = icmp ult ptr %invariant.gep, %scevgep174
  %bound1 = icmp ult ptr %invariant.gep167, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fe = or i1 %found.conflict, %stride.check
  br label %.preheader119.us.us

.preheader119.us.us:                              ; preds = %._crit_edge.us.us, %.preheader120.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge.us.us ], [ 0, %.preheader120.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167, i64 %indvars.iv146 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.fe
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119.us.us
  br i1 %i.fc, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us ] ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ff, align 8, !tbaa !45, !alias.scope !339, !noalias !340
  %wide.load175 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !45, !alias.scope !339, !noalias !340
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16     ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !45, !alias.scope !340
  %wide.load177 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !45, !alias.scope !340
  store <2 x i64> %wide.load176, ptr %i.ff, align 8, !tbaa !45, !alias.scope !339, !noalias !340
  store <2 x i64> %wide.load177, ptr %i.fg, align 8, !tbaa !45, !alias.scope !339, !noalias !340
  store <2 x i64> %wide.load, ptr %i.fh, align 8, !tbaa !45, !alias.scope !340
  store <2 x i64> %wide.load175, ptr %i.fi, align 8, !tbaa !45, !alias.scope !340
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %._crit_edge.us.us, label %vector.body, !llvm.loop !331

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fk = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !45
  %i.fm = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !45
  store i64 %i.fn, ptr %i.fk, align 8, !tbaa !45
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !45
  %i.fq = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !45
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !45
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !332

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.fs = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !45
  %i.fu = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  store i64 %i.fv, ptr %i.fs, align 8, !tbaa !45
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !45
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.ek ; 2 uses
  %i.fw = icmp slt i64 %indvars.iv.next147, %i.em
  br i1 %i.fw, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !333

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fx = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ei ; 2 uses
  %i.fy = icmp ult ptr %i.fx, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fy, label %.preheader120.us.us, label %.loopexit, !llvm.loop !334

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body222, %scalar.ph210, %scalar.ph210.1, %scalar.ph210.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Dau_DsdDecomposeInt(ptr noundef initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %2, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = icmp sgt i32 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %i.d, label %.lr.ph.i, label %Dau_DsdInitialize.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 13 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %2, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
end_hunk_0
