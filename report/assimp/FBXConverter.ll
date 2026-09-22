Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_:bb.a
  %i.ya = insertelement <2 x float> poison, float %i.xv, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fdiv <2 x float> %i.xz, %i.yb
  %i.yd = fsub float %i.wv, %i.wr
  %i.ye = fdiv float %i.yd, %i.xv
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.yf = fcmp ogt float %i.wq, %i.ww
  br i1 %i.yf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yg = fadd float %i.wq, 1.000000e+00
  %i.yh = fsub float %i.yg, %i.wm
  %i.yi = fsub float %i.yh, %i.ww
  %i.yj = call noundef float @sqrtf(float noundef %i.yi) #27
  %i.yk = fmul float %i.yj, 2.000000e+00          ; 3 uses
  %i.yl = extractelement <2 x float> %i.wn, i64 0
  %i.ym = fadd float %i.yl, %i.wp
  %i.yn = fdiv float %i.ym, %i.yk
  %.sroa.020.4.vec.insert23.i331 = insertelement <2 x float> <float undef, float poison>, float %i.yn, i64 1
  %i.yo = fmul float %i.yk, 2.500000e-01
  %i.yp = extractelement <2 x float> %i.wn, i64 1
  %i.yq = fsub float %i.yp, %i.wu
  %i.yr = fadd float %i.wr, %i.wv
  %i.ys = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.yt = insertelement <2 x float> %i.ys, float %i.yr, i64 1
  %i.yu = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = fdiv <2 x float> %i.yt, %i.yv           ; 2 uses
  %i.yx = insertelement <2 x float> %i.yw, float %i.yo, i64 0
  %i.yy = extractelement <2 x float> %i.yw, i64 0
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.yz = fadd float %i.ww, 1.000000e+00
  %i.za = fsub float %i.yz, %i.wm
  %i.zb = fsub float %i.za, %i.wq
  %i.zc = call noundef float @sqrtf(float noundef %i.zb) #27
  %i.zd = fmul float %i.zc, 2.000000e+00          ; 3 uses
  %i.ze = extractelement <2 x float> %i.wn, i64 1
  %i.zf = fadd float %i.ze, %i.wu
  %i.zg = fdiv float %i.zf, %i.zd
  %.sroa.020.4.vec.insert.i322 = insertelement <2 x float> <float undef, float poison>, float %i.zg, i64 1
  %i.zh = fmul float %i.zd, 2.500000e-01
  %i.zi = extractelement <2 x float> %i.wn, i64 0
  %i.zj = fsub float %i.wp, %i.zi
  %i.zk = fadd float %i.wr, %i.wv
  %i.zl = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.zm = insertelement <2 x float> %i.zl, float %i.zj, i64 1
  %i.zn = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = fdiv <2 x float> %i.zm, %i.zo           ; 2 uses
  %.sroa.6.12.vec.insert.i324 = insertelement <2 x float> %i.zp, float %i.zh, i64 1
  %i.zq = extractelement <2 x float> %i.zp, i64 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cf
  %.sroa.6.0.i325 = phi <2 x float> [ %i.xn, %bb.cf ], [ %i.yc, %bb.ch ], [ %i.yx, %bb.cj ], [ %.sroa.6.12.vec.insert.i324, %bb.ck ] ; 5 uses
  %.sroa.020.0.i326 = phi <2 x float> [ %.sroa.020.4.vec.insert27.i337, %bb.cf ], [ %.sroa.020.4.vec.insert25.i334, %bb.ch ], [ %.sroa.020.4.vec.insert23.i331, %bb.cj ], [ %.sroa.020.4.vec.insert.i322, %bb.ck ] ; 4 uses
  %.sink.i.i327 = phi float [ %i.xo, %bb.cf ], [ %i.ye, %bb.ch ], [ %i.yy, %bb.cj ], [ %i.zq, %bb.ck ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %i.fi, label %._crit_edge435, label %.lr.ph431

.lr.ph431:                                        ; preds = %bb.cl
  %.sroa.0384.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i326, i64 1
  %i.zr = fneg float %.sroa.0384.4.vec.extract
  %i.zs = shufflevector <2 x float> %.sroa.6.0.i325, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zt = shufflevector <2 x float> %.sroa.6.0.i325, <2 x float> %.sroa.020.0.i326, <2 x i32> <i32 1, i32 3>
  %i.zu = shufflevector <2 x float> %.sroa.020.0.i326, <2 x float> %.sroa.6.0.i325, <2 x i32> <i32 1, i32 2>
  %i.zv = insertelement <2 x float> poison, float %.sink.i.i327, i64 0
  %i.zw = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zx = insertelement <2 x float> %.sroa.020.0.i326, float %.sink.i.i327, i64 0
  %i.zy = insertelement <2 x float> poison, float %i.zr, i64 0
  %i.zz = insertelement <2 x float> %i.zy, float %.sink.i.i327, i64 1
  br label %bb.co

bb.cm:                                            ; preds = %._crit_edge.i.i305
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  %i.aab = load ptr, ptr %26, align 8             ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.vm
  br i1 %i.aac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.cm
  %i.aad = load i64, ptr %i.vm, align 8
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.cu

bb.cn:                                            ; preds = %bb.ce
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.co:                                            ; preds = %.lr.ph431, %bb.co
  %.0142429 = phi i64 [ 0, %.lr.ph431 ], [ %i.abg, %bb.co ] ; 2 uses
  %i.aag = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %.0142429 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8 ; 2 uses
  %i.aai = load float, ptr %i.aah, align 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 12
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 16 ; 2 uses
  %i.aal = load <2 x float>, ptr %i.aaj, align 4  ; 5 uses
  %i.aam = load <2 x float>, ptr %i.aak, align 4  ; 3 uses
  %i.aan = fneg <2 x float> %i.aal
  %i.aao = extractelement <2 x float> %i.aam, i64 1
  %i.aap = fneg float %i.aao
  %i.aaq = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aar = fmul <2 x float> %i.aaq, %i.zz
  %i.aas = insertelement <2 x float> poison, float %i.aai, i64 0
  %i.aat = shufflevector <2 x float> %i.aas, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aau = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aat, <2 x float> %i.zx, <2 x float> %i.aar)
  %i.aav = fneg <2 x float> %i.aal
  %i.aaw = shufflevector <2 x float> %i.aal, <2 x float> %i.aav, <2 x i32> <i32 3, i32 1>
  %i.aax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %.sroa.6.0.i325, <2 x float> %i.aau)
  %i.aay = insertelement <2 x float> poison, float %i.aap, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaz, <2 x float> %i.zs, <2 x float> %i.aax)
  %i.abb = fmul <2 x float> %i.zw, %i.aam
  %i.abc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aat, <2 x float> %.sroa.6.0.i325, <2 x float> %i.abb)
  %i.abd = shufflevector <2 x float> %i.aam, <2 x float> %i.aal, <2 x i32> <i32 1, i32 2>
  %i.abe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abd, <2 x float> %i.zu, <2 x float> %i.abc)
  %i.abf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aan, <2 x float> %i.zt, <2 x float> %i.abe)
  store <2 x float> %i.aba, ptr %i.aah, align 8
  store <2 x float> %i.abf, ptr %i.aak, align 8
  %i.abg = add nuw i64 %.0142429, 1               ; 2 uses
  %exitcond451.not = icmp eq i64 %i.abg, %i.ds
  br i1 %exitcond451.not, label %.lr.ph434, label %bb.co, !llvm.loop !383

.loopexit:                                        ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  br i1 %i.fi, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %bb.co, %.loopexit
  %i.abh = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.abi = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.abj = getelementptr inbounds nuw i8, ptr %27, i64 48
  br label %bb.cq

._crit_edge435.loopexit:                          ; preds = %bb.cr
  %.pre459 = load ptr, ptr %12, align 8
  br label %._crit_edge435

._crit_edge435:                                   ; preds = %bb.cl, %._crit_edge435.loopexit, %.loopexit
  %i.abk = phi ptr [ %.pre459, %._crit_edge435.loopexit ], [ %i.a, %.loopexit ], [ %i.a, %bb.cl ] ; 7 uses
  %i.abl = trunc i64 %i.ds to i32                 ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 1056
  store i32 %i.abl, ptr %i.abm, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 1040
  store i32 %i.abl, ptr %i.abn, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 1028
  store i32 %i.abl, ptr %i.abo, align 4
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abk, i64 1064
  store ptr %i.hc, ptr %i.abp, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abk, i64 1048
  store ptr %i.fr, ptr %i.abq, align 8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abk, i64 1032
  store ptr %i.fh, ptr %i.abr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.abs = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i351 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i.i351, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge435
  %i.abt = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.abu = load ptr, ptr %i.abt, align 8
  %i.abv = ptrtoint ptr %i.abu to i64
  %i.abw = ptrtoint ptr %i.abs to i64
  %i.abx = sub i64 %i.abv, %i.abw
  call void @_ZdlPvm(ptr noundef nonnull %i.abs, i64 noundef %i.abx) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge435, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.aby = getelementptr inbounds nuw i8, ptr %13, i64 384 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 16
  %i.aca = getelementptr inbounds nuw i8, ptr %13, i64 392
  %i.acb = load ptr, ptr %i.aca, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.abz, ptr noundef %i.acb)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360 unwind label %bb.db

bb.cq:                                            ; preds = %.lr.ph434, %bb.cr
  %.0432 = phi i64 [ 0, %.lr.ph434 ], [ %i.ago, %bb.cr ] ; 4 uses
  %i.acc = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %.0432 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %.0432 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8 ; 2 uses
  %i.acg = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.0432 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.aci = load float, ptr %i.ach, align 4        ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acc, i64 20
  %i.acl = load float, ptr %i.ack, align 4, !noalias !387 ; 6 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acc, i64 12
  %i.acn = load float, ptr %i.acd, align 4, !noalias !387 ; 3 uses
  %i.aco = fneg float %i.acn                      ; 2 uses
  %i.acp = fmul float %i.acl, %i.aco
  %i.acq = fadd float %i.aci, 0.000000e+00
  %i.acr = load <2 x float>, ptr %i.acj, align 4  ; 3 uses
  %i.acs = fadd <2 x float> %i.acr, zeroinitializer ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %i.acv = insertelement <3 x float> <float -2.000000e+00, float poison, float poison>, float %i.acl, i64 1
  %i.acw = load <2 x float>, ptr %i.acm, align 4, !noalias !387 ; 9 uses
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %28 = shufflevector <2 x float> %i.acw, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %29 = shufflevector <2 x float> %i.acw, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %30 = shufflevector <2 x float> %i.acw, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.acy = extractelement <2 x float> %i.acw, i64 1 ; 2 uses
  %31 = shufflevector <2 x float> %i.acw, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison> ; 2 uses
  %32 = shufflevector <3 x float> %31, <3 x float> %30, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %33 = shufflevector <3 x float> %32, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %34 = shufflevector <3 x float> <float poison, float 1.000000e+00, float 1.000000e+00>, <3 x float> %29, <3 x i32> <i32 4, i32 1, i32 2>
  %i.acz = fmul float %i.acy, %i.acn
  %i.ada = shufflevector <3 x float> %i.acv, <3 x float> %28, <3 x i32> <i32 0, i32 1, i32 4>
  %i.adb = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.acz, i64 1
  %i.adc = insertelement <3 x float> %i.adb, float %i.acp, i64 2
  %i.add = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ade = insertelement <2 x float> %i.add, float %i.acl, i64 0
  %i.adf = insertelement <2 x float> poison, float %i.acn, i64 0
  %i.adg = insertelement <2 x float> %i.adf, float %i.aco, i64 1 ; 2 uses
  %i.adh = fmul <2 x float> %i.ade, %i.adg
  %35 = insertelement <3 x float> <float poison, float poison, float -2.000000e+00>, float %i.acy, i64 0
  %36 = insertelement <3 x float> %35, float %i.acl, i64 1
  %i.adi = shufflevector <2 x float> %i.adh, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.adj = insertelement <3 x float> %i.adi, float 1.000000e+00, i64 2
  %i.adk = fmul <2 x float> %i.acw, %i.adg
  %i.adl = insertelement <2 x float> %i.acw, float %i.acl, i64 0 ; 2 uses
  %i.adm = fmul <2 x float> %i.adl, %i.adl        ; 2 uses
  %i.adn = shufflevector <2 x float> %i.adm, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ado = shufflevector <3 x float> %i.adn, <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5>
  %i.adp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %33, <3 x float> %34, <3 x float> %i.ado)
  %i.adq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adp, <3 x float> %i.ada, <3 x float> %i.adc) ; 3 uses
  %i.adr = fmul <3 x float> %i.adq, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.ads = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.add, <2 x float> %i.add, <2 x float> %i.adm)
  %i.adt = shufflevector <2 x float> %i.ads, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.adu = shufflevector <3 x float> %32, <3 x float> %i.adt, <3 x i32> <i32 0, i32 1, i32 3>
  %i.adv = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adu, <3 x float> %36, <3 x float> %i.adj) ; 2 uses
  %i.adw = fmul <3 x float> %i.adv, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %37 = shufflevector <3 x float> %31, <3 x float> %i.adt, <3 x i32> <i32 0, i32 4, i32 poison>
  %38 = shufflevector <3 x float> %37, <3 x float> %i.acx, <3 x i32> <i32 0, i32 1, i32 4>
  %39 = insertelement <3 x float> <float poison, float -2.000000e+00, float poison>, float %i.acl, i64 0
  %40 = shufflevector <3 x float> %39, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.adx = shufflevector <2 x float> %i.adk, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.ady = insertelement <3 x float> %i.adx, float 1.000000e+00, i64 1
  %i.adz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %38, <3 x float> %40, <3 x float> %i.ady) ; 3 uses
  %i.aea = fmul <3 x float> %i.adz, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.aeb = fmul <3 x float> %i.adw, zeroinitializer ; 2 uses
  %i.aec = fadd <3 x float> %i.adr, %i.aeb
  %i.aed = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aea, <3 x float> zeroinitializer, <3 x float> %i.aec)
  %i.aee = insertelement <3 x float> poison, float %i.aci, i64 0
  %i.aef = shufflevector <3 x float> %i.aee, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aeg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aef, <3 x float> zeroinitializer, <3 x float> %i.aed) ; 3 uses
  %i.aeh = load <2 x float>, ptr %i.acf, align 4
  %i.aei = shufflevector <3 x float> %i.aeg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aej = shufflevector <2 x float> %i.aeh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aek = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.aej, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ael = fmul <4 x float> %i.aei, %i.aek
  %i.aem = shufflevector <4 x float> %i.aej, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.aen = shufflevector <3 x float> %i.aeg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aeo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aem, <4 x float> %i.aen, <4 x float> %i.ael)
  %i.aep = shufflevector <3 x float> %i.aeg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aeq = insertelement <4 x float> poison, float %i.acq, i64 0
  %i.aer = shufflevector <4 x float> %i.aeq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aes = shufflevector <3 x float> %i.adr, <3 x float> %i.adq, <3 x i32> <i32 1, i32 3, i32 2>
  %i.aet = shufflevector <3 x float> %i.adw, <3 x float> %i.adv, <3 x i32> <i32 1, i32 0, i32 5>
  %i.aeu = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aes, <3 x float> zeroinitializer, <3 x float> %i.aet)
  %i.aev = shufflevector <3 x float> %i.adz, <3 x float> %i.aea, <3 x i32> <i32 1, i32 3, i32 5>
  %i.aew = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aev, <3 x float> zeroinitializer, <3 x float> %i.aeu)
  %i.aex = shufflevector <2 x float> %i.acr, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aey = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aex, <3 x float> zeroinitializer, <3 x float> %i.aew) ; 3 uses
  %i.aez = load <2 x float>, ptr %i.act, align 4  ; 2 uses
  %i.afa = load float, ptr %i.acu, align 4
  %i.afb = shufflevector <2 x float> %i.aez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.afc = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.afb, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.afd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afc, <4 x float> %i.aep, <4 x float> %i.aeo)
  %i.afe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aer, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.afd)
  %i.aff = shufflevector <3 x float> %i.aey, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.afg = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.afb, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.afh = fmul <4 x float> %i.aff, %i.afg
  %i.afi = shufflevector <3 x float> %i.aey, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.afj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aem, <4 x float> %i.afi, <4 x float> %i.afh)
  %i.afk = shufflevector <3 x float> %i.aey, <3 x float> poison, <4 x i32> zeroinitializer
  %i.afl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afc, <4 x float> %i.afk, <4 x float> %i.afj)
  %i.afm = shufflevector <2 x float> %i.acs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.afn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.afl)
  store <4 x float> %i.afe, ptr %27, align 16
  store <4 x float> %i.afn, ptr %i.abh, align 16
  %i.afo = shufflevector <3 x float> %i.adq, <3 x float> %i.adr, <3 x i32> <i32 0, i32 4, i32 5>
  %i.afp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.afo, <3 x float> zeroinitializer, <3 x float> %i.aeb) ; 2 uses
  %i.afq = shufflevector <3 x float> %i.aea, <3 x float> %i.adz, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.afr = fadd <3 x float> %i.afq, %i.afp
  %i.afs = shufflevector <2 x float> %i.acr, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aft = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.afs, <3 x float> zeroinitializer, <3 x float> %i.afr) ; 3 uses
  %i.afu = shufflevector <3 x float> %i.aft, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.afv = shufflevector <2 x float> %i.aez, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.afw = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.afv, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.afx = fmul <4 x float> %i.afu, %i.afw
  %i.afy = shufflevector <3 x float> %i.aft, <3 x float> poison, <4 x i32> zeroinitializer
  %i.afz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aem, <4 x float> %i.afy, <4 x float> %i.afx)
  %i.aga = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.afa, i64 2 ; 2 uses
  %i.agb = shufflevector <3 x float> %i.aft, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.agc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aga, <4 x float> %i.agb, <4 x float> %i.afz)
  %i.agd = shufflevector <2 x float> %i.acs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.age = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.agc)
  store <4 x float> %i.age, ptr %i.abi, align 16
  %i.agf = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.afq, <3 x float> zeroinitializer, <3 x float> %i.afp)
  %i.agg = fadd <3 x float> %i.agf, zeroinitializer ; 3 uses
  %i.agh = shufflevector <3 x float> %i.agg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.agi = fmul <4 x float> %i.agh, %i.afw
  %i.agj = shufflevector <3 x float> %i.agg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.agk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aem, <4 x float> %i.agj, <4 x float> %i.agi)
  %i.agl = shufflevector <3 x float> %i.agg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.agm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aga, <4 x float> %i.agl, <4 x float> %i.agk)
  %i.agn = fadd <4 x float> %i.agm, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.agn, ptr %i.abj, align 16
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(12) %i.acf, ptr noundef nonnull align 4 dereferenceable(16) %i.acd, ptr noundef nonnull align 4 dereferenceable(12) %i.ach)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.ago = add nuw i64 %.0432, 1                  ; 2 uses
  %exitcond453.not = icmp eq i64 %i.ago, %i.ds
  br i1 %exitcond453.not, label %._crit_edge435.loopexit, label %bb.cq, !llvm.loop !386

bb.cs:                                            ; preds = %bb.cq
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cn, %bb.cs
  %.pn190.pn = phi { ptr, i32 } [ %i.agp, %bb.cs ], [ %i.aaf, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.cu

bb.cu:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %bb.ct
  %.pn194.pn = phi { ptr, i32 } [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ], [ %.pn190.pn, %bb.ct ], [ %i.uk, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.cu, %bb.au, %bb.aw, %bb.bh, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  %.pn194.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %i.il, %bb.au ], [ %i.im, %bb.av ], [ %i.nd, %bb.bh ], [ %i.in, %bb.aw ], [ %.pn194.pn, %bb.cu ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %.pn194.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.cy

bb.cy:                                            ; preds = %bb.aq, %bb.cx, %bb.l, %bb.s, %bb.w, %bb.aa
  %.pn207.pn = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.cs, %bb.w ], [ %i.hv, %bb.aq ], [ %i.dm, %bb.aa ], [ %i.au, %bb.l ], [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ]
  %i.agq = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i358 = icmp eq ptr %i.agq, null
  br i1 %.not.i.i.i358, label %_ZNSt6vectorIlSaIlEED2Ev.exit359, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.agr = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ags = load ptr, ptr %i.agr, align 8
  %i.agt = ptrtoint ptr %i.ags to i64
  %i.agu = ptrtoint ptr %i.agq to i64
  %i.agv = sub i64 %i.agt, %i.agu
  call void @_ZdlPvm(ptr noundef nonnull %i.agq, i64 noundef %i.agv) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit359

_ZNSt6vectorIlSaIlEED2Ev.exit359:                 ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.agw = getelementptr inbounds nuw i8, ptr %13, i64 384 ; 2 uses
  %i.agx = load ptr, ptr %i.agw, align 16
  %i.agy = getelementptr inbounds nuw i8, ptr %13, i64 392
  %i.agz = load ptr, ptr %i.agy, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.agx, ptr noundef %i.agz)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.aha = load ptr, ptr %i.aby, align 16         ; 3 uses
  %.not.i.i.i361 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360
  %i.ahb = getelementptr inbounds nuw i8, ptr %13, i64 400
  %i.ahc = load ptr, ptr %i.ahb, align 16
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = ptrtoint ptr %i.aha to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %i.aha, i64 noundef %i.ahf) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362

bb.db:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.15, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.14, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.13, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.12, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.11, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.10, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.9, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.8, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.7, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.6, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.5, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.4, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.3, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.2, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.1, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ahg = landingpad { ptr, i32 }
          catch ptr null
  %i.ahh = extractvalue { ptr, i32 } %i.ahg, 0
  call void @__clang_call_terminate(ptr %i.ahh) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360, %bb.da
  %i.ahi = getelementptr inbounds nuw i8, ptr %13, i64 360 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %13, i64 368
  %i.ahl = load ptr, ptr %i.ahk, align 16
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.ahj, ptr noundef %i.ahl)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.1 unwind label %bb.db

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.1: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362
  %i.ahm = load ptr, ptr %i.ahi, align 8          ; 3 uses
  %.not.i.i.i361.1 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i361.1, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.1, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.1
  %i.ahn = getelementptr inbounds nuw i8, ptr %13, i64 376
  %i.aho = load ptr, ptr %i.ahn, align 8
  %i.ahp = ptrtoint ptr %i.aho to i64
  %i.ahq = ptrtoint ptr %i.ahm to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  call void @_ZdlPvm(ptr noundef nonnull %i.ahm, i64 noundef %i.ahr) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.1

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.1: ; preds = %bb.dc, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.1
  %i.ahs = getelementptr inbounds nuw i8, ptr %13, i64 336 ; 2 uses
  %i.aht = load ptr, ptr %i.ahs, align 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %13, i64 344
  %i.ahv = load ptr, ptr %i.ahu, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.aht, ptr noundef %i.ahv)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.2 unwind label %bb.db

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.2: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.1
  %i.ahw = load ptr, ptr %i.ahs, align 16         ; 3 uses
  %.not.i.i.i361.2 = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i.i361.2, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.2, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.2
  %i.ahx = getelementptr inbounds nuw i8, ptr %13, i64 352
  %i.ahy = load ptr, ptr %i.ahx, align 16
  %i.ahz = ptrtoint ptr %i.ahy to i64
  %i.aia = ptrtoint ptr %i.ahw to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  call void @_ZdlPvm(ptr noundef nonnull %i.ahw, i64 noundef %i.aib) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.2

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit362.2: ; preds = %bb.dd, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i360.2
end_hunk_0
