Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrectrgb?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %index603 = phi i64 [ 0, %vector.ph594 ], [ %index.next619, %vector.body602 ]
  %vec.ind604 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph594 ], [ %vec.ind.next620, %vector.body602 ] ; 2 uses
  %i.ie = shl <8 x i64> %vec.ind604, splat (i64 2) ; 5 uses
  %i.if = extractelement <8 x i64> %i.ie, i64 0
  %i.ig = add <8 x i64> %i.ie, %broadcast.splat597.a ; 3 uses
  %i.ih = extractelement <8 x i64> %i.ig, i64 0   ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ih
  %wide.vec = load <32 x float>, ptr %i.ii, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ij = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> splat (float f0x358637BD)) ; 6 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ih
  %wide.vec605.a = load <32 x float>, ptr %i.ik, align 4, !tbaa !47, !alias.scope !129, !noalias !128
  %strided.vec606.a = shufflevector <32 x float> %wide.vec605.a, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.if ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.gj
  %wide.vec607.a = load <32 x float>, ptr %i.im, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %strided.vec608.a = shufflevector <32 x float> %wide.vec607.a, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.in = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec608.a, <8 x float> splat (float f0x358637BD))
  %i.io = fdiv reassoc nsz arcp contract afn <8 x float> %i.in, %i.ij
  %i.ip = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.io) ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.gm
  %wide.vec609 = load <32 x float>, ptr %i.iq, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %strided.vec610 = shufflevector <32 x float> %wide.vec609, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ir = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec610, <8 x float> splat (float f0x358637BD))
  %i.is = fdiv reassoc nsz arcp contract afn <8 x float> %i.ir, %i.ij
  %i.it = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.is) ; 3 uses
  %i.iu = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ij, %strided.vec606.a
  %i.iv = uitofp <8 x i1> %i.iu to <8 x float>
  %i.iw = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.ij, %strided.vec606.a
  %i.ix = uitofp <8 x i1> %i.iw to <8 x float>
  %i.iy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ip)
  %i.iz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.it)
  %i.ja = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.iy, <8 x float> %i.iz) ; 2 uses
  %i.jb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ja, splat (float 2.000000e+00)
  %i.jc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ja
  %i.jd = select nsz <8 x i1> %i.jb, <8 x float> %i.jc, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %i.jd, %i.ix ; 4 uses
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.jd, %i.iv ; 4 uses
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, %i.ip
  %i.jh = or disjoint <8 x i64> %i.ie, %broadcast.splat599.a ; 2 uses
  %wide.gep611.a = getelementptr inbounds nuw [4 x i8], ptr %i.fz, <8 x i64> %i.jh
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jg, <8 x ptr> align 4 %wide.gep611.a, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !130, !noalias !131
  %i.ji = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.ip
  %wide.gep612.a = getelementptr inbounds nuw [4 x i8], ptr %i.ga, <8 x i64> %i.jh
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ji, <8 x ptr> align 4 %wide.gep612.a, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !132, !noalias !133
  %i.jj = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, %i.it
  %i.jk = or disjoint <8 x i64> %i.ie, %broadcast.splat601 ; 2 uses
  %wide.gep613.a = getelementptr inbounds nuw [4 x i8], ptr %i.fz, <8 x i64> %i.jk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jj, <8 x ptr> align 4 %wide.gep613.a, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !134, !noalias !135
  %i.jl = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.it
  %wide.gep614.a = getelementptr inbounds nuw [4 x i8], ptr %i.ga, <8 x i64> %i.jk
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jl, <8 x ptr> align 4 %wide.gep614.a, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !136, !noalias !137
  %i.jm = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, %i.ij
  %wide.gep615.a = getelementptr inbounds nuw [4 x i8], ptr %i.fz, <8 x i64> %i.ig
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jm, <8 x ptr> align 4 %wide.gep615.a, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !138, !noalias !139
  %i.jn = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.ij
  %wide.gep616.a = getelementptr inbounds nuw [4 x i8], ptr %i.ga, <8 x i64> %i.ig
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jn, <8 x ptr> align 4 %wide.gep616.a, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !140, !noalias !141
  %i.jo = or disjoint <8 x i64> %i.ie, splat (i64 3) ; 2 uses
  %wide.gep617 = getelementptr inbounds nuw [4 x i8], ptr %i.fz, <8 x i64> %i.jo
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jf, <8 x ptr> align 4 %wide.gep617, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !142, !noalias !143
  %wide.gep618 = getelementptr inbounds nuw [4 x i8], ptr %i.ga, <8 x i64> %i.jo
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.je, <8 x ptr> align 4 %wide.gep618, <8 x i1> splat (i1 true)), !tbaa !47, !alias.scope !144, !noalias !145
  %index.next619 = add nuw i64 %index603, 8       ; 2 uses
  %vec.ind.next620 = add nuw <8 x i64> %vec.ind604, splat (i64 8)
  %i.jp = icmp eq i64 %index.next619, %n.vec595
  br i1 %i.jp, label %scalar.ph357.preheader, label %vector.body602, !llvm.loop !82

._crit_edge.i52.i:                                ; preds = %scalar.ph357, %bb.c
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.gg, ptr noundef %i.fz, ptr noundef %i.gb) #18, !noalias !128
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.gg, ptr noundef %i.ga, ptr noundef %i.gc) #18, !noalias !128
  call void @dt_gaussian_free(ptr noundef nonnull %i.gg) #18, !noalias !128
  call fastcc void @normalize_manifolds(ptr noundef %i.fy, ptr noundef %i.gc, ptr noundef %i.gb, i64 noundef %i.ao, i64 noundef %i.ar, i32 noundef %i.ag), !noalias !128
  br i1 %.not.i50.i, label %bb.g, label %bb.d

scalar.ph357:                                     ; preds = %scalar.ph357.preheader, %scalar.ph357
  %.0283308.i.i = phi i64 [ %i.ln, %scalar.ph357 ], [ %.0283308.i.i.ph, %scalar.ph357.preheader ] ; 2 uses
  %i.jq = shl i64 %.0283308.i.i, 2                ; 5 uses
  %i.jr = add i64 %i.jq, %i.gh                    ; 4 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.ju = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jt, float f0x358637BD) ; 5 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.jr
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !47, !noalias !128 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.jq ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.gj
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.gm
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.kc = fcmp reassoc nsz arcp contract afn oge float %i.ju, %i.jw
  %i.kd = uitofp i1 %i.kc to float
  %i.ke = fcmp reassoc nsz arcp contract afn ole float %i.ju, %i.jw
  %i.kf = uitofp i1 %i.ke to float
  %i.kg = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %i.kb, i64 1
  %i.ki = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kh, <2 x float> splat (float f0x358637BD))
  %i.kj = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fdiv reassoc nsz arcp contract afn <2 x float> %i.ki, %i.kk
  %i.km = call reassoc nsz arcp contract afn <2 x float> @llvm.log2.v2f32(<2 x float> %i.kl) ; 3 uses
  %i.kn = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.km) ; 2 uses
  %i.ko = extractelement <2 x float> %i.kn, i64 0
  %i.kp = extractelement <2 x float> %i.kn, i64 1
  %i.kq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ko, float %i.kp) ; 2 uses
  %i.kr = fcmp reassoc nsz arcp contract afn ogt float %i.kq, 2.000000e+00
  %i.ks = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.kq
  %i.kt = select nsz i1 %i.kr, float %i.ks, float 1.000000e+00 ; 2 uses
  %.0292.i.i = fmul reassoc nsz arcp contract afn float %i.kt, %i.kf ; 4 uses
  %.0291.i.i = fmul reassoc nsz arcp contract afn float %i.kt, %i.kd ; 4 uses
  %i.ku = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kv = fmul reassoc nsz arcp contract afn float %.0291.i.i, %i.ku
  %i.kw = or disjoint i64 %i.jq, %i.gj            ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.kw
  store float %i.kv, ptr %i.kx, align 4, !tbaa !47, !noalias !128
  %i.ky = fmul reassoc nsz arcp contract afn float %.0292.i.i, %i.ku
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.kw
  store float %i.ky, ptr %i.kz, align 4, !tbaa !47, !noalias !128
  %i.la = extractelement <2 x float> %i.km, i64 1 ; 2 uses
  %i.lb = fmul reassoc nsz arcp contract afn float %.0291.i.i, %i.la
  %i.lc = or disjoint i64 %i.jq, %i.gm            ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.lc
  store float %i.lb, ptr %i.ld, align 4, !tbaa !47, !noalias !128
  %i.le = fmul reassoc nsz arcp contract afn float %.0292.i.i, %i.la
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.lc
  store float %i.le, ptr %i.lf, align 4, !tbaa !47, !noalias !128
  %i.lg = fmul reassoc nsz arcp contract afn float %.0291.i.i, %i.ju
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.jr
  store float %i.lg, ptr %i.lh, align 4, !tbaa !47, !noalias !128
  %i.li = fmul reassoc nsz arcp contract afn float %.0292.i.i, %i.ju
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.jr
  store float %i.li, ptr %i.lj, align 4, !tbaa !47, !noalias !128
  %i.lk = or disjoint i64 %i.jq, 3                ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.lk
  store float %.0291.i.i, ptr %i.ll, align 4, !tbaa !47, !noalias !128
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.lk
  store float %.0292.i.i, ptr %i.lm, align 4, !tbaa !47, !noalias !128
  %i.ln = add nuw i64 %.0283308.i.i, 1            ; 2 uses
  %exitcond.not.i51.i = icmp eq i64 %i.ln, %i.as
  br i1 %exitcond.not.i51.i, label %._crit_edge.i52.i, label %scalar.ph357, !llvm.loop !83

bb.d:                                             ; preds = %._crit_edge.i52.i
  %i.lo = call ptr @dt_gaussian_init(i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, float noundef %i.fw, i32 noundef 0) #18, !noalias !128 ; 5 uses
  %.not303.i.i = icmp eq ptr %i.lo, null
  br i1 %.not303.i.i, label %get_manifolds.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.lo, ptr noundef %i.au, ptr noundef %i.fy) #18, !noalias !128
  br i1 %.not324.i.i, label %._crit_edge320.i.i, label %.lr.ph319.i.i

.lr.ph319.i.i:                                    ; preds = %bb.e
  %i.lp = zext i32 %i.ag to i64                   ; 3 uses
  %i.lq = add nuw nsw i64 %i.lp, 1
  %i.lr = urem i64 %i.lq, 3                       ; 3 uses
  %i.ls = add nuw nsw i64 %i.lp, 2
  %i.lt = urem i64 %i.ls, 3                       ; 3 uses
  br label %bb.f

._crit_edge320.i.i:                               ; preds = %bb.f, %bb.e
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.lo, ptr noundef %i.fz, ptr noundef %i.gb) #18, !noalias !128
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.lo, ptr noundef %i.ga, ptr noundef %i.gc) #18, !noalias !128
  call fastcc void @normalize_manifolds(ptr noundef %i.fy, ptr noundef %i.gc, ptr noundef %i.gb, i64 noundef %i.ao, i64 noundef %i.ar, i32 noundef %i.ag), !noalias !128
  call void @dt_gaussian_free(ptr noundef nonnull %i.lo) #18, !noalias !128
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph319.i.i
  %.0289317.i.i = phi i64 [ 0, %.lr.ph319.i.i ], [ %i.pl, %bb.f ] ; 2 uses
  %i.lu = shl i64 %.0289317.i.i, 2                ; 6 uses
  %i.lv = add i64 %i.lu, %i.lp                    ; 5 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.lv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !47, !alias.scope !125, !noalias !128 ; 2 uses
  %i.ly = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lx, float f0x358637BD)
  %i.lz = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ly) ; 7 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.lv
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !47, !noalias !128
  %i.mc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mb, float f0x358637BD)
  %i.md = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mc) ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.lv
  %i.mf = load float, ptr %i.me, align 4, !tbaa !47, !noalias !128
  %i.mg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mf, float f0x358637BD)
  %i.mh = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mg) ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.lv
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !47, !noalias !128
  %i.mk = fsub reassoc nsz arcp contract afn float %i.lz, %i.mh ; 2 uses
  %i.ml = fsub reassoc nsz arcp contract afn float %i.lz, %i.md ; 2 uses
  %i.mm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.mk)
  %i.mn = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ml)
  %i.mo = fcmp reassoc nsz arcp contract afn olt float %i.mm, %i.mn ; 5 uses
  %i.mp = or disjoint i64 %i.lu, %i.lr            ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.mp
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.ms = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mr, float f0x358637BD)
  %i.mt = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ms) ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.mp
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !47, !noalias !128
  %i.mw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mv, float f0x358637BD)
  %i.mx = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mw) ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.mp
  %i.mz = load float, ptr %i.my, align 4, !tbaa !47, !noalias !128
  %i.na = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mz, float f0x358637BD)
  %i.nb = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.na) ; 2 uses
  %i.nc = fsub reassoc nsz arcp contract afn float %i.lz, %i.mt
  %i.nd = fsub reassoc nsz arcp contract afn float %i.nb, %i.md
  %i.ne = fsub reassoc nsz arcp contract afn float %i.mx, %i.mh
  %.sink349.i.i.a = select i1 %i.mo, float %i.mk, float %i.ml ; 2 uses
  %.sink.i.i = select i1 %i.mo, float %i.nb, float %i.mx
  %.sink348.i.i = select i1 %i.mo, float %i.ne, float %i.nd
  %i.nf = fsub reassoc nsz arcp contract afn float %.sink349.i.i.a, %i.mt
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, %.sink.i.i
  %i.nh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ng)
  %..v.i.i = fadd reassoc nsz arcp contract afn float %i.nc, %.sink348.i.i
  %..i.i = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %..v.i.i)
  %6 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nh, float 1.000000e-01)
  %i.ni = or disjoint i64 %i.lu, %i.lt            ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.ni
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !47, !noalias !128
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ni
  %i.no = load float, ptr %i.nn, align 4, !tbaa !47, !noalias !128
  %i.np = insertelement <4 x float> poison, float %..i.i, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.nk, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.nm, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 3
  %i.nt = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ns, <4 x float> <float 1.000000e-01, float f0x358637BD, float f0x358637BD, float f0x358637BD>) ; 4 uses
  %i.nu = extractelement <4 x float> %i.nt, i64 1
  %7 = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.nu) ; 2 uses
  %i.nv = extractelement <4 x float> %i.nt, i64 2
  %i.nw = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.nv) ; 2 uses
  %i.nx = extractelement <4 x float> %i.nt, i64 3
  %i.ny = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.nx) ; 2 uses
  %8 = fsub reassoc nsz arcp contract afn float %i.nw, %i.mh
  %9 = fsub reassoc nsz arcp contract afn float %i.ny, %i.md
  %i.nz = fsub reassoc nsz arcp contract afn float %i.lz, %7
  %.sink349.i.i = select i1 %i.mo, float %i.ny, float %i.nw
  %..v.v.1.i.i = select i1 %i.mo, float %8, float %9
  %i.oa = fsub reassoc nsz arcp contract afn float %.sink349.i.i.a, %7
  %10 = insertelement <2 x float> poison, float %i.oa, i64 0
  %11 = insertelement <2 x float> %10, float %i.nz, i64 1
  %12 = insertelement <2 x float> poison, float %.sink349.i.i, i64 0
  %13 = insertelement <2 x float> %12, float %..v.v.1.i.i, i64 1
  %14 = fadd reassoc nsz arcp contract afn <2 x float> %11, %13
  %15 = insertelement <4 x float> poison, float %6, i64 0
  %16 = shufflevector <4 x float> %15, <4 x float> %i.nt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ob = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %14)
  %i.oc = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ob, <2 x float> splat (float 1.000000e-01))
  %17 = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %16, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %19 = fdiv reassoc nnan nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %18 ; 4 uses
  %20 = extractelement <4 x float> %19, i64 0
  %21 = fadd reassoc nnan nsz arcp contract afn float %20, 2.000000e-01
  %22 = extractelement <4 x float> %19, i64 1
  %23 = fadd reassoc nnan nsz arcp contract afn float %22, 2.000000e-01
  %i.od = extractelement <4 x float> %19, i64 2
  %24 = fadd reassoc nnan nsz arcp contract afn float %i.od, 2.000000e-01
  %i.oe = extractelement <4 x float> %19, i64 3
  %25 = fadd reassoc nnan nsz arcp contract afn float %i.oe, 2.000000e-01
  %26 = fmul reassoc nnan nsz arcp contract afn float %24, %21
  %i.of = fmul reassoc nnan nsz arcp contract afn float %25, %23
  %i.og = fdiv reassoc nsz arcp contract afn float %26, %i.of ; 2 uses
  %i.oh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mj, float f0x358637BD)
  %i.oi = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.oh)
  %i.oj = fcmp reassoc nsz arcp contract afn ogt float %i.lz, %i.oi ; 2 uses
  %.sink374.i.i = select i1 %i.oj, ptr %i.fz, ptr %i.ga ; 2 uses
  %.sink356.i.i = select i1 %i.oj, ptr %i.ga, ptr %i.fz
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.lu ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.lr
  %i.om = load float, ptr %i.ol, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.on = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.om, float f0x358637BD)
  %i.oo = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.on)
  %i.op = fsub reassoc nsz arcp contract afn float %i.oo, %i.lz ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.lt
  %i.or = load float, ptr %i.oq, align 4, !tbaa !47, !alias.scope !125, !noalias !128
  %i.os = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.or, float f0x358637BD)
  %i.ot = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.os)
  %i.ou = fsub reassoc nsz arcp contract afn float %i.ot, %i.lz ; 2 uses
  %i.ov = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.op)
  %i.ow = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ou)
  %i.ox = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ov, float %i.ow) ; 2 uses
  %i.oy = fcmp reassoc nsz arcp contract afn ogt float %i.ox, 2.000000e+00
  %i.oz = fmul reassoc nsz arcp contract afn float %i.og, 2.000000e+00
  %i.pa = fdiv reassoc nsz arcp contract afn float %i.oz, %i.ox
  %.2.i.i = select nsz i1 %i.oy, float %i.pa, float %i.og ; 4 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sink374.i.i, i64 %i.lu ; 3 uses
  %i.pc = fmul reassoc nsz arcp contract afn float %.2.i.i, %i.op
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.lr
  store float %i.pc, ptr %i.pd, align 4, !tbaa !47, !noalias !128
  %i.pe = fmul reassoc nsz arcp contract afn float %.2.i.i, %i.ou
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.lt
  store float %i.pe, ptr %i.pf, align 4, !tbaa !47, !noalias !128
  %i.pg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lx, float 0.000000e+00)
  %i.ph = fmul reassoc nsz arcp contract afn float %.2.i.i, %i.pg
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sink374.i.i, i64 %i.lv
  store float %i.ph, ptr %i.pi, align 4, !tbaa !47, !noalias !128
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store float %.2.i.i, ptr %i.pj, align 4, !tbaa !47, !noalias !128
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.sink356.i.i, i64 %i.lu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pk, i8 0, i64 16, i1 false), !tbaa !47, !noalias !128
  %i.pl = add nuw i64 %.0289317.i.i, 1            ; 2 uses
  %exitcond327.not.i.i = icmp eq i64 %i.pl, %i.as
  br i1 %exitcond327.not.i.i, label %._crit_edge320.i.i, label %bb.f

bb.g:                                             ; preds = %._crit_edge320.i.i, %._crit_edge.i52.i
  call void @free(ptr noundef %i.ga) #18, !noalias !128
  call void @free(ptr noundef %i.fz) #18, !noalias !128
  br i1 %.not324.i.i, label %._crit_edge323.i.i, label %.preheader.i53.i.preheader

.preheader.i53.i.preheader:                       ; preds = %bb.g
  %min.iters.check628 = icmp ult i64 %i.as, 17
  br i1 %min.iters.check628, label %.preheader.i53.i.preheader915, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i53.i.preheader
  %i.pm = add i64 %i.as, -1
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.pm, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 6 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.pn = getelementptr i8, ptr %i.aw, i64 %mul.result
  %i.po = icmp ult ptr %i.pn, %i.aw
  %scevgep = getelementptr i8, ptr %i.aw, i64 12  ; 2 uses
  %i.pp = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.pq = icmp ult ptr %i.pp, %scevgep
  %scevgep623.a = getelementptr i8, ptr %i.aw, i64 4 ; 2 uses
  %i.pr = getelementptr i8, ptr %scevgep623.a, i64 %mul.result
  %i.ps = icmp ult ptr %i.pr, %scevgep623.a
  %scevgep624.a = getelementptr i8, ptr %i.aw, i64 16 ; 2 uses
  %i.pt = getelementptr i8, ptr %scevgep624.a, i64 %mul.result
  %i.pu = icmp ult ptr %i.pt, %scevgep624.a
  %scevgep625 = getelementptr i8, ptr %i.aw, i64 8 ; 2 uses
  %i.pv = getelementptr i8, ptr %scevgep625, i64 %mul.result
  %i.pw = icmp ult ptr %i.pv, %scevgep625
  %scevgep626 = getelementptr i8, ptr %i.aw, i64 20 ; 2 uses
  %i.px = getelementptr i8, ptr %scevgep626, i64 %mul.result
  %i.py = icmp ult ptr %i.px, %scevgep626
  %op.rdx = or i1 %mul.overflow, %i.pq
  %op.rdx910.a = or i1 %i.po, %i.ps
  %op.rdx911.a = or i1 %i.pu, %i.pw
  %op.rdx912.a = or i1 %op.rdx, %op.rdx910.a
  %op.rdx913 = or i1 %op.rdx911.a, %i.py
  %op.rdx914 = or i1 %op.rdx912.a, %op.rdx913
  br i1 %op.rdx914, label %.preheader.i53.i.preheader915, label %vector.ph629

vector.ph629:                                     ; preds = %vector.scevcheck
  %i.pz = and i64 %i.as, 3                        ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 0
  %i.qb = select i1 %i.qa, i64 4, i64 %i.pz
  %n.vec630 = sub i64 %i.as, %i.qb                ; 2 uses
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph629
  %index632 = phi i64 [ 0, %vector.ph629 ], [ %index.next648, %vector.body631 ] ; 2 uses
  %vec.ind633 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph629 ], [ %vec.ind.next649, %vector.body631 ] ; 2 uses
  %i.qc = shl i64 %index632, 2                    ; 2 uses
  %i.qd = mul <4 x i64> %vec.ind633, splat (i64 24)
  %wide.gep634 = getelementptr i8, ptr %i.aw, <4 x i64> %i.qd ; 6 uses
  %wide.gep635 = getelementptr i8, <4 x ptr> %wide.gep634, i64 12
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.qc
  %wide.vec636 = load <16 x float>, ptr %i.qe, align 64, !tbaa !47, !noalias !128 ; 3 uses
  %strided.vec637.a = shufflevector <16 x float> %wide.vec636, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec638 = shufflevector <16 x float> %wide.vec636, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec639.a = shufflevector <16 x float> %wide.vec636, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec637.a, <4 x ptr> align 4 %wide.gep634, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !126, !noalias !146
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.qc
  %wide.vec640 = load <16 x float>, ptr %i.qf, align 64, !tbaa !47, !noalias !128 ; 3 uses
  %strided.vec641.a = shufflevector <16 x float> %wide.vec640, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec642 = shufflevector <16 x float> %wide.vec640, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec643 = shufflevector <16 x float> %wide.vec640, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec641.a, <4 x ptr> align 4 %wide.gep635, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !126, !noalias !146
  %wide.gep644.a = getelementptr i8, <4 x ptr> %wide.gep634, i64 4
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec638, <4 x ptr> align 4 %wide.gep644.a, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !126, !noalias !146
  %wide.gep645.a = getelementptr i8, <4 x ptr> %wide.gep634, i64 16
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec642, <4 x ptr> align 4 %wide.gep645.a, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !126, !noalias !146
  %wide.gep646 = getelementptr i8, <4 x ptr> %wide.gep634, i64 8
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec639.a, <4 x ptr> align 4 %wide.gep646, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !126, !noalias !146
  %wide.gep647 = getelementptr i8, <4 x ptr> %wide.gep634, i64 20
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec643, <4 x ptr> align 4 %wide.gep647, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !126, !noalias !146
  %index.next648 = add nuw i64 %index632, 4       ; 2 uses
  %vec.ind.next649 = add nuw <4 x i64> %vec.ind633, splat (i64 4)
  %i.qg = icmp eq i64 %index.next648, %n.vec630
  br i1 %i.qg, label %.preheader.i53.i.preheader915, label %vector.body631, !llvm.loop !84

.preheader.i53.i.preheader915:                    ; preds = %vector.body631, %vector.scevcheck, %.preheader.i53.i.preheader
  %.0277322.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i53.i.preheader ], [ %n.vec630, %vector.body631 ] ; 6 uses
  %i.qh = sub i64 %i.as, %.0277322.i.i.ph
  %.neg916 = add i64 %.0277322.i.i.ph, 1
  %xtraiter = and i64 %i.qh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i53.i.prol.loopexit, label %.preheader.i53.i.prol

.preheader.i53.i.prol:                            ; preds = %.preheader.i53.i.preheader915
  %i.qi = shl i64 %.0277322.i.i.ph, 2             ; 4 uses
  %.idx.i.i.prol = mul i64 %.0277322.i.i.ph, 24
  %i.qj = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.prol ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.qi
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.qi
  %i.qm = load float, ptr %i.ql, align 16, !tbaa !47, !noalias !128
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.qi
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qp = getelementptr i8, ptr %i.qj, i64 16
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.qi
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !47, !noalias !128
  %i.qt = load <2 x float>, ptr %i.qk, align 16, !tbaa !47, !noalias !128
  %i.qu = insertelement <4 x float> poison, float %i.qs, i64 2
  %i.qv = insertelement <4 x float> %i.qu, float %i.qm, i64 3
  %i.qw = shufflevector <2 x float> %i.qt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> %i.qv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.qx, ptr %i.qj, align 8, !tbaa !47, !alias.scope !126, !noalias !146
  %i.qy = load <2 x float>, ptr %i.qo, align 4, !tbaa !47, !noalias !128
  store <2 x float> %i.qy, ptr %i.qp, align 8, !tbaa !47, !alias.scope !126, !noalias !146
  %i.qz = add nuw i64 %.0277322.i.i.ph, 1
  br label %.preheader.i53.i.prol.loopexit

.preheader.i53.i.prol.loopexit:                   ; preds = %.preheader.i53.i.prol, %.preheader.i53.i.preheader915
  %.0277322.i.i.unr = phi i64 [ %.0277322.i.i.ph, %.preheader.i53.i.preheader915 ], [ %i.qz, %.preheader.i53.i.prol ]
  %i.ra = icmp eq i64 %i.as, %.neg916
  br i1 %i.ra, label %._crit_edge323.i.i, label %.preheader.i53.i

.preheader.i53.i:                                 ; preds = %.preheader.i53.i.prol.loopexit, %.preheader.i53.i
  %.0277322.i.i = phi i64 [ %i.sk, %.preheader.i53.i ], [ %.0277322.i.i.unr, %.preheader.i53.i.prol.loopexit ] ; 4 uses
  %i.rb = shl i64 %.0277322.i.i, 2                ; 4 uses
  %.idx.i.i = mul i64 %.0277322.i.i, 24
  %i.rc = getelementptr i8, ptr %i.aw, i64 %.idx.i.i ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.rb
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.rb
  %i.rf = load float, ptr %i.re, align 16, !tbaa !47, !noalias !128
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.rb
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.ri = getelementptr i8, ptr %i.rc, i64 16
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.rb
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load float, ptr %i.rk, align 8, !tbaa !47, !noalias !128
  %i.rm = load <2 x float>, ptr %i.rd, align 16, !tbaa !47, !noalias !128
  %i.rn = insertelement <4 x float> poison, float %i.rl, i64 2
  %i.ro = insertelement <4 x float> %i.rn, float %i.rf, i64 3
  %i.rp = shufflevector <2 x float> %i.rm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> %i.ro, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.rq, ptr %i.rc, align 8, !tbaa !47, !alias.scope !126, !noalias !146
  %i.rr = load <2 x float>, ptr %i.rh, align 4, !tbaa !47, !noalias !128
  store <2 x float> %i.rr, ptr %i.ri, align 8, !tbaa !47, !alias.scope !126, !noalias !146
  %i.rs = add nuw i64 %.0277322.i.i, 1            ; 2 uses
  %i.rt = shl i64 %i.rs, 2                        ; 4 uses
  %.idx.i.i.1 = mul i64 %i.rs, 24
  %i.ru = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.1 ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.rt
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.rt
  %i.rx = load float, ptr %i.rw, align 16, !tbaa !47, !noalias !128
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.rt
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sa = getelementptr i8, ptr %i.ru, i64 16
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.rt
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load float, ptr %i.sc, align 8, !tbaa !47, !noalias !128
  %i.se = load <2 x float>, ptr %i.rv, align 16, !tbaa !47, !noalias !128
  %i.sf = insertelement <4 x float> poison, float %i.sd, i64 2
  %i.sg = insertelement <4 x float> %i.sf, float %i.rx, i64 3
  %i.sh = shufflevector <2 x float> %i.se, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.si = shufflevector <4 x float> %i.sh, <4 x float> %i.sg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.si, ptr %i.ru, align 8, !tbaa !47, !alias.scope !126, !noalias !146
  %i.sj = load <2 x float>, ptr %i.rz, align 4, !tbaa !47, !noalias !128
  store <2 x float> %i.sj, ptr %i.sa, align 8, !tbaa !47, !alias.scope !126, !noalias !146
end_hunk_0
