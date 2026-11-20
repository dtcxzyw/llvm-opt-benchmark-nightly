Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 271
begin_hunk_0_@ggml_compute_forward_gla:bb.a
  %i.hn = add i64 %.0154.us.us.us.us.us.us.us.us.i, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hm
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !43
  %i.hq = fmul float %i.el, %i.hp
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hn
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !43
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.eq, float %i.hq) ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hm ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !43
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.eo, float %i.hv)
  store float %i.hw, ptr %i.hu, align 4, !tbaa !43
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.hn
  store float %i.ht, ptr %i.hx, align 4, !tbaa !43
  %i.hy = add nuw nsw i64 %.0154.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.hz = add i64 %i.hy, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.ia = add i64 %i.hy, %reass.mul152.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hz
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !43
  %i.id = fmul float %i.el, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ia
  %i.if = load float, ptr %i.ie, align 4, !tbaa !43
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.if, float %i.eq, float %i.id) ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hz ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !43
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.eo, float %i.ii)
  store float %i.ij, ptr %i.ih, align 4, !tbaa !43
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ia
  store float %i.ig, ptr %i.ik, align 4, !tbaa !43
  %i.il = add nuw nsw i64 %.0154.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %exitcond197.not.i.1 = icmp eq i64 %i.il, %i.p
  br i1 %exitcond197.not.i.1, label %._crit_edge157.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i, !llvm.loop !1755

._crit_edge157.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i, %middle.block153
  %i.im = add nuw nsw i64 %.0143158.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %i.im, %i.p
  br i1 %exitcond198.not.i, label %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.i, !llvm.loop !1756

._crit_edge161.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge157.us.us.us.us.us.us.us.us.i
  %i.in = add nsw i64 %.0144162.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %i.in, %i.bg
  %indvar.next107 = add i64 %indvar106, 1
  br i1 %exitcond199.not.i, label %._crit_edge.split164.us.split.us.us.us.us.us.i, label %.lr.ph160.us.us.us.us.us.us.i, !llvm.loop !1757

._crit_edge.split164.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge161.split.us.us.split.us.us.us.us.us.us.i
  %i.io = add nuw nsw i64 %.0145165.us.us.us.us.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %i.io, %i.g
  br i1 %exitcond200.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph167.split.us.split.us.split.us.split.us.i, !llvm.loop !1758

.lr.ph167.split.us.split.us.split.us.split.i:     ; preds = %.lr.ph167.split.us.split.us.split.us.split.i.preheader, %._crit_edge.split164.us.split.us180.us.us.i
  %.0145165.us.us.us.i = phi i64 [ %i.lf, %._crit_edge.split164.us.split.us180.us.us.i ], [ 0, %.lr.ph167.split.us.split.us.split.us.split.i.preheader ] ; 4 uses
  %i.ip = mul i64 %.0145165.us.us.us.i, %i.k
  %i.iq = sdiv i64 %.0145165.us.us.us.i, %i.bc
  %i.ir = mul nsw i64 %i.iq, %i.bb                ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ir ; 3 uses
  %i.it = srem i64 %.0145165.us.us.us.i, %i.bc
  %.not.us.us.us.i = icmp eq i64 %i.it, 0
  br i1 %.not.us.us.us.i, label %bb.h, label %.lr.ph.us.us.us.i

bb.h:                                             ; preds = %.lr.ph167.split.us.split.us.split.us.split.i
  %i.iu = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 248
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !37
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %bb.h, %.lr.ph167.split.us.split.us.split.us.split.i
  %i.ix = phi ptr [ %i.iw, %bb.h ], [ %i.v, %.lr.ph167.split.us.split.us.split.us.split.i ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.ir ; 3 uses
  br label %.lr.ph160.us.us176.us.us.i

.lr.ph160.us.us176.us.us.i:                       ; preds = %._crit_edge161.split.us.us.split.us.us.us.i, %.lr.ph.us.us.us.i
  %.0144162.us.us177.us.us.i = phi i64 [ %i.be, %.lr.ph.us.us.us.i ], [ %i.le, %._crit_edge161.split.us.us.split.us.us.us.i ] ; 3 uses
  %reass.add.us.us178.us.us.i = add i64 %.0144162.us.us177.us.us.i, %i.ip
  %reass.mul.us.us179.us.us.i = mul i64 %reass.add.us.us178.us.us.i, %i.p ; 4 uses
  %i.iz = mul i64 %.0144162.us.us177.us.us.i, %i.p
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.lr.ph160.us.us176.us.us.i
  %.0143158.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph160.us.us176.us.us.i ], [ %i.ld, %._crit_edge.us.us.us.us.us.i ] ; 3 uses
  %i.ja = add i64 %.0143158.us.us.us.us.us.i, %reass.mul.us.us179.us.us.i ; 3 uses
  %reass.add151.us.us.us.us.us.i = add i64 %.0143158.us.us.us.us.us.i, %i.iz
  %reass.mul152.us.us.us.us.us.i = mul i64 %reass.add151.us.us.us.us.us.i, %i.p ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ja
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !43
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ja
  %i.je = load float, ptr %i.jd, align 4, !tbaa !43
  %i.jf = fmul float %i.r, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ja
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !43
  %i.ji = insertelement <16 x float> poison, float %i.jc, i64 0
  %i.jj = shufflevector <16 x float> %i.ji, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jk = insertelement <16 x float> poison, float %i.jf, i64 0
  %i.jl = shufflevector <16 x float> %i.jk, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jm = insertelement <16 x float> poison, float %i.jh, i64 0
  %i.jn = shufflevector <16 x float> %i.jm, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.i.new:                      ; preds = %.lr.ph.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.i.new
  %.0142153.us.us.us.us.us.i = phi i64 [ %i.kp, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ]
  %i.jo = shl nuw nsw i64 %.0142153.us.us.us.us.us.i, 4 ; 2 uses
  %i.jp = add i64 %i.jo, %reass.mul.us.us179.us.us.i ; 2 uses
  %i.jq = add i64 %i.jo, %reass.mul152.us.us.us.us.us.i ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.jp
  %i.js = load <16 x float>, ptr %i.jr, align 1, !tbaa !56
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jq
  %i.ju = load <16 x float>, ptr %i.jt, align 1, !tbaa !56
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.jp ; 2 uses
  %i.jw = load <16 x float>, ptr %i.jv, align 1, !tbaa !56
  %i.jx = fmul <16 x float> %i.jj, %i.js
  %i.jy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ju, <16 x float> %i.jn, <16 x float> %i.jx) ; 2 uses
  %i.jz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jy, <16 x float> %i.jl, <16 x float> %i.jw)
  store <16 x float> %i.jz, ptr %i.jv, align 1, !tbaa !56
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.jq
  store <16 x float> %i.jy, ptr %i.ka, align 1, !tbaa !56
  %i.kb = shl i64 %.0142153.us.us.us.us.us.i, 4
  %i.kc = or disjoint i64 %i.kb, 16               ; 2 uses
  %i.kd = add i64 %i.kc, %reass.mul.us.us179.us.us.i ; 2 uses
  %i.ke = add i64 %i.kc, %reass.mul152.us.us.us.us.us.i ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kd
  %i.kg = load <16 x float>, ptr %i.kf, align 1, !tbaa !56
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ke
  %i.ki = load <16 x float>, ptr %i.kh, align 1, !tbaa !56
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kd ; 2 uses
  %i.kk = load <16 x float>, ptr %i.kj, align 1, !tbaa !56
  %i.kl = fmul <16 x float> %i.jj, %i.kg
  %i.km = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ki, <16 x float> %i.jn, <16 x float> %i.kl) ; 2 uses
  %i.kn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.km, <16 x float> %i.jl, <16 x float> %i.kk)
  store <16 x float> %i.kn, ptr %i.kj, align 1, !tbaa !56
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ke
  store <16 x float> %i.km, ptr %i.ko, align 1, !tbaa !56
  %i.kp = add nuw nsw i64 %.0142153.us.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.us.us.i.new, !llvm.loop !1748

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.lr.ph.us.us.us.us.us.i.new
  br i1 %lcmp.mod162.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.us.us.i
  %.0142153.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %i.kp, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.kq = shl nuw nsw i64 %.0142153.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.kr = add i64 %i.kq, %reass.mul.us.us179.us.us.i ; 2 uses
  %i.ks = add i64 %i.kq, %reass.mul152.us.us.us.us.us.i ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kr
  %i.ku = load <16 x float>, ptr %i.kt, align 1, !tbaa !56
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ks
  %i.kw = load <16 x float>, ptr %i.kv, align 1, !tbaa !56
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kr ; 2 uses
  %i.ky = load <16 x float>, ptr %i.kx, align 1, !tbaa !56
  %i.kz = fmul <16 x float> %i.jj, %i.ku
  %i.la = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kw, <16 x float> %i.jn, <16 x float> %i.kz) ; 2 uses
  %i.lb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.la, <16 x float> %i.jl, <16 x float> %i.ky)
  store <16 x float> %i.lb, ptr %i.kx, align 1, !tbaa !56
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ks
  store <16 x float> %i.la, ptr %i.lc, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.ld = add nuw nsw i64 %.0143158.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %i.ld, %i.p
  br i1 %exitcond193.not.i, label %._crit_edge161.split.us.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1756

._crit_edge161.split.us.us.split.us.us.us.i:      ; preds = %._crit_edge.us.us.us.us.us.i
  %i.le = add nsw i64 %.0144162.us.us177.us.us.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %i.le, %i.bg
  br i1 %exitcond194.not.i, label %._crit_edge.split164.us.split.us180.us.us.i, label %.lr.ph160.us.us176.us.us.i, !llvm.loop !1757

._crit_edge.split164.us.split.us180.us.us.i:      ; preds = %._crit_edge161.split.us.us.split.us.us.us.i
  %i.lf = add nuw nsw i64 %.0145165.us.us.us.i, 1 ; 2 uses
  %exitcond195.not.i = icmp eq i64 %i.lf, %i.g
  br i1 %exitcond195.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph167.split.us.split.us.split.us.split.i, !llvm.loop !1758

.lr.ph167.split.us.split.us.split.i:              ; preds = %.lr.ph167.split.us.split.us.i
  br i1 %i.bj, label %.lr.ph167.split.us.split.us.split.split.us.i.preheader, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph167.split.us.split.us.split.split.us.i.preheader: ; preds = %.lr.ph167.split.us.split.us.split.i
  %i.lg = ashr exact i64 %i.bd, 30
  %i.lh = add nsw i64 %i.lg, 4                    ; 2 uses
  %i.li = mul nsw i64 %i.p, %i.lh
  %i.lj = shl i64 %i.i, 2
  %i.lk = mul nuw nsw i64 %i.p, %i.p
  %i.ll = shl nuw nsw i64 %i.lk, 2
  %i.lm = mul nsw i64 %i.p, %i.be
  %i.ln = shl i64 %i.lm, 2                        ; 2 uses
  %i.lo = add nsw i64 %i.be, 1
  %i.lp = mul nsw i64 %i.p, %i.lo
  %i.lq = shl i64 %i.lp, 2
  %i.lr = mul i64 %i.k, %i.p
  %i.ls = shl i64 %i.lr, 2
  %i.lt = shl nuw nsw i64 %i.p, 2
  %i.lu = mul nuw nsw i64 %i.p, %i.p              ; 2 uses
  %i.lv = mul nsw i64 %i.lu, %i.lh
  %i.lw = shl i64 %i.g, 2
  %i.lx = shl nuw nsw i64 %i.p, 2
  %i.ly = mul nsw i64 %i.lu, %i.be
  %i.lz = shl i64 %i.ly, 2
  %i.ma = getelementptr i8, ptr %i.t, i64 %i.lv
  %i.mb = getelementptr i8, ptr %i.t, i64 %i.lz
  %i.mc = sub nuw nsw i64 %i.p, %i.bi             ; 2 uses
  %min.iters.check = icmp ult i64 %i.mc, 16
  %i.md = and i64 %i.p, 7                         ; 2 uses
  %n.vec = sub nsw i64 %i.mc, %i.md               ; 2 uses
  %cmp.n = icmp eq i64 %i.md, 0
  br label %.lr.ph167.split.us.split.us.split.split.us.i

.lr.ph167.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph167.split.us.split.us.split.split.us.i.preheader, %._crit_edge.split164.us174.us.us.i
  %.0145165.us.us.us181.i = phi i64 [ %i.qk, %._crit_edge.split164.us174.us.us.i ], [ 0, %.lr.ph167.split.us.split.us.split.split.us.i.preheader ] ; 5 uses
  %i.me = mul i64 %i.ls, %.0145165.us.us.us181.i  ; 2 uses
  %i.mf = add i64 %i.lq, %i.me
  %i.mg = add i64 %i.ln, %i.me
  %i.mh = mul i64 %.0145165.us.us.us181.i, %i.k
  %i.mi = sdiv i64 %.0145165.us.us.us181.i, %i.bc ; 3 uses
  %i.mj = mul nsw i64 %i.mi, %i.bb                ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.mj ; 4 uses
  %i.ml = srem i64 %.0145165.us.us.us181.i, %i.bc
  %.not.us.us.us182.i = icmp eq i64 %i.ml, 0
  br i1 %.not.us.us.us182.i, label %bb.i, label %.lr.ph.us.us.us183.i

bb.i:                                             ; preds = %.lr.ph167.split.us.split.us.split.split.us.i
  %i.mm = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 248
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !37
  br label %.lr.ph.us.us.us183.i

.lr.ph.us.us.us183.i:                             ; preds = %bb.i, %.lr.ph167.split.us.split.us.split.split.us.i
  %i.mp = phi ptr [ %i.mo, %bb.i ], [ %i.v, %.lr.ph167.split.us.split.us.split.split.us.i ] ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mj ; 4 uses
  %i.mr = mul i64 %i.lj, %i.mi                    ; 2 uses
  %i.ms = add i64 %i.li, %i.mr
  %i.mt = mul i64 %i.p, %i.ms
  %i.mu = add i64 %i.ln, %i.mr
  %i.mv = mul i64 %i.p, %i.mu
  %i.mw = mul i64 %i.lx, %i.mi
  %i.mx = add i64 %i.lw, %i.mw
  %i.my = mul i64 %i.i, %i.mx                     ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mp, i64 %i.mt
  %i.na = getelementptr i8, ptr %i.mp, i64 %i.mv
  %i.nb = getelementptr i8, ptr %i.ma, i64 %i.my
  %i.nc = getelementptr i8, ptr %i.mb, i64 %i.my
  br label %.lr.ph160.us170.us.us.i

.lr.ph160.us170.us.us.i:                          ; preds = %._crit_edge161.split.us.us.us.i, %.lr.ph.us.us.us183.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge161.split.us.us.us.i ], [ 0, %.lr.ph.us.us.us183.i ] ; 3 uses
  %.0144162.us171.us.us.i = phi i64 [ %i.qj, %._crit_edge161.split.us.us.us.i ], [ %i.be, %.lr.ph.us.us.us183.i ] ; 3 uses
  %i.nd = mul i64 %i.ll, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.mz, i64 %i.nd
  %scevgep47 = getelementptr i8, ptr %i.na, i64 %i.nd
  %i.ne = mul i64 %i.lt, %indvar                  ; 2 uses
  %i.nf = add i64 %i.mf, %i.ne                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.ak, i64 %i.nf
  %i.ng = add i64 %i.mg, %i.ne                    ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.ak, i64 %i.ng
  %scevgep50 = getelementptr i8, ptr %i.nb, i64 %i.nd ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.nc, i64 %i.nd ; 2 uses
  %scevgep52 = getelementptr i8, ptr %i.t, i64 %i.nf ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.t, i64 %i.ng ; 2 uses
  %reass.add.us172.us.us.i = add i64 %.0144162.us171.us.us.i, %i.mh
  %reass.mul.us173.us.us.i = mul i64 %reass.add.us172.us.us.i, %i.p ; 5 uses
  %i.nh = mul i64 %.0144162.us171.us.us.i, %i.p
  %i.ni = insertelement <4 x ptr> poison, ptr %scevgep53, i64 0
  %i.nj = insertelement <4 x ptr> %i.ni, ptr %scevgep47, i64 1
  %i.nk = insertelement <4 x ptr> %i.nj, ptr %scevgep51, i64 2 ; 2 uses
  %i.nl = shufflevector <4 x ptr> %i.nk, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nm = insertelement <4 x ptr> poison, ptr %scevgep48, i64 0
  %i.nn = insertelement <4 x ptr> %i.nm, ptr %scevgep52, i64 1
  %i.no = insertelement <4 x ptr> %i.nn, ptr %scevgep50, i64 3 ; 2 uses
  %i.np = shufflevector <4 x ptr> %i.no, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.nq = shufflevector <4 x ptr> %i.nk, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.nr = insertelement <4 x ptr> %i.nq, ptr %scevgep49, i64 0
  %i.ns = shufflevector <4 x ptr> %i.nr, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.nt = shufflevector <4 x ptr> %i.no, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.nu = insertelement <4 x ptr> %i.nt, ptr %scevgep, i64 1
  %i.nv = shufflevector <4 x ptr> %i.nu, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0 = icmp ult ptr %scevgep53, %scevgep50
  %bound1 = icmp ult ptr %scevgep51, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %i.nw = icmp ult <4 x ptr> %i.nl, %i.np
  %i.nx = icmp ult <4 x ptr> %i.ns, %i.nv
  %i.ny = and <4 x i1> %i.nx, %i.nw
  %i.nz = bitcast <4 x i1> %i.ny to i4
  %i.oa = icmp ne i4 %i.nz, 0
  %op.rdx157 = or i1 %i.oa, %found.conflict
  br label %.lr.ph156.us.us.us.i

.lr.ph156.us.us.us.i:                             ; preds = %._crit_edge157.us.us.us.i, %.lr.ph160.us170.us.us.i
  %.0143158.us.us.us.i = phi i64 [ 0, %.lr.ph160.us170.us.us.i ], [ %i.qi, %._crit_edge157.us.us.us.i ] ; 3 uses
  %i.ob = add i64 %.0143158.us.us.us.i, %reass.mul.us173.us.us.i ; 3 uses
  %reass.add151.us.us.us.i = add i64 %.0143158.us.us.us.i, %i.nh
  %reass.mul152.us.us.us.i = mul i64 %reass.add151.us.us.us.i, %i.p ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !43 ; 4 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ob
  %i.of = load float, ptr %i.oe, align 4, !tbaa !43
  %i.og = fmul float %i.r, %i.of                  ; 4 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ob
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !43 ; 4 uses
  %brmerge174 = select i1 %min.iters.check, i1 true, i1 %op.rdx157
  br i1 %brmerge174, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph156.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.od, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.og, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.oi, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.oj = add i64 %index, %reass.mul.us173.us.us.i ; 2 uses
  %i.ok = add i64 %index, %reass.mul152.us.us.us.i ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.oj
  %wide.load = load <8 x float>, ptr %i.ol, align 4, !tbaa !43, !alias.scope !1772
  %i.om = fmul <8 x float> %broadcast.splat, %wide.load
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ok
  %wide.load73 = load <8 x float>, ptr %i.on, align 4, !tbaa !43, !alias.scope !1773
  %i.oo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load73, <8 x float> %broadcast.splat72, <8 x float> %i.om) ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.oj ; 2 uses
  %wide.load74 = load <8 x float>, ptr %i.op, align 4, !tbaa !43, !alias.scope !1774, !noalias !1775
  %i.oq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.oo, <8 x float> %broadcast.splat70, <8 x float> %wide.load74)
  store <8 x float> %i.oq, ptr %i.op, align 4, !tbaa !43, !alias.scope !1774, !noalias !1775
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ok
  store <8 x float> %i.oo, ptr %i.or, align 4, !tbaa !43, !alias.scope !1776, !noalias !1777
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.os = icmp eq i64 %index.next, %n.vec
  br i1 %i.os, label %middle.block, label %vector.body, !llvm.loop !1764

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge157.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph156.us.us.us.i, %middle.block
  %.0154.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bi, %.lr.ph156.us.us.us.i ] ; 6 uses
  %i.ot = sub nsw i64 %i.p, %.0154.us.us.us.i.ph
  %.neg = add nsw i64 %.0154.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.ot, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ou = add i64 %.0154.us.us.us.i.ph, %reass.mul.us173.us.us.i ; 2 uses
  %i.ov = add i64 %.0154.us.us.us.i.ph, %reass.mul152.us.us.us.i ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ou
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !43
  %i.oy = fmul float %i.od, %i.ox
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ov
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !43
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.pa, float %i.oi, float %i.oy) ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ou ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !43
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.og, float %i.pd)
  store float %i.pe, ptr %i.pc, align 4, !tbaa !43
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ov
  store float %i.pb, ptr %i.pf, align 4, !tbaa !43
  %i.pg = add nuw nsw i64 %.0154.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0154.us.us.us.i.unr = phi i64 [ %.0154.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.pg, %scalar.ph.prol ]
  %i.ph = icmp eq i64 %i.p, %.neg
  br i1 %i.ph, label %._crit_edge157.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0154.us.us.us.i = phi i64 [ %i.qh, %scalar.ph ], [ %.0154.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.pi = add i64 %.0154.us.us.us.i, %reass.mul.us173.us.us.i ; 2 uses
  %i.pj = add i64 %.0154.us.us.us.i, %reass.mul152.us.us.us.i ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.pi
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !43
  %i.pm = fmul float %i.od, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pj
  %i.po = load float, ptr %i.pn, align 4, !tbaa !43
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.po, float %i.oi, float %i.pm) ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pi ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !43
  %i.ps = tail call float @llvm.fmuladd.f32(float %i.pp, float %i.og, float %i.pr)
  store float %i.ps, ptr %i.pq, align 4, !tbaa !43
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.pj
  store float %i.pp, ptr %i.pt, align 4, !tbaa !43
  %i.pu = add nuw nsw i64 %.0154.us.us.us.i, 1    ; 2 uses
  %i.pv = add i64 %i.pu, %reass.mul.us173.us.us.i ; 2 uses
  %i.pw = add i64 %i.pu, %reass.mul152.us.us.us.i ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.pv
  %i.py = load float, ptr %i.px, align 4, !tbaa !43
  %i.pz = fmul float %i.od, %i.py
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pw
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !43
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.oi, float %i.pz) ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pv ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !43
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.og, float %i.qe)
  store float %i.qf, ptr %i.qd, align 4, !tbaa !43
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.pw
  store float %i.qc, ptr %i.qg, align 4, !tbaa !43
  %i.qh = add nuw nsw i64 %.0154.us.us.us.i, 2    ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.qh, %i.p
  br i1 %exitcond.not.i.1, label %._crit_edge157.us.us.us.i, label %scalar.ph, !llvm.loop !1765

._crit_edge157.us.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.qi = add nuw nsw i64 %.0143158.us.us.us.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %i.qi, %i.p
end_hunk_0
