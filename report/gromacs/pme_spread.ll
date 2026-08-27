Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !106
  %i.fv = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 12
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !106
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !106
  %i.ga = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !106
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !106
  %i.gf = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 20
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !106
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !106
  %i.gk = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gl = getelementptr i8, ptr %i.gk, i64 24
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !106
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !106
  %indvars.iv.next36.i.7 = add nsw i64 %indvars.iv35.i, 8 ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 28
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !106
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492, !llvm.loop !274

._crit_edge.loopexit.i:                           ; preds = %vec.epilog.scalar.ph492.prol.loopexit, %vec.epilog.scalar.ph492, %vec.epilog.middle.block501, %middle.block487
  %indvars.iv.next36.i.lcssa = phi i64 [ %i.ex, %vec.epilog.middle.block501 ], [ %i.eo, %middle.block487 ], [ %indvars.iv.next36.i.lcssa514.unr, %vec.epilog.scalar.ph492.prol.loopexit ], [ %indvars.iv.next36.i.7, %vec.epilog.scalar.ph492 ]
  %i.gr = trunc nsw i64 %indvars.iv.next36.i.lcssa to i32
  %.pre.i = load i32, ptr %i.an, align 8, !tbaa !242
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph30.split.i
  %i.gs = phi i32 [ %i.dy, %.lr.ph30.split.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.122.lcssa.i = phi i32 [ %.02126.i, %.lr.ph30.split.i ], [ %i.gr, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next41.i, %i.gt
  br i1 %i.gu, label %.lr.ph30.split.i, label %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, !llvm.loop !266

_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit: ; preds = %._crit_edge.i, %._crit_edge.us.i, %bb.h
  %.021.lcssa.i = phi i32 [ 0, %bb.h ], [ %.122.lcssa.us.i, %._crit_edge.us.i ], [ %.122.lcssa.i, %._crit_edge.i ] ; 2 uses
  store i32 %.021.lcssa.i, ptr %i.ah, align 8, !tbaa !257
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, %bb.e
  %i.gv = phi i32 [ %i.ae, %bb.e ], [ %i.am, %bb.g ], [ %.021.lcssa.i, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 4 uses
  %i.gw = phi ptr [ %i.aa, %bb.e ], [ %.pre83, %bb.g ], [ %.pre83, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 2 uses
  %.035 = phi ptr [ %i.ac, %bb.e ], [ %i.ah, %bb.g ], [ %i.ah, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 22 uses
  %i.gx = load i8, ptr %6, align 1, !tbaa !16, !range !107, !noundef !108
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.j, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit

bb.j:                                             ; preds = %bb.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.035, i64 128 ; 3 uses
  %i.hb = load ptr, ptr %4, align 8, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !275 ; 18 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 288
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !249 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !243 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !276 ; 3 uses
  %i.hk = load i8, ptr %7, align 1, !tbaa !16, !range !107, !noundef !108
  %i.hl = trunc nuw i8 %i.hk to i1                ; 3 uses
  %i.hm = icmp sgt i32 %i.gv, 0
  br i1 %i.hm, label %.lr.ph272.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit

.lr.ph272.i:                                      ; preds = %bb.j
  %i.hn = add i32 %i.hd, -1                       ; 3 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ho ; 11 uses
  %i.hq = icmp sgt i32 %i.hd, 3                   ; 3 uses
  %i.hr = icmp sgt i32 %i.hd, 1                   ; 3 uses
  %i.hs = sitofp i32 %i.hn to double
  %i.ht = fdiv double 1.000000e+00, %i.hs
  %i.hu = fptrunc double %i.ht to float           ; 18 uses
  %i.hv = sext i32 %i.hd to i64                   ; 8 uses
  %i.hw = getelementptr [4 x i8], ptr %i.d, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -8     ; 6 uses
  %i.hy = icmp sgt i32 %i.hd, 2                   ; 3 uses
  %i.hz = icmp sgt i32 %i.hd, 0                   ; 3 uses
  switch i32 %i.hd, label %.lr.ph272.split.preheader.i [
    i32 4, label %.lr.ph272.split.us.preheader.i
    i32 5, label %.lr.ph272.split.us274.preheader.i
  ]

.lr.ph272.split.us274.preheader.i:                ; preds = %.lr.ph272.i
  %wide.trip.count.i37 = zext nneg i32 %i.gv to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %.035, i64 136
  %i.ib = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.ic = getelementptr inbounds nuw i8, ptr %.035, i64 144
  %i.id = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %.lr.ph272.split.us274.i

.lr.ph272.split.us.preheader.i:                   ; preds = %.lr.ph272.i
  %wide.trip.count316.i = zext nneg i32 %i.gv to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.035, i64 136
  %i.if = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.ig = getelementptr inbounds nuw i8, ptr %.035, i64 144
  %i.ih = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %.lr.ph272.split.us.i

.lr.ph272.split.preheader.i:                      ; preds = %.lr.ph272.i
  %i.ii = zext i32 %i.hd to i64                   ; 15 uses
  %i.ij = shl nuw nsw i64 %i.ii, 2                ; 3 uses
  %wide.trip.count355.i = zext nneg i32 %i.gv to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.035, i64 136 ; 2 uses
  %wide.trip.count342.i = zext i32 %i.hn to i64   ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.035, i64 144 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.in = getelementptr inbounds nuw i8, ptr %.035, i64 48
  %i.io = shl nuw nsw i64 %i.ii, 2                ; 4 uses
  %scevgep184 = getelementptr i8, ptr %i.d, i64 %i.io ; 3 uses
  %i.ip = add nsw i64 %i.ii, -1                   ; 15 uses
  %min.iters.check377 = icmp ult i32 %i.hd, 9
  %min.iters.check379 = icmp ult i32 %i.hd, 33
  %i.iq = and i64 %i.ip, 24
  %n.vec381 = and i64 %i.ip, -32                  ; 4 uses
  %i.ir = or disjoint i64 %n.vec381, 1
  %cmp.n394 = icmp eq i64 %i.ip, %n.vec381
  %min.epilog.iters.check400 = icmp eq i64 %i.iq, 0
  %n.vec402 = and i64 %i.ip, -8                   ; 3 uses
  %i.is = or disjoint i64 %n.vec402, 1
  %cmp.n409 = icmp eq i64 %i.ip, %n.vec402
  %i.it = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check344 = icmp ult i64 %i.it, 8
  %n.vec346 = and i64 %i.it, -8                   ; 3 uses
  %i.iu = or disjoint i64 %n.vec346, 1
  %broadcast.splatinsert349 = insertelement <8 x i64> poison, i64 %i.hv, i64 0
  %broadcast.splat350 = shufflevector <8 x i64> %broadcast.splatinsert349, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <8 x float> poison, float %i.hu, i64 0
  %i.iv = shufflevector <8 x float> %broadcast.splatinsert351, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n366 = icmp eq i64 %i.it, %n.vec346
  %min.iters.check282 = icmp ult i32 %i.hd, 9
  %min.iters.check284 = icmp ult i32 %i.hd, 33
  %i.iw = and i64 %i.ip, 24
  %n.vec286 = and i64 %i.ip, -32                  ; 4 uses
  %i.ix = or disjoint i64 %n.vec286, 1
  %cmp.n299 = icmp eq i64 %i.ip, %n.vec286
  %min.epilog.iters.check305 = icmp eq i64 %i.iw, 0
  %n.vec307 = and i64 %i.ip, -8                   ; 3 uses
  %i.iy = or disjoint i64 %n.vec307, 1
  %cmp.n314 = icmp eq i64 %i.ip, %n.vec307
  %i.iz = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check249 = icmp ult i64 %i.iz, 8
  %n.vec251 = and i64 %i.iz, -8                   ; 3 uses
  %i.ja = or disjoint i64 %n.vec251, 1
  %broadcast.splatinsert254 = insertelement <8 x i64> poison, i64 %i.hv, i64 0
  %broadcast.splat255 = shufflevector <8 x i64> %broadcast.splatinsert254, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert256 = insertelement <8 x float> poison, float %i.hu, i64 0
  %i.jb = shufflevector <8 x float> %broadcast.splatinsert256, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n271 = icmp eq i64 %i.iz, %n.vec251
  %min.iters.check189 = icmp ult i32 %i.hd, 9
  %min.iters.check191 = icmp ult i32 %i.hd, 33
  %i.jc = and i64 %i.ip, 24
  %n.vec193 = and i64 %i.ip, -32                  ; 4 uses
  %i.jd = or disjoint i64 %n.vec193, 1
  %cmp.n206 = icmp eq i64 %i.ip, %n.vec193
  %min.epilog.iters.check212 = icmp eq i64 %i.jc, 0
  %n.vec214 = and i64 %i.ip, -8                   ; 3 uses
  %i.je = or disjoint i64 %n.vec214, 1
  %cmp.n221 = icmp eq i64 %i.ip, %n.vec214
  %i.jf = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.jf, 8
  %n.vec160 = and i64 %i.jf, -8                   ; 3 uses
  %i.jg = or disjoint i64 %n.vec160, 1
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.hv, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <8 x float> poison, float %i.hu, i64 0
  %i.jh = shufflevector <8 x float> %broadcast.splatinsert165, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n177 = icmp eq i64 %i.jf, %n.vec160
  br label %.lr.ph272.split.i

.lr.ph272.split.us.i:                             ; preds = %.loopexit230.us.i, %.lr.ph272.split.us.preheader.i
  %indvars.iv313.i = phi i64 [ 0, %.lr.ph272.split.us.preheader.i ], [ %indvars.iv.next314.i, %.loopexit230.us.i ] ; 4 uses
  %i.ji = shl nuw nsw i64 %indvars.iv313.i, 4
  %i.jj = and i64 %i.ji, 17179869168              ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv313.i
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !106
  %.pre429.i = sext i32 %i.jl to i64              ; 2 uses
  br i1 %i.hl, label %.preheader229.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph272.split.us.i
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.pre429.i
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !155
  %i.jo = fcmp une float %i.jn, 0.000000e+00
  br i1 %i.jo, label %.preheader229.us.i, label %.loopexit230.us.i

.preheader229.us.i:                               ; preds = %bb.k, %.lr.ph272.split.us.i
  %i.jp = getelementptr inbounds [12 x i8], ptr %i.hf, i64 %.pre429.i ; 3 uses
  %i.jq = shl nuw nsw i64 %indvars.iv313.i, 2     ; 6 uses
  %i.jr = load ptr, ptr %i.ha, align 8, !tbaa !277 ; 4 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jq
  %i.jt = or disjoint i64 %i.jq, 1                ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = or disjoint i64 %i.jq, 2                ; 3 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jv
  %i.jx = or disjoint i64 %i.jq, 3                ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jx
  %i.jz = load ptr, ptr %i.gz, align 8, !tbaa !277
  %scevgep305.i = getelementptr nuw i8, ptr %i.jz, i64 %i.jj
  %i.ka = load float, ptr %i.jp, align 4, !tbaa !155 ; 9 uses
  %i.kb = fsub float 1.000000e+00, %i.ka          ; 4 uses
  %i.kc = fmul float %i.ka, 5.000000e-01
  %i.kd = fsub float 2.000000e+00, %i.ka          ; 2 uses
  %i.ke = fmul float %i.kb, 5.000000e-01
  %i.kf = fmul float %i.ka, %i.kd
  %i.kg = fadd float %i.ka, 1.000000e+00          ; 2 uses
  %i.kh = fadd float %i.ka, 2.000000e+00
  %i.ki = call float @llvm.fmuladd.f32(float %i.kg, float %i.kb, float %i.kf)
  %i.kj = fmul float %i.ki, 5.000000e-01          ; 4 uses
  %i.kk = fmul float %i.kb, %i.ke                 ; 4 uses
  %i.kl = fmul float %i.ka, %i.kc                 ; 4 uses
  %i.km = fneg float %i.kk
  store float %i.km, ptr %i.js, align 4, !tbaa !155
  %i.kn = fsub float %i.kk, %i.kj
  store float %i.kn, ptr %i.ju, align 4, !tbaa !155
  %i.ko = fsub float %i.kj, %i.kl
  store float %i.ko, ptr %i.jw, align 4, !tbaa !155
  store float %i.kl, ptr %i.jy, align 4, !tbaa !155
  %i.kp = fmul float %i.ka, f0x3EAAAAAB
  %i.kq = fsub float 3.000000e+00, %i.ka
  %i.kr = fmul float %i.kq, %i.kl
  %i.ks = fmul float %i.kd, %i.kj
  %i.kt = fmul float %i.kb, f0x3EAAAAAB
  %i.ku = call float @llvm.fmuladd.f32(float %i.kg, float %i.kj, float %i.kr)
  %i.kv = call float @llvm.fmuladd.f32(float %i.kh, float %i.kk, float %i.ks)
  %i.kw = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.kx = insertelement <4 x float> %i.kw, float %i.kv, i64 1
  %i.ky = insertelement <4 x float> %i.kx, float %i.ku, i64 2
  %i.kz = insertelement <4 x float> %i.ky, float %i.kp, i64 3
  %i.la = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.kk, i64 0
  %i.lb = insertelement <4 x float> %i.la, float %i.kl, i64 3
  %i.lc = fmul <4 x float> %i.kz, %i.lb
  store <4 x float> %i.lc, ptr %scevgep305.i, align 4, !tbaa !155
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.le = load ptr, ptr %i.ie, align 8, !tbaa !277 ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.jq
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.jt
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.jv
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.jx
  %i.lj = load ptr, ptr %i.if, align 8, !tbaa !277
  %scevgep305.1.i = getelementptr nuw i8, ptr %i.lj, i64 %i.jj
  %i.lk = load float, ptr %i.ld, align 4, !tbaa !155 ; 9 uses
  %i.ll = fsub float 1.000000e+00, %i.lk          ; 4 uses
  %i.lm = fmul float %i.lk, 5.000000e-01
  %i.ln = fsub float 2.000000e+00, %i.lk          ; 2 uses
  %i.lo = fmul float %i.ll, 5.000000e-01
  %i.lp = fmul float %i.lk, %i.ln
  %i.lq = fadd float %i.lk, 1.000000e+00          ; 2 uses
  %i.lr = fadd float %i.lk, 2.000000e+00
  %i.ls = call float @llvm.fmuladd.f32(float %i.lq, float %i.ll, float %i.lp)
  %i.lt = fmul float %i.ls, 5.000000e-01          ; 4 uses
  %i.lu = fmul float %i.ll, %i.lo                 ; 4 uses
  %i.lv = fmul float %i.lk, %i.lm                 ; 4 uses
  %i.lw = fneg float %i.lu
  store float %i.lw, ptr %i.lf, align 4, !tbaa !155
  %i.lx = fsub float %i.lu, %i.lt
  store float %i.lx, ptr %i.lg, align 4, !tbaa !155
  %i.ly = fsub float %i.lt, %i.lv
  store float %i.ly, ptr %i.lh, align 4, !tbaa !155
  store float %i.lv, ptr %i.li, align 4, !tbaa !155
  %i.lz = fmul float %i.lk, f0x3EAAAAAB
  %i.ma = fsub float 3.000000e+00, %i.lk
  %i.mb = fmul float %i.ma, %i.lv
  %i.mc = fmul float %i.ln, %i.lt
  %i.md = fmul float %i.ll, f0x3EAAAAAB
  %i.me = call float @llvm.fmuladd.f32(float %i.lq, float %i.lt, float %i.mb)
  %i.mf = call float @llvm.fmuladd.f32(float %i.lr, float %i.lu, float %i.mc)
  %i.mg = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mh = insertelement <4 x float> %i.mg, float %i.mf, i64 1
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 2
  %i.mj = insertelement <4 x float> %i.mi, float %i.lz, i64 3
  %i.mk = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.lu, i64 0
  %i.ml = insertelement <4 x float> %i.mk, float %i.lv, i64 3
  %i.mm = fmul <4 x float> %i.mj, %i.ml
  store <4 x float> %i.mm, ptr %scevgep305.1.i, align 4, !tbaa !155
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.mo = load ptr, ptr %i.ig, align 8, !tbaa !277 ; 4 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.jq
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.jt
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.jv
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.jx
  %i.mt = load ptr, ptr %i.ih, align 8, !tbaa !277
  %scevgep305.2.i = getelementptr nuw i8, ptr %i.mt, i64 %i.jj
  %i.mu = load float, ptr %i.mn, align 4, !tbaa !155 ; 9 uses
  %i.mv = fsub float 1.000000e+00, %i.mu          ; 4 uses
  %i.mw = fmul float %i.mu, 5.000000e-01
  %i.mx = fsub float 2.000000e+00, %i.mu          ; 2 uses
  %i.my = fmul float %i.mv, 5.000000e-01
  %i.mz = fmul float %i.mu, %i.mx
  %i.na = fadd float %i.mu, 1.000000e+00          ; 2 uses
  %i.nb = fadd float %i.mu, 2.000000e+00
  %i.nc = call float @llvm.fmuladd.f32(float %i.na, float %i.mv, float %i.mz)
  %i.nd = fmul float %i.nc, 5.000000e-01          ; 4 uses
  %i.ne = fmul float %i.mv, %i.my                 ; 4 uses
  %i.nf = fmul float %i.mu, %i.mw                 ; 4 uses
  %i.ng = fneg float %i.ne
  store float %i.ng, ptr %i.mp, align 4, !tbaa !155
  %i.nh = fsub float %i.ne, %i.nd
  store float %i.nh, ptr %i.mq, align 4, !tbaa !155
  %i.ni = fsub float %i.nd, %i.nf
  store float %i.ni, ptr %i.mr, align 4, !tbaa !155
  store float %i.nf, ptr %i.ms, align 4, !tbaa !155
  %i.nj = fmul float %i.mu, f0x3EAAAAAB
  %i.nk = fsub float 3.000000e+00, %i.mu
  %i.nl = fmul float %i.nk, %i.nf
  %i.nm = fmul float %i.mx, %i.nd
  %i.nn = fmul float %i.mv, f0x3EAAAAAB
  %i.no = call float @llvm.fmuladd.f32(float %i.na, float %i.nd, float %i.nl)
  %i.np = call float @llvm.fmuladd.f32(float %i.nb, float %i.ne, float %i.nm)
  %i.nq = insertelement <4 x float> poison, float %i.nn, i64 0
  %i.nr = insertelement <4 x float> %i.nq, float %i.np, i64 1
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 2
  %i.nt = insertelement <4 x float> %i.ns, float %i.nj, i64 3
  %i.nu = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.ne, i64 0
  %i.nv = insertelement <4 x float> %i.nu, float %i.nf, i64 3
  %i.nw = fmul <4 x float> %i.nt, %i.nv
  store <4 x float> %i.nw, ptr %scevgep305.2.i, align 4, !tbaa !155
  br label %.loopexit230.us.i

.loopexit230.us.i:                                ; preds = %.preheader229.us.i, %bb.k
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %indvars.iv.next314.i, %wide.trip.count316.i
  br i1 %exitcond317.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.us.i, !llvm.loop !278

.lr.ph272.split.us274.i:                          ; preds = %.loopexit232.us.i, %.lr.ph272.split.us274.preheader.i
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph272.split.us274.preheader.i ], [ %indvars.iv.next294.i, %.loopexit232.us.i ] ; 3 uses
  %i.nx = mul nuw nsw i64 %indvars.iv293.i, 20    ; 4 uses
  %i.ny = and i64 %i.nx, 17179869180              ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv293.i
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !106
  %.pre431.i = sext i32 %i.oa to i64              ; 2 uses
  br i1 %i.hl, label %.preheader231.us.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph272.split.us274.i
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.pre431.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !155
  %i.od = fcmp une float %i.oc, 0.000000e+00
  br i1 %i.od, label %.preheader231.us.i, label %.loopexit232.us.i

.preheader231.us.i:                               ; preds = %bb.l, %.lr.ph272.split.us274.i
  %i.oe = getelementptr inbounds [12 x i8], ptr %i.hf, i64 %.pre431.i ; 3 uses
  %i.of = load ptr, ptr %i.ha, align 8, !tbaa !277
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.nx ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ol = load ptr, ptr %i.gz, align 8, !tbaa !277
  %scevgep.i = getelementptr nuw i8, ptr %i.ol, i64 %i.ny ; 2 uses
  %i.om = load float, ptr %i.oe, align 4, !tbaa !155 ; 12 uses
  %i.on = fmul float %i.om, 5.000000e-01
  %i.oo = fsub float 1.000000e+00, %i.om          ; 5 uses
  %i.op = fsub float 4.000000e+00, %i.om
  %i.oq = fsub float 3.000000e+00, %i.om          ; 2 uses
  %i.or = fsub float 2.000000e+00, %i.om          ; 3 uses
  %i.os = fmul float %i.om, %i.or
  %i.ot = fadd float %i.om, 1.000000e+00          ; 3 uses
  %i.ou = fadd float %i.om, 2.000000e+00          ; 2 uses
  %i.ov = fadd float %i.om, 3.000000e+00
  %i.ow = call float @llvm.fmuladd.f32(float %i.ot, float %i.oo, float %i.os)
  %i.ox = fmul float %i.oo, 5.000000e-01
  %i.oy = fmul float %i.om, %i.on                 ; 2 uses
  %i.oz = fmul float %i.ow, 5.000000e-01          ; 2 uses
  %i.pa = fmul float %i.om, f0x3EAAAAAB
  %i.pb = fmul float %i.oq, %i.oy
  %i.pc = fmul float %i.or, %i.oz
  %i.pd = fmul float %i.oo, %i.ox                 ; 2 uses
  %i.pe = call float @llvm.fmuladd.f32(float %i.ot, float %i.oz, float %i.pb)
  %i.pf = call float @llvm.fmuladd.f32(float %i.ou, float %i.pd, float %i.pc)
  %i.pg = fmul float %i.pa, %i.oy                 ; 4 uses
  %i.ph = fmul float %i.oo, f0x3EAAAAAB
  %i.pi = fmul float %i.pe, f0x3EAAAAAB           ; 4 uses
  %i.pj = fmul float %i.pf, f0x3EAAAAAB           ; 4 uses
  %i.pk = fmul float %i.ph, %i.pd                 ; 4 uses
  %i.pl = fneg float %i.pk
  store float %i.pl, ptr %i.og, align 4, !tbaa !155
  %i.pm = fsub float %i.pk, %i.pj
  store float %i.pm, ptr %i.oh, align 4, !tbaa !155
  %i.pn = fsub float %i.pj, %i.pi
  store float %i.pn, ptr %i.oi, align 4, !tbaa !155
  %i.po = fsub float %i.pi, %i.pg
  store float %i.po, ptr %i.oj, align 4, !tbaa !155
  store float %i.pg, ptr %i.ok, align 4, !tbaa !155
  %i.pp = fmul float %i.om, 2.500000e-01
  %i.pq = fmul float %i.pp, %i.pg
  %i.pr = fmul float %i.op, %i.pg
  %i.ps = fmul float %i.oq, %i.pi
  %i.pt = fmul float %i.or, %i.pj
  %i.pu = fmul float %i.oo, 2.500000e-01
  %i.pv = call float @llvm.fmuladd.f32(float %i.ot, float %i.pi, float %i.pr)
  %i.pw = call float @llvm.fmuladd.f32(float %i.ou, float %i.pj, float %i.ps)
  %i.px = call float @llvm.fmuladd.f32(float %i.ov, float %i.pk, float %i.pt)
  %i.py = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.pz = insertelement <4 x float> %i.py, float %i.px, i64 1
  %i.qa = insertelement <4 x float> %i.pz, float %i.pw, i64 2
  %i.qb = insertelement <4 x float> %i.qa, float %i.pv, i64 3
end_hunk_0
