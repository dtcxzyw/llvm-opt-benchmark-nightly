Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@mouse_moved:bb.a
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !126  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !143
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !144
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ac = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.w, ptr noundef %i.y, double noundef %i.ab, i32 noundef 1, ptr noundef nonnull %i.e, i64 noundef 2) #34 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 332
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 324
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !15
  %i.ag = load <2 x float>, ptr %i.e, align 16, !tbaa !15
  %i.ah = load <2 x float>, ptr %i.v, align 8, !tbaa !15
  %i.ai = load <2 x float>, ptr %i.ae, align 4, !tbaa !15
  %i.aj = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.af
  %i.ak = fadd reassoc nsz arcp contract afn <2 x float> %i.ah, %i.ai
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ak
  %.val = load ptr, ptr %i.h, align 16, !tbaa !125 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.an = load i32, ptr %i.am, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.f, label %crop_adjust.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !204
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread24.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !205
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !206
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !207
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.az = load float, ptr %i.ay, align 4, !tbaa !208
  br label %.thread24.i

.thread24.i:                                      ; preds = %bb.g, %bb.f
  %i.ba = phi float [ %i.ax, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.bb = phi float [ %i.av, %bb.g ], [ 2.800000e+01, %bb.f ]
  %i.bc = phi reassoc nsz arcp contract afn float [ %i.az, %bb.g ], [ 1.000000e+00, %bb.f ]
  %i.bd = load float, ptr %i.t, align 4, !tbaa !209
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !210
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !211
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !212
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bs = load <2 x i32>, ptr %i.bk, align 8, !tbaa !17
  %i.bt = sitofp <2 x i32> %i.bs to <2 x float>   ; 4 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0 ; 4 uses
  %i.bv = fptosi float %i.bu to i32               ; 2 uses
  %i.bw = extractelement <2 x float> %i.bt, i64 1 ; 4 uses
  %i.bx = fptosi float %i.bw to i32               ; 2 uses
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.bd, float noundef %i.bf, float noundef %i.bh, float noundef %i.bj, float noundef %i.bb, float noundef %i.ba, float noundef %i.bc, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef 0)
  %i.by = load <4 x float>, ptr %i.a, align 64, !tbaa !15, !noalias !416 ; 3 uses
  %i.bz = load <4 x float>, ptr %i.bl, align 16   ; 2 uses
  %i.ca = load float, ptr %i.bm, align 8, !tbaa !15, !noalias !416 ; 2 uses
  %i.cb = load float, ptr %i.bn, align 4, !tbaa !15, !noalias !416 ; 2 uses
  %i.cc = load float, ptr %i.bo, align 32, !tbaa !15, !noalias !416 ; 2 uses
  %i.cd = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, zeroinitializer
  %i.cf = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, zeroinitializer ; 2 uses
  %i.ch = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.ci = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.ce ; 2 uses
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cg
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ca, 0.000000e+00
  %i.cl = fmul reassoc nsz arcp contract afn float %i.cb, 0.000000e+00 ; 2 uses
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cc, %i.ck ; 2 uses
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, %i.cl
  %i.co = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.co ; 2 uses
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cp
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw ; 2 uses
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cm, %i.cr
  %i.ct = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, %i.ct
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.cu ; 2 uses
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cp
  %i.cx = fmul reassoc nsz arcp contract afn float %i.ca, %i.bu
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cc, %i.cx ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, %i.cr
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cg
  %i.db = fadd reassoc nsz arcp contract afn float %i.cy, %i.cl
  %i.dc = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv reassoc nsz arcp contract afn <2 x float> %i.cj, %i.dd ; 10 uses
  %i.df = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv reassoc nsz arcp contract afn <2 x float> %i.cq, %i.dg ; 9 uses
  %i.di = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.dj ; 9 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dm = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fdiv reassoc nsz arcp contract afn <2 x float> %i.da, %i.dn ; 10 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.dr = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.ds = extractelement <2 x float> %i.de, i64 0
  %i.dt = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.du = extractelement <2 x float> %i.do, i64 0
  %i.dv = shufflevector <2 x float> %i.de, <2 x float> %i.dh, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dw = shufflevector <2 x float> %i.dk, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.dx = shufflevector <3 x float> %i.dv, <3 x float> %i.dw, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dh, <2 x float> %i.dk, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dz = shufflevector <3 x float> %i.dy, <3 x float> %i.dq, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ea = fsub reassoc nsz arcp contract afn <3 x float> %i.dx, %i.dz ; 3 uses
  %i.eb = shufflevector <2 x float> %i.dh, <2 x float> %i.dk, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ec = shufflevector <3 x float> %i.eb, <3 x float> %i.dp, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.ed = shufflevector <2 x float> %i.de, <2 x float> %i.dh, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ee = shufflevector <3 x float> %i.ed, <3 x float> %i.dl, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ef = fsub reassoc nsz arcp contract afn <3 x float> %i.ec, %i.ee ; 3 uses
  %i.eg = shufflevector <2 x float> %i.de, <2 x float> %i.dk, <3 x i32> <i32 0, i32 3, i32 2>
  %i.eh = shufflevector <2 x float> %i.dh, <2 x float> %i.do, <3 x i32> <i32 1, i32 0, i32 3>
  %i.ei = fmul reassoc nsz arcp contract afn <3 x float> %i.eg, %i.eh
  %i.ej = fmul reassoc nsz arcp contract afn <3 x float> %i.ec, %i.dx
  %i.ek = fsub reassoc nsz arcp contract afn <3 x float> %i.ei, %i.ej ; 4 uses
  %i.el = fmul reassoc nsz arcp contract afn <3 x float> %i.ea, %i.ea
  %i.em = fmul reassoc nsz arcp contract afn <3 x float> %i.ef, %i.ef
  %i.en = fadd reassoc nsz arcp contract afn <3 x float> %i.em, %i.el
  %i.eo = fmul reassoc nsz arcp contract afn <3 x float> %i.ek, %i.ek
  %i.ep = fadd reassoc nsz arcp contract afn <3 x float> %i.en, %i.eo ; 2 uses
  %i.eq = call reassoc nsz arcp contract afn <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.ep)
  %i.er = fcmp reassoc nsz arcp contract afn ogt <3 x float> %i.ep, zeroinitializer
  %i.es = fdiv reassoc nsz arcp contract afn <3 x float> splat (float 1.000000e+00), %i.eq
  %i.et = select <3 x i1> %i.er, <3 x float> %i.es, <3 x float> splat (float 1.000000e+00) ; 2 uses
  %i.eu = shufflevector <3 x float> %i.et, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ev = shufflevector <3 x float> %i.ea, <3 x float> %i.ef, <8 x i32> <i32 0, i32 3, i32 poison, i32 1, i32 4, i32 poison, i32 2, i32 5>
  %i.ew = shufflevector <3 x float> %i.ek, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 4, i32 9, i32 6, i32 7>
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.ex
  store <8 x float> %i.ey, ptr %i.b, align 16, !tbaa !15
  %i.ez = fsub reassoc nsz arcp contract afn float %i.dt, %i.dr ; 3 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.de, %i.do ; 3 uses
  %i.fa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fb = fmul reassoc nsz arcp contract afn float %i.du, %i.dr
  %i.fc = fmul reassoc nsz arcp contract afn float %i.ds, %i.dt
  %i.fd = fsub reassoc nsz arcp contract afn float %i.fb, %i.fc ; 3 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.ez, %i.ez
  %foldExtExtBinop338 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.ff = extractelement <2 x float> %foldExtExtBinop338, i64 0
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fd, %i.fd
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fg, %i.fh ; 2 uses
  %i.fj = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fi)
  %i.fk = fcmp reassoc nsz arcp contract afn ogt float %i.fi, 0.000000e+00
  %i.fl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fj
  %i.fm = select reassoc nsz arcp contract afn i1 %i.fk, float %i.fl, float 1.000000e+00 ; 3 uses
  %i.fn = shufflevector <3 x float> %i.et, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fo = insertelement <2 x float> %i.fn, float %i.fm, i64 1
  %i.fp = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fq = insertelement <2 x float> %i.fp, float %i.ez, i64 1
  %i.fr = fmul reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fq
  store <2 x float> %i.fr, ptr %i.bp, align 16, !tbaa !15
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fm, %i.fa
  store float %i.fs, ptr %i.bq, align 8, !tbaa !15
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fm, %i.fd
  store float %i.ft, ptr %i.br, align 4, !tbaa !15
  %i.fu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.de, splat (float f0x7F7FFFFF)
  %i.fv = select <2 x i1> %i.fu, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %i.de ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.de, splat (float f0x00800000)
  %i.fx = select <2 x i1> %i.fw, <2 x float> splat (float f0x00800000), <2 x float> %i.de ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fv, %i.dh
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.fv, <2 x float> %i.dh ; 2 uses
  %i.ga = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fx, %i.dh
  %i.gb = select <2 x i1> %i.ga, <2 x float> %i.fx, <2 x float> %i.dh ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fz, %i.dk
  %i.gd = select <2 x i1> %i.gc, <2 x float> %i.fz, <2 x float> %i.dk ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gb, %i.dk
  %i.gf = select <2 x i1> %i.ge, <2 x float> %i.gb, <2 x float> %i.dk ; 2 uses
  %i.gg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gd, %i.do
  %i.gh = select <2 x i1> %i.gg, <2 x float> %i.gd, <2 x float> %i.do
  %i.gi = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gf, %i.do
  %i.gj = select <2 x i1> %i.gi, <2 x float> %i.gf, <2 x float> %i.do
  %i.gk = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bw, float %i.bu) ; 3 uses
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.gk) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %i.gl = fsub reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gh ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, %i.al ; 3 uses
  %i.go = fmul reassoc nsz arcp contract afn float %cos.i, 1.000000e+01 ; 5 uses
  %i.gp = extractelement <2 x float> %i.gn, i64 0 ; 5 uses
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, %i.go
  %i.gr = fmul reassoc nsz arcp contract afn float %sin.i, 1.000000e+01 ; 5 uses
  %6 = extractelement <2 x float> %i.gn, i64 1    ; 5 uses
  %i.gs = fadd reassoc nsz arcp contract afn float %6, %i.gr
  %i.gt = fsub reassoc nsz arcp contract afn float %6, %i.gr
  %i.gu = fmul reassoc nsz arcp contract afn float %sin.i, -1.000000e+01
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gs, %i.gp
  %7 = fmul reassoc nsz arcp contract afn float %i.gq, %6 ; 2 uses
  %8 = fsub reassoc nsz arcp contract afn float %i.gv, %7 ; 3 uses
  %9 = fmul reassoc nsz arcp contract afn float %i.gr, %i.gr
  %i.gw = fmul reassoc nsz arcp contract afn float %i.go, %i.go
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %9 ; 2 uses
  %10 = fmul reassoc nsz arcp contract afn float %8, %8
  %11 = fadd reassoc nsz arcp contract afn float %10, %i.gx ; 2 uses
  %12 = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %11)
  %13 = fcmp reassoc nsz arcp contract afn ogt float %11, 0.000000e+00
  %14 = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %12
  %15 = select reassoc nsz arcp contract afn i1 %13, float %14, float 1.000000e+00 ; 3 uses
  %16 = fmul reassoc nsz arcp contract afn float %i.gu, %15 ; 2 uses
  %17 = fmul reassoc nsz arcp contract afn float %15, %i.go ; 2 uses
  %18 = fmul reassoc nsz arcp contract afn float %15, %8 ; 2 uses
  %19 = fmul reassoc nsz arcp contract afn float %i.gt, %i.gp
  %20 = fsub reassoc nsz arcp contract afn float %19, %7 ; 3 uses
  %i.gy = fmul reassoc nsz arcp contract afn float %20, %20
  %21 = fadd reassoc nsz arcp contract afn float %i.gy, %i.gx ; 2 uses
  %22 = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %21)
  %i.gz = fcmp reassoc nsz arcp contract afn ogt float %21, 0.000000e+00
  %23 = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %22
  %i.ha = select reassoc nsz arcp contract afn i1 %i.gz, float %23, float 1.000000e+00 ; 3 uses
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.gr ; 2 uses
  %i.hc = fmul reassoc nsz arcp contract afn float %i.ha, %i.go ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn float %i.ha, %20 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.thread24.i
  %indvars.iv.i = phi i64 [ 0, %.thread24.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.014343.i = phi float [ f0x7F7FFFFF, %.thread24.i ], [ %.3.i, %bb.l ] ; 3 uses
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !15 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !15 ; 4 uses
  %i.hj = load float, ptr %i.he, align 4, !tbaa !15 ; 4 uses
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hg, %18
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hi, %17
  %i.hm = fsub reassoc nsz arcp contract afn float %i.hk, %i.hl ; 3 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hi, %16
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hj, %18
  %i.hp = fsub reassoc nsz arcp contract afn float %i.hn, %i.ho ; 3 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hj, %17
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hg, %16
  %i.hs = fsub reassoc nsz arcp contract afn float %i.hq, %i.hr ; 3 uses
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hm, %i.hm
  %i.hu = fmul reassoc nsz arcp contract afn float %i.hp, %i.hp
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hu, %i.ht
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hs, %i.hs
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hv, %i.hw ; 2 uses
  %i.hy = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hx)
  %i.hz = fcmp reassoc nsz arcp contract afn ogt float %i.hx, 0.000000e+00
  %i.ia = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hy
  %i.ib = select reassoc nsz arcp contract afn i1 %i.hz, float %i.ia, float 1.000000e+00 ; 3 uses
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.hm ; 2 uses
  %i.id = fmul reassoc nsz arcp contract afn float %i.ib, %i.hp ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ib, %i.hs ; 4 uses
  %i.if = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ic)
  %i.ig = fcmp reassoc nsz arcp contract afn uge float %i.if, 1.000000e-10
  %i.ih = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.id)
  %i.ii = fcmp reassoc nsz arcp contract afn uge float %i.ih, 1.000000e-10
  %or.cond31.not47.i = select i1 %i.ig, i1 true, i1 %i.ii
  %i.ij = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ie)
  %i.ik = fcmp reassoc nsz arcp contract afn uge float %i.ij, 1.000000e-10
  %or.cond.i = select i1 %or.cond31.not47.i, i1 true, i1 %i.ik
  br i1 %or.cond.i, label %vec3isnull.exit.thread.i, label %bb.l

bb.h:                                             ; preds = %bb.l
  %i.il = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %.3.i) ; 4 uses
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.gk, 2.000000e+00
  %i.in = call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.im)
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, 2.000000e+00
  %i.ip = fmul reassoc nsz arcp contract afn float %i.il, %i.il
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %i.io
  %i.ir = fmul reassoc nnan nsz arcp contract afn float %i.bu, f0x3C23D70A
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, %i.bw
  %i.it = fcmp reassoc nsz arcp contract afn olt float %i.iq, %i.is
  br i1 %i.it, label %bb.o, label %bb.m

vec3isnull.exit.thread.i:                         ; preds = %.preheader.i
  %i.iu = fcmp reassoc nsz arcp contract afn oeq float %i.ie, 0.000000e+00
  br i1 %i.iu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vec3isnull.exit.thread.i
  %i.iv = fdiv reassoc nsz arcp contract afn float %i.ic, %i.ie
  %i.iw = fdiv reassoc nsz arcp contract afn float %i.id, %i.ie
  %i.ix = fsub reassoc nsz arcp contract afn float %i.gp, %i.iv ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %i.ix
  %i.iz = fsub reassoc nsz arcp contract afn float %6, %i.iw ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn float %i.iy, %i.ja ; 2 uses
  %i.jc = fcmp reassoc nsz arcp contract afn olt float %.014343.i, %i.jb
  %i.jd = select reassoc nsz arcp contract afn i1 %i.jc, float %.014343.i, float %i.jb
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %vec3isnull.exit.thread.i
  %.2.ph.i = phi float [ %.014343.i, %vec3isnull.exit.thread.i ], [ %i.jd, %bb.i ] ; 3 uses
  %i.je = fmul reassoc nsz arcp contract afn float %i.hg, %i.hd
  %i.jf = fmul reassoc nsz arcp contract afn float %i.hi, %i.hc
  %i.jg = fsub reassoc nsz arcp contract afn float %i.je, %i.jf ; 3 uses
  %i.jh = fmul reassoc nsz arcp contract afn float %i.hi, %i.hb
  %i.ji = fmul reassoc nsz arcp contract afn float %i.hj, %i.hd
  %i.jj = fsub reassoc nsz arcp contract afn float %i.jh, %i.ji ; 3 uses
  %i.jk = fmul reassoc nsz arcp contract afn float %i.hj, %i.hc
  %i.jl = fmul reassoc nsz arcp contract afn float %i.hg, %i.hb
  %i.jm = fsub reassoc nsz arcp contract afn float %i.jk, %i.jl ; 3 uses
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jg, %i.jg
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jj, %i.jj
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.jn
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jm, %i.jm
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jp, %i.jq ; 2 uses
  %i.js = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jr)
  %i.jt = fcmp reassoc nsz arcp contract afn ogt float %i.jr, 0.000000e+00
  %i.ju = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.js
  %i.jv = select reassoc nsz arcp contract afn i1 %i.jt, float %i.ju, float 1.000000e+00 ; 3 uses
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, %i.jg ; 2 uses
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jv, %i.jj ; 2 uses
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jv, %i.jm ; 4 uses
  %i.jz = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jw)
  %i.ka = fcmp reassoc nsz arcp contract afn uge float %i.jz, 1.000000e-10
  %i.kb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jx)
  %i.kc = fcmp reassoc nsz arcp contract afn uge float %i.kb, 1.000000e-10
  %or.cond31.not47.1.i = select i1 %i.ka, i1 true, i1 %i.kc
  %i.kd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jy)
  %i.ke = fcmp reassoc nsz arcp contract afn uge float %i.kd, 1.000000e-10
  %or.cond.1.i = select i1 %or.cond31.not47.1.i, i1 true, i1 %i.ke
  br i1 %or.cond.1.i, label %vec3isnull.exit.thread.1.i, label %bb.l

vec3isnull.exit.thread.1.i:                       ; preds = %bb.j
  %i.kf = fcmp reassoc nsz arcp contract afn oeq float %i.jy, 0.000000e+00
  br i1 %i.kf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %vec3isnull.exit.thread.1.i
  %i.kg = fdiv reassoc nsz arcp contract afn float %i.jw, %i.jy
  %i.kh = fdiv reassoc nsz arcp contract afn float %i.jx, %i.jy
  %i.ki = fsub reassoc nsz arcp contract afn float %i.gp, %i.kg ; 2 uses
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, %i.ki
  %i.kk = fsub reassoc nsz arcp contract afn float %6, %i.kh ; 2 uses
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kk, %i.kk
  %i.km = fadd reassoc nsz arcp contract afn float %i.kj, %i.kl ; 2 uses
  %i.kn = fcmp reassoc nsz arcp contract afn olt float %.2.ph.i, %i.km
  %i.ko = select reassoc nsz arcp contract afn i1 %i.kn, float %.2.ph.i, float %i.km
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %vec3isnull.exit.thread.1.i, %bb.j, %.preheader.i
  %.3.i = phi nsz float [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %.preheader.i ], [ %.2.ph.i, %vec3isnull.exit.thread.1.i ], [ %i.ko, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.h, label %.preheader.i

bb.m:                                             ; preds = %bb.h
  %i.kp = fmul reassoc nsz arcp contract afn float %i.il, %cos.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.kr = getelementptr inbounds nuw i8, ptr %.val, i64 356
  %i.ks = fmul reassoc nsz arcp contract afn float %i.il, %sin.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.ku = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.kv = insertelement <4 x float> %i.ku, float %i.ks, i64 1
  %i.kw = insertelement <4 x float> %i.kv, float %i.kp, i64 3 ; 3 uses
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ky = fadd reassoc nsz arcp contract afn <4 x float> %i.kw, %i.kx
  %i.kz = fsub reassoc nsz arcp contract afn <4 x float> %i.kw, %i.kx
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> %i.ky, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.lb = fdiv reassoc nsz arcp contract afn <4 x float> %i.la, %i.gm ; 3 uses
  %i.lc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.lb, zeroinitializer
  %i.ld = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.lb, splat (float 1.000000e+00)
  %i.le = select <4 x i1> %i.lc, <4 x float> zeroinitializer, <4 x float> %i.lb
  %i.lf = select <4 x i1> %i.ld, <4 x float> splat (float 1.000000e+00), <4 x float> %i.le ; 4 uses
  %i.lg = extractelement <4 x float> %i.lf, i64 2 ; 3 uses
  store float %i.lg, ptr %i.kq, align 8, !tbaa !213
  %i.lh = extractelement <4 x float> %i.lf, i64 3 ; 3 uses
  store float %i.lh, ptr %i.kr, align 4, !tbaa !214
  %i.li = extractelement <4 x float> %i.lf, i64 0 ; 3 uses
  store float %i.li, ptr %i.kt, align 8, !tbaa !215
  %i.lj = getelementptr inbounds nuw i8, ptr %.val, i64 364
  %i.lk = extractelement <4 x float> %i.lf, i64 1 ; 3 uses
  store float %i.lk, ptr %i.lj, align 4, !tbaa !216
  %i.ll = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !101
  %i.lm = and i32 %i.ll, 50331648
  %or.cond.not.i = icmp eq i32 %i.lm, 50331648
  br i1 %or.cond.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lg, %i.lh
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, 5.000000e-01
  %i.lp = fpext reassoc nsz arcp contract afn float %i.lo to double
  %i.lq = fadd reassoc nsz arcp contract afn float %i.li, %i.lk
  %i.lr = fmul reassoc nsz arcp contract afn float %i.lq, 5.000000e-01
  %i.ls = fpext reassoc nsz arcp contract afn float %i.lr to double
  %i.lt = fpext reassoc nsz arcp contract afn float %i.gk to double
  %i.lu = fpext reassoc nsz arcp contract afn float %i.lg to double
  %i.lv = fpext reassoc nsz arcp contract afn float %i.lh to double
  %i.lw = fpext reassoc nsz arcp contract afn float %i.li to double
  %i.lx = fpext reassoc nsz arcp contract afn float %i.lk to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.96, double noundef %i.lp, double noundef %i.ls, double noundef %i.lt, double noundef %i.lu, double noundef %i.lv, double noundef %i.lw, double noundef %i.lx, i32 noundef %i.bv, i32 noundef %i.bx) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %crop_adjust.exit

crop_adjust.exit:                                 ; preds = %bb.e, %bb.o
  call void @dt_control_queue_redraw_center() #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.cj

bb.p:                                             ; preds = %bb.d
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 16 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !179
  %.not258 = icmp eq ptr %i.lz, null
  br i1 %.not258, label %bb.cj, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !217
  %.not259 = icmp eq i32 %i.mb, 0
  br i1 %.not259, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.mc = load float, ptr %i.c, align 4, !tbaa !15
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, %1
  store float %i.md, ptr %i.f, align 8, !tbaa !15
  %i.me = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.mf = load float, ptr %i.d, align 4, !tbaa !15
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %2
  store float %i.mg, ptr %i.me, align 4, !tbaa !15
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !126 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 96
  %i.mj = load ptr, ptr %i.mi, align 16, !tbaa !143
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ml = load i32, ptr %i.mk, align 16, !tbaa !144
  %i.mm = sitofp reassoc nsz arcp contract afn i32 %i.ml to double
  %i.mn = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.mh, ptr noundef %i.mj, double noundef %i.mm, i32 noundef 1, ptr noundef nonnull %i.f, i64 noundef 1) #34
  %.not270 = icmp eq i32 %i.mn, 0
  br i1 %.not270, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mo = getelementptr inbounds nuw i8, ptr %i.i, i64 372
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !199 ; 4 uses
  %i.mq = icmp sgt i32 %i.mp, -1
  br i1 %i.mq, label %bb.t, label %bb.x

end_hunk_0
begin_hunk_1_@_draw_retrieve_lines_from_params:bb.a
  %i.fg = fmul reassoc nsz arcp contract afn float %i.er, %i.ev
  %i.fh = fsub reassoc nsz arcp contract afn float %i.ff, %i.fg ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.ex, %i.ex
  %foldExtExtBinop149 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.fj = extractelement <2 x float> %foldExtExtBinop149, i64 0 ; 2 uses
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fi, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fh, %i.fh
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl ; 2 uses
  %i.fn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fm)
  %i.fo = fcmp reassoc nsz arcp contract afn ogt float %i.fm, 0.000000e+00
  %i.fp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fn
  %i.fq = select reassoc nsz arcp contract afn i1 %i.fo, float %i.fp, float 1.000000e+00 ; 3 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.ex ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fq, %i.fe ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fq, %i.fh
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.fw = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.fr, float noundef %i.fs) #35 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ogt float %i.fw, 0.000000e+00
  %i.fy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fw
  %i.fz = select reassoc nsz arcp contract afn i1 %i.fx, float %i.fy, float 1.000000e+00 ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fr
  store float %i.ga, ptr %i.fd, align 16, !tbaa !15
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fz, %i.fs
  store float %i.gb, ptr %i.ft, align 4, !tbaa !15
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fu, %i.fz
  store float %i.gc, ptr %i.fv, align 8, !tbaa !15
  %i.gd = fsub reassoc nsz arcp contract afn float %i.ew, %i.er ; 2 uses
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.gd
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fj
  %i.gg = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.gf)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store float %i.gg, ptr %i.gh, align 8, !tbaa !188
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.gi, align 4, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  store i32 %spec.select, ptr %i.gj, align 4, !tbaa !189
  %i.gk = zext i1 %i.fb to i32
  %.197 = add nuw nsw i32 %.096116, %i.gk         ; 2 uses
  %not. = xor i1 %i.fb, true
  %i.gl = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.095117, %i.gl           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge121, label %.lr.ph120

.critedge114:                                     ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %.critedge114, %.critedge, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge121, %bb.j, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %._crit_edge121 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge ], [ 0, %.critedge114 ], [ 0, %bb.k ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_get_structure_lines(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.i) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.m) #34
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.n) #34
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.val = load ptr, ptr %i.a, align 16, !tbaa !125
  tail call fastcc void @_gui_update_structure_states(ptr %.val, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !143
  %i.u = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %0) #34
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !125 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_do_clean_structure.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  store i32 1, ptr %i.w, align 4, !tbaa !178
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  store i32 0, ptr %i.y, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  store i32 0, ptr %i.z, align 4, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i32 0, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ac) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.ab, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 228 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !183
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 368
  store i32 0, ptr %i.ag, align 8, !tbaa !197
  store i32 0, ptr %i.w, align 4, !tbaa !178
  br label %_do_clean_structure.exit

_do_clean_structure.exit:                         ; preds = %bb.c, %bb.f
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !245
  %i.ai = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ah) #34
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_do_clean_structure.exit
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.h:                                             ; preds = %_do_clean_structure.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 3, ptr %i.aj, align 8, !tbaa !197
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !17
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.an, align 8, !tbaa !308
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 0, ptr %i.ao, align 4, !tbaa !309
  %i.ap = tail call fastcc i32 @_draw_retrieve_lines_from_params(ptr noundef nonnull %0, i32 noundef 3) ; 0 uses
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmul.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #12

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!19 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!20 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!21 = !{!"dt_dev_histogram_collection_params_t", !20, i64 0, !8, i64 8}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!25 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16}
!26 = !{!"short", !7, i64 0}
!27 = !{!"", !26, i64 0, !26, i64 2}
!28 = !{!"", !8, i64 0, !7, i64 16}
!29 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !27, i64 48, !28, i64 64, !7, i64 96, !8, i64 112}
!30 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!31 = !{!"p1 float", !11, i64 0}
!32 = !{!"dt_dev_distorted_mask_cache_t", !31, i64 0, !25, i64 8, !23, i64 32, !23, i64 40}
!33 = !{!"dt_dev_pixelpipe_iop_t", !18, i64 0, !19, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !21, i64 40, !22, i64 56, !24, i64 64, !7, i64 88, !14, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !25, i64 136, !25, i64 156, !25, i64 176, !25, i64 196, !8, i64 216, !8, i64 220, !29, i64 224, !29, i64 352, !7, i64 480, !8, i64 516, !30, i64 520, !32, i64 528, !32, i64 576}
!34 = !{!33, !11, i64 16}
!35 = !{!"dt_iop_ashift_data_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40}
!36 = !{!35, !14, i64 0}
!37 = !{!35, !14, i64 4}
!38 = !{!35, !14, i64 8}
!39 = !{!35, !14, i64 12}
!40 = !{!35, !14, i64 24}
!41 = !{!35, !14, i64 28}
!42 = !{!35, !14, i64 32}
!43 = !{!35, !14, i64 36}
!44 = !{!35, !14, i64 40}
!45 = !{!35, !14, i64 16}
!46 = !{!35, !14, i64 20}
!47 = !{!33, !8, i64 144}
!48 = !{!33, !8, i64 148}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!25, !8, i64 8}
!52 = !{!25, !8, i64 12}
!53 = !{!25, !14, i64 16}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 4, !15}
!56 = !{!25, !8, i64 0}
!57 = !{!25, !8, i64 4}
!58 = !{!"dt_codepath_t", !8, i64 0}
!59 = !{!"p1 _ZTS6_GList", !11, i64 0}
!60 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!61 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!62 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!63 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!64 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!65 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!66 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!67 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!68 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!69 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!70 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!71 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!72 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!73 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!74 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!75 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!76 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!77 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!78 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!79 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!80 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!81 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!82 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!83 = !{!"dt_pthread_mutex_t", !7, i64 0}
!84 = !{!"p1 omnipotent char", !11, i64 0}
!85 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!86 = !{!"_Bool", !7, i64 0}
!87 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!88 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!89 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!90 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!91 = !{!"", !85, i64 0, !83, i64 8, !7, i64 48, !86, i64 96, !86, i64 97, !87, i64 104, !88, i64 112, !89, i64 120, !90, i64 128, !90, i64 136, !90, i64 144}
!92 = !{!"double", !7, i64 0}
!93 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!94 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!95 = !{!"dt_sys_resources_t", !23, i64 0, !23, i64 8, !22, i64 16, !22, i64 24, !8, i64 32}
end_hunk_1
