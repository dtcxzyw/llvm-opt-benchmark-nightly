Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_rwkv_wkv6:bb.a
  %i.ig = load float, ptr %i.if, align 4, !tbaa !43
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.eq, float %i.ig)
  store float %i.ih, ptr %i.if, align 4, !tbaa !43
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.id, float %i.eu, float %i.ib)
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.hy
  store float %i.ii, ptr %i.ij, align 4, !tbaa !43
  %i.ik = add nuw nsw i64 %.0162.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.il = add i64 %i.ik, %i.dr                    ; 2 uses
  %i.im = add i64 %i.ik, %reass.mul.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.il
  %i.io = load float, ptr %i.in, align 4, !tbaa !43
  %i.ip = fmul float %i.eo, %i.io                 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.im
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !43 ; 2 uses
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.es, float %i.ir)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.il ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !43
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.is, float %i.eq, float %i.iu)
  store float %i.iv, ptr %i.it, align 4, !tbaa !43
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.eu, float %i.ip)
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.im
  store float %i.iw, ptr %i.ix, align 4, !tbaa !43
  %i.iy = add nuw nsw i64 %.0162.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %exitcond201.not.i.1 = icmp eq i64 %i.iy, %i.p
  br i1 %exitcond201.not.i.1, label %._crit_edge165.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i, !llvm.loop !1735

._crit_edge165.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i, %middle.block112
  %i.iz = add nuw nsw i64 %.0152166.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.iz, %i.p
  br i1 %exitcond202.not.i, label %._crit_edge169.split.us.us.split.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.i, !llvm.loop !1736

._crit_edge169.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge165.us.us.us.us.us.us.us.us.i
  %i.ja = add nsw i64 %.0153170.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.ja, %i.bh
  %indvar.next61 = add i64 %indvar60, 1
  br i1 %exitcond203.not.i, label %._crit_edge.split172.us.split.us.us.us.us.us.i, label %.lr.ph168.us.us.us.us.us.us.i, !llvm.loop !1737

._crit_edge.split172.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge169.split.us.us.split.us.us.us.us.us.us.i
  %i.jb = add nuw nsw i64 %.0154173.us.us.us.us.i, 1 ; 2 uses
  %exitcond204.not.i = icmp eq i64 %i.jb, %i.g
  br i1 %exitcond204.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph175.split.us.split.us.split.us.split.us.i, !llvm.loop !1738

.lr.ph175.split.us.split.us.split.us.split.i:     ; preds = %.lr.ph175.split.us.split.us.split.us.split.i.preheader, %._crit_edge.split172.us.split.us184.us.us.i
  %.0154173.us.us.us.i = phi i64 [ %i.ma, %._crit_edge.split172.us.split.us184.us.us.i ], [ 0, %.lr.ph175.split.us.split.us.split.us.split.i.preheader ] ; 4 uses
  %i.jc = mul i64 %.0154173.us.us.us.i, %i.av
  %i.jd = sdiv i64 %.0154173.us.us.us.i, %i.bf
  %i.je = mul nsw i64 %i.jd, %i.be                ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.je ; 3 uses
  %i.jg = srem i64 %.0154173.us.us.us.i, %i.bf
  %.not.us.us.us.i = icmp eq i64 %i.jg, 0
  br i1 %.not.us.us.us.i, label %bb.h, label %.lr.ph.us.us.us.i

bb.h:                                             ; preds = %.lr.ph175.split.us.split.us.split.us.split.i
  %i.jh = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 248
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !37
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %bb.h, %.lr.ph175.split.us.split.us.split.us.split.i
  %i.jk = phi ptr [ %i.jj, %bb.h ], [ %i.t, %.lr.ph175.split.us.split.us.split.us.split.i ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.je ; 3 uses
  br label %.lr.ph168.us.us182.us.us.i

.lr.ph168.us.us182.us.us.i:                       ; preds = %._crit_edge169.split.us.us.split.us.us.us.i, %.lr.ph.us.us.us.i
  %.0153170.us.us183.us.us.i = phi i64 [ %i.bg, %.lr.ph.us.us.us.i ], [ %i.lz, %._crit_edge169.split.us.us.split.us.us.us.i ] ; 2 uses
  %i.jm = mul i64 %.0153170.us.us183.us.us.i, %i.p ; 3 uses
  %i.jn = add i64 %i.jm, %i.jc                    ; 4 uses
  %i.jo = getelementptr [4 x i8], ptr %i.aq, i64 %i.jm
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.lr.ph168.us.us182.us.us.i
  %.0152166.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph168.us.us182.us.us.i ], [ %i.ly, %._crit_edge.us.us.us.us.us.i ] ; 4 uses
  %i.jp = add i64 %.0152166.us.us.us.us.us.i, %i.jn ; 3 uses
  %reass.add.us.us.us.us.us.i = add i64 %.0152166.us.us.us.us.us.i, %i.jm
  %reass.mul.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.i, %i.p ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.jp
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !43
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.jp
  %i.jt = load float, ptr %i.js, align 4, !tbaa !43
  %i.ju = getelementptr [4 x i8], ptr %i.jo, i64 %.0152166.us.us.us.us.us.i
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !43
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.jp
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !43
  %i.jy = insertelement <16 x float> poison, float %i.jr, i64 0
  %i.jz = shufflevector <16 x float> %i.jy, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ka = insertelement <16 x float> poison, float %i.jt, i64 0
  %i.kb = shufflevector <16 x float> %i.ka, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.kc = insertelement <16 x float> poison, float %i.jv, i64 0
  %i.kd = shufflevector <16 x float> %i.kc, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ke = insertelement <16 x float> poison, float %i.jx, i64 0
  %i.kf = shufflevector <16 x float> %i.ke, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.i.new:                      ; preds = %.lr.ph.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.i.new
  %.0151161.us.us.us.us.us.i = phi i64 [ %i.lj, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ]
  %i.kg = shl nuw nsw i64 %.0151161.us.us.us.us.us.i, 4 ; 2 uses
  %i.kh = add i64 %i.kg, %i.jn                    ; 2 uses
  %i.ki = add i64 %i.kg, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.kh
  %i.kk = load <16 x float>, ptr %i.kj, align 1, !tbaa !56
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ki
  %i.km = load <16 x float>, ptr %i.kl, align 1, !tbaa !56 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.kh ; 2 uses
  %i.ko = load <16 x float>, ptr %i.kn, align 1, !tbaa !56
  %i.kp = fmul <16 x float> %i.jz, %i.kk          ; 2 uses
  %i.kq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kp, <16 x float> %i.kd, <16 x float> %i.km)
  %i.kr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kq, <16 x float> %i.kb, <16 x float> %i.ko)
  store <16 x float> %i.kr, ptr %i.kn, align 1, !tbaa !56
  %i.ks = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.km, <16 x float> %i.kf, <16 x float> %i.kp)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ki
  store <16 x float> %i.ks, ptr %i.kt, align 1, !tbaa !56
  %i.ku = shl i64 %.0151161.us.us.us.us.us.i, 4
  %i.kv = or disjoint i64 %i.ku, 16               ; 2 uses
  %i.kw = add i64 %i.kv, %i.jn                    ; 2 uses
  %i.kx = add i64 %i.kv, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.kw
  %i.kz = load <16 x float>, ptr %i.ky, align 1, !tbaa !56
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.kx
  %i.lb = load <16 x float>, ptr %i.la, align 1, !tbaa !56 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.kw ; 2 uses
  %i.ld = load <16 x float>, ptr %i.lc, align 1, !tbaa !56
  %i.le = fmul <16 x float> %i.jz, %i.kz          ; 2 uses
  %i.lf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.le, <16 x float> %i.kd, <16 x float> %i.lb)
  %i.lg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lf, <16 x float> %i.kb, <16 x float> %i.ld)
  store <16 x float> %i.lg, ptr %i.lc, align 1, !tbaa !56
  %i.lh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lb, <16 x float> %i.kf, <16 x float> %i.le)
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.kx
  store <16 x float> %i.lh, ptr %i.li, align 1, !tbaa !56
  %i.lj = add nuw nsw i64 %.0151161.us.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.us.us.i.new, !llvm.loop !1728

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.lr.ph.us.us.us.us.us.i.new
  br i1 %lcmp.mod121.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.us.us.i
  %.0151161.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %i.lj, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.lk = shl nuw nsw i64 %.0151161.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.ll = add i64 %i.lk, %i.jn                    ; 2 uses
  %i.lm = add i64 %i.lk, %reass.mul.us.us.us.us.us.i ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ll
  %i.lo = load <16 x float>, ptr %i.ln, align 1, !tbaa !56
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.lm
  %i.lq = load <16 x float>, ptr %i.lp, align 1, !tbaa !56 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ll ; 2 uses
  %i.ls = load <16 x float>, ptr %i.lr, align 1, !tbaa !56
  %i.lt = fmul <16 x float> %i.jz, %i.lo          ; 2 uses
  %i.lu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lt, <16 x float> %i.kd, <16 x float> %i.lq)
  %i.lv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lu, <16 x float> %i.kb, <16 x float> %i.ls)
  store <16 x float> %i.lv, ptr %i.lr, align 1, !tbaa !56
  %i.lw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lq, <16 x float> %i.kf, <16 x float> %i.lt)
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.lm
  store <16 x float> %i.lw, ptr %i.lx, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.ly = add nuw nsw i64 %.0152166.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %i.ly, %i.p
  br i1 %exitcond197.not.i, label %._crit_edge169.split.us.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1736

._crit_edge169.split.us.us.split.us.us.us.i:      ; preds = %._crit_edge.us.us.us.us.us.i
  %i.lz = add nsw i64 %.0153170.us.us183.us.us.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %i.lz, %i.bh
  br i1 %exitcond198.not.i, label %._crit_edge.split172.us.split.us184.us.us.i, label %.lr.ph168.us.us182.us.us.i, !llvm.loop !1737

._crit_edge.split172.us.split.us184.us.us.i:      ; preds = %._crit_edge169.split.us.us.split.us.us.us.i
  %i.ma = add nuw nsw i64 %.0154173.us.us.us.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %i.ma, %i.g
  br i1 %exitcond199.not.i, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph175.split.us.split.us.split.us.split.i, !llvm.loop !1738

.lr.ph175.split.us.split.us.split.i:              ; preds = %.lr.ph175.split.us.split.us.i
  br i1 %i.bk, label %.lr.ph175.split.us.split.us.split.split.us.i.preheader, label %_ZL34ggml_compute_forward_rwkv_wkv6_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph175.split.us.split.us.split.split.us.i.preheader: ; preds = %.lr.ph175.split.us.split.us.split.i
  %i.mb = mul nsw i64 %i.p, %i.bg
  %i.mc = shl i64 %i.mb, 2                        ; 2 uses
  %i.md = mul i64 %i.k, %i.p
  %i.me = shl i64 %i.md, 2
  %i.mf = shl nuw nsw i64 %i.p, 2
  %i.mg = add nsw i64 %i.bg, 1
  %i.mh = mul nsw i64 %i.p, %i.mg
  %i.mi = shl i64 %i.mh, 2
  %i.mj = mul nuw nsw i64 %i.p, %i.p
  %i.mk = mul nsw i64 %i.mj, %i.bg
  %i.ml = shl i64 %i.mk, 2
  %i.mm = shl i64 %i.g, 2
  %i.mn = shl nuw nsw i64 %i.p, 2
  %i.mo = mul nuw nsw i64 %i.p, %i.p              ; 2 uses
  %i.mp = shl nuw nsw i64 %i.mo, 2
  %i.mq = ashr exact i64 %sext.i, 30
  %i.mr = add nsw i64 %i.mq, 4                    ; 2 uses
  %i.ms = mul nsw i64 %i.mo, %i.mr
  %i.mt = shl i64 %i.i, 2
  %i.mu = mul nsw i64 %i.p, %i.mr
  %i.mv = getelementptr i8, ptr %i.r, i64 %i.ml
  %i.mw = getelementptr i8, ptr %i.r, i64 %i.ms
  %i.mx = sub nuw nsw i64 %i.p, %i.bj             ; 2 uses
  %min.iters.check = icmp ult i64 %i.mx, 16
  %i.my = and i64 %i.p, 7                         ; 2 uses
  %n.vec = sub nsw i64 %i.mx, %i.my               ; 2 uses
  %cmp.n = icmp eq i64 %i.my, 0
  br label %.lr.ph175.split.us.split.us.split.split.us.i

.lr.ph175.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph175.split.us.split.us.split.split.us.i.preheader, %._crit_edge.split172.us180.us.us.i
  %.0154173.us.us.us185.i = phi i64 [ %i.rm, %._crit_edge.split172.us180.us.us.i ], [ 0, %.lr.ph175.split.us.split.us.split.split.us.i.preheader ] ; 5 uses
  %i.mz = mul i64 %i.me, %.0154173.us.us.us185.i  ; 2 uses
  %i.na = add i64 %i.mc, %i.mz
  %i.nb = add i64 %i.mi, %i.mz
  %i.nc = mul i64 %.0154173.us.us.us185.i, %i.av
  %i.nd = sdiv i64 %.0154173.us.us.us185.i, %i.bf ; 3 uses
  %i.ne = mul nsw i64 %i.nd, %i.be                ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ne ; 4 uses
  %i.ng = srem i64 %.0154173.us.us.us185.i, %i.bf
  %.not.us.us.us186.i = icmp eq i64 %i.ng, 0
  br i1 %.not.us.us.us186.i, label %bb.i, label %.lr.ph.us.us.us187.i

bb.i:                                             ; preds = %.lr.ph175.split.us.split.us.split.split.us.i
  %i.nh = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 248
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !37
  br label %.lr.ph.us.us.us187.i

.lr.ph.us.us.us187.i:                             ; preds = %bb.i, %.lr.ph175.split.us.split.us.split.split.us.i
  %i.nk = phi ptr [ %i.nj, %bb.i ], [ %i.t, %.lr.ph175.split.us.split.us.split.split.us.i ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ne ; 4 uses
  %i.nm = mul i64 %i.mn, %i.nd
  %i.nn = add i64 %i.mm, %i.nm
  %i.no = mul i64 %i.i, %i.nn                     ; 2 uses
  %i.np = mul i64 %i.mt, %i.nd                    ; 2 uses
  %i.nq = add i64 %i.mc, %i.np
  %i.nr = mul i64 %i.p, %i.nq
  %i.ns = add i64 %i.mu, %i.np
  %i.nt = mul i64 %i.p, %i.ns
  %i.nu = getelementptr i8, ptr %i.mv, i64 %i.no
  %i.nv = getelementptr i8, ptr %i.mw, i64 %i.no
  %i.nw = getelementptr i8, ptr %i.nk, i64 %i.nr
  %i.nx = getelementptr i8, ptr %i.nk, i64 %i.nt
  br label %.lr.ph168.us178.us.us.i

.lr.ph168.us178.us.us.i:                          ; preds = %._crit_edge169.split.us.us.us.i, %.lr.ph.us.us.us187.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge169.split.us.us.us.i ], [ 0, %.lr.ph.us.us.us187.i ] ; 3 uses
  %.0153170.us179.us.us.i = phi i64 [ %i.rl, %._crit_edge169.split.us.us.us.i ], [ %i.bg, %.lr.ph.us.us.us187.i ] ; 2 uses
  %i.ny = mul i64 %i.mf, %indvar                  ; 2 uses
  %i.nz = add i64 %i.na, %i.ny                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.nz ; 2 uses
  %i.oa = add i64 %i.nb, %i.ny                    ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.r, i64 %i.oa ; 2 uses
  %i.ob = mul i64 %i.mp, %indvar                  ; 4 uses
  %scevgep26 = getelementptr i8, ptr %i.nu, i64 %i.ob ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.nv, i64 %i.ob ; 2 uses
  %scevgep28 = getelementptr i8, ptr %i.ai, i64 %i.nz
  %scevgep29 = getelementptr i8, ptr %i.ai, i64 %i.oa
  %scevgep30 = getelementptr i8, ptr %i.nw, i64 %i.ob
  %scevgep31 = getelementptr i8, ptr %i.nx, i64 %i.ob
  %i.oc = mul i64 %.0153170.us179.us.us.i, %i.p   ; 3 uses
  %i.od = add i64 %i.oc, %i.nc                    ; 5 uses
  %i.oe = getelementptr [4 x i8], ptr %i.aq, i64 %i.oc
  %i.of = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.og = insertelement <4 x ptr> %i.of, ptr %scevgep30, i64 1
  %i.oh = insertelement <4 x ptr> %i.og, ptr %scevgep26, i64 2 ; 2 uses
  %i.oi = shufflevector <4 x ptr> %i.oh, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.oj = insertelement <4 x ptr> poison, ptr %scevgep29, i64 0
  %i.ok = insertelement <4 x ptr> %i.oj, ptr %scevgep25, i64 1
  %i.ol = insertelement <4 x ptr> %i.ok, ptr %scevgep27, i64 3 ; 2 uses
  %i.om = shufflevector <4 x ptr> %i.ol, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.on = shufflevector <4 x ptr> %i.oh, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.oo = insertelement <4 x ptr> %i.on, ptr %scevgep28, i64 0
  %i.op = shufflevector <4 x ptr> %i.oo, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.oq = shufflevector <4 x ptr> %i.ol, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.or = insertelement <4 x ptr> %i.oq, ptr %scevgep31, i64 1
  %i.os = shufflevector <4 x ptr> %i.or, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0 = icmp ult ptr %scevgep, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %i.ot = icmp ult <4 x ptr> %i.oi, %i.om
  %i.ou = icmp ult <4 x ptr> %i.op, %i.os
  %i.ov = and <4 x i1> %i.ou, %i.ot
  %i.ow = bitcast <4 x i1> %i.ov to i4
  %i.ox = icmp ne i4 %i.ow, 0
  %op.rdx116 = or i1 %i.ox, %found.conflict
  br label %.lr.ph164.us.us.us.i

.lr.ph164.us.us.us.i:                             ; preds = %._crit_edge165.us.us.us.i, %.lr.ph168.us178.us.us.i
  %.0152166.us.us.us.i = phi i64 [ 0, %.lr.ph168.us178.us.us.i ], [ %i.rk, %._crit_edge165.us.us.us.i ] ; 4 uses
  %i.oy = add i64 %.0152166.us.us.us.i, %i.od     ; 3 uses
  %reass.add.us.us.us.i = add i64 %.0152166.us.us.us.i, %i.oc
  %reass.mul.us.us.us.i = mul i64 %reass.add.us.us.us.i, %i.p ; 4 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.oy
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !43 ; 4 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.oy
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !43 ; 4 uses
  %i.pd = getelementptr [4 x i8], ptr %i.oe, i64 %.0152166.us.us.us.i
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !43 ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.oy
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !43 ; 4 uses
  %brmerge133 = select i1 %min.iters.check, i1 true, i1 %op.rdx116
  br i1 %brmerge133, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph164.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.pa, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51.a = insertelement <8 x float> poison, float %i.pc, i64 0
  %broadcast.splat52.a = shufflevector <8 x float> %broadcast.splatinsert51.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <8 x float> poison, float %i.pe, i64 0
  %broadcast.splat54 = shufflevector <8 x float> %broadcast.splatinsert53, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.pg, i64 0
  %broadcast.splat56 = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ph = add i64 %index, %i.od                   ; 2 uses
  %i.pi = add i64 %index, %reass.mul.us.us.us.i   ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ph
  %wide.load = load <8 x float>, ptr %i.pj, align 4, !tbaa !43, !alias.scope !1752
  %i.pk = fmul <8 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.pi
  %wide.load57 = load <8 x float>, ptr %i.pl, align 4, !tbaa !43, !alias.scope !1753 ; 2 uses
  %i.pm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pk, <8 x float> %broadcast.splat54, <8 x float> %wide.load57)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ph ; 2 uses
  %wide.load58 = load <8 x float>, ptr %i.pn, align 4, !tbaa !43, !alias.scope !1754, !noalias !1755
  %i.po = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pm, <8 x float> %broadcast.splat52.a, <8 x float> %wide.load58)
  store <8 x float> %i.po, ptr %i.pn, align 4, !tbaa !43, !alias.scope !1754, !noalias !1755
  %i.pp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load57, <8 x float> %broadcast.splat56, <8 x float> %i.pk)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.pi
  store <8 x float> %i.pp, ptr %i.pq, align 4, !tbaa !43, !alias.scope !1756, !noalias !1757
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pr = icmp eq i64 %index.next, %n.vec
  br i1 %i.pr, label %middle.block, label %vector.body, !llvm.loop !1744

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge165.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph164.us.us.us.i, %middle.block
  %.0162.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bj, %.lr.ph164.us.us.us.i ] ; 6 uses
  %i.ps = sub nsw i64 %i.p, %.0162.us.us.us.i.ph
  %.neg = add nsw i64 %.0162.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.ps, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.pt = add i64 %.0162.us.us.us.i.ph, %i.od     ; 2 uses
  %i.pu = add i64 %.0162.us.us.us.i.ph, %reass.mul.us.us.us.i ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.pt
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !43
  %i.px = fmul float %i.pa, %i.pw                 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.pu
  %i.pz = load float, ptr %i.py, align 4, !tbaa !43 ; 2 uses
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.px, float %i.pe, float %i.pz)
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.pt ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !43
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.pc, float %i.qc)
  store float %i.qd, ptr %i.qb, align 4, !tbaa !43
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.pg, float %i.px)
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.pu
  store float %i.qe, ptr %i.qf, align 4, !tbaa !43
  %i.qg = add nuw nsw i64 %.0162.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0162.us.us.us.i.unr = phi i64 [ %.0162.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.qg, %scalar.ph.prol ]
  %i.qh = icmp eq i64 %i.p, %.neg
  br i1 %i.qh, label %._crit_edge165.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0162.us.us.us.i = phi i64 [ %i.rj, %scalar.ph ], [ %.0162.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.qi = add i64 %.0162.us.us.us.i, %i.od        ; 2 uses
  %i.qj = add i64 %.0162.us.us.us.i, %reass.mul.us.us.us.i ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qi
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !43
  %i.qm = fmul float %i.pa, %i.ql                 ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.qj
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !43 ; 2 uses
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qm, float %i.pe, float %i.qo)
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qi ; 2 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !43
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.qp, float %i.pc, float %i.qr)
  store float %i.qs, ptr %i.qq, align 4, !tbaa !43
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.pg, float %i.qm)
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.qj
  store float %i.qt, ptr %i.qu, align 4, !tbaa !43
  %i.qv = add nuw nsw i64 %.0162.us.us.us.i, 1    ; 2 uses
  %i.qw = add i64 %i.qv, %i.od                    ; 2 uses
  %i.qx = add i64 %i.qv, %reass.mul.us.us.us.i    ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qw
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !43
  %i.ra = fmul float %i.pa, %i.qz                 ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.qx
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !43 ; 2 uses
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.ra, float %i.pe, float %i.rc)
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qw ; 2 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !43
  %i.rg = tail call float @llvm.fmuladd.f32(float %i.rd, float %i.pc, float %i.rf)
  store float %i.rg, ptr %i.re, align 4, !tbaa !43
  %i.rh = tail call float @llvm.fmuladd.f32(float %i.rc, float %i.pg, float %i.ra)
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.qx
  store float %i.rh, ptr %i.ri, align 4, !tbaa !43
end_hunk_0
begin_hunk_1_@ggml_compute_forward_gla:bb.a
  %i.hl = add i64 %.0155.us.us.us.us.us.us.us.us.i, %reass.mul153.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hk
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !43
  %i.ho = fmul float %i.ej, %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.hl
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !43
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.eo, float %i.ho) ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hk ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !43
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.em, float %i.ht)
  store float %i.hu, ptr %i.hs, align 4, !tbaa !43
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.hl
  store float %i.hr, ptr %i.hv, align 4, !tbaa !43
  %i.hw = add nuw nsw i64 %.0155.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.hx = add i64 %i.hw, %reass.mul.us.us.us.us.us.us.i ; 2 uses
  %i.hy = add i64 %i.hw, %reass.mul153.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.hx
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !43
  %i.ib = fmul float %i.ej, %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.hy
  %i.id = load float, ptr %i.ic, align 4, !tbaa !43
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.eo, float %i.ib) ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hx ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !43
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.em, float %i.ig)
  store float %i.ih, ptr %i.if, align 4, !tbaa !43
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.hy
  store float %i.ie, ptr %i.ii, align 4, !tbaa !43
  %i.ij = add nuw nsw i64 %.0155.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %exitcond198.not.i.1 = icmp eq i64 %i.ij, %i.p
  br i1 %exitcond198.not.i.1, label %._crit_edge158.us.us.us.us.us.us.us.us.i, label %._crit_edge.us.us.us.us.us.us.us.us.i, !llvm.loop !1765

._crit_edge158.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i.prol.loopexit, %._crit_edge.us.us.us.us.us.us.us.us.i, %middle.block108
  %i.ik = add nuw nsw i64 %.0143159.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %i.ik, %i.p
  br i1 %exitcond199.not.i, label %._crit_edge162.split.us.us.split.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.i, !llvm.loop !1766

._crit_edge162.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge158.us.us.us.us.us.us.us.us.i
  %i.il = add nsw i64 %.0144163.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %i.il, %i.be
  %indvar.next59 = add i64 %indvar58, 1
  br i1 %exitcond200.not.i, label %._crit_edge.split165.us.split.us.us.us.us.us.i, label %.lr.ph161.us.us.us.us.us.us.i, !llvm.loop !1767

._crit_edge.split165.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge162.split.us.us.split.us.us.us.us.us.us.i
  %i.im = add nuw nsw i64 %.0145166.us.us.us.us.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %i.im, %i.g
  br i1 %exitcond201.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph168.split.us.split.us.split.us.split.us.i, !llvm.loop !1768

.lr.ph168.split.us.split.us.split.us.split.i:     ; preds = %.lr.ph168.split.us.split.us.split.us.split.i.preheader, %._crit_edge.split165.us.split.us181.us.us.i
  %.0145166.us.us.us.i = phi i64 [ %i.ld, %._crit_edge.split165.us.split.us181.us.us.i ], [ 0, %.lr.ph168.split.us.split.us.split.us.split.i.preheader ] ; 4 uses
  %i.in = mul i64 %.0145166.us.us.us.i, %i.k
  %i.io = sdiv i64 %.0145166.us.us.us.i, %i.bc
  %i.ip = mul nsw i64 %i.io, %i.bb                ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ip ; 3 uses
  %i.ir = srem i64 %.0145166.us.us.us.i, %i.bc
  %.not.us.us.us.i = icmp eq i64 %i.ir, 0
  br i1 %.not.us.us.us.i, label %bb.h, label %.lr.ph.us.us.us.i

bb.h:                                             ; preds = %.lr.ph168.split.us.split.us.split.us.split.i
  %i.is = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 248
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !37
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %bb.h, %.lr.ph168.split.us.split.us.split.us.split.i
  %i.iv = phi ptr [ %i.iu, %bb.h ], [ %i.v, %.lr.ph168.split.us.split.us.split.us.split.i ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ip ; 3 uses
  br label %.lr.ph161.us.us177.us.us.i

.lr.ph161.us.us177.us.us.i:                       ; preds = %._crit_edge162.split.us.us.split.us.us.us.i, %.lr.ph.us.us.us.i
  %.0144163.us.us178.us.us.i = phi i64 [ %i.bd, %.lr.ph.us.us.us.i ], [ %i.lc, %._crit_edge162.split.us.us.split.us.us.us.i ] ; 3 uses
  %reass.add.us.us179.us.us.i = add i64 %.0144163.us.us178.us.us.i, %i.in
  %reass.mul.us.us180.us.us.i = mul i64 %reass.add.us.us179.us.us.i, %i.p ; 4 uses
  %i.ix = mul i64 %.0144163.us.us178.us.us.i, %i.p
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.lr.ph161.us.us177.us.us.i
  %.0143159.us.us.us.us.us.i = phi i64 [ 0, %.lr.ph161.us.us177.us.us.i ], [ %i.lb, %._crit_edge.us.us.us.us.us.i ] ; 3 uses
  %i.iy = add i64 %.0143159.us.us.us.us.us.i, %reass.mul.us.us180.us.us.i ; 3 uses
  %reass.add152.us.us.us.us.us.i = add i64 %.0143159.us.us.us.us.us.i, %i.ix
  %reass.mul153.us.us.us.us.us.i = mul i64 %reass.add152.us.us.us.us.us.i, %i.p ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.iy
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !43
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.iy
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !43
  %i.jd = fmul float %i.r, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.iy
  %i.jf = load float, ptr %i.je, align 4, !tbaa !43
  %i.jg = insertelement <16 x float> poison, float %i.ja, i64 0
  %i.jh = shufflevector <16 x float> %i.jg, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ji = insertelement <16 x float> poison, float %i.jd, i64 0
  %i.jj = shufflevector <16 x float> %i.ji, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.jk = insertelement <16 x float> poison, float %i.jf, i64 0
  %i.jl = shufflevector <16 x float> %i.jk, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.i.new:                      ; preds = %.lr.ph.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.i.new
  %.0142154.us.us.us.us.us.i = phi i64 [ %i.kn, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.i ]
  %i.jm = shl nuw nsw i64 %.0142154.us.us.us.us.us.i, 4 ; 2 uses
  %i.jn = add i64 %i.jm, %reass.mul.us.us180.us.us.i ; 2 uses
  %i.jo = add i64 %i.jm, %reass.mul153.us.us.us.us.us.i ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.jn
  %i.jq = load <16 x float>, ptr %i.jp, align 1, !tbaa !56
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.jo
  %i.js = load <16 x float>, ptr %i.jr, align 1, !tbaa !56
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.jn ; 2 uses
  %i.ju = load <16 x float>, ptr %i.jt, align 1, !tbaa !56
  %i.jv = fmul <16 x float> %i.jh, %i.jq
  %i.jw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.js, <16 x float> %i.jl, <16 x float> %i.jv) ; 2 uses
  %i.jx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jw, <16 x float> %i.jj, <16 x float> %i.ju)
  store <16 x float> %i.jx, ptr %i.jt, align 1, !tbaa !56
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jo
  store <16 x float> %i.jw, ptr %i.jy, align 1, !tbaa !56
  %i.jz = shl i64 %.0142154.us.us.us.us.us.i, 4
  %i.ka = or disjoint i64 %i.jz, 16               ; 2 uses
  %i.kb = add i64 %i.ka, %reass.mul.us.us180.us.us.i ; 2 uses
  %i.kc = add i64 %i.ka, %reass.mul153.us.us.us.us.us.i ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kb
  %i.ke = load <16 x float>, ptr %i.kd, align 1, !tbaa !56
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.kc
  %i.kg = load <16 x float>, ptr %i.kf, align 1, !tbaa !56
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kb ; 2 uses
  %i.ki = load <16 x float>, ptr %i.kh, align 1, !tbaa !56
  %i.kj = fmul <16 x float> %i.jh, %i.ke
  %i.kk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kg, <16 x float> %i.jl, <16 x float> %i.kj) ; 2 uses
  %i.kl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.kk, <16 x float> %i.jj, <16 x float> %i.ki)
  store <16 x float> %i.kl, ptr %i.kh, align 1, !tbaa !56
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.kc
  store <16 x float> %i.kk, ptr %i.km, align 1, !tbaa !56
  %i.kn = add nuw nsw i64 %.0142154.us.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.us.us.i.new, !llvm.loop !1758

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.lr.ph.us.us.us.us.us.i.new
  br i1 %lcmp.mod117.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.us.us.i
  %.0142154.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %i.kn, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.ko = shl nuw nsw i64 %.0142154.us.us.us.us.us.i.epil.init, 4 ; 2 uses
  %i.kp = add i64 %i.ko, %reass.mul.us.us180.us.us.i ; 2 uses
  %i.kq = add i64 %i.ko, %reass.mul153.us.us.us.us.us.i ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kp
  %i.ks = load <16 x float>, ptr %i.kr, align 1, !tbaa !56
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.kq
  %i.ku = load <16 x float>, ptr %i.kt, align 1, !tbaa !56
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kp ; 2 uses
  %i.kw = load <16 x float>, ptr %i.kv, align 1, !tbaa !56
  %i.kx = fmul <16 x float> %i.jh, %i.ks
  %i.ky = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ku, <16 x float> %i.jl, <16 x float> %i.kx) ; 2 uses
  %i.kz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ky, <16 x float> %i.jj, <16 x float> %i.kw)
  store <16 x float> %i.kz, ptr %i.kv, align 1, !tbaa !56
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.kq
  store <16 x float> %i.ky, ptr %i.la, align 1, !tbaa !56
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.lb = add nuw nsw i64 %.0143159.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %i.lb, %i.p
  br i1 %exitcond194.not.i, label %._crit_edge162.split.us.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1766

._crit_edge162.split.us.us.split.us.us.us.i:      ; preds = %._crit_edge.us.us.us.us.us.i
  %i.lc = add nsw i64 %.0144163.us.us178.us.us.i, 1 ; 2 uses
  %exitcond195.not.i = icmp eq i64 %i.lc, %i.be
  br i1 %exitcond195.not.i, label %._crit_edge.split165.us.split.us181.us.us.i, label %.lr.ph161.us.us177.us.us.i, !llvm.loop !1767

._crit_edge.split165.us.split.us181.us.us.i:      ; preds = %._crit_edge162.split.us.us.split.us.us.us.i
  %i.ld = add nuw nsw i64 %.0145166.us.us.us.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %i.ld, %i.g
  br i1 %exitcond196.not.i, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph168.split.us.split.us.split.us.split.i, !llvm.loop !1768

.lr.ph168.split.us.split.us.split.i:              ; preds = %.lr.ph168.split.us.split.us.i
  br i1 %i.bh, label %.lr.ph168.split.us.split.us.split.split.us.i.preheader, label %_ZL28ggml_compute_forward_gla_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph168.split.us.split.us.split.split.us.i.preheader: ; preds = %.lr.ph168.split.us.split.us.split.i
  %i.le = mul nsw i64 %i.p, %i.bd
  %i.lf = shl i64 %i.le, 2                        ; 2 uses
  %i.lg = mul i64 %i.k, %i.p
  %i.lh = shl i64 %i.lg, 2
  %i.li = shl nuw nsw i64 %i.p, 2
  %i.lj = add nsw i64 %i.bd, 1
  %i.lk = mul nsw i64 %i.p, %i.lj
  %i.ll = shl i64 %i.lk, 2
  %i.lm = mul nuw nsw i64 %i.p, %i.p
  %i.ln = mul nsw i64 %i.lm, %i.bd
  %i.lo = shl i64 %i.ln, 2
  %i.lp = shl i64 %i.g, 2
  %i.lq = shl nuw nsw i64 %i.p, 2
  %i.lr = mul nuw nsw i64 %i.p, %i.p              ; 2 uses
  %i.ls = shl nuw nsw i64 %i.lr, 2
  %i.lt = ashr exact i64 %sext.i, 30
  %i.lu = add nsw i64 %i.lt, 4                    ; 2 uses
  %i.lv = mul nsw i64 %i.lr, %i.lu
  %i.lw = shl i64 %i.i, 2
  %i.lx = mul nsw i64 %i.p, %i.lu
  %i.ly = getelementptr i8, ptr %i.t, i64 %i.lo
  %i.lz = getelementptr i8, ptr %i.t, i64 %i.lv
  %i.ma = sub nuw nsw i64 %i.p, %i.bg             ; 2 uses
  %min.iters.check = icmp ult i64 %i.ma, 16
  %i.mb = and i64 %i.p, 7                         ; 2 uses
  %n.vec = sub nsw i64 %i.ma, %i.mb               ; 2 uses
  %cmp.n = icmp eq i64 %i.mb, 0
  br label %.lr.ph168.split.us.split.us.split.split.us.i

.lr.ph168.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph168.split.us.split.us.split.split.us.i.preheader, %._crit_edge.split165.us175.us.us.i
  %.0145166.us.us.us182.i = phi i64 [ %i.qi, %._crit_edge.split165.us175.us.us.i ], [ 0, %.lr.ph168.split.us.split.us.split.split.us.i.preheader ] ; 5 uses
  %i.mc = mul i64 %i.lh, %.0145166.us.us.us182.i  ; 2 uses
  %i.md = add i64 %i.lf, %i.mc
  %i.me = add i64 %i.ll, %i.mc
  %i.mf = mul i64 %.0145166.us.us.us182.i, %i.k
  %i.mg = sdiv i64 %.0145166.us.us.us182.i, %i.bc ; 3 uses
  %i.mh = mul nsw i64 %i.mg, %i.bb                ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.mh ; 4 uses
  %i.mj = srem i64 %.0145166.us.us.us182.i, %i.bc
  %.not.us.us.us183.i = icmp eq i64 %i.mj, 0
  br i1 %.not.us.us.us183.i, label %bb.i, label %.lr.ph.us.us.us184.i

bb.i:                                             ; preds = %.lr.ph168.split.us.split.us.split.split.us.i
  %i.mk = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 248
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !37
  br label %.lr.ph.us.us.us184.i

.lr.ph.us.us.us184.i:                             ; preds = %bb.i, %.lr.ph168.split.us.split.us.split.split.us.i
  %i.mn = phi ptr [ %i.mm, %bb.i ], [ %i.v, %.lr.ph168.split.us.split.us.split.split.us.i ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.mh ; 4 uses
  %i.mp = mul i64 %i.lq, %i.mg
  %i.mq = add i64 %i.lp, %i.mp
  %i.mr = mul i64 %i.i, %i.mq                     ; 2 uses
  %i.ms = mul i64 %i.lw, %i.mg                    ; 2 uses
  %i.mt = add i64 %i.lf, %i.ms
  %i.mu = mul i64 %i.p, %i.mt
  %i.mv = add i64 %i.lx, %i.ms
  %i.mw = mul i64 %i.p, %i.mv
  %i.mx = getelementptr i8, ptr %i.ly, i64 %i.mr
  %i.my = getelementptr i8, ptr %i.lz, i64 %i.mr
  %i.mz = getelementptr i8, ptr %i.mn, i64 %i.mu
  %i.na = getelementptr i8, ptr %i.mn, i64 %i.mw
  br label %.lr.ph161.us171.us.us.i

.lr.ph161.us171.us.us.i:                          ; preds = %._crit_edge162.split.us.us.us.i, %.lr.ph.us.us.us184.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge162.split.us.us.us.i ], [ 0, %.lr.ph.us.us.us184.i ] ; 3 uses
  %.0144163.us172.us.us.i = phi i64 [ %i.qh, %._crit_edge162.split.us.us.us.i ], [ %i.bd, %.lr.ph.us.us.us184.i ] ; 3 uses
  %i.nb = mul i64 %i.li, %indvar                  ; 2 uses
  %i.nc = add i64 %i.md, %i.nb                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.nc ; 2 uses
  %i.nd = add i64 %i.me, %i.nb                    ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.t, i64 %i.nd ; 2 uses
  %i.ne = mul i64 %i.ls, %indvar                  ; 4 uses
  %scevgep26 = getelementptr i8, ptr %i.mx, i64 %i.ne ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.my, i64 %i.ne ; 2 uses
  %scevgep28 = getelementptr i8, ptr %i.ak, i64 %i.nc
  %scevgep29 = getelementptr i8, ptr %i.ak, i64 %i.nd
  %scevgep30 = getelementptr i8, ptr %i.mz, i64 %i.ne
  %scevgep31 = getelementptr i8, ptr %i.na, i64 %i.ne
  %reass.add.us173.us.us.i = add i64 %.0144163.us172.us.us.i, %i.mf
  %reass.mul.us174.us.us.i = mul i64 %reass.add.us173.us.us.i, %i.p ; 5 uses
  %i.nf = mul i64 %.0144163.us172.us.us.i, %i.p
  %i.ng = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.nh = insertelement <4 x ptr> %i.ng, ptr %scevgep30, i64 1
  %i.ni = insertelement <4 x ptr> %i.nh, ptr %scevgep26, i64 2 ; 2 uses
  %i.nj = shufflevector <4 x ptr> %i.ni, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nk = insertelement <4 x ptr> poison, ptr %scevgep29, i64 0
  %i.nl = insertelement <4 x ptr> %i.nk, ptr %scevgep25, i64 1
  %i.nm = insertelement <4 x ptr> %i.nl, ptr %scevgep27, i64 3 ; 2 uses
  %i.nn = shufflevector <4 x ptr> %i.nm, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.no = shufflevector <4 x ptr> %i.ni, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.np = insertelement <4 x ptr> %i.no, ptr %scevgep28, i64 0
  %i.nq = shufflevector <4 x ptr> %i.np, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.nr = shufflevector <4 x ptr> %i.nm, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ns = insertelement <4 x ptr> %i.nr, ptr %scevgep31, i64 1
  %i.nt = shufflevector <4 x ptr> %i.ns, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %bound0 = icmp ult ptr %scevgep, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %i.nu = icmp ult <4 x ptr> %i.nj, %i.nn
  %i.nv = icmp ult <4 x ptr> %i.nq, %i.nt
  %i.nw = and <4 x i1> %i.nv, %i.nu
  %i.nx = bitcast <4 x i1> %i.nw to i4
  %i.ny = icmp ne i4 %i.nx, 0
  %op.rdx112 = or i1 %i.ny, %found.conflict
  br label %.lr.ph157.us.us.us.i

.lr.ph157.us.us.us.i:                             ; preds = %._crit_edge158.us.us.us.i, %.lr.ph161.us171.us.us.i
  %.0143159.us.us.us.i = phi i64 [ 0, %.lr.ph161.us171.us.us.i ], [ %i.qg, %._crit_edge158.us.us.us.i ] ; 3 uses
  %i.nz = add i64 %.0143159.us.us.us.i, %reass.mul.us174.us.us.i ; 3 uses
  %reass.add152.us.us.us.i = add i64 %.0143159.us.us.us.i, %i.nf
  %reass.mul153.us.us.us.i = mul i64 %reass.add152.us.us.us.i, %i.p ; 4 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.nz
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !43 ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.nz
  %i.od = load float, ptr %i.oc, align 4, !tbaa !43
  %i.oe = fmul float %i.r, %i.od                  ; 4 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.nz
  %i.og = load float, ptr %i.of, align 4, !tbaa !43 ; 4 uses
  %brmerge129 = select i1 %min.iters.check, i1 true, i1 %op.rdx112
  br i1 %brmerge129, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph157.us.us.us.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ob, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x float> poison, float %i.oe, i64 0
  %broadcast.splat52 = shufflevector <8 x float> %broadcast.splatinsert51, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <8 x float> poison, float %i.og, i64 0
  %broadcast.splat54 = shufflevector <8 x float> %broadcast.splatinsert53, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.oh = add i64 %index, %reass.mul.us174.us.us.i ; 2 uses
  %i.oi = add i64 %index, %reass.mul153.us.us.us.i ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.oh
  %wide.load = load <8 x float>, ptr %i.oj, align 4, !tbaa !43, !alias.scope !1782
  %i.ok = fmul <8 x float> %broadcast.splat, %wide.load
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.oi
  %wide.load55 = load <8 x float>, ptr %i.ol, align 4, !tbaa !43, !alias.scope !1783
  %i.om = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load55, <8 x float> %broadcast.splat54, <8 x float> %i.ok) ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.oh ; 2 uses
  %wide.load56 = load <8 x float>, ptr %i.on, align 4, !tbaa !43, !alias.scope !1784, !noalias !1785
  %i.oo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.om, <8 x float> %broadcast.splat52, <8 x float> %wide.load56)
  store <8 x float> %i.oo, ptr %i.on, align 4, !tbaa !43, !alias.scope !1784, !noalias !1785
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.oi
  store <8 x float> %i.om, ptr %i.op, align 4, !tbaa !43, !alias.scope !1786, !noalias !1787
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oq = icmp eq i64 %index.next, %n.vec
  br i1 %i.oq, label %middle.block, label %vector.body, !llvm.loop !1774

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge158.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph157.us.us.us.i, %middle.block
  %.0155.us.us.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ %i.bg, %.lr.ph157.us.us.us.i ] ; 6 uses
  %i.or = sub nsw i64 %i.p, %.0155.us.us.us.i.ph
  %.neg = add nsw i64 %.0155.us.us.us.i.ph, 1
  %xtraiter = and i64 %i.or, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.os = add i64 %.0155.us.us.us.i.ph, %reass.mul.us174.us.us.i ; 2 uses
  %i.ot = add i64 %.0155.us.us.us.i.ph, %reass.mul153.us.us.us.i ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.os
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !43
  %i.ow = fmul float %i.ob, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ot
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !43
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.og, float %i.ow) ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.os ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !43
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.oe, float %i.pb)
  store float %i.pc, ptr %i.pa, align 4, !tbaa !43
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ot
  store float %i.oz, ptr %i.pd, align 4, !tbaa !43
  %i.pe = add nuw nsw i64 %.0155.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0155.us.us.us.i.unr = phi i64 [ %.0155.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.pe, %scalar.ph.prol ]
  %i.pf = icmp eq i64 %i.p, %.neg
  br i1 %i.pf, label %._crit_edge158.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0155.us.us.us.i = phi i64 [ %i.qf, %scalar.ph ], [ %.0155.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.pg = add i64 %.0155.us.us.us.i, %reass.mul.us174.us.us.i ; 2 uses
  %i.ph = add i64 %.0155.us.us.us.i, %reass.mul153.us.us.us.i ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.pg
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !43
  %i.pk = fmul float %i.ob, %i.pj
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ph
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !43
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pm, float %i.og, float %i.pk) ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pg ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !43
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.oe, float %i.pp)
  store float %i.pq, ptr %i.po, align 4, !tbaa !43
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ph
  store float %i.pn, ptr %i.pr, align 4, !tbaa !43
  %i.ps = add nuw nsw i64 %.0155.us.us.us.i, 1    ; 2 uses
  %i.pt = add i64 %i.ps, %reass.mul.us174.us.us.i ; 2 uses
  %i.pu = add i64 %i.ps, %reass.mul153.us.us.us.i ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.pt
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !43
  %i.px = fmul float %i.ob, %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.pu
  %i.pz = load float, ptr %i.py, align 4, !tbaa !43
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.pz, float %i.og, float %i.px) ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pt ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !43
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.oe, float %i.qc)
  store float %i.qd, ptr %i.qb, align 4, !tbaa !43
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.pu
  store float %i.qa, ptr %i.qe, align 4, !tbaa !43
  %i.qf = add nuw nsw i64 %.0155.us.us.us.i, 2    ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.qf, %i.p
  br i1 %exitcond.not.i.1, label %._crit_edge158.us.us.us.i, label %scalar.ph, !llvm.loop !1775

._crit_edge158.us.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.qg = add nuw nsw i64 %.0143159.us.us.us.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %i.qg, %i.p
end_hunk_1
