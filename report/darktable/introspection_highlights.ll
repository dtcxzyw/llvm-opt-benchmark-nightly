inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@wavelets_process:bb.a
  %i.ho = sext i32 %i.hk to i64
  %i.hp = getelementptr i8, ptr %6, i64 %i.hl
  %i.hq = getelementptr i8, ptr %6, i64 %i.hn
  br label %bb.p

._crit_edge.i65:                                  ; preds = %.thread289.i, %dwt_interleave_rows.exit.i61
  %i.hr = add nuw nsw i64 %.0252318.i, 1          ; 2 uses
  %exitcond342.not.i = icmp eq i64 %i.hr, %4
  br i1 %exitcond342.not.i, label %guide_laplacians.exit, label %bb.k

bb.p:                                             ; preds = %.thread289.i, %.lr.ph.i63
  %indvar.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvar.next.i, %.thread289.i ] ; 5 uses
  %i.hs = shl i64 %indvar.i, 4                    ; 3 uses
  %i.ht = add i64 %i.hs, %i.hm                    ; 2 uses
  %scevgep340.i = getelementptr i8, ptr %1, i64 %i.ht
  %i.hu = add i64 %indvar.i, %i.hg
  %i.hv = shl i64 %i.hu, 2                        ; 8 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !11, !alias.scope !621, !noalias !625 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !626
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hv
  %i.ia = or disjoint i64 %i.hv, 1                ; 2 uses
  %i.ib = or disjoint i64 %i.hv, 2                ; 3 uses
  %i.ic = load <4 x float>, ptr %i.hz, align 16, !tbaa !11, !alias.scope !616, !noalias !627 ; 7 uses
  store <4 x float> %i.ic, ptr %i.a, align 16, !tbaa !11, !noalias !626
  %i.id = fcmp reassoc nsz arcp contract afn ogt float %i.hy, 0.000000e+00 ; 2 uses
  br i1 %i.id, label %.preheader293.i, label %bb.q

.preheader293.i:                                  ; preds = %bb.p
  %i.ie = trunc i64 %indvar.i to i32              ; 2 uses
  %i.if = sub i32 %i.ie, %i.al
  %smax.i = call i32 @llvm.smax.i32(i32 %i.if, i32 0)
  %i.ig = zext nneg i32 %smax.i to i64            ; 3 uses
  %i.ih = add i64 %i.he, %i.ig
  %i.ii = shl i64 %i.ih, 4
  %scevgep.i = getelementptr i8, ptr %6, i64 %i.ii
  %scevgep325.i = getelementptr i8, ptr %i.hp, i64 %i.hs
  %i.ij = add i32 %i.al, %i.ie
  %i.ik = sext i32 %i.ij to i64
  %smin335.i = call i64 @llvm.smin.i64(i64 %i.ik, i64 %i.q) ; 3 uses
  %i.il = add i64 %smin335.i, %i.he
  %i.im = shl i64 %i.il, 4
  %scevgep326.i = getelementptr i8, ptr %6, i64 %i.im
  %i.in = add i64 %i.hg, %i.ig
  %i.io = shl i64 %i.in, 4
  %scevgep328.i = getelementptr i8, ptr %6, i64 %i.io
  %scevgep329.i = getelementptr i8, ptr %6, i64 %i.ht
  %i.ip = add i64 %smin335.i, %i.hg
  %i.iq = shl i64 %i.ip, 4
  %scevgep331.i = getelementptr i8, ptr %6, i64 %i.iq
  %i.ir = add i64 %i.hj, %i.ig
  %i.is = shl i64 %i.ir, 4
  %scevgep333.i = getelementptr i8, ptr %6, i64 %i.is
  %scevgep334.i = getelementptr i8, ptr %i.hq, i64 %i.hs
  %i.it = add i64 %smin335.i, %i.hj
  %i.iu = shl i64 %i.it, 4
  %scevgep336.i = getelementptr i8, ptr %6, i64 %i.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep325.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep326.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep328.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep329.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep331.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep333.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep334.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep336.i, i64 16, i1 false), !tbaa !11, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !626
  %i.iv = load <4 x float>, ptr %i.b, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iw = load <4 x float>, ptr %i.u, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.ix = load <4 x float>, ptr %i.v, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iy = load <4 x float>, ptr %i.w, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.iz = load <4 x float>, ptr %i.x, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.ja = load <4 x float>, ptr %i.y, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.jb = load <4 x float>, ptr %i.z, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.jc = load <4 x float>, ptr %i.aa, align 16, !tbaa !11, !noalias !626 ; 3 uses
  %i.jd = load <4 x float>, ptr %i.ab, align 16, !tbaa !11, !noalias !626 ; 2 uses
  %i.je = shufflevector <4 x float> %i.iw, <4 x float> %i.iv, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jf = shufflevector <4 x float> %i.ix, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jg = shufflevector <8 x float> %i.je, <8 x float> %i.jf, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jh = shufflevector <4 x float> %i.iy, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ji = shufflevector <8 x float> %i.jg, <8 x float> %i.jh, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x float> %i.iz, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jk = shufflevector <8 x float> %i.ji, <8 x float> %i.jj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.jl = shufflevector <4 x float> %i.ja, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <8 x float> %i.jk, <8 x float> %i.jl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.jn = shufflevector <4 x float> %i.jb, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jo = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.jp = shufflevector <4 x float> %i.jc, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  %i.jr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.jq)
  %i.js = insertelement <4 x float> %i.iw, float %i.jr, i64 3
  %i.jt = insertelement <4 x float> %i.iv, float -0.000000e+00, i64 3
  %i.ju = fadd reassoc nsz arcp contract afn <4 x float> %i.js, %i.jt
  %i.jv = insertelement <4 x float> %i.ix, float -0.000000e+00, i64 3
  %i.jw = fadd reassoc nsz arcp contract afn <4 x float> %i.ju, %i.jv
  %i.jx = insertelement <4 x float> %i.iy, float -0.000000e+00, i64 3
  %i.jy = fadd reassoc nsz arcp contract afn <4 x float> %i.jw, %i.jx
  %i.jz = insertelement <4 x float> %i.iz, float -0.000000e+00, i64 3
  %i.ka = fadd reassoc nsz arcp contract afn <4 x float> %i.jy, %i.jz
  %i.kb = insertelement <4 x float> %i.ja, float -0.000000e+00, i64 3
  %i.kc = fadd reassoc nsz arcp contract afn <4 x float> %i.ka, %i.kb
  %i.kd = insertelement <4 x float> %i.jb, float -0.000000e+00, i64 3
  %i.ke = fadd reassoc nsz arcp contract afn <4 x float> %i.kc, %i.kd
  %i.kf = insertelement <4 x float> %i.jc, float -0.000000e+00, i64 3
  %i.kg = fadd reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kf
  %i.kh = fadd reassoc nsz arcp contract afn <4 x float> %i.kg, %i.jd
  %i.ki = fmul reassoc nsz arcp contract afn <4 x float> %i.kh, splat (float f0x3DE38E39) ; 14 uses
  %i.kj = extractelement <4 x float> %i.ki, i64 0
  store float %i.kj, ptr %i.c, align 16, !tbaa !11, !noalias !626
  %i.kk = extractelement <4 x float> %i.ki, i64 1 ; 2 uses
  store float %i.kk, ptr %i.ad, align 4, !tbaa !11, !noalias !626
  %i.kl = extractelement <4 x float> %i.ki, i64 2 ; 2 uses
  store float %i.kl, ptr %i.ae, align 8, !tbaa !11, !noalias !626
  %i.km = extractelement <4 x float> %i.ki, i64 3 ; 2 uses
  store float %i.km, ptr %i.af, align 4, !tbaa !11, !noalias !626
  %i.kn = fsub reassoc nsz arcp contract afn <4 x float> %i.iv, %i.ki ; 6 uses
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.kn, %i.kn
  %i.kp = fsub reassoc nsz arcp contract afn <4 x float> %i.iw, %i.ki ; 4 uses
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.kp
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, %i.ko
  %i.ks = fsub reassoc nsz arcp contract afn <4 x float> %i.ix, %i.ki ; 6 uses
  %i.kt = fmul reassoc nsz arcp contract afn <4 x float> %i.ks, %i.ks
  %i.ku = fadd reassoc nsz arcp contract afn <4 x float> %i.kr, %i.kt
  %i.kv = fsub reassoc nsz arcp contract afn <4 x float> %i.iy, %i.ki ; 6 uses
  %i.kw = fmul reassoc nsz arcp contract afn <4 x float> %i.kv, %i.kv
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.ku, %i.kw
  %i.ky = fsub reassoc nsz arcp contract afn <4 x float> %i.iz, %i.ki ; 6 uses
  %i.kz = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, %i.ky
  %i.la = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, %i.kz
  %i.lb = fsub reassoc nsz arcp contract afn <4 x float> %i.ja, %i.ki ; 6 uses
  %i.lc = fmul reassoc nsz arcp contract afn <4 x float> %i.lb, %i.lb
  %i.ld = fadd reassoc nsz arcp contract afn <4 x float> %i.la, %i.lc
  %i.le = fsub reassoc nsz arcp contract afn <4 x float> %i.jb, %i.ki ; 6 uses
  %i.lf = fmul reassoc nsz arcp contract afn <4 x float> %i.le, %i.le
  %i.lg = fadd reassoc nsz arcp contract afn <4 x float> %i.ld, %i.lf
  %i.lh = fsub reassoc nsz arcp contract afn <4 x float> %i.jc, %i.ki ; 6 uses
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %i.lh, %i.lh
  %i.lj = fadd reassoc nsz arcp contract afn <4 x float> %i.lg, %i.li
  %i.lk = fsub reassoc nsz arcp contract afn <4 x float> %i.jd, %i.ki ; 6 uses
  %i.ll = fmul reassoc nsz arcp contract afn <4 x float> %i.lk, %i.lk
  %i.lm = fadd reassoc nsz arcp contract afn <4 x float> %i.lj, %i.ll
  %i.ln = fmul reassoc nsz arcp contract afn <4 x float> %i.lm, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.ln, ptr %i.d, align 16, !tbaa !11, !noalias !626
  %i.lo = extractelement <4 x float> %i.ln, i64 0 ; 2 uses
  %i.lp = fcmp reassoc nsz arcp contract afn ogt float %i.lo, 0.000000e+00 ; 2 uses
  %.1245.i = select i1 %i.lp, i64 0, i64 3
  %.1.i66 = select nsz i1 %i.lp, float %i.lo, float 0.000000e+00 ; 2 uses
  %i.lq = extractelement <4 x float> %i.ln, i64 1 ; 2 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt float %i.lq, %.1.i66 ; 2 uses
  %.1245.1.i = select i1 %i.lr, i64 1, i64 %.1245.i
  %.1.1.i = select nsz i1 %i.lr, float %i.lq, float %.1.i66
  %i.ls = extractelement <4 x float> %i.ln, i64 2
  %i.lt = fcmp reassoc nsz arcp contract afn ogt float %i.ls, %.1.1.i
  %.1245.2.i = select i1 %i.lt, i64 2, i64 %.1245.1.i ; 6 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.1245.2.i
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !11, !noalias !626 ; 6 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1245.2.i
  %i.lx = call <13 x float> @llvm.masked.load.v13f32.p0(ptr nonnull align 4 %i.lw, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !11, !noalias !626
  %i.ly = shufflevector <13 x float> %i.lx, <13 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.lz = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mb = fsub reassoc nsz arcp contract afn <4 x float> %i.ly, %i.ma
  %i.mc = fmul reassoc nsz arcp contract afn <4 x float> %i.mb, splat (float f0x3DE38E39) ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.mc, %i.kn
  %i.md = shufflevector <4 x float> %i.kn, <4 x float> %i.kp, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> %i.ks, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> %i.kv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mc, %i.mf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.1245.2.i
  %i.mi = call <13 x float> @llvm.masked.load.v13f32.p0(ptr nonnull align 4 %i.mh, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <13 x float> poison), !tbaa !11, !noalias !626
  %i.mj = shufflevector <13 x float> %i.mi, <13 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.mk = fsub reassoc nsz arcp contract afn <4 x float> %i.mj, %i.ma
  %i.ml = fmul reassoc nsz arcp contract afn <4 x float> %i.mk, splat (float f0x3DE38E39) ; 5 uses
  %i.mm = shufflevector <4 x float> %i.ky, <4 x float> %i.lb, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> %i.le, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.lh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %i.ml, %i.mo
  %i.mq = shufflevector <4 x float> %i.mc, <4 x float> %i.ml, <4 x i32> <i32 2, i32 3, i32 4, i32 5> ; 3 uses
  %i.mr = shufflevector <4 x float> %i.ks, <4 x float> %i.kv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.ky, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mu = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mt
  %i.mv = shufflevector <4 x float> %i.ks, <4 x float> %i.kv, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.ky, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.my = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mx
  %i.mz = shufflevector <4 x float> %i.ks, <4 x float> %i.kv, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> %i.ky, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nc = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.nb
  %shift = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop42 = fmul reassoc nsz arcp contract afn <4 x float> %shift, %i.le
  %shift44 = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop45 = fmul reassoc nsz arcp contract afn <4 x float> %shift44, %i.lh
  %.reass.7.i = extractelement <4 x float> %foldExtExtBinop45, i64 0
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.1245.2.i
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !11, !noalias !626
  %i.nf = fsub reassoc nsz arcp contract afn float %i.ne, %i.lv ; 2 uses
  %i.ng = extractelement <4 x float> %i.lk, i64 0
  %i.nh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.mu)
  %foldExtExtBinop47 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop, %foldExtExtBinop42
  %i.ni = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.my)
  %i.nj = shufflevector <4 x float> %i.ml, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.nk = shufflevector <4 x float> %i.le, <4 x float> %i.lh, <2 x i32> <i32 1, i32 5>
  %i.nl = fmul reassoc nsz arcp contract afn <2 x float> %i.nj, %i.nk
  %i.nm = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.nn = shufflevector <4 x float> %i.kn, <4 x float> %i.lk, <2 x i32> <i32 1, i32 5>
  %i.no = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.nc)
  %i.np = shufflevector <4 x float> %i.le, <4 x float> %i.lh, <2 x i32> <i32 2, i32 6>
  %i.nq = fmul reassoc nsz arcp contract afn <2 x float> %i.nj, %i.np
  %i.nr = shufflevector <4 x float> %i.kn, <4 x float> %i.lk, <2 x i32> <i32 2, i32 6>
  %rdx.op = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mp
  %13 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %rdx.op)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hv
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !11, !alias.scope !621, !noalias !625
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ia
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !11, !alias.scope !621, !noalias !625
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ib
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !11, !alias.scope !621, !noalias !625
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.1245.2.i
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !11, !noalias !626
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1245.2.i ; 4 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !11, !noalias !626
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.ob, %i.lv
  %i.oc = extractelement <4 x float> %i.ic, i64 0
  %foldExtExtBinop49.a = fsub reassoc nsz arcp contract afn <4 x float> %i.ki, %i.ic
  %i.od = extractelement <4 x float> %foldExtExtBinop49.a, i64 0
  %i.oe = extractelement <4 x float> %i.ic, i64 1 ; 2 uses
  %i.of = fsub reassoc nsz arcp contract afn float %i.kk, %i.oe
  %i.og = extractelement <4 x float> %i.ic, i64 2 ; 2 uses
  %i.oh = fsub reassoc nsz arcp contract afn float %i.kl, %i.og
  %factor.op.fmul.8.i = fmul reassoc nsz arcp contract afn float %i.nf, f0x3DE38E39
  %14 = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %i.nf, i64 1
  %16 = fmul reassoc nsz arcp contract afn <2 x float> %15, <float 1.000000e+00, float f0x3DE38E39> ; 2 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.reass.8.i = fmul reassoc nsz arcp contract afn float %factor.op.fmul.8.i, %i.ng
  %op.rdx37 = fadd reassoc nsz arcp contract afn float %.reass.7.i, %.reass.8.i
  %18 = shufflevector <2 x float> %i.nm, <2 x float> %16, <2 x i32> <i32 0, i32 3> ; 2 uses
  %19 = fmul reassoc nsz arcp contract afn <2 x float> %18, %i.nn
  %20 = fadd reassoc nsz arcp contract afn <2 x float> %i.nl, %19 ; 2 uses
  %21 = fmul reassoc nsz arcp contract afn <2 x float> %18, %i.nr
  %22 = fadd reassoc nsz arcp contract afn <2 x float> %i.nq, %21 ; 2 uses
  %i.oi = shufflevector <4 x float> %i.kp, <4 x float> %i.lk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.oj = fmul reassoc nsz arcp contract afn <4 x float> %17, %i.oi
  %i.ok = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.nh, i64 0
  %i.ol = insertelement <4 x float> %i.ok, float %i.ni, i64 1
  %i.om = insertelement <4 x float> %i.ol, float %i.no, i64 2
  %i.on = fadd reassoc nsz arcp contract afn <4 x float> %i.oj, %i.om
  %i.oo = shufflevector <2 x float> %20, <2 x float> %22, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.op = insertelement <4 x float> %i.oo, float -0.000000e+00, i64 3
  %i.oq = shufflevector <4 x float> %foldExtExtBinop47, <4 x float> %i.op, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.or = fadd reassoc nsz arcp contract afn <4 x float> %i.on, %i.oq
  %i.os = shufflevector <2 x float> %20, <2 x float> %22, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.ot = insertelement <4 x float> %i.os, float %op.rdx37, i64 0
  %i.ou = insertelement <4 x float> %i.ot, float %13, i64 3
  %i.ov = fadd reassoc nsz arcp contract afn <4 x float> %i.ou, %i.or
  %i.ow = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oy = fdiv reassoc nsz arcp contract afn <4 x float> %i.ov, %i.ox
  %i.oz = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.oy, <4 x float> zeroinitializer) ; 4 uses
  %i.pa = extractelement <4 x float> %i.oz, i64 0
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.pa
  %i.pb = fadd reassoc nsz arcp contract afn float %i.od, %reass.mul.i
  %i.pc = fmul reassoc nsz arcp contract afn float %i.pb, %i.nt
  %i.pd = fmul reassoc nsz arcp contract afn float %i.pc, %i.gi
  %i.pe = extractelement <4 x float> %i.ic, i64 3 ; 2 uses
  %i.pf = fsub reassoc nsz arcp contract afn float %i.km, %i.pe
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pd, %i.oc ; 2 uses
  store float %i.pg, ptr %i.a, align 16, !tbaa !11, !noalias !626
  %i.ph = load float, ptr %i.oa, align 4, !tbaa !11, !noalias !626
  %reass.add.1.i = fsub reassoc nsz arcp contract afn float %i.ph, %i.lv
  %i.pi = extractelement <4 x float> %i.oz, i64 1
  %reass.mul.1.i = fmul reassoc nsz arcp contract afn float %reass.add.1.i, %i.pi
  %i.pj = fadd reassoc nsz arcp contract afn float %i.of, %reass.mul.1.i
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pj, %i.nv
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.gj
  %i.pm = fadd reassoc nsz arcp contract afn float %i.pl, %i.oe ; 2 uses
  store float %i.pm, ptr %i.r, align 4, !tbaa !11, !noalias !626
  %i.pn = load float, ptr %i.oa, align 4, !tbaa !11, !noalias !626
  %reass.add.2.i = fsub reassoc nsz arcp contract afn float %i.pn, %i.lv
  %i.po = extractelement <4 x float> %i.oz, i64 2
  %reass.mul.2.i = fmul reassoc nsz arcp contract afn float %reass.add.2.i, %i.po
  %i.pp = fadd reassoc nsz arcp contract afn float %i.oh, %reass.mul.2.i
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pp, %i.nx
  %i.pr = fmul reassoc nsz arcp contract afn float %i.pq, %i.gk
  %i.ps = fadd reassoc nsz arcp contract afn float %i.pr, %i.og ; 2 uses
  store float %i.ps, ptr %i.s, align 8, !tbaa !11, !noalias !626
  %i.pt = load float, ptr %i.oa, align 4, !tbaa !11, !noalias !626
  %reass.add.3.i = fsub reassoc nsz arcp contract afn float %i.pt, %i.lv
  %i.pu = extractelement <4 x float> %i.oz, i64 3
  %reass.mul.3.i = fmul reassoc nsz arcp contract afn float %reass.add.3.i, %i.pu
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pf, %reass.mul.3.i
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pv, %i.hy
  %i.px = fmul reassoc nsz arcp contract afn float %i.pw, %i.gl
  %i.py = fadd reassoc nsz arcp contract afn float %i.px, %i.pe ; 2 uses
  store float %i.py, ptr %i.t, align 4, !tbaa !11, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.pz = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.qa = insertelement <4 x float> %i.pz, float %i.pm, i64 1
  %i.qb = insertelement <4 x float> %i.qa, float %i.ps, i64 2
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 3
  br label %bb.q

bb.q:                                             ; preds = %.preheader293.i, %bb.p
  %i.qd = phi <4 x float> [ %i.qc, %.preheader293.i ], [ %i.ic, %bb.p ]
  br i1 %.not146.not, label %.preheader296.i, label %.preheader295.i

.preheader296.i:                                  ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep340.i, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !11, !noalias !628
  br label %.loopexit.i

.preheader295.i:                                  ; preds = %bb.q
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hv ; 2 uses
  %i.qf = load <4 x float>, ptr %i.qe, align 16, !tbaa !11, !alias.scope !623, !noalias !628
  %i.qg = fadd reassoc nsz arcp contract afn <4 x float> %i.qf, %i.qd
  store <4 x float> %i.qg, ptr %i.qe, align 16, !tbaa !11, !alias.scope !623, !noalias !628
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader295.i, %.preheader296.i
  br i1 %.not81, label %.preheader294.preheader.i, label %.thread289.i

.preheader294.preheader.i:                        ; preds = %.loopexit.i
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hv ; 4 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.hv
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.qk = load <2 x float>, ptr %i.qh, align 16, !tbaa !11, !alias.scope !623, !noalias !628
  %i.ql = load <2 x float>, ptr %i.qi, align 16, !tbaa !11, !alias.scope !619, !noalias !629
  %i.qm = fadd reassoc nsz arcp contract afn <2 x float> %i.ql, %i.qk
  %i.qn = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qm, <2 x float> zeroinitializer) ; 5 uses
  %i.qo = extractelement <2 x float> %i.qn, i64 1
  store float %i.qo, ptr %i.qj, align 4, !tbaa !11, !alias.scope !623, !noalias !628
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ib ; 2 uses
  %i.qq = load float, ptr %i.qp, align 8, !tbaa !11, !alias.scope !623, !noalias !628
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ib
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !11, !alias.scope !619, !noalias !629
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qs, %i.qq
  %i.qu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qt, float 0.000000e+00) ; 3 uses
  store float %i.qu, ptr %i.qp, align 8, !tbaa !11, !alias.scope !623, !noalias !628
  %or.cond3.i = and i1 %i.ac, %i.id
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader294.preheader.i
  %i.qv = fmul reassoc nsz arcp contract afn <2 x float> %i.qn, %i.ak ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qy = fmul reassoc nsz arcp contract afn float %i.qu, %10 ; 3 uses
  %i.qz = add nuw nsw i64 %indvar.i, 1            ; 2 uses
  %i.ra = mul i64 %i.qz, 7109453100751455733      ; 2 uses
  %i.rb = lshr i64 %i.ra, 28
  %i.rc = xor i64 %i.rb, %i.ra
  %i.rd = mul i64 %i.rc, -3808689974395783757
  %i.re = lshr i64 %i.rd, 32
  %i.rf = trunc nuw i64 %i.re to i32              ; 2 uses
  %i.rg = mul nsw i64 %i.qz, %i.ho                ; 2 uses
  %i.rh = lshr i64 %i.rg, 33
  %i.ri = xor i64 %i.rh, %i.rg
  %i.rj = mul i64 %i.ri, 7109453100751455733      ; 2 uses
  %i.rk = lshr i64 %i.rj, 28
  %i.rl = xor i64 %i.rk, %i.rj
  %i.rm = mul i64 %i.rl, -3808689974395783757
  %i.rn = lshr i64 %i.rm, 32
  %i.ro = trunc nuw i64 %i.rn to i32              ; 3 uses
  %i.rp = shl i32 %i.ro, 9
  %i.rq = xor i32 %i.rf, 635086878                ; 2 uses
  %i.rr = xor i32 %i.ro, -1171427716              ; 3 uses
  %i.rs = xor i32 %i.rq, %i.ro                    ; 3 uses
  %i.rt = xor i32 %i.rr, %i.rf                    ; 2 uses
  %i.ru = xor i32 %i.rp, %i.rq
  %i.rv = call noundef i32 @llvm.fshl.i32(i32 %i.rr, i32 %i.rr, i32 11)
  %i.rw = shl i32 %i.rs, 9
  %i.rx = xor i32 %i.ru, %i.rt                    ; 2 uses
  %i.ry = xor i32 %i.rv, %i.rs                    ; 3 uses
  %i.rz = xor i32 %i.rx, %i.rs                    ; 3 uses
  %i.sa = xor i32 %i.ry, %i.rt                    ; 2 uses
  %i.sb = xor i32 %i.rx, %i.rw
  %i.sc = call noundef i32 @llvm.fshl.i32(i32 %i.ry, i32 %i.ry, i32 11)
  %i.sd = shl i32 %i.rz, 9
  %i.se = xor i32 %i.sb, %i.sa                    ; 2 uses
  %i.sf = xor i32 %i.rz, %i.sc                    ; 3 uses
  %i.sg = xor i32 %i.se, %i.rz                    ; 3 uses
  %i.sh = xor i32 %i.sf, %i.sa                    ; 2 uses
  %i.si = xor i32 %i.se, %i.sd
  %i.sj = call noundef i32 @llvm.fshl.i32(i32 %i.sf, i32 %i.sf, i32 11)
  %i.sk = shl i32 %i.sg, 9
  %i.sl = xor i32 %i.si, %i.sh                    ; 2 uses
  %i.sm = xor i32 %i.sg, %i.sj                    ; 3 uses
  %i.sn = xor i32 %i.sl, %i.sg                    ; 3 uses
  %i.so = xor i32 %i.sl, %i.sk
  %i.sp = shl i32 %i.sn, 9
  %i.sq = xor i32 %i.sm, %i.sh                    ; 3 uses
  %i.sr = call noundef i32 @llvm.fshl.i32(i32 %i.sm, i32 %i.sm, i32 11) ; 2 uses
  %i.ss = xor i32 %i.so, %i.sq                    ; 2 uses
  %i.st = xor i32 %i.sn, %i.sr                    ; 3 uses
  %i.su = xor i32 %i.ss, %i.sn                    ; 3 uses
  %i.sv = xor i32 %i.st, %i.sq                    ; 3 uses
  %i.sw = xor i32 %i.ss, %i.sp
  %i.sx = call noundef i32 @llvm.fshl.i32(i32 %i.st, i32 %i.st, i32 11) ; 2 uses
  %i.sy = add i32 %i.sx, %i.sv
  %i.sz = shl i32 %i.su, 9
  %i.ta = xor i32 %i.sw, %i.sv                    ; 2 uses
  %i.tb = xor i32 %i.su, %i.sx                    ; 3 uses
  %i.tc = xor i32 %i.ta, %i.su                    ; 3 uses
  %i.td = xor i32 %i.tb, %i.sv                    ; 3 uses
  %i.te = xor i32 %i.ta, %i.sz
  %i.tf = call noundef i32 @llvm.fshl.i32(i32 %i.tb, i32 %i.tb, i32 11) ; 2 uses
  %i.tg = lshr i32 %i.sy, 8
  %i.th = uitofp reassoc nsz arcp contract afn nneg i32 %i.tg to float
  %i.ti = shl i32 %i.tc, 9
  %i.tj = xor i32 %i.te, %i.td                    ; 2 uses
  %i.tk = xor i32 %i.tc, %i.tf                    ; 3 uses
  %i.tl = xor i32 %i.tj, %i.tc                    ; 2 uses
  %i.tm = xor i32 %i.tk, %i.td                    ; 3 uses
  %i.tn = xor i32 %i.tj, %i.ti
  %i.to = call noundef i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 11) ; 2 uses
  %i.tp = add i32 %i.to, %i.tm
  %i.tq = xor i32 %i.tn, %i.tm
  %i.tr = xor i32 %i.tl, %i.to                    ; 3 uses
  %i.ts = xor i32 %i.tq, %i.tl
  %i.tt = xor i32 %i.tr, %i.tm                    ; 2 uses
  %i.tu = call noundef i32 @llvm.fshl.i32(i32 %i.tr, i32 %i.tr, i32 11) ; 2 uses
  %i.tv = lshr i32 %i.tp, 8
  %i.tw = uitofp reassoc nsz arcp contract afn nneg i32 %i.tv to float
  %i.tx = xor i32 %i.ts, %i.tu                    ; 3 uses
  %i.ty = xor i32 %i.tx, %i.tt
  %i.tz = call noundef i32 @llvm.fshl.i32(i32 %i.tx, i32 %i.tx, i32 11)
  %i.ua = add i32 %i.tz, %i.ty
  %i.ub = lshr i32 %i.ua, 8
  %i.uc = uitofp reassoc nsz arcp contract afn nneg i32 %i.ub to float
  %i.ud = fmul reassoc nnan nsz arcp contract afn float %i.th, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ud)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.ue = fmul reassoc nnan nsz arcp contract afn float %i.tw, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ue)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.uf = fmul reassoc nnan nsz arcp contract afn float %i.uc, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.uf)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.ug = add i32 %i.tu, %i.tt
  %i.uh = lshr i32 %i.ug, 8
  %i.ui = uitofp reassoc nsz arcp contract afn nneg i32 %i.uh to float
  %i.uj = fmul reassoc nnan nsz arcp contract afn float %i.ui, f0x33800000
  %i.uk = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.uj, float f0x00800000)
  %i.ul = call fast float @llvm.log.f32(float %i.uk)
  %i.um = fmul reassoc nnan nsz arcp contract afn float %i.ul, -2.000000e+00
  %i.un = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.um)
  %i.uo = add i32 %i.tf, %i.td
  %i.up = add i32 %i.sr, %i.sq
  %i.uq = insertelement <2 x i32> poison, i32 %i.up, i64 0
  %i.ur = insertelement <2 x i32> %i.uq, i32 %i.uo, i64 1
  %i.us = lshr <2 x i32> %i.ur, splat (i32 8)
  %i.ut = uitofp nneg <2 x i32> %i.us to <2 x float>
  %i.uu = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ut, splat (float f0x33800000)
  %i.uv = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.uu, <2 x float> splat (float f0x00800000))
end_hunk_0
