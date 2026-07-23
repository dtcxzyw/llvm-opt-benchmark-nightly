inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoAssignIteration:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  store <2 x i64> %wide.load.8, ptr %i.au, align 8, !tbaa !15
  store <2 x i64> %wide.load23.8, ptr %i.av, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %wide.load.9 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !15
  %wide.load23.9 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  store <2 x i64> %wide.load.9, ptr %i.ay, align 8, !tbaa !15
  store <2 x i64> %wide.load23.9, ptr %i.az, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %wide.load.10 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !15
  %wide.load23.10 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  store <2 x i64> %wide.load.10, ptr %i.bc, align 8, !tbaa !15
  store <2 x i64> %wide.load23.10, ptr %i.bd, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %wide.load.11 = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %wide.load23.11 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  store <2 x i64> %wide.load.11, ptr %i.bg, align 8, !tbaa !15
  store <2 x i64> %wide.load23.11, ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  %wide.load.12 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !15
  %wide.load23.12 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 400
  store <2 x i64> %wide.load.12, ptr %i.bk, align 8, !tbaa !15
  store <2 x i64> %wide.load23.12, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %wide.load.13 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !15
  %wide.load23.13 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  store <2 x i64> %wide.load.13, ptr %i.bo, align 8, !tbaa !15
  store <2 x i64> %wide.load23.13, ptr %i.bp, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %wide.load.14 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !15
  %wide.load23.14 = load <2 x i64>, ptr %i.br, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  store <2 x i64> %wide.load.14, ptr %i.bs, align 8, !tbaa !15
  store <2 x i64> %wide.load23.14, ptr %i.bt, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %wide.load.15 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !15
  %wide.load23.15 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 480
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 496
  store <2 x i64> %wide.load.15, ptr %i.bw, align 8, !tbaa !15
  store <2 x i64> %wide.load23.15, ptr %i.bx, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  %wide.load.16 = load <2 x i64>, ptr %i.by, align 8, !tbaa !15
  %wide.load23.16 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 528
  store <2 x i64> %wide.load.16, ptr %i.ca, align 8, !tbaa !15
  store <2 x i64> %wide.load23.16, ptr %i.cb, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  %wide.load.17 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !15
  %wide.load23.17 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 560
  store <2 x i64> %wide.load.17, ptr %i.ce, align 8, !tbaa !15
  store <2 x i64> %wide.load23.17, ptr %i.cf, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %wide.load.18 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !15
  %wide.load23.18 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 576
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 592
  store <2 x i64> %wide.load.18, ptr %i.ci, align 8, !tbaa !15
  store <2 x i64> %wide.load23.18, ptr %i.cj, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  %wide.load.19 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !15
  %wide.load23.19 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 608
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 624
  store <2 x i64> %wide.load.19, ptr %i.cm, align 8, !tbaa !15
  store <2 x i64> %wide.load23.19, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  %wide.load.20 = load <2 x i64>, ptr %i.co, align 8, !tbaa !15
  %wide.load23.20 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 640
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  store <2 x i64> %wide.load.20, ptr %i.cq, align 8, !tbaa !15
  store <2 x i64> %wide.load23.20, ptr %i.cr, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %wide.load.21 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !15
  %wide.load23.21 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 672
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 688
  store <2 x i64> %wide.load.21, ptr %i.cu, align 8, !tbaa !15
  store <2 x i64> %wide.load23.21, ptr %i.cv, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %wide.load.22 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  %wide.load23.22 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 704
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 720
  store <2 x i64> %wide.load.22, ptr %i.cy, align 8, !tbaa !15
  store <2 x i64> %wide.load23.22, ptr %i.cz, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 752
  %wide.load.23 = load <2 x i64>, ptr %i.da, align 8, !tbaa !15
  %wide.load23.23 = load <2 x i64>, ptr %i.db, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 736
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 752
  store <2 x i64> %wide.load.23, ptr %i.dc, align 8, !tbaa !15
  store <2 x i64> %wide.load23.23, ptr %i.dd, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 768
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 784
  %wide.load.24 = load <2 x i64>, ptr %i.de, align 8, !tbaa !15
  %wide.load23.24 = load <2 x i64>, ptr %i.df, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 768
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 784
  store <2 x i64> %wide.load.24, ptr %i.dg, align 8, !tbaa !15
  store <2 x i64> %wide.load23.24, ptr %i.dh, align 8, !tbaa !15
  br label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %.preheader.i9.i, %vector.body
  %indvars.iv.i10.i.ph = phi i64 [ 0, %.preheader.i9.i ], [ 100, %vector.body ]
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv.i10.i.prol = phi i64 [ %indvars.iv.next.i11.i.prol, %scalar.ph.prol ], [ %indvars.iv.i10.i.ph, %scalar.ph.prol.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i10.i.prol
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i10.i.prol
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !15
  %indvars.iv.next.i11.i.prol = add nuw nsw i64 %indvars.iv.i10.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !84

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol
  br i1 %diff.check, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i10.i = phi i64 [ %indvars.iv.next.i11.i.3, %scalar.ph ], [ %indvars.iv.next.i11.i.prol, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i10.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i10.i
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !15
  %indvars.iv.next.i11.i = add nuw nsw i64 %indvars.iv.i10.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i11.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i11.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !15
  %indvars.iv.next.i11.i.1 = add nuw nsw i64 %indvars.iv.i10.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i11.i.1
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !15
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i11.i.1
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !15
  %indvars.iv.next.i11.i.2 = add nuw nsw i64 %indvars.iv.i10.i, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i11.i.2
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i11.i.2
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !15
  %indvars.iv.next.i11.i.3 = add nuw nsw i64 %indvars.iv.i10.i, 4 ; 2 uses
  %exitcond.not.i12.i.3 = icmp eq i64 %indvars.iv.next.i11.i.3, 101
  br i1 %exitcond.not.i12.i.3, label %.unr-lcssa, label %scalar.ph, !llvm.loop !85

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next17.i.i = add nuw nsw i64 %indvars.iv16.i.i, 1 ; 2 uses
  %exitcond19.not.i.i = icmp eq i64 %indvars.iv.next17.i.i, 101
  br i1 %exitcond19.not.i.i, label %CopyToAssign.exit.i, label %.preheader.i9.i, !llvm.loop !86

CopyToAssign.exit.i:                              ; preds = %.unr-lcssa
  %i.dx = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dx, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %LoadAssignArrayWithRand.exit.thread, label %.preheader.i, !llvm.loop !87

LoadAssignArrayWithRand.exit.thread:              ; preds = %CopyToAssign.exit.i
  %i.dy = tail call i64 (...) @StartStopwatch() #11
  br label %.lr.ph.preheader

LoadAssignArrayWithRand.exit:                     ; preds = %LoadAssign.exit.i
  %i.dz = tail call i64 (...) @StartStopwatch() #11 ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %LoadAssignArrayWithRand.exit.thread, %LoadAssignArrayWithRand.exit
  %i.ea = phi i64 [ %i.dy, %LoadAssignArrayWithRand.exit.thread ], [ %i.dz, %LoadAssignArrayWithRand.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Assignment.exit
  %.014 = phi i64 [ %i.tr, %Assignment.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0.013 = phi ptr [ %i.tq, %Assignment.exit ], [ %0, %.lr.ph.preheader ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  br label %.preheader52.i.i

.preheader52.i.i:                                 ; preds = %vector.ph67, %.lr.ph
  %indvars.iv68.i.i = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next69.i.i, %vector.ph67 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.013, i64 %indvars.iv68.i.i ; 54 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %.preheader52.i.i
  %index77 = phi i64 [ 0, %.preheader52.i.i ], [ %index.next82, %vector.body76 ] ; 2 uses
  %vec.phi78 = phi <2 x i64> [ splat (i64 9223372036854775807), %.preheader52.i.i ], [ %i.ej, %vector.body76 ]
  %vec.phi79 = phi <2 x i64> [ splat (i64 9223372036854775807), %.preheader52.i.i ], [ %i.ek, %vector.body76 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index77 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load80 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !15
  %wide.load81 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !15
  %i.ej = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load80, <2 x i64> %vec.phi78) ; 2 uses
  %i.ek = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load81, <2 x i64> %vec.phi79) ; 2 uses
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.el = icmp eq i64 %index.next82, 100
  br i1 %i.el, label %vector.ph67, label %vector.body76, !llvm.loop !88

vector.ph67:                                      ; preds = %vector.body76
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.ej, <2 x i64> %i.ek)
  %i.em = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 800
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !15
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %i.eo, i64 %i.em) ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %spec.select.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 50 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load70 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !15
  %wide.load71 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !15
  %i.eq = sub nsw <2 x i64> %wide.load70, %broadcast.splat
  %i.er = sub nsw <2 x i64> %wide.load71, %broadcast.splat
  store <2 x i64> %i.eq, ptr %i.eg, align 8, !tbaa !15
  store <2 x i64> %i.er, ptr %i.ep, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 2 uses
  %wide.load70.1 = load <2 x i64>, ptr %i.es, align 8, !tbaa !15
  %wide.load71.1 = load <2 x i64>, ptr %i.et, align 8, !tbaa !15
  %i.eu = sub nsw <2 x i64> %wide.load70.1, %broadcast.splat
  %i.ev = sub nsw <2 x i64> %wide.load71.1, %broadcast.splat
  store <2 x i64> %i.eu, ptr %i.es, align 8, !tbaa !15
  store <2 x i64> %i.ev, ptr %i.et, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 80 ; 2 uses
  %wide.load70.2 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !15
  %wide.load71.2 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !15
  %i.ey = sub nsw <2 x i64> %wide.load70.2, %broadcast.splat
  %i.ez = sub nsw <2 x i64> %wide.load71.2, %broadcast.splat
  store <2 x i64> %i.ey, ptr %i.ew, align 8, !tbaa !15
  store <2 x i64> %i.ez, ptr %i.ex, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 96 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eg, i64 112 ; 2 uses
  %wide.load70.3 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !15
  %wide.load71.3 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !15
  %i.fc = sub nsw <2 x i64> %wide.load70.3, %broadcast.splat
  %i.fd = sub nsw <2 x i64> %wide.load71.3, %broadcast.splat
  store <2 x i64> %i.fc, ptr %i.fa, align 8, !tbaa !15
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 144 ; 2 uses
  %wide.load70.4 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !15
  %wide.load71.4 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !15
  %i.fg = sub nsw <2 x i64> %wide.load70.4, %broadcast.splat
  %i.fh = sub nsw <2 x i64> %wide.load71.4, %broadcast.splat
  store <2 x i64> %i.fg, ptr %i.fe, align 8, !tbaa !15
  store <2 x i64> %i.fh, ptr %i.ff, align 8, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 160 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 176 ; 2 uses
  %wide.load70.5 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !15
  %wide.load71.5 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !15
  %i.fk = sub nsw <2 x i64> %wide.load70.5, %broadcast.splat
  %i.fl = sub nsw <2 x i64> %wide.load71.5, %broadcast.splat
  store <2 x i64> %i.fk, ptr %i.fi, align 8, !tbaa !15
  store <2 x i64> %i.fl, ptr %i.fj, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 192 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 208 ; 2 uses
  %wide.load70.6 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !15
  %wide.load71.6 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !15
  %i.fo = sub nsw <2 x i64> %wide.load70.6, %broadcast.splat
  %i.fp = sub nsw <2 x i64> %wide.load71.6, %broadcast.splat
  store <2 x i64> %i.fo, ptr %i.fm, align 8, !tbaa !15
  store <2 x i64> %i.fp, ptr %i.fn, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eg, i64 224 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 240 ; 2 uses
  %wide.load70.7 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !15
  %wide.load71.7 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !15
  %i.fs = sub nsw <2 x i64> %wide.load70.7, %broadcast.splat
  %i.ft = sub nsw <2 x i64> %wide.load71.7, %broadcast.splat
  store <2 x i64> %i.fs, ptr %i.fq, align 8, !tbaa !15
  store <2 x i64> %i.ft, ptr %i.fr, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 256 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eg, i64 272 ; 2 uses
  %wide.load70.8 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !15
  %wide.load71.8 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !15
  %i.fw = sub nsw <2 x i64> %wide.load70.8, %broadcast.splat
  %i.fx = sub nsw <2 x i64> %wide.load71.8, %broadcast.splat
  store <2 x i64> %i.fw, ptr %i.fu, align 8, !tbaa !15
  store <2 x i64> %i.fx, ptr %i.fv, align 8, !tbaa !15
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 288 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eg, i64 304 ; 2 uses
  %wide.load70.9 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !15
  %wide.load71.9 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !15
  %i.ga = sub nsw <2 x i64> %wide.load70.9, %broadcast.splat
  %i.gb = sub nsw <2 x i64> %wide.load71.9, %broadcast.splat
  store <2 x i64> %i.ga, ptr %i.fy, align 8, !tbaa !15
  store <2 x i64> %i.gb, ptr %i.fz, align 8, !tbaa !15
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eg, i64 320 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eg, i64 336 ; 2 uses
  %wide.load70.10 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !15
  %wide.load71.10 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !15
  %i.ge = sub nsw <2 x i64> %wide.load70.10, %broadcast.splat
  %i.gf = sub nsw <2 x i64> %wide.load71.10, %broadcast.splat
  store <2 x i64> %i.ge, ptr %i.gc, align 8, !tbaa !15
  store <2 x i64> %i.gf, ptr %i.gd, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 352 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 368 ; 2 uses
  %wide.load70.11 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !15
  %wide.load71.11 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !15
  %i.gi = sub nsw <2 x i64> %wide.load70.11, %broadcast.splat
  %i.gj = sub nsw <2 x i64> %wide.load71.11, %broadcast.splat
  store <2 x i64> %i.gi, ptr %i.gg, align 8, !tbaa !15
  store <2 x i64> %i.gj, ptr %i.gh, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eg, i64 384 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eg, i64 400 ; 2 uses
  %wide.load70.12 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !15
  %wide.load71.12 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !15
  %i.gm = sub nsw <2 x i64> %wide.load70.12, %broadcast.splat
  %i.gn = sub nsw <2 x i64> %wide.load71.12, %broadcast.splat
  store <2 x i64> %i.gm, ptr %i.gk, align 8, !tbaa !15
  store <2 x i64> %i.gn, ptr %i.gl, align 8, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %i.eg, i64 416 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 432 ; 2 uses
  %wide.load70.13 = load <2 x i64>, ptr %i.go, align 8, !tbaa !15
  %wide.load71.13 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !15
  %i.gq = sub nsw <2 x i64> %wide.load70.13, %broadcast.splat
  %i.gr = sub nsw <2 x i64> %wide.load71.13, %broadcast.splat
  store <2 x i64> %i.gq, ptr %i.go, align 8, !tbaa !15
  store <2 x i64> %i.gr, ptr %i.gp, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eg, i64 448 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eg, i64 464 ; 2 uses
  %wide.load70.14 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !15
  %wide.load71.14 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !15
  %i.gu = sub nsw <2 x i64> %wide.load70.14, %broadcast.splat
  %i.gv = sub nsw <2 x i64> %wide.load71.14, %broadcast.splat
  store <2 x i64> %i.gu, ptr %i.gs, align 8, !tbaa !15
  store <2 x i64> %i.gv, ptr %i.gt, align 8, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eg, i64 480 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eg, i64 496 ; 2 uses
  %wide.load70.15 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !15
  %wide.load71.15 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !15
  %i.gy = sub nsw <2 x i64> %wide.load70.15, %broadcast.splat
  %i.gz = sub nsw <2 x i64> %wide.load71.15, %broadcast.splat
  store <2 x i64> %i.gy, ptr %i.gw, align 8, !tbaa !15
  store <2 x i64> %i.gz, ptr %i.gx, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eg, i64 512 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eg, i64 528 ; 2 uses
  %wide.load70.16 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !15
  %wide.load71.16 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !15
  %i.hc = sub nsw <2 x i64> %wide.load70.16, %broadcast.splat
  %i.hd = sub nsw <2 x i64> %wide.load71.16, %broadcast.splat
  store <2 x i64> %i.hc, ptr %i.ha, align 8, !tbaa !15
  store <2 x i64> %i.hd, ptr %i.hb, align 8, !tbaa !15
  %i.he = getelementptr inbounds nuw i8, ptr %i.eg, i64 544 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eg, i64 560 ; 2 uses
  %wide.load70.17 = load <2 x i64>, ptr %i.he, align 8, !tbaa !15
  %wide.load71.17 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !15
  %i.hg = sub nsw <2 x i64> %wide.load70.17, %broadcast.splat
  %i.hh = sub nsw <2 x i64> %wide.load71.17, %broadcast.splat
  store <2 x i64> %i.hg, ptr %i.he, align 8, !tbaa !15
  store <2 x i64> %i.hh, ptr %i.hf, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.eg, i64 576 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eg, i64 592 ; 2 uses
  %wide.load70.18 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !15
  %wide.load71.18 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !15
  %i.hk = sub nsw <2 x i64> %wide.load70.18, %broadcast.splat
  %i.hl = sub nsw <2 x i64> %wide.load71.18, %broadcast.splat
  store <2 x i64> %i.hk, ptr %i.hi, align 8, !tbaa !15
  store <2 x i64> %i.hl, ptr %i.hj, align 8, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eg, i64 608 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eg, i64 624 ; 2 uses
  %wide.load70.19 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !15
  %wide.load71.19 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !15
  %i.ho = sub nsw <2 x i64> %wide.load70.19, %broadcast.splat
  %i.hp = sub nsw <2 x i64> %wide.load71.19, %broadcast.splat
  store <2 x i64> %i.ho, ptr %i.hm, align 8, !tbaa !15
  store <2 x i64> %i.hp, ptr %i.hn, align 8, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eg, i64 640 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eg, i64 656 ; 2 uses
  %wide.load70.20 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !15
  %wide.load71.20 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !15
  %i.hs = sub nsw <2 x i64> %wide.load70.20, %broadcast.splat
end_hunk_0
begin_hunk_1_@DoAssignIteration:bb.a
.thread.i.i:                                      ; preds = %bb.au, %.thread.loopexit.i.i
  %.6113.i.i = phi i16 [ %i.mo, %.thread.loopexit.i.i ], [ %.5112193.i.i, %bb.au ] ; 2 uses
  %indvars.iv.next232.i.i = add nuw nsw i64 %indvars.iv231.i.i, 1 ; 2 uses
  %exitcond234.not.i.i = icmp eq i64 %indvars.iv.next232.i.i, 101
  br i1 %exitcond234.not.i.i, label %first_assignments.exit.i, label %.preheader150.i.i, !llvm.loop !94

first_assignments.exit.i:                         ; preds = %.thread.i.i
  %.not.i = icmp eq i16 %.6113.i.i, 101
  br i1 %.not.i, label %Assignment.exit, label %bb.bp

bb.bp:                                            ; preds = %first_assignments.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(202) %i.a, i8 0, i64 202, i1 false), !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(202) %i.b, i8 0, i64 202, i1 false), !tbaa !91
  br label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %.loopexit118.i.i, %bb.bp
  %indvars.iv142.i.i = phi i64 [ 0, %bb.bp ], [ %indvars.iv.next143.i.i, %.loopexit118.i.i ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [202 x i8], ptr %i.c, i64 %indvars.iv142.i.i ; 4 uses
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bv
  %exitcond.i.i = icmp eq i64 %indvars.iv.i11.i, 100
  br i1 %exitcond.i.i, label %.critedge.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %indvars.iv.i11.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !91
  %i.mt = icmp eq i16 %i.ms, 1
  br i1 %i.mt, label %.loopexit118.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %indvars.iv.i11.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !91
  %i.mx = icmp eq i16 %i.mw, 1
  br i1 %i.mx, label %.loopexit118.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %indvars.iv.i11.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 6
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !91
  %i.nb = icmp eq i16 %i.na, 1
  br i1 %i.nb, label %.loopexit118.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %indvars.iv.next.i12.i.3 = add nuw nsw i64 %indvars.iv.i11.i, 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.preheader117.i.i
  %indvars.iv.i11.i = phi i64 [ 0, %.preheader117.i.i ], [ %indvars.iv.next.i12.i.3, %bb.bu ] ; 6 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %indvars.iv.i11.i
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !91
  %i.ne = icmp eq i16 %i.nd, 1
  br i1 %i.ne, label %.loopexit118.i.i, label %bb.bq

.critedge.i.i:                                    ; preds = %bb.bq
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv142.i.i
  store i16 1, ptr %i.nf, align 2, !tbaa !91
  br label %.loopexit118.i.i

.loopexit118.i.i:                                 ; preds = %bb.bv, %bb.br, %bb.bs, %bb.bt, %.critedge.i.i
  %indvars.iv.next143.i.i = add nuw nsw i64 %indvars.iv142.i.i, 1 ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %indvars.iv.next143.i.i, 101
  br i1 %exitcond145.not.i.i, label %.preheader116.i.i, label %.preheader117.i.i, !llvm.loop !95

.preheader116.i.i:                                ; preds = %.loopexit118.i.i, %.preheader116.i.i.backedge
  %indvars.iv150.i.i = phi i64 [ %indvars.iv150.i.i.be, %.preheader116.i.i.backedge ], [ 0, %.loopexit118.i.i ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv150.i.i
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !91
  %i.ni = icmp eq i16 %i.nh, 1
  br i1 %i.ni, label %.preheader113.i.i, label %.loopexit114.i.i

.preheader113.i.i:                                ; preds = %.preheader116.i.i
  %i.nj = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.013, i64 %indvars.iv150.i.i ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cb, %.preheader113.i.i
  %indvars.iv146.i.i = phi i64 [ 0, %.preheader113.i.i ], [ %indvars.iv.next147.i.i.1, %bb.cb ] ; 5 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv146.i.i
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !15
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv146.i.i
  store i16 1, ptr %i.nn, align 4, !tbaa !91
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %indvars.iv.next147.i.i = or disjoint i64 %indvars.iv146.i.i, 1 ; 2 uses
  %exitcond149.not.i.i = icmp eq i64 %indvars.iv146.i.i, 100
  br i1 %exitcond149.not.i.i, label %.loopexit114.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.next147.i.i
  %i.np = load i64, ptr %i.no, align 8, !tbaa !15
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next147.i.i
  store i16 1, ptr %i.nr, align 2, !tbaa !91
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %indvars.iv.next147.i.i.1 = add nuw nsw i64 %indvars.iv146.i.i, 2
  br label %bb.bw

.loopexit114.i.i:                                 ; preds = %bb.by, %.preheader116.i.i
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %exitcond153.not.i.i = icmp eq i64 %indvars.iv.next151.i.i, 101
  br i1 %exitcond153.not.i.i, label %.preheader115.i.i, label %.preheader116.i.i.backedge

.preheader116.i.i.backedge:                       ; preds = %.loopexit114.i.i, %bb.cl
  %indvars.iv150.i.i.be = phi i64 [ %indvars.iv.next151.i.i, %.loopexit114.i.i ], [ 0, %bb.cl ]
  br label %.preheader116.i.i, !llvm.loop !96

.preheader115.i.i:                                ; preds = %.loopexit114.i.i, %.loopexit112.i.i
  %indvars.iv157.i.i = phi i64 [ %indvars.iv.next158.i.i, %.loopexit112.i.i ], [ 0, %.loopexit114.i.i ] ; 3 uses
  %.0130.i.i = phi i16 [ %.3.i13.i, %.loopexit112.i.i ], [ 0, %.loopexit114.i.i ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv157.i.i
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !91
  %i.nu = icmp eq i16 %i.nt, 1
  br i1 %i.nu, label %.preheader111.i.i, label %.loopexit112.i.i

.preheader111.i.i:                                ; preds = %.preheader115.i.i
  %invariant.gep.i18.i = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv157.i.i ; 21 uses
  %i.nv = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.0130.i.i, i64 0
  br label %vector.body26

vector.body26:                                    ; preds = %pred.store.continue60, %.preheader111.i.i
  %index27 = phi i64 [ 0, %.preheader111.i.i ], [ %index.next64, %pred.store.continue60 ] ; 18 uses
  %vec.phi = phi <8 x i16> [ %i.nv, %.preheader111.i.i ], [ %predphi61.a, %pred.store.continue60 ]
  %vec.phi28 = phi <8 x i16> [ zeroinitializer, %.preheader111.i.i ], [ %predphi63, %pred.store.continue60 ]
  %i.nw = or disjoint i64 %index27, 1             ; 2 uses
  %i.nx = or disjoint i64 %index27, 2             ; 2 uses
  %i.ny = or disjoint i64 %index27, 3             ; 2 uses
  %i.nz = or disjoint i64 %index27, 4             ; 2 uses
  %i.oa = or disjoint i64 %index27, 5             ; 2 uses
  %i.ob = or disjoint i64 %index27, 6             ; 2 uses
  %i.oc = or disjoint i64 %index27, 7             ; 2 uses
  %i.od = or disjoint i64 %index27, 8             ; 2 uses
  %i.oe = or disjoint i64 %index27, 9             ; 2 uses
  %i.of = or disjoint i64 %index27, 10            ; 2 uses
  %i.og = or disjoint i64 %index27, 11            ; 2 uses
  %i.oh = or disjoint i64 %index27, 12            ; 2 uses
  %i.oi = or disjoint i64 %index27, 13            ; 2 uses
  %i.oj = or disjoint i64 %index27, 14            ; 2 uses
  %i.ok = or disjoint i64 %index27, 15            ; 2 uses
  %i.ol = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %index27
  %i.om = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.nw
  %i.on = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.nx
  %i.oo = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.ny
  %i.op = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.nz
  %i.oq = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.oa
  %i.or = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.ob
  %i.os = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.oc
  %i.ot = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.od
  %i.ou = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.oe
  %i.ov = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.of
  %i.ow = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.og
  %i.ox = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.oh
  %i.oy = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.oi
  %i.oz = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.oj
  %i.pa = getelementptr inbounds nuw [202 x i8], ptr %invariant.gep.i18.i, i64 %i.ok
  %i.pb = load i16, ptr %i.ol, align 2, !tbaa !91
  %i.pc = load i16, ptr %i.om, align 2, !tbaa !91
  %i.pd = load i16, ptr %i.on, align 2, !tbaa !91
  %i.pe = load i16, ptr %i.oo, align 2, !tbaa !91
  %i.pf = load i16, ptr %i.op, align 2, !tbaa !91
  %i.pg = load i16, ptr %i.oq, align 2, !tbaa !91
  %i.ph = load i16, ptr %i.or, align 2, !tbaa !91
  %i.pi = load i16, ptr %i.os, align 2, !tbaa !91
  %i.pj = insertelement <8 x i16> poison, i16 %i.pb, i64 0
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 1
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 2
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 3
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 4
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 5
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 6
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 7
  %i.pr = load i16, ptr %i.ot, align 2, !tbaa !91
  %i.ps = load i16, ptr %i.ou, align 2, !tbaa !91
  %i.pt = load i16, ptr %i.ov, align 2, !tbaa !91
  %i.pu = load i16, ptr %i.ow, align 2, !tbaa !91
  %i.pv = load i16, ptr %i.ox, align 2, !tbaa !91
  %i.pw = load i16, ptr %i.oy, align 2, !tbaa !91
  %i.px = load i16, ptr %i.oz, align 2, !tbaa !91
  %i.py = load i16, ptr %i.pa, align 2, !tbaa !91
  %i.pz = insertelement <8 x i16> poison, i16 %i.pr, i64 0
  %i.qa = insertelement <8 x i16> %i.pz, i16 %i.ps, i64 1
  %i.qb = insertelement <8 x i16> %i.qa, i16 %i.pt, i64 2
  %i.qc = insertelement <8 x i16> %i.qb, i16 %i.pu, i64 3
  %i.qd = insertelement <8 x i16> %i.qc, i16 %i.pv, i64 4
  %i.qe = insertelement <8 x i16> %i.qd, i16 %i.pw, i64 5
  %i.qf = insertelement <8 x i16> %i.qe, i16 %i.px, i64 6
  %i.qg = insertelement <8 x i16> %i.qf, i16 %i.py, i64 7
  %i.qh = icmp eq <8 x i16> %i.pq, splat (i16 1)
  %i.qi = icmp eq <8 x i16> %i.qg, splat (i16 1)
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index27 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %wide.load29 = load <8 x i16>, ptr %i.qj, align 16, !tbaa !91
  %wide.load30 = load <8 x i16>, ptr %i.qk, align 16, !tbaa !91
  %i.ql = icmp ne <8 x i16> %wide.load29, splat (i16 1)
  %i.qm = icmp ne <8 x i16> %wide.load30, splat (i16 1)
  %i.qn = select <8 x i1> %i.qh, <8 x i1> %i.ql, <8 x i1> zeroinitializer ; 9 uses
  %i.qo = select <8 x i1> %i.qi, <8 x i1> %i.qm, <8 x i1> zeroinitializer ; 9 uses
  %i.qp = extractelement <8 x i1> %i.qn, i64 0
  br i1 %i.qp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body26
  store i16 1, ptr %i.qj, align 16, !tbaa !91
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body26
  %i.qq = extractelement <8 x i1> %i.qn, i64 1
  br i1 %i.qq, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nw
  store i16 1, ptr %i.qr, align 2, !tbaa !91
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue
  %i.qs = extractelement <8 x i1> %i.qn, i64 2
  br i1 %i.qs, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nx
  store i16 1, ptr %i.qt, align 4, !tbaa !91
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.qu = extractelement <8 x i1> %i.qn, i64 3
  br i1 %i.qu, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ny
  store i16 1, ptr %i.qv, align 2, !tbaa !91
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.qw = extractelement <8 x i1> %i.qn, i64 4
  br i1 %i.qw, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nz
  store i16 1, ptr %i.qx, align 8, !tbaa !91
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.qy = extractelement <8 x i1> %i.qn, i64 5
  br i1 %i.qy, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oa
  store i16 1, ptr %i.qz, align 2, !tbaa !91
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.ra = extractelement <8 x i1> %i.qn, i64 6
  br i1 %i.ra, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ob
  store i16 1, ptr %i.rb, align 4, !tbaa !91
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.rc = extractelement <8 x i1> %i.qn, i64 7
  br i1 %i.rc, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oc
  store i16 1, ptr %i.rd, align 2, !tbaa !91
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.re = extractelement <8 x i1> %i.qo, i64 0
  br i1 %i.re, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.od
  store i16 1, ptr %i.rf, align 16, !tbaa !91
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.rg = extractelement <8 x i1> %i.qo, i64 1
  br i1 %i.rg, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oe
  store i16 1, ptr %i.rh, align 2, !tbaa !91
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.ri = extractelement <8 x i1> %i.qo, i64 2
  br i1 %i.ri, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.of
  store i16 1, ptr %i.rj, align 4, !tbaa !91
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.rk = extractelement <8 x i1> %i.qo, i64 3
  br i1 %i.rk, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.og
  store i16 1, ptr %i.rl, align 2, !tbaa !91
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.rm = extractelement <8 x i1> %i.qo, i64 4
  br i1 %i.rm, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oh
  store i16 1, ptr %i.rn, align 8, !tbaa !91
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.ro = extractelement <8 x i1> %i.qo, i64 5
  br i1 %i.ro, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oi
  store i16 1, ptr %i.rp, align 2, !tbaa !91
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.rq = extractelement <8 x i1> %i.qo, i64 6
  br i1 %i.rq, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oj
  store i16 1, ptr %i.rr, align 4, !tbaa !91
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.rs = extractelement <8 x i1> %i.qo, i64 7
  br i1 %i.rs, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ok
  store i16 1, ptr %i.rt, align 2, !tbaa !91
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %predphi.a = zext <8 x i1> %i.qn to <8 x i16>
  %predphi61.a = add <8 x i16> %vec.phi, %predphi.a ; 2 uses
  %predphi62 = zext <8 x i1> %i.qo to <8 x i16>
  %predphi63 = add <8 x i16> %vec.phi28, %predphi62 ; 2 uses
  %index.next64 = add nuw i64 %index27, 16        ; 2 uses
  %i.ru = icmp eq i64 %index.next64, 96
  br i1 %i.ru, label %scalar.ph24, label %vector.body26, !llvm.loop !97

scalar.ph24:                                      ; preds = %pred.store.continue60
  %bin.rdx = add <8 x i16> %predphi63, %predphi61.a
  %i.rv = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx)
  %2 = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %i.rv, i64 0
  %gep.i19.i.a = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19392
  %3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19594
  %4 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19796
  %5 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19998
  %6 = load i16, ptr %gep.i19.i.a, align 2, !tbaa !91
  %i.rw = load i16, ptr %3, align 2, !tbaa !91
  %7 = load i16, ptr %4, align 2, !tbaa !91
  %i.rx = load i16, ptr %5, align 2, !tbaa !91
  %8 = insertelement <4 x i16> poison, i16 %6, i64 0
  %9 = insertelement <4 x i16> %8, i16 %i.rw, i64 1
  %10 = insertelement <4 x i16> %9, i16 %7, i64 2
  %11 = insertelement <4 x i16> %10, i16 %i.rx, i64 3
  %12 = icmp eq <4 x i16> %11, splat (i16 1)
  %wide.load66 = load <4 x i16>, ptr %i.eb, align 16, !tbaa !91
  %13 = icmp ne <4 x i16> %wide.load66, splat (i16 1)
  %14 = select <4 x i1> %12, <4 x i1> %13, <4 x i1> zeroinitializer ; 5 uses
  %15 = extractelement <4 x i1> %14, i64 0
  br i1 %15, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %scalar.ph24
  store i16 1, ptr %i.eb, align 16, !tbaa !91
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %scalar.ph24
  %16 = extractelement <4 x i1> %14, i64 1
  br i1 %16, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i16 1, ptr %i.ec, align 2, !tbaa !91
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %17 = extractelement <4 x i1> %14, i64 2
  br i1 %17, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i16 1, ptr %i.ed, align 4, !tbaa !91
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %18 = extractelement <4 x i1> %14, i64 3
  br i1 %18, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i16 1, ptr %i.ee, align 2, !tbaa !91
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %19 = zext <4 x i1> %14 to <4 x i16>
  %predphi75 = add <4 x i16> %2, %19
  %20 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %predphi75) ; 2 uses
  %gep.i19.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 20200
  %i.ry = load i16, ptr %gep.i19.i.4, align 2, !tbaa !91
  %i.rz = icmp ne i16 %i.ry, 1
  %i.sa = load i16, ptr %i.ef, align 8
  %.not103.i.i.4 = icmp eq i16 %i.sa, 1
  %or.cond93 = select i1 %i.rz, i1 true, i1 %.not103.i.i.4
  br i1 %or.cond93, label %.loopexit112.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i16 1, ptr %i.ef, align 8, !tbaa !91
  %i.sb = add i16 %20, 1
  br label %.loopexit112.i.i

.loopexit112.i.i:                                 ; preds = %bb.cj, %bb.ck, %.preheader115.i.i
  %.3.i13.i = phi i16 [ %.0130.i.i, %.preheader115.i.i ], [ %i.sb, %bb.ck ], [ %20, %bb.cj ] ; 2 uses
  %indvars.iv.next158.i.i = add nuw nsw i64 %indvars.iv157.i.i, 1 ; 2 uses
  %exitcond159.not.i.i = icmp eq i64 %indvars.iv.next158.i.i, 101
  br i1 %exitcond159.not.i.i, label %bb.cl, label %.preheader115.i.i, !llvm.loop !98

bb.cl:                                            ; preds = %.loopexit112.i.i
  %.not.i14.i = icmp eq i16 %.3.i13.i, 0
  br i1 %.not.i14.i, label %.preheader110.i.i, label %.preheader116.i.i.backedge

.preheader110.i.i:                                ; preds = %bb.cl, %.loopexit109.i.i
  %indvars.iv164.i.i = phi i64 [ %indvars.iv.next165.i.i, %.loopexit109.i.i ], [ 0, %bb.cl ] ; 3 uses
  %.070134.i.i = phi i64 [ %.373.i.i, %.loopexit109.i.i ], [ 9223372036854775807, %bb.cl ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv164.i.i
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !91
  %.not101.i.i = icmp eq i16 %i.sd, 0
  br i1 %.not101.i.i, label %.loopexit109.i.i, label %.preheader108.i.i

.preheader108.i.i:                                ; preds = %.preheader110.i.i
  %i.se = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.013, i64 %indvars.iv164.i.i ; 2 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cr, %.preheader108.i.i
  %indvars.iv160.i.i = phi i64 [ 0, %.preheader108.i.i ], [ %indvars.iv.next161.i.i.1, %bb.cr ] ; 5 uses
  %.171132.i.i = phi i64 [ %.070134.i.i, %.preheader108.i.i ], [ %.272.i.i.1, %bb.cr ] ; 2 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv160.i.i
  %i.sg = load i16, ptr %i.sf, align 4, !tbaa !91
  %.not102.i.i = icmp eq i16 %i.sg, 1
  br i1 %.not102.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv160.i.i
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !15
  %spec.select.i15.i = tail call i64 @llvm.smin.i64(i64 %i.si, i64 %.171132.i.i)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.272.i.i = phi i64 [ %.171132.i.i, %bb.cm ], [ %spec.select.i15.i, %bb.cn ] ; 3 uses
  %indvars.iv.next161.i.i = or disjoint i64 %indvars.iv160.i.i, 1 ; 2 uses
  %exitcond163.not.i.i = icmp eq i64 %indvars.iv160.i.i, 100
  br i1 %exitcond163.not.i.i, label %.loopexit109.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next161.i.i
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !91
  %.not102.i.i.1 = icmp eq i16 %i.sk, 1
  br i1 %.not102.i.i.1, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv.next161.i.i
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !15
  %spec.select.i15.i.1 = tail call i64 @llvm.smin.i64(i64 %i.sm, i64 %.272.i.i)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.272.i.i.1 = phi i64 [ %.272.i.i, %bb.cp ], [ %spec.select.i15.i.1, %bb.cq ]
  %indvars.iv.next161.i.i.1 = add nuw nsw i64 %indvars.iv160.i.i, 2
  br label %bb.cm

.loopexit109.i.i:                                 ; preds = %bb.co, %.preheader110.i.i
  %.373.i.i = phi i64 [ %.070134.i.i, %.preheader110.i.i ], [ %.272.i.i, %bb.co ] ; 5 uses
  %indvars.iv.next165.i.i = add nuw nsw i64 %indvars.iv164.i.i, 1 ; 2 uses
  %exitcond167.not.i.i = icmp eq i64 %indvars.iv.next165.i.i, 101
  br i1 %exitcond167.not.i.i, label %.preheader107.i.i, label %.preheader110.i.i, !llvm.loop !99

.preheader107.i.i:                                ; preds = %.loopexit109.i.i, %.loopexit106.i.i
  %indvars.iv172.i.i = phi i64 [ %indvars.iv.next173.i.i, %.loopexit106.i.i ], [ 0, %.loopexit109.i.i ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv172.i.i
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !91
  %.not99.i.i = icmp eq i16 %i.so, 0
  br i1 %.not99.i.i, label %.loopexit106.i.i, label %.preheader105.i.i

.preheader105.i.i:                                ; preds = %.preheader107.i.i
  %i.sp = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.013, i64 %indvars.iv172.i.i ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cx, %.preheader105.i.i
  %indvars.iv168.i.i = phi i64 [ 0, %.preheader105.i.i ], [ %indvars.iv.next169.i.i.1, %bb.cx ] ; 5 uses
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv168.i.i
  %i.sr = load i16, ptr %i.sq, align 4, !tbaa !91
  %.not100.i.i = icmp eq i16 %i.sr, 1
  br i1 %.not100.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv168.i.i ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !15
  %i.su = sub nsw i64 %i.st, %.373.i.i
  store i64 %i.su, ptr %i.ss, align 8, !tbaa !15
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %indvars.iv.next169.i.i = or disjoint i64 %indvars.iv168.i.i, 1 ; 2 uses
  %exitcond171.not.i.i = icmp eq i64 %indvars.iv168.i.i, 100
  br i1 %exitcond171.not.i.i, label %.loopexit106.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next169.i.i
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !91
  %.not100.i.i.1 = icmp eq i16 %i.sw, 1
  br i1 %.not100.i.i.1, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv.next169.i.i ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !15
  %i.sz = sub nsw i64 %i.sy, %.373.i.i
  store i64 %i.sz, ptr %i.sx, align 8, !tbaa !15
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %indvars.iv.next169.i.i.1 = add nuw nsw i64 %indvars.iv168.i.i, 2
  br label %bb.cs

.loopexit106.i.i:                                 ; preds = %bb.cu, %.preheader107.i.i
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond175.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, 101
  br i1 %exitcond175.not.i.i, label %.preheader104.i.i, label %.preheader107.i.i, !llvm.loop !100

.preheader104.i.i:                                ; preds = %.loopexit106.i.i, %.loopexit.i16.i
  %indvars.iv180.i.i = phi i64 [ %indvars.iv.next181.i.i, %.loopexit.i16.i ], [ 0, %.loopexit106.i.i ] ; 3 uses
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv180.i.i
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !91
  %i.tc = icmp eq i16 %i.tb, 0
  br i1 %i.tc, label %.preheader.i17.i, label %.loopexit.i16.i

.preheader.i17.i:                                 ; preds = %.preheader104.i.i
  %i.td = getelementptr inbounds nuw [808 x i8], ptr %.sroa.0.013, i64 %indvars.iv180.i.i ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.dd, %.preheader.i17.i
  %indvars.iv176.i.i = phi i64 [ 0, %.preheader.i17.i ], [ %indvars.iv.next177.i.i.1, %bb.dd ] ; 5 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv176.i.i
  %i.tf = load i16, ptr %i.te, align 4, !tbaa !91
  %i.tg = icmp eq i16 %i.tf, 1
  br i1 %i.tg, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv176.i.i ; 2 uses
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !15
  %i.tj = add nsw i64 %i.ti, %.373.i.i
  store i64 %i.tj, ptr %i.th, align 8, !tbaa !15
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %indvars.iv.next177.i.i = or disjoint i64 %indvars.iv176.i.i, 1 ; 2 uses
  %exitcond179.not.i.i = icmp eq i64 %indvars.iv176.i.i, 100
  br i1 %exitcond179.not.i.i, label %.loopexit.i16.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next177.i.i
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !91
  %i.tm = icmp eq i16 %i.tl, 1
  br i1 %i.tm, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.next177.i.i ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !15
  %i.tp = add nsw i64 %i.to, %.373.i.i
  store i64 %i.tp, ptr %i.tn, align 8, !tbaa !15
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %indvars.iv.next177.i.i.1 = add nuw nsw i64 %indvars.iv176.i.i, 2
  br label %bb.cy

.loopexit.i16.i:                                  ; preds = %bb.da, %.preheader104.i.i
  %indvars.iv.next181.i.i = add nuw nsw i64 %indvars.iv180.i.i, 1 ; 2 uses
  %exitcond183.not.i.i = icmp eq i64 %indvars.iv.next181.i.i, 101
  br i1 %exitcond183.not.i.i, label %second_assignments.exit.i, label %.preheader104.i.i, !llvm.loop !101

second_assignments.exit.i:                        ; preds = %.loopexit.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %calc_minimum_costs.exit.i, !llvm.loop !102

Assignment.exit:                                  ; preds = %bb.ar, %first_assignments.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 81608
  %i.tr = add nuw i64 %.014, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.tr, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %Assignment.exit, %LoadAssignArrayWithRand.exit
  %i.ts = phi i64 [ %i.dz, %LoadAssignArrayWithRand.exit ], [ %i.ea, %Assignment.exit ]
  %i.tt = tail call i64 @StopStopwatch(i64 noundef %i.ts) #11
  ret i64 %i.tt
}

; Function Attrs: nounwind uwtable
define dso_local void @DoIDEA() local_unnamed_addr #0 {
.preheader188.preheader:
  %i.a = alloca [52 x i16], align 16              ; 11 uses
  %i.b = alloca [52 x i16], align 16              ; 23 uses
  %i.c = alloca [52 x i16], align 16              ; 14 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = tail call i32 @randnum(i32 noundef 3) #11 ; 0 uses
  %i.f = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.g = trunc i32 %i.f to i16
  %i.h = tail call i32 @abs_randwc(i32 noundef 60000) #11
  %i.i = trunc i32 %i.h to i16
end_hunk_1
begin_hunk_2_@strsift:bb.a
  %.pre82 = zext i8 %i.cp to i64
  br label %stradjust.exit70

bb.i:                                             ; preds = %stradjust.exit
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !32
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !15 ; 2 uses
  %i.de = add i64 %i.cy, 1
  %i.df = add i64 %i.de, %i.db
  %i.dg = sub i64 %i.df, %i.dd
  %i.dh = zext i8 %i.cp to i64                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  call void @MoveMemory(ptr noundef nonnull %i.dj, ptr noundef %i.dk, i64 noundef %i.dg) #11
  %.045.i59 = add i64 %.075, 1                    ; 7 uses
  %i.dl = icmp ult i64 %.045.i59, %2
  br i1 %i.dl, label %.lr.ph.i61, label %._crit_edge.i60

.lr.ph.i61:                                       ; preds = %bb.i
  %i.dm = icmp slt i32 %i.cv, 0
  %i.dn = zext nneg i32 %i.cw to i64              ; 4 uses
  %i.do = xor i64 %.075, -1
  %i.dp = add i64 %2, %i.do                       ; 5 uses
  %min.iters.check = icmp ult i64 %i.dp, 4        ; 2 uses
  br i1 %i.dm, label %.lr.ph.split.us.i66.preheader, label %.lr.ph.split.i62.preheader

.lr.ph.split.i62.preheader:                       ; preds = %.lr.ph.i61
  br i1 %min.iters.check, label %.lr.ph.split.i62.preheader141, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph.split.i62.preheader
  %n.vec99 = and i64 %i.dp, -4                    ; 3 uses
  %i.dq = add i64 %.045.i59, %n.vec99
  %broadcast.splatinsert100 = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat101 = shufflevector <2 x i64> %broadcast.splatinsert100, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %0, i64 %.045.i59
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph97
  %index103 = phi i64 [ 0, %vector.ph97 ], [ %index.next106, %vector.body102 ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %index103 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load104 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !15
  %wide.load105 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !15
  %i.du = add <2 x i64> %wide.load104, %broadcast.splat101
  %i.dv = add <2 x i64> %wide.load105, %broadcast.splat101
  store <2 x i64> %i.du, ptr %i.ds, align 8, !tbaa !15
  store <2 x i64> %i.dv, ptr %i.dt, align 8, !tbaa !15
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.dw, label %middle.block107, label %vector.body102, !llvm.loop !201

middle.block107:                                  ; preds = %vector.body102
  %cmp.n108 = icmp eq i64 %i.dp, %n.vec99
  br i1 %cmp.n108, label %._crit_edge.i60, label %.lr.ph.split.i62.preheader141

.lr.ph.split.i62.preheader141:                    ; preds = %.lr.ph.split.i62.preheader, %middle.block107
  %.046.i63.ph = phi i64 [ %.045.i59, %.lr.ph.split.i62.preheader ], [ %i.dq, %middle.block107 ]
  br label %.lr.ph.split.i62

.lr.ph.split.us.i66.preheader:                    ; preds = %.lr.ph.i61
  br i1 %min.iters.check, label %.lr.ph.split.us.i66.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i66.preheader
  %n.vec = and i64 %i.dp, -4                      ; 3 uses
  %i.dx = add i64 %.045.i59, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %0, i64 %.045.i59
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %index ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dz, align 8, !tbaa !15
  %wide.load94 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !15
  %i.eb = sub <2 x i64> %wide.load, %broadcast.splat
  %i.ec = sub <2 x i64> %wide.load94, %broadcast.splat
  store <2 x i64> %i.eb, ptr %i.dz, align 8, !tbaa !15
  store <2 x i64> %i.ec, ptr %i.ea, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %._crit_edge.i60, label %.lr.ph.split.us.i66.preheader140

.lr.ph.split.us.i66.preheader140:                 ; preds = %.lr.ph.split.us.i66.preheader, %middle.block
  %.046.us.i67.ph = phi i64 [ %.045.i59, %.lr.ph.split.us.i66.preheader ], [ %i.dx, %middle.block ]
  br label %.lr.ph.split.us.i66

.lr.ph.split.us.i66:                              ; preds = %.lr.ph.split.us.i66.preheader140, %.lr.ph.split.us.i66
  %.046.us.i67 = phi i64 [ %.0.us.i68, %.lr.ph.split.us.i66 ], [ %.046.us.i67.ph, %.lr.ph.split.us.i66.preheader140 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.us.i67 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !15
  %i.eg = sub i64 %i.ef, %i.dn
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !15
  %.0.us.i68 = add nuw i64 %.046.us.i67, 1        ; 2 uses
  %exitcond48.not.i69 = icmp eq i64 %.0.us.i68, %2
  br i1 %exitcond48.not.i69, label %._crit_edge.i60, label %.lr.ph.split.us.i66, !llvm.loop !203

.lr.ph.split.i62:                                 ; preds = %.lr.ph.split.i62.preheader141, %.lr.ph.split.i62
  %.046.i63 = phi i64 [ %.0.i64, %.lr.ph.split.i62 ], [ %.046.i63.ph, %.lr.ph.split.i62.preheader141 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.i63 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !15
  %i.ej = add i64 %i.ei, %i.dn
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !15
  %.0.i64 = add nuw i64 %.046.i63, 1              ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %.0.i64, %2
  br i1 %exitcond.not.i65, label %._crit_edge.i60, label %.lr.ph.split.i62, !llvm.loop !204

._crit_edge.i60:                                  ; preds = %.lr.ph.split.i62, %.lr.ph.split.us.i66, %middle.block107, %middle.block, %bb.i
  %i.ek = load i64, ptr %i.z, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  store i8 %i.cp, ptr %i.el, align 1, !tbaa !32
  br label %stradjust.exit70

stradjust.exit70:                                 ; preds = %bb.h, %._crit_edge.i60
  %.pre-phi83 = phi i64 [ %.pre82, %bb.h ], [ %i.dh, %._crit_edge.i60 ]
  %i.em = load i64, ptr %i.z, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.em
  %i.eo = add nuw nsw i64 %.pre-phi83, 1
  call void @MoveMemory(ptr noundef %i.en, ptr noundef nonnull %i.a, i64 noundef %i.eo) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %stradjust.exit70
  %.1 = phi i64 [ %.050, %stradjust.exit70 ], [ %i.f, %bb.d ] ; 2 uses
  %i.ep = shl i64 %.1, 1                          ; 2 uses
  %.not = icmp ugt i64 %i.ep, %4
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @MoveMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !10, i64 32}
!10 = !{!"long", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!9, !12, i64 24}
!14 = !{!9, !10, i64 32}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!9, !11, i64 16}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !17, !22}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = !{!6, !6, i64 0}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17, !22, !23}
!36 = !{!"branch_weights", i32 4, i32 28}
!37 = distinct !{!37, !17, !22, !23}
!38 = distinct !{!38, !17, !22}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17, !22, !23}
!43 = distinct !{!43, !17, !22}
!44 = distinct !{!44, !17, !45}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17, !22, !23}
!48 = distinct !{!48, !17, !22, !23}
!49 = distinct !{!49, !17, !23, !22}
!50 = distinct !{!50, !17, !23, !22}
!51 = distinct !{!51, !17, !22, !23}
!52 = distinct !{!52, !17, !22, !23}
!53 = distinct !{!53, !17, !23, !22}
!54 = distinct !{!54, !17, !23, !22}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = !{!58, !5, i64 0}
!58 = !{!"", !5, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32}
!59 = !{!58, !10, i64 32}
!60 = !{!58, !10, i64 24}
!61 = distinct !{!61, !17}
!62 = !{!58, !11, i64 16}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = !{!69, !10, i64 16}
!69 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32}
!70 = !{!69, !5, i64 0}
!71 = !{!69, !10, i64 24}
!72 = distinct !{!72, !17}
!73 = !{!69, !11, i64 32}
!74 = !{!75, !5, i64 0}
!75 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16, !11, i64 24}
!76 = !{!75, !10, i64 16}
!77 = distinct !{!77, !17}
!78 = !{!75, !11, i64 24}
!79 = distinct !{!79, !17}
!80 = !{!11, !11, i64 0}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !17, !22}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17, !22, !23}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = !{!12, !12, i64 0}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17, !22, !23}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = !{!115, !115, i64 0}
!115 = !{!"any pointer", !6, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 omnipotent char", !115, i64 0}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = !{!123, !124, i64 4}
!123 = !{!"", !6, i64 0, !124, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!124 = !{!"float", !6, i64 0}
!125 = !{!123, !6, i64 0}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !17, !22, !23}
!129 = distinct !{!129, !17}
!130 = !{!123, !5, i64 16}
!131 = !{!123, !5, i64 12}
!132 = !{!123, !5, i64 8}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !17}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17, !22, !23}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17, !22, !23}
!155 = distinct !{!155, !17, !22, !23}
!156 = distinct !{!156, !17, !23, !22}
!157 = distinct !{!157, !17, !23, !22}
!158 = !{!159, !159, i64 0}
!159 = !{!"p1 double", !115, i64 0}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17}
!162 = !{!163}
!163 = distinct !{!163, !164}
!164 = distinct !{!164, !"LVerDomain"}
!165 = !{!166}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !17, !22}
!168 = distinct !{!168, !17}
!169 = distinct !{!169, !17}
!170 = distinct !{!170, !17}
!171 = distinct !{!171, !17, !22, !23}
!172 = distinct !{!172, !25}
!173 = distinct !{!173, !17, !22}
end_hunk_2
