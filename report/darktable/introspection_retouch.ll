Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@process:bb.a
  %i.gk = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gi) #29
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gb, f0x410137F7
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gl, f0x3E0D3DCB
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gn = phi reassoc nsz arcp contract afn float [ %i.gk, %bb.ak ], [ %i.gm, %bb.al ]
  %i.go = fcmp reassoc nsz arcp contract afn ogt float %i.gd, f0x3C111AA7
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = fmul reassoc nsz arcp contract afn float %i.gd, f0x40F92F69
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, f0x3E0D3DCB
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gr = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gd) #29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gs = phi reassoc nsz arcp contract afn float [ %i.gr, %bb.ao ], [ %i.gq, %bb.an ] ; 2 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gf, f0x3F9B2B9B ; 2 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt float %i.gt, f0x3C111AA7
  br i1 %i.gu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gf, f0x41170A26
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gv, f0x3E0D3DCB
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gx = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gt) #29
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gy = phi reassoc nsz arcp contract afn float [ %i.gx, %bb.ar ], [ %i.gw, %bb.aq ]
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gh, 0.000000e+00 ; 3 uses
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gz, f0x3C111AA7
  br i1 %i.ha, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gz, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hc = call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.gz) #29
  br label %dt_XYZ_to_Lab.exit.i

dt_XYZ_to_Lab.exit.i:                             ; preds = %bb.au, %bb.at
  %i.hd = phi reassoc nsz arcp contract afn float [ %i.hc, %bb.au ], [ %i.hb, %bb.at ]
  %i.he = fmul reassoc nsz arcp contract afn float %i.gs, 1.160000e+02
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, -1.600000e+01
  %i.hg = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.gy, i64 1
  %i.hi = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fsub reassoc nsz arcp contract afn <2 x float> %i.hh, %i.hj
  %i.hl = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, <float 5.000000e+02, float -2.000000e+02>
  store <2 x float> %i.hl, ptr %i.fl, align 4, !tbaa !12
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hd, 0.000000e+00
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store float %i.hm, ptr %i.hn, align 4, !tbaa !12
  br label %bb.av

bb.av:                                            ; preds = %dt_XYZ_to_Lab.exit.i, %bb.ai
  %.promoted.i = phi float [ %i.hf, %dt_XYZ_to_Lab.exit.i ], [ %.promoted.pre.i, %bb.ai ]
  %i.ho = fmul reassoc nsz arcp contract afn float %.promoted.i, f0x3C23D70A ; 2 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ugt float %i.ho, %i.ea
  br i1 %i.hp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hq = fsub reassoc nsz arcp contract afn float %i.ho, %i.ea
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.fh
  %i.hs = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hr, float %i.el)
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, 1.000000e+02
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hu = phi float [ %i.ht, %bb.aw ], [ 0.000000e+00, %bb.av ] ; 2 uses
  store float %i.hu, ptr %i.fi, align 16, !tbaa !12
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hu, 8.620690e-03
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hv, f0x3E0D3DCB ; 7 uses
  %i.hx = fcmp reassoc nsz arcp contract afn ogt float %i.hw, f0x3E53DCB1
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hw, %i.hw
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, %i.hw
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hw, f0x3E038026
  %i.ib = fadd reassoc nsz arcp contract afn float %i.ia, f0xBC911AA6
  %i.ic = select reassoc nsz arcp contract afn i1 %i.hx, float %i.hz, float %i.ib ; 6 uses
  br i1 %.not.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.id = load i32, ptr %i.er, align 4, !tbaa !265
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.if = load <2 x float>, ptr %i.ie, align 4, !tbaa !12
  %i.ig = fmul reassoc nsz arcp contract afn <2 x float> %i.if, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ih = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ij = fadd reassoc nsz arcp contract afn <2 x float> %i.ii, %i.ig
  %i.ik = fsub reassoc nsz arcp contract afn <2 x float> %i.ii, %i.ig
  %i.il = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.im = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.il, splat (float f0x3E53DCB1)
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.il, %i.il
  %i.io = fmul reassoc nsz arcp contract afn <2 x float> %i.in, %i.il
  %i.ip = fmul reassoc nsz arcp contract afn <2 x float> %i.il, splat (float f0x3E038026)
  %i.iq = fadd reassoc nsz arcp contract afn <2 x float> %i.ip, splat (float f0xBC911AA6)
  %i.ir = select <2 x i1> %i.im, <2 x float> %i.io, <2 x float> %i.iq
  %i.is = fmul reassoc nsz arcp contract afn <2 x float> %i.ir, <float 9.642000e-01, float f0x3F532CA5> ; 4 uses
  %.not.i.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.it = load i32, ptr %i.eq, align 64, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.iu = load <4 x float>, ptr %i.es, align 64, !tbaa !12
  %i.iv = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %i.iu, %i.iv
  %i.ix = load <4 x float>, ptr %i.ev, align 16, !tbaa !12
  %i.iy = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ja = fmul reassoc nsz arcp contract afn <4 x float> %i.ix, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn <4 x float> %i.ja, %i.iw
  %i.jc = load <4 x float>, ptr %i.ew, align 32, !tbaa !12
  %i.jd = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.je = fmul reassoc nsz arcp contract afn <4 x float> %i.jc, %i.jd
  %i.jf = fadd reassoc nsz arcp contract afn <4 x float> %i.jb, %i.je
  store <4 x float> %i.jf, ptr %i.a, align 16, !tbaa !12
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %i.a, ptr noundef nonnull %i.fi, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull readonly %i.et, i32 noundef %i.it)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.jh = load float, ptr %i.es, align 4, !tbaa !12
  %i.ji = extractelement <2 x float> %i.is, i64 0 ; 4 uses
  %i.jj = fmul reassoc nsz arcp contract afn float %i.jh, %i.ji
  %i.jk = load float, ptr %i.ev, align 4, !tbaa !12
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %i.ic
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jl, %i.jj
  %i.jn = load float, ptr %i.ew, align 4, !tbaa !12
  %i.jo = extractelement <2 x float> %i.is, i64 1 ; 4 uses
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jn, %i.jo
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jm, %i.jp
  store float %i.jq, ptr %i.fi, align 16, !tbaa !12
  %i.jr = load float, ptr %i.ex, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, %i.ji
  %i.jt = load float, ptr %i.ey, align 4, !tbaa !12
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, %i.ic
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %i.js
  %i.jw = load float, ptr %i.ez, align 4, !tbaa !12
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, %i.jo
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jv, %i.jx
  store float %i.jy, ptr %i.ie, align 4, !tbaa !12
  %i.jz = load float, ptr %i.fa, align 4, !tbaa !12
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.ji
  %i.kb = load float, ptr %i.fb, align 4, !tbaa !12
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.ic
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.ka
  %i.ke = load float, ptr %i.fc, align 4, !tbaa !12
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, %i.jo
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kd, %i.kf
  store float %i.kg, ptr %i.jg, align 8, !tbaa !12
  %i.kh = load float, ptr %i.fd, align 4, !tbaa !12
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, %i.ji
  %i.kj = load float, ptr %i.fe, align 4, !tbaa !12
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, %i.ic
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kk, %i.ki
  %i.km = load float, ptr %i.ff, align 4, !tbaa !12
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %i.jo
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store float %i.ko, ptr %i.kp, align 4, !tbaa !12
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.bb:                                            ; preds = %bb.ax
  %i.kq = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.kr = load <2 x float>, ptr %i.kq, align 4, !tbaa !12
  %i.ks = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = fadd reassoc nsz arcp contract afn <2 x float> %i.ku, %i.ks
  %i.kw = fsub reassoc nsz arcp contract afn <2 x float> %i.ku, %i.ks
  %i.kx = shufflevector <2 x float> %i.kv, <2 x float> %i.kw, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ky = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kx, splat (float f0x3E53DCB1)
  %i.kz = fmul reassoc nsz arcp contract afn <2 x float> %i.kx, %i.kx
  %i.la = fmul reassoc nsz arcp contract afn <2 x float> %i.kz, %i.kx
  %i.lb = fmul reassoc nsz arcp contract afn <2 x float> %i.kx, splat (float f0x3E038026)
  %i.lc = fadd reassoc nsz arcp contract afn <2 x float> %i.lb, splat (float f0xBC911AA6)
  %i.ld = select <2 x i1> %i.ky, <2 x float> %i.la, <2 x float> %i.lc ; 2 uses
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lf = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lg = shufflevector <4 x float> <float f0xBFCEF57D, float f0x3FF54420, float f0xBE6A7CB9, float poison>, <4 x float> %i.lf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lh = fmul reassoc nsz arcp contract afn <4 x float> %i.lg, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %i.le, <float f0x404162F2, float f0xBF719831, float f0x3D8E11AE, float f0x3F532CA5>
  %i.lj = shufflevector <4 x float> %i.lf, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.lk = fmul reassoc nsz arcp contract afn <4 x float> %i.lj, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.ll = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ln = fmul reassoc nsz arcp contract afn <4 x float> %i.lh, %i.lm
  %i.lo = fadd reassoc nsz arcp contract afn <4 x float> %i.lh, %i.lm
  %i.lp = shufflevector <4 x float> %i.ln, <4 x float> %i.lo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.lq = fadd reassoc nsz arcp contract afn <4 x float> %i.lp, %i.li ; 2 uses
  %i.lr = fadd reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lk
  %i.ls = fmul reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lk
  %i.lt = shufflevector <4 x float> %i.lr, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.lt, ptr %i.fi, align 16, !tbaa !12
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

dt_ioppr_lab_to_rgb_matrix.exit.i:                ; preds = %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.lu = icmp samesign ult i64 %indvars.iv.next.i, %i.fg
  br i1 %i.lu, label %bb.ah, label %rt_adjust_levels.exit

rt_adjust_levels.exit:                            ; preds = %dt_ioppr_lab_to_rgb_matrix.exit.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.lv = load ptr, ptr %i.bh, align 8, !tbaa !243
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 628
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !330
  %i.ly = trunc i32 %i.lx to i1
  %or.cond5 = and i1 %i.k, %i.ly
  br i1 %or.cond5, label %bb.bc, label %dt_iop_alpha_copy.exit

bb.bc:                                            ; preds = %rt_adjust_levels.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !189
  %.not132 = icmp ne i32 %i.ma, 0
  %.not.i138 = icmp eq i64 %i.v, 0
  %or.cond167 = or i1 %.not.i138, %.not132
  br i1 %or.cond167, label %dt_iop_alpha_copy.exit, label %.lr.ph.i139.preheader

.lr.ph.i139.preheader:                            ; preds = %bb.bc
  %i.mb = call i64 @llvm.umax.i64(i64 %i.v, i64 7)
  %i.mc = add i64 %i.mb, -4                       ; 3 uses
  %i.md = lshr i64 %i.mc, 2
  %i.me = add nuw nsw i64 %i.md, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %i.mc, 96
  br i1 %min.iters.check211, label %.lr.ph.i139.preheader222, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i139.preheader
  %i.mf = getelementptr i8, ptr %i.x, i64 12
  %i.mg = shl i64 %i.mc, 2
  %i.mh = and i64 %i.mg, -16
  %i.mi = add i64 %i.mh, 16                       ; 2 uses
  %i.mj = getelementptr i8, ptr %i.x, i64 %i.mi
  %i.mk = getelementptr i8, ptr %2, i64 12
  %i.ml = getelementptr i8, ptr %2, i64 %i.mi
  %bound0 = icmp ult ptr %i.mf, %i.ml
  %bound1 = icmp ult ptr %i.mk, %i.mj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i139.preheader222, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck
  %i.mm = and i64 %i.me, 7                        ; 2 uses
  %i.mn = icmp eq i64 %i.mm, 0
  %i.mo = select i1 %i.mn, i64 8, i64 %i.mm
  %n.vec213 = sub nsw i64 %i.me, %i.mo            ; 2 uses
  %i.mp = shl i64 %n.vec213, 2
  %i.mq = or disjoint i64 %i.mp, 3
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 2 uses
  %vec.ind216 = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph212 ], [ %vec.ind.next219, %vector.body214 ] ; 2 uses
  %.idx = shl nuw i64 %index215, 4
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %wide.vec = load <32 x float>, ptr %i.ms, align 4, !tbaa !12, !alias.scope !332
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep217 = getelementptr inbounds nuw [4 x i8], ptr %i.x, <8 x i64> %vec.ind216
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !333, !noalias !332
  %index.next218 = add nuw i64 %index215, 8       ; 2 uses
  %vec.ind.next219 = add nuw <8 x i64> %vec.ind216, splat (i64 32)
  %i.mt = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.mt, label %.lr.ph.i139.preheader222, label %vector.body214, !llvm.loop !324

.lr.ph.i139.preheader222:                         ; preds = %vector.body214, %vector.memcheck, %.lr.ph.i139.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.i139.preheader ], [ %i.mq, %vector.body214 ]
  br label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %.lr.ph.i139.preheader222, %.lr.ph.i139
  %.09.i = phi i64 [ %i.mx, %.lr.ph.i139 ], [ %.09.i.ph, %.lr.ph.i139.preheader222 ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !12
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.09.i
  store float %i.mv, ptr %i.mw, align 4, !tbaa !12
  %i.mx = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.my = icmp ult i64 %i.mx, %i.v
  br i1 %i.my, label %.lr.ph.i139, label %dt_iop_alpha_copy.exit, !llvm.loop !325

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i139, %bb.bc, %rt_adjust_levels.exit
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !249
  %..i = call i32 @llvm.smin.i32(i32 %i.na, i32 %i.q)
  %i.nb = sext i32 %..i to i64
  %i.nc = shl nsw i64 %i.nb, 4                    ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !247
  %i.nf = call i32 @llvm.smin.i32(i32 %i.ne, i32 %i.t) ; 3 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph.i140, label %rt_copy_in_to_out.exit

.lr.ph.i140:                                      ; preds = %dt_iop_alpha_copy.exit
  %i.nh = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.ni = shufflevector <4 x i32> %i.j, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.nj = sub <2 x i32> %i.nh, %i.ni              ; 2 uses
  %i.nk = extractelement <2 x i32> %i.nj, i64 0
  %i.nl = sext i32 %i.nk to i64                   ; 5 uses
  %i.nm = extractelement <2 x i32> %i.nj, i64 1
  %i.nn = sext i32 %i.nm to i64                   ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.nf to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.no = icmp ult i32 %i.nf, 4
  br i1 %i.no, label %.epil.preheader, label %.lr.ph.i140.new

.lr.ph.i140.new:                                  ; preds = %.lr.ph.i140
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i140.new
  %indvars.iv.i141 = phi i64 [ 0, %.lr.ph.i140.new ], [ %indvars.iv.next.i142.3, %bb.bd ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i140.new ], [ %niter.next.3, %bb.bd ]
  %i.np = add nsw i64 %indvars.iv.i141, %i.nn
  %i.nq = mul nsw i64 %i.np, %i.r
  %i.nr = add nsw i64 %i.nq, %i.nl
  %i.ns = load i32, ptr %i.mz, align 4, !tbaa !249
  %i.nt = sext i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %indvars.iv.i141, 2
  %i.nv = mul i64 %i.nu, %i.nt
  %.idx168 = shl i64 %i.nr, 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nv
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nx, ptr nonnull readonly align 16 %i.nw, i64 %i.nc, i1 false)
  %indvars.iv.next.i142 = or disjoint i64 %indvars.iv.i141, 1 ; 2 uses
  %i.ny = add nsw i64 %indvars.iv.next.i142, %i.nn
  %i.nz = mul nsw i64 %i.ny, %i.r
  %i.oa = add nsw i64 %i.nz, %i.nl
  %i.ob = load i32, ptr %i.mz, align 4, !tbaa !249
  %i.oc = sext i32 %i.ob to i64
  %i.od = shl nuw nsw i64 %indvars.iv.next.i142, 2
  %i.oe = mul i64 %i.od, %i.oc
  %.idx168.1 = shl i64 %i.oa, 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.1
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.oe
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.og, ptr nonnull readonly align 16 %i.of, i64 %i.nc, i1 false)
  %indvars.iv.next.i142.1 = or disjoint i64 %indvars.iv.i141, 2 ; 2 uses
  %i.oh = add nsw i64 %indvars.iv.next.i142.1, %i.nn
  %i.oi = mul nsw i64 %i.oh, %i.r
  %i.oj = add nsw i64 %i.oi, %i.nl
  %i.ok = load i32, ptr %i.mz, align 4, !tbaa !249
  %i.ol = sext i32 %i.ok to i64
  %i.om = shl nuw nsw i64 %indvars.iv.next.i142.1, 2
  %i.on = mul i64 %i.om, %i.ol
  %.idx168.2 = shl i64 %i.oj, 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.2
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.on
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.op, ptr nonnull readonly align 16 %i.oo, i64 %i.nc, i1 false)
  %indvars.iv.next.i142.2 = or disjoint i64 %indvars.iv.i141, 3 ; 2 uses
  %i.oq = add nsw i64 %indvars.iv.next.i142.2, %i.nn
  %i.or = mul nsw i64 %i.oq, %i.r
  %i.os = add nsw i64 %i.or, %i.nl
  %i.ot = load i32, ptr %i.mz, align 4, !tbaa !249
  %i.ou = sext i32 %i.ot to i64
  %i.ov = shl nuw nsw i64 %indvars.iv.next.i142.2, 2
  %i.ow = mul i64 %i.ov, %i.ou
  %.idx168.3 = shl i64 %i.os, 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.3
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ow
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oy, ptr nonnull readonly align 16 %i.ox, i64 %i.nc, i1 false)
  %indvars.iv.next.i142.3 = add nuw nsw i64 %indvars.iv.i141, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rt_copy_in_to_out.exit.loopexit.unr-lcssa, label %bb.bd

rt_copy_in_to_out.exit.loopexit.unr-lcssa:        ; preds = %bb.bd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rt_copy_in_to_out.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %rt_copy_in_to_out.exit.loopexit.unr-lcssa, %.lr.ph.i140
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.lr.ph.i140 ], [ %indvars.iv.next.i142.3, %rt_copy_in_to_out.exit.loopexit.unr-lcssa ]
  %lcmp.mod223 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod223)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.epil.preheader
  %indvars.iv.i141.epil = phi i64 [ %indvars.iv.i141.epil.init, %.epil.preheader ], [ %indvars.iv.next.i142.epil, %bb.be ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.be ]
  %i.oz = add nsw i64 %indvars.iv.i141.epil, %i.nn
  %i.pa = mul nsw i64 %i.oz, %i.r
  %i.pb = add nsw i64 %i.pa, %i.nl
  %i.pc = load i32, ptr %i.mz, align 4, !tbaa !249
  %i.pd = sext i32 %i.pc to i64
  %i.pe = shl nuw nsw i64 %indvars.iv.i141.epil, 2
  %i.pf = mul i64 %i.pe, %i.pd
  %.idx168.epil = shl i64 %i.pb, 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.epil
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pf
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ph, ptr nonnull readonly align 16 %i.pg, i64 %i.nc, i1 false)
  %indvars.iv.next.i142.epil = add nuw nsw i64 %indvars.iv.i141.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %rt_copy_in_to_out.exit, label %bb.be, !llvm.loop !326
end_hunk_0
begin_hunk_1_@rt_copy_mask_to_alpha:bb.a

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_heal(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bilateral_init(i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_rgb2lab(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %dt_XYZ_to_Lab.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %dt_XYZ_to_Lab.exit
  %.08 = phi i64 [ %i.bg, %dt_XYZ_to_Lab.exit ], [ 0, %bb.a ] ; 2 uses
  %.idx = shl i64 %.08, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !12 ; 4 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0x3E1283AB
  %i.i = fmul reassoc nsz arcp contract afn float %i.g, 6.061690e-02
  %i.j = fmul reassoc nsz arcp contract afn float %i.g, f0x3F36D410
  %i.k = load float, ptr %i.d, align 4, !tbaa !12
  %i.l = load float, ptr %i.e, align 4, !tbaa !12
  %i.m = insertelement <4 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <4 x float> %i.n, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul reassoc nsz arcp contract afn <4 x float> %i.q, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.r, %i.o ; 4 uses
  %i.t = extractelement <4 x float> %i.s, i64 0
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, %i.h ; 2 uses
  %i.v = extractelement <4 x float> %i.s, i64 1
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.i ; 3 uses
  %i.x = extractelement <4 x float> %i.s, i64 2
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.j ; 2 uses
  %i.z = extractelement <4 x float> %i.s, i64 3
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.g
  %i.ab = fmul reassoc nsz arcp contract afn float %i.u, f0x3F84C0A6 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, f0x3C111AA7
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ad = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ab) #29
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ae = fmul reassoc nsz arcp contract afn float %i.u, f0x410137F7
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3E0D3DCB
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = phi reassoc nsz arcp contract afn float [ %i.ad, %bb.b ], [ %i.af, %bb.c ]
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.w, f0x3C111AA7
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = fmul reassoc nsz arcp contract afn float %i.w, f0x40F92F69
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, f0x3E0D3DCB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.w) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi reassoc nsz arcp contract afn float [ %i.ak, %bb.f ], [ %i.aj, %bb.e ] ; 3 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.y, f0x3F9B2B9B ; 2 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x3C111AA7
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = fmul reassoc nsz arcp contract afn float %i.y, f0x41170A26
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.am) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = phi reassoc nsz arcp contract afn float [ %i.aq, %bb.i ], [ %i.ap, %bb.h ]
  %i.as = fmul reassoc nsz arcp contract afn float %i.aa, 0.000000e+00 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, f0x3C111AA7
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.l:                                             ; preds = %bb.j
  %i.av = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.as) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.k, %bb.l
  %i.aw = phi reassoc nsz arcp contract afn float [ %i.av, %bb.l ], [ %i.au, %bb.k ]
  %i.ax = fmul reassoc nsz arcp contract afn float %i.al, 1.160000e+02
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, -1.600000e+01
  %i.az = fsub reassoc nsz arcp contract afn float %i.ag, %i.al
  %i.ba = fsub reassoc nsz arcp contract afn float %i.ar, %i.al
  %i.bb = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.az, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.ba, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.aw, i64 3
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %i.be, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bf, ptr %i.d, align 4, !tbaa !12
  %i.bg = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

declare void @dt_bilateral_splat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_blur(ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_slice(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bilateral_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_lab2rgb(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

.lr.ph.preheader20:                               ; preds = %vector.body, %.lr.ph.preheader
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.d = and i64 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 8, i64 %i.d
  %n.vec = sub i64 %i.c, %i.f                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec18 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec19 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec18, splat (float 2.000000e-03)
  %i.j = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.k = fadd reassoc nsz arcp contract afn <8 x float> %i.j, splat (float f0x3E0D3DCB) ; 7 uses
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec19, splat (float 5.000000e-03)
  %i.m = fadd reassoc nsz arcp contract afn <8 x float> %i.k, %i.i ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.m, splat (float f0x3E53DCB1)
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %i.m
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.m, splat (float f0x3E038026)
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, splat (float f0xBC911AA6)
  %i.s = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %i.p, <8 x float> %i.r ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.k, splat (float f0x3E53DCB1)
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %i.k, %i.k
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %i.k
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.k, splat (float f0x3E038026)
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.w, splat (float f0xBC911AA6)
  %i.y = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %i.v, <8 x float> %i.x ; 3 uses
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %i.k, %i.l ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.z, splat (float f0x3E53DCB1)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.z
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.z
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.z, splat (float f0x3E038026)
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, splat (float f0xBC911AA6)
  %i.af = select reassoc nsz arcp contract afn <8 x i1> %i.aa, <8 x float> %i.ac, <8 x float> %i.ae ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float 9.642000e-01)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F532CA5)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float f0x3D8E11AE)
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.y, splat (float f0xBE6A7CB9)
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F94602A)
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.ag, %i.y
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.ah
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, zeroinitializer
  %i.aq = shufflevector <8 x float> %i.s, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ar = fmul reassoc nsz arcp contract afn <16 x float> %i.aq, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.as = shufflevector <8 x float> %i.y, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.au = fadd reassoc nsz arcp contract afn <16 x float> %i.ar, %i.at
  %i.av = shufflevector <8 x float> %i.af, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %i.av, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.ax = fadd reassoc nsz arcp contract afn <16 x float> %i.au, %i.aw
  %i.ay = shufflevector <8 x float> %i.am, <8 x float> %i.ap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ax, <16 x float> %i.ay, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.h, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %.lr.ph.preheader20, label %vector.body, !llvm.loop !390

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.017 = phi i64 [ %i.cs, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader20 ] ; 2 uses
  %.idx = shl i64 %.017, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bc, 2.000000e-03
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0x3E0D3DCB ; 4 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bf, 5.000000e-03
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bi, %i.bg ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1 ; 5 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, splat (float f0x3E53DCB1)
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bk, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bl, i64 3 ; 4 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float f0x3E038026)
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float f0x3E038026)
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, splat (float f0xBC911AA6)
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, splat (float f0x3E53DCB1)
  %i.ca = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bs
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.bx, splat (float f0xBC911AA6)
  %i.cd = select <2 x i1> %i.bo, <2 x float> %i.bv, <2 x float> %i.by
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cf = select <4 x i1> %i.bz, <4 x float> %i.cb, <4 x float> %i.cc ; 2 uses
  %i.cg = shufflevector <4 x float> <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float f0xBFCEF57D, float f0xBF719831, float f0xBE6A7CB9, float f0x3F532CA5>
  %i.cj = shufflevector <4 x float> %i.cf, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ch, %i.ce
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, %i.ce
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ci ; 2 uses
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.cr, ptr %i.ba, align 4, !tbaa !12
  %i.cs = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <4 x float>, ptr %i.a, align 16
  %i.g = load float, ptr %i.c, align 4, !tbaa !12
  %i.h = load float, ptr %i.e, align 8, !tbaa !12
  %i.i = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.j = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %i.i, %i.j
  %i.l = load <4 x float>, ptr %i.b, align 4, !tbaa !12
  %i.m = insertelement <4 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <4 x float> %i.l, %i.n
  %i.p = fadd reassoc nsz arcp contract afn <4 x float> %i.o, %i.k
  %i.q = load <4 x float>, ptr %i.d, align 4, !tbaa !12
  %i.r = insertelement <4 x float> poison, float %i.h, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.q, %i.s
  %i.u = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load float, ptr %0, align 4, !tbaa !12
  %i.aa = load float, ptr %i.w, align 4, !tbaa !12
  %i.ab = load float, ptr %i.y, align 4, !tbaa !12
  %i.ac = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ae
  %i.ag = load <4 x float>, ptr %i.v, align 4, !tbaa !12
  %i.ah = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ag, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.af
  %i.al = load <4 x float>, ptr %i.x, align 4, !tbaa !12
  %i.am = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.al, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <4 x float> %i.ak, %i.ao
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

dt_ioppr_rgb_matrix_to_xyz.exit:                  ; preds = %bb.b, %bb.c
  %i.aq = phi <4 x float> [ %i.ap, %bb.c ], [ %i.u, %bb.b ] ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0 ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, f0x3F84C0A6 ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, f0x3C111AA7
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit
  %i.au = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.as) #29
  br label %bb.f

bb.e:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit
  %i.av = fmul reassoc nsz arcp contract afn float %i.ar, f0x410137F7
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, f0x3E0D3DCB
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = phi reassoc nsz arcp contract afn float [ %i.au, %bb.d ], [ %i.aw, %bb.e ]
  %i.ay = extractelement <4 x float> %i.aq, i64 1 ; 3 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt float %i.ay, f0x3C111AA7
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, f0x40F92F69
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, f0x3E0D3DCB
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ay) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi reassoc nsz arcp contract afn float [ %i.bc, %bb.h ], [ %i.bb, %bb.g ] ; 3 uses
  %i.be = extractelement <4 x float> %i.aq, i64 2 ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, f0x3F9B2B9B ; 2 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, f0x3C111AA7
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = fmul reassoc nsz arcp contract afn float %i.be, f0x41170A26
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0x3E0D3DCB
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bf) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = phi reassoc nsz arcp contract afn float [ %i.bj, %bb.k ], [ %i.bi, %bb.j ]
  %i.bl = extractelement <4 x float> %i.aq, i64 3
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 0.000000e+00 ; 3 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt float %i.bm, f0x3C111AA7
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bm) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.m, %bb.n
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.bp, %bb.n ], [ %i.bo, %bb.m ]
  %i.br = fmul reassoc nsz arcp contract afn float %i.bd, 1.160000e+02
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, -1.600000e+01
  %i.bt = fsub reassoc nsz arcp contract afn float %i.ax, %i.bd
  %i.bu = fsub reassoc nsz arcp contract afn float %i.bk, %i.bd
  %i.bv = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bt, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bu, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bq, i64 3
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bz, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_apply_trc(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !267    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.d ], [ %i.z, %bb.c ], [ %i.h, %bb.a ]
  store float %i.ai, ptr %1, align 4, !tbaa !12
end_hunk_1
