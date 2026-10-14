Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcdctmgr-8?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@start_pass_fdctmgr:bb.a

bb.q:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre-phi ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.bw = tail call ptr %i.bv(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 512) #5 ; 2 uses
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = phi ptr [ %i.bw, %bb.r ], [ %i.bs, %bb.q ]
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.aa
  %indvars.iv128 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next129, %bb.aa ] ; 4 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv128
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !53
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @start_pass_fdctmgr.aanscales, i64 %indvars.iv128
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !53
  %i.cd = sext i16 %i.cc to i32
  %i.ce = mul nsw i32 %i.cd, %i.ca
  %i.cf = add nsw i32 %i.ce, 1024
  %i.cg = lshr i32 %i.cf, 11                      ; 2 uses
  %i.ch = trunc i32 %i.cg to i16                  ; 5 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv128 ; 8 uses
  %i.cj = and i32 %i.cg, 65535                    ; 3 uses
  %i.ck = icmp ult i16 %i.ch, 2
  br i1 %i.ck, label %compute_reciprocal.exit101.thread, label %flss.exit.i82

compute_reciprocal.exit101.thread:                ; preds = %bb.t
  store i16 1, ptr %i.ci, align 2, !tbaa !53
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  store i16 0, ptr %i.cl, align 2, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 256
  store i16 1, ptr %i.cm, align 2, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 384
  store i16 -16, ptr %i.cn, align 2, !tbaa !53
  br label %bb.y

flss.exit.i82:                                    ; preds = %bb.t
  %.not20.i.i83 = icmp ult i16 %i.ch, 256         ; 2 uses
  %i.co = shl nuw i16 %i.ch, 8
  %spec.select.i.i84 = select i1 %.not20.i.i83, i16 %i.co, i16 %i.ch ; 3 uses
  %spec.select24.i.i85 = select i1 %.not20.i.i83, i32 8, i32 16 ; 2 uses
  %.not21.i.i86 = icmp ult i16 %spec.select.i.i84, 4096 ; 2 uses
  %i.cp = add nsw i32 %spec.select24.i.i85, -4
  %i.cq = shl nuw i16 %spec.select.i.i84, 4
  %.116.i.i87 = select i1 %.not21.i.i86, i16 %i.cq, i16 %spec.select.i.i84 ; 3 uses
  %.1.i.i88 = select i1 %.not21.i.i86, i32 %i.cp, i32 %spec.select24.i.i85 ; 2 uses
  %.not22.i.i89 = icmp ult i16 %.116.i.i87, 16384 ; 2 uses
  %i.cr = add nsw i32 %.1.i.i88, -2
  %i.cs = shl nuw i16 %.116.i.i87, 2
  %.217.i.i90 = select i1 %.not22.i.i89, i16 %i.cs, i16 %.116.i.i87
  %.2.i.i91 = select i1 %.not22.i.i89, i32 %i.cr, i32 %.1.i.i88
  %.not2325.i.i92 = icmp sgt i16 %.217.i.i90, -1
  %i.ct = sext i1 %.not2325.i.i92 to i32
  %.3.i.i93 = add nsw i32 %.2.i.i91, %i.ct        ; 3 uses
  %narrow.i94 = add nuw nsw i32 %.3.i.i93, 15     ; 2 uses
  %i.cu = shl nuw i32 32768, %.3.i.i93            ; 2 uses
  %i.cv = udiv i32 %i.cu, %i.cj                   ; 3 uses
  %i.cw = urem i32 %i.cu, %i.cj                   ; 2 uses
  %i.cx = lshr i16 %i.ch, 1                       ; 3 uses
  %i.cy = icmp eq i32 %i.cw, 0
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %flss.exit.i82
  %i.cz = lshr i32 %i.cv, 1
  %i.da = add nuw nsw i32 %.3.i.i93, 14
  br label %compute_reciprocal.exit101

bb.v:                                             ; preds = %flss.exit.i82
  %i.db = lshr i32 %i.cj, 1
  %.not.i95 = icmp samesign ugt i32 %i.cw, %i.db
  br i1 %.not.i95, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = add nuw i16 %i.cx, 1
  br label %compute_reciprocal.exit101

bb.x:                                             ; preds = %bb.v
  %i.dd = add nuw nsw i32 %i.cv, 1
  br label %compute_reciprocal.exit101

compute_reciprocal.exit101:                       ; preds = %bb.u, %bb.w, %bb.x
  %.029.i96 = phi i32 [ %i.cz, %bb.u ], [ %i.cv, %bb.w ], [ %i.dd, %bb.x ]
  %.028.i97 = phi i16 [ %i.cx, %bb.u ], [ %i.dc, %bb.w ], [ %i.cx, %bb.x ]
  %.0.i98 = phi i32 [ %i.da, %bb.u ], [ %narrow.i94, %bb.w ], [ %narrow.i94, %bb.x ] ; 3 uses
  %i.de = trunc i32 %.029.i96 to i16
  store i16 %i.de, ptr %i.ci, align 2, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  store i16 %.028.i97, ptr %i.df, align 2, !tbaa !53
  %i.dg = sub nuw nsw i32 32, %.0.i98
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = trunc i32 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 256
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !53
  %i.dk = trunc nuw nsw i32 %.0.i98 to i16
  %i.dl = add nsw i16 %i.dk, -16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 384
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !53
  %i.dn = icmp samesign ult i32 %.0.i98, 17
  br i1 %i.dn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %compute_reciprocal.exit101.thread, %compute_reciprocal.exit101
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !45
  %.not79 = icmp eq ptr %i.do, @quantize
  br i1 %.not79, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr @quantize, ptr %i.m, align 8, !tbaa !45
  br label %bb.aa

bb.aa:                                            ; preds = %compute_reciprocal.exit101, %bb.y, %bb.z
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 64
  br i1 %exitcond131.not, label %.loopexit, label %bb.t, !llvm.loop !63

bb.ab:                                            ; preds = %bb.e
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.pre-phi ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ac, label %vector.body

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.du = tail call ptr %i.dt(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #5 ; 2 uses
  store ptr %i.du, ptr %i.dp, align 8, !tbaa !50
  br label %vector.body

vector.body:                                      ; preds = %bb.ac, %bb.ab
  %i.dv = phi ptr [ %i.du, %bb.ac ], [ %i.dq, %bb.ab ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dx = load i16, ptr %i.y, align 2, !tbaa !53
  %i.dy = load i16, ptr %i.dw, align 2, !tbaa !53
  %i.dz = insertelement <2 x i16> poison, i16 %i.dx, i64 0
  %i.ea = insertelement <2 x i16> %i.dz, i16 %i.dy, i64 1
  %i.eb = uitofp <2 x i16> %i.ea to <2 x double>
  %i.ec = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.y, i64 18
  %i.ee = load i16, ptr %i.ec, align 2, !tbaa !53
  %i.ef = load i16, ptr %i.ed, align 2, !tbaa !53
  %i.eg = insertelement <2 x i16> poison, i16 %i.ee, i64 0
  %i.eh = insertelement <2 x i16> %i.eg, i16 %i.ef, i64 1
  %i.ei = uitofp <2 x i16> %i.eh to <2 x double>
  %i.ej = fmul nnan <2 x double> %i.ei, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.ek = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.em = load i16, ptr %i.ek, align 2, !tbaa !53
  %i.en = load i16, ptr %i.el, align 2, !tbaa !53
  %i.eo = insertelement <2 x i16> poison, i16 %i.em, i64 0
  %i.ep = insertelement <2 x i16> %i.eo, i16 %i.en, i64 1
  %i.eq = uitofp <2 x i16> %i.ep to <2 x double>
  %i.er = fmul nnan <2 x double> %i.eq, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.es = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.et = getelementptr inbounds nuw i8, ptr %i.y, i64 22
  %i.eu = load i16, ptr %i.es, align 2, !tbaa !53
  %i.ev = load i16, ptr %i.et, align 2, !tbaa !53
  %i.ew = insertelement <2 x i16> poison, i16 %i.eu, i64 0
  %i.ex = insertelement <2 x i16> %i.ew, i16 %i.ev, i64 1
  %i.ey = uitofp <2 x i16> %i.ex to <2 x double>
  %i.ez = fmul nnan <2 x double> %i.ey, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.fa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.fc = load i16, ptr %i.fa, align 2, !tbaa !53
  %i.fd = load i16, ptr %i.fb, align 2, !tbaa !53
  %i.fe = insertelement <2 x i16> poison, i16 %i.fc, i64 0
  %i.ff = insertelement <2 x i16> %i.fe, i16 %i.fd, i64 1
  %i.fg = uitofp <2 x i16> %i.ff to <2 x double>
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.fj = load i16, ptr %i.fh, align 2, !tbaa !53
  %i.fk = load i16, ptr %i.fi, align 2, !tbaa !53
  %i.fl = insertelement <2 x i16> poison, i16 %i.fj, i64 0
  %i.fm = insertelement <2 x i16> %i.fl, i16 %i.fk, i64 1
  %i.fn = uitofp <2 x i16> %i.fm to <2 x double>
  %i.fo = fmul nnan <2 x double> %i.fn, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.fp = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.fr = load i16, ptr %i.fp, align 2, !tbaa !53
  %i.fs = load i16, ptr %i.fq, align 2, !tbaa !53
  %i.ft = insertelement <2 x i16> poison, i16 %i.fr, i64 0
  %i.fu = insertelement <2 x i16> %i.ft, i16 %i.fs, i64 1
  %i.fv = uitofp <2 x i16> %i.fu to <2 x double>
  %i.fw = fmul nnan <2 x double> %i.fv, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.fx = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.y, i64 30
  %i.fz = load i16, ptr %i.fx, align 2, !tbaa !53
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !53
  %i.gb = insertelement <2 x i16> poison, i16 %i.fz, i64 0
  %i.gc = insertelement <2 x i16> %i.gb, i16 %i.ga, i64 1
  %i.gd = uitofp <2 x i16> %i.gc to <2 x double>
  %i.ge = fmul nnan <2 x double> %i.gd, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.gf = shufflevector <2 x double> <double 1.000000e+00, double f0x3FF63150B14861EF>, <2 x double> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gg = shufflevector <2 x double> %i.er, <2 x double> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gh = shufflevector <2 x double> %i.eb, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <4 x double> %i.gh, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = fmul <8 x double> %1, %2
  %4 = fmul <8 x double> %3, splat (double 8.000000e+00)
  %5 = fdiv <8 x double> splat (double 1.000000e+00), %4
  %6 = fptrunc <8 x double> %5 to <8 x float>
  %7 = shufflevector <2 x double> <double 1.000000e+00, double f0x3FF63150B14861EF>, <2 x double> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <2 x double> %i.fw, <2 x double> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <4 x double> %7, <4 x double> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = shufflevector <2 x double> %i.fg, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x double> %10, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = fmul <8 x double> %9, %11
  %i.gi = fmul <8 x double> %12, splat (double 8.000000e+00)
  %i.gj = fdiv <8 x double> splat (double 1.000000e+00), %i.gi
  %i.gk = fptrunc <8 x double> %i.gj to <8 x float>
  %interleaved.vec = shufflevector <8 x float> %6, <8 x float> %i.gk, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.dv, align 4, !tbaa !56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.gn = load i16, ptr %i.gl, align 2, !tbaa !53
  %i.go = load i16, ptr %i.gm, align 2, !tbaa !53
  %i.gp = insertelement <2 x i16> poison, i16 %i.gn, i64 0
  %i.gq = insertelement <2 x i16> %i.gp, i16 %i.go, i64 1
  %i.gr = uitofp <2 x i16> %i.gq to <2 x double>
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.y, i64 34
  %i.gu = getelementptr inbounds nuw i8, ptr %i.y, i64 50
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !53
  %i.gw = load i16, ptr %i.gu, align 2, !tbaa !53
  %i.gx = insertelement <2 x i16> poison, i16 %i.gv, i64 0
  %i.gy = insertelement <2 x i16> %i.gx, i16 %i.gw, i64 1
  %i.gz = uitofp <2 x i16> %i.gy to <2 x double>
  %i.ha = fmul nnan <2 x double> %i.gz, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.hb = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.hc = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.hd = load i16, ptr %i.hb, align 2, !tbaa !53
  %i.he = load i16, ptr %i.hc, align 2, !tbaa !53
  %i.hf = insertelement <2 x i16> poison, i16 %i.hd, i64 0
  %i.hg = insertelement <2 x i16> %i.hf, i16 %i.he, i64 1
  %i.hh = uitofp <2 x i16> %i.hg to <2 x double>
  %i.hi = fmul nnan <2 x double> %i.hh, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 38
  %i.hk = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.hl = load i16, ptr %i.hj, align 2, !tbaa !53
  %i.hm = load i16, ptr %i.hk, align 2, !tbaa !53
  %i.hn = insertelement <2 x i16> poison, i16 %i.hl, i64 0
  %i.ho = insertelement <2 x i16> %i.hn, i16 %i.hm, i64 1
  %i.hp = uitofp <2 x i16> %i.ho to <2 x double>
  %i.hq = fmul nnan <2 x double> %i.hp, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.hr = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.hs = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ht = load i16, ptr %i.hr, align 2, !tbaa !53
  %i.hu = load i16, ptr %i.hs, align 2, !tbaa !53
  %i.hv = insertelement <2 x i16> poison, i16 %i.ht, i64 0
  %i.hw = insertelement <2 x i16> %i.hv, i16 %i.hu, i64 1
  %i.hx = uitofp <2 x i16> %i.hw to <2 x double>
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 42
  %i.hz = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ia = load i16, ptr %i.hy, align 2, !tbaa !53
  %i.ib = load i16, ptr %i.hz, align 2, !tbaa !53
  %i.ic = insertelement <2 x i16> poison, i16 %i.ia, i64 0
  %i.id = insertelement <2 x i16> %i.ic, i16 %i.ib, i64 1
  %i.ie = uitofp <2 x i16> %i.id to <2 x double>
  %i.if = fmul nnan <2 x double> %i.ie, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.ig = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ih = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.ii = load i16, ptr %i.ig, align 2, !tbaa !53
  %i.ij = load i16, ptr %i.ih, align 2, !tbaa !53
  %i.ik = insertelement <2 x i16> poison, i16 %i.ii, i64 0
  %i.il = insertelement <2 x i16> %i.ik, i16 %i.ij, i64 1
  %i.im = uitofp <2 x i16> %i.il to <2 x double>
  %i.in = fmul nnan <2 x double> %i.im, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.io = getelementptr inbounds nuw i8, ptr %i.y, i64 46
  %i.ip = getelementptr inbounds nuw i8, ptr %i.y, i64 62
  %i.iq = load i16, ptr %i.io, align 2, !tbaa !53
  %i.ir = load i16, ptr %i.ip, align 2, !tbaa !53
  %i.is = insertelement <2 x i16> poison, i16 %i.iq, i64 0
  %i.it = insertelement <2 x i16> %i.is, i16 %i.ir, i64 1
  %i.iu = uitofp <2 x i16> %i.it to <2 x double>
  %i.iv = fmul nnan <2 x double> %i.iu, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.iw = shufflevector <2 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>, <2 x double> %i.ha, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ix = shufflevector <2 x double> %i.hi, <2 x double> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = shufflevector <4 x double> %i.iw, <4 x double> %i.ix, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iy = shufflevector <2 x double> %i.gr, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = shufflevector <4 x double> %i.iy, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = fmul <8 x double> %13, %14
  %16 = fmul <8 x double> %15, splat (double 8.000000e+00)
  %17 = fdiv <8 x double> splat (double 1.000000e+00), %16
  %18 = fptrunc <8 x double> %17 to <8 x float>
  %19 = shufflevector <2 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>, <2 x double> %i.if, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %20 = shufflevector <2 x double> %i.in, <2 x double> %i.iv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %21 = shufflevector <4 x double> %19, <4 x double> %20, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %22 = shufflevector <2 x double> %i.hx, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %23 = shufflevector <4 x double> %22, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = fmul <8 x double> %21, %23
  %i.iz = fmul <8 x double> %24, splat (double 8.000000e+00)
  %i.ja = fdiv <8 x double> splat (double 1.000000e+00), %i.iz
  %i.jb = fptrunc <8 x double> %i.ja to <8 x float>
  %interleaved.vec.1 = shufflevector <8 x float> %18, <8 x float> %i.jb, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.1, ptr %i.gs, align 4, !tbaa !56
  %i.jc = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.je = load i16, ptr %i.jc, align 2, !tbaa !53
  %i.jf = load i16, ptr %i.jd, align 2, !tbaa !53
  %i.jg = insertelement <2 x i16> poison, i16 %i.je, i64 0
  %i.jh = insertelement <2 x i16> %i.jg, i16 %i.jf, i64 1
  %i.ji = uitofp <2 x i16> %i.jh to <2 x double>
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  %i.jk = getelementptr inbounds nuw i8, ptr %i.y, i64 66
  %i.jl = getelementptr inbounds nuw i8, ptr %i.y, i64 82
  %i.jm = load i16, ptr %i.jk, align 2, !tbaa !53
  %i.jn = load i16, ptr %i.jl, align 2, !tbaa !53
  %i.jo = insertelement <2 x i16> poison, i16 %i.jm, i64 0
  %i.jp = insertelement <2 x i16> %i.jo, i16 %i.jn, i64 1
  %i.jq = uitofp <2 x i16> %i.jp to <2 x double>
  %i.jr = fmul nnan <2 x double> %i.jq, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.js = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.jt = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.ju = load i16, ptr %i.js, align 2, !tbaa !53
  %i.jv = load i16, ptr %i.jt, align 2, !tbaa !53
  %i.jw = insertelement <2 x i16> poison, i16 %i.ju, i64 0
  %i.jx = insertelement <2 x i16> %i.jw, i16 %i.jv, i64 1
  %i.jy = uitofp <2 x i16> %i.jx to <2 x double>
  %i.jz = fmul nnan <2 x double> %i.jy, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ka = getelementptr inbounds nuw i8, ptr %i.y, i64 70
  %i.kb = getelementptr inbounds nuw i8, ptr %i.y, i64 86
  %i.kc = load i16, ptr %i.ka, align 2, !tbaa !53
  %i.kd = load i16, ptr %i.kb, align 2, !tbaa !53
  %i.ke = insertelement <2 x i16> poison, i16 %i.kc, i64 0
  %i.kf = insertelement <2 x i16> %i.ke, i16 %i.kd, i64 1
  %i.kg = uitofp <2 x i16> %i.kf to <2 x double>
  %i.kh = fmul nnan <2 x double> %i.kg, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ki = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.kj = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.kk = load i16, ptr %i.ki, align 2, !tbaa !53
  %i.kl = load i16, ptr %i.kj, align 2, !tbaa !53
  %i.km = insertelement <2 x i16> poison, i16 %i.kk, i64 0
  %i.kn = insertelement <2 x i16> %i.km, i16 %i.kl, i64 1
  %i.ko = uitofp <2 x i16> %i.kn to <2 x double>
  %i.kp = getelementptr inbounds nuw i8, ptr %i.y, i64 74
  %i.kq = getelementptr inbounds nuw i8, ptr %i.y, i64 90
  %i.kr = load i16, ptr %i.kp, align 2, !tbaa !53
  %i.ks = load i16, ptr %i.kq, align 2, !tbaa !53
  %i.kt = insertelement <2 x i16> poison, i16 %i.kr, i64 0
  %i.ku = insertelement <2 x i16> %i.kt, i16 %i.ks, i64 1
  %i.kv = uitofp <2 x i16> %i.ku to <2 x double>
  %i.kw = fmul nnan <2 x double> %i.kv, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.kx = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.ky = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %i.kz = load i16, ptr %i.kx, align 2, !tbaa !53
  %i.la = load i16, ptr %i.ky, align 2, !tbaa !53
  %i.lb = insertelement <2 x i16> poison, i16 %i.kz, i64 0
  %i.lc = insertelement <2 x i16> %i.lb, i16 %i.la, i64 1
  %i.ld = uitofp <2 x i16> %i.lc to <2 x double>
  %i.le = fmul nnan <2 x double> %i.ld, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.lf = getelementptr inbounds nuw i8, ptr %i.y, i64 78
  %i.lg = getelementptr inbounds nuw i8, ptr %i.y, i64 94
  %i.lh = load i16, ptr %i.lf, align 2, !tbaa !53
  %i.li = load i16, ptr %i.lg, align 2, !tbaa !53
  %i.lj = insertelement <2 x i16> poison, i16 %i.lh, i64 0
  %i.lk = insertelement <2 x i16> %i.lj, i16 %i.li, i64 1
  %i.ll = uitofp <2 x i16> %i.lk to <2 x double>
  %i.lm = fmul nnan <2 x double> %i.ll, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ln = shufflevector <2 x double> <double 1.000000e+00, double f0x3FE92469C0A7BF3B>, <2 x double> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lo = shufflevector <2 x double> %i.jz, <2 x double> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %25 = shufflevector <4 x double> %i.ln, <4 x double> %i.lo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lp = shufflevector <2 x double> %i.ji, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %26 = shufflevector <4 x double> %i.lp, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %27 = fmul <8 x double> %25, %26
  %28 = fmul <8 x double> %27, splat (double 8.000000e+00)
  %29 = fdiv <8 x double> splat (double 1.000000e+00), %28
  %30 = fptrunc <8 x double> %29 to <8 x float>
  %31 = shufflevector <2 x double> <double 1.000000e+00, double f0x3FE92469C0A7BF3B>, <2 x double> %i.kw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %32 = shufflevector <2 x double> %i.le, <2 x double> %i.lm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %33 = shufflevector <4 x double> %31, <4 x double> %32, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %34 = shufflevector <2 x double> %i.ko, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %35 = shufflevector <4 x double> %34, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %36 = fmul <8 x double> %33, %35
  %i.lq = fmul <8 x double> %36, splat (double 8.000000e+00)
  %i.lr = fdiv <8 x double> splat (double 1.000000e+00), %i.lq
  %i.ls = fptrunc <8 x double> %i.lr to <8 x float>
  %interleaved.vec.2 = shufflevector <8 x float> %30, <8 x float> %i.ls, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %i.jj, align 4, !tbaa !56
  %i.lt = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.lu = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.lv = load i16, ptr %i.lt, align 2, !tbaa !53
  %i.lw = load i16, ptr %i.lu, align 2, !tbaa !53
  %i.lx = insertelement <2 x i16> poison, i16 %i.lv, i64 0
  %i.ly = insertelement <2 x i16> %i.lx, i16 %i.lw, i64 1
  %i.lz = uitofp <2 x i16> %i.ly to <2 x double>
  %i.ma = getelementptr inbounds nuw i8, ptr %i.dv, i64 192
  %i.mb = getelementptr inbounds nuw i8, ptr %i.y, i64 98
  %i.mc = getelementptr inbounds nuw i8, ptr %i.y, i64 114
  %i.md = load i16, ptr %i.mb, align 2, !tbaa !53
  %i.me = load i16, ptr %i.mc, align 2, !tbaa !53
  %i.mf = insertelement <2 x i16> poison, i16 %i.md, i64 0
  %i.mg = insertelement <2 x i16> %i.mf, i16 %i.me, i64 1
  %i.mh = uitofp <2 x i16> %i.mg to <2 x double>
  %i.mi = fmul nnan <2 x double> %i.mh, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.mj = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.mk = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %i.ml = load i16, ptr %i.mj, align 2, !tbaa !53
  %i.mm = load i16, ptr %i.mk, align 2, !tbaa !53
  %i.mn = insertelement <2 x i16> poison, i16 %i.ml, i64 0
  %i.mo = insertelement <2 x i16> %i.mn, i16 %i.mm, i64 1
  %i.mp = uitofp <2 x i16> %i.mo to <2 x double>
  %i.mq = fmul nnan <2 x double> %i.mp, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.mr = getelementptr inbounds nuw i8, ptr %i.y, i64 102
  %i.ms = getelementptr inbounds nuw i8, ptr %i.y, i64 118
  %i.mt = load i16, ptr %i.mr, align 2, !tbaa !53
  %i.mu = load i16, ptr %i.ms, align 2, !tbaa !53
  %i.mv = insertelement <2 x i16> poison, i16 %i.mt, i64 0
  %i.mw = insertelement <2 x i16> %i.mv, i16 %i.mu, i64 1
  %i.mx = uitofp <2 x i16> %i.mw to <2 x double>
  %i.my = fmul nnan <2 x double> %i.mx, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.mz = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.na = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.nb = load i16, ptr %i.mz, align 2, !tbaa !53
  %i.nc = load i16, ptr %i.na, align 2, !tbaa !53
  %i.nd = insertelement <2 x i16> poison, i16 %i.nb, i64 0
  %i.ne = insertelement <2 x i16> %i.nd, i16 %i.nc, i64 1
  %i.nf = uitofp <2 x i16> %i.ne to <2 x double>
  %i.ng = getelementptr inbounds nuw i8, ptr %i.y, i64 106
  %i.nh = getelementptr inbounds nuw i8, ptr %i.y, i64 122
  %i.ni = load i16, ptr %i.ng, align 2, !tbaa !53
  %i.nj = load i16, ptr %i.nh, align 2, !tbaa !53
  %i.nk = insertelement <2 x i16> poison, i16 %i.ni, i64 0
  %i.nl = insertelement <2 x i16> %i.nk, i16 %i.nj, i64 1
  %i.nm = uitofp <2 x i16> %i.nl to <2 x double>
  %i.nn = fmul nnan <2 x double> %i.nm, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.no = getelementptr inbounds nuw i8, ptr %i.y, i64 108
  %i.np = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %i.nq = load i16, ptr %i.no, align 2, !tbaa !53
  %i.nr = load i16, ptr %i.np, align 2, !tbaa !53
  %i.ns = insertelement <2 x i16> poison, i16 %i.nq, i64 0
  %i.nt = insertelement <2 x i16> %i.ns, i16 %i.nr, i64 1
  %i.nu = uitofp <2 x i16> %i.nt to <2 x double>
  %i.nv = fmul nnan <2 x double> %i.nu, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.nw = getelementptr inbounds nuw i8, ptr %i.y, i64 110
  %i.nx = getelementptr inbounds nuw i8, ptr %i.y, i64 126
  %i.ny = load i16, ptr %i.nw, align 2, !tbaa !53
  %i.nz = load i16, ptr %i.nx, align 2, !tbaa !53
  %i.oa = insertelement <2 x i16> poison, i16 %i.ny, i64 0
  %i.ob = insertelement <2 x i16> %i.oa, i16 %i.nz, i64 1
  %i.oc = uitofp <2 x i16> %i.ob to <2 x double>
  %i.od = fmul nnan <2 x double> %i.oc, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.oe = shufflevector <2 x double> <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>, <2 x double> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.of = shufflevector <2 x double> %i.mq, <2 x double> %i.my, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %37 = shufflevector <4 x double> %i.oe, <4 x double> %i.of, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.og = shufflevector <2 x double> %i.lz, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %38 = shufflevector <4 x double> %i.og, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %39 = fmul <8 x double> %37, %38
  %40 = fmul <8 x double> %39, splat (double 8.000000e+00)
  %41 = fdiv <8 x double> splat (double 1.000000e+00), %40
  %42 = fptrunc <8 x double> %41 to <8 x float>
  %43 = shufflevector <2 x double> <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>, <2 x double> %i.nn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %44 = shufflevector <2 x double> %i.nv, <2 x double> %i.od, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %45 = shufflevector <4 x double> %43, <4 x double> %44, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %46 = shufflevector <2 x double> %i.nf, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %47 = shufflevector <4 x double> %46, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %48 = fmul <8 x double> %45, %47
  %i.oh = fmul <8 x double> %48, splat (double 8.000000e+00)
  %i.oi = fdiv <8 x double> splat (double 1.000000e+00), %i.oh
  %i.oj = fptrunc <8 x double> %i.oi to <8 x float>
  %interleaved.vec.3 = shufflevector <8 x float> %42, <8 x float> %i.oj, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.3, ptr %i.ma, align 4, !tbaa !56
  br label %.loopexit

bb.ad:                                            ; preds = %bb.e
  %i.ok = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  store i32 48, ptr %i.ol, align 8, !tbaa !30
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !32
  tail call void %i.om(ptr noundef nonnull %0) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.p, %vector.body, %bb.ad
  %i.on = add nuw nsw i32 %.077114, 1             ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.075115, i64 96
  %i.op = load i32, ptr %i.a, align 4, !tbaa !65
  %i.oq = icmp slt i32 %i.on, %i.op
  br i1 %i.oq, label %bb.b, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 3 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02324 = phi i32 [ %5, %.lr.ph.preheader ], [ %i.t, %.lr.ph ] ; 2 uses
  tail call void %i.l(ptr noundef %i.r, i32 noundef %.02324, ptr noundef %i.p) #5
  tail call void %i.j(ptr noundef %i.p) #5
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %indvars.iv
  tail call void %i.n(ptr noundef %i.s, ptr noundef %i.h, ptr noundef %i.p) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = add i32 %.02324, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare i32 @jsimd_set_fdct_islow(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @jpeg_fdct_islow(ptr noundef) #1

declare i32 @jsimd_set_fdct_ifast(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @jpeg_fdct_ifast(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @forward_DCT_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02324 = phi i32 [ %5, %.lr.ph.preheader ], [ %i.t, %.lr.ph ] ; 2 uses
  tail call void %i.l(ptr noundef %i.r, i32 noundef %.02324, ptr noundef %i.p) #5
  tail call void %i.j(ptr noundef %i.p) #5
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %indvars.iv
  tail call void %i.n(ptr noundef %i.s, ptr noundef %i.h, ptr noundef %i.p) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = add i32 %.02324, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare i32 @jsimd_set_fdct_float(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @jpeg_fdct_float(ptr noundef) #1

declare i32 @jsimd_set_convsamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @convsamp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 128)) %2) #2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.c, align 1, !tbaa !31
  %i.f = zext i8 %i.e to i16
  %i.g = add nsw i16 %i.f, -128
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.g, ptr %2, align 2, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.j = load i8, ptr %i.d, align 1, !tbaa !31
  %i.k = zext i8 %i.j to i16
  %i.l = add nsw i16 %i.k, -128
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.l, ptr %i.h, align 2, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.o = load i8, ptr %i.i, align 1, !tbaa !31
  %i.p = zext i8 %i.o to i16
  %i.q = add nsw i16 %i.p, -128
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %i.q, ptr %i.m, align 2, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = load i8, ptr %i.n, align 1, !tbaa !31
  %i.u = zext i8 %i.t to i16
  %i.v = add nsw i16 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %i.v, ptr %i.r, align 2, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.y = load i8, ptr %i.s, align 1, !tbaa !31
  %i.z = zext i8 %i.y to i16
  %i.aa = add nsw i16 %i.z, -128
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 %i.aa, ptr %i.w, align 2, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !31
  %i.ae = zext i8 %i.ad to i16
  %i.af = add nsw i16 %i.ae, -128
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i16 %i.af, ptr %i.ab, align 2, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !31
  %i.aj = zext i8 %i.ai to i16
  %i.ak = add nsw i16 %i.aj, -128
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 %i.ak, ptr %i.ag, align 2, !tbaa !53
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !31
  %i.an = zext i8 %i.am to i16
  %i.ao = add nsw i16 %i.an, -128
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 %i.ao, ptr %i.al, align 2, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.a ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.as, align 1, !tbaa !31
  %i.av = zext i8 %i.au to i16
  %i.aw = add nsw i16 %i.av, -128
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i16 %i.aw, ptr %i.ap, align 2, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.az = load i8, ptr %i.at, align 1, !tbaa !31
  %i.ba = zext i8 %i.az to i16
  %i.bb = add nsw i16 %i.ba, -128
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.bb, ptr %i.ax, align 2, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !31
  %i.bf = zext i8 %i.be to i16
  %i.bg = add nsw i16 %i.bf, -128
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.bg, ptr %i.bc, align 2, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !31
end_hunk_0
