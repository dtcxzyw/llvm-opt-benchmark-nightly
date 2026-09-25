Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/opacitymap?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE:bb.a
  store float %i.ea, ptr %i.dh, align 4, !tbaa !23
  %i.eb = extractelement <2 x float> %i.dp, i64 0
  %i.ec = fadd float %i.dg, %i.eb
  %i.ed = fmul float %i.ec, 5.000000e-01          ; 4 uses
  store float %i.ed, ptr %i.b, align 4, !tbaa !23
  %i.ee = fadd float %i.di, %i.dq
  %i.ef = fmul float %i.ee, 5.000000e-01          ; 4 uses
  store float %i.ef, ptr %i.dk, align 4, !tbaa !23
  %i.eg = extractelement <4 x float> %i.dx, i64 0 ; 3 uses
  store float %i.eg, ptr %i.c, align 4, !tbaa !23
  %i.eh = extractelement <4 x float> %i.dx, i64 1 ; 3 uses
  store float %i.eh, ptr %i.dm, align 4, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ej = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.dy, float noundef %i.ea) ; 4 uses
  store float %i.ej, ptr %i.dj, align 4, !tbaa !23
  %i.ek = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.ed, float noundef %i.ef) ; 3 uses
  store float %i.ek, ptr %i.dl, align 4, !tbaa !23
  %i.el = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.eg, float noundef %i.eh) ; 3 uses
  store float %i.el, ptr %i.ei, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr %4, ptr %i.d, align 16, !tbaa !33
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.em, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.en, align 16, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.b, ptr %i.eo, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %6, ptr %i.ep, align 16, !tbaa !33
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.c, ptr %i.eq, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.er = add nuw nsw i32 %3, 1
  %i.es = uitofp nneg i32 %i.er to float
  %i.et = fdiv nnan float 1.000000e+00, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ey = load <2 x float>, ptr %i.eu, align 8, !tbaa !23
  %i.ez = load <2 x i32>, ptr %i.ev, align 8      ; 2 uses
  %i.fa = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.fb = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.fc = load ptr, ptr %7, align 8
  %i.fd = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i, %bb.j
  %.056.i = phi i64 [ 0, %bb.j ], [ %i.iq, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @_ZZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureEE5edges, i64 %.056.i ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !24
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !33
  %i.fp = load <2 x float>, ptr %i.fj, align 4, !tbaa !23 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fo, align 4, !tbaa !23
  %i.fr = fsub <2 x float> %i.fq, %i.fp
  %i.fs = fmul <2 x float> %i.fe, %i.fr
  br label %bb.l

bb.l:                                             ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i, %bb.k
  %.033.i.i = phi i32 [ 0, %bb.k ], [ %i.im, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ] ; 2 uses
  %.02532.i.i = phi i32 [ 0, %bb.k ], [ %i.il, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %.02631.i.i = phi i32 [ 0, %bb.k ], [ %i.ik, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %i.ft = phi <2 x float> [ %i.fp, %bb.k ], [ %i.fu, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %i.fu = fadd <2 x float> %i.fs, %i.ft           ; 3 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0 ; 4 uses
  %i.fw = fadd float %i.fv, -5.000000e-01
  %i.fx = call float @llvm.fabs.f32(float %i.fw)
  %i.fy = fcmp ogt float %i.fx, 5.000000e-01
  br i1 %i.fy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fz = call float @llvm.floor.f32(float %i.fv)
  %i.ga = fsub float %i.fv, %i.fz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gb = phi float [ %i.ga, %bb.m ], [ %i.fv, %bb.l ]
  %i.gc = extractelement <2 x float> %i.fu, i64 1 ; 4 uses
  %i.gd = fadd float %i.gc, -5.000000e-01
  %i.ge = call float @llvm.fabs.f32(float %i.gd)
  %i.gf = fcmp ogt float %i.ge, 5.000000e-01
  br i1 %i.gf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gg = call float @llvm.floor.f32(float %i.gc)
  %i.gh = fsub float %i.gc, %i.gg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gi = phi float [ %i.gh, %bb.o ], [ %i.gc, %bb.n ]
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.gi, i64 1
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ey, <2 x float> splat (float -1.275000e+02))
  %i.gm = fptosi <2 x float> %i.gl to <2 x i32>
  %i.gn = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gm, <2 x i32> zeroinitializer) ; 3 uses
  %i.go = lshr <2 x i32> %i.gn, splat (i32 8)     ; 4 uses
  %i.gp = icmp ult <2 x i32> %i.go, %i.ez         ; 2 uses
  %i.gq = extractelement <2 x i1> %i.gp, i64 0
  %i.gr = extractelement <2 x i1> %i.gp, i64 1
  %or.cond112 = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond112, label %bb.q, label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i

bb.q:                                             ; preds = %bb.p
  %i.gs = extractelement <2 x i32> %i.gn, i64 1
  %i.gt = and i32 %i.gs, 255
  %i.gu = extractelement <2 x i32> %i.gn, i64 0
  %i.gv = and i32 %i.gu, 255                      ; 2 uses
  %i.gw = extractelement <2 x i32> %i.go, i64 1
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = mul i64 %i.fa, %i.gx
  %i.gz = extractelement <2 x i32> %i.go, i64 0
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = mul i64 %i.fb, %i.ha
  %i.hc = add nuw nsw <2 x i32> %i.go, splat (i32 1)
  %i.hd = icmp slt <2 x i32> %i.hc, %i.ez         ; 2 uses
  %i.he = extractelement <2 x i1> %i.hd, i64 0
  %spec.select.i.i = select i1 %i.he, i64 %i.fb, i64 0
  %i.hf = extractelement <2 x i1> %i.hd, i64 1
  %spec.select63.i.i = select i1 %i.hf, i64 %i.fa, i64 0 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.fc, i64 %i.hb
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.gy  ; 3 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !24
  %i.hj = getelementptr i8, ptr %i.hh, i64 %spec.select.i.i ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24
  %i.hl = getelementptr i8, ptr %i.hh, i64 %spec.select63.i.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !24
  %i.hn = getelementptr i8, ptr %i.hj, i64 %spec.select63.i.i
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !24
  %i.hp = zext i8 %i.hi to i32                    ; 2 uses
  %i.hq = shl nuw nsw i32 %i.hp, 8
  %i.hr = zext i8 %i.hk to i32
  %i.hs = sub nsw i32 %i.hr, %i.hp
  %i.ht = mul nsw i32 %i.hs, %i.gv
  %i.hu = add nsw i32 %i.ht, %i.hq                ; 2 uses
  %i.hv = zext i8 %i.hm to i32                    ; 2 uses
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = zext i8 %i.ho to i32
  %i.hy = sub nsw i32 %i.hx, %i.hv
  %i.hz = mul nsw i32 %i.hy, %i.gv
  %i.ia = shl nsw i32 %i.hu, 8
  %i.ib = sub nsw i32 %i.hw, %i.hu
  %i.ic = add nsw i32 %i.ib, %i.hz
  %i.id = mul nsw i32 %i.ic, %i.gt
  %i.ie = add nsw i32 %i.id, %i.ia
  %i.if = sitofp i32 %i.ie to float
  %i.ig = fmul nnan float %i.if, f0x33808081
  %i.ih = fcmp oge float %i.ig, 5.000000e-01
  %i.ii = zext i1 %i.ih to i32
  br label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i

_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.ii, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.ij = shl nuw i32 %.0.i.i, %.033.i.i
  %i.ik = or i32 %i.ij, %.02631.i.i               ; 2 uses
  %i.il = add nuw nsw i32 %.0.i.i, %.02532.i.i    ; 2 uses
  %i.im = add nuw nsw i32 %.033.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.im, %3
  br i1 %exitcond.not.i.i, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i, label %bb.l, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i: ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i
  %i.in = shl i32 %i.il, 16
  %i.io = or i32 %i.in, %i.ik
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.056.i
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !21
  %i.iq = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.iq, 9
  br i1 %exitcond.not.i104, label %_ZN7meshoptL17rasterizeOpacity1ILi2EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, label %bb.k, !llvm.loop !40

_ZN7meshoptL17rasterizeOpacity1ILi2EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit: ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i
  %i.ir = shl i64 %1, 2                           ; 2 uses
  %i.is = uitofp nneg i32 %3 to float
  %i.it = lshr i64 %i.ir, 3
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %i.it ; 5 uses
  %.promoted.i = load i8, ptr %i.iu, align 1, !tbaa !24
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !23
  %i.ix = load i32, ptr %i.e, align 16, !tbaa !21
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !21
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !21
  %i.jc = fadd float %i.ej, %i.iw
  %i.jd = fadd float %i.el, %i.jc
  %i.je = ashr i32 %i.ix, 16
  %i.jf = ashr i32 %i.iz, 16                      ; 2 uses
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = ashr i32 %i.jb, 16
  %i.ji = add nsw i32 %i.jg, %i.jh
  %i.jj = sitofp i32 %i.ji to float
  %i.jk = trunc i64 %i.ir to i8
  %i.jl = and i8 %i.jk, 4                         ; 4 uses
  %8 = fadd float %i.eg, %i.ed                    ; 2 uses
  %9 = fdiv nnan float 1.000000e+00, %i.is        ; 4 uses
  %i.jm = fadd float %i.do, %i.ea
  %10 = extractelement <2 x float> %i.dn, i64 0
  %i.jn = fadd float %10, %i.dy
  %i.jo = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jp = insertelement <4 x float> %i.jo, float %i.jm, i64 1
  %i.jq = insertelement <4 x float> %i.jp, float %9, i64 2
  %i.jr = insertelement <4 x float> %i.jq, float %8, i64 3
  %i.js = fadd <4 x float> %i.jr, %i.dx
  %i.jt = insertelement <4 x float> <float f0x3EAAAAAB, float f0x3EAAAAAB, float poison, float f0x3EAAAAAB>, float %i.jj, i64 2
  %i.ju = fmul <4 x float> %i.js, %i.jt           ; 4 uses
  %i.jv = extractelement <4 x float> %i.ju, i64 0
  %i.jw = extractelement <4 x float> %i.ju, i64 1
  %i.jx = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.jv, float noundef %i.jw)
  %i.jy = extractelement <4 x float> %i.ju, i64 2
  %i.jz = fmul float %i.jy, 2.300000e-01
  %i.ka = call float @llvm.fmuladd.f32(float %i.jx, float 2.200000e-01, float %i.jz)
  %i.kb = call float @llvm.fmuladd.f32(float %i.jd, float 3.000000e-02, float %i.ka)
  %i.kc = fcmp oge float %i.kb, 5.000000e-01
  %i.kd = zext i1 %i.kc to i8
  %i.ke = shl nuw nsw i8 %i.kd, %i.jl
  %i.kf = or i8 %i.ke, %.promoted.i               ; 2 uses
  store i8 %i.kf, ptr %i.iu, align 1, !tbaa !24
  %i.kg = fadd float %i.eh, %i.ef                 ; 2 uses
  %i.kh = fadd float %i.ea, %i.kg
  %i.ki = fmul float %i.kh, f0x3EAAAAAB
  %i.kj = extractelement <4 x float> %i.ju, i64 3
  %i.kk = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.kj, float noundef %i.ki)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.km = load i32, ptr %i.kl, align 16, !tbaa !21
  %i.kn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !21
  %i.kp = fadd float %i.ek, %i.el                 ; 2 uses
  %i.kq = fadd float %i.ej, %i.kp
  %i.kr = ashr i32 %i.km, 16                      ; 2 uses
  %i.ks = ashr i32 %i.ko, 16                      ; 2 uses
  %i.kt = add nsw i32 %i.kr, %i.jf
  %i.ku = add nsw i32 %i.kt, %i.ks
  %i.kv = sitofp i32 %i.ku to float
  %i.kw = fmul float %9, %i.kv
  %i.kx = fmul float %i.kw, 2.300000e-01
  %i.ky = call float @llvm.fmuladd.f32(float %i.kk, float 2.200000e-01, float %i.kx)
  %i.kz = call float @llvm.fmuladd.f32(float %i.kq, float 3.000000e-02, float %i.ky)
  %i.la = fcmp oge float %i.kz, 5.000000e-01
  %i.lb = zext i1 %i.la to i8
  %i.lc = or disjoint i8 %i.jl, 1
  %i.ld = shl nuw nsw i8 %i.lb, %i.lc
  %i.le = or i8 %i.ld, %i.kf                      ; 2 uses
  store i8 %i.le, ptr %i.iu, align 1, !tbaa !24
  %i.lf = load float, ptr %5, align 4, !tbaa !23
  %i.lg = fadd float %i.dy, %i.lf
  %i.lh = fadd float %i.ed, %i.lg
  %i.li = fmul float %i.lh, f0x3EAAAAAB
  %i.lj = load float, ptr %i.de, align 4, !tbaa !23
  %i.lk = fadd float %i.ea, %i.lj
  %i.ll = fadd float %i.ef, %i.lk
  %i.lm = fmul float %i.ll, f0x3EAAAAAB
  %i.ln = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.li, float noundef %i.lm)
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !23
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !21
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !21
  %i.lu = fadd float %i.ej, %i.lp
  %i.lv = fadd float %i.ek, %i.lu
  %i.lw = ashr i32 %i.lr, 16
  %i.lx = ashr i32 %i.lt, 16
  %i.ly = add nsw i32 %i.lw, %i.ks
  %i.lz = add nsw i32 %i.ly, %i.lx
  %i.ma = sitofp i32 %i.lz to float
  %i.mb = fmul float %9, %i.ma
  %i.mc = fmul float %i.mb, 2.300000e-01
  %i.md = call float @llvm.fmuladd.f32(float %i.ln, float 2.200000e-01, float %i.mc)
  %i.me = call float @llvm.fmuladd.f32(float %i.lv, float 3.000000e-02, float %i.md)
  %i.mf = fcmp oge float %i.me, 5.000000e-01
  %i.mg = zext i1 %i.mf to i8
  %i.mh = or disjoint i8 %i.jl, 2
  %i.mi = shl nuw nsw i8 %i.mg, %i.mh
  %i.mj = or i8 %i.mi, %i.le                      ; 2 uses
  store i8 %i.mj, ptr %i.iu, align 1, !tbaa !24
  %i.mk = load float, ptr %6, align 4, !tbaa !23
  %i.ml = fadd float %8, %i.mk
  %i.mm = fmul float %i.ml, f0x3EAAAAAB
  %i.mn = load float, ptr %i.df, align 4, !tbaa !23
  %i.mo = fadd float %i.kg, %i.mn
  %i.mp = fmul float %i.mo, f0x3EAAAAAB
  %i.mq = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.mm, float noundef %i.mp)
  %i.mr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !23
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.mu = load i32, ptr %i.mt, align 16, !tbaa !21
  %i.mv = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !21
  %i.mx = fadd float %i.kp, %i.ms
  %i.my = ashr i32 %i.mu, 16
  %i.mz = add nsw i32 %i.my, %i.kr
  %i.na = ashr i32 %i.mw, 16
  %i.nb = add nsw i32 %i.mz, %i.na
  %i.nc = sitofp i32 %i.nb to float
  %i.nd = fmul float %9, %i.nc
  %i.ne = fmul float %i.nd, 2.300000e-01
  %i.nf = call float @llvm.fmuladd.f32(float %i.mq, float 2.200000e-01, float %i.ne)
  %i.ng = call float @llvm.fmuladd.f32(float %i.mx, float 3.000000e-02, float %i.nf)
  %i.nh = fcmp oge float %i.ng, 5.000000e-01
  %i.ni = zext i1 %i.nh to i8
  %i.nj = or disjoint i8 %i.jl, 3
  %i.nk = shl nuw i8 %i.ni, %i.nj
  %i.nl = or i8 %i.nk, %i.mj
  store i8 %i.nl, ptr %i.iu, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.nm = load float, ptr %4, align 4, !tbaa !23  ; 2 uses
  %i.nn = load float, ptr %5, align 4, !tbaa !23  ; 2 uses
  %i.no = fadd float %i.nm, %i.nn
  %i.np = fmul float %i.no, 5.000000e-01          ; 2 uses
  store float %i.np, ptr %i.f, align 4, !tbaa !23
  %i.nq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.nr = load float, ptr %i.dd, align 4, !tbaa !23 ; 2 uses
  %i.ns = load float, ptr %i.de, align 4, !tbaa !23 ; 2 uses
  %i.nt = fadd float %i.nr, %i.ns
  %i.nu = fmul float %i.nt, 5.000000e-01          ; 2 uses
  store float %i.nu, ptr %i.nq, align 4, !tbaa !23
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.nw = load float, ptr %6, align 4, !tbaa !23  ; 2 uses
  %i.nx = fadd float %i.nn, %i.nw
  %i.ny = fmul float %i.nx, 5.000000e-01          ; 2 uses
  store float %i.ny, ptr %i.g, align 4, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.oa = load float, ptr %i.df, align 4, !tbaa !23 ; 2 uses
  %i.ob = fadd float %i.ns, %i.oa
  %i.oc = fmul float %i.ob, 5.000000e-01          ; 2 uses
  store float %i.oc, ptr %i.nz, align 4, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.oe = fadd float %i.nm, %i.nw
  %i.of = fmul float %i.oe, 5.000000e-01          ; 2 uses
  store float %i.of, ptr %i.h, align 4, !tbaa !23
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.oh = fadd float %i.nr, %i.oa
  %i.oi = fmul float %i.oh, 5.000000e-01          ; 2 uses
  store float %i.oi, ptr %i.og, align 4, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ok = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.np, float noundef %i.nu)
  store float %i.ok, ptr %i.nv, align 4, !tbaa !23
  %i.ol = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.ny, float noundef %i.oc)
  store float %i.ol, ptr %i.od, align 4, !tbaa !23
  %i.om = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.of, float noundef %i.oi)
  store float %i.om, ptr %i.oj, align 4, !tbaa !23
  %i.on = shl i64 %1, 2                           ; 4 uses
  %i.oo = add nsw i32 %2, -1                      ; 4 uses
  call void @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.on, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.op = or disjoint i64 %i.on, 1
  call void @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.op, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.oq = or disjoint i64 %i.on, 2
  call void @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.oq, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.f, ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.or = or disjoint i64 %i.on, 3
  call void @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.or, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN7meshoptL17rasterizeOpacity1ILi2EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, %_ZN7meshoptL17rasterizeOpacity0ILi2EEEvPhmffffiiii.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #8 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [6 x ptr], align 16               ; 13 uses
  %i.e = alloca [9 x i32], align 16               ; 7 uses
  %i.f = alloca [3 x float], align 4              ; 8 uses
  %i.g = alloca [3 x float], align 4              ; 8 uses
  %i.h = alloca [3 x float], align 4              ; 8 uses
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %4, align 4, !tbaa !23   ; 4 uses
  %i.k = load float, ptr %5, align 4, !tbaa !23   ; 4 uses
  %i.l = fadd float %i.j, %i.k
  %i.m = load float, ptr %6, align 4, !tbaa !23   ; 4 uses
  %i.n = fadd float %i.l, %i.m
  %i.o = fmul float %i.n, f0x3EAAAAAB
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !23 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !23 ; 4 uses
  %i.t = fadd float %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !23 ; 4 uses
  %i.w = fadd float %i.t, %i.v
  %i.x = fmul float %i.w, f0x3EAAAAAB
  %i.y = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.o, float noundef %i.x) ; 4 uses
  %i.z = icmp sgt i32 %3, 0
  br i1 %i.z, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %3, 1
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 6 uses
  %i.ad = fsub float %i.k, %i.j
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = fsub float %i.s, %i.q
  %i.ag = fmul float %i.ac, %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.033.i = phi i32 [ 0, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.02532.i = phi i32 [ 0, %bb.c ], [ %i.ao, %bb.d ]
  %.02631.i = phi i32 [ 0, %bb.c ], [ %i.an, %bb.d ]
  %.02730.i = phi float [ %i.q, %bb.c ], [ %i.ai, %bb.d ]
  %.02829.i = phi float [ %i.j, %bb.c ], [ %i.ah, %bb.d ]
  %i.ah = fadd float %i.ae, %.02829.i             ; 2 uses
  %i.ai = fadd float %i.ag, %.02730.i             ; 2 uses
  %i.aj = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.ah, float noundef %i.ai)
  %i.ak = fcmp oge float %i.aj, 5.000000e-01
  %i.al = zext i1 %i.ak to i32                    ; 2 uses
  %i.am = shl nuw i32 %i.al, %.033.i
  %i.an = or i32 %i.am, %.02631.i                 ; 2 uses
  %i.ao = add nuw nsw i32 %.02532.i, %i.al        ; 2 uses
  %i.ap = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ap, %3
  br i1 %exitcond.not.i, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit, label %bb.d, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit: ; preds = %bb.d
  %i.aq = fsub float %i.m, %i.k
  %i.ar = fmul float %i.ac, %i.aq
  %i.as = fsub float %i.v, %i.s
  %i.at = fmul float %i.ac, %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit
  %.033.i90 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.bc, %bb.e ] ; 2 uses
  %.02532.i91 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.bb, %bb.e ]
  %.02631.i92 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.ba, %bb.e ]
  %.02730.i93 = phi float [ %i.s, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.av, %bb.e ]
  %.02829.i94 = phi float [ %i.k, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.au, %bb.e ]
  %i.au = fadd float %i.ar, %.02829.i94           ; 2 uses
  %i.av = fadd float %i.at, %.02730.i93           ; 2 uses
  %i.aw = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.au, float noundef %i.av)
  %i.ax = fcmp oge float %i.aw, 5.000000e-01
  %i.ay = zext i1 %i.ax to i32                    ; 2 uses
  %i.az = shl nuw i32 %i.ay, %.033.i90
  %i.ba = or i32 %i.az, %.02631.i92               ; 2 uses
  %i.bb = add nuw nsw i32 %.02532.i91, %i.ay      ; 2 uses
  %i.bc = add nuw nsw i32 %.033.i90, 1            ; 2 uses
  %exitcond.not.i95 = icmp eq i32 %i.bc, %3
  br i1 %exitcond.not.i95, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96, label %bb.e, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96: ; preds = %bb.e
  %i.bd = fsub float %i.j, %i.m
  %i.be = fmul float %i.ac, %i.bd
  %i.bf = fsub float %i.q, %i.v
  %i.bg = fmul float %i.ac, %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96
  %.033.i97 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bp, %bb.f ] ; 2 uses
  %.02532.i98 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bo, %bb.f ]
  %.02631.i99 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bn, %bb.f ]
  %.02730.i100 = phi float [ %i.v, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bi, %bb.f ]
  %.02829.i101 = phi float [ %i.m, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bh, %bb.f ]
  %i.bh = fadd float %i.be, %.02829.i101          ; 2 uses
  %i.bi = fadd float %i.bg, %.02730.i100          ; 2 uses
  %i.bj = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.bh, float noundef %i.bi)
  %i.bk = fcmp oge float %i.bj, 5.000000e-01
  %i.bl = zext i1 %i.bk to i32                    ; 2 uses
  %i.bm = shl nuw i32 %i.bl, %.033.i97
  %i.bn = or i32 %i.bm, %.02631.i99               ; 2 uses
  %i.bo = add nuw nsw i32 %.02532.i98, %i.bl      ; 2 uses
  %i.bp = add nuw nsw i32 %.033.i97, 1            ; 2 uses
  %exitcond.not.i102 = icmp eq i32 %i.bp, %3
  br i1 %exitcond.not.i102, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103, label %bb.f, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103: ; preds = %bb.f
  %i.bq = shl i32 %i.ao, 16
  %i.br = or i32 %i.bq, %i.an
  %i.bs = shl i32 %i.bb, 16
  %i.bt = or i32 %i.bs, %i.ba
  %i.bu = shl i32 %i.bo, 16
  %i.bv = or i32 %i.bu, %i.bn
  br label %bb.g

bb.g:                                             ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103, %bb.b
  %.087 = phi i32 [ %i.br, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ] ; 2 uses
  %.086 = phi i32 [ %i.bt, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.bv, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
