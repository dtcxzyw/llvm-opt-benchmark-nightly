Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_row_q3_K_ref:bb.a
  %.2153187.4.i = phi float [ %.4.4.i, %bb.ab ], [ %.4.3.i, %bb.w ] ; 6 uses
  %.2156186.4.i = phi float [ %.4158.4.i, %bb.ab ], [ %.4158.3.i, %bb.w ] ; 7 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv198.4.i
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !36, !alias.scope !194, !noalias !195 ; 5 uses
  %i.hw = fmul float %i.hv, %i.hv                 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv198.4.i ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !34, !alias.scope !195, !noalias !194 ; 2 uses
  %i.hz = sitofp i8 %i.hy to float                ; 3 uses
  %i.ia = fneg float %i.hv
  %i.ib = fmul float %i.hw, %i.ia
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.hz, float %.2156186.4.i) ; 3 uses
  %i.id = fcmp ogt float %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.preheader178.4.i
  %i.ie = fneg float %i.hz
  %i.if = fmul float %i.hw, %i.ie
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.if, float %i.hz, float %.2153187.4.i) ; 2 uses
  %i.ih = fmul float %i.hv, %i.ig
  %i.ii = fdiv float %i.ih, %i.ic
  %i.ij = fadd float %i.ii, f0x4B400000
  %i.ik = bitcast float %i.ij to i32
  %i.il = and i32 %i.ik, 8388607
  %i.im = tail call i32 @llvm.umax.i32(i32 %i.il, i32 4194300)
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.im, i32 4194307) ; 2 uses
  %i.io = add nsw i32 %i.in, -4194304             ; 2 uses
  %i.ip = sext i8 %i.hy to i32
  %.not.4.i = icmp eq i32 %i.io, %i.ip
  br i1 %.not.4.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iq = fmul float %i.hv, %i.hw
  %i.ir = sitofp i32 %i.io to float               ; 3 uses
  %i.is = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.ir, float %i.ic) ; 3 uses
  %i.it = fmul float %i.hw, %i.ir
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.it, float %i.ir, float %i.ig) ; 3 uses
  %i.iv = fcmp ogt float %i.iu, 0.000000e+00
  br i1 %i.iv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.iw = fmul float %i.is, %i.is
  %i.ix = fmul float %.2153187.4.i, %i.iw
  %i.iy = fmul float %.2156186.4.i, %.2156186.4.i
  %i.iz = fmul float %i.iy, %i.iu
  %i.ja = fcmp ogt float %i.ix, %i.iz
  br i1 %i.ja, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jb = trunc i32 %i.in to i8
  store i8 %i.jb, ptr %i.hx, align 1, !tbaa !34, !alias.scope !195, !noalias !194
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %.preheader178.4.i
  %.4158.4.i = phi float [ %.2156186.4.i, %.preheader178.4.i ], [ %i.is, %bb.aa ], [ %.2156186.4.i, %bb.z ], [ %.2156186.4.i, %bb.y ], [ %.2156186.4.i, %bb.x ] ; 2 uses
  %.4.4.i = phi float [ %.2153187.4.i, %.preheader178.4.i ], [ %i.iu, %bb.aa ], [ %.2153187.4.i, %bb.z ], [ %.2153187.4.i, %bb.y ], [ %.2153187.4.i, %bb.x ] ; 2 uses
  %indvars.iv.next199.4.i = add nuw nsw i64 %indvars.iv198.4.i, 1 ; 2 uses
  %exitcond201.4.not.i = icmp eq i64 %indvars.iv.next199.4.i, 16
  br i1 %exitcond201.4.not.i, label %.loopexit128, label %.preheader178.4.i, !llvm.loop !188

bb.ac:                                            ; preds = %bb.ah
  %.not.not.i = icmp eq i32 %.2.i, 0
  br i1 %.not.not.i, label %.loopexit128, label %.preheader178.1.i

.preheader178.preheader.i:                        ; preds = %bb.e, %bb.ah
  %indvars.iv198.i = phi i64 [ %indvars.iv.next199.i, %bb.ah ], [ 0, %bb.e ] ; 3 uses
  %.0146188.i = phi i32 [ %.2.i, %bb.ah ], [ 0, %bb.e ] ; 5 uses
  %i.jc = phi <2 x float> [ %i.kv, %bb.ah ], [ %i.dh, %bb.e ] ; 6 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 1 ; 7 uses
  %i.je = extractelement <2 x float> %i.jc, i64 0 ; 6 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv198.i
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !36, !alias.scope !194, !noalias !195 ; 5 uses
  %i.jh = fmul float %i.jg, %i.jg                 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv198.i ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !34, !alias.scope !195, !noalias !194 ; 2 uses
  %i.jk = sitofp i8 %i.jj to float                ; 3 uses
  %i.jl = fneg float %i.jg
  %i.jm = fmul float %i.jh, %i.jl
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jk, float %i.jd) ; 3 uses
  %i.jo = fcmp ogt float %i.jn, 0.000000e+00
  br i1 %i.jo, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %.preheader178.preheader.i
  %i.jp = fneg float %i.jk
  %i.jq = fmul float %i.jh, %i.jp
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.jk, float %i.je) ; 2 uses
  %i.js = fmul float %i.jg, %i.jr
  %i.jt = fdiv float %i.js, %i.jn
  %i.ju = fadd float %i.jt, f0x4B400000
  %i.jv = bitcast float %i.ju to i32
  %i.jw = and i32 %i.jv, 8388607
  %i.jx = tail call i32 @llvm.umax.i32(i32 %i.jw, i32 4194300)
  %i.jy = tail call i32 @llvm.umin.i32(i32 %i.jx, i32 4194307) ; 2 uses
  %i.jz = add nsw i32 %i.jy, -4194304             ; 2 uses
  %i.ka = sext i8 %i.jj to i32
  %.not.i = icmp eq i32 %i.jz, %i.ka
  br i1 %.not.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kb = sitofp i32 %i.jz to float
  %i.kc = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = insertelement <2 x float> poison, float %i.kb, i64 0 ; 2 uses
  %i.kf = insertelement <2 x float> %i.ke, float %i.jg, i64 1
  %i.kg = fmul <2 x float> %i.kd, %i.kf
  %i.kh = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.kj = insertelement <2 x float> %i.ki, float %i.jn, i64 1
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.kh, <2 x float> %i.kj) ; 3 uses
  %i.kl = extractelement <2 x float> %i.kk, i64 1 ; 3 uses
  %i.km = extractelement <2 x float> %i.kk, i64 0 ; 3 uses
  %i.kn = fcmp ogt float %i.km, 0.000000e+00
  br i1 %i.kn, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ko = fmul float %i.kl, %i.kl
  %i.kp = fmul float %i.je, %i.ko
  %i.kq = fmul float %i.jd, %i.jd
  %i.kr = fmul float %i.kq, %i.km
  %i.ks = fcmp ogt float %i.kp, %i.kr
  br i1 %i.ks, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kt = trunc i32 %i.jy to i8
  store i8 %i.kt, ptr %i.ji, align 1, !tbaa !34, !alias.scope !195, !noalias !194
  %i.ku = add nsw i32 %.0146188.i, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %.preheader178.preheader.i
  %.4158.i = phi float [ %i.jd, %.preheader178.preheader.i ], [ %i.kl, %bb.ag ], [ %i.jd, %bb.af ], [ %i.jd, %bb.ae ], [ %i.jd, %bb.ad ]
  %.4.i = phi float [ %i.je, %.preheader178.preheader.i ], [ %i.km, %bb.ag ], [ %i.je, %bb.af ], [ %i.je, %bb.ae ], [ %i.je, %bb.ad ]
  %.2.i = phi i32 [ %.0146188.i, %.preheader178.preheader.i ], [ %i.ku, %bb.ag ], [ %.0146188.i, %bb.af ], [ %.0146188.i, %bb.ae ], [ %.0146188.i, %bb.ad ] ; 2 uses
  %i.kv = phi <2 x float> [ %i.jc, %.preheader178.preheader.i ], [ %i.kk, %bb.ag ], [ %i.jc, %bb.af ], [ %i.jc, %bb.ae ], [ %i.jc, %bb.ad ] ; 2 uses
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %indvars.iv.next199.i, 16
  br i1 %exitcond201.not.i, label %bb.ac, label %.preheader178.preheader.i, !llvm.loop !188

.loopexit128:                                     ; preds = %bb.ab, %bb.ac, %bb.w, %bb.q, %bb.k
  %.4158.lcssa.lcssa.i = phi float [ %.4158.3.i, %bb.w ], [ %.4158.i, %bb.ac ], [ %.4158.1.i, %bb.k ], [ %.4158.2.i, %bb.q ], [ %.4158.4.i, %bb.ab ]
  %.4.lcssa.lcssa.i = phi float [ %.4.3.i, %bb.w ], [ %.4.i, %bb.ac ], [ %.4.1.i, %bb.k ], [ %.4.2.i, %bb.q ], [ %.4.4.i, %bb.ab ] ; 2 uses
  %i.kw = load <16 x i8>, ptr %i.z, align 16, !tbaa !34, !alias.scope !195, !noalias !194
  %i.kx = add <16 x i8> %i.kw, splat (i8 4)
  store <16 x i8> %i.kx, ptr %i.z, align 16, !tbaa !34, !alias.scope !195, !noalias !194
  %i.ky = fcmp ogt float %.4.lcssa.lcssa.i, 0.000000e+00
  %i.kz = fdiv float %.4158.lcssa.lcssa.i, %.4.lcssa.lcssa.i
  %i.la = select i1 %i.ky, float %i.kz, float 0.000000e+00
  br label %make_q3_quants.exit

make_q3_quants.exit:                              ; preds = %.preheader.preheader.i, %.loopexit128
  %.1149.i = phi float [ %i.la, %.loopexit128 ], [ 0.000000e+00, %.preheader.preheader.i ] ; 3 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %.1149.i, ptr %i.lb, align 4, !tbaa !36
  %i.lc = tail call float @llvm.fabs.f32(float %.1149.i) ; 2 uses
  %i.ld = fcmp ogt float %i.lc, %.0116133         ; 2 uses
  %.1119 = select i1 %i.ld, float %.1149.i, float %.0118132 ; 3 uses
  %.1117 = select i1 %i.ld, float %i.lc, float %.0116133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !189

bb.ai:                                            ; preds = %bb.b
  %i.le = fdiv float -3.200000e+01, %.1119        ; 2 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.an
  %i.lf = fdiv float 1.000000e+00, %i.le          ; 2 uses
  %i.lg = tail call float @llvm.fabs.f32(float %i.lf)
  %i.lh = fmul float %i.lg, f0x77800000
  %i.li = fmul float %i.lh, f0x08800000
  %i.lj = bitcast float %i.lf to i32              ; 2 uses
  %i.lk = shl i32 %i.lj, 1                        ; 2 uses
  %i.ll = tail call i32 @llvm.umax.i32(i32 %i.lk, i32 1895825408)
  %spec.store.select.i = lshr exact i32 %i.ll, 1
  %i.lm = and i32 %spec.store.select.i, 2139095040
  %i.ln = add nuw i32 %i.lm, 125829120
  %i.lo = bitcast i32 %i.ln to float
  %i.lp = fadd float %i.li, %i.lo
  %i.lq = bitcast float %i.lp to i32              ; 2 uses
  %i.lr = lshr i32 %i.lq, 13
  %i.ls = and i32 %i.lr, 31744
  %i.lt = and i32 %i.lq, 4095
  %i.lu = add nuw nsw i32 %i.ls, %i.lt
  %i.lv = lshr i32 %i.lj, 16
  %i.lw = and i32 %i.lv, 32768
  %i.lx = icmp ugt i32 %i.lk, -16777216
  %i.ly = select i1 %i.lx, i32 32256, i32 %i.lu
  %i.lz = or i32 %i.ly, %i.lw
  %i.ma = trunc nuw i32 %i.lz to i16
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai, %bb.an
  %indvars.iv147 = phi i64 [ 0, %bb.ai ], [ %indvars.iv.next148, %bb.an ] ; 7 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv147
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !36
  %i.md = fmul float %i.le, %i.mc
  %i.me = fadd float %i.md, f0x4B400000
  %i.mf = bitcast float %i.me to i32
  %sext = shl i32 %i.mf, 24
  %i.mg = ashr exact i32 %sext, 24
  %i.mh = tail call i32 @llvm.smax.i32(i32 %i.mg, i32 -32)
  %i.mi = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 31) ; 3 uses
  %i.mj = icmp samesign ult i64 %indvars.iv147, 8
  br i1 %i.mj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mk = trunc nsw i32 %i.mi to i8
  %i.ml = and i8 %i.mk, 15
  %i.mm = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv147
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !34
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.mn = getelementptr i8, ptr %i.v, i64 %indvars.iv147
  %i.mo = getelementptr i8, ptr %i.mn, i64 -8     ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !34
  %.tr124 = trunc nsw i32 %i.mi to i8
  %i.mq = shl i8 %.tr124, 4
  %i.mr = or i8 %i.mp, %i.mq
  store i8 %i.mr, ptr %i.mo, align 1, !tbaa !34
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %3 = shl nsw i32 %i.mi, 20
  %sext125 = add nsw i32 %3, 33554432
  %i.ms = lshr i32 %sext125, 24
  %i.mt = trunc nuw nsw i64 %indvars.iv147 to i32
  %i.mu = lshr i32 %i.mt, 1
  %i.mv = and i32 %i.mu, 6
  %i.mw = shl nuw nsw i32 %i.ms, %i.mv
  %i.mx = and i64 %indvars.iv147, 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !34
  %i.nb = trunc nuw i32 %i.mw to i8
  %i.nc = or i8 %i.na, %i.nb
  store i8 %i.nc, ptr %i.mz, align 1, !tbaa !34
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, 16
  br i1 %exitcond150.not, label %bb.aj, label %bb.ak, !llvm.loop !190

bb.ao:                                            ; preds = %bb.b, %bb.aj
  %.sink = phi i16 [ %i.ma, %bb.aj ], [ 0, %bb.b ] ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  store i16 %.sink, ptr %i.nd, align 2, !tbaa !46
  %i.ne = zext i16 %.sink to i32                  ; 2 uses
  %i.nf = shl i32 %i.ne, 17                       ; 2 uses
  %i.ng = lshr exact i32 %i.nf, 4
  %i.nh = or disjoint i32 %i.ng, 1879048192
  %i.ni = bitcast i32 %i.nh to float
  %i.nj = and i32 %i.ne, 32767
  %i.nk = or disjoint i32 %i.nj, 1056964608
  %i.nl = bitcast i32 %i.nk to float
  %i.nm = icmp ult i32 %i.nf, 134217728
  %i.nn = fadd float %i.nl, -5.000000e-01
  %i.no = fmul float %i.ni, 1.925930e-34
  %.v.i = select i1 %i.nm, float %i.nn, float %i.no
  %i.np = bitcast float %.v.i to i32
  %.signext.i = sext i16 %.sink to i32
  %i.nq = and i32 %.signext.i, -2147483648
  %i.nr = or i32 %i.nq, %i.np
  %i.ns = bitcast i32 %i.nr to float
  br label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao, %.loopexit
  %indvars.iv155 = phi i64 [ 0, %bb.ao ], [ %indvars.iv.next156, %.loopexit ] ; 6 uses
  %i.nt = icmp samesign ult i64 %indvars.iv155, 8
  %i.nu = getelementptr i8, ptr %i.v, i64 %indvars.iv155 ; 2 uses
  br i1 %i.nt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !34
  %i.nw = and i8 %i.nv, 15
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.nx = getelementptr i8, ptr %i.nu, i64 -8
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !34
  %i.nz = lshr i8 %i.ny, 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.in = phi i8 [ %i.nw, %bb.ar ], [ %i.nz, %bb.as ]
  %i.oa = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.ob = and i64 %indvars.iv155, 3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !34
  %i.of = zext i8 %i.oe to i32
  %i.og = lshr i32 %i.oa, 1
  %i.oh = and i32 %i.og, 6
  %i.oi = lshr i32 %i.of, %i.oh
  %.tr = trunc nuw i32 %i.oi to i8
  %i.oj = shl i8 %.tr, 4
  %i.ok = and i8 %i.oj, 48
  %i.ol = or disjoint i8 %.in, -32
  %i.om = add nsw i8 %i.ol, %i.ok
  %i.on = sitofp i8 %i.om to float
  %i.oo = fmul float %i.on, %i.ns                 ; 2 uses
  %i.op = fcmp une float %i.oo, 0.000000e+00
  br i1 %i.op, label %.preheader127, label %.loopexit

.preheader127:                                    ; preds = %bb.at
  %i.oq = shl nuw nsw i64 %indvars.iv155, 4       ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.0111144, i64 %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.oq
  %i.ot = load <16 x float>, ptr %i.or, align 4, !tbaa !36
  %i.ou = insertelement <16 x float> poison, float %i.oo, i64 0
  %i.ov = shufflevector <16 x float> %i.ou, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ow = fdiv <16 x float> %i.ot, %i.ov
  %i.ox = fadd <16 x float> %i.ow, splat (float f0x4B400000)
  %i.oy = bitcast <16 x float> %i.ox to <16 x i32>
  %i.oz = and <16 x i32> %i.oy, splat (i32 8388607)
  %i.pa = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.oz, <16 x i32> splat (i32 4194300))
  %i.pb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pa, <16 x i32> splat (i32 4194307))
  %i.pc = trunc <16 x i32> %i.pb to <16 x i8>
  %i.pd = add nsw <16 x i8> %i.pc, splat (i8 4)
  store <16 x i8> %i.pd, ptr %i.os, align 16, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader127, %bb.at
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next156, 16
  br i1 %exitcond158.not, label %bb.ap, label %bb.aq, !llvm.loop !191

.preheader129:                                    ; preds = %bb.aw
  %i.pe = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %wide.load202.a = load <16 x i8>, ptr %i.a, align 16, !tbaa !34
  %wide.load203.a = load <16 x i8>, ptr %i.f, align 16, !tbaa !34
  %wide.load204.a = load <16 x i8>, ptr %i.g, align 16, !tbaa !34
  %wide.load205.a = load <16 x i8>, ptr %i.h, align 16, !tbaa !34
  %i.pf = shl <16 x i8> %wide.load204.a, splat (i8 2)
  %i.pg = shl <16 x i8> %wide.load205.a, splat (i8 2)
  %i.ph = or <16 x i8> %i.pf, %wide.load202.a
  %i.pi = or <16 x i8> %i.pg, %wide.load203.a
  %wide.load206.a = load <16 x i8>, ptr %i.i, align 16, !tbaa !34
  %wide.load207.a = load <16 x i8>, ptr %i.j, align 16, !tbaa !34
  %i.pj = shl <16 x i8> %wide.load206.a, splat (i8 4)
  %i.pk = shl <16 x i8> %wide.load207.a, splat (i8 4)
  %i.pl = or <16 x i8> %i.ph, %i.pj
  %i.pm = or <16 x i8> %i.pi, %i.pk
  %wide.load208.a = load <16 x i8>, ptr %i.k, align 16, !tbaa !34
  %wide.load209 = load <16 x i8>, ptr %i.l, align 16, !tbaa !34
  %i.pn = shl <16 x i8> %wide.load208.a, splat (i8 6)
  %i.po = shl <16 x i8> %wide.load209, splat (i8 6)
  %i.pp = or <16 x i8> %i.pl, %i.pn
  %i.pq = or <16 x i8> %i.pm, %i.po
  %i.pr = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store <16 x i8> %i.pp, ptr %i.pe, align 2, !tbaa !34
  store <16 x i8> %i.pq, ptr %i.pr, align 2, !tbaa !34
  %wide.load = load <16 x i8>, ptr %i.m, align 16, !tbaa !34
  %wide.load193.a = load <16 x i8>, ptr %i.n, align 16, !tbaa !34
  %wide.load194.a = load <16 x i8>, ptr %i.o, align 16, !tbaa !34
  %wide.load195.a = load <16 x i8>, ptr %i.p, align 16, !tbaa !34
  %i.ps = shl <16 x i8> %wide.load194.a, splat (i8 2)
  %i.pt = shl <16 x i8> %wide.load195.a, splat (i8 2)
  %i.pu = or <16 x i8> %i.ps, %wide.load
  %i.pv = or <16 x i8> %i.pt, %wide.load193.a
  %wide.load196.a = load <16 x i8>, ptr %i.q, align 16, !tbaa !34
  %wide.load197.a = load <16 x i8>, ptr %i.r, align 16, !tbaa !34
  %i.pw = shl <16 x i8> %wide.load196.a, splat (i8 4)
  %i.px = shl <16 x i8> %wide.load197.a, splat (i8 4)
  %i.py = or <16 x i8> %i.pu, %i.pw
  %i.pz = or <16 x i8> %i.pv, %i.px
  %wide.load198.a = load <16 x i8>, ptr %i.s, align 16, !tbaa !34
  %wide.load199 = load <16 x i8>, ptr %i.t, align 16, !tbaa !34
  %i.qa = shl <16 x i8> %wide.load198.a, splat (i8 6)
  %i.qb = shl <16 x i8> %wide.load199, splat (i8 6)
  %i.qc = or <16 x i8> %i.py, %i.qa
  %i.qd = or <16 x i8> %i.pz, %i.qb
  %i.qe = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.qf = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store <16 x i8> %i.qc, ptr %i.qe, align 2, !tbaa !34
  store <16 x i8> %i.qd, ptr %i.qf, align 2, !tbaa !34
  %i.qg = getelementptr inbounds nuw i8, ptr %.0111144, i64 1024
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count
  br i1 %exitcond172.not, label %._crit_edge, label %.preheader130, !llvm.loop !192

bb.au:                                            ; preds = %bb.ap, %bb.aw
  %indvars.iv159 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next160, %bb.aw ] ; 2 uses
  %.0108139 = phi i8 [ 1, %bb.ap ], [ %spec.select126, %bb.aw ] ; 2 uses
  %.0109138 = phi i32 [ 0, %bb.ap ], [ %spec.select, %bb.aw ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv159 ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !34  ; 2 uses
  %i.qj = icmp sgt i8 %i.qi, 3
  br i1 %i.qj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.qk = sext i32 %.0109138 to i64
  %i.ql = getelementptr inbounds i8, ptr %i.u, i64 %i.qk ; 2 uses
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !34
  %i.qn = or i8 %i.qm, %.0108139
  store i8 %i.qn, ptr %i.ql, align 1, !tbaa !34
  %i.qo = add nsw i8 %i.qi, -4
  store i8 %i.qo, ptr %i.qh, align 1, !tbaa !34
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qp = add nsw i32 %.0109138, 1                ; 2 uses
  %i.qq = icmp eq i32 %i.qp, 32                   ; 2 uses
  %spec.select = select i1 %i.qq, i32 0, i32 %i.qp
  %i.qr = zext i1 %i.qq to i8
  %spec.select126 = shl i8 %.0108139, %i.qr
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next160, 256
  br i1 %exitcond161.not, label %.preheader129, label %bb.au, !llvm.loop !193
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dequantize_row_q3_K(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 10 uses
  %i.b = sdiv i64 %2, 256                         ; 2 uses
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
end_hunk_0
