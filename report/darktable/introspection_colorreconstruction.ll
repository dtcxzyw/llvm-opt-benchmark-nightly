Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorreconstruction?download=true
inline.NumInlined: 49
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@process:bb.a
  br i1 %i.hv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hw = fcmp reassoc nsz arcp contract afn olt float %i.hu, %i.ga
  %..i.i = select reassoc nsz arcp contract afn i1 %i.hw, float %i.hu, float %i.ga
  %i.hx = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %..i.i)
  %i.hy = fptosi float %i.hx to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hz = phi i32 [ 0, %bb.ag ], [ %i.hy, %bb.ah ] ; 2 uses
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hc, %i.gk ; 3 uses
  %i.ib = fcmp reassoc nsz arcp contract afn ogt float %i.ia, 0.000000e+00
  br i1 %i.ib, label %bb.aj, label %image_to_grid.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ic = fcmp reassoc nsz arcp contract afn olt float %i.ia, %i.ge
  %.33.i.i = select reassoc nsz arcp contract afn i1 %i.ic, float %i.ia, float %i.ge
  %i.id = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %.33.i.i)
  %i.ie = fptosi float %i.id to i32
  br label %image_to_grid.exit.i

image_to_grid.exit.i:                             ; preds = %bb.aj, %bb.ai
  %i.if = phi i32 [ 0, %bb.ai ], [ %i.ie, %bb.aj ] ; 2 uses
  %i.ig = icmp sgt i32 %i.hz, 0
  %i.ih = zext nneg i32 %i.hz to i64
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 %i.ih)
  %i.ii = select i1 %i.ig, i64 %spec.select.i, i64 0
  %i.ij = icmp sgt i32 %i.if, 0
  br i1 %i.ij, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %image_to_grid.exit.i
  %i.ik = zext nneg i32 %i.if to i64
  %spec.select79.i = tail call i64 @llvm.umin.i64(i64 %i.gh, i64 %i.ik)
  %i.il = mul nuw nsw i64 %spec.select79.i, %i.en
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %image_to_grid.exit.i
  %i.im = phi i64 [ 0, %image_to_grid.exit.i ], [ %i.il, %bb.ak ]
  %i.in = add nuw nsw i64 %i.im, %i.gv
  %i.io = mul i64 %i.in, %i.ek
  %i.ip = getelementptr [16 x i8], ptr %i.fp, i64 %i.ii
  %i.iq = getelementptr [16 x i8], ptr %i.ip, i64 %i.io ; 2 uses
  %i.ir = insertelement <4 x float> poison, float %.063.i, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iu = insertelement <4 x float> %i.it, float 1.000000e+00, i64 3
  %i.iv = insertelement <4 x float> %i.iu, float %i.hb, i64 2
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %i.is, %i.iv
  %i.ix = load <4 x float>, ptr %i.iq, align 16, !tbaa !11
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.ix, %i.iw
  store <4 x float> %i.iy, ptr %i.iq, align 16, !tbaa !11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ac
  %i.iz = add nuw nsw i32 %.0644.i, 1             ; 2 uses
  %i.ja = add i64 %.0653.i, 4
  %exitcond.not.i = icmp eq i32 %i.iz, %i.fw
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ac

.loopexit:                                        ; preds = %._crit_edge.i, %.preheader.i, %.lr.ph6.i
  %i.jb = mul i32 %i.em, %i.ej                    ; 3 uses
  tail call fastcc void @blur_line(ptr noundef nonnull %i.fp, i32 noundef %i.jb, i32 noundef %i.ej, i32 noundef 1, i32 noundef %narrow62.i, i32 noundef %i.em, i32 noundef %i.ej)
  tail call fastcc void @blur_line(ptr noundef nonnull %i.fp, i32 noundef %i.jb, i32 noundef 1, i32 noundef %i.ej, i32 noundef %narrow62.i, i32 noundef %i.ej, i32 noundef %i.em)
  tail call fastcc void @blur_line(ptr noundef nonnull %i.fp, i32 noundef 1, i32 noundef %i.ej, i32 noundef %i.jb, i32 noundef %i.ej, i32 noundef %i.em, i32 noundef %narrow62.i)
  br label %dt_iop_colorreconstruct_bilateral_thaw.exit

dt_iop_colorreconstruct_bilateral_thaw.exit:      ; preds = %bb.z, %.loopexit
  %i.jc = phi float [ %i.ey, %.loopexit ], [ %i.dr, %bb.z ]
  %.063 = phi ptr [ %i.dt, %.loopexit ], [ %i.cu, %bb.z ] ; 14 uses
  %i.jd = phi <2 x i64> [ %i.el, %.loopexit ], [ %i.cv, %bb.z ] ; 2 uses
  %i.je = load float, ptr %i.b, align 4, !tbaa !111
  %i.jf = load float, ptr %i.e, align 8, !tbaa !54
  %i.jg = load float, ptr %i.g, align 4, !tbaa !55
  %i.jh = getelementptr inbounds nuw i8, ptr %.063, i64 40
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jc, %i.jg
  %i.jj = fdiv reassoc nsz arcp contract afn float %i.jf, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.063, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !113 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph340.i, label %dt_iop_colorreconstruct_bilateral_slice.exit

.lr.ph340.i:                                      ; preds = %dt_iop_colorreconstruct_bilateral_thaw.exit
  %i.jo = extractelement <2 x i64> %i.jd, i64 0   ; 4 uses
  %factor.op.mul337.i = shl i64 %i.jo, 32         ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !114 ; 3 uses
  %i.jr = sext i32 %i.jq to i64
  %factor.op.mul.i76 = shl nsw i64 %i.jr, 2
  %i.js = extractelement <2 x i64> %i.jd, i64 1   ; 4 uses
  %factor.op.mul.reass.i = mul i64 %factor.op.mul337.i, %i.js
  %i.jt = icmp sgt i32 %i.jq, 0
  %i.ju = getelementptr i8, ptr %.063, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %.063, i64 44
  %i.jw = add i64 %i.jo, -1
  %i.jx = uitofp reassoc nsz arcp contract afn i64 %i.jw to float ; 2 uses
  %i.jy = add i64 %i.js, -1
  %i.jz = uitofp reassoc nsz arcp contract afn i64 %i.jy to float
  %i.ka = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.kb = add i64 %i.jo, -2                       ; 2 uses
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = add i64 %i.js, -2                       ; 2 uses
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = getelementptr inbounds nuw i8, ptr %.063, i64 56
  %i.kg = ashr exact i64 %factor.op.mul337.i, 32  ; 2 uses
  %i.kh = ashr exact i64 %factor.op.mul.reass.i, 32 ; 4 uses
  br i1 %i.jt, label %.lr.ph.preheader.i77, label %dt_iop_colorreconstruct_bilateral_slice.exit

.lr.ph.preheader.i77:                             ; preds = %.lr.ph340.i
  %wide.trip.count.i78 = zext nneg i32 %i.jm to i64
  %i.ki = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kj = insertelement <2 x i64> poison, i64 %i.kd, i64 0
  %i.kk = insertelement <2 x i32> poison, i32 %i.ke, i64 0
  %i.kl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.je
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %._crit_edge.i83, %.lr.ph.preheader.i77
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.preheader.i77 ], [ %indvars.iv.next.i84, %._crit_edge.i83 ] ; 3 uses
  %.reass.i81 = mul nuw i64 %factor.op.mul.i76, %indvars.iv.i80
  %i.ko = trunc nsw i64 %indvars.iv.i80 to i32
  %i.kp = insertelement <2 x i32> poison, i32 %i.ko, i64 1
  br label %bb.an

._crit_edge.i83:                                  ; preds = %.thread.i
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count.i78
  br i1 %exitcond343.not.i, label %dt_iop_colorreconstruct_bilateral_slice.exit, label %.lr.ph.i79

bb.an:                                            ; preds = %.thread.i, %.lr.ph.i79
  %.0334.i = phi i32 [ 0, %.lr.ph.i79 ], [ %i.sp, %.thread.i ] ; 2 uses
  %.0272333.i = phi i64 [ %.reass.i81, %.lr.ph.i79 ], [ %i.sq, %.thread.i ] ; 6 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0272333.i
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !11 ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0272333.i
  store float %i.kr, ptr %i.ks, align 4, !tbaa !11
  %i.kt = or disjoint i64 %.0272333.i, 1          ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kt
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !11 ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kt ; 2 uses
  store float %i.kv, ptr %i.kw, align 4, !tbaa !11
  %i.kx = or disjoint i64 %.0272333.i, 2          ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !11 ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kx ; 2 uses
  store float %i.kz, ptr %i.la, align 4, !tbaa !11
  %i.lb = or disjoint i64 %.0272333.i, 3          ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !11
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lb
  store float %i.ld, ptr %i.le, align 4, !tbaa !11
  %i.lf = fmul reassoc nsz arcp contract afn float %i.kr, 2.000000e+01
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.kn
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, -1.900000e+01 ; 3 uses
  %i.li = fcmp reassoc nsz arcp contract afn ogt float %i.lh, 0.000000e+00
  br i1 %i.li, label %.thread294.i, label %.thread.i

.thread294.i:                                     ; preds = %bb.an
  %i.lj = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.lk = insertelement <2 x i32> %i.kp, i32 %.0334.i, i64 0
  %i.ll = add nsw <2 x i32> %i.lj, %i.lk
  %i.lm = sitofp <2 x i32> %i.ll to <2 x float>
  %i.ln = load <2 x i32>, ptr %i.ju, align 8, !tbaa !24
  %i.lo = sitofp <2 x i32> %i.ln to <2 x float>
  %i.lp = fmul reassoc nsz arcp contract afn <2 x float> %i.km, %i.lm
  %i.lq = fsub reassoc nsz arcp contract afn <2 x float> %i.lp, %i.lo ; 2 uses
  %.pre.i = load i64, ptr %i.ka, align 8, !tbaa !101 ; 2 uses
  %i.lr = add i64 %.pre.i, -1
  %i.ls = uitofp reassoc nsz arcp contract afn i64 %i.lr to float
  %i.lt = add i64 %.pre.i, -2                     ; 2 uses
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = load ptr, ptr %i.kf, align 8, !tbaa !105
  %i.lw = load <2 x float>, ptr %i.jv, align 4, !tbaa !11 ; 2 uses
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.lq, %i.lw
  %i.lx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ly = fcmp reassoc nsz arcp contract afn ogt float %i.lx, 0.000000e+00
  %i.lz = fcmp reassoc nsz arcp contract afn olt float %i.lx, %i.jx
  %..i.i85 = select reassoc nsz arcp contract afn i1 %i.lz, float %i.lx, float %i.jx
  %i.ma = select reassoc nsz arcp contract afn i1 %i.ly, float %..i.i85, float 0.000000e+00 ; 2 uses
  %i.mb = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mc = insertelement <2 x float> %i.mb, float %i.kr, i64 1
  %i.md = fdiv reassoc nsz arcp contract afn <2 x float> %i.mc, %i.lw ; 3 uses
  %i.me = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.md, zeroinitializer
  %i.mf = insertelement <2 x float> %i.ki, float %i.ls, i64 1 ; 2 uses
  %i.mg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.md, %i.mf
  %i.mh = select <2 x i1> %i.mg, <2 x float> %i.md, <2 x float> %i.mf
  %i.mi = select <2 x i1> %i.me, <2 x float> %i.mh, <2 x float> zeroinitializer ; 2 uses
  %i.mj = fptosi float %i.ma to i32               ; 2 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp ugt i64 %i.kb, %i.mk
  %i.mm = select i1 %i.ml, i32 %i.mj, i32 %i.kc   ; 2 uses
  %i.mn = fptosi <2 x float> %i.mi to <2 x i32>   ; 2 uses
  %i.mo = insertelement <2 x i64> %i.kj, i64 %i.lt, i64 1
  %i.mp = sext <2 x i32> %i.mn to <2 x i64>
  %i.mq = icmp ugt <2 x i64> %i.mo, %i.mp
  %i.mr = insertelement <2 x i32> %i.kk, i32 %i.lu, i64 1
  %i.ms = select <2 x i1> %i.mq, <2 x i32> %i.mn, <2 x i32> %i.mr ; 3 uses
  %i.mt = sitofp reassoc nsz arcp contract afn i32 %i.mm to float
  %i.mu = fsub reassoc nsz arcp contract afn float %i.ma, %i.mt ; 17 uses
  %i.mv = sitofp <2 x i32> %i.ms to <2 x float>
  %i.mw = fsub reassoc nsz arcp contract afn <2 x float> %i.mi, %i.mv ; 4 uses
  %i.mx = sext i32 %i.mm to i64
  %i.my = extractelement <2 x i32> %i.ms, i64 0
  %i.mz = sext i32 %i.my to i64
  %i.na = extractelement <2 x i32> %i.ms, i64 1
  %i.nb = sext i32 %i.na to i64
  %i.nc = mul i64 %i.js, %i.nb
  %i.nd = add i64 %i.nc, %i.mz
  %i.ne = mul i64 %i.nd, %i.jo
  %i.nf = getelementptr [16 x i8], ptr %i.lv, i64 %i.ne
  %i.ng = getelementptr [16 x i8], ptr %i.nf, i64 %i.mx ; 10 uses
  %i.nh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.mu ; 16 uses
  %i.ni = extractelement <2 x float> %i.mw, i64 0 ; 8 uses
  %i.nj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ni ; 8 uses
  %i.nk = getelementptr i8, ptr %i.ng, i64 16     ; 3 uses
  %i.nl = getelementptr [16 x i8], ptr %i.ng, i64 %i.kg ; 5 uses
  %i.nm = getelementptr [16 x i8], ptr %i.nk, i64 %i.kg ; 5 uses
  %i.nn = getelementptr [16 x i8], ptr %i.ng, i64 %i.kh ; 4 uses
  %i.no = getelementptr [16 x i8], ptr %i.nk, i64 %i.kh ; 4 uses
  %i.np = getelementptr [16 x i8], ptr %i.nl, i64 %i.kh ; 4 uses
  %i.nq = getelementptr [16 x i8], ptr %i.nm, i64 %i.kh ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !115
  %i.nt = fmul reassoc nsz arcp contract afn float %i.nh, %i.ns
  %i.nu = getelementptr i8, ptr %i.ng, i64 28
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !115
  %i.nw = fmul reassoc nsz arcp contract afn float %i.mu, %i.nv
  %i.nx = fadd reassoc nsz arcp contract afn float %i.nt, %i.nw
  %i.ny = fmul reassoc nsz arcp contract afn float %i.nx, %i.nj
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !115
  %i.ob = fmul reassoc nsz arcp contract afn float %i.nh, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %i.od = load float, ptr %i.oc, align 4, !tbaa !115
  %i.oe = fmul reassoc nsz arcp contract afn float %i.mu, %i.od
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.ob, %i.oe
  %i.of = extractelement <2 x float> %i.mw, i64 0
  %i.og = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.of
  %i.oh = fadd reassoc nsz arcp contract afn float %i.og, %i.ny
  %i.oi = extractelement <2 x float> %i.mw, i64 1
  %i.oj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.oi ; 4 uses
  %i.ok = fmul reassoc nsz arcp contract afn float %i.oh, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.om = load float, ptr %i.ol, align 4, !tbaa !115
  %i.on = fmul reassoc nsz arcp contract afn float %i.nh, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.op = load float, ptr %i.oo, align 4, !tbaa !115
  %i.oq = fmul reassoc nsz arcp contract afn float %i.mu, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  %i.os = load float, ptr %i.or, align 4, !tbaa !115
  %i.ot = fmul reassoc nsz arcp contract afn float %i.nh, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !115
  %i.ow = fmul reassoc nsz arcp contract afn float %i.mu, %i.ov
  %reass.add299.i = fadd reassoc nsz arcp contract afn float %i.ot, %i.ow
  %reass.mul300.i = fmul reassoc nsz arcp contract afn float %reass.add299.i, %i.ni
  %reass.add301.i.a = fadd reassoc nsz arcp contract afn float %i.on, %i.oq
  %reass.mul302.i = fmul reassoc nsz arcp contract afn float %reass.add301.i.a, %i.nj
  %reass.add297.i = fadd reassoc nsz arcp contract afn float %reass.mul302.i, %reass.mul300.i
  %i.ox = extractelement <2 x float> %i.mw, i64 1 ; 4 uses
  %reass.mul298.i = fmul reassoc nsz arcp contract afn float %reass.add297.i, %i.ox
  %i.oy = fadd reassoc nsz arcp contract afn float %reass.mul298.i, %i.ok
  %i.oz = fcmp reassoc nsz arcp contract afn ogt float %i.oy, 0.000000e+00
  br i1 %i.oz, label %bb.ao, label %.critedge.i

bb.ao:                                            ; preds = %.thread294.i
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.lh, 1.000000e+00
  %i.pb = select i1 %i.pa, float %i.lh, float 1.000000e+00 ; 2 uses
  %i.pc = load float, ptr %i.ng, align 4, !tbaa !117
  %i.pd = fmul reassoc nsz arcp contract afn float %i.pc, %i.nh
  %i.pe = load float, ptr %i.nk, align 4, !tbaa !117
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pe, %i.mu
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pf, %i.pd
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pg, %i.nj
  %i.pi = load float, ptr %i.nl, align 4, !tbaa !117
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %i.nh
  %i.pk = load float, ptr %i.nm, align 4, !tbaa !117
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.mu
  %reass.add303.i = fadd reassoc nsz arcp contract afn float %i.pl, %i.pj
  %reass.mul304.i = fmul reassoc nsz arcp contract afn float %reass.add303.i, %i.ni
  %i.pm = fadd reassoc nsz arcp contract afn float %reass.mul304.i, %i.ph
  %i.pn = fmul reassoc nsz arcp contract afn float %i.pm, %i.oj
  %i.po = load float, ptr %i.nn, align 4, !tbaa !117
  %i.pp = fmul reassoc nsz arcp contract afn float %i.po, %i.nh
  %i.pq = load float, ptr %i.no, align 4, !tbaa !117
  %i.pr = fmul reassoc nsz arcp contract afn float %i.pq, %i.mu
  %i.ps = load float, ptr %i.np, align 4, !tbaa !117
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, %i.nh
  %i.pu = load float, ptr %i.nq, align 4, !tbaa !117
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, %i.mu
  %reass.add321.i.a = fadd reassoc nsz arcp contract afn float %i.pv, %i.pt
  %reass.mul322.i = fmul reassoc nsz arcp contract afn float %reass.add321.i.a, %i.ni
  %reass.add323.i.a = fadd reassoc nsz arcp contract afn float %i.pr, %i.pp
  %reass.mul324.i = fmul reassoc nsz arcp contract afn float %reass.add323.i.a, %i.nj
  %reass.add307.i = fadd reassoc nsz arcp contract afn float %reass.mul322.i, %reass.mul324.i
  %reass.mul308.i = fmul reassoc nsz arcp contract afn float %reass.add307.i, %i.ox
  %i.pw = fadd reassoc nsz arcp contract afn float %reass.mul308.i, %i.pn
  %i.px = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pw, float f0x3C23D70A) ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.pz = load float, ptr %i.py, align 4, !tbaa !118
  %i.qa = fmul reassoc nsz arcp contract afn float %i.pz, %i.nh
  %i.qb = getelementptr i8, ptr %i.ng, i64 24
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !118
  %i.qd = fmul reassoc nsz arcp contract afn float %i.qc, %i.mu
  %i.qe = fadd reassoc nsz arcp contract afn float %i.qd, %i.qa
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, %i.nj
  %i.qg = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !118
  %i.qi = fmul reassoc nsz arcp contract afn float %i.qh, %i.nh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !118
  %i.ql = fmul reassoc nsz arcp contract afn float %i.qk, %i.mu
  %reass.add309.i.a = fadd reassoc nsz arcp contract afn float %i.ql, %i.qi
  %reass.mul310.i.a = fmul reassoc nsz arcp contract afn float %reass.add309.i.a, %i.ni
  %i.qm = fadd reassoc nsz arcp contract afn float %reass.mul310.i.a, %i.qf
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qm, %i.oj
  %i.qo = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !118
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qp, %i.nh
  %i.qr = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !118
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qs, %i.mu
  %i.qu = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !118
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qv, %i.nh
  %i.qx = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !118
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, %i.mu
  %reass.add325.i = fadd reassoc nsz arcp contract afn float %i.qz, %i.qw
  %reass.mul326.i = fmul reassoc nsz arcp contract afn float %reass.add325.i, %i.ni
  %reass.add327.i.a = fadd reassoc nsz arcp contract afn float %i.qt, %i.qq
  %reass.mul328.i = fmul reassoc nsz arcp contract afn float %reass.add327.i.a, %i.nj
  %reass.add313.i = fadd reassoc nsz arcp contract afn float %reass.mul326.i, %reass.mul328.i
  %reass.mul314.i = fmul reassoc nsz arcp contract afn float %reass.add313.i, %i.ox
  %i.ra = fadd reassoc nsz arcp contract afn float %reass.mul314.i, %i.qn
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !119
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.nh
  %i.re = getelementptr i8, ptr %i.ng, i64 20
  %i.rf = load float, ptr %i.re, align 4, !tbaa !119
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, %i.mu
  %i.rh = fadd reassoc nsz arcp contract afn float %i.rg, %i.rd
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.nj
  %i.rj = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !119
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, %i.nh
  %i.rm = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !119
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, %i.mu
  %reass.add315.i = fadd reassoc nsz arcp contract afn float %i.ro, %i.rl
  %reass.mul316.i = fmul reassoc nsz arcp contract afn float %reass.add315.i, %i.ni
  %i.rp = fadd reassoc nsz arcp contract afn float %reass.mul316.i, %i.ri
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.oj
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !119
  %i.rt = fmul reassoc nsz arcp contract afn float %i.rs, %i.nh
  %i.ru = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !119
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.mu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !119
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, %i.nh
  %i.sa = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !119
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, %i.mu
  %reass.add329.i.a = fadd reassoc nsz arcp contract afn float %i.sc, %i.rz
  %reass.mul330.i.a = fmul reassoc nsz arcp contract afn float %reass.add329.i.a, %i.ni
  %reass.add331.i = fadd reassoc nsz arcp contract afn float %i.rw, %i.rt
  %reass.mul332.i = fmul reassoc nsz arcp contract afn float %reass.add331.i, %i.nj
  %reass.add319.i = fadd reassoc nsz arcp contract afn float %reass.mul330.i.a, %reass.mul332.i
  %reass.mul320.i = fmul reassoc nsz arcp contract afn float %reass.add319.i, %i.ox
  %i.sd = fadd reassoc nsz arcp contract afn float %reass.mul320.i, %i.rq
  %i.se = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.pb ; 2 uses
  %i.sf = fmul reassoc nsz arcp contract afn float %i.se, %i.kv
  %i.sg = fmul reassoc nsz arcp contract afn float %i.pb, %i.kr ; 2 uses
  %i.sh = fmul reassoc nsz arcp contract afn float %i.sd, %i.sg
  %i.si = fdiv reassoc nsz arcp contract afn float %i.sh, %i.px
  %i.sj = fadd reassoc nsz arcp contract afn float %i.si, %i.sf
  %i.sk = fmul reassoc nsz arcp contract afn float %i.se, %i.kz
  %i.sl = fmul reassoc nsz arcp contract afn float %i.ra, %i.sg
  %i.sm = fdiv reassoc nsz arcp contract afn float %i.sl, %i.px
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sm, %i.sk
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ao, %.thread294.i
  %.sink.i = phi float [ %i.sj, %bb.ao ], [ %i.kv, %.thread294.i ]
  %i.so = phi reassoc nsz arcp contract afn float [ %i.sn, %bb.ao ], [ %i.kz, %.thread294.i ]
  store float %.sink.i, ptr %i.kw, align 4, !tbaa !11
  store float %i.so, ptr %i.la, align 4, !tbaa !11
  br label %.thread.i

.thread.i:                                        ; preds = %.critedge.i, %bb.an
  %i.sp = add nuw nsw i32 %.0334.i, 1             ; 2 uses
  %i.sq = add i64 %.0272333.i, 4
  %exitcond.not.i82 = icmp eq i32 %i.sp, %i.jq
  br i1 %exitcond.not.i82, label %._crit_edge.i83, label %bb.an

dt_iop_colorreconstruct_bilateral_slice.exit:     ; preds = %._crit_edge.i83, %dt_iop_colorreconstruct_bilateral_thaw.exit, %.lr.ph340.i
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !58 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 16, !tbaa !59
  %i.su = icmp ne i32 %i.st, 0
  %i.sv = icmp ne ptr %i.d, null
  %or.cond3 = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %or.cond3, label %bb.ap, label %dt_iop_colorreconstruct_bilateral_free.exit

bb.ap:                                            ; preds = %dt_iop_colorreconstruct_bilateral_slice.exit
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !84 ; 2 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 644
  %.val71 = load i32, ptr %i.sy, align 4, !tbaa !85
  %i.sz = and i32 %.val71, 4
  %.not68 = icmp eq i32 %i.sz, 0
  br i1 %.not68, label %dt_iop_colorreconstruct_bilateral_free.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.tb = load i32, ptr %i.ta, align 16, !tbaa !93
  %i.tc = sitofp reassoc nsz arcp contract afn i32 %i.tb to double
  %i.td = tail call i64 @dt_dev_hash_plus(ptr noundef nonnull %i.ss, ptr noundef nonnull %i.sx, double noundef %i.tc, i32 noundef 3) #23
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.tf = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.te) #23 ; 0 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !94 ; 3 uses
  %.not.i88 = icmp eq ptr %i.th, null
  br i1 %.not.i88, label %dt_iop_colorreconstruct_bilateral_dump.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 56
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !106
  tail call void @free(ptr noundef %i.tj) #23
  tail call void @free(ptr noundef nonnull %i.th) #23
  br label %dt_iop_colorreconstruct_bilateral_dump.exit

dt_iop_colorreconstruct_bilateral_dump.exit:      ; preds = %bb.aq, %bb.ar
  %i.tk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24 ; 10 uses
  %.not.i89 = icmp eq ptr %i.tk, null
  br i1 %.not.i89, label %bb.as, label %bb.at

bb.as:                                            ; preds = %dt_iop_colorreconstruct_bilateral_dump.exit
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.37) #23
  br label %dt_iop_colorreconstruct_bilateral_freeze.exit

bb.at:                                            ; preds = %dt_iop_colorreconstruct_bilateral_dump.exit
  %i.tl = load i64, ptr %.063, align 8, !tbaa !107 ; 2 uses
  store i64 %i.tl, ptr %i.tk, align 8, !tbaa !120
  %i.tm = load i64, ptr %i.jk, align 8, !tbaa !108 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store i64 %i.tm, ptr %i.tn, align 8, !tbaa !121
  %i.to = getelementptr inbounds nuw i8, ptr %.063, i64 16 ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !101 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store i64 %i.tp, ptr %i.tq, align 8, !tbaa !98
  %i.tr = getelementptr inbounds nuw i8, ptr %.063, i64 24
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tt = load <4 x i32>, ptr %i.tr, align 8, !tbaa !24
  store <4 x i32> %i.tt, ptr %i.ts, align 8, !tbaa !24
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.tv = load <2 x float>, ptr %i.jh, align 8, !tbaa !11
  store <2 x float> %i.tv, ptr %i.tu, align 8, !tbaa !11
  %i.tw = getelementptr inbounds nuw i8, ptr %.063, i64 48
  %i.tx = load float, ptr %i.tw, align 8, !tbaa !104
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  store float %i.tx, ptr %i.ty, align 8, !tbaa !103
  %i.tz = shl i64 %i.tl, 4
  %i.ua = mul i64 %i.tz, %i.tm
  %i.ub = mul i64 %i.ua, %i.tp
  %i.uc = tail call ptr @dt_alloc_aligned(i64 noundef %i.ub) #23 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uc, i64 64) ]
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tk, i64 56
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !106
  %.not40.i90 = icmp eq ptr %i.uc, null
  br i1 %.not40.i90, label %dt_iop_colorreconstruct_bilateral_dump.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ue = getelementptr inbounds nuw i8, ptr %.063, i64 56
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !105 ; 2 uses
  %.not41.i91 = icmp eq ptr %i.uf, null
  br i1 %.not41.i91, label %dt_iop_colorreconstruct_bilateral_dump.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ug = load i64, ptr %.063, align 8, !tbaa !107
  %i.uh = shl i64 %i.ug, 4
  %i.ui = load i64, ptr %i.jk, align 8, !tbaa !108
  %i.uj = mul i64 %i.uh, %i.ui
  %i.uk = load i64, ptr %i.to, align 8, !tbaa !101
  %i.ul = mul i64 %i.uj, %i.uk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.uc, ptr nonnull align 4 %i.uf, i64 %i.ul, i1 false)
  br label %dt_iop_colorreconstruct_bilateral_freeze.exit

dt_iop_colorreconstruct_bilateral_dump.exit.i:    ; preds = %bb.au, %bb.at
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38) #23
  tail call void @free(ptr noundef %i.uc) #23
  tail call void @free(ptr noundef nonnull %i.tk) #23
  br label %dt_iop_colorreconstruct_bilateral_freeze.exit

dt_iop_colorreconstruct_bilateral_freeze.exit:    ; preds = %bb.as, %bb.av, %dt_iop_colorreconstruct_bilateral_dump.exit.i
  %.0.i92 = phi ptr [ %i.tk, %bb.av ], [ null, %dt_iop_colorreconstruct_bilateral_dump.exit.i ], [ null, %bb.as ]
  store ptr %.0.i92, ptr %i.tg, align 8, !tbaa !94
  %i.um = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.td, ptr %i.um, align 8, !tbaa !122
  %i.un = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.te) #23 ; 0 uses
  br label %dt_iop_colorreconstruct_bilateral_free.exit

dt_iop_colorreconstruct_bilateral_free.exit:      ; preds = %dt_iop_colorreconstruct_bilateral_freeze.exit, %bb.ap, %dt_iop_colorreconstruct_bilateral_slice.exit
  %i.uo = getelementptr inbounds nuw i8, ptr %.063, i64 56
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.up) #23
  tail call void @free(ptr noundef nonnull %.063) #23
  br label %bb.ax

bb.aw:                                            ; preds = %bb.w, %dt_iop_colorreconstruct_bilateral_free.exit.i, %bb.aa, %dt_iop_colorreconstruct_bilateral_free.exit.i73
  %i.uq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #23
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.uq) #23
  %i.ur = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !114
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !113
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !123
  %i.uz = sext i32 %i.uy to i64
  %i.va = mul nsw i64 %i.uw, %i.ut
  %i.vb = mul i64 %i.va, %i.uz
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.vb) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %dt_iop_colorreconstruct_bilateral_free.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #6

declare float @dt_dev_get_zoomed_in() local_unnamed_addr #3

declare i32 @dt_dev_sync_pixelpipe_hash(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

declare i64 @dt_dev_hash_plus(ptr noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !25  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load float, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !124
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.h, float 1.000000e-01)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !125
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.k, float 1.000000e+00)
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.f
  %i.n = fdiv reassoc nsz arcp contract afn float %i.m, %i.d ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !123
  %i.r = sext i32 %i.q to i64
  %i.s = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %i.i
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.s)
  %i.u = load <2 x i32>, ptr %i.o, align 4, !tbaa !24 ; 3 uses
  %i.v = extractelement <2 x i32> %i.u, i64 0
  %i.w = sext i32 %i.v to i64
  %i.x = extractelement <2 x i32> %i.u, i64 1
end_hunk_0
