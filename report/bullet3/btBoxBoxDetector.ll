Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBoxBoxDetector?download=true
inline.NumInlined: 309
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %i.wp = load <2 x float>, ptr %i.wm, align 4, !tbaa !18
  %i.wq = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = fmul <2 x float> %i.wq, %i.wp
  %i.ws = insertelement <2 x float> poison, float %.sroa.0805.0, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wo, <2 x float> %i.wt, <2 x float> %i.wr)
  %i.wv = load <2 x float>, ptr %i.wn, align 4, !tbaa !18
  %i.ww = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wv, <2 x float> %i.ww, <2 x float> %i.wu) ; 2 uses
  store <2 x float> %i.wx, ptr %18, align 8, !tbaa !18
  %i.wy = getelementptr inbounds nuw i8, ptr %.0663957, i64 8
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !18
  %i.xa = getelementptr inbounds nuw i8, ptr %.0663957, i64 24
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !18
  %i.xc = extractelement <2 x float> %i.wl, i64 0 ; 2 uses
  %i.xd = fmul float %i.xc, %i.xb
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.wz, float %.sroa.0805.0, float %i.xd)
  %i.xf = getelementptr inbounds nuw i8, ptr %.0663957, i64 40
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !18
  %i.xh = extractelement <2 x float> %i.wl, i64 1 ; 2 uses
  %i.xi = tail call noundef float @llvm.fmuladd.f32(float %i.xg, float %i.xh, float %i.xe) ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store float %i.xi, ptr %i.xj, align 8, !tbaa !18
  %i.xk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wx) ; 2 uses
  %i.xl = tail call noundef float @llvm.fabs.f32(float %i.xi) ; 2 uses
  %i.xm = extractelement <2 x float> %i.xk, i64 0 ; 2 uses
  %i.xn = extractelement <2 x float> %i.xk, i64 1 ; 2 uses
  %i.xo = fcmp ogt float %i.xn, %i.xm
  br i1 %i.xo, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.xp = fcmp ogt float %i.xn, %i.xl             ; 2 uses
  %. = select i1 %i.xp, i64 1, i64 2
  %.761 = select i1 %i.xp, i32 2, i32 1
  br label %.loopexit982

bb.bn:                                            ; preds = %bb.bl
  %i.xq = fcmp ogt float %i.xm, %i.xl             ; 3 uses
  %.762 = select i1 %i.xq, i64 0, i64 2
  %.764 = select i1 %i.xq, i32 2, i32 1
  %i.xr = zext i1 %i.xq to i64
  br label %.loopexit982

.loopexit982:                                     ; preds = %bb.bn, %bb.bm
  %.0658 = phi i64 [ %., %bb.bm ], [ %.762, %bb.bn ] ; 5 uses
  %.0657 = phi i64 [ 0, %bb.bm ], [ %i.xr, %bb.bn ] ; 5 uses
  %.0656 = phi i32 [ %.761, %bb.bm ], [ %.764, %bb.bn ] ; 2 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %.0658
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !18
  %i.xu = fcmp olt float %i.xt, 0.000000e+00
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %.0659965, i64 %.0658
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !18 ; 2 uses
  %i.xx = fneg float %i.xw
  %.sink1133 = select i1 %i.xu, float %i.xw, float %i.xx ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0658
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !18
  %i.ya = load <2 x float>, ptr %.0661961, align 4, !tbaa !18
  %i.yb = load <2 x float>, ptr %.0662959, align 4, !tbaa !18
  %i.yc = fsub <2 x float> %i.ya, %i.yb
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0658
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !18
  %i.yg = insertelement <2 x float> poison, float %.sink1133, i64 0
  %i.yh = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yi = insertelement <2 x float> poison, float %i.xz, i64 0
  %i.yj = insertelement <2 x float> %i.yi, float %i.yf, i64 1
  %i.yk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yh, <2 x float> %i.yj, <2 x float> %i.yc) ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.0661961, i64 8
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !18
  %i.yn = getelementptr inbounds nuw i8, ptr %.0662959, i64 8
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !18
  %i.yp = fsub float %i.ym, %i.yo
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0658
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !18
  %i.yt = tail call float @llvm.fmuladd.f32(float %.sink1133, float %i.ys, float %i.yp) ; 2 uses
  %.0655.v = select i1 %i.wd, i32 -1, i32 -4
  %.0655 = add nsw i32 %.0655.v, %.14679928939    ; 2 uses
  switch i32 %.0655, label %bb.bp [
    i32 0, label %bb.bq
    i32 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %.loopexit982
  br label %bb.bq

bb.bp:                                            ; preds = %.loopexit982
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit982, %bb.bo, %bb.bp
  %.0654 = phi i64 [ 0, %bb.bp ], [ 0, %bb.bo ], [ 1, %.loopexit982 ] ; 2 uses
  %.0653 = phi i64 [ 1, %bb.bp ], [ 2, %bb.bo ], [ 2, %.loopexit982 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %.0664955, i64 %.0654 ; 3 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !18
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !18
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !18
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.0664955, i64 %.0653 ; 3 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !18 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !18 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 32
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !18 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657 ; 3 uses
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !18
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !18
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !18
  %i.zm = zext nneg i32 %.0656 to i64             ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.zm ; 3 uses
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !18
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !18
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 32
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !18
  %i.zt = insertelement <2 x float> poison, float %i.yx, i64 0 ; 2 uses
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zv = insertelement <2 x float> poison, float %i.zj, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.zq, i64 1 ; 2 uses
  %i.zx = fmul <2 x float> %i.zu, %i.zw
  %i.zy = insertelement <2 x float> poison, float %i.yv, i64 0 ; 2 uses
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaa = insertelement <2 x float> poison, float %i.zh, i64 0
  %i.aab = insertelement <2 x float> %i.aaa, float %i.zo, i64 1 ; 2 uses
  %i.aac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zz, <2 x float> %i.aab, <2 x float> %i.zx)
  %i.aad = insertelement <2 x float> poison, float %i.yz, i64 0 ; 2 uses
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = insertelement <2 x float> poison, float %i.zl, i64 0
  %i.aag = insertelement <2 x float> %i.aaf, float %i.zs, i64 1 ; 2 uses
  %i.aah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aae, <2 x float> %i.aag, <2 x float> %i.aac) ; 5 uses
  %i.aai = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.aaj = shufflevector <2 x float> %i.aai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aak = fmul <2 x float> %i.aaj, %i.zw
  %i.aal = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.aam = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aam, <2 x float> %i.aab, <2 x float> %i.aak)
  %i.aao = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aap, <2 x float> %i.aag, <2 x float> %i.aan) ; 5 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.0659965, i64 %.0657
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !18
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.0659965, i64 %i.zm
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !18
  %i.aav = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aaw = insertelement <2 x float> %i.zt, float %i.zd, i64 1
  %i.aax = fmul <2 x float> %i.aav, %i.aaw
  %i.aay = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = insertelement <2 x float> %i.zy, float %i.zb, i64 1
  %i.aba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aay, <2 x float> %i.aaz, <2 x float> %i.aax)
  %i.abb = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.abc = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abd = insertelement <2 x float> %i.aad, float %i.zf, i64 1
  %i.abe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abc, <2 x float> %i.abd, <2 x float> %i.aba) ; 4 uses
  %i.abf = shufflevector <2 x float> %i.aah, <2 x float> %i.aaq, <2 x i32> <i32 0, i32 2>
  %i.abg = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.abh = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abi = fmul <2 x float> %i.abf, %i.abh        ; 2 uses
  %i.abj = insertelement <2 x float> poison, float %i.aau, i64 0
  %i.abk = shufflevector <2 x float> %i.aah, <2 x float> %i.aaq, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.abl = shufflevector <2 x float> %i.abj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.abm = fmul <4 x float> %i.abk, %i.abl        ; 4 uses
  %i.abn = fsub <2 x float> %i.abe, %i.abi
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.abp = fsub <4 x float> %i.abo, %i.abm
  %i.abq = fadd <4 x float> %i.abo, %i.abm
  %i.abr = shufflevector <4 x float> %i.abp, <4 x float> %i.abq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.abr, ptr %i.e, align 16, !tbaa !18
  %i.abs = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.abt = fadd <2 x float> %i.abe, %i.abi
  %i.abu = shufflevector <2 x float> %i.abt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.abv = fadd <4 x float> %i.abu, %i.abm
  %i.abw = fsub <4 x float> %i.abu, %i.abm
  %i.abx = shufflevector <4 x float> %i.abv, <4 x float> %i.abw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.abx, ptr %i.abs, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.0660963, i64 %.0654
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !18
  store float %i.abz, ptr %i.f, align 4, !tbaa !18
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %.0660963, i64 %.0653
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !18
  %i.acc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store float %i.acb, ptr %i.acc, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.acd = call fastcc noundef i32 @_ZL18intersectRectQuad2PfS_S_(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g) ; 2 uses
  %i.ace = icmp slt i32 %i.acd, 1
  br i1 %i.ace, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.acf = extractelement <2 x float> %i.aaq, i64 0
  %i.acg = fneg float %i.acf
  %i.ach = extractelement <2 x float> %i.aah, i64 1
  %i.aci = fmul float %i.ach, %i.acg
  %i.acj = extractelement <2 x float> %i.aaq, i64 1
  %i.ack = extractelement <2 x float> %i.aah, i64 0
  %i.acl = tail call float @llvm.fmuladd.f32(float %i.ack, float %i.acj, float %i.aci)
  %i.acm = fdiv float 1.000000e+00, %i.acl        ; 2 uses
  %i.acn = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.aco = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acp = fmul <2 x float> %i.aah, %i.aco
  %i.acq = fneg float %i.acm
  %i.acr = insertelement <2 x float> %i.aco, float %i.acq, i64 0
  %i.acs = fmul <2 x float> %i.aaq, %i.acr
  %i.act = zext nneg i32 %.0655 to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.0660963, i64 %i.act
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !18
  %i.acw = zext nneg i32 %.0656 to i64            ; 3 uses
  %wide.trip.count = zext nneg i32 %i.acd to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !18
  %.phi.trans.insert1092 = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.acw
  %.pre1093 = load float, ptr %.phi.trans.insert1092, align 4, !tbaa !18
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !18
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.acw
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !18
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 32
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !18
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.acw
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !18
  %i.adj = insertelement <2 x float> poison, float %.pre1093, i64 0
  %i.adk = insertelement <2 x float> %i.adj, float %i.adc, i64 1
  %i.adl = insertelement <2 x float> poison, float %.pre, i64 0
  %i.adm = insertelement <2 x float> %i.adl, float %i.acz, i64 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bu
  %indvars.iv = phi i64 [ 0, %bb.br ], [ %indvars.iv.next, %bb.bu ] ; 2 uses
  %.0643989 = phi i32 [ 0, %bb.br ], [ %.1644, %bb.bu ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.adn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.ado = load <2 x float>, ptr %i.adn, align 8, !tbaa !18 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ado, %i.abe
  %foldExtExtBinop1141 = fsub <2 x float> %i.ado, %i.abe ; 2 uses
  %i.adp = mul nsw i32 %.0643989, 3
  %i.adq = sext i32 %i.adp to i64                 ; 2 uses
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.adq ; 4 uses
  %i.ads = fneg <2 x float> %foldExtExtBinop1141
  %i.adt = shufflevector <2 x float> %foldExtExtBinop1141, <2 x float> %i.ads, <2 x i32> <i32 1, i32 3>
  %i.adu = fmul <2 x float> %i.acp, %i.adt
  %i.adv = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acs, <2 x float> %i.adv, <2 x float> %i.adu) ; 4 uses
  %i.adx = shufflevector <2 x float> %i.adw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ady = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adx, <2 x float> %i.adm, <2 x float> %i.yk)
  %i.adz = shufflevector <2 x float> %i.adw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adz, <2 x float> %i.adk, <2 x float> %i.ady)
  store <2 x float> %i.aea, ptr %i.adr, align 4, !tbaa !18
  %i.aeb = extractelement <2 x float> %i.adw, i64 1
  %i.aec = tail call float @llvm.fmuladd.f32(float %i.aeb, float %i.adf, float %i.yt)
  %i.aed = extractelement <2 x float> %i.adw, i64 0
  %i.aee = tail call float @llvm.fmuladd.f32(float %i.aed, float %i.adi, float %i.aec)
  %i.aef = getelementptr [4 x i8], ptr %i.h, i64 %i.adq
  %i.aeg = getelementptr i8, ptr %i.aef, i64 8
  store float %i.aee, ptr %i.aeg, align 4, !tbaa !18
  %i.aeh = load float, ptr %i.adr, align 4, !tbaa !18
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !18
  %i.aek = fmul float %i.xc, %i.aej
  %i.ael = tail call float @llvm.fmuladd.f32(float %.sroa.0805.0, float %i.aeh, float %i.aek)
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !18
  %i.aeo = tail call noundef float @llvm.fmuladd.f32(float %i.xh, float %i.aen, float %i.ael)
  %i.aep = fsub float %i.acv, %i.aeo              ; 2 uses
  %i.aeq = sext i32 %.0643989 to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aeq
  store float %i.aep, ptr %i.aer, align 4, !tbaa !18
  %i.aes = fcmp ult float %i.aep, 0.000000e+00
  br i1 %i.aes, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aet = shl nsw i32 %.0643989, 1
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aeu
  store <2 x float> %i.ado, ptr %i.aev, align 8, !tbaa !18
  %i.aew = add nsw i32 %.0643989, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1644 = phi i32 [ %i.aew, %bb.bt ], [ %.0643989, %bb.bs ] ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bv, label %bb.bs, !llvm.loop !31

bb.bv:                                            ; preds = %bb.bu
  %i.aex = icmp slt i32 %.1644, 1
  br i1 %i.aex, label %bb.ci, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %spec.select = tail call i32 @llvm.smin.i32(i32 %9, i32 %.1644)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 1) ; 4 uses
  %.not760 = icmp samesign ugt i32 %.1644, %spec.store.select
  br i1 %.not760, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aey = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %wide.trip.count1034 = zext nneg i32 %.1644 to i64 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.0662959, i64 8 ; 2 uses
  br i1 %i.wd, label %.lr.ph994, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx
  %i.afa = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.afb = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.bz

.lr.ph994:                                        ; preds = %bb.bx
  %i.afc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.afd = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph994, %bb.by
  %indvars.iv1030 = phi i64 [ 0, %.lr.ph994 ], [ %indvars.iv.next1031, %bb.by ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.afe = mul nuw nsw i64 %indvars.iv1030, 3     ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afe
  %i.afg = load <2 x float>, ptr %i.aff, align 4, !tbaa !18
  %i.afh = load <2 x float>, ptr %.0662959, align 4, !tbaa !18
  %i.afi = fadd <2 x float> %i.afg, %i.afh
  store <2 x float> %i.afi, ptr %19, align 8, !tbaa !18
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afe
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !18
  %i.afm = load float, ptr %i.aez, align 4, !tbaa !18
  %i.afn = fadd float %i.afl, %i.afm
  store float %i.afn, ptr %i.afd, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  %i.afo = load <2 x float>, ptr %6, align 4, !tbaa !18
  %i.afp = fneg <2 x float> %i.afo
  %i.afq = load float, ptr %i.aey, align 4, !tbaa !18
  %i.afr = fneg float %i.afq
  %.sroa.3.12.vec.insert.i772 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afr, i64 0
  store <2 x float> %i.afp, ptr %20, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i772, ptr %i.afc, align 8
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv1030
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !18
  %i.afu = fneg float %i.aft
  %i.afv = load ptr, ptr %12, align 8, !tbaa !10
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 32
  %i.afx = load ptr, ptr %i.afw, align 8
  call void %i.afx(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %19, float noundef %i.afu)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 1 ; 2 uses
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1031, %wide.trip.count1034
  br i1 %exitcond1035.not, label %.loopexit, label %bb.by, !llvm.loop !32

bb.bz:                                            ; preds = %.lr.ph, %bb.bz
  %indvars.iv1020 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1021, %bb.bz ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  %i.afy = mul nuw nsw i64 %indvars.iv1020, 3     ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv1020
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !18 ; 3 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afy
  %i.agc = load <2 x float>, ptr %i.agb, align 4, !tbaa !18
  %i.agd = load <2 x float>, ptr %.0662959, align 4, !tbaa !18
  %i.age = fadd <2 x float> %i.agc, %i.agd
  %i.agf = load <2 x float>, ptr %6, align 4, !tbaa !18
  %i.agg = fneg <2 x float> %i.agf                ; 2 uses
  %i.agh = insertelement <2 x float> poison, float %i.aga, i64 0
  %i.agi = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agg, <2 x float> %i.agi, <2 x float> %i.age)
  store <2 x float> %i.agj, ptr %21, align 8, !tbaa !18
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afy
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !18
  %i.agn = load float, ptr %i.aez, align 4, !tbaa !18
  %i.ago = fadd float %i.agm, %i.agn
  %i.agp = load float, ptr %i.aey, align 4, !tbaa !18
  %i.agq = fneg float %i.agp                      ; 2 uses
  %i.agr = call float @llvm.fmuladd.f32(float %i.agq, float %i.aga, float %i.ago)
  store float %i.agr, ptr %i.afb, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  %.sroa.3.12.vec.insert.i777 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agq, i64 0
  store <2 x float> %i.agg, ptr %22, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i777, ptr %i.afa, align 8
  %i.ags = fneg float %i.aga
  %i.agt = load ptr, ptr %12, align 8, !tbaa !10
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  %i.agv = load ptr, ptr %i.agu, align 8
  call void %i.agv(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %21, float noundef %i.ags)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 2 uses
  %exitcond1025.not = icmp eq i64 %indvars.iv.next1021, %wide.trip.count1034
  br i1 %exitcond1025.not, label %.loopexit, label %bb.bz, !llvm.loop !33

bb.ca:                                            ; preds = %bb.bw
  %i.agw = load float, ptr %i.i, align 16, !tbaa !18 ; 2 uses
  %wide.trip.count1040 = zext nneg i32 %.1644 to i64
  %i.agx = add nsw i64 %wide.trip.count1040, -1   ; 3 uses
  %xtraiter = and i64 %i.agx, 1
  %i.agy = icmp eq i32 %.1644, 2
  br i1 %i.agy, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ca
  %unroll_iter = and i64 %i.agx, -2
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.new
end_hunk_0
