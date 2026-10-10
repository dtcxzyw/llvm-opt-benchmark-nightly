Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  %sqrt.i187 = tail call float @llvm.sqrt.f32(float %i.zc)
  %i.zd = load float, ptr %i.xu, align 4, !tbaa !52
  %i.ze = load <2 x float>, ptr %i.xx, align 4, !tbaa !52 ; 2 uses
  %i.zf = load float, ptr %i.yh, align 4, !tbaa !52
  %i.zg = load float, ptr %i.yk, align 4, !tbaa !52
  %i.zh = load <2 x float>, ptr %i.ya, align 4, !tbaa !52 ; 2 uses
  %i.zi = shufflevector <2 x float> %i.ze, <2 x float> %i.zh, <2 x i32> <i32 0, i32 2>
  %i.zj = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zk = shufflevector <2 x float> %i.zj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zl = fsub <2 x float> %i.zi, %i.zk           ; 2 uses
  %i.zm = shufflevector <2 x float> %i.ze, <2 x float> %i.zh, <2 x i32> <i32 1, i32 3>
  %i.zn = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = fsub <2 x float> %i.zm, %i.zo           ; 2 uses
  %i.zq = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.zr = insertelement <2 x float> %i.zq, float %i.ym, i64 1
  %i.zs = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zt = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zu = fsub <2 x float> %i.zr, %i.zt           ; 2 uses
  %i.zv = shufflevector <2 x float> %i.yo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zw = fmul <2 x float> %i.zv, %i.zp
  %i.zx = shufflevector <2 x float> %i.yo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zl, <2 x float> %i.zx, <2 x float> %i.zw)
  %i.zz = insertelement <2 x float> poison, float %i.yf, i64 0
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zu, <2 x float> %i.aaa, <2 x float> %i.zy) ; 3 uses
  %i.aac = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aab, <2 x float> %i.zl) ; 4 uses
  %i.aae = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aaf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aae, <2 x float> %i.aab, <2 x float> %i.zp) ; 4 uses
  %i.aag = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.aah = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aah, <2 x float> %i.aab, <2 x float> %i.zu) ; 4 uses
  %i.aaj = fmul <2 x float> %i.aaf, %i.aaf
  %i.aak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aad, <2 x float> %i.aad, <2 x float> %i.aaj)
  %i.aal = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aai, <2 x float> %i.aai, <2 x float> %i.aak) ; 2 uses
  %shift = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fmul <2 x float> %i.aal, %shift
  %i.aam = extractelement <2 x float> %foldExtExtBinop349, i64 0
  %i.aan = tail call float @sqrtf(float noundef %i.aam) #11 ; 3 uses
  %shift351 = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop352 = fmul <2 x float> %i.aaf, %shift351
  %i.aao = extractelement <2 x float> %foldExtExtBinop352, i64 0
  %i.aap = extractelement <2 x float> %i.aad, i64 0
  %i.aaq = extractelement <2 x float> %i.aad, i64 1
  %i.aar = tail call float @llvm.fmuladd.f32(float %i.aap, float %i.aaq, float %i.aao)
  %i.aas = extractelement <2 x float> %i.aai, i64 0
  %i.aat = extractelement <2 x float> %i.aai, i64 1
  %i.aau = tail call float @llvm.fmuladd.f32(float %i.aas, float %i.aat, float %i.aar)
  %i.aav = fcmp oeq float %i.aan, 0.000000e+00
  %i.aaw = fcmp oeq float %i.zc, 0.000000e+00
  %i.aax = insertelement <2 x float> poison, float %i.aan, i64 0
  %i.aay = insertelement <2 x float> %i.aax, float %sqrt.i187, i64 1
  %i.aaz = fdiv <2 x float> splat (float 1.000000e+00), %i.aay ; 2 uses
  %i.aba = extractelement <2 x float> %i.aaz, i64 0
  %i.abb = select i1 %i.aav, float 0.000000e+00, float %i.aba
  %i.abc = fmul float %i.abb, %i.aau              ; 2 uses
  %i.abd = tail call float @llvm.fabs.f32(float %i.abc) ; 2 uses
  %i.abe = fcmp ogt float %i.abd, 1.000000e+00
  %i.abf = select i1 %i.abe, float 1.000000e+00, float %i.abd ; 3 uses
  %i.abg = tail call float @llvm.fmuladd.f32(float %i.abf, float f0x3D52DA73, float f0xBE5253A5)
  %i.abh = tail call float @llvm.fmuladd.f32(float %i.abf, float %i.abg, float f0x3FC900CE)
  %i.abi = fsub float 1.000000e+00, %i.abf
  %i.abj = tail call float @sqrtf(float noundef %i.abi) #11
  %i.abk = fmul float %i.abj, %i.abh              ; 2 uses
  %i.abl = fcmp olt float %i.abc, 0.000000e+00
  %i.abm = fsub float f0x40490FDA, %i.abk
  %i.abn = select i1 %i.abl, float %i.abm, float %i.abk
  %i.abo = extractelement <2 x float> %i.aaz, i64 1
  %i.abp = select i1 %i.aaw, float 0.000000e+00, float %i.abo
  %i.abq = fmul float %i.abp, %i.abn              ; 2 uses
  %i.abr = fmul float %i.aan, %i.abq
  %.0.i = select i1 %i.wc, float %i.abr, float %i.abq ; 2 uses
  %i.abs = load <2 x float>, ptr %i.wp, align 4, !tbaa !52
  %i.abt = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.abu = shufflevector <2 x float> %i.abt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yx, <2 x float> %i.abu, <2 x float> %i.abs)
  store <2 x float> %i.abv, ptr %i.wp, align 4, !tbaa !52
  %i.abw = getelementptr inbounds nuw i8, ptr %i.wp, i64 8 ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !52
  %i.aby = tail call float @llvm.fmuladd.f32(float %i.yy, float %.0.i, float %i.abx)
  store float %i.aby, ptr %i.abw, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i188, label %.loopexit.i189, label %bb.ap, !llvm.loop !43

.loopexit.i189:                                   ; preds = %bb.as, %bb.ao
  %i.abz = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.abz, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph226, label %bb.ao, !llvm.loop !44

.lr.ph223:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph223.preheader.new
  %.0130222 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %i.acv, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter385 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter385.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.aca = trunc i64 %.0130222 to i32             ; 2 uses
  %i.acb = and i64 %.0130222, 4294967294
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acb ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.acd, %i.aca
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph223, %.lr.ph.i191
  %i.ace = phi i32 [ %i.aci, %.lr.ph.i191 ], [ %i.acd, %.lr.ph223 ] ; 3 uses
  %i.acf = phi ptr [ %i.ach, %.lr.ph.i191 ], [ %i.acc, %.lr.ph223 ]
  %i.acg = zext i32 %i.ace to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acg ; 2 uses
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !50 ; 3 uses
  store i32 %i.aci, ptr %i.acf, align 4, !tbaa !50
  %.not.i192 = icmp eq i32 %i.ace, %i.aci
  br i1 %.not.i192, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i191, %.lr.ph223
  %.0.lcssa.i = phi i32 [ %i.aca, %.lr.ph223 ], [ %i.ace, %.lr.ph.i191 ]
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222
  store i32 %.0.lcssa.i, ptr %i.acj, align 4, !tbaa !50
  %i.ack = or disjoint i64 %.0130222, 1           ; 3 uses
  %i.acl = trunc i64 %i.ack to i32                ; 2 uses
  %i.acm = and i64 %i.ack, 4294967295
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acm ; 2 uses
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.aco, %i.acl
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1

.lr.ph.i191.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i191.1
  %i.acp = phi i32 [ %i.act, %.lr.ph.i191.1 ], [ %i.aco, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.acq = phi ptr [ %i.acs, %.lr.ph.i191.1 ], [ %i.acn, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.acr = zext i32 %i.acp to i64
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acr ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !50 ; 3 uses
  store i32 %i.act, ptr %i.acq, align 4, !tbaa !50
  %.not.i192.1 = icmp eq i32 %i.acp, %i.act
  br i1 %.not.i192.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i191.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.acl, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.acp, %.lr.ph.i191.1 ]
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ack
  store i32 %.0.lcssa.i.1, ptr %i.acu, align 4, !tbaa !50
  %i.acv = add nuw i64 %.0130222, 2               ; 2 uses
  %niter385.next.1 = add nuw i64 %niter385, 2     ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %._crit_edge224.unr-lcssa, label %.lr.ph223, !llvm.loop !45

.lr.ph228:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit199, %._crit_edge224
  %i.acw = and i32 %10, 2
  %i.acx = icmp eq i32 %i.acw, 0
  br label %bb.at

.lr.ph226:                                        ; preds = %.loopexit.i189, %_ZN7meshoptL7follow2EPjj.exit199
  %.0129225 = phi i64 [ %i.adp, %_ZN7meshoptL7follow2EPjj.exit199 ], [ 0, %.loopexit.i189 ] ; 5 uses
  %i.acy = trunc i64 %.0129225 to i32
  %i.acz = and i64 %.0129225, 4294967295
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.acz ; 2 uses
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !50 ; 2 uses
  %.not11.i194 = icmp eq i32 %i.adb, %i.acy
  br i1 %.not11.i194, label %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge, label %.lr.ph.i195

.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge: ; preds = %.lr.ph226
  %.pre = and i64 %.0129225, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit199

.lr.ph.i195:                                      ; preds = %.lr.ph226, %.lr.ph.i195
  %i.adc = phi i32 [ %i.adg, %.lr.ph.i195 ], [ %i.adb, %.lr.ph226 ] ; 2 uses
  %i.add = phi ptr [ %i.adf, %.lr.ph.i195 ], [ %i.ada, %.lr.ph226 ]
  %i.ade = zext i32 %i.adc to i64                 ; 2 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.ade ; 2 uses
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !50 ; 3 uses
  store i32 %i.adg, ptr %i.add, align 4, !tbaa !50
  %.not.i196 = icmp eq i32 %i.adc, %i.adg
  br i1 %.not.i196, label %_ZN7meshoptL7follow2EPjj.exit199, label %.lr.ph.i195, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit199:                 ; preds = %.lr.ph.i195, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge ], [ %i.ade, %.lr.ph.i195 ]
  %i.adh = getelementptr inbounds nuw i8, ptr %i.of, i64 %.pre-phi
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !58
  %i.adj = and i8 %i.adi, 1
  %.not148 = icmp eq i8 %i.adj, 0
  %i.adk = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129225, 48
  %i.adl = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.adm = getelementptr i8, ptr %i.adl, i64 44
  store float %i.adk, ptr %i.adm, align 4, !tbaa !52
  %i.adn = getelementptr i8, ptr %i.adl, i64 28
  store float %i.adk, ptr %i.adn, align 4, !tbaa !52
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 12
  store float %i.adk, ptr %i.ado, align 4, !tbaa !52
  %i.adp = add nuw nsw i64 %.0129225, 1           ; 2 uses
  %exitcond250.not = icmp eq i64 %i.adp, %i.a
  br i1 %exitcond250.not, label %.lr.ph228, label %.lr.ph226, !llvm.loop !46

bb.at:                                            ; preds = %.lr.ph228, %bb.aw
  %.0128227 = phi i64 [ 0, %.lr.ph228 ], [ %i.aed, %bb.aw ] ; 4 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0128227
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !50
  %i.ads = zext i32 %i.adr to i64
  %i.adt = icmp eq i64 %.0128227, %i.ads
  br i1 %i.adt, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.idx147 = shl nuw nsw i64 %.0128227, 4
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %12 = load float, ptr %i.adu, align 4, !tbaa !52 ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.adu, i64 4 ; 2 uses
  %i.adv = load <2 x float>, ptr %13, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop354 = fmul <2 x float> %i.adv, %i.adv
  %i.adw = extractelement <2 x float> %foldExtExtBinop354, i64 0
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %i.adw)
  %15 = extractelement <2 x float> %i.adv, i64 1  ; 2 uses
  %i.adx = tail call float @llvm.fmuladd.f32(float %15, float %15, float %14) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.adx)
  %i.ady = fcmp oeq float %i.adx, 0.000000e+00
  %i.adz = fdiv float 1.000000e+00, %sqrt
  %i.aea = select i1 %i.ady, float 0.000000e+00, float %i.adz ; 3 uses
  %16 = fmul float %12, %i.aea                    ; 2 uses
  store float %16, ptr %i.adu, align 4, !tbaa !52
  %17 = insertelement <2 x float> poison, float %i.aea, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %i.adv, %18
  store <2 x float> %19, ptr %13, align 4, !tbaa !52
  br i1 %i.acx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.aeb = fcmp oeq float %i.aea, 0.000000e+00
  %i.aec = select i1 %i.aeb, float 1.000000e+00, float %16
  store float %i.aec, ptr %i.adu, align 4, !tbaa !52
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at
  %i.aed = add nuw i64 %.0128227, 1               ; 2 uses
  %exitcond251.not = icmp eq i64 %i.aed, %2
  br i1 %exitcond251.not, label %.lr.ph230.preheader, label %bb.at, !llvm.loop !47

.lr.ph230.preheader:                              ; preds = %bb.aw
  %xtraiter386 = and i64 %2, 1
  %i.aee = icmp eq i64 %i.rd, 0
  br i1 %i.aee, label %.lr.ph230.epil.preheader, label %.lr.ph230.preheader.new

.lr.ph230.preheader.new:                          ; preds = %.lr.ph230.preheader
  %unroll_iter390 = and i64 %2, -2
  br label %.lr.ph230

._crit_edge231.loopexit.unr-lcssa:                ; preds = %bb.bc
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod388.not, label %._crit_edge231, label %.lr.ph230.epil.preheader

.lr.ph230.epil.preheader:                         ; preds = %._crit_edge231.loopexit.unr-lcssa, %.lr.ph230.preheader
  %.0229.epil.init = phi i64 [ 0, %.lr.ph230.preheader ], [ %i.afd, %._crit_edge231.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod389 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod389)
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229.epil.init
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !50
  %i.aeh = zext i32 %i.aeg to i64                 ; 2 uses
  %.not.epil = icmp eq i64 %.0229.epil.init, %i.aeh
  br i1 %.not.epil, label %._crit_edge231, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph230.epil.preheader
  %.idx.epil = shl i64 %.0229.epil.init, 4
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil
  %.idx146.epil = shl nuw nsw i64 %i.aeh, 4
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aei, ptr noundef nonnull align 4 dereferenceable(12) %i.aej, i64 12, i1 false)
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.loopexit.unr-lcssa, %bb.ax, %.lr.ph230.epil.preheader, %.preheader207
  %i.aek = load i64, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %.not3.i = icmp eq i64 %i.aek, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %._crit_edge231, %bb.ay
  %.04.i = phi i64 [ %i.aep, %bb.ay ], [ %i.aek, %._crit_edge231 ] ; 2 uses
  %i.ael = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.aem = getelementptr [8 x i8], ptr %11, i64 %.04.i
  %i.aen = getelementptr i8, ptr %i.aem, i64 -8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !15
  invoke void %i.ael(ptr noundef %i.aeo)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i200
  %i.aep = add i64 %.04.i, -1                     ; 2 uses
  %.not.i201 = icmp eq i64 %i.aep, 0
  br i1 %.not.i201, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200, !llvm.loop !0

bb.az:                                            ; preds = %.lr.ph.i200
  %i.aeq = landingpad { ptr, i32 }
          catch ptr null
  %i.aer = extractvalue { ptr, i32 } %i.aeq, 0
  tail call void @__clang_call_terminate(ptr %i.aer) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ay, %._crit_edge231
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

.lr.ph230:                                        ; preds = %bb.bc, %.lr.ph230.preheader.new
  %.0229 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %i.afd, %bb.bc ] ; 5 uses
  %niter391 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %niter391.next.1, %bb.bc ]
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !50
  %i.aeu = zext i32 %i.aet to i64                 ; 2 uses
  %.not = icmp eq i64 %.0229, %i.aeu
  br i1 %.not, label %.lr.ph230.1, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph230
  %.idx = shl i64 %.0229, 4
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx146 = shl nuw nsw i64 %i.aeu, 4
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aev, ptr noundef nonnull align 4 dereferenceable(12) %i.aew, i64 12, i1 false)
  br label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230, %bb.ba
  %i.aex = or disjoint i64 %.0229, 1              ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !50
  %i.afa = zext i32 %i.aez to i64                 ; 2 uses
  %.not.1 = icmp eq i64 %i.aex, %i.afa
  br i1 %.not.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph230.1
  %.idx.1 = shl i64 %i.aex, 4
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %.idx146.1 = shl nuw nsw i64 %i.afa, 4
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afb, ptr noundef nonnull align 4 dereferenceable(12) %i.afc, i64 12, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph230.1
  %i.afd = add nuw i64 %.0229, 2                  ; 2 uses
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %._crit_edge231.loopexit.unr-lcssa, label %.lr.ph230, !llvm.loop !48

bb.bd:                                            ; preds = %bb.v, %bb.x, %bb.aa, %bb.z, %bb.w, %bb.u
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nv, %bb.u ], [ %i.nw, %bb.v ], [ %i.nx, %bb.w ], [ %i.ny, %bb.x ], [ %i.qd, %bb.z ], [ %i.qe, %bb.aa ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #12
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
