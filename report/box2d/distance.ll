Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/distance?download=true
inline.NumInlined: 184
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@b2TimeOfImpact:bb.a
  %i.ax = fsub float 1.000000e+00, %.0128
  %i.ay = insertelement <2 x float> poison, float %.0128, i64 0 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fmul <2 x float> %.sroa.9353.0.copyload, %i.az
  %i.bb = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x float> %i.ar, %i.bb
  %i.bd = fmul <2 x float> %.sroa.9340.0.copyload, %i.az
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0 ; 2 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x float> %.sroa.6350.0.copyload, %i.bf
  %i.bh = fadd <2 x float> %i.ba, %i.bg
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bj = fmul <4 x float> %i.ao, %i.bi
  %i.bk = fadd <4 x float> %i.bc, %i.bj           ; 3 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl
  %i.bn = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = fadd <2 x float> %i.bo, %i.bm           ; 2 uses
  %i.bq = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bp)
  %i.br = fcmp ogt <2 x float> %i.bp, zeroinitializer
  %i.bs = fdiv <2 x float> splat (float 1.000000e+00), %i.bq
  %i.bt = select <2 x i1> %i.br, <2 x float> %i.bs, <2 x float> zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bv = fmul <4 x float> %i.bk, %i.bu           ; 18 uses
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bx = fmul <2 x float> %.sroa.0347.0.copyload, %i.bw
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ca = fmul <2 x float> %.sroa.0347.0.copyload, %i.bz ; 2 uses
  %i.cb = fsub <2 x float> %i.ca, %i.by
  %i.cc = fadd <2 x float> %i.ca, %i.by
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ce = fsub <2 x float> %i.bh, %i.cd           ; 13 uses
  %i.cf = fmul <2 x float> %.sroa.6.0.copyload, %i.bf
  %i.cg = fadd <2 x float> %i.bd, %i.cf
  %i.ch = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ci = fmul <2 x float> %.sroa.0335.0.copyload, %i.ch
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cl = fmul <2 x float> %.sroa.0335.0.copyload, %i.ck ; 2 uses
  %i.cm = fsub <2 x float> %i.cl, %i.cj
  %i.cn = fadd <2 x float> %i.cl, %i.cj
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.cp = fsub <2 x float> %i.cg, %i.co           ; 7 uses
  %i.cq = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 10 uses
  %i.cr = fmul <2 x float> %i.bz, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.bw, %i.cq
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = fadd <2 x float> %i.cr, %i.ct
  %i.cv = fsub <2 x float> %i.cr, %i.ct
  %i.cw = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.cx = fsub <2 x float> %i.cp, %i.ce           ; 2 uses
  %i.cy = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 17 uses
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cy, %i.cz           ; 2 uses
  %i.db = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.db, %i.dc           ; 2 uses
  %i.de = fadd <2 x float> %i.da, %i.dd
  %i.df = fsub <2 x float> %i.da, %i.dd
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.dg, ptr %i.ac, align 4, !tbaa !10
  store <2 x float> %i.cw, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %4, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  %i.dh = load <2 x float>, ptr %i.ad, align 8    ; 7 uses
  %i.di = load <2 x float>, ptr %4, align 8       ; 6 uses
  %i.dj = load <2 x float>, ptr %i.ae, align 8    ; 6 uses
  %i.dk = add nuw nsw i32 %.0132, 1               ; 2 uses
  %i.dl = load float, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.dm = fcmp ugt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 4, !tbaa !79
  br label %.thread384

bb.d:                                             ; preds = %bb.b
  %i.dn = fcmp ugt float %i.dl, %i.ag
  br i1 %i.dn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.extract.i.le627 = extractelement <2 x float> %i.dh, i64 0
  %i.do = extractelement <4 x float> %i.bv, i64 0
  %.sroa.0.4.vec.extract.i.le616 = extractelement <2 x float> %i.dh, i64 1
  %i.dp = extractelement <4 x float> %i.bv, i64 1
  %i.dq = fmul <2 x float> %i.dh, %i.cy           ; 2 uses
  %i.dr = fmul float %.sroa.0.0.vec.extract.i.le627, %i.dp
  %i.ds = fmul float %.sroa.0.4.vec.extract.i.le616, %i.do
  store i32 3, ptr %0, align 4, !tbaa !79
  %i.dt = load float, ptr %i.l, align 4, !tbaa !14
  %i.du = load float, ptr %i.n, align 4, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.010.0.vec.insert.i.le = fsub <2 x float> %i.dq, %i.dw
  %i.dx = fadd float %i.dr, %i.ds
  %.sroa.010.4.vec.insert.i.le577 = insertelement <2 x float> %.sroa.010.0.vec.insert.i.le, float %i.dx, i64 1 ; 3 uses
  %i.dy = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.cy           ; 2 uses
  %i.ea = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ec = fmul <2 x float> %i.ea, %i.eb           ; 2 uses
  %i.ed = fsub <2 x float> %i.dz, %i.ec
  %i.ee = fadd <2 x float> %i.dz, %i.ec
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 3>
  %i.eg = fadd <2 x float> %i.ef, %i.ce
  %i.eh = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x float> %i.eh, %i.cy           ; 2 uses
  %i.ej = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = fmul <2 x float> %i.ej, %i.eb           ; 2 uses
  %i.el = fsub <2 x float> %i.ei, %i.ek
  %i.em = fadd <2 x float> %i.ei, %i.ek
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  %i.eo = fadd <2 x float> %i.en, %i.ce
  %i.ep = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %.sroa.010.4.vec.insert.i.le577, %i.eq
  %i.es = fadd <2 x float> %i.eg, %i.er
  %i.et = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %.sroa.010.4.vec.insert.i.le577, %i.eu
  %i.ew = fsub <2 x float> %i.eo, %i.ev
  %i.ex = fmul <2 x float> %i.es, splat (float 5.000000e-01)
  %i.ey = fmul <2 x float> %i.ew, splat (float 5.000000e-01)
  %i.ez = fadd <2 x float> %i.ex, %i.ey
  store <2 x float> %i.ez, ptr %i.dv, align 4, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.010.4.vec.insert.i.le577, ptr %i.fa, align 4, !tbaa !10
  br label %.thread384

bb.f:                                             ; preds = %bb.d
  %i.fb = load i64, ptr %2, align 8               ; 5 uses
  %.sroa.266.0.extract.shift.i = lshr i64 %i.fb, 16 ; 4 uses
  %.sroa.670.0.extract.shift.i = lshr i64 %i.fb, 24 ; 2 uses
  %.sroa.872.0.extract.shift.i = lshr i64 %i.fb, 40 ; 3 uses
  %.sroa.11.0.extract.shift.i = lshr i64 %i.fb, 48
  %i.fc = and i64 %i.fb, 65535
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fe = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fe
  %.sroa.035.0.copyload.i = load <2 x float>, ptr %i.ff, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.fg = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fg
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.fh, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.fi = shufflevector <2 x float> %.sroa.035.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.cy, %i.fi           ; 2 uses
  %i.fk = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = shufflevector <2 x float> %.sroa.035.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fmul <2 x float> %i.fk, %i.fl           ; 2 uses
  %i.fn = fsub <2 x float> %i.fj, %i.fm
  %i.fo = fadd <2 x float> %i.fj, %i.fm
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 3>
  %i.fq = fadd <2 x float> %i.ce, %i.fp
  %i.fr = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.cq, %i.fr           ; 2 uses
  %i.ft = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.fu = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = fmul <2 x float> %i.ft, %i.fu           ; 2 uses
  %i.fw = fsub <2 x float> %i.fs, %i.fv
  %i.fx = fadd <2 x float> %i.fs, %i.fv
  %i.fy = shufflevector <2 x float> %i.fw, <2 x float> %i.fx, <2 x i32> <i32 0, i32 3>
  %i.fz = fadd <2 x float> %i.cp, %i.fy
  %i.ga = fsub <2 x float> %i.fz, %i.fq           ; 3 uses
  %i.gb = fmul <2 x float> %i.ga, %i.ga
  %i.gc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gb) ; 2 uses
  %i.gd = fcmp ogt float %i.gc, f0x057A0000
  br i1 %i.gd, label %bb.h, label %b2MakeSeparationFunction.exit

bb.h:                                             ; preds = %bb.g
  %sqrt.i.i184 = tail call nnan float @llvm.sqrt.f32(float %i.gc)
  %i.ge = fdiv nnan float 1.000000e+00, %sqrt.i.i184
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.ga, %i.gg
  br label %b2MakeSeparationFunction.exit

bb.i:                                             ; preds = %bb.f
  %i.gi = xor i64 %.sroa.266.0.extract.shift.i, %.sroa.670.0.extract.shift.i
  %i.gj = and i64 %i.gi, 255
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.gl = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gl
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %i.gm, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.gn = and i64 %.sroa.11.0.extract.shift.i, 255
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gn
  %.sroa.026.0.copyload.i = load <2 x float>, ptr %i.go, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.gp = fsub <2 x float> %.sroa.026.0.copyload.i, %.sroa.028.0.copyload.i ; 4 uses
  %i.gq = fmul <2 x float> %i.gp, %i.gp
  %i.gr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gq) ; 2 uses
  %i.gs = fcmp ogt float %i.gr, f0x057A0000
  br i1 %i.gs, label %bb.k, label %b2Normalize.exit114.i

bb.k:                                             ; preds = %bb.j
  %sqrt.i111.i = tail call nnan float @llvm.sqrt.f32(float %i.gr)
  %i.gt = fdiv nnan float 1.000000e+00, %sqrt.i111.i
  %5 = fneg <2 x float> %i.gp
  %6 = shufflevector <2 x float> %i.gp, <2 x float> %5, <2 x i32> <i32 1, i32 2>
  %.sroa.012.0.vec.insert.i112.i = insertelement <2 x float> poison, float %i.gt, i64 0
  %7 = shufflevector <2 x float> %.sroa.012.0.vec.insert.i112.i, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %6, %7
  br label %b2Normalize.exit114.i

b2Normalize.exit114.i:                            ; preds = %bb.k, %bb.j
  %.sroa.012.0.i110.i = phi <2 x float> [ %8, %bb.k ], [ zeroinitializer, %bb.j ] ; 4 uses
  %i.gu = fadd <2 x float> %.sroa.028.0.copyload.i, %.sroa.026.0.copyload.i
  %i.gv = fmul <2 x float> %i.gu, splat (float 5.000000e-01) ; 4 uses
  %i.gw = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gw
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.gx, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.gy = shufflevector <2 x float> %.sroa.012.0.i110.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x float> %i.cq, %i.gy           ; 2 uses
  %i.ha = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.hb = shufflevector <2 x float> %.sroa.012.0.i110.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x float> %i.ha, %i.hb           ; 2 uses
  %i.hd = fsub <2 x float> %i.gz, %i.hc
  %i.he = fadd <2 x float> %i.gz, %i.hc
  %i.hf = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <2 x i32> <i32 0, i32 3>
  %i.hg = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = fmul <2 x float> %i.cq, %i.hg           ; 2 uses
  %i.hi = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hj = fmul <2 x float> %i.ha, %i.hi           ; 2 uses
  %i.hk = fsub <2 x float> %i.hh, %i.hj
  %i.hl = fadd <2 x float> %i.hh, %i.hj
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.hn = fadd <2 x float> %i.cp, %i.hm
  %i.ho = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fmul <2 x float> %i.cy, %i.ho           ; 2 uses
  %i.hq = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = fmul <2 x float> %i.hq, %i.hr           ; 2 uses
  %i.ht = fsub <2 x float> %i.hp, %i.hs
  %i.hu = fadd <2 x float> %i.hp, %i.hs
  %i.hv = shufflevector <2 x float> %i.ht, <2 x float> %i.hu, <2 x i32> <i32 0, i32 3>
  %i.hw = fadd <2 x float> %i.ce, %i.hv
  %i.hx = fsub <2 x float> %i.hw, %i.hn
  %i.hy = fmul <2 x float> %i.hf, %i.hx
  %i.hz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hy)
  %i.ia = fcmp olt float %i.hz, 0.000000e+00
  br i1 %i.ia, label %bb.l, label %b2MakeSeparationFunction.exit

bb.l:                                             ; preds = %b2Normalize.exit114.i
  %i.ib = fneg <2 x float> %.sroa.012.0.i110.i
  br label %b2MakeSeparationFunction.exit

bb.m:                                             ; preds = %bb.i
  %i.ic = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ic
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.id, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.ie = and i64 %.sroa.670.0.extract.shift.i, 255
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ie
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.if, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.ig = fsub <2 x float> %.sroa.010.0.copyload.i, %.sroa.012.0.copyload.i ; 4 uses
  %i.ih = fmul <2 x float> %i.ig, %i.ig
  %i.ii = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ih) ; 2 uses
  %i.ij = fcmp ogt float %i.ii, f0x057A0000
  br i1 %i.ij, label %bb.n, label %b2Normalize.exit161.i

bb.n:                                             ; preds = %bb.m
  %sqrt.i158.i = tail call nnan float @llvm.sqrt.f32(float %i.ii)
  %i.ik = fdiv nnan float 1.000000e+00, %sqrt.i158.i
  %9 = fneg <2 x float> %i.ig
  %10 = shufflevector <2 x float> %i.ig, <2 x float> %9, <2 x i32> <i32 1, i32 2>
  %.sroa.012.0.vec.insert.i159.i = insertelement <2 x float> poison, float %i.ik, i64 0
  %11 = shufflevector <2 x float> %.sroa.012.0.vec.insert.i159.i, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %10, %11
  br label %b2Normalize.exit161.i

b2Normalize.exit161.i:                            ; preds = %bb.n, %bb.m
  %.sroa.012.0.i157.i = phi <2 x float> [ %12, %bb.n ], [ zeroinitializer, %bb.m ] ; 4 uses
  %i.il = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.im = fmul <2 x float> %i.il, splat (float 5.000000e-01) ; 4 uses
  %i.in = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.in
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.io, align 4, !tbaa !10, !noalias !80 ; 2 uses
  %i.ip = shufflevector <2 x float> %.sroa.012.0.i157.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = fmul <2 x float> %i.cy, %i.ip           ; 2 uses
  %i.ir = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.is = shufflevector <2 x float> %.sroa.012.0.i157.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.it = fmul <2 x float> %i.ir, %i.is           ; 2 uses
  %i.iu = fsub <2 x float> %i.iq, %i.it
  %i.iv = fadd <2 x float> %i.iq, %i.it
  %i.iw = shufflevector <2 x float> %i.iu, <2 x float> %i.iv, <2 x i32> <i32 0, i32 3>
  %i.ix = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = fmul <2 x float> %i.cy, %i.ix           ; 2 uses
  %i.iz = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ja = fmul <2 x float> %i.ir, %i.iz           ; 2 uses
  %i.jb = fsub <2 x float> %i.iy, %i.ja
  %i.jc = fadd <2 x float> %i.iy, %i.ja
  %i.jd = shufflevector <2 x float> %i.jb, <2 x float> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.je = fadd <2 x float> %i.ce, %i.jd
  %i.jf = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.cq, %i.jf           ; 2 uses
  %i.jh = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ji = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.jh, %i.ji           ; 2 uses
  %i.jk = fsub <2 x float> %i.jg, %i.jj
  %i.jl = fadd <2 x float> %i.jg, %i.jj
  %i.jm = shufflevector <2 x float> %i.jk, <2 x float> %i.jl, <2 x i32> <i32 0, i32 3>
  %i.jn = fadd <2 x float> %i.cp, %i.jm
  %i.jo = fsub <2 x float> %i.jn, %i.je
  %i.jp = fmul <2 x float> %i.iw, %i.jo
  %i.jq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jp)
  %i.jr = fcmp olt float %i.jq, 0.000000e+00
  br i1 %i.jr, label %bb.o, label %b2MakeSeparationFunction.exit

bb.o:                                             ; preds = %b2Normalize.exit161.i
  %i.js = fneg <2 x float> %.sroa.012.0.i157.i
  br label %b2MakeSeparationFunction.exit

b2MakeSeparationFunction.exit:                    ; preds = %bb.g, %bb.h, %b2Normalize.exit114.i, %bb.l, %b2Normalize.exit161.i, %bb.o
  %.sroa.88.0 = phi i32 [ 1, %b2Normalize.exit161.i ], [ 2, %bb.l ], [ 2, %b2Normalize.exit114.i ], [ 1, %bb.o ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.sroa.73.0 = phi <2 x float> [ %.sroa.012.0.i157.i, %b2Normalize.exit161.i ], [ %i.ib, %bb.l ], [ %.sroa.012.0.i110.i, %b2Normalize.exit114.i ], [ %i.js, %bb.o ], [ %i.gh, %bb.h ], [ zeroinitializer, %bb.g ] ; 13 uses
  %.sroa.60.0 = phi <2 x float> [ %i.im, %b2Normalize.exit161.i ], [ %i.gv, %bb.l ], [ %i.gv, %b2Normalize.exit114.i ], [ %i.im, %bb.o ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ] ; 7 uses
  %.sroa.0.0.vec.extract.i188.i = extractelement <2 x float> %.sroa.73.0, i64 0
  %.sroa.0.4.vec.extract.i190.i = extractelement <2 x float> %.sroa.73.0, i64 1 ; 2 uses
  %i.jt = fneg float %.sroa.0.4.vec.extract.i190.i
  %i.ju = shufflevector <2 x float> %.sroa.73.0, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.jv = fmul <2 x float> %i.cq, %i.ju           ; 2 uses
  %i.jw = shufflevector <2 x float> %.sroa.73.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jx = fmul <2 x float> %i.cq, %i.jw
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jz = fsub <2 x float> %i.jv, %i.jy
  %i.ka = fadd <2 x float> %i.jv, %i.jy
  %i.kb = shufflevector <2 x float> %i.jz, <2 x float> %i.ka, <2 x i32> <i32 0, i32 3>
  %i.kc = fmul <2 x float> %i.cy, %i.ju           ; 2 uses
  %i.kd = fmul <2 x float> %i.cy, %i.jw
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kf = fsub <2 x float> %i.kc, %i.ke
  %i.kg = fadd <2 x float> %i.kc, %i.ke
  %i.kh = shufflevector <2 x float> %i.kf, <2 x float> %i.kg, <2 x i32> <i32 0, i32 3>
  %i.ki = shufflevector <2 x float> %.sroa.60.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 6 uses
  %i.kj = fmul <2 x float> %i.ch, %i.ki           ; 2 uses
  %i.kk = fmul <2 x float> %i.ck, %.sroa.60.0     ; 2 uses
  %i.kl = fsub <2 x float> %i.kk, %i.kj
  %i.km = fadd <2 x float> %i.kk, %i.kj
  %i.kn = shufflevector <2 x float> %i.kl, <2 x float> %i.km, <2 x i32> <i32 0, i32 3>
  %i.ko = fadd <2 x float> %i.cp, %i.kn
  %i.kp = fmul <2 x float> %i.bw, %i.ki           ; 2 uses
  %i.kq = fmul <2 x float> %i.bz, %.sroa.60.0     ; 2 uses
  %i.kr = fsub <2 x float> %i.kq, %i.kp
  %i.ks = fadd <2 x float> %i.kq, %i.kp
  %i.kt = shufflevector <2 x float> %i.kr, <2 x float> %i.ks, <2 x i32> <i32 0, i32 3>
  %i.ku = fadd <2 x float> %i.ce, %i.kt
  %i.kv = insertelement <2 x float> %i.ju, float %i.jt, i64 0
  br label %bb.p

bb.p:                                             ; preds = %select.unfold, %b2MakeSeparationFunction.exit
  %.0122 = phi float [ %i.b, %b2MakeSeparationFunction.exit ], [ %.2124.ph, %select.unfold ] ; 5 uses
  %.0119 = phi i32 [ 0, %b2MakeSeparationFunction.exit ], [ %i.aat, %select.unfold ]
  %i.kw = fsub float 1.000000e+00, %.0122
  %i.kx = insertelement <2 x float> poison, float %.0122, i64 0 ; 2 uses
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kz = fmul <2 x float> %.sroa.9353.0.copyload, %i.ky
  %i.la = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lb = fmul <4 x float> %i.ap, %i.la
  %i.lc = fmul <2 x float> %.sroa.9340.0.copyload, %i.ky
  %i.ld = insertelement <2 x float> poison, float %i.kw, i64 0 ; 2 uses
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lf = fmul <2 x float> %.sroa.6350.0.copyload, %i.le
  %i.lg = fadd <2 x float> %i.kz, %i.lf
  %i.lh = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> zeroinitializer
  %i.li = fmul <4 x float> %i.av, %i.lh
  %i.lj = fadd <4 x float> %i.lb, %i.li           ; 3 uses
  %i.lk = shufflevector <4 x float> %i.lj, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ll = fmul <2 x float> %i.lk, %i.lk
  %i.lm = shufflevector <4 x float> %i.lj, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ln = fmul <2 x float> %i.lm, %i.lm
  %i.lo = fadd <2 x float> %i.ln, %i.ll           ; 2 uses
  %i.lp = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lo)
  %i.lq = fcmp ogt <2 x float> %i.lo, zeroinitializer
  %i.lr = fdiv <2 x float> splat (float 1.000000e+00), %i.lp
  %i.ls = select <2 x i1> %i.lq, <2 x float> %i.lr, <2 x float> zeroinitializer
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.lu = fmul <4 x float> %i.lj, %i.lt           ; 9 uses
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.lw = fmul <2 x float> %.sroa.0347.0.copyload, %i.lv
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ly = shufflevector <4 x float> %i.lu, <4 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.lz = fmul <2 x float> %.sroa.0347.0.copyload, %i.ly ; 2 uses
  %i.ma = fsub <2 x float> %i.lz, %i.lx
  %i.mb = fadd <2 x float> %i.lz, %i.lx
  %i.mc = shufflevector <2 x float> %i.ma, <2 x float> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.md = fsub <2 x float> %i.lg, %i.mc           ; 3 uses
  %i.me = fmul <2 x float> %.sroa.6.0.copyload, %i.le
  %i.mf = fadd <2 x float> %i.lc, %i.me
  %i.mg = shufflevector <4 x float> %i.lu, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 4 uses
  %i.mh = fmul <2 x float> %.sroa.0335.0.copyload, %i.mg
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mj = shufflevector <4 x float> %i.lu, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.mk = fmul <2 x float> %.sroa.0335.0.copyload, %i.mj ; 2 uses
  %i.ml = fsub <2 x float> %i.mk, %i.mi
  %i.mm = fadd <2 x float> %i.mk, %i.mi
  %i.mn = shufflevector <2 x float> %i.ml, <2 x float> %i.mm, <2 x i32> <i32 0, i32 3>
  %i.mo = fsub <2 x float> %i.mf, %i.mn           ; 3 uses
  switch i32 %.sroa.88.0, label %.unreachabledefault [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.mp = fmul <2 x float> %.sroa.73.0, %i.ly     ; 2 uses
  %i.mq = fmul <2 x float> %.sroa.73.0, %i.lv
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ms = fadd <2 x float> %i.mp, %i.mr
  %i.mt = fsub <2 x float> %i.mp, %i.mr
  %i.mu = shufflevector <2 x float> %i.ms, <2 x float> %i.mt, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.mv = fmul <2 x float> %i.mg, %i.kv
  %i.mw = fmul <2 x float> %.sroa.73.0, %i.mj
  %i.mx = fsub <2 x float> %i.mv, %i.mw           ; 4 uses
  %i.my = load i32, ptr %i.ah, align 4, !tbaa !13 ; 3 uses
  %i.mz = icmp sgt i32 %i.my, 1
  br i1 %i.mz, label %.lr.ph.preheader.i.i, label %b2FindSupport.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.na = load <2 x float>, ptr %1, align 4
  %i.nb = fmul <2 x float> %i.mu, %i.na           ; 2 uses
  %shift917 = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop918 = fadd <2 x float> %i.nb, %shift917
  %i.nc = extractelement <2 x float> %foldExtExtBinop918, i64 0 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.my to i64
  %i.nd = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter1005 = and i64 %i.nd, 1
  %i.ne = icmp eq i32 %i.my, 2
  br i1 %i.ne, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter1009 = and i64 %i.nd, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %.01322.i.i = phi float [ %i.nc, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.01421.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %.115.i.i.1, %.lr.ph.i.i ]
  %niter1010 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter1010.next.1, %.lr.ph.i.i ]
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ng = load <2 x float>, ptr %i.nf, align 4
  %i.nh = fmul <2 x float> %i.mu, %i.ng
  %i.ni = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nh) ; 2 uses
  %i.nj = fcmp ogt float %i.ni, %.01322.i.i       ; 2 uses
  %i.nk = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.115.i.i = select i1 %i.nj, i32 %i.nk, i32 %.01421.i.i
  %.1.i.i = select i1 %i.nj, float %i.ni, float %.01322.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.nm = load <2 x float>, ptr %i.nl, align 4
  %i.nn = fmul <2 x float> %i.mu, %i.nm
  %i.no = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nn) ; 2 uses
  %i.np = fcmp ogt float %i.no, %.1.i.i           ; 2 uses
  %i.nq = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %.115.i.i.1 = select i1 %i.np, i32 %i.nq, i32 %.115.i.i ; 3 uses
  %.1.i.i.1 = select i1 %i.np, float %i.no, float %.1.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter1010.next.1 = add nuw i64 %niter1010, 2   ; 2 uses
  %niter1010.ncmp.1 = icmp eq i64 %niter1010.next.1, %unroll_iter1009
  br i1 %niter1010.ncmp.1, label %b2FindSupport.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

b2FindSupport.exit.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i
  %lcmp.mod1006.not = icmp eq i64 %xtraiter1005, 0
  br i1 %lcmp.mod1006.not, label %b2FindSupport.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %b2FindSupport.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i.i.epil.init = phi float [ %i.nc, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ]
  %.01421.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.115.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1008 = trunc i64 %i.nd to i1
  tail call void @llvm.assume(i1 %lcmp.mod1008)
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.ns = load <2 x float>, ptr %i.nr, align 4
end_hunk_0
