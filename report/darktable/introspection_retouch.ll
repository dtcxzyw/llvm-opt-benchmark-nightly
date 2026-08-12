inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@process:bb.a
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
  %i.gs = phi reassoc nsz arcp contract afn float [ %i.gr, %bb.ao ], [ %i.gq, %bb.an ] ; 3 uses
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
  %i.hg = fsub reassoc nsz arcp contract afn float %i.gn, %i.gs
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, 5.000000e+02
  store float %i.hh, ptr %i.fl, align 4, !tbaa !18
  %i.hi = fsub reassoc nsz arcp contract afn float %i.gy, %i.gs
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.hd, i64 1
  %i.hl = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, <float -2.000000e+02, float 0.000000e+00>
  store <2 x float> %i.hl, ptr %i.fm, align 8, !tbaa !18
  br label %bb.av

bb.av:                                            ; preds = %dt_XYZ_to_Lab.exit.i, %bb.ai
  %.promoted.i = phi float [ %i.hf, %dt_XYZ_to_Lab.exit.i ], [ %.promoted.pre.i, %bb.ai ]
  %i.hm = fmul reassoc nsz arcp contract afn float %.promoted.i, f0x3C23D70A ; 2 uses
  %i.hn = fcmp reassoc nsz arcp contract afn ugt float %i.hm, %i.ea
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ho = fsub reassoc nsz arcp contract afn float %i.hm, %i.ea
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, %i.fh
  %i.hq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hp, float %i.el)
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, 1.000000e+02
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hs = phi float [ %i.hr, %bb.aw ], [ 0.000000e+00, %bb.av ] ; 2 uses
  store float %i.hs, ptr %i.fi, align 16, !tbaa !18
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, 8.620690e-03
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, f0x3E0D3DCB ; 7 uses
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.hu, f0x3E53DCB1
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hu, %i.hu
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.hu
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hu, f0x3E038026
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, f0xBC911AA6
  %i.ia = select reassoc nsz arcp contract afn i1 %i.hv, float %i.hx, float %i.hz ; 6 uses
  br i1 %.not.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = load i32, ptr %i.er, align 4, !tbaa !323
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.id = load <2 x float>, ptr %i.ic, align 4, !tbaa !18
  %i.ie = fmul reassoc nsz arcp contract afn <2 x float> %i.id, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = fadd reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ie
  %i.ii = fsub reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ie
  %i.ij = shufflevector <2 x float> %i.ih, <2 x float> %i.ii, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ik = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ij, splat (float f0x3E53DCB1)
  %i.il = fmul reassoc nsz arcp contract afn <2 x float> %i.ij, %i.ij
  %i.im = fmul reassoc nsz arcp contract afn <2 x float> %i.il, %i.ij
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.ij, splat (float f0x3E038026)
  %i.io = fadd reassoc nsz arcp contract afn <2 x float> %i.in, splat (float f0xBC911AA6)
  %i.ip = select <2 x i1> %i.ik, <2 x float> %i.im, <2 x float> %i.io ; 2 uses
  %i.iq = extractelement <2 x float> %i.ip, i64 0
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, 9.642000e-01 ; 5 uses
  %i.is = extractelement <2 x float> %i.ip, i64 1
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, f0x3F532CA5 ; 5 uses
  %.not.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iu = load i32, ptr %i.eq, align 64, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.iv = load <4 x float>, ptr %i.es, align 64, !tbaa !18
  %i.iw = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %i.iv, %i.ix
  %i.iz = load <4 x float>, ptr %i.ev, align 16, !tbaa !18
  %i.ja = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jc = fmul reassoc nsz arcp contract afn <4 x float> %i.iz, %i.jb
  %i.jd = fadd reassoc nsz arcp contract afn <4 x float> %i.jc, %i.iy
  %i.je = load <4 x float>, ptr %i.ew, align 32, !tbaa !18
  %i.jf = insertelement <4 x float> poison, float %i.it, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fmul reassoc nsz arcp contract afn <4 x float> %i.je, %i.jg
  %i.ji = fadd reassoc nsz arcp contract afn <4 x float> %i.jd, %i.jh
  store <4 x float> %i.ji, ptr %i.a, align 16, !tbaa !18
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %i.a, ptr noundef nonnull %i.fi, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull readonly %i.et, i32 noundef %i.iu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.jk = load float, ptr %i.es, align 4, !tbaa !18
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %i.ir
  %i.jm = load float, ptr %i.ev, align 4, !tbaa !18
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.ia
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, %i.jl
  %i.jp = load float, ptr %i.ew, align 4, !tbaa !18
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.it
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jo, %i.jq
  store float %i.jr, ptr %i.fi, align 16, !tbaa !18
  %i.js = load float, ptr %i.ex, align 4, !tbaa !18
  %i.jt = fmul reassoc nsz arcp contract afn float %i.js, %i.ir
  %i.ju = load float, ptr %i.ey, align 4, !tbaa !18
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, %i.ia
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, %i.jt
  %i.jx = load float, ptr %i.ez, align 4, !tbaa !18
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, %i.it
  %i.jz = fadd reassoc nsz arcp contract afn float %i.jw, %i.jy
  store float %i.jz, ptr %i.ic, align 4, !tbaa !18
  %i.ka = load float, ptr %i.fa, align 4, !tbaa !18
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.ir
  %i.kc = load float, ptr %i.fb, align 4, !tbaa !18
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, %i.ia
  %i.ke = fadd reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = load float, ptr %i.fc, align 4, !tbaa !18
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, %i.it
  %i.kh = fadd reassoc nsz arcp contract afn float %i.ke, %i.kg
  store float %i.kh, ptr %i.jj, align 8, !tbaa !18
  %i.ki = load float, ptr %i.fd, align 4, !tbaa !18
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, %i.ir
  %i.kk = load float, ptr %i.fe, align 4, !tbaa !18
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kk, %i.ia
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %i.kj
  %i.kn = load float, ptr %i.ff, align 4, !tbaa !18
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, %i.it
  %i.kp = fadd reassoc nsz arcp contract afn float %i.km, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store float %i.kp, ptr %i.kq, align 4, !tbaa !18
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

bb.bb:                                            ; preds = %bb.ax
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.ks = load <2 x float>, ptr %i.kr, align 4, !tbaa !18
  %i.kt = fmul reassoc nsz arcp contract afn <2 x float> %i.ks, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ku = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kw = fadd reassoc nsz arcp contract afn <2 x float> %i.kv, %i.kt
  %i.kx = fsub reassoc nsz arcp contract afn <2 x float> %i.kv, %i.kt
  %i.ky = shufflevector <2 x float> %i.kw, <2 x float> %i.kx, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.kz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ky, splat (float f0x3E53DCB1)
  %i.la = fmul reassoc nsz arcp contract afn <2 x float> %i.ky, %i.ky
  %i.lb = fmul reassoc nsz arcp contract afn <2 x float> %i.la, %i.ky
  %i.lc = fmul reassoc nsz arcp contract afn <2 x float> %i.ky, splat (float f0x3E038026)
  %i.ld = fadd reassoc nsz arcp contract afn <2 x float> %i.lc, splat (float f0xBC911AA6)
  %i.le = select <2 x i1> %i.kz, <2 x float> %i.lb, <2 x float> %i.ld ; 2 uses
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lg = shufflevector <2 x float> %i.le, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lh = shufflevector <4 x float> <float f0xBFCEF57D, float f0x3FF54420, float f0xBE6A7CB9, float poison>, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %i.lh, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.lj = fmul reassoc nsz arcp contract afn <4 x float> %i.lf, <float f0x404162F2, float f0xBF719831, float f0x3D8E11AE, float f0x3F532CA5>
  %i.lk = shufflevector <4 x float> %i.lg, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ll = fmul reassoc nsz arcp contract afn <4 x float> %i.lk, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.lm = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lo = fmul reassoc nsz arcp contract afn <4 x float> %i.li, %i.ln
  %i.lp = fadd reassoc nsz arcp contract afn <4 x float> %i.li, %i.ln
  %i.lq = shufflevector <4 x float> %i.lo, <4 x float> %i.lp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.lr = fadd reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lj ; 2 uses
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %i.lr, %i.ll
  %i.lt = fmul reassoc nsz arcp contract afn <4 x float> %i.lr, %i.ll
  %i.lu = shufflevector <4 x float> %i.ls, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.lu, ptr %i.fi, align 16, !tbaa !18
  br label %dt_ioppr_lab_to_rgb_matrix.exit.i

dt_ioppr_lab_to_rgb_matrix.exit.i:                ; preds = %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next.i, %i.fg
  br i1 %i.lv, label %bb.ah, label %rt_adjust_levels.exit

rt_adjust_levels.exit:                            ; preds = %dt_ioppr_lab_to_rgb_matrix.exit.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.lw = load ptr, ptr %i.bh, align 8, !tbaa !293
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 628
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !315
  %i.lz = trunc i32 %i.ly to i1
  %or.cond5 = and i1 %i.k, %i.lz
  br i1 %or.cond5, label %bb.bc, label %dt_iop_alpha_copy.exit

bb.bc:                                            ; preds = %rt_adjust_levels.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !202
  %.not132 = icmp ne i32 %i.mb, 0
  %.not.i138 = icmp eq i64 %i.v, 0
  %or.cond167 = or i1 %.not.i138, %.not132
  br i1 %or.cond167, label %dt_iop_alpha_copy.exit, label %.lr.ph.i139.preheader

.lr.ph.i139.preheader:                            ; preds = %bb.bc
  %i.mc = call i64 @llvm.umax.i64(i64 %i.v, i64 7)
  %i.md = add i64 %i.mc, -4                       ; 2 uses
  %i.me = lshr i64 %i.md, 2
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %i.md, 96
  br i1 %min.iters.check211, label %.lr.ph.i139.preheader222, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i139.preheader
  %scevgep = getelementptr i8, ptr %i.x, i64 12
  %umax = call i64 @llvm.umax.i64(i64 %i.v, i64 7)
  %i.mg = shl i64 %umax, 2
  %i.mh = and i64 %i.mg, -16                      ; 2 uses
  %scevgep208 = getelementptr i8, ptr %i.x, i64 %i.mh
  %scevgep209 = getelementptr i8, ptr %2, i64 12
  %scevgep210 = getelementptr i8, ptr %2, i64 %i.mh
  %bound0 = icmp ult ptr %scevgep, %scevgep210
  %bound1 = icmp ult ptr %scevgep209, %scevgep208
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i139.preheader222, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck
  %i.mi = and i64 %i.mf, 7                        ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 0
  %i.mk = select i1 %i.mj, i64 8, i64 %i.mi
  %n.vec213 = sub nsw i64 %i.mf, %i.mk            ; 2 uses
  %i.ml = shl i64 %n.vec213, 2
  %i.mm = or disjoint i64 %i.ml, 3
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 2 uses
  %vec.ind216 = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph212 ], [ %vec.ind.next219, %vector.body214 ] ; 2 uses
  %.idx = shl nuw i64 %index215, 4
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  %wide.vec = load <32 x float>, ptr %i.mo, align 4, !tbaa !18, !alias.scope !324
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep217 = getelementptr inbounds nuw [4 x i8], ptr %i.x, <8 x i64> %vec.ind216
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !327, !noalias !324
  %index.next218 = add nuw i64 %index215, 8       ; 2 uses
  %vec.ind.next219 = add nuw <8 x i64> %vec.ind216, splat (i64 32)
  %i.mp = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.mp, label %.lr.ph.i139.preheader222, label %vector.body214, !llvm.loop !329

.lr.ph.i139.preheader222:                         ; preds = %vector.body214, %vector.memcheck, %.lr.ph.i139.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.i139.preheader ], [ %i.mm, %vector.body214 ]
  br label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %.lr.ph.i139.preheader222, %.lr.ph.i139
  %.09.i = phi i64 [ %i.mt, %.lr.ph.i139 ], [ %.09.i.ph, %.lr.ph.i139.preheader222 ] ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !18
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.09.i
  store float %i.mr, ptr %i.ms, align 4, !tbaa !18
  %i.mt = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.v
  br i1 %i.mu, label %.lr.ph.i139, label %dt_iop_alpha_copy.exit, !llvm.loop !330

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i139, %bb.bc, %rt_adjust_levels.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !299
  %..i = call i32 @llvm.smin.i32(i32 %i.mw, i32 %i.q)
  %i.mx = sext i32 %..i to i64
  %i.my = shl nsw i64 %i.mx, 4                    ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !297
  %i.nb = call i32 @llvm.smin.i32(i32 %i.na, i32 %i.t) ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.lr.ph.i140, label %rt_copy_in_to_out.exit

.lr.ph.i140:                                      ; preds = %dt_iop_alpha_copy.exit
  %i.nd = load <2 x i32>, ptr %5, align 4, !tbaa !21
  %i.ne = shufflevector <4 x i32> %i.j, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.nf = sub <2 x i32> %i.nd, %i.ne              ; 2 uses
  %i.ng = extractelement <2 x i32> %i.nf, i64 0
  %i.nh = sext i32 %i.ng to i64                   ; 5 uses
  %i.ni = extractelement <2 x i32> %i.nf, i64 1
  %i.nj = sext i32 %i.ni to i64                   ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.nb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.nk = icmp ult i32 %i.nb, 4
  br i1 %i.nk, label %.epil.preheader, label %.lr.ph.i140.new

.lr.ph.i140.new:                                  ; preds = %.lr.ph.i140
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i140.new
  %indvars.iv.i141 = phi i64 [ 0, %.lr.ph.i140.new ], [ %indvars.iv.next.i142.3, %bb.bd ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i140.new ], [ %niter.next.3, %bb.bd ]
  %i.nl = add nsw i64 %indvars.iv.i141, %i.nj
  %i.nm = mul nsw i64 %i.nl, %i.r
  %i.nn = add nsw i64 %i.nm, %i.nh
  %i.no = load i32, ptr %i.mv, align 4, !tbaa !299
  %i.np = sext i32 %i.no to i64
  %i.nq = shl nuw nsw i64 %indvars.iv.i141, 2
  %i.nr = mul i64 %i.nq, %i.np
  %.idx168 = shl i64 %i.nn, 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nr
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nt, ptr nonnull readonly align 16 %i.ns, i64 %i.my, i1 false)
  %indvars.iv.next.i142 = or disjoint i64 %indvars.iv.i141, 1 ; 2 uses
  %i.nu = add nsw i64 %indvars.iv.next.i142, %i.nj
  %i.nv = mul nsw i64 %i.nu, %i.r
  %i.nw = add nsw i64 %i.nv, %i.nh
  %i.nx = load i32, ptr %i.mv, align 4, !tbaa !299
  %i.ny = sext i32 %i.nx to i64
  %i.nz = shl nuw nsw i64 %indvars.iv.next.i142, 2
  %i.oa = mul i64 %i.nz, %i.ny
  %.idx168.1 = shl i64 %i.nw, 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.1
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.oa
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oc, ptr nonnull readonly align 16 %i.ob, i64 %i.my, i1 false)
  %indvars.iv.next.i142.1 = or disjoint i64 %indvars.iv.i141, 2 ; 2 uses
  %i.od = add nsw i64 %indvars.iv.next.i142.1, %i.nj
  %i.oe = mul nsw i64 %i.od, %i.r
  %i.of = add nsw i64 %i.oe, %i.nh
  %i.og = load i32, ptr %i.mv, align 4, !tbaa !299
  %i.oh = sext i32 %i.og to i64
  %i.oi = shl nuw nsw i64 %indvars.iv.next.i142.1, 2
  %i.oj = mul i64 %i.oi, %i.oh
  %.idx168.2 = shl i64 %i.of, 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.2
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.oj
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ol, ptr nonnull readonly align 16 %i.ok, i64 %i.my, i1 false)
  %indvars.iv.next.i142.2 = or disjoint i64 %indvars.iv.i141, 3 ; 2 uses
  %i.om = add nsw i64 %indvars.iv.next.i142.2, %i.nj
  %i.on = mul nsw i64 %i.om, %i.r
  %i.oo = add nsw i64 %i.on, %i.nh
  %i.op = load i32, ptr %i.mv, align 4, !tbaa !299
  %i.oq = sext i32 %i.op to i64
  %i.or = shl nuw nsw i64 %indvars.iv.next.i142.2, 2
  %i.os = mul i64 %i.or, %i.oq
  %.idx168.3 = shl i64 %i.oo, 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.3
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.os
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ou, ptr nonnull readonly align 16 %i.ot, i64 %i.my, i1 false)
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
  %i.ov = add nsw i64 %indvars.iv.i141.epil, %i.nj
  %i.ow = mul nsw i64 %i.ov, %i.r
  %i.ox = add nsw i64 %i.ow, %i.nh
  %i.oy = load i32, ptr %i.mv, align 4, !tbaa !299
  %i.oz = sext i32 %i.oy to i64
  %i.pa = shl nuw nsw i64 %indvars.iv.i141.epil, 2
  %i.pb = mul i64 %i.pa, %i.oz
  %.idx168.epil = shl i64 %i.ox, 4
  %i.pc = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx168.epil
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pb
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.pd, ptr nonnull readonly align 16 %i.pc, i64 %i.my, i1 false)
  %indvars.iv.next.i142.epil = add nuw nsw i64 %indvars.iv.i141.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %rt_copy_in_to_out.exit, label %bb.be, !llvm.loop !331
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
  %i.g = load float, ptr %i.f, align 4, !tbaa !18 ; 4 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0x3E1283AB
  %i.i = fmul reassoc nsz arcp contract afn float %i.g, 6.061690e-02
  %i.j = fmul reassoc nsz arcp contract afn float %i.g, f0x3F36D410
  %i.k = load float, ptr %i.d, align 4, !tbaa !18
  %i.l = load float, ptr %i.e, align 4, !tbaa !18
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
  %i.al = phi reassoc nsz arcp contract afn float [ %i.ak, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
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
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.ag, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.ar, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.aw, i64 3
  %i.bc = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.al, i64 1
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.be = fsub reassoc nsz arcp contract afn <4 x float> %i.bb, %i.bd
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %i.be, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bf, ptr %i.d, align 4, !tbaa !18
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
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !18 ; 3 uses
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
  store <32 x float> %interleaved.vec, ptr %i.h, align 4, !tbaa !18
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
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
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
  store <4 x float> %i.cr, ptr %i.ba, align 4, !tbaa !18
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
  %i.g = load float, ptr %i.c, align 4, !tbaa !18
  %i.h = load float, ptr %i.e, align 8, !tbaa !18
  %i.i = load <4 x float>, ptr %2, align 4, !tbaa !18
  %i.j = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %i.i, %i.j
  %i.l = load <4 x float>, ptr %i.b, align 4, !tbaa !18
  %i.m = insertelement <4 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <4 x float> %i.l, %i.n
  %i.p = fadd reassoc nsz arcp contract afn <4 x float> %i.o, %i.k
  %i.q = load <4 x float>, ptr %i.d, align 4, !tbaa !18
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
  %i.z = load float, ptr %0, align 4, !tbaa !18
  %i.aa = load float, ptr %i.w, align 4, !tbaa !18
  %i.ab = load float, ptr %i.y, align 4, !tbaa !18
  %i.ac = load <4 x float>, ptr %2, align 4, !tbaa !18
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ae
  %i.ag = load <4 x float>, ptr %i.v, align 4, !tbaa !18
  %i.ah = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ag, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.af
  %i.al = load <4 x float>, ptr %i.x, align 4, !tbaa !18
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
  %i.bd = phi reassoc nsz arcp contract afn float [ %i.bc, %bb.h ], [ %i.bb, %bb.g ] ; 2 uses
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
  %i.bs = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.ax, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bk, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.bq, i64 3
  %i.bw = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.bd, i64 1
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.by = fsub reassoc nsz arcp contract afn <4 x float> %i.bv, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bz, ptr %1, align 4, !tbaa !18
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_apply_trc(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !335    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !18
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !18   ; 4 uses
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
  %i.u = load float, ptr %i.t, align 4, !tbaa !18 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !18
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = load float, ptr %3, align 4, !tbaa !18
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.d ], [ %i.z, %bb.c ], [ %i.h, %bb.a ]
  store float %i.ai, ptr %1, align 4, !tbaa !18
end_hunk_1
