Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/amrnbdec?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@synthesis:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.es = load float, ptr %i.er, align 4, !tbaa !47
  %i.et = call nsz float @llvm.fabs.f32(float %i.es)
  %i.eu = fcmp nsz ogt float %i.et, 3.276800e+04
  br i1 %i.eu, label %bb.aq, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !47
  %i.ex = call nsz float @llvm.fabs.f32(float %i.ew)
  %i.ey = fcmp nsz ogt float %i.ex, 3.276800e+04
  br i1 %i.ey, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !47
  %i.fb = call nsz float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp nsz ogt float %i.fb, 3.276800e+04
  br i1 %i.fc, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !47
  %i.ff = call nsz float @llvm.fabs.f32(float %i.fe)
  %i.fg = fcmp nsz ogt float %i.ff, 3.276800e+04
  br i1 %i.fg, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !47
  %i.fj = call nsz float @llvm.fabs.f32(float %i.fi)
  %i.fk = fcmp nsz ogt float %i.fj, 3.276800e+04
  br i1 %i.fk, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !47
  %i.fn = call nsz float @llvm.fabs.f32(float %i.fm)
  %i.fo = fcmp nsz ogt float %i.fn, 3.276800e+04
  br i1 %i.fo, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !47
  %i.fr = call nsz float @llvm.fabs.f32(float %i.fq)
  %i.fs = fcmp nsz ogt float %i.fr, 3.276800e+04
  br i1 %i.fs, label %bb.aq, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !47
  %i.fv = call nsz float @llvm.fabs.f32(float %i.fu)
  %i.fw = fcmp nsz ogt float %i.fv, 3.276800e+04
  br i1 %i.fw, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !47
  %i.fz = call nsz float @llvm.fabs.f32(float %i.fy)
  %i.ga = fcmp nsz ogt float %i.fz, 3.276800e+04
  br i1 %i.ga, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !47
  %i.gd = call nsz float @llvm.fabs.f32(float %i.gc)
  %i.ge = fcmp nsz ogt float %i.gd, 3.276800e+04
  br i1 %i.ge, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !47
  %i.gh = call nsz float @llvm.fabs.f32(float %i.gg)
  %i.gi = fcmp nsz ogt float %i.gh, 3.276800e+04
  br i1 %i.gi, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !47
  %i.gl = call nsz float @llvm.fabs.f32(float %i.gk)
  %i.gm = fcmp nsz ogt float %i.gl, 3.276800e+04
  br i1 %i.gm, label %bb.aq, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.go = load float, ptr %i.gn, align 4, !tbaa !47
  %i.gp = call nsz float @llvm.fabs.f32(float %i.go)
  %i.gq = fcmp nsz ogt float %i.gp, 3.276800e+04
  br i1 %i.gq, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !47
  %i.gt = call nsz float @llvm.fabs.f32(float %i.gs)
  %i.gu = fcmp nsz ogt float %i.gt, 3.276800e+04
  br i1 %i.gu, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !47
  %i.gx = call nsz float @llvm.fabs.f32(float %i.gw)
  %i.gy = fcmp nsz ogt float %i.gx, 3.276800e+04
  br i1 %i.gy, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !47
  %i.hb = call nsz float @llvm.fabs.f32(float %i.ha)
  %i.hc = fcmp nsz ogt float %i.hb, 3.276800e+04
  br i1 %i.hc, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.he = load float, ptr %i.hd, align 4, !tbaa !47
  %i.hf = call nsz float @llvm.fabs.f32(float %i.he)
  %i.hg = fcmp nsz ogt float %i.hf, 3.276800e+04
  br i1 %i.hg, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !47
  %i.hj = call nsz float @llvm.fabs.f32(float %i.hi)
  %i.hk = fcmp nsz ogt float %i.hj, 3.276800e+04
  br i1 %i.hk, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !47
  %i.hn = call nsz float @llvm.fabs.f32(float %i.hm)
  %i.ho = fcmp nsz ogt float %i.hn, 3.276800e+04
  br i1 %i.ho, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !47
  %i.hr = call nsz float @llvm.fabs.f32(float %i.hq)
  %i.hs = fcmp nsz ogt float %i.hr, 3.276800e+04
  br i1 %i.hs, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !47
  %i.hv = call nsz float @llvm.fabs.f32(float %i.hu)
  %i.hw = fcmp nsz ogt float %i.hv, 3.276800e+04
  br i1 %i.hw, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !47
  %i.hz = call nsz float @llvm.fabs.f32(float %i.hy)
  %i.ia = fcmp nsz ogt float %i.hz, 3.276800e+04
  br i1 %i.ia, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !47
  %i.id = call nsz float @llvm.fabs.f32(float %i.ic)
  %i.ie = fcmp nsz ogt float %i.id, 3.276800e+04
  br i1 %i.ie, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ig = load float, ptr %i.if, align 4, !tbaa !47
  %i.ih = call nsz float @llvm.fabs.f32(float %i.ig)
  %i.ii = fcmp nsz ogt float %i.ih, 3.276800e+04
  br i1 %i.ii, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !47
  %i.il = call nsz float @llvm.fabs.f32(float %i.ik)
  %i.im = fcmp nsz ogt float %i.il, 3.276800e+04
  br i1 %i.im, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.io = load float, ptr %i.in, align 4, !tbaa !47
  %i.ip = call nsz float @llvm.fabs.f32(float %i.io)
  %i.iq = fcmp nsz ogt float %i.ip, 3.276800e+04
  br i1 %i.iq, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.is = load float, ptr %i.ir, align 4, !tbaa !47
  %i.it = call nsz float @llvm.fabs.f32(float %i.is)
  %i.iu = fcmp nsz ogt float %i.it, 3.276800e+04
  br i1 %i.iu, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !47
  %i.ix = call nsz float @llvm.fabs.f32(float %i.iw)
  %i.iy = fcmp nsz ogt float %i.ix, 3.276800e+04
  br i1 %i.iy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !47
  %i.jb = call nsz float @llvm.fabs.f32(float %i.ja)
  %i.jc = fcmp nsz ogt float %i.jb, 3.276800e+04
  br i1 %i.jc, label %bb.aq, label %6

6:                                                ; preds = %bb.ap
  br label %bb.aq

bb.aq:                                            ; preds = %6, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.034 = phi i32 [ 1, %bb.c ], [ 0, %6 ], [ 1, %bb.d ], [ 1, %bb.ap ], [ 1, %bb.e ], [ 1, %bb.ab ], [ 1, %bb.f ], [ 1, %bb.ao ], [ 1, %bb.g ], [ 1, %bb.x ], [ 1, %bb.h ], [ 1, %bb.an ], [ 1, %bb.i ], [ 1, %bb.af ], [ 1, %bb.j ], [ 1, %bb.am ], [ 1, %bb.k ], [ 1, %bb.y ], [ 1, %bb.l ], [ 1, %bb.al ], [ 1, %bb.m ], [ 1, %bb.ad ], [ 1, %bb.n ], [ 1, %bb.ak ], [ 1, %bb.o ], [ 1, %bb.z ], [ 1, %bb.p ], [ 1, %bb.aj ], [ 1, %bb.q ], [ 1, %bb.ae ], [ 1, %bb.r ], [ 1, %bb.ai ], [ 1, %bb.s ], [ 1, %bb.aa ], [ 1, %bb.t ], [ 1, %bb.ah ], [ 1, %bb.u ], [ 1, %bb.ac ], [ 1, %bb.v ], [ 1, %bb.ag ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.034
}

declare void @ff_clear_fixed_vector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @lsf2lsp_for_mode12k2(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 3) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = zext nneg i32 %4 to i64                  ; 5 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.d, align 2              ; 2 uses
  %i.i = load i32, ptr %i.g, align 2              ; 3 uses
  %.sroa.6.sroa.5.0.extract.shift = lshr i32 %i.i, 16
  %.sroa.6.sroa.0.0.extract.trunc = trunc i32 %i.i to i16
  %.sroa.6.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.6.sroa.5.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.b
  %i.m = load i32, ptr %i.l, align 2              ; 2 uses
  %.sroa.9.sroa.0.0.extract.trunc = trunc i32 %i.m to i16 ; 2 uses
  %.sroa.9.sroa.7.0.extract.shift = lshr i32 %i.m, 16
  %.sroa.9.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.9.sroa.7.0.extract.shift to i16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.b
  %i.q = load i32, ptr %i.p, align 2              ; 3 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i32 %i.q to i16
  %.sroa.16.sroa.5.0.extract.shift = lshr i32 %i.q, 16
  %.sroa.16.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.16.sroa.5.0.extract.shift to i16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.b
  %i.u = load i32, ptr %i.t, align 2              ; 2 uses
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.v = sub i16 0, %.sroa.9.sroa.0.0.extract.trunc
  %i.w = sub i16 0, %.sroa.9.sroa.7.0.extract.trunc
  %.sroa.9.sroa.7.0 = select i1 %.not, i16 %.sroa.9.sroa.7.0.extract.trunc, i16 %i.w ; 2 uses
  %.sroa.9.sroa.0.0 = select i1 %.not, i16 %.sroa.9.sroa.0.0.extract.trunc, i16 %i.v ; 2 uses
  %.not18 = icmp eq i32 %6, 0                     ; 2 uses
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.h, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.i, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.9.sroa.7.0.insert.ext = zext i16 %.sroa.9.sroa.7.0 to i32
  %.sroa.9.sroa.7.0.insert.shift = shl nuw i32 %.sroa.9.sroa.7.0.insert.ext, 16
  %.sroa.9.sroa.0.0.insert.ext = zext i16 %.sroa.9.sroa.0.0 to i32
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.7.0.insert.shift, %.sroa.9.sroa.0.0.insert.ext
  store i32 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.q, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.u, ptr %.sroa.19.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.z = bitcast <2 x i32> %i.y to <4 x i16>
  %i.aa = insertelement <4 x i16> %i.z, i16 %.sroa.6.sroa.0.0.extract.trunc, i64 2
  %i.ab = insertelement <4 x i16> %i.aa, i16 %.sroa.6.sroa.5.0.extract.trunc, i64 3
  %i.ac = sitofp <4 x i16> %i.ab to <4 x double>
  %i.ad = load <4 x float>, ptr %2, align 4, !tbaa !47
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fmul nsz <4 x double> %i.ae, splat (double 1.250000e-04)
  %i.ag = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ac, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.af)
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  store <4 x float> %i.ah, ptr %i.a, align 16, !tbaa !47
  %i.ai = insertelement <4 x i16> poison, i16 %.sroa.9.sroa.0.0, i64 0
  %i.aj = insertelement <4 x i16> %i.ai, i16 %.sroa.9.sroa.7.0, i64 1
  %i.ak = insertelement <4 x i16> %i.aj, i16 %.sroa.16.sroa.0.0.extract.trunc, i64 2
  %i.al = insertelement <4 x i16> %i.ak, i16 %.sroa.16.sroa.5.0.extract.trunc, i64 3
  %i.am = sitofp <4 x i16> %i.al to <4 x double>
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load <4 x float>, ptr %i.an, align 4, !tbaa !47
  %i.aq = fpext <4 x float> %i.ap to <4 x double>
  %i.ar = fmul nsz <4 x double> %i.aq, splat (double 1.250000e-04)
  %i.as = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.am, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.ar)
  %i.at = fptrunc <4 x double> %i.as to <4 x float>
  store <4 x float> %i.at, ptr %i.ao, align 16, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = bitcast i32 %i.u to <2 x i16>
  %i.ax = sitofp <2 x i16> %i.aw to <2 x double>
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !47
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fmul nsz <2 x double> %i.az, splat (double 1.250000e-04)
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double f0x3F00000000000000), <2 x double> %i.ba)
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  store <2 x float> %i.bc, ptr %i.av, align 16, !tbaa !47
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.a, double noundef 6.256100e-03, i32 noundef 10) #7
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !68
  call void %i.bg(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void %i.bh(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void %i.bj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !68
  call void %i.bl(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @ff_acelp_lsf2lspd(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @ff_set_min_dist_lsf(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_lsf2lspd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_decode_pitch_lag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_decode_10_pulses_35bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_celp_circ_addf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_scale_vector_to_given_sum_of_squares(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @ff_tilt_compensation(ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_adaptive_gain_control(ptr noundef, ptr noundef, float noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
end_hunk_0
