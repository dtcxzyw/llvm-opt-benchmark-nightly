Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.xe = getelementptr i8, ptr %i.dh, i64 944
  %i.xf = extractelement <4 x float> %i.wd, i64 0
  store float %i.xf, ptr %i.xb, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xg = getelementptr inbounds nuw i8, ptr %next.gep172, i64 180
  %i.xh = extractelement <4 x float> %i.wi, i64 0
  store float %i.xh, ptr %i.xg, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xi = shufflevector <4 x float> %i.wd, <4 x float> %i.wi, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.xi, ptr %i.xc, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xj = shufflevector <4 x float> %i.wd, <4 x float> %i.wi, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.xj, ptr %i.xd, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xk = shufflevector <4 x float> %i.wd, <4 x float> %i.wi, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.xk, ptr %i.xe, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xl = getelementptr inbounds nuw i8, ptr %next.gep172, i64 184
  %i.xm = getelementptr i8, ptr %i.df, i64 440
  %i.xn = getelementptr i8, ptr %i.dg, i64 696
  %i.xo = getelementptr i8, ptr %i.dh, i64 952
  %i.xp = extractelement <4 x float> %i.wk, i64 0
  store float %i.xp, ptr %i.xl, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xq = getelementptr inbounds nuw i8, ptr %next.gep172, i64 188
  %i.xr = extractelement <4 x float> %i.kc, i64 0
  store float %i.xr, ptr %i.xq, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xs = shufflevector <4 x float> %i.wk, <4 x float> %i.kc, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.xs, ptr %i.xm, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xt = shufflevector <4 x float> %i.wk, <4 x float> %i.kc, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.xt, ptr %i.xn, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xu = shufflevector <4 x float> %i.wk, <4 x float> %i.kc, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.xu, ptr %i.xo, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.xv = getelementptr inbounds nuw i8, ptr %next.gep172, i64 192
  %i.xw = getelementptr i8, ptr %i.df, i64 448
  %i.xx = getelementptr i8, ptr %i.dg, i64 704
  %i.xy = getelementptr i8, ptr %i.dh, i64 960
  %i.xz = fmul fast <4 x float> %i.fu, splat (float f0xBE638E39) ; 2 uses
  %i.ya = fmul fast <4 x float> %i.hz, splat (float f0x3E638E39) ; 2 uses
  %i.yb = fmul fast <4 x float> %i.ke, splat (float f0xBE638E39) ; 2 uses
  %i.yc = fsub fast <4 x float> %i.xz, %i.ya
  %i.yd = fadd fast <4 x float> %i.yc, %i.yb      ; 4 uses
  %i.ye = fadd fast <4 x float> %i.ya, %i.xz
  %i.yf = fadd fast <4 x float> %i.ye, %i.yb      ; 4 uses
  %i.yg = fmul fast <4 x float> %i.fu, splat (float f0x3C360B61) ; 2 uses
  %i.yh = fmul fast <4 x float> %i.hz, splat (float f0x3CB60B61) ; 2 uses
  %i.yi = fadd fast <4 x float> %i.yh, %i.yg
  %i.yj = fmul fast <4 x float> %i.ke, splat (float f0x3D360B61) ; 2 uses
  %i.yk = fadd fast <4 x float> %i.yi, %i.yj      ; 4 uses
  %i.yl = fsub fast <4 x float> %i.yg, %i.yh
  %i.ym = fadd fast <4 x float> %i.yl, %i.yj      ; 4 uses
  %i.yn = fmul fast <4 x float> %i.fu, splat (float f0x3CB60B61) ; 2 uses
  %i.yo = fmul fast <4 x float> %i.hz, splat (float f0x3C360B61) ; 2 uses
  %i.yp = fadd fast <4 x float> %i.yo, %i.yn
  %i.yq = fmul fast <4 x float> %i.ke, splat (float f0x3BB60B61) ; 2 uses
  %i.yr = fadd fast <4 x float> %i.yp, %i.yq      ; 4 uses
  %i.ys = fsub fast <4 x float> %i.yn, %i.yo
  %i.yt = fadd fast <4 x float> %i.ys, %i.yq      ; 4 uses
  %i.yu = extractelement <4 x float> %i.fu, i64 0
  store float %i.yu, ptr %i.xv, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.yv = getelementptr inbounds nuw i8, ptr %next.gep172, i64 196
  %i.yw = extractelement <4 x float> %i.yd, i64 0
  store float %i.yw, ptr %i.yv, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.yx = shufflevector <4 x float> %i.fu, <4 x float> %i.yd, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.yx, ptr %i.xw, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.yy = shufflevector <4 x float> %i.fu, <4 x float> %i.yd, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.yy, ptr %i.xx, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.yz = shufflevector <4 x float> %i.fu, <4 x float> %i.yd, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.yz, ptr %i.xy, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.za = getelementptr inbounds nuw i8, ptr %next.gep172, i64 200
  %i.zb = getelementptr i8, ptr %i.df, i64 456
  %i.zc = getelementptr i8, ptr %i.dg, i64 712
  %i.zd = getelementptr i8, ptr %i.dh, i64 968
  %i.ze = extractelement <4 x float> %i.yf, i64 0
  store float %i.ze, ptr %i.za, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zf = getelementptr inbounds nuw i8, ptr %next.gep172, i64 204
  %i.zg = extractelement <4 x float> %i.yk, i64 0
  store float %i.zg, ptr %i.zf, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zh = shufflevector <4 x float> %i.yf, <4 x float> %i.yk, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zh, ptr %i.zb, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zi = shufflevector <4 x float> %i.yf, <4 x float> %i.yk, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zi, ptr %i.zc, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zj = shufflevector <4 x float> %i.yf, <4 x float> %i.yk, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.zj, ptr %i.zd, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zk = getelementptr inbounds nuw i8, ptr %next.gep172, i64 208
  %i.zl = getelementptr i8, ptr %i.df, i64 464
  %i.zm = getelementptr i8, ptr %i.dg, i64 720
  %i.zn = getelementptr i8, ptr %i.dh, i64 976
  %i.zo = extractelement <4 x float> %i.ym, i64 0
  store float %i.zo, ptr %i.zk, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zp = getelementptr inbounds nuw i8, ptr %next.gep172, i64 212
  %i.zq = extractelement <4 x float> %i.yr, i64 0
  store float %i.zq, ptr %i.zp, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zr = shufflevector <4 x float> %i.ym, <4 x float> %i.yr, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zr, ptr %i.zl, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zs = shufflevector <4 x float> %i.ym, <4 x float> %i.yr, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zs, ptr %i.zm, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zt = shufflevector <4 x float> %i.ym, <4 x float> %i.yr, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.zt, ptr %i.zn, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zu = getelementptr inbounds nuw i8, ptr %next.gep172, i64 216
  %i.zv = getelementptr i8, ptr %i.df, i64 472
  %i.zw = getelementptr i8, ptr %i.dg, i64 728
  %i.zx = getelementptr i8, ptr %i.dh, i64 984
  %i.zy = extractelement <4 x float> %i.yt, i64 0
  store float %i.zy, ptr %i.zu, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.zz = getelementptr inbounds nuw i8, ptr %next.gep172, i64 220
  %i.aaa = extractelement <4 x float> %i.ke, i64 0
  store float %i.aaa, ptr %i.zz, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aab = shufflevector <4 x float> %i.yt, <4 x float> %i.ke, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aab, ptr %i.zv, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aac = shufflevector <4 x float> %i.yt, <4 x float> %i.ke, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.aac, ptr %i.zw, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aad = shufflevector <4 x float> %i.yt, <4 x float> %i.ke, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aad, ptr %i.zx, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aae = getelementptr inbounds nuw i8, ptr %next.gep172, i64 224
  %i.aaf = getelementptr i8, ptr %i.df, i64 480
  %i.aag = getelementptr i8, ptr %i.dg, i64 736
  %i.aah = getelementptr i8, ptr %i.dh, i64 992
  %i.aai = fmul fast <4 x float> %i.he, splat (float f0x3E638E39) ; 2 uses
  %i.aaj = fsub fast <4 x float> %i.fc, %i.aai
  %i.aak = fadd fast <4 x float> %i.aaj, %i.jm    ; 4 uses
  %i.aal = fadd fast <4 x float> %i.aai, %i.fc
  %i.aam = fadd fast <4 x float> %i.aal, %i.jm    ; 4 uses
  %i.aan = fmul fast <4 x float> %i.ez, splat (float f0x3C360B61) ; 2 uses
  %i.aao = fmul fast <4 x float> %i.he, splat (float f0x3CB60B61) ; 2 uses
  %i.aap = fadd fast <4 x float> %i.aao, %i.aan
  %i.aaq = fadd fast <4 x float> %i.aap, %i.ju    ; 4 uses
  %i.aar = fsub fast <4 x float> %i.aan, %i.aao
  %i.aas = fadd fast <4 x float> %i.aar, %i.ju    ; 4 uses
  %i.aat = fmul fast <4 x float> %i.ez, splat (float f0x3CB60B61) ; 2 uses
  %i.aau = fmul fast <4 x float> %i.he, splat (float f0x3C360B61) ; 2 uses
  %i.aav = fadd fast <4 x float> %i.aau, %i.aat
  %i.aaw = fadd fast <4 x float> %i.aav, %i.kb    ; 4 uses
  %i.aax = fsub fast <4 x float> %i.aat, %i.aau
  %i.aay = fadd fast <4 x float> %i.aax, %i.kb    ; 4 uses
  store float %i.es, ptr %i.aae, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  store float %i.et, ptr %i.aaf, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  store float %i.eu, ptr %i.aag, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  store float %i.ev, ptr %i.aah, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aaz = getelementptr inbounds nuw i8, ptr %next.gep172, i64 228
  %i.aba = getelementptr i8, ptr %i.df, i64 484
  %i.abb = getelementptr i8, ptr %i.dg, i64 740
  %i.abc = getelementptr i8, ptr %i.dh, i64 996
  %i.abd = extractelement <4 x float> %i.aak, i64 0
  store float %i.abd, ptr %i.aaz, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abe = getelementptr inbounds nuw i8, ptr %next.gep172, i64 232
  %i.abf = extractelement <4 x float> %i.aam, i64 0
  store float %i.abf, ptr %i.abe, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abg = shufflevector <4 x float> %i.aak, <4 x float> %i.aam, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abg, ptr %i.aba, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abh = shufflevector <4 x float> %i.aak, <4 x float> %i.aam, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abh, ptr %i.abb, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abi = shufflevector <4 x float> %i.aak, <4 x float> %i.aam, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abi, ptr %i.abc, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abj = getelementptr inbounds nuw i8, ptr %next.gep172, i64 236
  %i.abk = getelementptr i8, ptr %i.df, i64 492
  %i.abl = getelementptr i8, ptr %i.dg, i64 748
  %i.abm = getelementptr i8, ptr %i.dh, i64 1004
  %i.abn = extractelement <4 x float> %i.aaq, i64 0
  store float %i.abn, ptr %i.abj, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abo = getelementptr inbounds nuw i8, ptr %next.gep172, i64 240
  %i.abp = extractelement <4 x float> %i.aas, i64 0
  store float %i.abp, ptr %i.abo, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abq = shufflevector <4 x float> %i.aaq, <4 x float> %i.aas, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abq, ptr %i.abk, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abr = shufflevector <4 x float> %i.aaq, <4 x float> %i.aas, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abr, ptr %i.abl, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abs = shufflevector <4 x float> %i.aaq, <4 x float> %i.aas, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abs, ptr %i.abm, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.abt = getelementptr inbounds nuw i8, ptr %next.gep172, i64 244
  %i.abu = getelementptr i8, ptr %i.df, i64 500
  %i.abv = getelementptr i8, ptr %i.dg, i64 756
  %i.abw = getelementptr i8, ptr %i.dh, i64 1012
  %i.abx = extractelement <4 x float> %i.aaw, i64 0
  store float %i.abx, ptr %i.abt, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aby = getelementptr inbounds nuw i8, ptr %next.gep172, i64 248
  %i.abz = extractelement <4 x float> %i.aay, i64 0
  store float %i.abz, ptr %i.aby, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.aca = shufflevector <4 x float> %i.aaw, <4 x float> %i.aay, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.aca, ptr %i.abu, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.acb = shufflevector <4 x float> %i.aaw, <4 x float> %i.aay, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.acb, ptr %i.abv, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.acc = shufflevector <4 x float> %i.aaw, <4 x float> %i.aay, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.acc, ptr %i.abw, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %i.acd = getelementptr inbounds nuw i8, ptr %next.gep172, i64 252
  %i.ace = getelementptr i8, ptr %i.df, i64 508
  %i.acf = getelementptr i8, ptr %i.dg, i64 764
  %i.acg = getelementptr i8, ptr %i.dh, i64 1020
  store float %i.jc, ptr %i.acd, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  store float %i.jd, ptr %i.ace, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  store float %i.je, ptr %i.acf, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  store float %i.jf, ptr %i.acg, align 4, !tbaa !53, !alias.scope !470, !noalias !469
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.ach = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.ach, label %middle.block177, label %vector.body170, !llvm.loop !456

middle.block177:                                  ; preds = %vector.body170
  br i1 %cmp.n178, label %._crit_edge.i, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.memcheck152, %.preheader12.i, %middle.block177
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck152 ], [ 0, %.preheader12.i ], [ %n.vec169, %middle.block177 ]
  %.118.i.ph = phi ptr [ %.020.i, %vector.memcheck152 ], [ %.020.i, %.preheader12.i ], [ %i.da, %middle.block177 ]
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 2 uses
  %.118.i = phi ptr [ %i.ala, %.preheader.preheader.i ], [ %.118.i.ph, %.preheader.preheader.i.preheader ] ; 34 uses
  %i.aci = add nsw i64 %indvars.iv.i, %indvars.iv
  %.idx.i = mul nsw i64 %i.aci, 36
  %i.acj = getelementptr inbounds i8, ptr %i.cu, i64 %.idx.i ; 8 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 12
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !53 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acj, i64 20
  %i.acq = fmul fast float %i.acn, f0xBE638E39
  %i.acr = fmul fast float %i.acn, f0x3C360B61    ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.act = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  %i.acu = load float, ptr %i.act, align 4, !tbaa !53 ; 3 uses
  %i.acv = fmul fast float %i.acu, f0x3D360B61    ; 3 uses
  %i.acw = load float, ptr %i.acj, align 4, !tbaa !53 ; 3 uses
  %i.acx = insertelement <2 x float> poison, float %i.acw, i64 0
  %i.acy = shufflevector <2 x float> %i.acx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acz = fmul fast <2 x float> %i.acy, <float f0xBE638E39, float f0x3C360B61> ; 5 uses
  %i.ada = fmul fast float %i.acw, f0x3CB60B61    ; 3 uses
  %i.adb = insertelement <2 x float> poison, float %i.acn, i64 0
  %i.adc = shufflevector <2 x float> %i.adb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.add = fmul fast <2 x float> %i.adc, <float f0x3E638E39, float f0x3CB60B61> ; 4 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.acz, %i.add
  %i.ade = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adf = fadd fast <2 x float> %i.add, %i.acz
  %i.adg = insertelement <4 x float> poison, float %i.acw, i64 0
  %i.adh = shufflevector <4 x float> %i.adg, <4 x float> %i.ade, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.adi = shufflevector <2 x float> %i.adf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adj = shufflevector <4 x float> %i.adh, <4 x float> %i.adi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %foldExtExtBinop182 = fsub fast <2 x float> %i.acz, %i.add
  %i.adk = extractelement <2 x float> %foldExtExtBinop182, i64 1
  %i.adl = fadd fast float %i.acr, %i.ada
  %i.adm = fsub fast float %i.ada, %i.acr
  %i.adn = getelementptr inbounds nuw i8, ptr %.118.i, i64 16
  %i.ado = load <2 x float>, ptr %i.acs, align 4, !tbaa !53 ; 5 uses
  %i.adp = shufflevector <2 x float> %i.ado, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adq = shufflevector <2 x float> %i.ado, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adr = extractelement <2 x float> %i.ado, i64 0 ; 2 uses
  %i.ads = extractelement <2 x float> %i.ado, i64 1 ; 2 uses
  %i.adt = fmul fast float %i.ads, f0x3E638E39    ; 2 uses
  %i.adu = fmul fast float %i.ads, f0x3C360B61    ; 2 uses
  %i.adv = fmul fast <2 x float> %i.ado, <float f0x3C360B61, float f0x3CB60B61> ; 2 uses
  %i.adw = extractelement <2 x float> %i.adv, i64 0 ; 2 uses
  %i.adx = extractelement <2 x float> %i.adv, i64 1 ; 2 uses
  %i.ady = fadd fast float %i.adx, %i.adw
  %i.adz = fadd fast float %i.ady, %i.acv         ; 3 uses
  %i.aea = fsub fast float %i.adw, %i.adx
  %i.aeb = fadd fast float %i.aea, %i.acv         ; 3 uses
  %i.aec = fmul fast float %i.adr, f0x3CB60B61    ; 2 uses
  %i.aed = fadd fast float %i.adu, %i.aec
  %i.aee = fsub fast float %i.aec, %i.adu
  %i.aef = fmul fast float %i.adr, f0x3BB60B61
  %i.aeg = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.adq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aeh = shufflevector <4 x float> %i.aeg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aei = fmul fast <4 x float> %i.aeh, <float -0.000000e+00, float f0xBE638E39, float f0xBE638E39, float f0x3D360B61> ; 3 uses
  %i.aej = extractelement <4 x float> %i.aei, i64 1 ; 2 uses
  %.neg9.2.i = fsub fast float %i.aej, %i.adt
  %i.aek = fadd fast float %i.adt, %i.aej
  %i.ael = fadd reassoc nsz arcp contract afn <4 x float> %i.adj, %i.aei
  %i.aem = insertelement <4 x float> poison, float %i.adk, i64 0
  %i.aen = insertelement <4 x float> %i.aem, float %i.adl, i64 1
  %i.aeo = insertelement <4 x float> %i.aen, float %i.adm, i64 2
  %i.aep = shufflevector <4 x float> %i.aeo, <4 x float> %i.adp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aeq = shufflevector <4 x float> %i.aei, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 poison, i32 poison, i32 7>
  %i.aer = insertelement <4 x float> poison, float %i.aef, i64 0
  %i.aes = shufflevector <4 x float> %i.aer, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.aet = shufflevector <4 x float> %i.aeq, <4 x float> %i.aes, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aeu = fadd reassoc nsz arcp contract afn <4 x float> %i.aep, %i.aet
  %i.aev = getelementptr inbounds nuw i8, ptr %.118.i, i64 32
  %i.aew = getelementptr inbounds nuw i8, ptr %.118.i, i64 36
  %i.aex = load <2 x float>, ptr %i.ack, align 4, !tbaa !53 ; 2 uses
  %i.aey = load <2 x float>, ptr %i.aco, align 4, !tbaa !53 ; 2 uses
  %i.aez = load float, ptr %i.acp, align 4, !tbaa !53 ; 3 uses
  %i.afa = shufflevector <2 x float> %i.aex, <2 x float> %i.aey, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.afb = fmul fast <2 x float> %i.afa, splat (float f0x3E638E39) ; 2 uses
  %i.afc = shufflevector <2 x float> %i.aex, <2 x float> %i.aey, <2 x i32> <i32 1, i32 3>
  %i.afd = fmul fast <2 x float> %i.afc, splat (float f0xBE638E39) ; 3 uses
  %i.afe = insertelement <2 x float> %i.acz, float %i.acq, i64 1 ; 2 uses
  %i.aff = fsub fast <2 x float> %i.afe, %i.afb
  %i.afg = fadd fast <2 x float> %i.aff, %i.afd   ; 3 uses
  %i.afh = shufflevector <2 x float> %i.afg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.afi = extractelement <2 x float> %i.afd, i64 0 ; 2 uses
  %i.afj = fmul fast <4 x float> %i.afh, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.afk = shufflevector <4 x float> %i.afj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.afl = fsub fast <4 x float> %i.afj, %i.afk
  %i.afm = fadd fast <4 x float> %i.afj, %i.afk
  %i.afn = shufflevector <4 x float> %i.afl, <4 x float> %i.afm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %11 = extractelement <2 x float> %i.afg, i64 0  ; 2 uses
  %12 = fmul fast float %11, f0x3CB60B61          ; 2 uses
  %i.afo = extractelement <2 x float> %i.afg, i64 1
  %13 = fmul fast float %i.afo, f0x3C360B61       ; 2 uses
  %14 = fadd fast float %13, %12
  %15 = fsub fast float %12, %13
  %16 = getelementptr inbounds nuw i8, ptr %.118.i, i64 52
  %i.afp = getelementptr inbounds nuw i8, ptr %.118.i, i64 56
  %i.afq = getelementptr inbounds nuw i8, ptr %.118.i, i64 60
  %i.afr = getelementptr inbounds nuw i8, ptr %.118.i, i64 64
  %i.afs = getelementptr inbounds nuw i8, ptr %.118.i, i64 68
  %i.aft = fadd fast <2 x float> %i.afb, %i.afe
  %i.afu = fadd fast <2 x float> %i.aft, %i.afd   ; 3 uses
  %i.afv = shufflevector <2 x float> %i.afu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.afw = fmul fast <4 x float> %i.afv, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.afx = shufflevector <4 x float> %i.afw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.afy = fsub fast <4 x float> %i.afw, %i.afx
  %i.afz = fadd fast <4 x float> %i.afw, %i.afx
  %i.aga = shufflevector <4 x float> %i.afy, <4 x float> %i.afz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %17 = extractelement <2 x float> %i.afu, i64 0  ; 2 uses
  %18 = fmul fast float %17, f0x3CB60B61          ; 2 uses
  %i.agb = extractelement <2 x float> %i.afu, i64 1
  %19 = fmul fast float %i.agb, f0x3C360B61       ; 2 uses
  %20 = fadd fast float %19, %18
  %21 = fsub fast float %18, %19
  %22 = getelementptr inbounds nuw i8, ptr %.118.i, i64 84
  %i.agc = getelementptr inbounds nuw i8, ptr %.118.i, i64 88
  %i.agd = getelementptr inbounds nuw i8, ptr %.118.i, i64 92
  %i.age = getelementptr inbounds nuw i8, ptr %.118.i, i64 96
  %23 = fmul fast float %i.adz, f0x3BB60B61       ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.118.i, i64 100
  %i.agg = fmul fast <2 x float> %i.afa, splat (float f0x3CB60B61) ; 2 uses
  %i.agh = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.agi = insertelement <2 x float> %i.agh, float %i.acr, i64 1 ; 2 uses
  %i.agj = fadd fast <2 x float> %i.agg, %i.agi
  %i.agk = insertelement <4 x float> poison, float %i.adz, i64 0
  %i.agl = shufflevector <4 x float> %i.agk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agm = fmul fast <4 x float> %i.agl, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %24 = getelementptr inbounds nuw i8, ptr %.118.i, i64 116
  %i.agn = getelementptr inbounds nuw i8, ptr %.118.i, i64 120
  %i.ago = getelementptr inbounds nuw i8, ptr %.118.i, i64 124
  %i.agp = getelementptr inbounds nuw i8, ptr %.118.i, i64 128
  %25 = fmul fast float %i.aeb, f0x3BB60B61       ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.118.i, i64 132
  %i.agr = fsub fast <2 x float> %i.agi, %i.agg
  %i.ags = insertelement <4 x float> poison, float %i.aeb, i64 0
  %i.agt = shufflevector <4 x float> %i.ags, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agu = fmul fast <4 x float> %i.agt, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %26 = getelementptr inbounds nuw i8, ptr %.118.i, i64 148
  %i.agv = getelementptr inbounds nuw i8, ptr %.118.i, i64 152
  %i.agw = getelementptr inbounds nuw i8, ptr %.118.i, i64 156
  %i.agx = getelementptr inbounds nuw i8, ptr %.118.i, i64 160
  %i.agy = getelementptr inbounds nuw i8, ptr %.118.i, i64 164
  %i.agz = fmul fast <2 x float> %i.afa, splat (float f0x3C360B61) ; 2 uses
  %i.aha = insertelement <2 x float> %i.add, float %i.ada, i64 0 ; 2 uses
  %i.ahb = fadd fast <2 x float> %i.agz, %i.aha
  %27 = getelementptr inbounds nuw i8, ptr %.118.i, i64 180
  %i.ahc = getelementptr inbounds nuw i8, ptr %.118.i, i64 184
  %i.ahd = getelementptr inbounds nuw i8, ptr %.118.i, i64 188
  %i.ahe = getelementptr inbounds nuw i8, ptr %.118.i, i64 192
  %i.ahf = getelementptr inbounds nuw i8, ptr %.118.i, i64 196
  %i.ahg = fsub fast <2 x float> %i.aha, %i.agz
  %i.ahh = getelementptr inbounds nuw i8, ptr %.118.i, i64 212
  %i.ahi = getelementptr inbounds nuw i8, ptr %.118.i, i64 220
  %i.ahj = fmul fast float %i.aez, f0x3E638E39    ; 2 uses
  %.neg4.7.i = fsub fast float %i.afi, %i.ahj
  %i.ahk = fadd fast float %i.ahj, %i.afi
  %i.ahl = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.acu, i64 0
  %i.ahm = shufflevector <4 x float> %i.ahl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ahn = fmul fast <4 x float> %i.ahm, <float f0x3BB60B61, float -0.000000e+00, float f0xBE638E39, float f0xBE638E39> ; 4 uses
  %i.aho = extractelement <4 x float> %i.ahn, i64 0
  %i.ahp = fadd fast float %i.aed, %i.aho         ; 3 uses
  %i.ahq = extractelement <4 x float> %i.ahn, i64 2 ; 2 uses
  %i.ahr = fadd fast float %.neg9.2.i, %i.ahq     ; 3 uses
  %28 = fadd fast float %i.aek, %i.ahq            ; 3 uses
  %29 = fmul fast float %i.ahr, f0x3BB60B61       ; 2 uses
  %30 = load float, ptr %i.acl, align 4, !tbaa !53 ; 3 uses
  store <4 x float> %i.ael, ptr %.118.i, align 4, !tbaa !53
  store <4 x float> %i.aeu, ptr %i.adn, align 4, !tbaa !53
  %i.ahs = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahu = fmul fast <4 x float> %i.aht, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.ahv = fadd fast <4 x float> %i.afn, %i.ahu
  %31 = fadd fast float %14, %29
  %32 = fadd fast float %15, %29
  store float %11, ptr %i.aev, align 4, !tbaa !53
  store <4 x float> %i.ahv, ptr %i.aew, align 4, !tbaa !53
  store float %31, ptr %16, align 4, !tbaa !53
  store float %32, ptr %i.afp, align 4, !tbaa !53
  store float %i.ahr, ptr %i.afq, align 4, !tbaa !53
  %33 = fmul fast float %28, f0x3BB60B61          ; 2 uses
  %i.ahw = insertelement <4 x float> poison, float %28, i64 0
  %i.ahx = shufflevector <4 x float> %i.ahw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahy = fmul fast <4 x float> %i.ahx, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.ahz = fadd fast <4 x float> %i.aga, %i.ahy
  %34 = fadd fast float %20, %33
  %35 = fadd fast float %21, %33
  store float %17, ptr %i.afr, align 4, !tbaa !53
  store <4 x float> %i.ahz, ptr %i.afs, align 4, !tbaa !53
  store float %34, ptr %22, align 4, !tbaa !53
  store float %35, ptr %i.agc, align 4, !tbaa !53
  store float %28, ptr %i.agd, align 4, !tbaa !53
  %i.aia = insertelement <2 x float> poison, float %30, i64 0
  %i.aib = insertelement <2 x float> %i.aia, float %i.aez, i64 1 ; 2 uses
  %i.aic = fmul fast <2 x float> %i.aib, splat (float f0x3D360B61) ; 2 uses
  %i.aid = fadd fast <2 x float> %i.agj, %i.aic   ; 3 uses
  %i.aie = shufflevector <2 x float> %i.aid, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.aif = fmul fast <4 x float> %i.aie, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.aig = shufflevector <4 x float> %i.aif, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.aih = fsub fast <4 x float> %i.aif, %i.aig
  %i.aii = fadd fast <4 x float> %i.aif, %i.aig
  %i.aij = shufflevector <4 x float> %i.aih, <4 x float> %i.aii, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aik = fadd fast <4 x float> %i.aij, %i.agm
  %i.ail = extractelement <2 x float> %i.aid, i64 0 ; 2 uses
  %36 = fmul fast float %i.ail, f0x3CB60B61       ; 2 uses
  %37 = extractelement <2 x float> %i.aid, i64 1
  %38 = fmul fast float %37, f0x3C360B61          ; 2 uses
  %39 = fadd fast float %38, %36
  %i.aim = fadd fast float %39, %23
  %i.ain = fsub fast float %36, %38
  %40 = fadd fast float %i.ain, %23
  store float %i.ail, ptr %i.age, align 4, !tbaa !53
  store <4 x float> %i.aik, ptr %i.agf, align 4, !tbaa !53
  store float %i.aim, ptr %24, align 4, !tbaa !53
  store float %40, ptr %i.agn, align 4, !tbaa !53
  store float %i.adz, ptr %i.ago, align 4, !tbaa !53
  %i.aio = fadd fast <2 x float> %i.agr, %i.aic   ; 3 uses
  %i.aip = shufflevector <2 x float> %i.aio, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.aiq = fmul fast <4 x float> %i.aip, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.air = shufflevector <4 x float> %i.aiq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ais = fsub fast <4 x float> %i.aiq, %i.air
  %i.ait = fadd fast <4 x float> %i.aiq, %i.air
  %i.aiu = shufflevector <4 x float> %i.ais, <4 x float> %i.ait, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aiv = fadd fast <4 x float> %i.aiu, %i.agu
  %i.aiw = extractelement <2 x float> %i.aio, i64 0 ; 2 uses
  %41 = fmul fast float %i.aiw, f0x3CB60B61       ; 2 uses
  %42 = extractelement <2 x float> %i.aio, i64 1
  %43 = fmul fast float %42, f0x3C360B61          ; 2 uses
  %44 = fadd fast float %43, %41
  %45 = fadd fast float %44, %25
  %46 = fsub fast float %41, %43
  %i.aix = fadd fast float %46, %25
  store float %i.aiw, ptr %i.agp, align 4, !tbaa !53
  store <4 x float> %i.aiv, ptr %i.agq, align 4, !tbaa !53
  store float %45, ptr %26, align 4, !tbaa !53
  store float %i.aix, ptr %i.agv, align 4, !tbaa !53
  store float %i.aeb, ptr %i.agw, align 4, !tbaa !53
  %47 = fmul fast float %i.ahp, f0x3BB60B61       ; 2 uses
  %i.aiy = fmul fast <2 x float> %i.aib, splat (float f0x3BB60B61) ; 2 uses
  %i.aiz = fadd fast <2 x float> %i.ahb, %i.aiy   ; 3 uses
  %i.aja = shufflevector <2 x float> %i.aiz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ajb = fmul fast <4 x float> %i.aja, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ajc = insertelement <4 x float> poison, float %i.ahp, i64 0
  %i.ajd = shufflevector <4 x float> %i.ajc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aje = fmul fast <4 x float> %i.ajd, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.ajf = shufflevector <4 x float> %i.ajb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ajg = fsub fast <4 x float> %i.ajb, %i.ajf
  %i.ajh = fadd fast <4 x float> %i.ajb, %i.ajf
  %i.aji = shufflevector <4 x float> %i.ajg, <4 x float> %i.ajh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ajj = fadd fast <4 x float> %i.aji, %i.aje
  %i.ajk = extractelement <2 x float> %i.aiz, i64 0 ; 2 uses
  %48 = fmul fast float %i.ajk, f0x3CB60B61       ; 2 uses
  %49 = extractelement <2 x float> %i.aiz, i64 1
  %50 = fmul fast float %49, f0x3C360B61          ; 2 uses
  %51 = fadd fast float %50, %48
  %i.ajl = fadd fast float %51, %47
  %i.ajm = fsub fast float %48, %50
  %52 = fadd fast float %i.ajm, %47
  store float %i.ajk, ptr %i.agx, align 4, !tbaa !53
  store <4 x float> %i.ajj, ptr %i.agy, align 4, !tbaa !53
  store float %i.ajl, ptr %27, align 4, !tbaa !53
  store float %52, ptr %i.ahc, align 4, !tbaa !53
  store float %i.ahp, ptr %i.ahd, align 4, !tbaa !53
  %i.ajn = insertelement <4 x float> poison, float %i.aee, i64 0
  %i.ajo = insertelement <4 x float> %i.ajn, float %30, i64 1
  %i.ajp = insertelement <4 x float> %i.ajo, float %.neg4.7.i, i64 2
  %i.ajq = insertelement <4 x float> %i.ajp, float %i.ahk, i64 3
  %i.ajr = fadd reassoc nsz arcp contract afn <4 x float> %i.ajq, %i.ahn ; 3 uses
  %i.ajs = fadd fast <2 x float> %i.ahg, %i.aiy   ; 2 uses
  %i.ajt = shufflevector <2 x float> %i.ajs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %i.aju = fmul fast <4 x float> %i.ajt, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ajv = shufflevector <4 x float> %i.ajr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajw = fmul fast <4 x float> %i.ajv, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.ajx = shufflevector <4 x float> %i.aju, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ajy = fsub fast <4 x float> %i.aju, %i.ajx
  %i.ajz = fadd fast <4 x float> %i.aju, %i.ajx
  %i.aka = shufflevector <4 x float> %i.ajy, <4 x float> %i.ajz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.akb = fadd fast <4 x float> %i.aka, %i.ajw
  %i.akc = extractelement <2 x float> %i.ajs, i64 0
  store float %i.akc, ptr %i.ahe, align 4, !tbaa !53
  store <4 x float> %i.akb, ptr %i.ahf, align 4, !tbaa !53
  %i.akd = shufflevector <4 x float> %i.ajt, <4 x float> %i.ajr, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ake = fmul fast <3 x float> %i.akd, <float f0x3CB60B61, float f0x3C360B61, float f0x3BB60B61> ; 3 uses
  %i.akf = extractelement <3 x float> %i.ake, i64 0 ; 2 uses
  %i.akg = extractelement <3 x float> %i.ake, i64 1 ; 2 uses
  %i.akh = fadd fast float %i.akg, %i.akf
  %i.aki = fsub fast float %i.akf, %i.akg
  %i.akj = insertelement <2 x float> poison, float %i.akh, i64 0
  %i.akk = insertelement <2 x float> %i.akj, float %i.aki, i64 1
  %i.akl = shufflevector <3 x float> %i.ake, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.akm = fadd fast <2 x float> %i.akk, %i.akl
  store <2 x float> %i.akm, ptr %i.ahh, align 4, !tbaa !53
  store <4 x float> %i.ajr, ptr %i.ahi, align 4, !tbaa !53
  %i.akn = getelementptr inbounds nuw i8, ptr %.118.i, i64 236
  %i.ako = insertelement <4 x float> poison, float %i.aez, i64 0
  %i.akp = insertelement <4 x float> %i.ako, float %30, i64 1
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.akr = fmul fast <4 x float> %i.akq, <float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61, float f0x3CB60B61> ; 3 uses
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.akt = fadd fast <4 x float> %i.akr, %i.aks
  %i.aku = fsub fast <4 x float> %i.akr, %i.aks
  %i.akv = shufflevector <4 x float> %i.akt, <4 x float> %i.aku, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.akw = insertelement <4 x float> poison, float %i.acv, i64 0
  %i.akx = shufflevector <4 x float> %i.akw, <4 x float> %i.ahn, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.aky = fadd fast <4 x float> %i.akv, %i.akx
  store <4 x float> %i.aky, ptr %i.akn, align 4, !tbaa !53
  %i.akz = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.acu, ptr %i.akz, align 4, !tbaa !53
  %i.ala = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !457

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block177
  %.lcssa = phi ptr [ %i.da, %middle.block177 ], [ %i.ala, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader12.i, !llvm.loop !458

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %bb.d
  %i.alb = trunc nsw i64 %indvars.iv to i32
  %i.alc = sdiv i32 %i.alb, %i.ai
  %i.ald = sext i32 %i.alc to i64
  %i.ale = mul i64 %i.ax, %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ale
  %i.alg = shl i32 %.sroa.speculated, 6           ; 2 uses
  %i.alh = icmp sgt i32 %.sroa.speculated, 0      ; 3 uses
  %i.ali = sext i32 %i.alg to i64                 ; 11 uses
  %i.alj = shl nsw i32 %.sroa.speculated, 7
  %i.alk = sext i32 %i.alj to i64                 ; 3 uses
  %i.all = mul nsw i32 %.sroa.speculated, 192
  %i.alm = sext i32 %i.all to i64                 ; 3 uses
  %i.aln = zext i32 %i.alg to i64
  %i.alo = shl nsw i64 %i.ali, 2
  %i.alp = getelementptr i8, ptr %i.bl, i64 %i.cf
  %i.alq = getelementptr i8, ptr %i.alp, i64 %i.cg
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.alr = icmp eq i32 %i.br, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod190 = trunc i32 %.sroa.speculated to i1
  %xtraiter192 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.als = icmp ult i32 %i.br, 3
  %unroll_iter196 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  %lcmp.mod195 = icmp ne i32 %xtraiter192, 0
  %i.alt = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cd, 0
  %n.vec = and i64 %i.alt, 2147483640             ; 5 uses
  %i.alu = trunc nuw nsw i64 %n.vec to i32
  %i.alv = shl nuw nsw i64 %n.vec, 8
  %i.alw = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.alt
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge33.split.i, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv54.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next55.i, %._crit_edge33.split.i ] ; 6 uses
  %i.alx = shl nuw nsw i64 %indvars.iv54.i, 2
  %scevgep141 = getelementptr i8, ptr %i.alq, i64 %i.alx
  %.reass.i = mul i64 %i.aw, %indvars.iv54.i
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alf, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph8.i, label %.preheader1.i

.lr.ph8.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.alh, label %.lr.ph.us.i, label %.preheader1.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph8.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph8.i ] ; 2 uses
  %.0695.us.i = phi ptr [ %.lcssa185, %._crit_edge.us.i ], [ %i.aly, %.lr.ph8.i ] ; 2 uses
  %i.alz = mul nuw nsw i64 %indvars.iv.i54, %i.aln
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.alz ; 2 uses
  br i1 %i.alr, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.0673.us.i = phi ptr [ %i.amw, %.lr.ph.us.i.new ], [ %gep.us.i, %.lr.ph.us.i ] ; 6 uses
  %.1702.us.i = phi ptr [ %i.amx, %.lr.ph.us.i.new ], [ %.0695.us.i, %.lr.ph.us.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ama = load float, ptr %.0673.us.i, align 4, !tbaa !53
  store float %i.ama, ptr %.1702.us.i, align 4, !tbaa !53
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.ali
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !53
  %i.amd = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 4
  store float %i.amc, ptr %i.amd, align 4, !tbaa !53
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.alk
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !53
  %i.amg = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 8
  store float %i.amf, ptr %i.amg, align 4, !tbaa !53
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.alm
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !53
  %i.amj = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 12
  store float %i.ami, ptr %i.amj, align 4, !tbaa !53
  %i.amk = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 256 ; 4 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 16
  %i.amm = load float, ptr %i.amk, align 4, !tbaa !53
  store float %i.amm, ptr %i.aml, align 4, !tbaa !53
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.ali
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !53
  %i.amp = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 20
  store float %i.amo, ptr %i.amp, align 4, !tbaa !53
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.alk
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !53
  %i.ams = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 24
  store float %i.amr, ptr %i.ams, align 4, !tbaa !53
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.alm
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !53
  %i.amv = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 28
  store float %i.amu, ptr %i.amv, align 4, !tbaa !53
  %i.amw = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 512 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !2

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.0673.us.i.epil.init = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.amw, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1702.us.i.epil.init = phi ptr [ %.0695.us.i, %.lr.ph.us.i ], [ %i.amx, %._crit_edge.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.amy = load float, ptr %.0673.us.i.epil.init, align 4, !tbaa !53
  store float %i.amy, ptr %.1702.us.i.epil.init, align 4, !tbaa !53
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.ali
  %i.ana = load float, ptr %i.amz, align 4, !tbaa !53
  %i.anb = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 4
  store float %i.ana, ptr %i.anb, align 4, !tbaa !53
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.alk
  %i.and = load float, ptr %i.anc, align 4, !tbaa !53
  %i.ane = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 8
  store float %i.and, ptr %i.ane, align 4, !tbaa !53
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.alm
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !53
  %i.anh = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 12
  store float %i.ang, ptr %i.anh, align 4, !tbaa !53
  %i.ani = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa185 = phi ptr [ %i.amx, %._crit_edge.us.i.unr-lcssa ], [ %i.ani, %.epil.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.anj = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.anj, label %.lr.ph.us.i, label %.preheader1.loopexit.i, !llvm.loop !3

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.ank = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit.i, %bb.e
  %.069.lcssa.i = phi ptr [ %i.aly, %bb.e ], [ %.lcssa185, %.preheader1.loopexit.i ] ; 3 uses
  %.068.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ank, %.preheader1.loopexit.i ] ; 4 uses
  %i.anl = or disjoint i32 %.068.lcssa.i, 1
  %i.anm = icmp slt i32 %i.anl, %.sroa.speculated82
  br i1 %i.anm, label %.lr.ph17.i, label %.preheader.i

.preheader1.thread.i:                             ; preds = %.lr.ph8.i
  br i1 %i.bd, label %.lr.ph17.split.preheader.i, label %.preheader.i

.lr.ph17.i:                                       ; preds = %.preheader1.i
  %invariant.gep20.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.alh, label %.lr.ph.us22.preheader.i, label %.lr.ph17.split.preheader.i

.lr.ph17.split.preheader.i:                       ; preds = %.lr.ph17.i, %.preheader1.thread.i
  %.069.lcssa6167.i = phi ptr [ %.069.lcssa.i, %.lr.ph17.i ], [ %i.aly, %.preheader1.thread.i ]
  %.068.lcssa6266.i = phi i32 [ %.068.lcssa.i, %.lr.ph17.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.ann = add i32 %.068.lcssa6266.i, 2
  %i.ano = sub i32 %i.bb, %.068.lcssa6266.i
  %i.anp = and i32 %i.ano, -2
  %i.anq = add i32 %i.ann, %i.anp
  br label %.preheader.i

.lr.ph.us22.preheader.i:                          ; preds = %.lr.ph17.i
  %i.anr = sext i32 %.068.lcssa.i to i64
  br label %.lr.ph.us22.i

.lr.ph.us22.i:                                    ; preds = %._crit_edge.us23.i, %.lr.ph.us22.preheader.i
  %indvars.iv46.i = phi i64 [ %i.anr, %.lr.ph.us22.preheader.i ], [ %indvars.iv.next47.i, %._crit_edge.us23.i ] ; 2 uses
  %.27115.us.i = phi ptr [ %.069.lcssa.i, %.lr.ph.us22.preheader.i ], [ %.lcssa186, %._crit_edge.us23.i ] ; 2 uses
  %i.ans = mul nsw i64 %indvars.iv46.i, %i.ali
  %gep.us21.i = getelementptr [4 x i8], ptr %invariant.gep20.i, i64 %i.ans ; 2 uses
  br i1 %i.als, label %.epil.preheader191, label %.lr.ph.us22.i.new

.lr.ph.us22.i.new:                                ; preds = %.lr.ph.us22.i, %.lr.ph.us22.i.new
  %.06513.us.i = phi ptr [ %i.aop, %.lr.ph.us22.i.new ], [ %gep.us21.i, %.lr.ph.us22.i ] ; 6 uses
  %.312.us.i = phi ptr [ %i.aoq, %.lr.ph.us22.i.new ], [ %.27115.us.i, %.lr.ph.us22.i ] ; 9 uses
  %niter197 = phi i32 [ %niter197.next.3, %.lr.ph.us22.i.new ], [ 0, %.lr.ph.us22.i ]
  %i.ant = load float, ptr %.06513.us.i, align 4, !tbaa !53
  store float %i.ant, ptr %.312.us.i, align 4, !tbaa !53
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i, i64 %i.ali
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !53
  %i.anw = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 4
  store float %i.anv, ptr %i.anw, align 4, !tbaa !53
  %i.anx = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 256 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 8
  %i.anz = load float, ptr %i.anx, align 4, !tbaa !53
end_hunk_0
