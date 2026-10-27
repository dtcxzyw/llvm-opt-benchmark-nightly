Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_extract_patches:bb.a
  %i.gp = shufflevector <5 x float> %i.ge, <5 x float> %i.go, <2 x i32> <i32 2, i32 6>
  %i.gq = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gp, %i.gr
  %i.gt = fadd reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gs
  store <2 x float> %i.gt, ptr %i.cz, align 4, !tbaa !12
  store float %i.gd, ptr %i.da, align 4, !tbaa !12
  %i.gu = add nuw i64 %.027245, 1                 ; 2 uses
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !100 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load i64, ptr %i.gw, align 16, !tbaa !101 ; 2 uses
  %i.gy = icmp ult i64 %i.gu, %i.gx
  br i1 %i.gy, label %bb.d, label %._crit_edge

.lr.ph50:                                         ; preds = %._crit_edge
  %i.gz = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci ; 2 uses
  %min.iters.check = icmp ult i64 %.lcssa30, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50
  %i.ha = shl i64 %.lcssa30, 4
  %i.hb = getelementptr i8, ptr %4, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  %i.hd = getelementptr i8, ptr %.lcssa31, i64 112
  %i.he = mul i64 %.lcssa30, 48
  %i.hf = getelementptr i8, ptr %.lcssa31, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 76
  %bound0 = icmp ult ptr %4, %i.hg
  %bound1 = icmp ult ptr %i.hd, %i.hc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hh = and i64 %.lcssa30, 7                    ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = select i1 %i.hi, i64 8, i64 %i.hh
  %n.vec = sub i64 %.lcssa30, %i.hj               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.gz, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.cb, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.hk = shl <8 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %4, <8 x i64> %i.hk ; 4 uses
  %i.hl = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep173 = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, <8 x i64> %vec.ind ; 3 uses
  %wide.gep174 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 112
  %wide.gep175 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 116
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !434
  %wide.masked.gather176 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !434
  %wide.gep177 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep173, i64 120
  %wide.masked.gather178 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !434
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float 2.000000e-03)
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather176, splat (float 8.620690e-03)
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, splat (float f0x3E0D3DCB) ; 7 uses
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather178, splat (float 5.000000e-03)
  %i.hq = fadd reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hm ; 5 uses
  %i.hr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hq, splat (float f0x3E53DCB1)
  %i.hs = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, %i.hq
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.hs, %i.hq
  %i.hu = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, splat (float f0x3E038026)
  %i.hv = fadd reassoc nsz arcp contract afn <8 x float> %i.hu, splat (float f0xBC911AA6)
  %i.hw = select reassoc nsz arcp contract afn <8 x i1> %i.hr, <8 x float> %i.ht, <8 x float> %i.hv
  %i.hx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ho, splat (float f0x3E53DCB1)
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.ho
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.ho
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, splat (float f0x3E038026)
  %i.ib = fadd reassoc nsz arcp contract afn <8 x float> %i.ia, splat (float f0xBC911AA6)
  %i.ic = select reassoc nsz arcp contract afn <8 x i1> %i.hx, <8 x float> %i.hz, <8 x float> %i.ib ; 2 uses
  %i.id = fsub reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hp ; 5 uses
  %i.ie = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.id, splat (float f0x3E53DCB1)
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.id
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %i.if, %i.id
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.id, splat (float f0x3E038026)
  %i.ii = fadd reassoc nsz arcp contract afn <8 x float> %i.ih, splat (float f0xBC911AA6)
  %i.ij = select reassoc nsz arcp contract afn <8 x i1> %i.ie, <8 x float> %i.ig, <8 x float> %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, splat (float 9.642000e-01) ; 2 uses
  %i.il = fmul reassoc nsz arcp contract afn <8 x float> %i.ij, splat (float f0x3F532CA5) ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.hl, align 4, !tbaa !12, !alias.scope !435, !noalias !434 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec180 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec179, %strided.vec179
  %i.io = fadd reassoc nsz arcp contract afn <8 x float> %i.in, %i.im
  %wide.gep182 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec180, %strided.vec180
  %i.iq = fadd reassoc nsz arcp contract afn <8 x float> %i.io, %i.ip
  %i.ir = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.iq)
  %i.is = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ir, <8 x float> splat (float f0x37800000))
  %i.it = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.ik
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %i.ic, %i.ic
  %i.iv = fadd reassoc nsz arcp contract afn <8 x float> %i.it, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.il, %i.il
  %i.ix = fadd reassoc nsz arcp contract afn <8 x float> %i.iv, %i.iw
  %i.iy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ix)
  %i.iz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.iy, <8 x float> splat (float f0x37800000))
  %i.ja = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.is, %broadcast.splat172 ; 3 uses
  %i.jb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.iz ; 3 uses
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %strided.vec
  %i.jd = fdiv reassoc nsz arcp contract afn <8 x float> %i.jc, %i.ja
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jd, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !435, !noalias !434
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %strided.vec179
  %i.jf = fdiv reassoc nsz arcp contract afn <8 x float> %i.je, %i.ja
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jf, <8 x ptr> align 4 %wide.gep181, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !435, !noalias !434
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %strided.vec180
  %i.jh = fdiv reassoc nsz arcp contract afn <8 x float> %i.jg, %i.ja
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jh, <8 x ptr> align 4 %wide.gep182, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !435, !noalias !434
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %scalar.ph.preheader, label %vector.body, !llvm.loop !428

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph50
  %.025749.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph50 ], [ %n.vec, %vector.body ]
  %i.jj = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.cb, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025749 = phi i64 [ %i.lm, %scalar.ph ], [ %.025749.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx289 = shl i64 %.025749, 4
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 %.idx289 ; 3 uses
  %i.jm = getelementptr inbounds nuw [48 x i8], ptr %.lcssa31, i64 %.025749 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 112
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 116
  %i.jp = load float, ptr %i.jn, align 4, !tbaa !12
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, 8.620690e-03
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, f0x3E0D3DCB ; 6 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt float %i.jr, f0x3E53DCB1
  %i.jt = fmul reassoc nsz arcp contract afn float %i.jr, %i.jr
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, %i.jr
  %i.jv = fmul reassoc nsz arcp contract afn float %i.jr, f0x3E038026
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, f0xBC911AA6
  %i.jx = select reassoc nsz arcp contract afn i1 %i.js, float %i.ju, float %i.jw ; 2 uses
  %i.jy = load <2 x float>, ptr %i.jo, align 4, !tbaa !12
  %i.jz = fmul reassoc nsz arcp contract afn <2 x float> %i.jy, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.ka = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kc = fadd reassoc nsz arcp contract afn <2 x float> %i.kb, %i.jz
  %i.kd = fsub reassoc nsz arcp contract afn <2 x float> %i.kb, %i.jz
  %i.ke = shufflevector <2 x float> %i.kc, <2 x float> %i.kd, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.kf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ke, splat (float f0x3E53DCB1)
  %i.kg = fmul reassoc nsz arcp contract afn <2 x float> %i.ke, %i.ke
  %i.kh = fmul reassoc nsz arcp contract afn <2 x float> %i.kg, %i.ke
  %i.ki = fmul reassoc nsz arcp contract afn <2 x float> %i.ke, splat (float f0x3E038026)
  %i.kj = fadd reassoc nsz arcp contract afn <2 x float> %i.ki, splat (float f0xBC911AA6)
  %i.kk = select <2 x i1> %i.kf, <2 x float> %i.kh, <2 x float> %i.kj ; 2 uses
  %i.kl = extractelement <2 x float> %i.kk, i64 0
  %i.km = fmul reassoc nsz arcp contract afn float %i.kl, 9.642000e-01 ; 2 uses
  %i.kn = extractelement <2 x float> %i.kk, i64 1
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, f0x3F532CA5 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.kr = load <2 x float>, ptr %i.jl, align 4, !tbaa !12 ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.kr
  %foldExtExtBinop283 = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.kr
  %shift = shufflevector <2 x float> %foldExtExtBinop283, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop285 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.ks = extractelement <2 x float> %foldExtExtBinop285, i64 0
  %i.kt = fmul reassoc nsz arcp contract afn float %i.kq, %i.kq
  %i.ku = fadd reassoc nsz arcp contract afn float %i.ks, %i.kt
  %i.kv = fmul reassoc nsz arcp contract afn float %i.km, %i.km
  %i.kw = fmul reassoc nsz arcp contract afn float %i.jx, %i.jx
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kv, %i.kw
  %i.ky = fmul reassoc nsz arcp contract afn float %i.ko, %i.ko
  %i.kz = fadd reassoc nsz arcp contract afn float %i.kx, %i.ky
  %i.la = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.ku, i64 1
  %i.lc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lb)
  %i.ld = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lc, <2 x float> splat (float f0x37800000))
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.jk, %i.ld ; 4 uses
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.lf, %i.kr
  %i.lh = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.li = fdiv reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lh
  store <2 x float> %i.li, ptr %i.jl, align 4, !tbaa !12
  %i.lj = extractelement <2 x float> %i.le, i64 0
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lj, %i.kq
  %i.ll = extractelement <2 x float> %i.le, i64 1
  %.reass.2 = fdiv reassoc nsz arcp contract afn float %i.lk, %i.ll
  store float %.reass.2, ptr %i.kp, align 4, !tbaa !12
  %i.lm = add nuw i64 %.025749, 1                 ; 2 uses
  %exitcond95.not = icmp eq i64 %i.lm, %.lcssa30
  br i1 %exitcond95.not, label %.loopexit, label %scalar.ph, !llvm.loop !429

.loopexit:                                        ; preds = %scalar.ph, %._crit_edge
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.lo = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_exposure(ptr noundef %i.ln) #31
  %i.lp = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.lo) ; 2 uses
  %i.lq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !177
  %i.lr = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_black(ptr noundef %i.lq) #31 ; 6 uses
  %i.ls = load ptr, ptr %i.e, align 8, !tbaa !100 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lu = load i64, ptr %i.lt, align 16, !tbaa !101 ; 11 uses
  %.not80.not = icmp eq i64 %i.lu, 0              ; 2 uses
  br i1 %.not80.not, label %._crit_edge61.thread, label %.lr.ph60

._crit_edge61.thread:                             ; preds = %.loopexit
  %i.lv = uitofp reassoc nsz arcp contract afn nneg i64 %i.lu to float
  %i.lw = fmul reassoc nnan nsz arcp contract afn float %i.lv, 3.000000e+00 ; 3 uses
  %i.lx = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.lw
  %i.ly = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.lw
  br label %._crit_edge76

.lr.ph60:                                         ; preds = %.loopexit
  %i.lz = load float, ptr %3, align 4, !tbaa !12  ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !12 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.md = load float, ptr %i.mc, align 4, !tbaa !12 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mf = load float, ptr %i.me, align 4, !tbaa !12 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !12 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !12 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !12 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !12 ; 3 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.lp, %i.cj ; 4 uses
  %min.iters.check184 = icmp ult i64 %i.lu, 9
  br i1 %min.iters.check184, label %.preheader24.preheader.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph60
  %i.mr = and i64 %i.lu, 7                        ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 0
  %i.mt = select i1 %i.ms, i64 8, i64 %i.mr
  %n.vec186 = sub i64 %i.lu, %i.mt                ; 2 uses
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.lz, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <8 x float> poison, float %i.mb, i64 0
  %broadcast.splat190 = shufflevector <8 x float> %broadcast.splatinsert189, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <8 x float> poison, float %i.md, i64 0
  %broadcast.splat192 = shufflevector <8 x float> %broadcast.splatinsert191, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <8 x float> poison, float %i.mf, i64 0
  %broadcast.splat194 = shufflevector <8 x float> %broadcast.splatinsert193, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <8 x float> poison, float %i.mh, i64 0
  %broadcast.splat196 = shufflevector <8 x float> %broadcast.splatinsert195, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.mj, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.ml, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.mn, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <8 x float> poison, float %i.mp, i64 0
  %broadcast.splat204 = shufflevector <8 x float> %broadcast.splatinsert203, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert205 = insertelement <8 x float> poison, float %i.mq, i64 0
  %broadcast.splat206 = shufflevector <8 x float> %broadcast.splatinsert205, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert207 = insertelement <8 x float> poison, float %i.lr, i64 0
  %broadcast.splat208 = shufflevector <8 x float> %broadcast.splatinsert207, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.mu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  %i.mv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  %i.mw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat206
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph185
  %index210 = phi i64 [ 0, %vector.ph185 ], [ %index.next224, %vector.body209 ] ; 2 uses
  %vec.ind211 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph185 ], [ %vec.ind.next225, %vector.body209 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph185 ], [ %i.pn, %vector.body209 ]
  %vec.phi212 = phi <8 x float> [ zeroinitializer, %vector.ph185 ], [ %i.po, %vector.body209 ]
  %i.mx = shl i64 %index210, 4
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 %i.mx
  %wide.vec213 = load <32 x float>, ptr %i.my, align 4, !tbaa !12 ; 3 uses
  %strided.vec214 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec215 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec216 = shufflevector <32 x float> %wide.vec213, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %wide.gep217 = getelementptr inbounds nuw [48 x i8], ptr %i.ls, <8 x i64> %vec.ind211 ; 3 uses
  %wide.gep218 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 112
  %wide.gep219 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 116
  %wide.masked.gather220 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep219, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather221 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep222 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 120
  %wide.masked.gather223 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.mz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather220, splat (float 2.000000e-03)
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather221, splat (float 8.620690e-03)
  %i.nb = fadd reassoc nsz arcp contract afn <8 x float> %i.na, splat (float f0x3E0D3DCB) ; 7 uses
  %i.nc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather223, splat (float 5.000000e-03)
  %i.nd = fadd reassoc nsz arcp contract afn <8 x float> %i.nb, %i.mz ; 5 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nd, splat (float f0x3E53DCB1)
  %i.nf = fmul reassoc nsz arcp contract afn <8 x float> %i.nd, %i.nd
  %i.ng = fmul reassoc nsz arcp contract afn <8 x float> %i.nf, %i.nd
  %i.nh = fmul reassoc nsz arcp contract afn <8 x float> %i.nd, splat (float f0x3E038026)
  %i.ni = fadd reassoc nsz arcp contract afn <8 x float> %i.nh, splat (float f0xBC911AA6)
  %i.nj = select reassoc nsz arcp contract afn <8 x i1> %i.ne, <8 x float> %i.ng, <8 x float> %i.ni
  %i.nk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nb, splat (float f0x3E53DCB1)
  %i.nl = fmul reassoc nsz arcp contract afn <8 x float> %i.nb, %i.nb
  %i.nm = fmul reassoc nsz arcp contract afn <8 x float> %i.nl, %i.nb
  %i.nn = fmul reassoc nsz arcp contract afn <8 x float> %i.nb, splat (float f0x3E038026)
  %i.no = fadd reassoc nsz arcp contract afn <8 x float> %i.nn, splat (float f0xBC911AA6)
  %i.np = select reassoc nsz arcp contract afn <8 x i1> %i.nk, <8 x float> %i.nm, <8 x float> %i.no ; 3 uses
  %i.nq = fsub reassoc nsz arcp contract afn <8 x float> %i.nb, %i.nc ; 5 uses
  %i.nr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.nq, splat (float f0x3E53DCB1)
  %i.ns = fmul reassoc nsz arcp contract afn <8 x float> %i.nq, %i.nq
  %i.nt = fmul reassoc nsz arcp contract afn <8 x float> %i.ns, %i.nq
  %i.nu = fmul reassoc nsz arcp contract afn <8 x float> %i.nq, splat (float f0x3E038026)
  %i.nv = fadd reassoc nsz arcp contract afn <8 x float> %i.nu, splat (float f0xBC911AA6)
  %i.nw = select reassoc nsz arcp contract afn <8 x i1> %i.nr, <8 x float> %i.nt, <8 x float> %i.nv
  %i.nx = fmul reassoc nsz arcp contract afn <8 x float> %i.nj, splat (float 9.642000e-01) ; 3 uses
  %i.ny = fmul reassoc nsz arcp contract afn <8 x float> %i.nw, splat (float f0x3F532CA5) ; 3 uses
  %i.nz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat188, %strided.vec214
  %i.oa = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %strided.vec215
  %i.ob = fadd reassoc nsz arcp contract afn <8 x float> %i.oa, %i.nz
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat192, %strided.vec216
  %i.od = fadd reassoc nsz arcp contract afn <8 x float> %i.ob, %i.oc
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat194, %strided.vec214
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat196, %strided.vec215
  %i.og = fadd reassoc nsz arcp contract afn <8 x float> %i.of, %i.oe
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat198, %strided.vec216
  %i.oi = fadd reassoc nsz arcp contract afn <8 x float> %i.og, %i.oh
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat200, %strided.vec214
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat202, %strided.vec215
  %i.ol = fadd reassoc nsz arcp contract afn <8 x float> %i.ok, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat204, %strided.vec216
  %i.on = fadd reassoc nsz arcp contract afn <8 x float> %i.ol, %i.om
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.nx, %broadcast.splat188
  %i.op = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat190, %i.np
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %i.oo, %i.op
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat192, %i.ny
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.oq, %i.or
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat194, %i.nx
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat196, %i.np
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, %i.ot
  %i.ow = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat198, %i.ny
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %i.ov, %i.ow
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat200, %i.nx
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat202, %i.np
  %i.pa = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, %i.oy
  %i.pb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat204, %i.ny
  %i.pc = fadd reassoc nsz arcp contract afn <8 x float> %i.pa, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %i.mu
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.pd, %broadcast.splat208
  %i.pf = fmul reassoc nsz arcp contract afn <8 x float> %i.oi, %i.mv
  %i.pg = fadd reassoc nsz arcp contract afn <8 x float> %i.pf, %broadcast.splat208
  %i.ph = fmul reassoc nsz arcp contract afn <8 x float> %i.on, %i.mw
  %i.pi = fadd reassoc nsz arcp contract afn <8 x float> %i.ph, %broadcast.splat208
  %i.pj = fadd reassoc nsz arcp contract afn <8 x float> %i.pe, %vec.phi
  %i.pk = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %vec.phi212
  %i.pl = fadd reassoc nsz arcp contract afn <8 x float> %i.pg, %i.pj
  %i.pm = fadd reassoc nsz arcp contract afn <8 x float> %i.ox, %i.pk
  %i.pn = fadd reassoc nsz arcp contract afn <8 x float> %i.pi, %i.pl ; 2 uses
  %i.po = fadd reassoc nsz arcp contract afn <8 x float> %i.pc, %i.pm ; 2 uses
  %index.next224 = add nuw i64 %index210, 8       ; 2 uses
  %vec.ind.next225 = add nuw <8 x i64> %vec.ind211, splat (i64 8)
  %i.pp = icmp eq i64 %index.next224, %n.vec186
  br i1 %i.pp, label %middle.block226, label %vector.body209, !llvm.loop !430

middle.block226:                                  ; preds = %vector.body209
  %i.pq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.pn)
  %i.pr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.po)
  br label %.preheader24.preheader.preheader

.preheader24.preheader.preheader:                 ; preds = %.lr.ph60, %middle.block226
  %.025058.ph = phi i64 [ 0, %.lr.ph60 ], [ %n.vec186, %middle.block226 ]
  %.025157.ph = phi float [ 0.000000e+00, %.lr.ph60 ], [ %i.pq, %middle.block226 ]
  %.025356.ph = phi float [ 0.000000e+00, %.lr.ph60 ], [ %i.pr, %middle.block226 ]
  %i.ps = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mq
  %i.pt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mq
  %i.pu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mq
  br label %.preheader24.preheader

.lr.ph75:                                         ; preds = %.preheader24.preheader
  %i.pv = uitofp reassoc nsz arcp contract afn i64 %i.lu to float
  %i.pw = fmul reassoc nnan nsz arcp contract afn float %i.pv, 3.000000e+00 ; 3 uses
  %6 = fdiv reassoc nsz arcp contract afn float %i.xd, %i.pw ; 8 uses
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pz = load float, ptr %i.py, align 4, !tbaa !12 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !12 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qh = fdiv reassoc nsz arcp contract afn float %i.xc, %i.pw ; 3 uses
  %7 = load float, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.qi = load float, ptr %i.px, align 4, !tbaa !12 ; 3 uses
  %i.qj = load <2 x float>, ptr %i.qa, align 4, !tbaa !12 ; 5 uses
  %i.qk = load float, ptr %i.qb, align 4, !tbaa !12
  %8 = load <2 x float>, ptr %i.qe, align 4, !tbaa !12 ; 5 uses
  %i.ql = load float, ptr %i.qf, align 4, !tbaa !12
  %i.qm = load float, ptr %i.qg, align 4, !tbaa !12 ; 3 uses
  %i.qn = fmul reassoc nsz arcp contract afn float %i.lp, %i.cj ; 2 uses
  %min.iters.check230 = icmp ult i64 %i.lu, 9
  br i1 %min.iters.check230, label %.preheader.preheader.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph75
  %i.qo = and i64 %i.lu, 7                        ; 2 uses
  %i.qp = icmp eq i64 %i.qo, 0
  %i.qq = select i1 %i.qp, i64 8, i64 %i.qo
  %n.vec232 = sub i64 %i.lu, %i.qq                ; 2 uses
  %broadcast.splatinsert233 = insertelement <8 x float> poison, float %i.qh, i64 0
  %broadcast.splat234 = shufflevector <8 x float> %broadcast.splatinsert233, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert235 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat236 = shufflevector <8 x float> %broadcast.splatinsert235, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert237 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat238 = shufflevector <8 x float> %broadcast.splatinsert237, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.qi, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.pz, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat244 = shufflevector <2 x float> %i.qj, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat246 = shufflevector <2 x float> %i.qj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert247 = insertelement <8 x float> poison, float %i.qd, i64 0
  %broadcast.splat248 = shufflevector <8 x float> %broadcast.splatinsert247, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat250 = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat252 = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert253 = insertelement <8 x float> poison, float %i.qm, i64 0
  %broadcast.splat254 = shufflevector <8 x float> %broadcast.splatinsert253, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert255 = insertelement <8 x float> poison, float %i.qn, i64 0
  %broadcast.splat256 = shufflevector <8 x float> %broadcast.splatinsert255, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert257 = insertelement <8 x float> poison, float %i.lr, i64 0
  %broadcast.splat258 = shufflevector <8 x float> %broadcast.splatinsert257, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.qr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat256
  %i.qs = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat256
  %i.qt = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat256
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph231
  %index260 = phi i64 [ 0, %vector.ph231 ], [ %index.next275, %vector.body259 ] ; 2 uses
  %vec.ind261 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph231 ], [ %vec.ind.next276, %vector.body259 ] ; 2 uses
  %vec.phi262 = phi <8 x float> [ zeroinitializer, %vector.ph231 ], [ %i.ua, %vector.body259 ]
  %vec.phi263 = phi <8 x float> [ zeroinitializer, %vector.ph231 ], [ %i.tw, %vector.body259 ]
  %i.qu = shl i64 %index260, 4
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 %i.qu
  %wide.vec264 = load <32 x float>, ptr %i.qv, align 4, !tbaa !12 ; 3 uses
  %strided.vec265 = shufflevector <32 x float> %wide.vec264, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec266 = shufflevector <32 x float> %wide.vec264, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec267 = shufflevector <32 x float> %wide.vec264, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %wide.gep268 = getelementptr inbounds nuw [48 x i8], ptr %i.ls, <8 x i64> %vec.ind261 ; 3 uses
  %wide.gep269 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep268, i64 112
  %wide.gep270 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep268, i64 116
  %wide.masked.gather271 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep270, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather272 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep269, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep273 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep268, i64 120
  %wide.masked.gather274 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep273, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.qw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather271, splat (float 2.000000e-03)
  %i.qx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather272, splat (float 8.620690e-03)
  %i.qy = fadd reassoc nsz arcp contract afn <8 x float> %i.qx, splat (float f0x3E0D3DCB) ; 7 uses
  %i.qz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather274, splat (float 5.000000e-03)
  %i.ra = fadd reassoc nsz arcp contract afn <8 x float> %i.qy, %i.qw ; 5 uses
  %i.rb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ra, splat (float f0x3E53DCB1)
  %i.rc = fmul reassoc nsz arcp contract afn <8 x float> %i.ra, %i.ra
  %i.rd = fmul reassoc nsz arcp contract afn <8 x float> %i.rc, %i.ra
  %i.re = fmul reassoc nsz arcp contract afn <8 x float> %i.ra, splat (float f0x3E038026)
  %i.rf = fadd reassoc nsz arcp contract afn <8 x float> %i.re, splat (float f0xBC911AA6)
  %i.rg = select reassoc nsz arcp contract afn <8 x i1> %i.rb, <8 x float> %i.rd, <8 x float> %i.rf
  %i.rh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.qy, splat (float f0x3E53DCB1)
  %i.ri = fmul reassoc nsz arcp contract afn <8 x float> %i.qy, %i.qy
  %i.rj = fmul reassoc nsz arcp contract afn <8 x float> %i.ri, %i.qy
  %i.rk = fmul reassoc nsz arcp contract afn <8 x float> %i.qy, splat (float f0x3E038026)
  %i.rl = fadd reassoc nsz arcp contract afn <8 x float> %i.rk, splat (float f0xBC911AA6)
  %i.rm = select reassoc nsz arcp contract afn <8 x i1> %i.rh, <8 x float> %i.rj, <8 x float> %i.rl ; 3 uses
  %i.rn = fsub reassoc nsz arcp contract afn <8 x float> %i.qy, %i.qz ; 5 uses
  %i.ro = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.rn, splat (float f0x3E53DCB1)
  %i.rp = fmul reassoc nsz arcp contract afn <8 x float> %i.rn, %i.rn
  %i.rq = fmul reassoc nsz arcp contract afn <8 x float> %i.rp, %i.rn
  %i.rr = fmul reassoc nsz arcp contract afn <8 x float> %i.rn, splat (float f0x3E038026)
  %i.rs = fadd reassoc nsz arcp contract afn <8 x float> %i.rr, splat (float f0xBC911AA6)
  %i.rt = select reassoc nsz arcp contract afn <8 x i1> %i.ro, <8 x float> %i.rq, <8 x float> %i.rs
  %i.ru = fmul reassoc nsz arcp contract afn <8 x float> %i.rg, splat (float 9.642000e-01) ; 3 uses
  %i.rv = fmul reassoc nsz arcp contract afn <8 x float> %i.rt, splat (float f0x3F532CA5) ; 3 uses
  %i.rw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat238, %strided.vec265
  %i.rx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat240, %strided.vec266
  %i.ry = fadd reassoc nsz arcp contract afn <8 x float> %i.rx, %i.rw
  %i.rz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat242, %strided.vec267
  %i.sa = fadd reassoc nsz arcp contract afn <8 x float> %i.ry, %i.rz
  %i.sb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat244, %strided.vec265
  %i.sc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat246, %strided.vec266
  %i.sd = fadd reassoc nsz arcp contract afn <8 x float> %i.sc, %i.sb
  %i.se = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat248, %strided.vec267
  %i.sf = fadd reassoc nsz arcp contract afn <8 x float> %i.sd, %i.se
  %i.sg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat250, %strided.vec265
  %i.sh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat252, %strided.vec266
  %i.si = fadd reassoc nsz arcp contract afn <8 x float> %i.sh, %i.sg
  %i.sj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat254, %strided.vec267
  %i.sk = fadd reassoc nsz arcp contract afn <8 x float> %i.si, %i.sj
  %i.sl = fmul reassoc nsz arcp contract afn <8 x float> %i.ru, %broadcast.splat238
  %i.sm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat240, %i.rm
  %i.sn = fadd reassoc nsz arcp contract afn <8 x float> %i.sl, %i.sm
  %i.so = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat242, %i.rv
  %i.sp = fadd reassoc nsz arcp contract afn <8 x float> %i.sn, %i.so
  %i.sq = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat244, %i.ru
  %i.sr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat246, %i.rm
  %i.ss = fadd reassoc nsz arcp contract afn <8 x float> %i.sr, %i.sq
  %i.st = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat248, %i.rv
  %i.su = fadd reassoc nsz arcp contract afn <8 x float> %i.ss, %i.st
  %i.sv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat250, %i.ru
  %i.sw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat252, %i.rm
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %i.sw, %i.sv
  %i.sy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat254, %i.rv
  %i.sz = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %i.sy
  %i.ta = fmul reassoc nsz arcp contract afn <8 x float> %i.sa, %i.qr
  %i.tb = fadd reassoc nsz arcp contract afn <8 x float> %i.ta, %broadcast.splat258 ; 2 uses
  %i.tc = fmul reassoc nsz arcp contract afn <8 x float> %i.sf, %i.qs
  %i.td = fadd reassoc nsz arcp contract afn <8 x float> %i.tc, %broadcast.splat258 ; 2 uses
  %i.te = fmul reassoc nsz arcp contract afn <8 x float> %i.sk, %i.qt
  %i.tf = fadd reassoc nsz arcp contract afn <8 x float> %i.te, %broadcast.splat258 ; 2 uses
  %i.tg = fsub reassoc nsz arcp contract afn <8 x float> %i.tb, %broadcast.splat234 ; 2 uses
  %i.th = fmul reassoc nsz arcp contract afn <8 x float> %i.tg, %i.tg
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %i.th, %vec.phi263
  %i.tj = fsub reassoc nsz arcp contract afn <8 x float> %i.sp, %broadcast.splat236
  %i.tk = fsub reassoc nsz arcp contract afn <8 x float> %i.tb, %broadcast.splat236
  %i.tl = fmul reassoc nsz arcp contract afn <8 x float> %i.tj, %i.tk
  %i.tm = fadd reassoc nsz arcp contract afn <8 x float> %i.tl, %vec.phi262
  %i.tn = fsub reassoc nsz arcp contract afn <8 x float> %i.td, %broadcast.splat234 ; 2 uses
  %i.to = fmul reassoc nsz arcp contract afn <8 x float> %i.tn, %i.tn
  %i.tp = fadd reassoc nsz arcp contract afn <8 x float> %i.to, %i.ti
  %i.tq = fsub reassoc nsz arcp contract afn <8 x float> %i.su, %broadcast.splat236
  %i.tr = fsub reassoc nsz arcp contract afn <8 x float> %i.td, %broadcast.splat236
  %i.ts = fmul reassoc nsz arcp contract afn <8 x float> %i.tq, %i.tr
  %i.tt = fadd reassoc nsz arcp contract afn <8 x float> %i.ts, %i.tm
  %i.tu = fsub reassoc nsz arcp contract afn <8 x float> %i.tf, %broadcast.splat234 ; 2 uses
  %i.tv = fmul reassoc nsz arcp contract afn <8 x float> %i.tu, %i.tu
  %i.tw = fadd reassoc nsz arcp contract afn <8 x float> %i.tv, %i.tp ; 2 uses
  %i.tx = fsub reassoc nsz arcp contract afn <8 x float> %i.sz, %broadcast.splat236
  %i.ty = fsub reassoc nsz arcp contract afn <8 x float> %i.tf, %broadcast.splat236
  %i.tz = fmul reassoc nsz arcp contract afn <8 x float> %i.tx, %i.ty
  %i.ua = fadd reassoc nsz arcp contract afn <8 x float> %i.tz, %i.tt ; 2 uses
  %index.next275 = add nuw i64 %index260, 8       ; 2 uses
  %vec.ind.next276 = add nuw <8 x i64> %vec.ind261, splat (i64 8)
  %i.ub = icmp eq i64 %index.next275, %n.vec232
  br i1 %i.ub, label %middle.block277, label %vector.body259, !llvm.loop !431

middle.block277:                                  ; preds = %vector.body259
  %i.uc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ua)
  %i.ud = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tw)
  %slprdx.init.a = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ud, i64 0
  br label %.preheader.preheader.preheader

.preheader.preheader.preheader:                   ; preds = %.lr.ph75, %middle.block277
  %.024373.ph = phi i64 [ 0, %.lr.ph75 ], [ %n.vec232, %middle.block277 ]
  %.024472.ph = phi float [ 0.000000e+00, %.lr.ph75 ], [ %i.uc, %middle.block277 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %.lr.ph75 ], [ %slprdx.init.a, %middle.block277 ]
  %i.ue = extractelement <2 x float> %i.qj, i64 0
  %i.uf = extractelement <2 x float> %8, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> %i.qj, <2 x i32> <i32 3, i32 0>
  %10 = shufflevector <2 x float> %i.qj, <2 x float> %8, <2 x i32> <i32 0, i32 3>
  %11 = insertelement <2 x float> poison, float %i.qd, i64 0
  %12 = insertelement <2 x float> %11, float %i.qm, i64 1
  %i.ug = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.qn, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %13 = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.uh
  %i.ui = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.lr, i64 0
  %14 = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.uj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.qh, i64 0
  %15 = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.preheader.preheader

.preheader24.preheader:                           ; preds = %.preheader24.preheader.preheader, %.preheader24.preheader
  %.025058 = phi i64 [ %i.xe, %.preheader24.preheader ], [ %.025058.ph, %.preheader24.preheader.preheader ] ; 3 uses
  %.025157 = phi float [ %i.xc, %.preheader24.preheader ], [ %.025157.ph, %.preheader24.preheader.preheader ]
  %.025356 = phi float [ %i.xd, %.preheader24.preheader ], [ %.025356.ph, %.preheader24.preheader.preheader ]
  %.idx288 = shl i64 %.025058, 4
  %i.uk = getelementptr inbounds nuw i8, ptr %4, i64 %.idx288 ; 3 uses
  %.sroa.0117.0.copyload = load float, ptr %i.uk, align 4, !tbaa !12 ; 3 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %.sroa.4118.0.copyload = load float, ptr %.sroa.4118.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %.sroa.5119.0.copyload = load float, ptr %.sroa.5119.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.ul = getelementptr inbounds nuw [48 x i8], ptr %i.ls, i64 %.025058 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 112
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 116
  %i.uo = load float, ptr %i.um, align 4, !tbaa !12
  %i.up = fmul reassoc nsz arcp contract afn float %i.uo, 8.620690e-03
  %i.uq = fadd reassoc nsz arcp contract afn float %i.up, f0x3E0D3DCB ; 6 uses
  %i.ur = fcmp reassoc nsz arcp contract afn ogt float %i.uq, f0x3E53DCB1
  %i.us = fmul reassoc nsz arcp contract afn float %i.uq, %i.uq
  %i.ut = fmul reassoc nsz arcp contract afn float %i.us, %i.uq
  %i.uu = fmul reassoc nsz arcp contract afn float %i.uq, f0x3E038026
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, f0xBC911AA6
  %i.uw = select reassoc nsz arcp contract afn i1 %i.ur, float %i.ut, float %i.uv ; 3 uses
  %i.ux = load <2 x float>, ptr %i.un, align 4, !tbaa !12
  %i.uy = fmul reassoc nsz arcp contract afn <2 x float> %i.ux, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.uz = insertelement <2 x float> poison, float %i.uq, i64 0
  %i.va = shufflevector <2 x float> %i.uz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vb = fadd reassoc nsz arcp contract afn <2 x float> %i.va, %i.uy
  %i.vc = fsub reassoc nsz arcp contract afn <2 x float> %i.va, %i.uy
  %i.vd = shufflevector <2 x float> %i.vb, <2 x float> %i.vc, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ve = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vd, splat (float f0x3E53DCB1)
  %i.vf = fmul reassoc nsz arcp contract afn <2 x float> %i.vd, %i.vd
  %i.vg = fmul reassoc nsz arcp contract afn <2 x float> %i.vf, %i.vd
  %i.vh = fmul reassoc nsz arcp contract afn <2 x float> %i.vd, splat (float f0x3E038026)
  %i.vi = fadd reassoc nsz arcp contract afn <2 x float> %i.vh, splat (float f0xBC911AA6)
  %i.vj = select <2 x i1> %i.ve, <2 x float> %i.vg, <2 x float> %i.vi ; 2 uses
  %i.vk = extractelement <2 x float> %i.vj, i64 0
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, 9.642000e-01 ; 3 uses
  %i.vm = extractelement <2 x float> %i.vj, i64 1
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, f0x3F532CA5 ; 3 uses
  %i.vo = fmul reassoc nsz arcp contract afn float %i.lz, %.sroa.0117.0.copyload
  %i.vp = fmul reassoc nsz arcp contract afn float %i.mb, %.sroa.4118.0.copyload
  %i.vq = fadd reassoc nsz arcp contract afn float %i.vp, %i.vo
  %i.vr = fmul reassoc nsz arcp contract afn float %i.md, %.sroa.5119.0.copyload
  %i.vs = fadd reassoc nsz arcp contract afn float %i.vq, %i.vr
  %i.vt = fmul reassoc nsz arcp contract afn float %i.mf, %.sroa.0117.0.copyload
  %i.vu = fmul reassoc nsz arcp contract afn float %i.mh, %.sroa.4118.0.copyload
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vu, %i.vt
  %i.vw = fmul reassoc nsz arcp contract afn float %i.mj, %.sroa.5119.0.copyload
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vv, %i.vw
  %i.vy = fmul reassoc nsz arcp contract afn float %i.ml, %.sroa.0117.0.copyload
  %i.vz = fmul reassoc nsz arcp contract afn float %i.mn, %.sroa.4118.0.copyload
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vz, %i.vy
  %i.wb = fmul reassoc nsz arcp contract afn float %i.mp, %.sroa.5119.0.copyload
  %i.wc = fadd reassoc nsz arcp contract afn float %i.wa, %i.wb
  %i.wd = fmul reassoc nsz arcp contract afn float %i.vl, %i.lz
  %i.we = fmul reassoc nsz arcp contract afn float %i.mb, %i.uw
  %i.wf = fadd reassoc nsz arcp contract afn float %i.wd, %i.we
  %i.wg = fmul reassoc nsz arcp contract afn float %i.md, %i.vn
  %i.wh = fadd reassoc nsz arcp contract afn float %i.wf, %i.wg
  %i.wi = fmul reassoc nsz arcp contract afn float %i.mf, %i.vl
  %i.wj = fmul reassoc nsz arcp contract afn float %i.mh, %i.uw
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wj, %i.wi
  %i.wl = fmul reassoc nsz arcp contract afn float %i.mj, %i.vn
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wk, %i.wl
  %i.wn = fmul reassoc nsz arcp contract afn float %i.ml, %i.vl
  %i.wo = fmul reassoc nsz arcp contract afn float %i.mn, %i.uw
  %i.wp = fadd reassoc nsz arcp contract afn float %i.wo, %i.wn
  %i.wq = fmul reassoc nsz arcp contract afn float %i.mp, %i.vn
  %i.wr = fadd reassoc nsz arcp contract afn float %i.wp, %i.wq
  %i.ws = fmul reassoc nsz arcp contract afn float %i.vs, %i.ps
  %i.wt = fadd reassoc nsz arcp contract afn float %i.ws, %i.lr
  %i.wu = fmul reassoc nsz arcp contract afn float %i.vx, %i.pt
  %i.wv = fadd reassoc nsz arcp contract afn float %i.wu, %i.lr
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wc, %i.pu
  %i.wx = fadd reassoc nsz arcp contract afn float %i.ww, %i.lr
  %i.wy = fadd reassoc nsz arcp contract afn float %i.wt, %.025157
  %i.wz = fadd reassoc nsz arcp contract afn float %i.wh, %.025356
  %i.xa = fadd reassoc nsz arcp contract afn float %i.wv, %i.wy
  %i.xb = fadd reassoc nsz arcp contract afn float %i.wm, %i.wz
  %i.xc = fadd reassoc nsz arcp contract afn float %i.wx, %i.xa ; 2 uses
  %i.xd = fadd reassoc nsz arcp contract afn float %i.wr, %i.xb ; 2 uses
  %i.xe = add nuw i64 %.025058, 1                 ; 2 uses
  %exitcond98.not = icmp eq i64 %i.xe, %i.lu
  br i1 %exitcond98.not, label %.lr.ph75, label %.preheader24.preheader, !llvm.loop !432

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader.preheader
  %.024373 = phi i64 [ %i.yf, %.preheader.preheader ], [ %.024373.ph, %.preheader.preheader.preheader ] ; 3 uses
  %.024472 = phi float [ %73, %.preheader.preheader ], [ %.024472.ph, %.preheader.preheader.preheader ]
  %slprdx.acc = phi <4 x float> [ %slprdx.acc281, %.preheader.preheader ], [ %slprdx.acc.ph, %.preheader.preheader.preheader ]
  %.idx = shl i64 %.024373, 4
  %i.xf = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.xg = getelementptr inbounds nuw [48 x i8], ptr %i.ls, i64 %.024373 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 112
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 116
  %i.xj = load float, ptr %i.xh, align 4, !tbaa !12
  %16 = fmul reassoc nsz arcp contract afn float %i.xj, 8.620690e-03
  %17 = fadd reassoc nsz arcp contract afn float %16, f0x3E0D3DCB ; 6 uses
  %18 = fcmp reassoc nsz arcp contract afn ogt float %17, f0x3E53DCB1
  %i.xk = fmul reassoc nsz arcp contract afn float %17, %17
  %i.xl = fmul reassoc nsz arcp contract afn float %i.xk, %17
  %19 = fmul reassoc nsz arcp contract afn float %17, f0x3E038026
  %20 = fadd reassoc nsz arcp contract afn float %19, f0xBC911AA6
  %21 = select reassoc nsz arcp contract afn i1 %18, float %i.xl, float %20 ; 3 uses
  %22 = load <2 x float>, ptr %i.xi, align 4, !tbaa !12
  %23 = fmul reassoc nsz arcp contract afn <2 x float> %22, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %24 = insertelement <2 x float> poison, float %17, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %26 = fadd reassoc nsz arcp contract afn <2 x float> %25, %23
  %27 = fsub reassoc nsz arcp contract afn <2 x float> %25, %23
  %28 = shufflevector <2 x float> %26, <2 x float> %27, <2 x i32> <i32 0, i32 3> ; 5 uses
  %29 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %28, splat (float f0x3E53DCB1)
  %30 = fmul reassoc nsz arcp contract afn <2 x float> %28, %28
  %31 = fmul reassoc nsz arcp contract afn <2 x float> %30, %28
  %32 = fmul reassoc nsz arcp contract afn <2 x float> %28, splat (float f0x3E038026)
  %33 = fadd reassoc nsz arcp contract afn <2 x float> %32, splat (float f0xBC911AA6)
  %34 = select <2 x i1> %29, <2 x float> %31, <2 x float> %33 ; 2 uses
  %35 = extractelement <2 x float> %34, i64 0
  %i.xm = fmul reassoc nsz arcp contract afn float %35, 9.642000e-01 ; 3 uses
  %36 = extractelement <2 x float> %34, i64 1
  %i.xn = fmul reassoc nsz arcp contract afn float %36, f0x3F532CA5 ; 3 uses
  %37 = fmul reassoc nsz arcp contract afn float %i.xm, %7
  %38 = fmul reassoc nsz arcp contract afn float %i.qi, %21
  %39 = fadd reassoc nsz arcp contract afn float %37, %38
  %40 = fmul reassoc nsz arcp contract afn float %i.pz, %i.xn
  %41 = fadd reassoc nsz arcp contract afn float %39, %40
  %i.xo = fmul reassoc nsz arcp contract afn float %i.ue, %i.xm
  %i.xp = fmul reassoc nsz arcp contract afn float %i.qk, %21
  %i.xq = fadd reassoc nsz arcp contract afn float %i.xp, %i.xo
  %i.xr = fmul reassoc nsz arcp contract afn float %i.qd, %i.xn
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xq, %i.xr
  %i.xt = fmul reassoc nsz arcp contract afn float %i.uf, %i.xm
  %i.xu = fmul reassoc nsz arcp contract afn float %i.ql, %21
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xu, %i.xt
  %i.xw = fmul reassoc nsz arcp contract afn float %i.qm, %i.xn
  %i.xx = fadd reassoc nsz arcp contract afn float %i.xv, %i.xw
  %42 = fsub reassoc nsz arcp contract afn float %41, %6
  %43 = fsub reassoc nsz arcp contract afn float %i.xs, %6
  %i.xy = fmul reassoc nsz arcp contract afn float %i.pz, %.sroa.5.0.copyload
  %44 = load <2 x float>, ptr %i.xf, align 4, !tbaa !12 ; 4 uses
  %45 = extractelement <2 x float> %44, i64 0
  %i.xz = fmul reassoc nsz arcp contract afn float %7, %45
  %46 = extractelement <2 x float> %44, i64 1
  %i.ya = fmul reassoc nsz arcp contract afn float %i.qi, %46
  %47 = fadd reassoc nsz arcp contract afn float %i.ya, %i.xz
  %i.yb = fadd reassoc nsz arcp contract afn float %47, %i.xy
  %48 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %49 = fmul reassoc nsz arcp contract afn <2 x float> %9, %48
  %50 = fmul reassoc nsz arcp contract afn <2 x float> %10, %44
  %51 = fadd reassoc nsz arcp contract afn <2 x float> %50, %49
  %52 = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = fmul reassoc nsz arcp contract afn <2 x float> %12, %53
  %55 = fadd reassoc nsz arcp contract afn <2 x float> %51, %54
  %i.yc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.yb, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %57 = shufflevector <4 x float> %i.yc, <4 x float> %56, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.yd = fmul reassoc nsz arcp contract afn <4 x float> %57, %13
  %i.ye = fadd reassoc nsz arcp contract afn <4 x float> %i.yd, %14 ; 4 uses
  %58 = fsub reassoc nsz arcp contract afn <4 x float> %i.ye, %15 ; 2 uses
  %59 = insertelement <4 x float> %58, float 1.000000e+00, i64 3
  %60 = fmul reassoc nsz arcp contract afn <4 x float> %58, %59
  %61 = extractelement <4 x float> %i.ye, i64 0
  %62 = fsub reassoc nsz arcp contract afn float %61, %6
  %63 = fmul reassoc nsz arcp contract afn float %42, %62
  %64 = fadd reassoc nsz arcp contract afn float %63, %.024472
  %65 = extractelement <4 x float> %i.ye, i64 1
  %66 = fsub reassoc nsz arcp contract afn float %65, %6
  %67 = fmul reassoc nsz arcp contract afn float %43, %66
  %68 = fadd reassoc nsz arcp contract afn float %67, %64
  %slprdx.acc281 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %60 ; 2 uses
  %69 = fsub reassoc nsz arcp contract afn float %i.xx, %6
  %70 = extractelement <4 x float> %i.ye, i64 2
  %71 = fsub reassoc nsz arcp contract afn float %70, %6
  %72 = fmul reassoc nsz arcp contract afn float %69, %71
  %73 = fadd reassoc nsz arcp contract afn float %72, %68 ; 2 uses
  %i.yf = add nuw i64 %.024373, 1                 ; 2 uses
  %exitcond101.not = icmp eq i64 %i.yf, %i.lu
  br i1 %exitcond101.not, label %._crit_edge76, label %.preheader.preheader, !llvm.loop !433

._crit_edge76:                                    ; preds = %.preheader.preheader, %._crit_edge61.thread
  %i.yg = phi float [ %i.ly, %._crit_edge61.thread ], [ %6, %.preheader.preheader ]
  %i.yh = phi float [ %i.lx, %._crit_edge61.thread ], [ %i.qh, %.preheader.preheader ]
  %i.yi = phi float [ %i.lw, %._crit_edge61.thread ], [ %i.pw, %.preheader.preheader ] ; 2 uses
  %slprdx.exit.a = phi <4 x float> [ poison, %._crit_edge61.thread ], [ %slprdx.acc281, %.preheader.preheader ]
  %.0244.lcssa = phi float [ 0.000000e+00, %._crit_edge61.thread ], [ %73, %.preheader.preheader ]
  %i.yj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit.a)
  %slprdx.sel = select i1 %.not80.not, float 0.000000e+00, float %i.yj
  %i.yk = fmul reassoc nsz arcp contract afn float %.0244.lcssa, %i.yi
  %i.yl = fmul reassoc nsz arcp contract afn float %slprdx.sel, %i.yi
  %i.ym = fdiv reassoc nsz arcp contract afn float %i.yk, %i.yl ; 3 uses
  %i.yn = fmul reassoc nsz arcp contract afn float %i.ym, %i.yh
  %i.yo = fsub reassoc nsz arcp contract afn float %i.yg, %i.yn
  %i.yp = fneg reassoc nsz arcp contract afn float %i.ym
  %i.yq = fdiv reassoc nsz arcp contract afn float %i.yo, %i.yp
  %.sroa.0239.0.vec.insert = insertelement <2 x float> poison, float %i.yq, i64 0
  %.sroa.0239.4.vec.insert = insertelement <2 x float> %.sroa.0239.0.vec.insert, float %i.ym, i64 1
  ret <2 x float> %.sroa.0239.4.vec.insert
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_compute_patches_delta_E(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 16, !tbaa !101 ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp reassoc nsz arcp contract afn i64 %i.b to float
  %i.d = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %.0127.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.em, %bb.v ]
  %.0125.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %spec.select135, %bb.v ]
  store float %.0127.lcssa, ptr %3, align 4, !tbaa !12
  store float %.0125.lcssa, ptr %4, align 4, !tbaa !12
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.0124145 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %bb.v ] ; 4 uses
  %.0125144 = phi float [ 0.000000e+00, %.lr.ph ], [ %spec.select135, %bb.v ] ; 2 uses
  %.0127143 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.em, %bb.v ]
  %.idx = shl i64 %.0124145, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.f = fmul reassoc nsz arcp contract afn float %.sroa.0.0.copyload, f0x3F84C0A6 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, f0x3C111AA7
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.f) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = fmul reassoc nsz arcp contract afn float %.sroa.0.0.copyload, f0x410137F7
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, f0x3E0D3DCB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi reassoc nsz arcp contract afn float [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %.sroa.4.0.copyload, f0x3C111AA7
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fmul reassoc nsz arcp contract afn float %.sroa.4.0.copyload, f0x40F92F69
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, f0x3E0D3DCB
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %.sroa.4.0.copyload) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi reassoc nsz arcp contract afn float [ %i.o, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %i.q = fmul reassoc nsz arcp contract afn float %.sroa.5.0.copyload, f0x3F9B2B9B ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, f0x3C111AA7
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = fmul reassoc nsz arcp contract afn float %.sroa.5.0.copyload, f0x41170A26
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.j:                                             ; preds = %bb.h
  %i.u = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.q) #33
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.j, %bb.i
  %i.v = phi reassoc nsz arcp contract afn float [ %i.u, %bb.j ], [ %i.t, %bb.i ]
  %i.w = fmul reassoc nsz arcp contract afn float %i.p, 1.160000e+02
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, -1.600000e+01 ; 2 uses
  %i.y = fsub reassoc nsz arcp contract afn float %i.k, %i.p
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 5.000000e+02 ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn float %i.v, %i.p
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, -2.000000e+02 ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0124145 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.x
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.x
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 5.000000e-01
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.am = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aj, float noundef %i.al) #33
  %i.an = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.z, float noundef %i.ab) #33
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.am
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 5.000000e-01 ; 3 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ar
  %i.at = fdiv reassoc nsz arcp contract afn float %i.as, %i.ap ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, f0x4FB5E621
  %i.av = fdiv reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.av) ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, 5.000000e-01
  %i.ay = fsub reassoc nsz arcp contract afn float 1.500000e+00, %i.ax ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.aj ; 2 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, %i.z ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.az, float noundef %i.al) #33 ; 4 uses
  %i.bc = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ab) #33 ; 4 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn float %i.bc, %i.bb ; 2 uses
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.al, float %i.az)
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ab, float %i.ba)
  %i.bh = fcmp reassoc nsz arcp contract afn oeq float %i.bb, 0.000000e+00 ; 2 uses
  %spec.select = select nsz i1 %i.bh, float 0.000000e+00, float %i.bf ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bc, 0.000000e+00 ; 2 uses
  %.0120 = select nsz i1 %i.bi, float 0.000000e+00, float %i.bg ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %spec.select, 0.000000e+00
  %i.bk = fsub reassoc nsz arcp contract afn float f0x40C90FDB, %spec.select
  %.1122 = select nsz i1 %i.bj, float %i.bk, float %spec.select
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %.0120, 0.000000e+00
  %i.bm = fsub reassoc nsz arcp contract afn float f0x40C90FDB, %.0120
  %.1 = select nsz i1 %i.bl, float %i.bm, float %.0120
  %i.bn = fmul reassoc nsz arcp contract afn float %.1122, f0x42652EE0 ; 4 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %.1, f0x42652EE0 ; 4 uses
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.bn ; 5 uses
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %or.cond = or i1 %i.bh, %i.bi                   ; 2 uses
  br i1 %or.cond, label %bb.o, label %bb.k

bb.k:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.br = fcmp reassoc nsz arcp contract afn ugt float %i.bq, 1.800000e+02
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bq, 1.800000e+02 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ole float %i.bo, %i.bn
  %or.cond133.not = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond133.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bp, 3.600000e+02
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bo, %i.bn
  %or.cond134 = select i1 %i.bs, i1 %i.bv, i1 false
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bp, -3.600000e+02
  %spec.select136 = select nsz i1 %or.cond134, float %i.bw, float %i.bp
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_XYZ_to_Lab.exit, %bb.k, %bb.m
  %.0119 = phi nsz float [ %spec.select136, %bb.n ], [ %i.bp, %bb.k ], [ %i.bu, %bb.m ], [ 0.000000e+00, %dt_XYZ_to_Lab.exit ] ; 2 uses
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bc, %i.bb
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.by)
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 2.000000e+00
  %i.cb = fmul reassoc nsz arcp contract afn float %.0119, f0x3C0EFA36
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.cb)
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.bn, %i.bo ; 7 uses
  br i1 %or.cond, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = fcmp reassoc nsz arcp contract afn ugt float %i.bx, 1.800000e+02
  br i1 %i.cf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = fmul reassoc nsz arcp contract afn float %i.ce, 5.000000e-01
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 1.800000e+02 ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ce, 3.600000e+02
  %or.cond5 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 1.800000e+02
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cl = fcmp reassoc nsz arcp contract afn oge float %i.ce, 3.600000e+02
  %or.cond7 = select i1 %i.ch, i1 %i.cl, i1 false
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, -1.800000e+02
end_hunk_0
