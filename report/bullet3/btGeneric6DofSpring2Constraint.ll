Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpring2Constraint?download=true
inline.NumInlined: 593
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30btGeneric6DofSpring2Constraint21get_limit_motor_info2EP23btRotationalLimitMotor2RK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_ii:bb.a
bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.0356 = phi float [ %i.aaj, %bb.ah ], [ %i.aam, %bb.ai ], [ %i.aam, %bb.aj ]
  %.0355 = phi float [ %i.aak, %bb.ah ], [ %.1359, %bb.ai ], [ %i.aag, %bb.aj ]
  %i.aao = load float, ptr %i.vv, align 4, !tbaa !61
  %i.aap = load float, ptr %8, align 8, !tbaa !116
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !71
  %i.aas = fmul float %i.aap, %i.aar
  %i.aat = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.aao, float noundef %.0356, float noundef %.0355, float noundef %i.aac, float noundef %i.aas)
  br label %bb.al

bb.al:                                            ; preds = %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525, %bb.ak
  %.0357 = phi float [ %i.aat, %bb.ak ], [ 0.000000e+00, %_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii.exit525 ]
  %i.aau = fmul float %i.aab, %.0357
  %i.aav = select i1 %.not380, i32 1, i32 -1
  %i.aaw = sitofp i32 %i.aav to float
  %i.aax = fmul float %i.aau, %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !117
  %i.aba = getelementptr inbounds [4 x i8], ptr %i.aaz, i64 %i.wn
  store float %i.aax, ptr %i.aba, align 4, !tbaa !14
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !74
  %i.abd = fneg float %i.abc
  %i.abe = load float, ptr %8, align 8, !tbaa !116
  %i.abf = fdiv float %i.abd, %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !118
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %i.wn
  store float %i.abf, ptr %i.abi, align 4, !tbaa !14
  %i.abj = load float, ptr %i.abb, align 4, !tbaa !74
  %i.abk = load float, ptr %8, align 8, !tbaa !116
  %i.abl = fdiv float %i.abj, %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !119
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.wn
  store float %i.abl, ptr %i.abo, align 4, !tbaa !14
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !18
  %i.abr = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !68
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.wn
  store float %i.abq, ptr %i.abt, align 4, !tbaa !14
  %i.abu = load i32, ptr %i.a, align 8, !tbaa !115
  %i.abv = add nsw i32 %i.abu, %.1365634
  %i.abw = add nuw nsw i32 %.1363635, 1
  br label %.thread636

.thread636:                                       ; preds = %bb.t, %bb.al, %.thread631, %bb.z
  %.2366 = phi i32 [ %i.abv, %bb.al ], [ %.1365634, %.thread631 ], [ %i.vp, %bb.z ], [ %.0364, %bb.t ] ; 3 uses
  %.2 = phi i32 [ %i.abw, %bb.al ], [ %.1363635, %.thread631 ], [ %i.vq, %bb.z ], [ %.0362, %bb.t ] ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aby = load i8, ptr %i.abx, align 4, !tbaa !22, !range !65, !noundef !41
  %i.abz = trunc nuw i8 %i.aby to i1
  br i1 %i.abz, label %bb.am, label %bb.bd

bb.am:                                            ; preds = %.thread636
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !61
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !73
  %i.ace = fsub float %i.acb, %i.acd
  %.not49.i526 = icmp eq i32 %11, 0               ; 5 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in.i527 = select i1 %.not49.i526, ptr %i.acg, ptr %i.acf
  %i.ach = load ptr, ptr %.in.i527, align 8, !tbaa !76 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.in50.i528 = select i1 %.not49.i526, ptr %i.acj, ptr %i.aci
  %i.ack = load ptr, ptr %.in50.i528, align 8, !tbaa !76 ; 3 uses
  %i.acl = load float, ptr %10, align 4, !tbaa !14
  %i.acm = sext i32 %.2366 to i64                 ; 9 uses
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.acm
  store float %i.acl, ptr %i.acn, align 4, !tbaa !14
  %i.aco = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !14
  %i.acq = add nsw i32 %.2366, 1
  %i.acr = sext i32 %i.acq to i64                 ; 2 uses
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.acr
  store float %i.acp, ptr %i.acs, align 4, !tbaa !14
  %i.act = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.acu = load float, ptr %i.act, align 4, !tbaa !14
  %i.acv = add nsw i32 %.2366, 2
  %i.acw = sext i32 %i.acv to i64                 ; 2 uses
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.acw
  store float %i.acu, ptr %i.acx, align 4, !tbaa !14
  %i.acy = load float, ptr %10, align 4, !tbaa !14
  %i.acz = fneg float %i.acy
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.ack, i64 %i.acm
  store float %i.acz, ptr %i.ada, align 4, !tbaa !14
  %i.adb = load float, ptr %i.aco, align 4, !tbaa !14
  %i.adc = fneg float %i.adb
  %i.add = getelementptr inbounds [4 x i8], ptr %i.ack, i64 %i.acr
  store float %i.adc, ptr %i.add, align 4, !tbaa !14
  %i.ade = load float, ptr %i.act, align 4, !tbaa !14
  %i.adf = fneg float %i.ade
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.ack, i64 %i.acw
  store float %i.adf, ptr %i.adg, align 4, !tbaa !14
  br i1 %.not49.i526, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.adj = load float, ptr %i.adh, align 4, !tbaa !14
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !14
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.adm = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.ado = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.adr = load float, ptr %i.adp, align 4, !tbaa !14
  %i.ads = load float, ptr %i.adq, align 4, !tbaa !14
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.adu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %i.adw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.adx = load float, ptr %10, align 4, !tbaa !14 ; 2 uses
  %i.ady = fneg float %i.adx
  %i.adz = load <2 x float>, ptr %i.adl, align 8, !tbaa !14 ; 2 uses
  %i.aea = load <2 x float>, ptr %i.adm, align 4, !tbaa !14 ; 2 uses
  %i.aeb = fsub <2 x float> %i.adz, %i.aea        ; 2 uses
  %i.aec = shufflevector <2 x float> %i.adz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aed = insertelement <2 x float> %i.aec, float %i.adj, i64 1
  %i.aee = shufflevector <2 x float> %i.aea, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aef = insertelement <2 x float> %i.aee, float %i.adk, i64 1
  %i.aeg = fsub <2 x float> %i.aed, %i.aef        ; 2 uses
  %i.aeh = load <2 x float>, ptr %i.aco, align 4, !tbaa !14 ; 3 uses
  %i.aei = fneg <2 x float> %i.aeh                ; 2 uses
  %i.aej = load <2 x float>, ptr %i.adt, align 8, !tbaa !14 ; 2 uses
  %i.aek = load <2 x float>, ptr %i.adu, align 4, !tbaa !14 ; 2 uses
  %i.ael = fsub <2 x float> %i.aej, %i.aek        ; 2 uses
  %i.aem = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aen = insertelement <2 x float> %i.aem, float %i.adr, i64 1
  %i.aeo = shufflevector <2 x float> %i.aek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aep = insertelement <2 x float> %i.aeo, float %i.ads, i64 1
  %i.aeq = fsub <2 x float> %i.aen, %i.aep        ; 2 uses
  %i.aer = fmul <2 x float> %i.aeq, %i.aei
  %i.aes = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aet = insertelement <2 x float> %i.aes, float %i.adx, i64 1 ; 2 uses
  %i.aeu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ael, <2 x float> %i.aet, <2 x float> %i.aer) ; 2 uses
  %i.aev = fmul <2 x float> %i.aeg, %i.aei
  %i.aew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeb, <2 x float> %i.aet, <2 x float> %i.aev) ; 2 uses
  %i.aex = shufflevector <2 x float> %i.ael, <2 x float> %i.aeb, <2 x i32> <i32 0, i32 2>
  %i.aey = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aez = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afa = fmul <2 x float> %i.aex, %i.aez
  %i.afb = shufflevector <2 x float> %i.aeq, <2 x float> %i.aeg, <2 x i32> <i32 1, i32 3>
  %i.afc = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afb, <2 x float> %i.afc, <2 x float> %i.afa) ; 3 uses
  %i.afe = insertelement <2 x float> %i.afd, float 0.000000e+00, i64 1
  %i.aff = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.afd, <2 x i32> <i32 3, i32 1>
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 1476
  %i.afh = load i8, ptr %i.afg, align 4, !tbaa !57, !range !65, !noundef !41
  %i.afi = trunc nuw i8 %i.afh to i1
  %i.afj = icmp eq i32 %12, 0
  %or.cond.not.i535 = and i1 %i.afj, %i.afi
  br i1 %or.cond.not.i535, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.afl = load <2 x float>, ptr %i.afk, align 4, !tbaa !14 ; 3 uses
  %i.afm = shufflevector <2 x float> %i.afl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afn = fmul <2 x float> %i.aeu, %i.afm
  %i.afo = fmul <2 x float> %i.afd, %i.afl        ; 2 uses
  %i.afp = insertelement <2 x float> %i.afo, float 0.000000e+00, i64 1
  %i.afq = shufflevector <2 x float> %i.afl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afr = fmul <2 x float> %i.aew, %i.afq
  %i.afs = shufflevector <2 x float> %i.afo, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.an
  %.sroa.8.0.i537 = phi <2 x float> [ %i.afp, %bb.ao ], [ %i.afe, %bb.an ]
  %.sroa.082.0.i538 = phi <2 x float> [ %i.afn, %bb.ao ], [ %i.aeu, %bb.an ]
  %.sroa.9.0.i539 = phi <2 x float> [ %i.afs, %bb.ao ], [ %i.aff, %bb.an ]
  %.sroa.0.0.i540 = phi <2 x float> [ %i.afr, %bb.ao ], [ %i.aew, %bb.an ]
  %i.aft = load ptr, ptr %i.acf, align 8, !tbaa !77
  %i.afu = shl nsw i64 %i.acm, 2
  %scevgep.i541 = getelementptr i8, ptr %i.aft, i64 %i.afu ; 2 uses
  store <2 x float> %.sroa.082.0.i538, ptr %scevgep.i541, align 4, !tbaa !14
  %.sroa.8.0.scevgep.sroa_idx.i542 = getelementptr inbounds nuw i8, ptr %scevgep.i541, i64 8
  %.sroa.8.0.vec.extract.i543 = extractelement <2 x float> %.sroa.8.0.i537, i64 0
  store float %.sroa.8.0.vec.extract.i543, ptr %.sroa.8.0.scevgep.sroa_idx.i542, align 4, !tbaa !14
  %i.afv = load ptr, ptr %i.aci, align 8, !tbaa !78
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.acm ; 2 uses
  %i.afx = fneg <2 x float> %.sroa.0.0.i540
  store <2 x float> %i.afx, ptr %i.afw, align 4, !tbaa !14
  %.sroa.9.8.vec.extract81.i546 = extractelement <2 x float> %.sroa.9.0.i539, i64 0
  %i.afy = fneg float %.sroa.9.8.vec.extract81.i546
  %i.afz = getelementptr i8, ptr %i.afw, i64 8
  store float %i.afy, ptr %i.afz, align 4, !tbaa !14
  %i.aga = load float, ptr %8, align 8, !tbaa !116
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !25
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.age = load float, ptr %i.agd, align 4, !tbaa !23
  %13 = load <4 x float>, ptr %i.adv, align 4
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.agf = load float, ptr %i.adw, align 4, !tbaa !14
  %i.agg = load <4 x float>, ptr %6, align 4
  %i.agh = shufflevector <4 x float> %i.agg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.agi = load float, ptr %i.adn, align 4, !tbaa !14
  %i.agj = load float, ptr %i.ado, align 4, !tbaa !14
  %i.agk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !14
  %i.agm = load <4 x float>, ptr %4, align 4
  %i.agn = shufflevector <4 x float> %i.agm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ago = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !14
  %i.agq = load <2 x float>, ptr %i.adp, align 4, !tbaa !14 ; 2 uses
  %i.agr = load <2 x float>, ptr %i.adq, align 4, !tbaa !14 ; 2 uses
  %i.ags = load <2 x float>, ptr %6, align 4, !tbaa !14 ; 2 uses
  %i.agt = load <2 x float>, ptr %i.adh, align 4, !tbaa !14 ; 2 uses
  %i.agu = load <2 x float>, ptr %i.adi, align 4, !tbaa !14 ; 2 uses
  %i.agv = shufflevector <2 x float> %i.agq, <2 x float> %i.agt, <2 x i32> <i32 0, i32 2>
  %i.agw = shufflevector <2 x float> %i.agr, <2 x float> %i.agu, <2 x i32> <i32 0, i32 2>
  %i.agx = fsub <2 x float> %i.agv, %i.agw        ; 2 uses
  %i.agy = shufflevector <2 x float> %i.agq, <2 x float> %i.agt, <2 x i32> <i32 1, i32 3>
  %i.agz = shufflevector <2 x float> %i.agr, <2 x float> %i.agu, <2 x i32> <i32 1, i32 3>
  %i.aha = fsub <2 x float> %i.agy, %i.agz        ; 2 uses
  %i.ahb = insertelement <2 x float> %14, float %i.agi, i64 1
  %i.ahc = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.ahd = insertelement <2 x float> %i.ahc, float %i.agj, i64 1
  %i.ahe = fsub <2 x float> %i.ahb, %i.ahd        ; 2 uses
  %i.ahf = fneg <2 x float> %i.aha
  %i.ahg = insertelement <2 x float> %i.agh, float %i.agl, i64 1 ; 2 uses
  %i.ahh = fmul <2 x float> %i.ahg, %i.ahf
  %i.ahi = load <2 x float>, ptr %7, align 4, !tbaa !14 ; 2 uses
  %i.ahj = shufflevector <2 x float> %i.ags, <2 x float> %i.ahi, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ahk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahj, <2 x float> %i.ahe, <2 x float> %i.ahh)
  %i.ahl = fneg <2 x float> %i.ahe
  %i.ahm = shufflevector <2 x float> %i.ags, <2 x float> %i.ahi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ahn = fmul <2 x float> %i.ahm, %i.ahl
  %i.aho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahg, <2 x float> %i.agx, <2 x float> %i.ahn)
  %i.ahp = fneg <2 x float> %i.agx
  %i.ahq = fmul <2 x float> %i.ahj, %i.ahp
  %i.ahr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahm, <2 x float> %i.aha, <2 x float> %i.ahq)
  %i.ahs = load <2 x float>, ptr %4, align 4, !tbaa !14 ; 2 uses
  %i.aht = load <4 x float>, ptr %10, align 4     ; 3 uses
  %i.ahu = load <2 x float>, ptr %5, align 4, !tbaa !14 ; 2 uses
  %i.ahv = shufflevector <2 x float> %i.ahs, <2 x float> %i.ahu, <2 x i32> <i32 0, i32 2>
  %i.ahw = fadd <2 x float> %i.ahk, %i.ahv
  %i.ahx = shufflevector <2 x float> %i.ahs, <2 x float> %i.ahu, <2 x i32> <i32 1, i32 3>
  %i.ahy = fadd <2 x float> %i.aho, %i.ahx
  %i.ahz = insertelement <2 x float> %i.agn, float %i.agp, i64 1
  %i.aia = fadd <2 x float> %i.ahr, %i.ahz
  %i.aib = shufflevector <4 x float> %i.aht, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aic = fmul <2 x float> %i.ahy, %i.aib
  %i.aid = shufflevector <4 x float> %i.aht, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahw, <2 x float> %i.aid, <2 x float> %i.aic)
  %i.aif = shufflevector <4 x float> %i.aht, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aia, <2 x float> %i.aif, <2 x float> %i.aie) ; 2 uses
  %shift653 = shufflevector <2 x float> %i.aig, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop654 = fsub <2 x float> %i.aig, %shift653
  %i.aih = extractelement <2 x float> %foldExtExtBinop654, i64 0
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 452
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !56 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !43, !nonnull !41, !align !42
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 452
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !56 ; 2 uses
  %i.aiq = insertelement <2 x float> poison, float %i.ail, i64 0
  %i.air = insertelement <2 x float> %i.aiq, float %i.aip, i64 1
  %i.ais = fdiv <2 x float> splat (float 1.000000e+00), %i.air
  br label %bb.at

bb.ap:                                            ; preds = %bb.am
  %i.ait = load float, ptr %8, align 8, !tbaa !116 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !25 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !23 ; 2 uses
  %i.aiy = load float, ptr %6, align 4, !tbaa !14
  %i.aiz = load float, ptr %10, align 4, !tbaa !14 ; 8 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !14
  %i.ajc = load float, ptr %i.aco, align 4, !tbaa !14 ; 8 uses
  %i.ajd = fmul float %i.ajb, %i.ajc
  %i.aje = tail call float @llvm.fmuladd.f32(float %i.aiy, float %i.aiz, float %i.ajd)
  %i.ajf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !14
  %i.ajh = load float, ptr %i.act, align 4, !tbaa !14 ; 8 uses
  %i.aji = tail call noundef float @llvm.fmuladd.f32(float %i.ajg, float %i.ajh, float %i.aje)
  %i.ajj = load float, ptr %7, align 4, !tbaa !14
  %i.ajk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !14
  %i.ajm = fmul float %i.ajc, %i.ajl
  %i.ajn = tail call float @llvm.fmuladd.f32(float %i.ajj, float %i.aiz, float %i.ajm)
  %i.ajo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !14
  %i.ajq = tail call noundef float @llvm.fmuladd.f32(float %i.ajp, float %i.ajh, float %i.ajn)
  %i.ajr = fsub float %i.aji, %i.ajq              ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !40, !nonnull !41, !align !42 ; 10 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 452
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !56 ; 4 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !43, !nonnull !41, !align !42 ; 10 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 452
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !56 ; 4 uses
  %i.aka = insertelement <2 x float> poison, float %i.ajv, i64 0
  %i.akb = insertelement <2 x float> %i.aka, float %i.ajz, i64 1
  %i.akc = fdiv <2 x float> splat (float 1.000000e+00), %i.akb ; 3 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.ake = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.akf = load float, ptr %i.akd, align 4, !tbaa !14
  %i.akg = load float, ptr %i.ake, align 4, !tbaa !14
  %i.akh = fsub float %i.akf, %i.akg              ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.akj = load float, ptr %i.aki, align 8, !tbaa !14
  %i.akk = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !14
  %i.akm = fsub float %i.akj, %i.akl              ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !14
  %i.akp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !14
  %i.akr = fsub float %i.ako, %i.akq              ; 2 uses
  %i.aks = fmul float %i.akm, %i.akm
  %i.akt = tail call float @llvm.fmuladd.f32(float %i.akh, float %i.akh, float %i.aks)
  %i.aku = tail call noundef float @llvm.fmuladd.f32(float %i.akr, float %i.akr, float %i.akt)
  %i.akv = fcmp une float %i.ajv, 0.000000e+00
  %i.akw = extractelement <2 x float> %i.akc, i64 0 ; 2 uses
  br i1 %i.akv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !14
  %i.akz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !14
  %i.alb = fsub float %i.aky, %i.ala              ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !14
  %i.ale = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !14
  %i.alg = fsub float %i.ald, %i.alf              ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ali = load float, ptr %i.alh, align 8, !tbaa !14
  %i.alj = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !14
  %i.all = fsub float %i.ali, %i.alk              ; 2 uses
  %i.alm = fmul float %i.all, %i.all
  %i.aln = tail call float @llvm.fmuladd.f32(float %i.alg, float %i.alg, float %i.alm)
  %i.alo = tail call noundef float @llvm.fmuladd.f32(float %i.alb, float %i.alb, float %i.aln)
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ajt, i64 372
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !14
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ajt, i64 376
  %i.als = load float, ptr %i.alr, align 8, !tbaa !14
  %i.alt = fmul float %i.als, %i.ajc
  %i.alu = tail call float @llvm.fmuladd.f32(float %i.alq, float %i.aiz, float %i.alt)
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 380
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !14
  %i.alx = tail call noundef float @llvm.fmuladd.f32(float %i.alw, float %i.ajh, float %i.alu) ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.ajt, i64 388
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !14
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ajt, i64 392
  %i.amb = load float, ptr %i.ama, align 8, !tbaa !14
  %i.amc = fmul float %i.ajc, %i.amb
  %i.amd = tail call float @llvm.fmuladd.f32(float %i.alz, float %i.aiz, float %i.amc)
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ajt, i64 396
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !14
  %i.amg = tail call noundef float @llvm.fmuladd.f32(float %i.amf, float %i.ajh, float %i.amd) ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ajt, i64 404
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !14
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ajt, i64 408
  %i.amk = load float, ptr %i.amj, align 8, !tbaa !14
  %i.aml = fmul float %i.ajc, %i.amk
  %i.amm = tail call float @llvm.fmuladd.f32(float %i.ami, float %i.aiz, float %i.aml)
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ajt, i64 412
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !14
  %i.amp = tail call noundef float @llvm.fmuladd.f32(float %i.amo, float %i.ajh, float %i.amm) ; 2 uses
  %i.amq = fmul float %i.amg, %i.amg
  %i.amr = tail call float @llvm.fmuladd.f32(float %i.alx, float %i.alx, float %i.amq)
  %i.ams = tail call noundef float @llvm.fmuladd.f32(float %i.amp, float %i.amp, float %i.amr)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ams)
  %i.amt = fdiv float 1.000000e+00, %sqrt.i
  %i.amu = tail call float @llvm.fmuladd.f32(float %i.akw, float %i.alo, float %i.amt)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0350 = phi float [ %i.amu, %bb.aq ], [ %i.akw, %bb.ap ]
  %i.amv = fcmp une float %i.ajz, 0.000000e+00
  %i.amw = insertelement <2 x float> %i.akc, float %.0350, i64 0 ; 2 uses
  br i1 %i.amv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ajx, i64 372
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !14
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 376
  %i.ana = load float, ptr %i.amz, align 8, !tbaa !14
  %i.anb = fmul float %i.ana, %i.ajc
  %i.anc = tail call float @llvm.fmuladd.f32(float %i.amy, float %i.aiz, float %i.anb)
  %i.and = getelementptr inbounds nuw i8, ptr %i.ajx, i64 380
  %i.ane = load float, ptr %i.and, align 4, !tbaa !14
  %i.anf = tail call noundef float @llvm.fmuladd.f32(float %i.ane, float %i.ajh, float %i.anc) ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ajx, i64 388
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !14
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ajx, i64 392
  %i.anj = load float, ptr %i.ani, align 8, !tbaa !14
  %i.ank = fmul float %i.ajc, %i.anj
  %i.anl = tail call float @llvm.fmuladd.f32(float %i.anh, float %i.aiz, float %i.ank)
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ajx, i64 396
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !14
  %i.ano = tail call noundef float @llvm.fmuladd.f32(float %i.ann, float %i.ajh, float %i.anl) ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ajx, i64 404
  %i.anq = load float, ptr %i.anp, align 4, !tbaa !14
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ajx, i64 408
  %i.ans = load float, ptr %i.anr, align 8, !tbaa !14
  %i.ant = fmul float %i.ajc, %i.ans
  %i.anu = tail call float @llvm.fmuladd.f32(float %i.anq, float %i.aiz, float %i.ant)
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ajx, i64 412
  %i.anw = load float, ptr %i.anv, align 4, !tbaa !14
  %i.anx = tail call noundef float @llvm.fmuladd.f32(float %i.anw, float %i.ajh, float %i.anu) ; 2 uses
  %i.any = fmul float %i.ano, %i.ano
  %i.anz = tail call float @llvm.fmuladd.f32(float %i.anf, float %i.anf, float %i.any)
  %i.aoa = tail call noundef float @llvm.fmuladd.f32(float %i.anx, float %i.anx, float %i.anz)
  %sqrt.i601 = tail call noundef float @llvm.sqrt.f32(float %i.aoa)
  %i.aob = fdiv float 1.000000e+00, %sqrt.i601
  %i.aoc = extractelement <2 x float> %i.akc, i64 1
  %i.aod = tail call float @llvm.fmuladd.f32(float %i.aoc, float %i.aku, float %i.aob)
  %i.aoe = insertelement <2 x float> %i.amw, float %i.aod, i64 1
  br label %bb.at

bb.at:                                            ; preds = %.thread, %bb.ar, %bb.as
  %i.aof = phi float [ %i.aip, %.thread ], [ %i.ajz, %bb.as ], [ %i.ajz, %bb.ar ]
  %i.aog = phi float [ %i.ail, %.thread ], [ %i.ajv, %bb.as ], [ %i.ajv, %bb.ar ]
  %.0352621 = phi float [ %i.aih, %.thread ], [ %i.ajr, %bb.as ], [ %i.ajr, %bb.ar ] ; 2 uses
  %.pn = phi float [ %i.aga, %.thread ], [ %i.ait, %bb.as ], [ %i.ait, %bb.ar ]
  %i.aoh = phi float [ %i.agc, %.thread ], [ %i.aiv, %bb.as ], [ %i.aiv, %bb.ar ] ; 2 uses
  %i.aoi = phi float [ %i.age, %.thread ], [ %i.aix, %bb.as ], [ %i.aix, %bb.ar ] ; 2 uses
  %i.aoj = phi <2 x float> [ %i.ais, %.thread ], [ %i.aoe, %bb.as ], [ %i.amw, %bb.ar ] ; 2 uses
  %i.aok = fdiv float 1.000000e+00, %.pn          ; 7 uses
  %i.aol = fcmp oeq float %i.aog, 0.000000e+00
  %i.aom = extractelement <2 x float> %i.aoj, i64 1 ; 3 uses
  br i1 %i.aol, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aon = fcmp oeq float %i.aof, 0.000000e+00
  %i.aoo = extractelement <2 x float> %i.aoj, i64 0 ; 3 uses
  br i1 %i.aon, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aop = fmul float %i.aoo, %i.aom
  %i.aoq = fadd float %i.aoo, %i.aom
  %i.aor = fdiv float %i.aop, %i.aoq
  br label %bb.aw

end_hunk_0
