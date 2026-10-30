Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourDebugDraw?download=true
inline.NumInlined: 72
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z28duDebugDrawTileCachePolyMeshP11duDebugDrawRK19dtTileCachePolyMeshPKfff:bb.a

bb.k:                                             ; preds = %bb.j
  %.not220 = icmp samesign ult i64 %i.fi, %i.dn
  br i1 %.not220, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !64
  %i.fl = icmp eq i16 %i.fk, -1
  %spec.select = select i1 %i.fl, i64 0, i64 %i.fi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fm = phi i64 [ 0, %bb.k ], [ %spec.select, %bb.l ]
  %i.fn = zext i16 %i.ff to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.fm
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !64
  %i.fq = zext i16 %i.fp to i64
  %i.fr = load ptr, ptr %i.dj, align 8, !tbaa !143
  %.idx = mul nuw nsw i64 %i.fn, 6
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.idx ; 3 uses
  %i.ft = load float, ptr %2, align 4, !tbaa !71
  %i.fu = load i16, ptr %i.fs, align 2, !tbaa !64
  %i.fv = uitofp i16 %i.fu to float
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %3, float %i.ft)
  %i.fx = load float, ptr %i.dk, align 4, !tbaa !71
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !64
  %i.ga = zext i16 %i.fz to i32
  %i.gb = add nuw nsw i32 %i.ga, 1
  %i.gc = uitofp nneg i32 %i.gb to float
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float %4, float %i.fx)
  %i.ge = fadd float %i.gd, 1.000000e-01
  %i.gf = load float, ptr %i.dl, align 4, !tbaa !71
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !64
  %i.gi = uitofp i16 %i.gh to float
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %3, float %i.gf)
  %i.gk = load ptr, ptr %0, align 8, !tbaa !27
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8
  tail call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fw, float noundef %i.ge, float noundef %i.gj, i32 noundef 541077504) #4, !call_target !75
  %i.gn = load ptr, ptr %i.dj, align 8, !tbaa !143
  %.idx307 = mul nuw nsw i64 %i.fq, 6
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx307 ; 3 uses
  %i.gp = load float, ptr %2, align 4, !tbaa !71
  %i.gq = load i16, ptr %i.go, align 2, !tbaa !64
  %i.gr = uitofp i16 %i.gq to float
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float %3, float %i.gp)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !64
  %i.gv = zext i16 %i.gu to i32
  %i.gw = add nuw nsw i32 %i.gv, 1
  %i.gx = uitofp nneg i32 %i.gw to float
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !64
  %i.ha = uitofp i16 %i.gz to float
  %i.hb = load <2 x float>, ptr %i.dk, align 4, !tbaa !71
  %i.hc = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.ha, i64 1
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.dp, <2 x float> %i.hb) ; 2 uses
  %i.hf = extractelement <2 x float> %i.he, i64 0
  %i.hg = fadd float %i.hf, 1.000000e-01
  %i.hh = load ptr, ptr %0, align 8, !tbaa !27
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = extractelement <2 x float> %i.he, i64 1
  tail call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gs, float noundef %i.hg, float noundef %i.hk, i32 noundef 541077504) #4, !call_target !75
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %bb.j, %bb.m
  %exitcond269.not = icmp eq i64 %i.fi, %i.dm
  br i1 %exitcond269.not, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %._crit_edge291, %bb.i
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.hl = load i32, ptr %i.e, align 8, !tbaa !140
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next271, %i.hm
  br i1 %i.hn, label %.lr.ph, label %._crit_edge235.split

._crit_edge245.split:                             ; preds = %._crit_edge240, %.lr.ph244, %._crit_edge235.split
  %i.ho = load ptr, ptr %0, align 8, !tbaa !27
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  %i.hr = load ptr, ptr %0, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8
  tail call void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 3.000000e+00) #4, !call_target !37
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !144
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph248, label %._crit_edge249

.lr.ph248:                                        ; preds = %._crit_edge245.split
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hz = insertelement <2 x float> poison, float %4, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %3, i64 1
  br label %bb.u

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %._crit_edge240
  %indvars.iv281 = phi i64 [ 0, %.lr.ph239.preheader ], [ %indvars.iv.next282, %._crit_edge240 ] ; 2 uses
  %i.ib = load ptr, ptr %i.ek, align 8, !tbaa !141
  %i.ic = trunc nuw nsw i64 %indvars.iv281 to i32 ; 2 uses
  %i.id = mul i32 %i.el, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ie ; 4 uses
  %i.ig = and i32 %i.ic, 1
  %i.ih = add nuw nsw i32 %i.ig, 1
  %invariant.gep310 = getelementptr [2 x i8], ptr %i.if, i64 %i.eq
  %i.ii = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %i.ij = shufflevector <4 x i32> %i.ii, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph239, %._crit_edge293
  %indvars.iv276 = phi i64 [ 0, %.lr.ph239 ], [ %.pre294, %._crit_edge293 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv276
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !64 ; 2 uses
  %i.im = icmp eq i16 %i.il, -1
  br i1 %i.im, label %._crit_edge240, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gep311 = getelementptr [2 x i8], ptr %invariant.gep310, i64 %indvars.iv276
  %i.in = load i16, ptr %gep311, align 2, !tbaa !64 ; 2 uses
  %i.io = icmp sgt i16 %i.in, -1
  %.pre294 = add nuw nsw i64 %indvars.iv276, 1    ; 5 uses
  br i1 %i.io, label %._crit_edge293, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not217 = icmp samesign ult i64 %.pre294, %i.er
  br i1 %.not217, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %.pre294
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !64
  %i.ir = icmp eq i16 %i.iq, -1
  %spec.select221 = select i1 %i.ir, i64 0, i64 %.pre294
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.is = phi i64 [ 0, %bb.p ], [ %spec.select221, %bb.q ]
  %i.it = zext i16 %i.il to i32                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.is
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !64
  %i.iw = zext i16 %i.iv to i32                   ; 2 uses
  %i.ix = and i16 %i.in, 15                       ; 2 uses
  %.not218 = icmp eq i16 %i.ix, 15
  br i1 %.not218, label %._crit_edge292, label %bb.s

._crit_edge292:                                   ; preds = %bb.r
  %.pre295 = mul nuw nsw i32 %i.it, 3
  %.pre296 = mul nuw nsw i32 %i.iw, 3
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iy = load ptr, ptr %i.en, align 8, !tbaa !143 ; 2 uses
  %i.iz = mul nuw nsw i32 %i.it, 3                ; 2 uses
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.ja ; 3 uses
  %i.jc = mul nuw nsw i32 %i.iw, 3                ; 2 uses
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.jd ; 3 uses
  %i.jf = load float, ptr %2, align 4, !tbaa !71
  %i.jg = load i16, ptr %i.jb, align 2, !tbaa !64
  %i.jh = load float, ptr %i.eo, align 4, !tbaa !71
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !64
  %i.jk = zext i16 %i.jj to i32
  %i.jl = load float, ptr %i.ep, align 4, !tbaa !71
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !64
  %i.jo = load i16, ptr %i.je, align 2, !tbaa !64
  %i.jp = insertelement <2 x i16> poison, i16 %i.jg, i64 0
  %i.jq = insertelement <2 x i16> %i.jp, i16 %i.jo, i64 1
  %i.jr = uitofp <2 x i16> %i.jq to <2 x float>
  %i.js = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.ev, <2 x float> %i.jt)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !64
  %i.jx = zext i16 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !64
  %i.ka = insertelement <2 x i16> poison, i16 %i.jn, i64 0
  %i.kb = insertelement <2 x i16> %i.ka, i16 %i.jz, i64 1
  %i.kc = uitofp <2 x i16> %i.kb to <2 x float>
  %i.kd = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.ev, <2 x float> %i.ke)
  %i.kg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ju)
  %i.kh = fmul float %i.kg, 5.000000e-01          ; 2 uses
  %i.ki = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kf)
  %i.kj = fmul float %i.ki, 5.000000e-01          ; 2 uses
  %i.kk = shl nuw nsw i16 %i.ix, 1
  %i.kl = zext nneg i16 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr @__const._Z28duDebugDrawTileCachePolyMeshP11duDebugDrawRK19dtTileCachePolyMeshPKfff.offs, i64 %i.kl
  %i.kn = load <2 x i32>, ptr %i.km, align 8, !tbaa !69
  %i.ko = shufflevector <2 x i32> %i.kn, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.kp = shufflevector <4 x i32> %i.ij, <4 x i32> %i.ko, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %5 = freeze <4 x i32> %i.kp                     ; 2 uses
  %i.kq = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %i.kr = insertelement <4 x i32> %i.kq, i32 %i.jx, i64 2
  %6 = shufflevector <4 x i32> %i.kr, <4 x i32> %5, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ks = add nsw <4 x i32> %5, %6                ; 2 uses
  %i.kt = uitofp nneg <4 x i32> %i.ks to <4 x float>
  %i.ku = sitofp <4 x i32> %i.ks to <4 x float>
  %i.kv = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.kw = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.kx = insertelement <4 x float> %i.kw, float %i.kh, i64 1
  %i.ky = insertelement <4 x float> %i.kx, float %i.kj, i64 3
  %i.kz = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.la = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kv, <4 x float> %i.ey, <4 x float> %i.kz) ; 4 uses
  %shift = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.la, %shift
  %i.lb = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.lc = fmul float %i.lb, 5.000000e-01          ; 2 uses
  %i.ld = load ptr, ptr %0, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  %i.lf = load ptr, ptr %i.le, align 8
  tail call void %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.kh, float noundef %i.lc, float noundef %i.kj, i32 noundef -16776961) #4, !call_target !75
  %i.lg = load ptr, ptr %0, align 8, !tbaa !27
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = extractelement <4 x float> %i.la, i64 1
  %i.lk = extractelement <4 x float> %i.la, i64 3
  tail call void %i.li(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.lj, float noundef %i.lc, float noundef %i.lk, i32 noundef -16776961) #4, !call_target !75
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge292, %bb.s
  %.pre-phi297 = phi i32 [ %.pre296, %._crit_edge292 ], [ %i.jc, %bb.s ]
  %.pre-phi = phi i32 [ %.pre295, %._crit_edge292 ], [ %i.iz, %bb.s ]
  %.0210 = phi i32 [ -599773184, %._crit_edge292 ], [ -2130706433, %bb.s ] ; 2 uses
  %i.ll = load ptr, ptr %i.en, align 8, !tbaa !143
  %i.lm = zext nneg i32 %.pre-phi to i64
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.lm ; 3 uses
  %i.lo = load float, ptr %2, align 4, !tbaa !71
  %i.lp = load i16, ptr %i.ln, align 2, !tbaa !64
  %i.lq = uitofp i16 %i.lp to float
  %i.lr = tail call float @llvm.fmuladd.f32(float %i.lq, float %3, float %i.lo)
  %i.ls = load float, ptr %i.eo, align 4, !tbaa !71
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !64
  %i.lv = zext i16 %i.lu to i32
  %i.lw = add nuw nsw i32 %i.lv, 1
  %i.lx = uitofp nneg i32 %i.lw to float
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.lx, float %4, float %i.ls)
  %i.lz = fadd float %i.ly, 1.000000e-01
  %i.ma = load float, ptr %i.ep, align 4, !tbaa !71
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !64
  %i.md = uitofp i16 %i.mc to float
  %i.me = tail call float @llvm.fmuladd.f32(float %i.md, float %3, float %i.ma)
  %i.mf = load ptr, ptr %0, align 8, !tbaa !27
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %i.mh = load ptr, ptr %i.mg, align 8
  tail call void %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.lr, float noundef %i.lz, float noundef %i.me, i32 noundef %.0210) #4, !call_target !75
  %i.mi = load ptr, ptr %i.en, align 8, !tbaa !143
  %i.mj = zext nneg i32 %.pre-phi297 to i64
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.mj ; 3 uses
  %i.ml = load float, ptr %2, align 4, !tbaa !71
  %i.mm = load i16, ptr %i.mk, align 2, !tbaa !64
  %i.mn = uitofp i16 %i.mm to float
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.mn, float %3, float %i.ml)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 2
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !64
  %i.mr = zext i16 %i.mq to i32
  %i.ms = add nuw nsw i32 %i.mr, 1
  %i.mt = uitofp nneg i32 %i.ms to float
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !64
  %i.mw = uitofp i16 %i.mv to float
  %i.mx = load <2 x float>, ptr %i.eo, align 4, !tbaa !71
  %i.my = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.mz = insertelement <2 x float> %i.my, float %i.mw, i64 1
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mz, <2 x float> %i.et, <2 x float> %i.mx) ; 2 uses
  %i.nb = extractelement <2 x float> %i.na, i64 0
  %i.nc = fadd float %i.nb, 1.000000e-01
  %i.nd = load ptr, ptr %0, align 8, !tbaa !27
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = extractelement <2 x float> %i.na, i64 1
  tail call void %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.mo, float noundef %i.nc, float noundef %i.ng, i32 noundef %.0210) #4, !call_target !75
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %bb.o, %bb.t
  %exitcond280.not = icmp eq i64 %.pre294, %i.eq
  br i1 %exitcond280.not, label %._crit_edge240, label %bb.n

._crit_edge240:                                   ; preds = %._crit_edge293, %bb.n
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.nh = load i32, ptr %i.e, align 8, !tbaa !140
  %i.ni = sext i32 %i.nh to i64
  %i.nj = icmp slt i64 %indvars.iv.next282, %i.ni
  br i1 %i.nj, label %.lr.ph239, label %._crit_edge245.split

._crit_edge249:                                   ; preds = %bb.u, %._crit_edge245.split
  %i.nk = load ptr, ptr %0, align 8, !tbaa !27
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 72
  %i.nm = load ptr, ptr %i.nl, align 8
  tail call void %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph248, %bb.u
  %indvars.iv284 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next285, %bb.u ] ; 2 uses
  %i.nn = load ptr, ptr %i.hx, align 8, !tbaa !143
  %.idx308 = mul nuw nsw i64 %indvars.iv284, 6
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx308 ; 3 uses
  %i.np = load float, ptr %2, align 4, !tbaa !71
  %i.nq = load i16, ptr %i.no, align 2, !tbaa !64
  %i.nr = uitofp i16 %i.nq to float
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nr, float %3, float %i.np)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !64
  %i.nv = zext i16 %i.nu to i32
  %i.nw = add nuw nsw i32 %i.nv, 1
  %i.nx = uitofp nneg i32 %i.nw to float
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !64
  %i.oa = uitofp i16 %i.nz to float
  %i.ob = load <2 x float>, ptr %i.hy, align 4, !tbaa !71
  %i.oc = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.oa, i64 1
  %i.oe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> %i.ia, <2 x float> %i.ob) ; 2 uses
  %i.of = extractelement <2 x float> %i.oe, i64 0
  %i.og = fadd float %i.of, 1.000000e-01
  %i.oh = load ptr, ptr %0, align 8, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = extractelement <2 x float> %i.oe, i64 1
  tail call void %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ns, float noundef %i.og, float noundef %i.ok, i32 noundef -603979776) #4, !call_target !75
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.ol = load i32, ptr %i.hu, align 4, !tbaa !144
  %i.om = sext i32 %i.ol to i64
  %i.on = icmp slt i64 %indvars.iv.next285, %i.om
  br i1 %i.on, label %bb.u, label %._crit_edge249

bb.v:                                             ; preds = %bb.a, %._crit_edge249
  ret void
}

declare noundef zeroext i1 @_ZNK14dtNavMeshQuery14isInClosedListEj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_ZL18drawPolyBoundariesP11duDebugDrawPK10dtMeshTilejfb(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef nofpclass(nan inf zero sub nnorm) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef %3) #4, !call_target !37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph118, label %._crit_edge

.lr.ph118:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit104, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  ret void

bb.b:                                             ; preds = %.lr.ph118, %.loopexit104
  %i.r = phi ptr [ %i.e, %.lr.ph118 ], [ %i.jg, %.loopexit104 ] ; 2 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next125, %.loopexit104 ] ; 3 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv124 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %.mask = and i8 %i.v, -64
  %i.w = icmp eq i8 %.mask, 64
  br i1 %i.w, label %.loopexit104, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv124 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 30 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !62   ; 2 uses
  %.not119 = icmp eq i8 %i.aa, 0
  br i1 %.not119, label %.loopexit104, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 9 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.af = zext i8 %i.aa to i64                    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph116, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !64 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 0                    ; 2 uses
end_hunk_0
