Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  store <4 x float> %i.wt, ptr %i.vm, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.wu = shufflevector <4 x float> %i.fr, <4 x float> %i.vt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> %i.vv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> %i.wa, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.ww, ptr %i.vn, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.wx = shufflevector <4 x float> %i.fr, <4 x float> %i.vt, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.wy = shufflevector <4 x float> %i.wx, <4 x float> %i.vv, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.wz = shufflevector <4 x float> %i.wy, <4 x float> %i.wa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.wz, ptr %i.vo, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xa = getelementptr inbounds nuw i8, ptr %next.gep176, i64 176
  %i.xb = getelementptr i8, ptr %i.de, i64 432
  %i.xc = getelementptr i8, ptr %i.df, i64 688
  %i.xd = getelementptr i8, ptr %i.dg, i64 944
  %i.xe = extractelement <4 x float> %i.wc, i64 0
  store float %i.xe, ptr %i.xa, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xf = getelementptr inbounds nuw i8, ptr %next.gep176, i64 180
  %i.xg = extractelement <4 x float> %i.wh, i64 0
  store float %i.xg, ptr %i.xf, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xh = getelementptr inbounds nuw i8, ptr %next.gep176, i64 184
  %i.xi = extractelement <4 x float> %i.wj, i64 0
  store float %i.xi, ptr %i.xh, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xj = getelementptr inbounds nuw i8, ptr %next.gep176, i64 188
  %i.xk = extractelement <4 x float> %i.kb, i64 0
  store float %i.xk, ptr %i.xj, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xl = shufflevector <4 x float> %i.wc, <4 x float> %i.wh, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.xm = shufflevector <4 x float> %i.xl, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> %i.kb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.xn, ptr %i.xb, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xo = shufflevector <4 x float> %i.wc, <4 x float> %i.wh, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.xp = shufflevector <4 x float> %i.xo, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> %i.kb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.xq, ptr %i.xc, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xr = shufflevector <4 x float> %i.wc, <4 x float> %i.wh, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.xs = shufflevector <4 x float> %i.xr, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> %i.kb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.xt, ptr %i.xd, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.xu = getelementptr inbounds nuw i8, ptr %next.gep176, i64 192
  %i.xv = getelementptr i8, ptr %i.de, i64 448
  %i.xw = getelementptr i8, ptr %i.df, i64 704
  %i.xx = getelementptr i8, ptr %i.dg, i64 960
  %i.xy = fmul fast <4 x float> %i.ft, splat (float f0xBE638E39) ; 2 uses
  %i.xz = fmul fast <4 x float> %i.hy, splat (float f0x3E638E39) ; 2 uses
  %i.ya = fmul fast <4 x float> %i.kd, splat (float f0xBE638E39) ; 2 uses
  %i.yb = fsub fast <4 x float> %i.xy, %i.xz
  %i.yc = fadd fast <4 x float> %i.yb, %i.ya      ; 4 uses
  %i.yd = fadd fast <4 x float> %i.xz, %i.xy
  %i.ye = fadd fast <4 x float> %i.yd, %i.ya      ; 4 uses
  %i.yf = fmul fast <4 x float> %i.ft, splat (float f0x3C360B61) ; 2 uses
  %i.yg = fmul fast <4 x float> %i.hy, splat (float f0x3CB60B61) ; 2 uses
  %i.yh = fadd fast <4 x float> %i.yg, %i.yf
  %i.yi = fmul fast <4 x float> %i.kd, splat (float f0x3D360B61) ; 2 uses
  %i.yj = fadd fast <4 x float> %i.yh, %i.yi      ; 4 uses
  %i.yk = fsub fast <4 x float> %i.yf, %i.yg
  %i.yl = fadd fast <4 x float> %i.yk, %i.yi      ; 4 uses
  %i.ym = fmul fast <4 x float> %i.ft, splat (float f0x3CB60B61) ; 2 uses
  %i.yn = fmul fast <4 x float> %i.hy, splat (float f0x3C360B61) ; 2 uses
  %i.yo = fadd fast <4 x float> %i.yn, %i.ym
  %i.yp = fmul fast <4 x float> %i.kd, splat (float f0x3BB60B61) ; 2 uses
  %i.yq = fadd fast <4 x float> %i.yo, %i.yp      ; 4 uses
  %i.yr = fsub fast <4 x float> %i.ym, %i.yn
  %i.ys = fadd fast <4 x float> %i.yr, %i.yp      ; 4 uses
  %i.yt = extractelement <4 x float> %i.ft, i64 0
  store float %i.yt, ptr %i.xu, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.yu = getelementptr inbounds nuw i8, ptr %next.gep176, i64 196
  %i.yv = extractelement <4 x float> %i.yc, i64 0
  store float %i.yv, ptr %i.yu, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.yw = getelementptr inbounds nuw i8, ptr %next.gep176, i64 200
  %i.yx = extractelement <4 x float> %i.ye, i64 0
  store float %i.yx, ptr %i.yw, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.yy = getelementptr inbounds nuw i8, ptr %next.gep176, i64 204
  %i.yz = extractelement <4 x float> %i.yj, i64 0
  store float %i.yz, ptr %i.yy, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.za = shufflevector <4 x float> %i.ft, <4 x float> %i.yc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> %i.ye, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zc = shufflevector <4 x float> %i.zb, <4 x float> %i.yj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.zc, ptr %i.xv, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zd = shufflevector <4 x float> %i.ft, <4 x float> %i.yc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ze = shufflevector <4 x float> %i.zd, <4 x float> %i.ye, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> %i.yj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.zf, ptr %i.xw, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zg = shufflevector <4 x float> %i.ft, <4 x float> %i.yc, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.zh = shufflevector <4 x float> %i.zg, <4 x float> %i.ye, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> %i.yj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.zi, ptr %i.xx, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zj = getelementptr inbounds nuw i8, ptr %next.gep176, i64 208
  %i.zk = getelementptr i8, ptr %i.de, i64 464
  %i.zl = getelementptr i8, ptr %i.df, i64 720
  %i.zm = getelementptr i8, ptr %i.dg, i64 976
  %i.zn = extractelement <4 x float> %i.yl, i64 0
  store float %i.zn, ptr %i.zj, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zo = getelementptr inbounds nuw i8, ptr %next.gep176, i64 212
  %i.zp = extractelement <4 x float> %i.yq, i64 0
  store float %i.zp, ptr %i.zo, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zq = getelementptr inbounds nuw i8, ptr %next.gep176, i64 216
  %i.zr = extractelement <4 x float> %i.ys, i64 0
  store float %i.zr, ptr %i.zq, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zs = getelementptr inbounds nuw i8, ptr %next.gep176, i64 220
  %i.zt = extractelement <4 x float> %i.kd, i64 0
  store float %i.zt, ptr %i.zs, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zu = shufflevector <4 x float> %i.yl, <4 x float> %i.yq, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.zv = shufflevector <4 x float> %i.zu, <4 x float> %i.ys, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zw = shufflevector <4 x float> %i.zv, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.zw, ptr %i.zk, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.zx = shufflevector <4 x float> %i.yl, <4 x float> %i.yq, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> %i.ys, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.zz = shufflevector <4 x float> %i.zy, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.zz, ptr %i.zl, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.aaa = shufflevector <4 x float> %i.yl, <4 x float> %i.yq, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.aab = shufflevector <4 x float> %i.aaa, <4 x float> %i.ys, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.aac = shufflevector <4 x float> %i.aab, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.aac, ptr %i.zm, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.aad = getelementptr inbounds nuw i8, ptr %next.gep176, i64 224
  %i.aae = getelementptr i8, ptr %i.de, i64 480
  %i.aaf = getelementptr i8, ptr %i.df, i64 736
  %i.aag = getelementptr i8, ptr %i.dg, i64 992
  %i.aah = fmul fast <4 x float> %i.hd, splat (float f0x3E638E39) ; 2 uses
  %i.aai = fsub fast <4 x float> %i.fb, %i.aah
  %i.aaj = fadd fast <4 x float> %i.aai, %i.jl    ; 4 uses
  %i.aak = fadd fast <4 x float> %i.aah, %i.fb
  %i.aal = fadd fast <4 x float> %i.aak, %i.jl    ; 4 uses
  %i.aam = fmul fast <4 x float> %i.ey, splat (float f0x3C360B61) ; 2 uses
  %i.aan = fmul fast <4 x float> %i.hd, splat (float f0x3CB60B61) ; 2 uses
  %i.aao = fadd fast <4 x float> %i.aan, %i.aam
  %i.aap = fadd fast <4 x float> %i.aao, %i.jt    ; 4 uses
  %i.aaq = fsub fast <4 x float> %i.aam, %i.aan
  %i.aar = fadd fast <4 x float> %i.aaq, %i.jt    ; 4 uses
  %i.aas = fmul fast <4 x float> %i.ey, splat (float f0x3CB60B61) ; 2 uses
  %i.aat = fmul fast <4 x float> %i.hd, splat (float f0x3C360B61) ; 2 uses
  %i.aau = fadd fast <4 x float> %i.aat, %i.aas
  %i.aav = fadd fast <4 x float> %i.aau, %i.ka    ; 4 uses
  %i.aaw = fsub fast <4 x float> %i.aas, %i.aat
  %i.aax = fadd fast <4 x float> %i.aaw, %i.ka    ; 4 uses
  store float %i.er, ptr %i.aad, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  store float %i.es, ptr %i.aae, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  store float %i.et, ptr %i.aaf, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  store float %i.eu, ptr %i.aag, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.aay = getelementptr inbounds nuw i8, ptr %next.gep176, i64 228
  %i.aaz = getelementptr i8, ptr %i.de, i64 484
  %i.aba = getelementptr i8, ptr %i.df, i64 740
  %i.abb = getelementptr i8, ptr %i.dg, i64 996
  %i.abc = extractelement <4 x float> %i.aaj, i64 0
  store float %i.abc, ptr %i.aay, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abd = getelementptr inbounds nuw i8, ptr %next.gep176, i64 232
  %i.abe = extractelement <4 x float> %i.aal, i64 0
  store float %i.abe, ptr %i.abd, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abf = getelementptr inbounds nuw i8, ptr %next.gep176, i64 236
  %i.abg = extractelement <4 x float> %i.aap, i64 0
  store float %i.abg, ptr %i.abf, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abh = getelementptr inbounds nuw i8, ptr %next.gep176, i64 240
  %i.abi = extractelement <4 x float> %i.aar, i64 0
  store float %i.abi, ptr %i.abh, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abj = shufflevector <4 x float> %i.aaj, <4 x float> %i.aal, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abl = shufflevector <4 x float> %i.abk, <4 x float> %i.aar, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.abl, ptr %i.aaz, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abm = shufflevector <4 x float> %i.aaj, <4 x float> %i.aal, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.abn = shufflevector <4 x float> %i.abm, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> %i.aar, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.abo, ptr %i.aba, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abp = shufflevector <4 x float> %i.aaj, <4 x float> %i.aal, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.abq = shufflevector <4 x float> %i.abp, <4 x float> %i.aap, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.abr = shufflevector <4 x float> %i.abq, <4 x float> %i.aar, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.abr, ptr %i.abb, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abs = getelementptr inbounds nuw i8, ptr %next.gep176, i64 244
  %i.abt = getelementptr i8, ptr %i.de, i64 500
  %i.abu = getelementptr i8, ptr %i.df, i64 756
  %i.abv = getelementptr i8, ptr %i.dg, i64 1012
  %i.abw = extractelement <4 x float> %i.aav, i64 0
  store float %i.abw, ptr %i.abs, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abx = getelementptr inbounds nuw i8, ptr %next.gep176, i64 248
  %i.aby = extractelement <4 x float> %i.aax, i64 0
  store float %i.aby, ptr %i.abx, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.abz = shufflevector <4 x float> %i.aav, <4 x float> %i.aax, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abz, ptr %i.abt, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.aca = shufflevector <4 x float> %i.aav, <4 x float> %i.aax, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aca, ptr %i.abu, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.acb = shufflevector <4 x float> %i.aav, <4 x float> %i.aax, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.acb, ptr %i.abv, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %i.acc = getelementptr inbounds nuw i8, ptr %next.gep176, i64 252
  %i.acd = getelementptr i8, ptr %i.de, i64 508
  %i.ace = getelementptr i8, ptr %i.df, i64 764
  %i.acf = getelementptr i8, ptr %i.dg, i64 1020
  store float %i.jb, ptr %i.acc, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  store float %i.jc, ptr %i.acd, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  store float %i.jd, ptr %i.ace, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  store float %i.je, ptr %i.acf, align 4, !tbaa !39, !alias.scope !644, !noalias !641
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.acg = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.acg, label %middle.block181, label %vector.body174, !llvm.loop !646

middle.block181:                                  ; preds = %vector.body174
  br i1 %cmp.n182, label %._crit_edge.i, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.memcheck156, %.preheader12.i, %middle.block181
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck156 ], [ 0, %.preheader12.i ], [ %n.vec173, %middle.block181 ]
  %.118.i.ph = phi ptr [ %.020.i, %vector.memcheck156 ], [ %.020.i, %.preheader12.i ], [ %i.cz, %middle.block181 ]
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 2 uses
  %.118.i = phi ptr [ %i.afz, %.preheader.preheader.i ], [ %.118.i.ph, %.preheader.preheader.i.preheader ] ; 45 uses
  %i.ach = add nsw i64 %indvars.iv.i, %indvars.iv
  %.idx.i = mul nsw i64 %i.ach, 36
  %i.aci = getelementptr inbounds i8, ptr %i.ct, i64 %.idx.i ; 9 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 12
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 20
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aci, i64 24
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aci, i64 28
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !39 ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aci, i64 32
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !39 ; 2 uses
  %i.act = fmul fast float %i.acq, f0x3E638E39    ; 2 uses
  %i.acu = fmul fast float %i.acq, f0x3CB60B61    ; 2 uses
  %i.acv = fmul fast float %i.acq, f0x3C360B61    ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  %i.acx = load float, ptr %i.aco, align 4, !tbaa !39 ; 4 uses
  %i.acy = insertelement <8 x float> <float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison>, float %i.acx, i64 0
  %i.acz = fmul fast float %i.acx, f0x3C360B61    ; 2 uses
  %i.ada = fadd fast float %i.acu, %i.acz
  %i.adb = fsub fast float %i.acz, %i.acu
  %i.adc = fmul fast float %i.acx, f0x3CB60B61    ; 2 uses
  %i.add = fadd fast float %i.acv, %i.adc
  %11 = fsub fast float %i.adc, %i.acv
  %12 = getelementptr inbounds nuw i8, ptr %.118.i, i64 36
  %13 = getelementptr inbounds nuw i8, ptr %.118.i, i64 40
  %i.ade = getelementptr inbounds nuw i8, ptr %.118.i, i64 44
  %i.adf = getelementptr inbounds nuw i8, ptr %.118.i, i64 48
  %i.adg = getelementptr inbounds nuw i8, ptr %.118.i, i64 52
  %i.adh = getelementptr inbounds nuw i8, ptr %.118.i, i64 56
  %i.adi = getelementptr inbounds nuw i8, ptr %.118.i, i64 60
  %i.adj = getelementptr inbounds nuw i8, ptr %.118.i, i64 64
  %i.adk = getelementptr inbounds nuw i8, ptr %.118.i, i64 68
  %i.adl = getelementptr inbounds nuw i8, ptr %.118.i, i64 72
  %i.adm = getelementptr inbounds nuw i8, ptr %.118.i, i64 76
  %i.adn = getelementptr inbounds nuw i8, ptr %.118.i, i64 80
  %i.ado = getelementptr inbounds nuw i8, ptr %.118.i, i64 84
  %i.adp = getelementptr inbounds nuw i8, ptr %.118.i, i64 88
  %i.adq = getelementptr inbounds nuw i8, ptr %.118.i, i64 92
  %i.adr = getelementptr inbounds nuw i8, ptr %.118.i, i64 96
  %i.ads = getelementptr inbounds nuw i8, ptr %.118.i, i64 100
  %i.adt = getelementptr inbounds nuw i8, ptr %.118.i, i64 104
  %i.adu = getelementptr inbounds nuw i8, ptr %.118.i, i64 108
  %i.adv = getelementptr inbounds nuw i8, ptr %.118.i, i64 112
  %i.adw = getelementptr inbounds nuw i8, ptr %.118.i, i64 116
  %i.adx = getelementptr inbounds nuw i8, ptr %.118.i, i64 120
  %i.ady = getelementptr inbounds nuw i8, ptr %.118.i, i64 124
  %i.adz = getelementptr inbounds nuw i8, ptr %.118.i, i64 128
  %14 = getelementptr inbounds nuw i8, ptr %.118.i, i64 132
  %i.aea = getelementptr inbounds nuw i8, ptr %.118.i, i64 136
  %i.aeb = getelementptr inbounds nuw i8, ptr %.118.i, i64 140
  %i.aec = getelementptr inbounds nuw i8, ptr %.118.i, i64 144
  %i.aed = getelementptr inbounds nuw i8, ptr %.118.i, i64 148
  %i.aee = getelementptr inbounds nuw i8, ptr %.118.i, i64 152
  %i.aef = getelementptr inbounds nuw i8, ptr %.118.i, i64 156
  %15 = getelementptr inbounds nuw i8, ptr %.118.i, i64 160
  %16 = getelementptr inbounds nuw i8, ptr %.118.i, i64 164
  %17 = getelementptr inbounds nuw i8, ptr %.118.i, i64 180
  %18 = getelementptr inbounds nuw i8, ptr %.118.i, i64 184
  %19 = getelementptr inbounds nuw i8, ptr %.118.i, i64 188
  %20 = getelementptr inbounds nuw i8, ptr %.118.i, i64 192
  %21 = getelementptr inbounds nuw i8, ptr %.118.i, i64 196
  %22 = getelementptr inbounds nuw i8, ptr %.118.i, i64 200
  %23 = load float, ptr %i.aci, align 4, !tbaa !39 ; 4 uses
  %24 = load float, ptr %i.acj, align 4, !tbaa !39 ; 3 uses
  %25 = load float, ptr %i.ack, align 4, !tbaa !39 ; 6 uses
  %26 = fmul fast float %23, f0xBE638E39          ; 4 uses
  %27 = fmul fast float %24, f0x3E638E39          ; 2 uses
  %.neg9.i = fsub fast float %26, %27             ; 2 uses
  %28 = fadd fast float %27, %26
  %29 = fmul fast float %23, f0x3C360B61          ; 4 uses
  %30 = fmul fast float %24, f0x3CB60B61          ; 2 uses
  %31 = fadd fast float %30, %29
  %i.aeg = fmul fast float %25, f0x3D360B61       ; 2 uses
  %32 = fadd fast float %31, %i.aeg               ; 4 uses
  %33 = fsub fast float %29, %30
  %34 = fadd fast float %33, %i.aeg               ; 4 uses
  %35 = load float, ptr %i.acl, align 4, !tbaa !39 ; 4 uses
  %36 = load float, ptr %i.acm, align 4, !tbaa !39 ; 3 uses
  %37 = insertelement <2 x float> poison, float %23, i64 0
  %38 = insertelement <2 x float> %37, float %35, i64 1
  %39 = fmul fast <2 x float> %38, splat (float f0x3CB60B61) ; 4 uses
  %40 = insertelement <2 x float> poison, float %24, i64 0
  %41 = insertelement <2 x float> %40, float %36, i64 1
  %42 = fmul fast <2 x float> %41, splat (float f0x3C360B61) ; 2 uses
  %43 = load float, ptr %i.acn, align 4, !tbaa !39 ; 5 uses
  %44 = insertelement <2 x float> poison, float %25, i64 0
  %45 = insertelement <2 x float> %44, float %43, i64 1
  %46 = fmul fast <2 x float> %45, splat (float f0x3BB60B61) ; 2 uses
  %i.aeh = fmul fast float %35, f0xBE638E39       ; 2 uses
  %47 = fmul fast float %36, f0x3E638E39          ; 2 uses
  %.neg8.1.i = fmul fast float %43, f0xBE638E39   ; 2 uses
  %.neg9.1.i = fsub fast float %i.aeh, %47
  %48 = fadd fast float %.neg9.1.i, %.neg8.1.i    ; 3 uses
  %49 = fadd fast float %47, %i.aeh
  %50 = fadd fast float %49, %.neg8.1.i           ; 3 uses
  %51 = fmul fast float %35, f0x3C360B61          ; 3 uses
  %52 = fmul fast float %36, f0x3CB60B61          ; 2 uses
  %53 = fadd fast float %52, %51
  %54 = fmul fast float %43, f0x3D360B61          ; 2 uses
  %55 = fadd fast float %53, %54                  ; 3 uses
  %56 = fsub fast float %51, %52
  %57 = fadd fast float %56, %54                  ; 3 uses
  %58 = extractelement <2 x float> %39, i64 1     ; 2 uses
  %59 = fsub fast <2 x float> %39, %42
  %60 = fadd fast <2 x float> %59, %46            ; 3 uses
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aei = fmul fast float %35, f0x3E638E39       ; 2 uses
  %.neg4.i = fsub fast float %26, %i.aei
  %i.aej = fadd fast float %i.aei, %26
  %62 = fadd fast float %58, %29
  %63 = fsub fast float %29, %58
  %64 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aek = insertelement <2 x float> poison, float %51, i64 0
  %65 = shufflevector <2 x float> %i.aek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ael = fadd fast <2 x float> %64, %65
  %66 = fsub fast <2 x float> %64, %65
  %67 = fmul fast float %48, f0x3E638E39          ; 2 uses
  %i.aem = fmul fast float %48, f0x3CB60B61       ; 2 uses
  %68 = fmul fast float %48, f0x3C360B61          ; 2 uses
  %69 = insertelement <8 x float> %i.acy, float %25, i64 2
  %70 = shufflevector <8 x float> %69, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2>
  %71 = fmul fast <8 x float> %70, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61, float f0x3BB60B61, float -0.000000e+00, float f0xBE638E39> ; 2 uses
  %72 = extractelement <8 x float> %71, i64 0     ; 2 uses
  %.neg9.2.i = fsub fast float %72, %i.act
  %73 = fadd fast float %i.act, %72
  %74 = insertelement <8 x float> poison, float %.neg4.i, i64 0
  %75 = insertelement <8 x float> %74, float %i.aej, i64 1
  %76 = insertelement <8 x float> %75, float %62, i64 2
  %77 = insertelement <8 x float> %76, float %63, i64 3
  %78 = shufflevector <2 x float> %i.ael, <2 x float> %66, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %79 = shufflevector <8 x float> %77, <8 x float> %78, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %80 = insertelement <8 x float> %79, float %i.acx, i64 6
  %i.aen = insertelement <8 x float> %80, float %.neg9.i, i64 7
  %81 = fadd reassoc nsz arcp contract afn <8 x float> %i.aen, %71
  store float %23, ptr %.118.i, align 4, !tbaa !39
  store <8 x float> %81, ptr %i.acw, align 4, !tbaa !39
  %i.aeo = fmul fast float %50, f0x3E638E39       ; 2 uses
  %82 = fmul fast float %50, f0x3CB60B61          ; 2 uses
  %83 = fmul fast float %50, f0x3C360B61          ; 2 uses
  %84 = fmul fast float %32, f0xBE638E39          ; 2 uses
  %85 = fmul fast float %55, f0x3E638E39          ; 2 uses
  %.neg4.3.i = fsub fast float %84, %85
  %86 = fadd fast float %85, %84
  %87 = fmul fast float %32, f0x3C360B61          ; 2 uses
  %i.aep = fmul fast float %55, f0x3CB60B61       ; 2 uses
  %i.aeq = fadd fast float %i.aep, %87
  %i.aer = fsub fast float %87, %i.aep
  %88 = fmul fast float %32, f0x3CB60B61          ; 2 uses
  %89 = fmul fast float %55, f0x3C360B61          ; 2 uses
  %90 = fadd fast float %89, %88
  %91 = fsub fast float %88, %89
  store float %32, ptr %i.adr, align 4, !tbaa !39
  %92 = fmul fast float %34, f0xBE638E39          ; 2 uses
  %93 = fmul fast float %57, f0x3E638E39          ; 2 uses
  %.neg4.4.i = fsub fast float %92, %93
  %94 = fadd fast float %93, %92
  %95 = fmul fast float %34, f0x3C360B61          ; 2 uses
  %96 = fmul fast float %57, f0x3CB60B61          ; 2 uses
  %97 = fadd fast float %96, %95
  %98 = fsub fast float %95, %96
  %99 = fmul fast float %34, f0x3CB60B61          ; 2 uses
  %i.aes = fmul fast float %57, f0x3C360B61       ; 2 uses
  %i.aet = fadd fast float %i.aes, %99
  %i.aeu = fsub fast float %99, %i.aes
  store float %34, ptr %i.adz, align 4, !tbaa !39
  %100 = fadd fast <2 x float> %42, %39
  %101 = fadd fast <2 x float> %100, %46          ; 3 uses
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.aev = fmul fast <4 x float> %102, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.aew = shufflevector <4 x float> %i.aev, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.aex = fsub fast <4 x float> %i.aev, %i.aew
  %i.aey = fadd fast <4 x float> %i.aev, %i.aew
  %i.aez = shufflevector <4 x float> %i.aex, <4 x float> %i.aey, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %103 = extractelement <2 x float> %101, i64 0   ; 2 uses
  %104 = fmul fast float %103, f0x3CB60B61        ; 2 uses
  %i.afa = extractelement <2 x float> %101, i64 1
  %i.afb = fmul fast float %i.afa, f0x3C360B61    ; 2 uses
  %i.afc = fadd fast float %i.afb, %104
  %105 = fsub fast float %104, %i.afb
  store float %103, ptr %15, align 4, !tbaa !39
  %106 = shufflevector <2 x float> %60, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %107 = fmul fast <4 x float> %106, <float f0x3E638E39, float f0x3C360B61, float f0x3CB60B61, float f0x3CB60B61> ; 4 uses
  %108 = fmul fast <4 x float> %61, <float f0xBE638E39, float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61> ; 4 uses
  %foldExtExtBinop = fsub fast <4 x float> %108, %107
  %109 = fadd fast <4 x float> %108, %107
  %110 = fsub fast <4 x float> %108, %107
  %111 = shufflevector <4 x float> %109, <4 x float> %110, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %foldExtExtBinop186 = fsub fast <4 x float> %107, %108
  %112 = extractelement <2 x float> %60, i64 0
  store float %112, ptr %20, align 4, !tbaa !39
  %113 = getelementptr inbounds nuw i8, ptr %.118.i, i64 232
  %i.afd = insertelement <4 x float> poison, float %i.acs, i64 0
  %i.afe = shufflevector <4 x float> %i.afd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aff = fmul fast <4 x float> %i.afe, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61> ; 6 uses
  %114 = extractelement <4 x float> %i.aff, i64 1 ; 2 uses
  %115 = fadd fast float %i.ada, %114             ; 4 uses
  %116 = fadd fast float %i.adb, %114             ; 4 uses
  %117 = extractelement <4 x float> %i.aff, i64 3 ; 2 uses
  %118 = fadd fast float %i.add, %117             ; 3 uses
  %.neg3.3.i = fmul fast float %115, f0xBE638E39  ; 2 uses
  %119 = fmul fast float %115, f0x3D360B61        ; 2 uses
  %120 = fmul fast float %115, f0x3BB60B61        ; 2 uses
  %.neg3.4.i = fmul fast float %116, f0xBE638E39  ; 2 uses
  %121 = fmul fast float %116, f0x3D360B61        ; 2 uses
  %122 = fmul fast float %116, f0x3BB60B61        ; 2 uses
  %123 = fmul fast float %118, f0x3BB60B61        ; 2 uses
  %124 = insertelement <4 x float> poison, float %25, i64 0
  %125 = insertelement <4 x float> %124, float %43, i64 1
  %126 = shufflevector <4 x float> %125, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %127 = fmul fast <4 x float> %126, <float f0xBE638E39, float f0x3C360B61, float f0x3CB60B61, float f0x3CB60B61> ; 5 uses
  %i.afg = extractelement <4 x float> %127, i64 0 ; 2 uses
  %128 = fadd fast float %28, %i.afg              ; 4 uses
  %i.afh = extractelement <4 x float> %i.aff, i64 0 ; 2 uses
  %129 = fadd fast float %.neg9.2.i, %i.afh       ; 4 uses
  %130 = fadd fast float %73, %i.afh              ; 4 uses
  %i.afi = fadd fast float %11, %117              ; 2 uses
  %i.afj = fadd fast float %.neg9.i, %i.afg       ; 3 uses
  %131 = fmul fast float %i.afj, f0xBE638E39      ; 2 uses
  %.neg3.1.i = fmul fast float %129, f0xBE638E39  ; 2 uses
  %.neg4.1.i = fsub fast float %131, %67
  %132 = fadd fast float %.neg4.1.i, %.neg3.1.i
  %i.afk = fadd fast float %67, %131
  %133 = fadd fast float %i.afk, %.neg3.1.i
  %134 = fmul fast float %i.afj, f0x3C360B61      ; 2 uses
  %135 = fadd fast float %i.aem, %134
  %136 = fmul fast float %129, f0x3D360B61        ; 2 uses
  %137 = fadd fast float %135, %136
  %138 = fsub fast float %134, %i.aem
  %139 = fadd fast float %138, %136
  %140 = fmul fast float %i.afj, f0x3CB60B61      ; 2 uses
  %141 = fadd fast float %68, %140
  %142 = fmul fast float %129, f0x3BB60B61        ; 2 uses
  %143 = fadd fast float %141, %142
  %144 = fsub fast float %140, %68
  %145 = fadd fast float %144, %142
  store float %132, ptr %12, align 4, !tbaa !39
  store float %133, ptr %13, align 4, !tbaa !39
  store float %137, ptr %i.ade, align 4, !tbaa !39
  store float %139, ptr %i.adf, align 4, !tbaa !39
  store float %143, ptr %i.adg, align 4, !tbaa !39
  store float %145, ptr %i.adh, align 4, !tbaa !39
  store float %129, ptr %i.adi, align 4, !tbaa !39
  %146 = fmul fast float %128, f0xBE638E39        ; 2 uses
  %.neg3.2.i = fmul fast float %130, f0xBE638E39  ; 2 uses
  %.neg4.2.i = fsub fast float %146, %i.aeo
  %147 = fadd fast float %.neg4.2.i, %.neg3.2.i
  %148 = fadd fast float %i.aeo, %146
  %149 = fadd fast float %148, %.neg3.2.i
  %i.afl = fmul fast float %128, f0x3C360B61      ; 2 uses
  %i.afm = fadd fast float %82, %i.afl
  %150 = fmul fast float %130, f0x3D360B61        ; 2 uses
  %i.afn = fadd fast float %i.afm, %150
  %151 = fsub fast float %i.afl, %82
  %152 = fadd fast float %151, %150
  %153 = fmul fast float %128, f0x3CB60B61        ; 2 uses
  %154 = fadd fast float %83, %153
  %155 = fmul fast float %130, f0x3BB60B61        ; 2 uses
  %156 = fadd fast float %154, %155
  %157 = fsub fast float %153, %83
  %158 = fadd fast float %157, %155
  store float %128, ptr %i.adj, align 4, !tbaa !39
  store float %147, ptr %i.adk, align 4, !tbaa !39
  store float %149, ptr %i.adl, align 4, !tbaa !39
  store float %i.afn, ptr %i.adm, align 4, !tbaa !39
  store float %152, ptr %i.adn, align 4, !tbaa !39
  store float %156, ptr %i.ado, align 4, !tbaa !39
  store float %158, ptr %i.adp, align 4, !tbaa !39
  store float %130, ptr %i.adq, align 4, !tbaa !39
  %159 = fadd fast float %.neg4.3.i, %.neg3.3.i
  %160 = fadd fast float %86, %.neg3.3.i
  %161 = fadd fast float %i.aeq, %119
  %162 = fadd fast float %i.aer, %119
  %163 = fadd fast float %90, %120
  %164 = fadd fast float %91, %120
  store float %159, ptr %i.ads, align 4, !tbaa !39
  store float %160, ptr %i.adt, align 4, !tbaa !39
  store float %161, ptr %i.adu, align 4, !tbaa !39
  store float %162, ptr %i.adv, align 4, !tbaa !39
  store float %163, ptr %i.adw, align 4, !tbaa !39
  store float %164, ptr %i.adx, align 4, !tbaa !39
  store float %115, ptr %i.ady, align 4, !tbaa !39
  %165 = fadd fast float %.neg4.4.i, %.neg3.4.i
  %166 = fadd fast float %94, %.neg3.4.i
  %i.afo = fadd fast float %97, %121
  %i.afp = fadd fast float %98, %121
  %167 = fadd fast float %i.aet, %122
  %i.afq = fadd fast float %i.aeu, %122
  store float %165, ptr %14, align 4, !tbaa !39
  store float %166, ptr %i.aea, align 4, !tbaa !39
  store float %i.afo, ptr %i.aeb, align 4, !tbaa !39
  store float %i.afp, ptr %i.aec, align 4, !tbaa !39
  store float %167, ptr %i.aed, align 4, !tbaa !39
  store float %i.afq, ptr %i.aee, align 4, !tbaa !39
  store float %116, ptr %i.aef, align 4, !tbaa !39
  %168 = insertelement <4 x float> poison, float %118, i64 0
  %169 = shufflevector <4 x float> %168, <4 x float> poison, <4 x i32> zeroinitializer
  %170 = fmul fast <4 x float> %169, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.afr = fadd fast <4 x float> %i.aez, %170
  %i.afs = fadd fast float %i.afc, %123
  %i.aft = fadd fast float %105, %123
  store <4 x float> %i.afr, ptr %16, align 4, !tbaa !39
  store float %i.afs, ptr %17, align 4, !tbaa !39
  store float %i.aft, ptr %18, align 4, !tbaa !39
  store float %118, ptr %19, align 4, !tbaa !39
  %171 = insertelement <4 x float> poison, float %i.afi, i64 0
  %172 = shufflevector <4 x float> %171, <4 x float> poison, <4 x i32> zeroinitializer
  %173 = fmul fast <4 x float> %172, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61> ; 3 uses
  %foldExtExtBinop188 = fadd fast <4 x float> %foldExtExtBinop, %173
  %174 = extractelement <4 x float> %foldExtExtBinop188, i64 0
  %175 = fadd fast <4 x float> %111, %173
  %foldExtExtBinop190 = fadd fast <4 x float> %foldExtExtBinop186, %173
  store float %174, ptr %21, align 4, !tbaa !39
  %176 = insertelement <4 x float> poison, float %43, i64 0
  %i.afu = insertelement <4 x float> %176, float %25, i64 1
  %177 = shufflevector <4 x float> %i.afu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %178 = fmul fast <4 x float> %177, <float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61> ; 4 uses
  %foldExtExtBinop192 = fsub fast <4 x float> %127, %178
  %foldExtExtBinop194 = fadd fast <4 x float> %foldExtExtBinop192, %i.aff
  %179 = shufflevector <4 x float> %foldExtExtBinop194, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %180 = fadd fast <4 x float> %178, %127
  %i.afv = fsub fast <4 x float> %178, %127
  %181 = shufflevector <4 x float> %180, <4 x float> %i.afv, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.afw = fadd fast <4 x float> %181, %i.aff
  %foldExtExtBinop196 = fsub fast <4 x float> %127, %178
  %foldExtExtBinop198 = fadd fast <4 x float> %foldExtExtBinop196, %i.aff
  %182 = extractelement <4 x float> %foldExtExtBinop198, i64 3
  %183 = shufflevector <4 x float> %foldExtExtBinop190, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison>
  %184 = insertelement <8 x float> %183, float %i.afi, i64 5
  %185 = insertelement <8 x float> %184, float %25, i64 6
  %186 = shufflevector <8 x float> %185, <8 x float> %179, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 8>
  %187 = shufflevector <4 x float> %175, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %188 = shufflevector <8 x float> %187, <8 x float> %186, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %188, ptr %22, align 4, !tbaa !39
  store <4 x float> %i.afw, ptr %113, align 4, !tbaa !39
  %i.afx = getelementptr inbounds nuw i8, ptr %.118.i, i64 248
  store float %182, ptr %i.afx, align 4, !tbaa !39
  %i.afy = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.acs, ptr %i.afy, align 4, !tbaa !39
  %i.afz = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !647

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block181
  %.lcssa = phi ptr [ %i.cz, %middle.block181 ], [ %i.afz, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader12.i, !llvm.loop !648

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %bb.d
  %i.aga = trunc nsw i64 %indvars.iv to i32
  %i.agb = sdiv i32 %i.aga, %i.ai
  %i.agc = sext i32 %i.agb to i64
  %i.agd = mul i64 %i.ax, %i.agc
  %i.age = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.agd
  %i.agf = shl i32 %.sroa.speculated, 6           ; 2 uses
  %i.agg = icmp sgt i32 %.sroa.speculated, 0      ; 4 uses
  %i.agh = sext i32 %i.agf to i64                 ; 13 uses
  %i.agi = shl nsw i32 %.sroa.speculated, 7
  %i.agj = sext i32 %i.agi to i64                 ; 4 uses
  %i.agk = mul nsw i32 %.sroa.speculated, 192
  %i.agl = sext i32 %i.agk to i64                 ; 4 uses
  %i.agm = shl nsw i32 %.sroa.speculated, 8
  %i.agn = sext i32 %i.agm to i64
  %i.ago = mul nsw i32 %.sroa.speculated, 320
  %i.agp = sext i32 %i.ago to i64
  %i.agq = mul nsw i32 %.sroa.speculated, 384
  %i.agr = sext i32 %i.agq to i64
  %i.ags = mul nsw i32 %.sroa.speculated, 448
  %i.agt = sext i32 %i.ags to i64
  %i.agu = zext i32 %i.agf to i64
  %i.agv = shl nsw i64 %i.agh, 2
  %i.agw = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.agx = getelementptr i8, ptr %i.agw, i64 %i.cf
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.agy = icmp eq i32 %i.bq, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod207 = trunc i32 %.sroa.speculated to i1
  %xtraiter209 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.agz = icmp ult i32 %i.bq, 3
  %unroll_iter213 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod210.not = icmp eq i32 %xtraiter209, 0
  %lcmp.mod212 = icmp ne i32 %xtraiter209, 0
  %i.aha = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cc, 0
  %n.vec = and i64 %i.aha, 2147483640             ; 5 uses
  %i.ahb = trunc nuw nsw i64 %n.vec to i32
  %i.ahc = shl nuw nsw i64 %n.vec, 8
  %i.ahd = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.aha
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge49.split.i, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv79.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next80.i, %._crit_edge49.split.i ] ; 7 uses
  %i.ahe = shl nuw nsw i64 %indvars.iv79.i, 2
  %scevgep145 = getelementptr i8, ptr %i.agx, i64 %i.ahe
  %.reass.i = mul i64 %i.aw, %indvars.iv79.i
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.age, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph9.i, label %.preheader2.i

.lr.ph9.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv79.i
  br i1 %i.agg, label %.lr.ph.us.i, label %.preheader2.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph9.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph9.i ] ; 2 uses
  %.01076.us.i = phi ptr [ %i.aie, %._crit_edge.us.i ], [ %i.ahf, %.lr.ph9.i ]
  %i.ahg = mul nuw nsw i64 %indvars.iv.i54, %i.agu
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ahg
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.us.i
  %.01045.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.aif, %bb.f ]
  %.01054.us.i = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.aid, %bb.f ] ; 9 uses
  %.11083.us.i = phi ptr [ %.01076.us.i, %.lr.ph.us.i ], [ %i.aie, %bb.f ] ; 9 uses
  %i.ahh = load float, ptr %.01054.us.i, align 4, !tbaa !39
  store float %i.ahh, ptr %.11083.us.i, align 4, !tbaa !39
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agh
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !39
  %i.ahk = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 4
  store float %i.ahj, ptr %i.ahk, align 4, !tbaa !39
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agj
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !39
  %i.ahn = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 8
  store float %i.ahm, ptr %i.ahn, align 4, !tbaa !39
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agl
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !39
  %i.ahq = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 12
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !39
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agn
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !39
  %i.aht = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 16
  store float %i.ahs, ptr %i.aht, align 4, !tbaa !39
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agp
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !39
  %i.ahw = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 20
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !39
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agr
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !39
  %i.ahz = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 24
  store float %i.ahy, ptr %i.ahz, align 4, !tbaa !39
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %.01054.us.i, i64 %i.agt
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !39
  %i.aic = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 28
  store float %i.aib, ptr %i.aic, align 4, !tbaa !39
  %i.aid = getelementptr inbounds nuw i8, ptr %.01054.us.i, i64 256
  %i.aie = getelementptr inbounds nuw i8, ptr %.11083.us.i, i64 32 ; 3 uses
  %i.aif = add nuw nsw i32 %.01045.us.i, 1        ; 2 uses
  %exitcond.not.i55 = icmp eq i32 %i.aif, %.sroa.speculated
  br i1 %exitcond.not.i55, label %._crit_edge.us.i, label %bb.f, !llvm.loop !649

._crit_edge.us.i:                                 ; preds = %bb.f
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 8 ; 3 uses
  %i.aig = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.aig, label %.lr.ph.us.i, label %.preheader2.loopexit.i, !llvm.loop !650

.preheader2.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.aih = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %.preheader2.loopexit.i, %bb.e
  %.0107.lcssa.i = phi ptr [ %i.ahf, %bb.e ], [ %i.aie, %.preheader2.loopexit.i ] ; 3 uses
  %.0106.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.aih, %.preheader2.loopexit.i ] ; 4 uses
  %i.aii = or disjoint i32 %.0106.lcssa.i, 3
  %i.aij = icmp slt i32 %i.aii, %.sroa.speculated82
  br i1 %i.aij, label %.lr.ph18.i, label %.preheader1.i

.preheader2.thread.i:                             ; preds = %.lr.ph9.i
  br i1 %i.bc, label %.lr.ph18.split.preheader.i, label %.preheader1.i

.lr.ph18.i:                                       ; preds = %.preheader2.i
  %invariant.gep21.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv79.i
  br i1 %i.agg, label %.lr.ph.us23.preheader.i, label %.lr.ph18.split.preheader.i

.lr.ph18.split.preheader.i:                       ; preds = %.lr.ph18.i, %.preheader2.thread.i
  %.0107.lcssa8894.i = phi ptr [ %.0107.lcssa.i, %.lr.ph18.i ], [ %i.ahf, %.preheader2.thread.i ]
  %.0106.lcssa8993.i = phi i32 [ %.0106.lcssa.i, %.lr.ph18.i ], [ %i.az, %.preheader2.thread.i ] ; 3 uses
  %i.aik = add i32 %.0106.lcssa8993.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated82, i32 %i.aik)
  %reass.sub = sub i32 %smax.i, %.0106.lcssa8993.i
  %i.ail = and i32 %reass.sub, -4
  %i.aim = add i32 %.0106.lcssa8993.i, %i.ail
  br label %.preheader1.i

.lr.ph.us23.preheader.i:                          ; preds = %.lr.ph18.i
  %i.ain = sext i32 %.0106.lcssa.i to i64
  br label %.lr.ph.us23.i

.lr.ph.us23.i:                                    ; preds = %._crit_edge.us24.i, %.lr.ph.us23.preheader.i
  %indvars.iv66.i = phi i64 [ %i.ain, %.lr.ph.us23.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge.us24.i ] ; 2 uses
  %.210916.us.i = phi ptr [ %.0107.lcssa.i, %.lr.ph.us23.preheader.i ], [ %.lcssa202, %._crit_edge.us24.i ] ; 2 uses
  %i.aio = mul nsw i64 %indvars.iv66.i, %i.agh
  %gep.us22.i = getelementptr [4 x i8], ptr %invariant.gep21.i, i64 %i.aio ; 2 uses
  br i1 %i.agy, label %.epil.preheader, label %.lr.ph.us23.i.new

.lr.ph.us23.i.new:                                ; preds = %.lr.ph.us23.i, %.lr.ph.us23.i.new
  %.010314.us.i = phi ptr [ %i.ajl, %.lr.ph.us23.i.new ], [ %gep.us22.i, %.lr.ph.us23.i ] ; 6 uses
  %.311013.us.i = phi ptr [ %i.ajm, %.lr.ph.us23.i.new ], [ %.210916.us.i, %.lr.ph.us23.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us23.i.new ], [ 0, %.lr.ph.us23.i ]
  %i.aip = load float, ptr %.010314.us.i, align 4, !tbaa !39
  store float %i.aip, ptr %.311013.us.i, align 4, !tbaa !39
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %.010314.us.i, i64 %i.agh
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !39
  %i.ais = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 4
  store float %i.air, ptr %i.ais, align 4, !tbaa !39
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.010314.us.i, i64 %i.agj
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !39
  %i.aiv = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 8
  store float %i.aiu, ptr %i.aiv, align 4, !tbaa !39
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %.010314.us.i, i64 %i.agl
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !39
  %i.aiy = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 12
  store float %i.aix, ptr %i.aiy, align 4, !tbaa !39
  %i.aiz = getelementptr inbounds nuw i8, ptr %.010314.us.i, i64 256 ; 4 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 16
  %i.ajb = load float, ptr %i.aiz, align 4, !tbaa !39
  store float %i.ajb, ptr %i.aja, align 4, !tbaa !39
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.agh
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !39
  %i.aje = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 20
  store float %i.ajd, ptr %i.aje, align 4, !tbaa !39
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.agj
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !39
  %i.ajh = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 24
  store float %i.ajg, ptr %i.ajh, align 4, !tbaa !39
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.agl
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !39
  %i.ajk = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 28
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !39
  %i.ajl = getelementptr inbounds nuw i8, ptr %.010314.us.i, i64 512 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.311013.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us24.i.unr-lcssa, label %.lr.ph.us23.i.new, !llvm.loop !651
end_hunk_0
