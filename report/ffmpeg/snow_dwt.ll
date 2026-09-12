Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snow_dwt?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 32
begin_hunk_0_@w_c:bb.a
  %i.f = icmp samesign ugt i32 %3, 8
  %i.g = icmp samesign ugt i32 %3, 12
  %i.h = icmp samesign ugt i32 %3, 16
  %i.i = icmp samesign ugt i32 %3, 20
  %i.j = icmp samesign ugt i32 %3, 24
  %i.k = icmp samesign ugt i32 %3, 28
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %bb.h
  %indvars.iv20 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next21, %bb.h ] ; 2 uses
  %.05 = phi ptr [ %0, %.preheader1.preheader ], [ %i.cd, %bb.h ] ; 9 uses
  %.0803 = phi ptr [ %1, %.preheader1.preheader ], [ %i.ce, %bb.h ] ; 9 uses
  %.idx = shl nuw nsw i64 %indvars.iv20, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 8 uses
  %i.l = load <4 x i8>, ptr %.05, align 1, !tbaa !360
  %i.m = zext <4 x i8> %i.l to <4 x i16>
  %i.n = load <4 x i8>, ptr %.0803, align 1, !tbaa !360
  %i.o = zext <4 x i8> %i.n to <4 x i16>
  %i.p = sub nsw <4 x i16> %i.m, %i.o
  %i.q = shl nsw <4 x i16> %i.p, splat (i16 4)
  %i.r = sext <4 x i16> %i.q to <4 x i32>
  store <4 x i32> %i.r, ptr %invariant.gep, align 16, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %.05, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.0803, i64 4
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.u = load <4 x i8>, ptr %i.s, align 1, !tbaa !360
  %i.v = zext <4 x i8> %i.u to <4 x i16>
  %i.w = load <4 x i8>, ptr %i.t, align 1, !tbaa !360
  %i.x = zext <4 x i8> %i.w to <4 x i16>
  %i.y = sub nsw <4 x i16> %i.v, %i.x
  %i.z = shl nsw <4 x i16> %i.y, splat (i16 4)
  %i.aa = sext <4 x i16> %i.z to <4 x i32>
  store <4 x i32> %i.aa, ptr %gep.1, align 16, !tbaa !25
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.preheader1
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0803, i64 8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.ad = load <4 x i8>, ptr %i.ab, align 1, !tbaa !360
  %i.ae = zext <4 x i8> %i.ad to <4 x i16>
  %i.af = load <4 x i8>, ptr %i.ac, align 1, !tbaa !360
  %i.ag = zext <4 x i8> %i.af to <4 x i16>
  %i.ah = sub nsw <4 x i16> %i.ae, %i.ag
  %i.ai = shl nsw <4 x i16> %i.ah, splat (i16 4)
  %i.aj = sext <4 x i16> %i.ai to <4 x i32>
  store <4 x i32> %i.aj, ptr %gep.2, align 16, !tbaa !25
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.05, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %.0803, i64 12
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.am = load <4 x i8>, ptr %i.ak, align 1, !tbaa !360
  %i.an = zext <4 x i8> %i.am to <4 x i16>
  %i.ao = load <4 x i8>, ptr %i.al, align 1, !tbaa !360
  %i.ap = zext <4 x i8> %i.ao to <4 x i16>
  %i.aq = sub nsw <4 x i16> %i.an, %i.ap
  %i.ar = shl nsw <4 x i16> %i.aq, splat (i16 4)
  %i.as = sext <4 x i16> %i.ar to <4 x i32>
  store <4 x i32> %i.as, ptr %gep.3, align 16, !tbaa !25
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.0803, i64 16
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.av = load <4 x i8>, ptr %i.at, align 1, !tbaa !360
  %i.aw = zext <4 x i8> %i.av to <4 x i16>
  %i.ax = load <4 x i8>, ptr %i.au, align 1, !tbaa !360
  %i.ay = zext <4 x i8> %i.ax to <4 x i16>
  %i.az = sub nsw <4 x i16> %i.aw, %i.ay
  %i.ba = shl nsw <4 x i16> %i.az, splat (i16 4)
  %i.bb = sext <4 x i16> %i.ba to <4 x i32>
  store <4 x i32> %i.bb, ptr %gep.4, align 16, !tbaa !25
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.05, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0803, i64 20
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.be = load <4 x i8>, ptr %i.bc, align 1, !tbaa !360
  %i.bf = zext <4 x i8> %i.be to <4 x i16>
  %i.bg = load <4 x i8>, ptr %i.bd, align 1, !tbaa !360
  %i.bh = zext <4 x i8> %i.bg to <4 x i16>
  %i.bi = sub nsw <4 x i16> %i.bf, %i.bh
  %i.bj = shl nsw <4 x i16> %i.bi, splat (i16 4)
  %i.bk = sext <4 x i16> %i.bj to <4 x i32>
  store <4 x i32> %i.bk, ptr %gep.5, align 16, !tbaa !25
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.0803, i64 24
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.bn = load <4 x i8>, ptr %i.bl, align 1, !tbaa !360
  %i.bo = zext <4 x i8> %i.bn to <4 x i16>
  %i.bp = load <4 x i8>, ptr %i.bm, align 1, !tbaa !360
  %i.bq = zext <4 x i8> %i.bp to <4 x i16>
  %i.br = sub nsw <4 x i16> %i.bo, %i.bq
  %i.bs = shl nsw <4 x i16> %i.br, splat (i16 4)
  %i.bt = sext <4 x i16> %i.bs to <4 x i32>
  store <4 x i32> %i.bt, ptr %gep.6, align 16, !tbaa !25
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %.05, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %.0803, i64 28
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.bw = load <4 x i8>, ptr %i.bu, align 1, !tbaa !360
  %i.bx = zext <4 x i8> %i.bw to <4 x i16>
  %i.by = load <4 x i8>, ptr %i.bv, align 1, !tbaa !360
  %i.bz = zext <4 x i8> %i.by to <4 x i16>
  %i.ca = sub nsw <4 x i16> %i.bx, %i.bz
  %i.cb = shl nsw <4 x i16> %i.ca, splat (i16 4)
  %i.cc = sext <4 x i16> %i.cb to <4 x i32>
  store <4 x i32> %i.cc, ptr %gep.7, align 16, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader1
  %i.cd = getelementptr inbounds i8, ptr %.05, i64 %2
  %i.ce = getelementptr inbounds i8, ptr %.0803, i64 %2
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader1, !llvm.loop !355

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @ff_spatial_dwt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %3, i32 noundef %4, i32 noundef 32, i32 noundef %5, i32 noundef %i.d)
  %i.cf = zext nneg i32 %5 to i64
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr @w_c.scale, i64 %i.cf
  %i.ch = zext nneg i32 %i.d to i64               ; 3 uses
  %i.ci = getelementptr [64 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -192
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.split14.us
  %indvars.iv33 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next34, %.split14.us ] ; 4 uses
  %.07815 = phi i32 [ 0, %._crit_edge ], [ %.us-phi, %.split14.us ] ; 2 uses
  %i.ck = sub nuw nsw i64 %i.ch, %indvars.iv33    ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 2 uses
  %i.cm = lshr i32 %3, %i.cl                      ; 5 uses
  %i.cn = shl nuw nsw i32 32, %i.cl
  %i.co = lshr exact i32 %i.cn, 1
  %.not17 = icmp eq i32 %i.cm, 0
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv33
  br i1 %.not17, label %.split14.us, label %.preheader.lr.ph.us.preheader

.preheader.lr.ph.us.preheader:                    ; preds = %bb.i
  %.not = icmp ne i64 %indvars.iv33, 0
  %i.cq = zext i1 %.not to i64
  %i.cr = trunc nuw i64 %i.ck to i32
  %i.cs = add nuw nsw i32 %i.cr, 5
  %wide.trip.count26 = zext nneg i32 %i.cm to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.cm, 8
  %n.vec = and i64 %wide.trip.count26, 56         ; 8 uses
  %i.ct = icmp eq i64 %n.vec, 8
  %i.cu = icmp eq i64 %n.vec, 16
  %i.cv = icmp eq i64 %n.vec, 24
  %i.cw = icmp eq i64 %n.vec, 32
  %i.cx = icmp eq i64 %n.vec, 40
  %i.cy = icmp eq i64 %n.vec, 48
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count26
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge10.us
  %indvars.iv29 = phi i64 [ %i.cq, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next30, %._crit_edge10.us ] ; 4 uses
  %.17911.us = phi i32 [ %.07815, %.preheader.lr.ph.us.preheader ], [ %.lcssa, %._crit_edge10.us ]
  %i.cz = and i64 %indvars.iv29, 1
  %.not84.us = icmp eq i64 %i.cz, 0
  %i.da = select i1 %.not84.us, i32 0, i32 %i.cm
  %.not85.us = icmp samesign ult i64 %indvars.iv29, 2
  %i.db = select i1 %.not85.us, i32 0, i32 %i.co
  %i.dc = add nuw nsw i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv29
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  br label %.preheader.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %scalar.ph ], [ %indvars.iv23.ph, %scalar.ph.preheader ] ; 2 uses
  %.36.us = phi i32 [ %i.di, %scalar.ph ], [ %.36.us.ph, %scalar.ph.preheader ]
  %gep41 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv23
  %i.df = load i32, ptr %gep41, align 4, !tbaa !25
  %i.dg = mul nsw i32 %i.de, %i.df
  %i.dh = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = add nuw nsw i32 %i.dh, %.36.us          ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %.loopexit, label %scalar.ph, !llvm.loop !356

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.fq, %middle.block ], [ %i.di, %scalar.ph ] ; 3 uses
  %i.dj = add nuw nsw i32 %.1779.us, 1            ; 2 uses
  %exitcond28.not = icmp eq i32 %i.dj, %i.cm
  br i1 %exitcond28.not, label %._crit_edge10.us, label %.preheader.us, !llvm.loop !357

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %.loopexit
  %.1779.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.dj, %.loopexit ] ; 2 uses
  %.28.us = phi i32 [ %.17911.us, %.preheader.lr.ph.us ], [ %.lcssa, %.loopexit ] ; 2 uses
  %i.dk = shl i32 %.1779.us, %i.cs
  %i.dl = add nsw i32 %i.dc, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %invariant.gep40 = getelementptr [4 x i8], ptr %i.a, i64 %i.dm ; 15 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us
  %i.dn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.28.us, i64 0
  %i.do = getelementptr i8, ptr %invariant.gep40, i64 16
  %wide.load = load <4 x i32>, ptr %invariant.gep40, align 4, !tbaa !25
  %wide.load43 = load <4 x i32>, ptr %i.do, align 4, !tbaa !25
  %i.dp = mul nsw <4 x i32> %broadcast.splat, %wide.load
  %i.dq = mul nsw <4 x i32> %broadcast.splat, %wide.load43
  %i.dr = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dp, i1 true)
  %i.ds = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dq, i1 true) ; 2 uses
  %i.dt = add <4 x i32> %i.dr, %i.dn              ; 2 uses
  br i1 %i.ct, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.du = getelementptr i8, ptr %invariant.gep40, i64 32
  %i.dv = getelementptr i8, ptr %invariant.gep40, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.du, align 4, !tbaa !25
  %wide.load43.1 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !25
  %i.dw = mul nsw <4 x i32> %broadcast.splat, %wide.load.1
  %i.dx = mul nsw <4 x i32> %broadcast.splat, %wide.load43.1
  %i.dy = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dw, i1 true)
  %i.dz = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dx, i1 true)
  %i.ea = add <4 x i32> %i.dy, %i.dt              ; 2 uses
  %i.eb = add nuw <4 x i32> %i.dz, %i.ds          ; 2 uses
  br i1 %i.cu, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ec = getelementptr i8, ptr %invariant.gep40, i64 64
  %i.ed = getelementptr i8, ptr %invariant.gep40, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !25
  %wide.load43.2 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !25
  %i.ee = mul nsw <4 x i32> %broadcast.splat, %wide.load.2
  %i.ef = mul nsw <4 x i32> %broadcast.splat, %wide.load43.2
  %i.eg = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ee, i1 true)
  %i.eh = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ef, i1 true)
  %i.ei = add <4 x i32> %i.eg, %i.ea              ; 2 uses
  %i.ej = add <4 x i32> %i.eh, %i.eb              ; 2 uses
  br i1 %i.cv, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ek = getelementptr i8, ptr %invariant.gep40, i64 96
  %i.el = getelementptr i8, ptr %invariant.gep40, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !25
  %wide.load43.3 = load <4 x i32>, ptr %i.el, align 4, !tbaa !25
  %i.em = mul nsw <4 x i32> %broadcast.splat, %wide.load.3
  %i.en = mul nsw <4 x i32> %broadcast.splat, %wide.load43.3
  %i.eo = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.em, i1 true)
  %i.ep = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.en, i1 true)
  %i.eq = add <4 x i32> %i.eo, %i.ei              ; 2 uses
  %i.er = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  br i1 %i.cw, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.es = getelementptr i8, ptr %invariant.gep40, i64 128
  %i.et = getelementptr i8, ptr %invariant.gep40, i64 144
  %wide.load.4 = load <4 x i32>, ptr %i.es, align 4, !tbaa !25
  %wide.load43.4 = load <4 x i32>, ptr %i.et, align 4, !tbaa !25
  %i.eu = mul nsw <4 x i32> %broadcast.splat, %wide.load.4
  %i.ev = mul nsw <4 x i32> %broadcast.splat, %wide.load43.4
  %i.ew = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.eu, i1 true)
  %i.ex = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ev, i1 true)
  %i.ey = add <4 x i32> %i.ew, %i.eq              ; 2 uses
  %i.ez = add <4 x i32> %i.ex, %i.er              ; 2 uses
  br i1 %i.cx, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.fa = getelementptr i8, ptr %invariant.gep40, i64 160
  %i.fb = getelementptr i8, ptr %invariant.gep40, i64 176
  %wide.load.5 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !25
  %wide.load43.5 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !25
  %i.fc = mul nsw <4 x i32> %broadcast.splat, %wide.load.5
  %i.fd = mul nsw <4 x i32> %broadcast.splat, %wide.load43.5
  %i.fe = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fc, i1 true)
  %i.ff = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fd, i1 true)
  %i.fg = add <4 x i32> %i.fe, %i.ey              ; 2 uses
  %i.fh = add <4 x i32> %i.ff, %i.ez              ; 2 uses
  br i1 %i.cy, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.fi = getelementptr i8, ptr %invariant.gep40, i64 192
  %i.fj = getelementptr i8, ptr %invariant.gep40, i64 208
  %wide.load.6 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !25
  %wide.load43.6 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !25
  %i.fk = mul nsw <4 x i32> %broadcast.splat, %wide.load.6
  %i.fl = mul nsw <4 x i32> %broadcast.splat, %wide.load43.6
  %i.fm = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fk, i1 true)
  %i.fn = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fl, i1 true)
  %i.fo = add <4 x i32> %i.fm, %i.fg
  %i.fp = add <4 x i32> %i.fn, %i.fh
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.body
  %.lcssa45 = phi <4 x i32> [ %i.dt, %vector.body ], [ %i.ea, %vector.body.1 ], [ %i.ei, %vector.body.2 ], [ %i.eq, %vector.body.3 ], [ %i.ey, %vector.body.4 ], [ %i.fg, %vector.body.5 ], [ %i.fo, %vector.body.6 ]
  %.lcssa44 = phi <4 x i32> [ %i.ds, %vector.body ], [ %i.eb, %vector.body.1 ], [ %i.ej, %vector.body.2 ], [ %i.er, %vector.body.3 ], [ %i.ez, %vector.body.4 ], [ %i.fh, %vector.body.5 ], [ %i.fp, %vector.body.6 ]
  %bin.rdx = add <4 x i32> %.lcssa44, %.lcssa45
  %i.fq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv23.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.36.us.ph = phi i32 [ %.28.us, %.preheader.us ], [ %i.fq, %middle.block ]
  br label %scalar.ph

._crit_edge10.us:                                 ; preds = %.loopexit
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 4
  br i1 %exitcond32.not, label %.split14.us, label %.preheader.lr.ph.us, !llvm.loop !358

.split14.us:                                      ; preds = %._crit_edge10.us, %bb.i
  %.us-phi = phi i32 [ %.07815, %bb.i ], [ %.lcssa, %._crit_edge10.us ] ; 2 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %i.ch
  br i1 %exitcond37.not, label %bb.j, label %bb.i, !llvm.loop !359

bb.j:                                             ; preds = %.split14.us
  %i.fr = lshr i32 %.us-phi, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.fr
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4194304) i32 @ff_w97_32_c(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 32, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dsputil_init_dwt(ptr nofree noundef writeonly captures(none) initializes((488, 504), (536, 552)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr @w53_16_c, ptr %i.a, align 8, !tbaa !361
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @w53_8_c, ptr %i.b, align 8, !tbaa !361
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr @w97_16_c, ptr %i.c, align 8, !tbaa !361
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @w97_8_c, ptr %i.d, align 8, !tbaa !361
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w53_16_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w53_8_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w97_16_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4194304) i32 @w97_8_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = tail call fastcc i32 @w_c(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dwt_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #9 {
bb.a:
  store ptr @snow_vertical_compose97i, ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @snow_horizontal_compose97i, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @ff_snow_inner_add_yblock_c, ptr %i.b, align 8, !tbaa !362
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @snow_vertical_compose97i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) #10 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %6, 24
  br i1 %min.iters.check, label %.lr.ph.preheader96, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 1      ; 6 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.b   ; 5 uses
  %scevgep32 = getelementptr i8, ptr %3, i64 %i.b ; 5 uses
  %scevgep33 = getelementptr i8, ptr %2, i64 %i.b ; 5 uses
end_hunk_0
