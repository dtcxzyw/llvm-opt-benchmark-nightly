inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@g728_decode_frame:bb.a
  %i.fh = call nsz float @llvm.fmuladd.f32(float %i.ff, float 7.500000e-01, float %i.fg) ; 2 uses
  store float %i.fh, ptr %i.di, align 4, !tbaa !33
  %i.fi = load float, ptr %i.dk, align 4, !tbaa !33
  %i.fj = fadd nsz float %i.fh, %i.fi
  store float %i.fj, ptr %i.dl, align 4, !tbaa !33
  %i.fk = load float, ptr %i.dm, align 8, !tbaa !33
  %i.fl = load float, ptr %i.dn, align 8, !tbaa !33
  %i.fm = call nsz float @llvm.fmuladd.f32(float %i.fk, float 7.500000e-01, float %i.fl) ; 2 uses
  store float %i.fm, ptr %i.dm, align 8, !tbaa !33
  %i.fn = load float, ptr %i.do, align 8, !tbaa !33
  %i.fo = fadd nsz float %i.fm, %i.fn
  store float %i.fo, ptr %i.dp, align 16, !tbaa !33
  %i.fp = load float, ptr %i.ag, align 8, !tbaa !33
  %i.fq = fmul nsz float %i.fp, f0x3F808000       ; 2 uses
  store float %i.fq, ptr %i.ag, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.fr = load float, ptr %i.bk, align 16, !tbaa !33
  %i.fs = fcmp nsz oeq float %i.fr, 0.000000e+00
  br i1 %i.fs, label %decode_frame.exit, label %.lr.ph89.i126.i

bb.g:                                             ; preds = %bb.m, %bb.d
  %.sroa.4.1 = phi i32 [ %.sroa.4.030, %bb.d ], [ %i.ii, %bb.m ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %.082161.i = phi ptr [ %i.y, %bb.d ], [ %.1.i, %bb.m ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ft = load float, ptr %.082161.i, align 4, !tbaa !33
  %i.fu = getelementptr inbounds i8, ptr %.082161.i, i64 -4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !33
  %i.fw = getelementptr inbounds i8, ptr %.082161.i, i64 -8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !33
  %i.fy = getelementptr inbounds i8, ptr %.082161.i, i64 -12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !33
  %i.ga = load <4 x float>, ptr %i.aa, align 4, !tbaa !33
  %i.gb = fneg nsz <4 x float> %i.ga              ; 4 uses
  %i.gc = extractelement <4 x float> %i.gb, i64 0
  %i.gd = fmul nsz float %i.ft, %i.gc
  %i.ge = extractelement <4 x float> %i.gb, i64 1
  %i.gf = call nsz float @llvm.fmuladd.f32(float %i.ge, float %i.fv, float %i.gd)
  %i.gg = extractelement <4 x float> %i.gb, i64 2
  %i.gh = call nsz float @llvm.fmuladd.f32(float %i.gg, float %i.fx, float %i.gf)
  %i.gi = extractelement <4 x float> %i.gb, i64 3
  %i.gj = call nsz float @llvm.fmuladd.f32(float %i.gi, float %i.fz, float %i.gh)
  %i.gk = getelementptr inbounds i8, ptr %.082161.i, i64 -16
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !33
  %i.gm = getelementptr inbounds i8, ptr %.082161.i, i64 -20
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !33
  %i.go = getelementptr inbounds i8, ptr %.082161.i, i64 -24
  %i.gp = load float, ptr %i.go, align 4, !tbaa !33
  %i.gq = getelementptr inbounds i8, ptr %.082161.i, i64 -28
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !33
  %i.gs = load <4 x float>, ptr %i.am, align 4, !tbaa !33
  %i.gt = fneg nsz <4 x float> %i.gs              ; 4 uses
  %i.gu = extractelement <4 x float> %i.gt, i64 0
  %i.gv = call nsz float @llvm.fmuladd.f32(float %i.gu, float %i.gl, float %i.gj)
  %i.gw = extractelement <4 x float> %i.gt, i64 1
  %i.gx = call nsz float @llvm.fmuladd.f32(float %i.gw, float %i.gn, float %i.gv)
  %i.gy = extractelement <4 x float> %i.gt, i64 2
  %i.gz = call nsz float @llvm.fmuladd.f32(float %i.gy, float %i.gp, float %i.gx)
  %i.ha = extractelement <4 x float> %i.gt, i64 3
  %i.hb = call nsz float @llvm.fmuladd.f32(float %i.ha, float %i.gr, float %i.gz)
  %i.hc = getelementptr inbounds i8, ptr %.082161.i, i64 -32
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !33
  %i.he = getelementptr inbounds i8, ptr %.082161.i, i64 -36
  %i.hf = load float, ptr %i.he, align 4, !tbaa !33
  %i.hg = load <2 x float>, ptr %i.an, align 4, !tbaa !33
  %i.hh = fneg nsz <2 x float> %i.hg              ; 2 uses
  %i.hi = extractelement <2 x float> %i.hh, i64 0
  %i.hj = call nsz float @llvm.fmuladd.f32(float %i.hi, float %i.hd, float %i.hb)
  %i.hk = extractelement <2 x float> %i.hh, i64 1
  %i.hl = call nsz float @llvm.fmuladd.f32(float %i.hk, float %i.hf, float %i.hj) ; 2 uses
  %i.hm = fcmp nsz ogt float %i.hl, -3.200000e+01
  %i.hn = select nsz i1 %i.hm, float %i.hl, float -3.200000e+01 ; 2 uses
  %i.ho = fcmp nsz ogt float %i.hn, 2.800000e+01
  %..i87.i = select nsz i1 %i.ho, float 2.800000e+01, float %i.hn ; 2 uses
  %i.hp = lshr i32 %.sroa.4.1, 3
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 1, !tbaa !37
  %i.ht = call i32 @llvm.bswap.i32(i32 %i.hs)
  %i.hu = and i32 %.sroa.4.1, 7
  %i.hv = shl i32 %i.ht, %i.hu
  %i.hw = lshr i32 %i.hv, 25
  %i.hx = add i32 %.sroa.4.1, 7
  %i.hy = call i32 @llvm.umin.i32(i32 %i.r, i32 %i.hx) ; 3 uses
  %i.hz = lshr i32 %i.hy, 3
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 1, !tbaa !37
  %i.id = call i32 @llvm.bswap.i32(i32 %i.ic)
  %i.ie = and i32 %i.hy, 7
  %i.if = shl i32 %i.id, %i.ie
  %i.ig = lshr i32 %i.if, 29
  %i.ih = add nuw i32 %i.hy, 3
  %i.ii = call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ih) ; 2 uses
  %i.ij = fadd nsz float %..i87.i, 3.200000e+01
  %i.ik = fmul nsz float %i.ij, 5.000000e-02
  %i.il = call nsz float @llvm.pow.f32(float 1.000000e+01, float %i.ik)
  %i.im = zext nneg i32 %i.ig to i64              ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @amptable, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !33
  %i.ip = fmul nsz float %i.io, %i.il
  %i.iq = fmul nsz float %i.ip, f0x3A000000       ; 2 uses
  %i.ir = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.is = getelementptr inbounds nuw [10 x i8], ptr @codetable, i64 %i.ir ; 2 uses
  %i.it = load <4 x i16>, ptr %i.is, align 2, !tbaa !54
  %i.iu = sitofp <4 x i16> %i.it to <4 x float>
  %i.iv = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = fmul nsz <4 x float> %i.iw, %i.iu
  store <4 x float> %i.ix, ptr %i.e, align 16, !tbaa !33
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !54
  %i.ja = sitofp i16 %i.iz to float
  %i.jb = fmul nsz float %i.iq, %i.ja
  store float %i.jb, ptr %i.ao, align 16, !tbaa !33
  %i.jc = mul nuw nsw i64 %indvars.iv.i, 5        ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.jc ; 7 uses
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.e, i32 noundef 5, i32 noundef 50) #6
  %i.je = load float, ptr %i.jd, align 4, !tbaa !33 ; 2 uses
  %i.jf = fcmp nsz ogt float %i.je, -4.095000e+03
  %i.jg = select nsz i1 %i.jf, float %i.je, float -4.095000e+03 ; 2 uses
  %i.jh = fcmp nsz ogt float %i.jg, 4.095000e+03
  %..i.i = select nsz i1 %i.jh, float 4.095000e+03, float %i.jg ; 2 uses
  store float %..i.i, ptr %i.jd, align 4, !tbaa !33
  %i.ji = fmul nsz float %..i.i, f0x39800000
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.jc ; 5 uses
  store float %i.ji, ptr %i.jj, align 4, !tbaa !33
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !33 ; 2 uses
  %i.jm = fcmp nsz ogt float %i.jl, -4.095000e+03
  %i.jn = select nsz i1 %i.jm, float %i.jl, float -4.095000e+03 ; 2 uses
  %i.jo = fcmp nsz ogt float %i.jn, 4.095000e+03
  %..i.1.i = select nsz i1 %i.jo, float 4.095000e+03, float %i.jn ; 2 uses
  store float %..i.1.i, ptr %i.jk, align 4, !tbaa !33
  %i.jp = fmul nsz float %..i.1.i, f0x39800000
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store float %i.jp, ptr %i.jq, align 4, !tbaa !33
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !33 ; 2 uses
  %i.jt = fcmp nsz ogt float %i.js, -4.095000e+03
  %i.ju = select nsz i1 %i.jt, float %i.js, float -4.095000e+03 ; 2 uses
  %i.jv = fcmp nsz ogt float %i.ju, 4.095000e+03
  %..i.2.i = select nsz i1 %i.jv, float 4.095000e+03, float %i.ju ; 2 uses
  store float %..i.2.i, ptr %i.jr, align 4, !tbaa !33
  %i.jw = fmul nsz float %..i.2.i, f0x39800000
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float %i.jw, ptr %i.jx, align 4, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 12 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !33 ; 2 uses
  %i.ka = fcmp nsz ogt float %i.jz, -4.095000e+03
  %i.kb = select nsz i1 %i.ka, float %i.jz, float -4.095000e+03 ; 2 uses
  %i.kc = fcmp nsz ogt float %i.kb, 4.095000e+03
  %..i.3.i = select nsz i1 %i.kc, float 4.095000e+03, float %i.kb ; 2 uses
  store float %..i.3.i, ptr %i.jy, align 4, !tbaa !33
  %i.kd = fmul nsz float %..i.3.i, f0x39800000
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store float %i.kd, ptr %i.ke, align 4, !tbaa !33
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !33 ; 2 uses
  %i.kh = fcmp nsz ogt float %i.kg, -4.095000e+03
  %i.ki = select nsz i1 %i.kh, float %i.kg, float -4.095000e+03 ; 2 uses
  %i.kj = fcmp nsz ogt float %i.ki, 4.095000e+03
  %..i.4.i = select nsz i1 %i.kj, float 4.095000e+03, float %i.ki ; 2 uses
  store float %..i.4.i, ptr %i.kf, align 4, !tbaa !33
  %i.kk = fmul nsz float %..i.4.i, f0x39800000
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store float %i.kk, ptr %i.kl, align 4, !tbaa !33
  %i.km = getelementptr inbounds nuw i8, ptr %.082161.i, i64 4 ; 4 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @g728_gq_db, i64 %i.im
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !33
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr @g728_y_db, i64 %i.ir
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !33
  %i.kr = fadd nsz float %i.ko, %i.kq
  %i.ks = fadd nsz float %..i87.i, %i.kr          ; 2 uses
  %i.kt = fcmp nsz olt float %i.ks, -3.200000e+01
  %i.ku = select nsz i1 %i.kt, float -3.200000e+01, float %i.ks
  store float %i.ku, ptr %i.km, align 4, !tbaa !33
  %i.kv = trunc nuw nsw i64 %indvars.iv.i to i32
  switch i32 %i.kv, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.kw = load i32, ptr %i.ac, align 8, !tbaa !48
  %.not85.i = icmp eq i32 %i.kw, 0
  br i1 %.not85.i, label %convolve.exit.i.i92.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.073.i.i = load float, ptr %i.af, align 4, !tbaa !33
  br label %.lr.ph89.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph84.i.i
  %i.kx = fneg nsz float %.168.i.i
  %i.ky = call nsz float @llvm.fmuladd.f32(float %i.kx, float %.168.i.i, float 1.000000e+00)
  %i.kz = fmul nsz float %.17487.i.i, %i.ky       ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next104.i.i, 50
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond107.not.i.i, label %compute_lpc_coefs.exit.i, label %.lr.ph89.i.i, !llvm.loop !56

.lr.ph89.i.i:                                     ; preds = %.loopexit.i.i, %bb.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %bb.i ] ; 2 uses
  %indvars.iv103.i.i = phi i64 [ %indvars.iv.next104.i.i, %.loopexit.i.i ], [ 10, %bb.i ] ; 6 uses
  %.17487.i.i = phi float [ %i.kz, %.loopexit.i.i ], [ %.073.i.i, %bb.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv103.i.i ; 4 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !33
  %i.lc = fneg nsz float %i.lb                    ; 2 uses
  %xtraiter.a = and i64 %indvars.iv103.i.i, 1
  %4 = icmp eq i64 %indvar, -9
  br i1 %4, label %.lr.ph.i.i.epil.preheader, label %.lr.ph89.i.i.new

.lr.ph89.i.i.new:                                 ; preds = %.lr.ph89.i.i
  %unroll_iter = and i64 %indvars.iv103.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph89.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph89.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.06780.i.i.epil.init = phi float [ %i.lc, %.lr.ph89.i.i ], [ %i.me, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %indvars.iv103.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.epil.init
  %i.le = load float, ptr %i.ld, align 4, !tbaa !33
  %i.lf = xor i64 %indvars.iv.i.i.epil.init, -1
  %i.lg = getelementptr [4 x i8], ptr %i.la, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !33
  %i.li = fneg nsz float %i.le
  %i.lj = call nsz float @llvm.fmuladd.f32(float %i.li, float %i.lh, float %.06780.i.i.epil.init)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa = phi float [ %i.me, %._crit_edge.i.i.unr-lcssa ], [ %i.lj, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.next104.i.i = add nuw nsw i64 %indvars.iv103.i.i, 1 ; 3 uses
  %i.lk = lshr i64 %indvars.iv.next104.i.i, 1
  %i.ll = fcmp nsz une float %.17487.i.i, 0.000000e+00
  %i.lm = fdiv nsz float %.lcssa, %.17487.i.i
  %.168.i.i = select nsz i1 %i.ll, float %i.lm, float %.lcssa ; 4 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv103.i.i ; 2 uses
  store float %.168.i.i, ptr %i.ln, align 4, !tbaa !33
  %wide.trip.count101.i.i = and i64 %i.lk, 2147483647
  %i.lo = insertelement <2 x float> poison, float %.168.i.i, i64 0
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph84.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph89.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph89.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %.06780.i.i = phi float [ %i.lc, %.lr.ph89.i.i.new ], [ %i.me, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph89.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !33
  %i.ls = xor i64 %indvars.iv.i.i, -1
  %i.lt = getelementptr [4 x i8], ptr %i.la, i64 %i.ls
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !33
  %i.lv = fneg nsz float %i.lr
  %i.lw = call nsz float @llvm.fmuladd.f32(float %i.lv, float %i.lu, float %.06780.i.i)
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !33
  %i.ma = xor i64 %indvars.iv.i.i, -2
  %i.mb = getelementptr [4 x i8], ptr %i.la, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !33
  %i.md = fneg nsz float %i.lz
  %i.me = call nsz float @llvm.fmuladd.f32(float %i.md, float %i.mc, float %i.lw) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !57

.lr.ph84.i.i:                                     ; preds = %.lr.ph84.i.i, %._crit_edge.i.i
  %indvars.iv96.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %indvars.iv.next97.i.i, %.lr.ph84.i.i ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv96.i.i ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !33 ; 2 uses
  %i.mh = xor i64 %indvars.iv96.i.i, -1
  %i.mi = getelementptr [4 x i8], ptr %i.ln, i64 %i.mh ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !33 ; 2 uses
  %i.mk = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.ml = insertelement <2 x float> %i.mk, float %i.mg, i64 1
  %i.mm = insertelement <2 x float> poison, float %i.mg, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %i.mj, i64 1
  %i.mo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.ml, <2 x float> %i.mn) ; 2 uses
  %i.mp = extractelement <2 x float> %i.mo, i64 0
  store float %i.mp, ptr %i.mf, align 4, !tbaa !33
  %i.mq = extractelement <2 x float> %i.mo, i64 1
  store float %i.mq, ptr %i.mi, align 4, !tbaa !33
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, %wide.trip.count101.i.i
  br i1 %exitcond102.not.i.i, label %.loopexit.i.i, label %.lr.ph84.i.i, !llvm.loop !58

compute_lpc_coefs.exit.i:                         ; preds = %.loopexit.i.i
  store float %i.kz, ptr %i.af, align 4, !tbaa !33
  store i32 1, ptr %i.ac, align 8, !tbaa !48
  %i.mr = load ptr, ptr %i.h, align 16, !tbaa !30
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !49
  call void %i.ms(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ad, ptr noundef nonnull @g728_facv_f, i32 noundef 64) #6, !inline_history !59
  br label %convolve.exit.i.i92.preheader.i

convolve.exit.i.i92.preheader.i:                  ; preds = %compute_lpc_coefs.exit.i, %bb.h
  %i.mt = load ptr, ptr %i.h, align 16, !tbaa !30
  %.val88.i = load ptr, ptr %i.mt, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void %.val88.i(ptr noundef nonnull %i.a, ptr noundef nonnull @g728_wnrg_r, ptr noundef nonnull %i.x, i32 noundef 48) #6, !inline_history !51
  %i.mu = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a, i32 noundef range(i32 4, 21) 4) #6
  %i.mv = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ap, i32 noundef range(i32 4, 21) 4) #6
  %i.mw = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aq, i32 noundef range(i32 4, 21) 4) #6
  %i.mx = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ar, i32 noundef range(i32 4, 21) 4) #6
  %i.my = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.as, i32 noundef range(i32 4, 21) 4) #6
  %i.mz = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.at, i32 noundef range(i32 4, 21) 4) #6
  %i.na = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.au, i32 noundef range(i32 4, 21) 4) #6
  %i.nb = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.av, i32 noundef range(i32 4, 21) 4) #6
  %i.nc = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aw, i32 noundef range(i32 4, 21) 4) #6
  %i.nd = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ax, i32 noundef range(i32 4, 21) 4) #6
  %i.ne = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ai, i32 noundef range(i32 4, 21) 4) #6
  %i.nf = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.as, i32 noundef range(i32 20, 36) 20) #6
  %i.ng = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.at, i32 noundef range(i32 20, 36) 20) #6
  %i.nh = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.au, i32 noundef range(i32 20, 36) 20) #6
  %i.ni = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.av, i32 noundef range(i32 20, 36) 20) #6
  %i.nj = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aw, i32 noundef range(i32 20, 36) 20) #6
  %i.nk = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ax, i32 noundef range(i32 20, 36) 20) #6
  %i.nl = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ai, i32 noundef range(i32 20, 36) 20) #6
  %i.nm = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ay, i32 noundef range(i32 20, 36) 20) #6
  %i.nn = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.az, i32 noundef range(i32 20, 36) 20) #6
  %i.no = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ba, i32 noundef range(i32 20, 36) 20) #6
  %i.np = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aj, i32 noundef range(i32 20, 36) 20) #6
  %i.nq = load <4 x float>, ptr %i.ah, align 4, !tbaa !33
  %i.nr = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ns = insertelement <4 x float> %i.nr, float %i.nd, i64 1
  %i.nt = insertelement <4 x float> %i.ns, float %i.nc, i64 2
  %i.nu = insertelement <4 x float> %i.nt, float %i.nb, i64 3
  %i.nv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nq, <4 x float> splat (float 7.500000e-01), <4 x float> %i.nu) ; 3 uses
  %i.nw = extractelement <4 x float> %i.nv, i64 0
  %i.nx = fadd nsz float %i.np, %i.nw
  store <4 x float> %i.nv, ptr %i.ah, align 4, !tbaa !33
  %i.ny = load <4 x float>, ptr %i.bb, align 4, !tbaa !33
  %i.nz = insertelement <4 x float> poison, float %i.na, i64 0
  %i.oa = insertelement <4 x float> %i.nz, float %i.mz, i64 1
  %i.ob = insertelement <4 x float> %i.oa, float %i.my, i64 2
  %i.oc = insertelement <4 x float> %i.ob, float %i.mx, i64 3
  %i.od = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ny, <4 x float> splat (float 7.500000e-01), <4 x float> %i.oc) ; 3 uses
  %i.oe = insertelement <4 x float> poison, float %i.no, i64 0
  %i.of = insertelement <4 x float> %i.oe, float %i.nn, i64 1
  %i.og = insertelement <4 x float> %i.of, float %i.nm, i64 2
  %i.oh = insertelement <4 x float> %i.og, float %i.nl, i64 3
  %i.oi = shufflevector <4 x float> %i.nv, <4 x float> %i.od, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.oj = fadd nsz <4 x float> %i.oh, %i.oi
  store <4 x float> %i.oj, ptr %i.ae, align 4, !tbaa !33
  store <4 x float> %i.od, ptr %i.bb, align 4, !tbaa !33
  %i.ok = load float, ptr %i.bf, align 4, !tbaa !33
  %i.ol = load <2 x float>, ptr %i.bd, align 4, !tbaa !33
  %i.om = fmul nsz float %i.nx, f0x3F808000       ; 2 uses
  %i.on = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ok, i64 2
  %i.oo = shufflevector <2 x float> %i.ol, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> %i.on, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.oq = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.or = insertelement <4 x float> %i.oq, float %i.mv, i64 1
  %i.os = insertelement <4 x float> %i.or, float %i.mu, i64 2
  %i.ot = insertelement <4 x float> %i.os, float %i.om, i64 3
  %i.ou = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.op, <4 x float> <float 7.500000e-01, float 7.500000e-01, float 7.500000e-01, float 0.000000e+00>, <4 x float> %i.ot) ; 3 uses
  %i.ov = insertelement <4 x float> poison, float %i.nk, i64 0
  %i.ow = insertelement <4 x float> %i.ov, float %i.nj, i64 1
  %i.ox = insertelement <4 x float> %i.ow, float %i.ni, i64 2
  %i.oy = insertelement <4 x float> %i.ox, float %i.nh, i64 3
  %i.oz = shufflevector <4 x float> %i.od, <4 x float> %i.ou, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.pa = fadd nsz <4 x float> %i.oy, %i.oz
  store <4 x float> %i.pa, ptr %i.bc, align 4, !tbaa !33
  %i.pb = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.nf, i64 1
  %i.pd = shufflevector <4 x float> %i.ou, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pe = fadd nsz <2 x float> %i.pc, %i.pd       ; 2 uses
  store <2 x float> %i.pe, ptr %i.be, align 4, !tbaa !33
  store <4 x float> %i.ou, ptr %i.bd, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.pf = extractelement <2 x float> %i.pe, i64 1
  %i.pg = fcmp nsz oeq float %i.pf, 0.000000e+00
  br i1 %i.pg, label %bb.j, label %.lr.ph89.i103.i

.loopexit.i121.i:                                 ; preds = %.lr.ph84.i117.i, %._crit_edge.i113.i
  %exitcond107.not.i122.i = icmp eq i64 %indvars.iv.next104.i115.i, 10
  br i1 %exitcond107.not.i122.i, label %compute_lpc_coefs.exit123.i, label %.lr.ph89.i103.i, !llvm.loop !56

.lr.ph89.i103.i:                                  ; preds = %convolve.exit.i.i92.preheader.i, %.loopexit.i121.i
  %indvars.iv103.i104.i = phi i64 [ %indvars.iv.next104.i115.i, %.loopexit.i121.i ], [ 0, %convolve.exit.i.i92.preheader.i ] ; 8 uses
  %.17487.i106.i = phi float [ %i.px, %.loopexit.i121.i ], [ %i.om, %convolve.exit.i.i92.preheader.i ] ; 3 uses
  %indvars.iv.next104.i115.i = add nuw nsw i64 %indvars.iv103.i104.i, 1 ; 3 uses
  %i.ph = lshr i64 %indvars.iv.next104.i115.i, 1
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv103.i104.i ; 4 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !33
  %i.pk = fneg nsz float %i.pj                    ; 3 uses
  %.not92.i.i = icmp eq i64 %indvars.iv103.i104.i, 0 ; 2 uses
  br i1 %.not92.i.i, label %._crit_edge.i113.i, label %.lr.ph.i108.i.preheader

.lr.ph.i108.i.preheader:                          ; preds = %.lr.ph89.i103.i
  %xtraiter62 = and i64 %indvars.iv103.i104.i, 1
  %i.pl = icmp eq i64 %indvars.iv103.i104.i, 1
  br i1 %i.pl, label %.lr.ph.i108.i.epil.preheader, label %.lr.ph.i108.i.preheader.new

.lr.ph.i108.i.preheader.new:                      ; preds = %.lr.ph.i108.i.preheader
  %unroll_iter66 = and i64 %indvars.iv103.i104.i, 9223372036854775806
  br label %.lr.ph.i108.i

._crit_edge.i113.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i108.i
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %._crit_edge.i113.i, label %.lr.ph.i108.i.epil.preheader

.lr.ph.i108.i.epil.preheader:                     ; preds = %._crit_edge.i113.i.loopexit.unr-lcssa, %.lr.ph.i108.i.preheader
  %indvars.iv.i109.i.epil.init = phi i64 [ 0, %.lr.ph.i108.i.preheader ], [ %indvars.iv.next.i111.i.1, %._crit_edge.i113.i.loopexit.unr-lcssa ] ; 2 uses
  %.06780.i110.i.epil.init = phi float [ %i.pk, %.lr.ph.i108.i.preheader ], [ %i.qp, %._crit_edge.i113.i.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %indvars.iv103.i104.i to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i109.i.epil.init
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !33
  %i.po = xor i64 %indvars.iv.i109.i.epil.init, -1
  %i.pp = getelementptr [4 x i8], ptr %i.pi, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !33
  %i.pr = fneg nsz float %i.pn
  %i.ps = call nsz float @llvm.fmuladd.f32(float %i.pr, float %i.pq, float %.06780.i110.i.epil.init)
  br label %._crit_edge.i113.i

._crit_edge.i113.i:                               ; preds = %.lr.ph.i108.i.epil.preheader, %._crit_edge.i113.i.loopexit.unr-lcssa, %.lr.ph89.i103.i
  %.067.lcssa.i.i = phi float [ %i.pk, %.lr.ph89.i103.i ], [ %i.qp, %._crit_edge.i113.i.loopexit.unr-lcssa ], [ %i.ps, %.lr.ph.i108.i.epil.preheader ] ; 2 uses
  %i.pt = fcmp nsz une float %.17487.i106.i, 0.000000e+00
  %i.pu = fdiv nsz float %.067.lcssa.i.i, %.17487.i106.i
  %.168.i114.i = select nsz i1 %i.pt, float %i.pu, float %.067.lcssa.i.i ; 4 uses
  %i.pv = fneg nsz float %.168.i114.i
  %i.pw = call nsz float @llvm.fmuladd.f32(float %i.pv, float %.168.i114.i, float 1.000000e+00)
  %i.px = fmul nsz float %.17487.i106.i, %i.pw    ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv103.i104.i ; 2 uses
  store float %.168.i114.i, ptr %i.py, align 4, !tbaa !33
  br i1 %.not92.i.i, label %.loopexit.i121.i, label %.lr.ph84.preheader.i.i

.lr.ph84.preheader.i.i:                           ; preds = %._crit_edge.i113.i
  %wide.trip.count101.i116.i = and i64 %i.ph, 2147483647
  %i.pz = insertelement <2 x float> poison, float %.168.i114.i, i64 0
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph84.i117.i

.lr.ph.i108.i:                                    ; preds = %.lr.ph.i108.i, %.lr.ph.i108.i.preheader.new
  %indvars.iv.i109.i = phi i64 [ 0, %.lr.ph.i108.i.preheader.new ], [ %indvars.iv.next.i111.i.1, %.lr.ph.i108.i ] ; 5 uses
  %.06780.i110.i = phi float [ %i.pk, %.lr.ph.i108.i.preheader.new ], [ %i.qp, %.lr.ph.i108.i ]
  %niter67 = phi i64 [ 0, %.lr.ph.i108.i.preheader.new ], [ %niter67.next.1, %.lr.ph.i108.i ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i109.i
  %i.qc = load float, ptr %i.qb, align 8, !tbaa !33
  %i.qd = xor i64 %indvars.iv.i109.i, -1
  %i.qe = getelementptr [4 x i8], ptr %i.pi, i64 %i.qd
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !33
  %i.qg = fneg nsz float %i.qc
  %i.qh = call nsz float @llvm.fmuladd.f32(float %i.qg, float %i.qf, float %.06780.i110.i)
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i109.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !33
  %i.ql = xor i64 %indvars.iv.i109.i, -2
  %i.qm = getelementptr [4 x i8], ptr %i.pi, i64 %i.ql
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !33
  %i.qo = fneg nsz float %i.qk
  %i.qp = call nsz float @llvm.fmuladd.f32(float %i.qo, float %i.qn, float %i.qh) ; 3 uses
  %indvars.iv.next.i111.i.1 = add nuw nsw i64 %indvars.iv.i109.i, 2 ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %._crit_edge.i113.i.loopexit.unr-lcssa, label %.lr.ph.i108.i, !llvm.loop !57

.lr.ph84.i117.i:                                  ; preds = %.lr.ph84.i117.i, %.lr.ph84.preheader.i.i
  %indvars.iv96.i118.i = phi i64 [ 0, %.lr.ph84.preheader.i.i ], [ %indvars.iv.next97.i119.i, %.lr.ph84.i117.i ] ; 3 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv96.i118.i ; 2 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !33 ; 2 uses
  %i.qs = xor i64 %indvars.iv96.i118.i, -1
  %i.qt = getelementptr [4 x i8], ptr %i.py, i64 %i.qs ; 2 uses
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !33 ; 2 uses
end_hunk_0
