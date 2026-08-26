Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmavoice?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 34
begin_hunk_0_@postfilter:bb.a
  store <4 x float> %i.cx, ptr %i.cz, align 16, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i, i64 240
  %wide.load.7 = load <4 x float>, ptr %i.da, align 4, !tbaa !39 ; 2 uses
  %wide.load5.7 = load <4 x float>, ptr %i.db, align 4, !tbaa !39 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 240
  %wide.load6.7 = load <4 x float>, ptr %i.dc, align 4, !tbaa !39
  %wide.load7.7 = load <4 x float>, ptr %i.dd, align 4, !tbaa !39
  %i.de = fsub nsz <4 x float> %wide.load6.7, %wide.load.7
  %i.df = fsub nsz <4 x float> %wide.load7.7, %wide.load5.7
  %i.dg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.de, <4 x float> %wide.load.7)
  %i.dh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.df, <4 x float> %wide.load5.7)
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  store <4 x float> %i.dg, ptr %i.di, align 16, !tbaa !39
  store <4 x float> %i.dh, ptr %i.dj, align 16, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %.1.i, i64 256
  %i.dl = getelementptr inbounds nuw i8, ptr %.1.i, i64 272
  %wide.load.8 = load <4 x float>, ptr %i.dk, align 4, !tbaa !39 ; 2 uses
  %wide.load5.8 = load <4 x float>, ptr %i.dl, align 4, !tbaa !39 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 272
  %wide.load6.8 = load <4 x float>, ptr %i.dm, align 4, !tbaa !39
  %wide.load7.8 = load <4 x float>, ptr %i.dn, align 4, !tbaa !39
  %i.do = fsub nsz <4 x float> %wide.load6.8, %wide.load.8
  %i.dp = fsub nsz <4 x float> %wide.load7.8, %wide.load5.8
  %i.dq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.do, <4 x float> %wide.load.8)
  %i.dr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.dp, <4 x float> %wide.load5.8)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store <4 x float> %i.dq, ptr %i.ds, align 16, !tbaa !39
  store <4 x float> %i.dr, ptr %i.dt, align 16, !tbaa !39
  %i.du = getelementptr inbounds nuw i8, ptr %.1.i, i64 288
  %i.dv = getelementptr inbounds nuw i8, ptr %.1.i, i64 304
  %wide.load.9 = load <4 x float>, ptr %i.du, align 4, !tbaa !39 ; 2 uses
  %wide.load5.9 = load <4 x float>, ptr %i.dv, align 4, !tbaa !39 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 304
  %wide.load6.9 = load <4 x float>, ptr %i.dw, align 4, !tbaa !39
  %wide.load7.9 = load <4 x float>, ptr %i.dx, align 4, !tbaa !39
  %i.dy = fsub nsz <4 x float> %wide.load6.9, %wide.load.9
  %i.dz = fsub nsz <4 x float> %wide.load7.9, %wide.load5.9
  %i.ea = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.dy, <4 x float> %wide.load.9)
  %i.eb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.dz, <4 x float> %wide.load5.9)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store <4 x float> %i.ea, ptr %i.ec, align 16, !tbaa !39
  store <4 x float> %i.eb, ptr %i.ed, align 16, !tbaa !39
  br label %kalman_smoothen.exit

kalman_smoothen.exit:                             ; preds = %vector.body, %bb.d, %bb.e, %bb.a
  %.0 = phi ptr [ %4, %bb.a ], [ %4, %bb.d ], [ %4, %bb.e ], [ %i.h, %vector.body ]
  %i.ee = load i32, ptr %i.l, align 4, !tbaa !47
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.k, ptr noundef nonnull %3, ptr noundef %.0, i32 noundef 80, i32 noundef %i.ee) #12
  %i.ef = load i32, ptr %i.l, align 4, !tbaa !47  ; 3 uses
  %i.eg = sub nsw i32 0, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.eh
  %i.ej = sub nsw i32 80, %i.ef
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ek
  %i.em = sext i32 %i.ef to i64
  %i.en = shl nsw i64 %i.em, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr nonnull align 4 %i.el, i64 %i.en, i1 false)
  %.not.i40 = icmp eq i32 %5, 0                   ; 2 uses
  br i1 %.not.i40, label %bb.t, label %bb.h

bb.h:                                             ; preds = %kalman_smoothen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 10832 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 11360 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !39
  store float 1.000000e+00, ptr %i.eo, align 4, !tbaa !39
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 10836
  %i.er = load i32, ptr %i.l, align 4, !tbaa !47  ; 2 uses
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = shl nsw i64 %i.es, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eq, ptr nonnull align 4 %3, i64 %i.et, i1 false)
  %i.eu = getelementptr [4 x i8], ptr %i.eo, i64 %i.es
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = sub i32 127, %i.er
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ev, i8 0, i64 %i.ey, i1 false)
  %i.ez = load i32, ptr %i.l, align 4, !tbaa !47  ; 2 uses
  %i.fa = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef %i.ez) #12
  %i.fb = fadd nsz float %i.fa, 1.000000e+00
  %i.fc = load float, ptr %3, align 4, !tbaa !39
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fe = add nsw i32 %i.ez, -1
  %i.ff = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %3, ptr noundef nonnull %i.fd, i32 noundef %i.fe) #12
  %i.fg = fadd nsz float %i.fc, %i.ff
  %i.fh = fdiv nsz float %i.fg, %i.fb
  %i.fi = fpext nsz float %i.fh to double
  %i.fj = fmul nsz double %i.fi, f0x3FE6666666666666
  %i.fk = fptrunc nsz double %i.fj to float
  %i.fl = load i32, ptr %i.l, align 4, !tbaa !47
  %i.fm = add nsw i32 %i.fl, 2
  call void @ff_tilt_compensation(ptr noundef nonnull %i.g, float noundef %i.fk, ptr noundef nonnull %i.eo, i32 noundef %i.fm) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %i.a, ptr noundef nonnull align 4 dereferenceable(520) %i.ep, i64 520, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2448 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !156
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 16, !tbaa !157
  call void %i.fo(ptr noundef %i.fq, ptr noundef nonnull %i.b, ptr noundef nonnull %i.eo, i64 noundef 4) #12, !inline_history !158
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %i.fs = load float, ptr %i.fr, align 16, !tbaa !39 ; 2 uses
  %i.ft = fmul nsz float %i.fs, %i.fs
  %i.fu = call nsz float @llvm.log10.f32(float %i.ft) ; 5 uses
  %i.fv = fcmp nsz olt float %i.fu, -1.500000e+01
  %i.fw = select nsz i1 %i.fv, float -1.500000e+01, float %i.fu
  %i.fx = fcmp nsz olt float %i.fu, 1.500000e+01
  %i.fy = select nsz i1 %i.fx, float %i.fu, float 1.500000e+01
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i.i = phi i64 [ 1, %bb.h ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %.0171.i.i = phi float [ %i.fy, %bb.h ], [ %i.gk, %bb.i ] ; 2 uses
  %.0156170.i.i = phi float [ %i.fw, %bb.h ], [ %i.gi, %bb.i ] ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i ; 2 uses
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !39 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !39 ; 2 uses
  %i.gd = fmul nsz float %i.gc, %i.gc
  %i.ge = call nsz float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gd)
  %i.gf = call nsz float @llvm.log10.f32(float %i.ge) ; 5 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store float %i.gf, ptr %i.gg, align 4, !tbaa !39
  %i.gh = fcmp nsz ogt float %.0156170.i.i, %i.gf
  %i.gi = select nsz i1 %i.gh, float %.0156170.i.i, float %i.gf ; 3 uses
  %i.gj = fcmp nsz ogt float %.0171.i.i, %i.gf
  %i.gk = select nsz i1 %i.gj, float %i.gf, float %.0171.i.i ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 64
  br i1 %exitcond.not.i.i, label %bb.j, label %bb.i, !llvm.loop !159

bb.j:                                             ; preds = %bb.i
  %i.gl = load float, ptr %i.b, align 16, !tbaa !39 ; 2 uses
  %i.gm = fmul nsz float %i.gl, %i.gl
  %i.gn = call nsz float @llvm.log10.f32(float %i.gm) ; 5 uses
  store float %i.gn, ptr %i.b, align 16, !tbaa !39
  %i.go = fcmp nsz ogt float %i.gi, %i.gn
  %i.gp = select nsz i1 %i.go, float %i.gi, float %i.gn ; 2 uses
  %i.gq = fcmp nsz ogt float %i.gk, %i.gn
  %i.gr = select nsz i1 %i.gq, float %i.gn, float %i.gk
  %i.gs = fsub nsz float %i.gp, %i.gr             ; 2 uses
  store float %i.fu, ptr %i.fr, align 16, !tbaa !39
  %i.gt = fpext nsz float %i.gs to double
  %i.gu = fdiv nsz float 6.400000e+01, %i.gs
  %i.gv = icmp eq i32 %5, 1
  %i.gw = select nsz i1 %i.gv, double f0x3FD89D89D89D89D9, double f0x3FD5C4CA037BA571
  %i.gx = fmul nsz double %i.gw, %i.gt
  %i.gy = fptrunc nsz double %i.gx to float       ; 2 uses
  %i.gz = fpext nsz float %i.gy to double
  %i.ha = fmul nsz double %i.gz, f0x401774355B685CB5
  %i.hb = fptrunc nsz double %i.ha to float
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hd = load i32, ptr %i.hc, align 16, !tbaa !42
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [256 x i8], ptr @wmavoice_denoise_power_table, i64 %i.he
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %indvars.iv176.i.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next177.i.i, %bb.n ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv176.i.i ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !39
  %i.hi = fsub nsz float %i.gp, %i.hh
  %i.hj = call nsz float @llvm.fmuladd.f32(float %i.hi, float %i.gu, float -1.000000e+00)
  %i.hk = fpext nsz float %i.hj to double
  %i.hl = call i64 @llvm.lrint.i64.f64(double %i.hk)
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = call i32 @llvm.smax.i32(i32 %i.hm, i32 0)
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !39 ; 2 uses
  %i.hr = fmul nsz float %i.hq, %i.hb
  store float %i.hr, ptr %i.hg, align 4, !tbaa !39
  %i.hs = fmul nsz float %i.hq, %i.gy
  %i.ht = fpext nsz float %i.hs to double
  %i.hu = fadd nsz double %i.ht, -2.950000e-02
  %i.hv = fmul nsz double %i.hu, f0x4051A4837FFFF31D ; 2 uses
  %i.hw = fcmp nsz ogt double %i.hv, 0.000000e+00
  %i.hx = select nsz i1 %i.hw, double %i.hv, double 0.000000e+00 ; 2 uses
  %i.hy = fcmp nsz ogt double %i.hx, f0x41CFFFFFFF800000
  %..i168.i.i = select nsz i1 %i.hy, double f0x41CFFFFFFF800000, double %i.hx
  %i.hz = fptosi double %..i168.i.i to i32        ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 127
  br i1 %i.ia, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ib = add nsw i32 %i.hz, -127
  %i.ic = uitofp nneg i32 %i.ib to float
  %i.id = call nsz float @llvm.pow.f32(float f0x3F843ECB, float %i.ic)
  %i.ie = fmul nnan nsz float %i.id, f0x3F892964
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.if = call i32 @llvm.smax.i32(i32 %i.hz, i32 0)
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_energy_table, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink.i.i = phi float [ %i.ie, %bb.l ], [ %i.ii, %bb.m ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv176.i.i
  store float %.sink.i.i, ptr %i.ij, align 4, !tbaa !39
  %indvars.iv.next177.i.i = add nuw nsw i64 %indvars.iv176.i.i, 1 ; 2 uses
  %exitcond179.not.i.i = icmp eq i64 %indvars.iv.next177.i.i, 65
  br i1 %exitcond179.not.i.i, label %bb.o, label %bb.k, !llvm.loop !160

bb.o:                                             ; preds = %bb.n
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.il = load ptr, ptr %i.ik, align 16, !tbaa !161
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.in = load ptr, ptr %i.im, align 16, !tbaa !162
  call void %i.il(ptr noundef %i.in, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 4) #12, !inline_history !158
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !163
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !164
  call void %i.ip(ptr noundef %i.ir, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #12, !inline_history !158
  %i.is = load float, ptr %i.fr, align 16, !tbaa !39 ; 4 uses
  %i.it = fptosi float %i.is to i32
  %i.iu = call i32 @llvm.smax.i32(i32 %i.it, i32 -255)
  %.0.i167.i.i = call i32 @llvm.smin.i32(i32 %i.iu, i32 255)
  %i.iv = load float, ptr %i.a, align 16, !tbaa !39
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 4540 ; 4 uses
  %i.ix = sext i32 %.0.i167.i.i to i64
  %i.iy = getelementptr [4 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 1020
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !39
  %i.jb = fmul nsz float %i.iv, %i.ja
  store float %i.jb, ptr %i.a, align 16, !tbaa !39
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !39
  %i.je = call nsz float @llvm.fmuladd.f32(float %i.jd, float -2.000000e+00, float %i.is)
  %i.jf = fptosi float %i.je to i32
  %i.jg = call i32 @llvm.smax.i32(i32 %i.jf, i32 -255)
  %.0.i165.i.i = call i32 @llvm.smin.i32(i32 %i.jg, i32 255)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 16, !tbaa !39
  %i.jj = sext i32 %.0.i165.i.i to i64
  %i.jk = getelementptr [4 x i8], ptr %i.iw, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 1020
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !39
  %i.jn = fneg nsz float %i.is
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %indvars.iv180.i.i = phi i64 [ %indvars.iv.next181.i.i, %bb.q ], [ 63, %bb.o ] ; 5 uses
  %i.jp = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv180.i.i ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 -4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !39
  %i.js = call nsz float @llvm.fmuladd.f32(float %i.jr, float -2.000000e+00, float %i.jn)
  %i.jt = fptosi float %i.js to i32
  %i.ju = call i32 @llvm.smax.i32(i32 %i.jt, i32 -255)
  %.0.i163.i.i = call i32 @llvm.smin.i32(i32 %i.ju, i32 255)
  %i.jv = add nsw i32 %.0.i163.i.i, 255
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv180.i.i ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !39
  %i.jy = zext nneg i32 %i.jv to i64              ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !39
  %i.kb = fmul nsz float %i.jx, %i.ka
  %.idx188.i.i = shl nuw nsw i64 %indvars.iv180.i.i, 3
  %i.kc = getelementptr i8, ptr %i.a, i64 %.idx188.i.i ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 4
  store float %i.kb, ptr %i.kd, align 4, !tbaa !39
  %i.ke = load float, ptr %i.jw, align 4, !tbaa !39
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.jy
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !39
  %i.kh = fmul nsz float %i.ke, %i.kg
  store float %i.kh, ptr %i.kc, align 8, !tbaa !39
  %i.ki = add nsw i64 %indvars.iv180.i.i, -1      ; 3 uses
  %.not.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kj = getelementptr i8, ptr %i.jp, i64 -8
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !39
  %i.kl = call nsz float @llvm.fmuladd.f32(float %i.kk, float -2.000000e+00, float %i.is)
  %i.km = fptosi float %i.kl to i32
  %i.kn = call i32 @llvm.smax.i32(i32 %i.km, i32 -255)
  %.0.i.i.i = call i32 @llvm.smin.i32(i32 %i.kn, i32 255)
  %i.ko = add nsw i32 %.0.i.i.i, 255
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ki ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !39
  %i.kr = zext nneg i32 %i.ko to i64              ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.kr
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !39
  %i.ku = fmul nsz float %i.kq, %i.kt
  %.idx189.i.i = shl nuw nsw i64 %i.ki, 3
  %i.kv = getelementptr i8, ptr %i.a, i64 %.idx189.i.i ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 4
  store float %i.ku, ptr %i.kw, align 4, !tbaa !39
  %i.kx = load float, ptr %i.kp, align 4, !tbaa !39
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.kr
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !39
  %i.la = fmul nsz float %i.kx, %i.kz
  store float %i.la, ptr %i.kv, align 8, !tbaa !39
  %indvars.iv.next181.i.i = add nsw i64 %indvars.iv180.i.i, -2
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  %i.lb = fmul nsz float %i.ji, %i.jm
  store float %i.lb, ptr %i.jh, align 16, !tbaa !39
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !165
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !166
  call void %i.ld(ptr noundef %i.lf, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.a, i64 noundef 8) #12, !inline_history !158
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 11548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(324) %i.lg, i8 0, i64 324, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !43
  %.not161.i.i = icmp eq i32 %i.li, 0
  br i1 %.not161.i.i, label %calc_input_response.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 11544
  store float 0.000000e+00, ptr %i.lj, align 8, !tbaa !39
  %i.lk = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ep, i32 noundef 46) #12
  %i.ll = fadd nsz float %i.lk, 1.000000e+00
  %i.lm = load float, ptr %i.ep, align 16, !tbaa !39
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 11364
  %i.lo = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ln, i32 noundef 45) #12
  %i.lp = fadd nsz float %i.lm, %i.lo
  %i.lq = fdiv nsz float %i.lp, %i.ll
  %i.lr = fpext nsz float %i.lq to double
  %i.ls = fmul nsz double %i.lr, -1.800000e+00
  %i.lt = fptrunc nsz double %i.ls to float
  call void @ff_tilt_compensation(ptr noundef nonnull %i.d, float noundef %i.lt, ptr noundef nonnull %i.ep, i32 noundef 47) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %calc_input_response.exit.i

calc_input_response.exit.i:                       ; preds = %bb.s, %bb.r
  %i.lu = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ep, i32 noundef 47) #12
  %i.lv = fdiv nsz float 1.000000e+00, %i.lu
  %i.lw = call nsz float @llvm.sqrt.f32(float %i.lv)
  %i.lx = fmul nsz float %i.lw, 1.562500e-02      ; 3 uses
  %i.ly = load <4 x float>, ptr %i.ep, align 16, !tbaa !39
  %i.lz = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer ; 11 uses
  %i.mb = fmul nsz <4 x float> %i.ly, %i.ma
  store <4 x float> %i.mb, ptr %i.ep, align 16, !tbaa !39
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 11376 ; 2 uses
  %i.md = load <4 x float>, ptr %i.mc, align 16, !tbaa !39
  %i.me = fmul nsz <4 x float> %i.ma, %i.md
  store <4 x float> %i.me, ptr %i.mc, align 16, !tbaa !39
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 11392 ; 2 uses
  %i.mg = load <4 x float>, ptr %i.mf, align 16, !tbaa !39
  %i.mh = fmul nsz <4 x float> %i.ma, %i.mg
  store <4 x float> %i.mh, ptr %i.mf, align 16, !tbaa !39
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 11408 ; 2 uses
  %i.mj = load <4 x float>, ptr %i.mi, align 16, !tbaa !39
  %i.mk = fmul nsz <4 x float> %i.ma, %i.mj
  store <4 x float> %i.mk, ptr %i.mi, align 16, !tbaa !39
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 11424 ; 2 uses
  %i.mm = load <4 x float>, ptr %i.ml, align 16, !tbaa !39
  %i.mn = fmul nsz <4 x float> %i.ma, %i.mm
  store <4 x float> %i.mn, ptr %i.ml, align 16, !tbaa !39
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 11440 ; 2 uses
  %i.mp = load <4 x float>, ptr %i.mo, align 16, !tbaa !39
  %i.mq = fmul nsz <4 x float> %i.ma, %i.mp
  store <4 x float> %i.mq, ptr %i.mo, align 16, !tbaa !39
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 11456 ; 2 uses
  %i.ms = load <4 x float>, ptr %i.mr, align 16, !tbaa !39
  %i.mt = fmul nsz <4 x float> %i.ma, %i.ms
  store <4 x float> %i.mt, ptr %i.mr, align 16, !tbaa !39
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 11472 ; 2 uses
  %i.mv = load <4 x float>, ptr %i.mu, align 16, !tbaa !39
  %i.mw = fmul nsz <4 x float> %i.ma, %i.mv
  store <4 x float> %i.mw, ptr %i.mu, align 16, !tbaa !39
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 11488 ; 2 uses
  %i.my = load <4 x float>, ptr %i.mx, align 16, !tbaa !39
  %i.mz = fmul nsz <4 x float> %i.ma, %i.my
  store <4 x float> %i.mz, ptr %i.mx, align 16, !tbaa !39
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 11504 ; 2 uses
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !39
  %i.nc = fmul nsz <4 x float> %i.ma, %i.nb
  store <4 x float> %i.nc, ptr %i.na, align 16, !tbaa !39
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 11520 ; 2 uses
  %i.ne = load <4 x float>, ptr %i.nd, align 16, !tbaa !39
  %i.nf = fmul nsz <4 x float> %i.ma, %i.ne
  store <4 x float> %i.nf, ptr %i.nd, align 16, !tbaa !39
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 11536 ; 2 uses
  %i.nh = load <2 x float>, ptr %i.ng, align 16, !tbaa !39
  %i.ni = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = fmul nsz <2 x float> %i.nj, %i.nh
end_hunk_0
