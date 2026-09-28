Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/essential_solver?download=true
inline.NumInlined: 418
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK2cv4usac30EssentialMinimalSolver5ptsImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE:bb.a
  %i.aef = load double, ptr %i.aee, align 16, !tbaa !36, !noalias !150
  %i.aeg = getelementptr inbounds nuw i8, ptr %28, i64 336 ; 2 uses
  %i.aeh = load double, ptr %i.aeg, align 16, !tbaa !36, !noalias !150
  %i.aei = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.aej = load <2 x double>, ptr %i.aei, align 8
  %i.aek = getelementptr inbounds nuw i8, ptr %28, i64 344 ; 2 uses
  %i.ael = load <2 x double>, ptr %i.aek, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.aen = load <2 x double>, ptr %i.aem, align 16
  %i.aeo = getelementptr inbounds nuw i8, ptr %28, i64 352 ; 2 uses
  %i.aep = load <2 x double>, ptr %i.aeo, align 16
  %i.aeq = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !36, !noalias !150
  %i.aes = getelementptr inbounds nuw i8, ptr %28, i64 360 ; 2 uses
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !36, !noalias !150
  %i.aeu = fadd double %i.aer, %i.aet
  %i.aev = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.aew = load double, ptr %i.aev, align 16, !tbaa !36, !noalias !150
  %i.aex = getelementptr inbounds nuw i8, ptr %28, i64 368 ; 2 uses
  %i.aey = load double, ptr %i.aex, align 16, !tbaa !36, !noalias !150
  %i.aez = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !36, !noalias !150
  %i.afb = getelementptr inbounds nuw i8, ptr %28, i64 376 ; 2 uses
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !36, !noalias !150
  %i.afd = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %28, i64 384 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.afg = getelementptr inbounds nuw i8, ptr %28, i64 640 ; 2 uses
  %i.afh = load <2 x double>, ptr %i.afg, align 16
  %i.afi = getelementptr inbounds nuw i8, ptr %28, i64 648 ; 2 uses
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !36, !noalias !151
  %i.afk = fadd double %i.aed, %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %28, i64 656 ; 2 uses
  %i.afm = load double, ptr %i.afl, align 16, !tbaa !36, !noalias !151
  %i.afn = insertelement <2 x double> %i.adx, double %i.aef, i64 1
  %i.afo = insertelement <2 x double> %i.ady, double %i.aeh, i64 1
  %i.afp = fadd <2 x double> %i.afn, %i.afo
  %i.afq = insertelement <2 x double> %i.afh, double %i.afm, i64 1
  %i.afr = fadd <2 x double> %i.afp, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %28, i64 664 ; 2 uses
  %i.aft = load <2 x double>, ptr %i.afs, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %28, i64 672 ; 2 uses
  %i.afv = load <2 x double>, ptr %i.afu, align 16
  %i.afw = getelementptr inbounds nuw i8, ptr %28, i64 680 ; 2 uses
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !36, !noalias !151
  %i.afy = fadd double %i.aeu, %i.afx
  %i.afz = getelementptr inbounds nuw i8, ptr %28, i64 688 ; 2 uses
  %i.aga = load double, ptr %i.afz, align 16, !tbaa !36, !noalias !151
  %i.agb = insertelement <2 x double> %i.aej, double %i.aew, i64 1
  %i.agc = insertelement <2 x double> %i.ael, double %i.aey, i64 1
  %i.agd = fadd <2 x double> %i.agb, %i.agc
  %i.age = insertelement <2 x double> %i.aft, double %i.aga, i64 1
  %i.agf = fadd <2 x double> %i.agd, %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %28, i64 696 ; 2 uses
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !36, !noalias !151
  %i.agi = insertelement <2 x double> %i.aen, double %i.afa, i64 1
  %i.agj = insertelement <2 x double> %i.aep, double %i.afc, i64 1
  %i.agk = fadd <2 x double> %i.agi, %i.agj
  %i.agl = insertelement <2 x double> %i.afv, double %i.agh, i64 1
  %i.agm = fadd <2 x double> %i.agk, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %28, i64 704 ; 2 uses
  %i.ago = load <2 x double>, ptr %i.afd, align 16, !tbaa !36, !noalias !150
  %i.agp = load <2 x double>, ptr %i.afe, align 16, !tbaa !36, !noalias !150
  %i.agq = fadd <2 x double> %i.ago, %i.agp
  %i.agr = load <2 x double>, ptr %i.agn, align 16, !tbaa !36, !noalias !151
  %i.ags = fadd <2 x double> %i.agq, %i.agr
  %i.agt = fmul double %i.afk, 5.000000e-01       ; 3 uses
  %i.agu = fmul <2 x double> %i.afr, splat (double 5.000000e-01) ; 3 uses
  %i.agv = fmul double %i.afy, 5.000000e-01       ; 3 uses
  %i.agw = fmul <2 x double> %i.agf, splat (double 5.000000e-01) ; 3 uses
  %i.agx = fmul <2 x double> %i.agm, splat (double 5.000000e-01) ; 3 uses
  %i.agy = fmul <2 x double> %i.ags, splat (double 5.000000e-01) ; 4 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.aha = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ahb = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.ahc = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.ahd = getelementptr inbounds nuw i8, ptr %30, i64 80
  %i.ahe = getelementptr inbounds nuw i8, ptr %30, i64 112
  %i.ahf = getelementptr inbounds nuw i8, ptr %30, i64 144
  %i.ahg = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ahh = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ahi = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.ahj = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.ahk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ahm = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ahn = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.aho = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ahp = extractelement <2 x double> %i.agy, i64 0
  %i.ahq = shufflevector <2 x double> %i.agy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ahr = insertelement <2 x double> %i.ahq, double %i.agv, i64 1
  br label %.preheader903

.preheader903:                                    ; preds = %bb.h, %bb.i
  %indvars.iv968 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next969, %bb.i ] ; 5 uses
  %i.ahs = icmp eq i64 %indvars.iv968, 0
  %i.aht = icmp eq i64 %indvars.iv968, 1
  %i.ahu = icmp eq i64 %indvars.iv968, 2
  %i.ahv = getelementptr inbounds nuw [240 x i8], ptr %28, i64 %indvars.iv968 ; 28 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 80
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 160
  %indvars.iv.next969 = add nuw nsw i64 %indvars.iv968, 1 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16
  %.phi.trans.insert999 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %.phi.trans.insert1001 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  %.phi.trans.insert1003 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 48
  %.phi.trans.insert1005 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 32
  %.phi.trans.insert1007 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 56
  %.phi.trans.insert1009 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 40
  %.phi.trans.insert1011 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 64
  %.phi.trans.insert1013 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 72
  %.phi.trans.insert1017 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 96
  %.phi.trans.insert1019 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 88
  %.phi.trans.insert1021 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 104
  %.phi.trans.insert1023 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 128
  %.phi.trans.insert1025 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 112
  %.phi.trans.insert1027 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 136
  %.phi.trans.insert1029 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 120
  %.phi.trans.insert1031 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 144
  %.phi.trans.insert1037 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 176
  %.phi.trans.insert1039 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 168
  %.phi.trans.insert1041 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 184
  %.phi.trans.insert1043 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 208
  %.phi.trans.insert1045 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 192
  %.phi.trans.insert1047 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 216
  %.phi.trans.insert1049 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 200
  %.phi.trans.insert1051 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 224
  br label %bb.j

bb.i:                                             ; preds = %bb.t
  %exitcond971.not = icmp eq i64 %indvars.iv.next969, 3
  br i1 %exitcond971.not, label %bb.y, label %.preheader903, !llvm.loop !95

bb.j:                                             ; preds = %.preheader903, %bb.t
  %indvars.iv964 = phi i64 [ 0, %.preheader903 ], [ %indvars.iv.next965, %bb.t ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  br i1 %i.ahs, label %bb.k, label %._crit_edge997

._crit_edge997:                                   ; preds = %bb.j
  %.pre = load double, ptr %i.ahv, align 16, !tbaa !36, !noalias !152
  %.pre998 = load double, ptr %.phi.trans.insert, align 16, !tbaa !36, !noalias !152
  %.pre1000 = load double, ptr %.phi.trans.insert999, align 8, !tbaa !36, !noalias !152
  %.pre1002 = load double, ptr %.phi.trans.insert1001, align 8, !tbaa !36, !noalias !152
  %.pre1004 = load double, ptr %.phi.trans.insert1003, align 16, !tbaa !36, !noalias !152
  %.pre1006 = load double, ptr %.phi.trans.insert1005, align 16, !tbaa !36, !noalias !152
  %.pre1008 = load double, ptr %.phi.trans.insert1007, align 8, !tbaa !36, !noalias !152
  %.pre1010 = load double, ptr %.phi.trans.insert1009, align 8, !tbaa !36, !noalias !152
  %.pre1012 = load double, ptr %.phi.trans.insert1011, align 16, !tbaa !36, !noalias !152
  %.pre1014 = load double, ptr %.phi.trans.insert1013, align 8, !tbaa !36, !noalias !152
  %i.ahy = insertelement <2 x double> poison, double %.pre, i64 0
  %i.ahz = insertelement <2 x double> %i.ahy, double %.pre998, i64 1
  %i.aia = insertelement <2 x double> poison, double %.pre1002, i64 0
  %i.aib = insertelement <2 x double> %i.aia, double %.pre1004, i64 1
  %i.aic = insertelement <2 x double> poison, double %.pre1006, i64 0
  %i.aid = insertelement <2 x double> %i.aic, double %.pre1008, i64 1
  %i.aie = insertelement <2 x double> poison, double %.pre1014, i64 0
  %i.aif = insertelement <2 x double> %i.aie, double %.pre1010, i64 1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aig = load <2 x double>, ptr %28, align 16
  %i.aih = load double, ptr %i.adz, align 8, !tbaa !36, !noalias !153
  %i.aii = fsub double %i.aih, %i.agt
  %i.aij = load double, ptr %i.aee, align 16, !tbaa !36, !noalias !153
  %i.aik = insertelement <2 x double> %i.aig, double %i.aij, i64 1
  %i.ail = fsub <2 x double> %i.aik, %i.agu
  %i.aim = load <2 x double>, ptr %i.aei, align 8
  %i.ain = load <2 x double>, ptr %i.aem, align 16
  %i.aio = load double, ptr %i.aeq, align 8, !tbaa !36, !noalias !153
  %i.aip = load double, ptr %i.aev, align 16, !tbaa !36, !noalias !153
  %i.aiq = insertelement <2 x double> %i.aim, double %i.aip, i64 1
  %i.air = fsub <2 x double> %i.aiq, %i.agw
  %i.ais = load double, ptr %i.aez, align 8, !tbaa !36, !noalias !153
  %i.ait = insertelement <2 x double> %i.ain, double %i.ais, i64 1
  %i.aiu = fsub <2 x double> %i.ait, %i.agx
  %i.aiv = load double, ptr %i.afd, align 16, !tbaa !36, !noalias !153
  %i.aiw = fsub double %i.aiv, %i.ahp
  %i.aix = load <2 x double>, ptr %i.aff, align 8
  %i.aiy = insertelement <2 x double> %i.aix, double %i.aio, i64 1
  %i.aiz = fsub <2 x double> %i.aiy, %i.ahr
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge997, %bb.k
  %i.aja = phi double [ %i.aiw, %bb.k ], [ %.pre1012, %._crit_edge997 ] ; 4 uses
  %i.ajb = phi double [ %i.aii, %bb.k ], [ %.pre1000, %._crit_edge997 ] ; 3 uses
  %i.ajc = phi <2 x double> [ %i.ail, %bb.k ], [ %i.ahz, %._crit_edge997 ] ; 5 uses
  %i.ajd = phi <2 x double> [ %i.air, %bb.k ], [ %i.aib, %._crit_edge997 ] ; 5 uses
  %i.aje = phi <2 x double> [ %i.aiu, %bb.k ], [ %i.aid, %._crit_edge997 ] ; 6 uses
  %i.ajf = phi <2 x double> [ %i.aiz, %bb.k ], [ %i.aif, %._crit_edge997 ] ; 4 uses
  %i.ajg = getelementptr inbounds nuw [32 x i8], ptr %26, i64 %indvars.iv964 ; 2 uses
  %i.ajh = load <2 x double>, ptr %i.ajg, align 16, !tbaa !36, !noalias !152 ; 7 uses
  %i.aji = fmul <2 x double> %i.ajc, %i.ajh
  %i.ajj = shufflevector <2 x double> %i.ajh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ajk = insertelement <2 x double> %i.ajc, double %i.ajb, i64 0
  %i.ajl = fmul <2 x double> %i.ajj, %i.ajk
  %i.ajm = insertelement <2 x double> %i.ajc, double %i.ajb, i64 1
  %i.ajn = shufflevector <2 x double> %i.ajh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ajo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajm, <2 x double> %i.ajn, <2 x double> %i.ajl)
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  %i.ajq = load <2 x double>, ptr %i.ajp, align 16, !tbaa !36, !noalias !152 ; 11 uses
  %i.ajr = fmul <2 x double> %i.ajj, %i.ajd
  %i.ajs = shufflevector <2 x double> %i.ajc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajs, <2 x double> %i.ajq, <2 x double> %i.ajr)
  %54 = extractelement <2 x double> %i.ajq, i64 0
  %i.aju = fmul <2 x double> %i.ajn, %i.aje
  %55 = extractelement <2 x double> %i.ajq, i64 1 ; 2 uses
  %i.ajv = shufflevector <2 x double> %i.ajc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ajw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajv, <2 x double> %i.ajq, <2 x double> %i.aju)
  %i.ajx = fmul <2 x double> %i.ajn, %i.ajd
  %i.ajy = insertelement <2 x double> poison, double %i.ajb, i64 0
  %i.ajz = shufflevector <2 x double> %i.ajy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajz, <2 x double> %i.ajq, <2 x double> %i.ajx)
  %i.akb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aje, <2 x double> %i.ajj, <2 x double> %i.aka)
  %i.akc = shufflevector <2 x double> %i.ajf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.akd = fmul <2 x double> %i.ajh, %i.ajf
  %i.ake = shufflevector <2 x double> %i.ajd, <2 x double> %i.aje, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.akf = insertelement <4 x double> %i.ake, double %i.aja, i64 1
  %i.akg = shufflevector <2 x double> %i.ajq, <2 x double> %i.ajh, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.akh = shufflevector <2 x double> %i.akd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aki = fmul <2 x double> %i.ajh, %i.akc       ; 2 uses
  %56 = fmul double %54, %i.aja
  %57 = shufflevector <2 x double> %i.ajq, <2 x double> poison, <2 x i32> zeroinitializer
  %58 = shufflevector <2 x double> %i.ajd, <2 x double> %i.aje, <2 x i32> <i32 1, i32 3>
  %i.akj = fmul <2 x double> %57, %58
  %59 = shufflevector <2 x double> %i.ajd, <2 x double> %i.aje, <2 x i32> <i32 0, i32 2>
  %i.akk = shufflevector <2 x double> %i.ajq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.akl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %i.akk, <2 x double> %i.akj) ; 2 uses
  %i.akm = shufflevector <2 x double> %i.aki, <2 x double> %i.akl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.akn = shufflevector <4 x double> %i.akm, <4 x double> %i.akh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ako = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.akf, <4 x double> %i.akg, <4 x double> %i.akn)
  %i.akp = insertelement <2 x double> %i.aje, double %i.aja, i64 0
  %60 = shufflevector <2 x double> %i.ajh, <2 x double> %i.ajq, <2 x i32> <i32 1, i32 3>
  %i.akq = shufflevector <2 x double> %i.akl, <2 x double> %i.aki, <2 x i32> <i32 1, i32 3>
  %61 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akp, <2 x double> %60, <2 x double> %i.akq)
  %62 = extractelement <2 x double> %i.ajf, i64 1
  %63 = call double @llvm.fmuladd.f64(double %62, double %55, double %56)
  %foldExtExtBinop1143 = fmul <2 x double> %i.ajq, %i.ajf
  %64 = extractelement <2 x double> %foldExtExtBinop1143, i64 0
  %65 = call double @llvm.fmuladd.f64(double %i.aja, double %55, double %64)
  %i.akr = fmul <2 x double> %i.ajq, %i.akc       ; 2 uses
  br i1 %i.aht, label %bb.m, label %._crit_edge1015

._crit_edge1015:                                  ; preds = %bb.l
  %.pre1016 = load double, ptr %i.ahw, align 16, !tbaa !36, !noalias !154
  %.pre1018 = load double, ptr %.phi.trans.insert1017, align 16, !tbaa !36, !noalias !154
  %.pre1020 = load double, ptr %.phi.trans.insert1019, align 8, !tbaa !36, !noalias !154
  %.pre1022 = load double, ptr %.phi.trans.insert1021, align 8, !tbaa !36, !noalias !154
  %.pre1024 = load double, ptr %.phi.trans.insert1023, align 16, !tbaa !36, !noalias !154
  %.pre1026 = load double, ptr %.phi.trans.insert1025, align 16, !tbaa !36, !noalias !154
  %.pre1028 = load double, ptr %.phi.trans.insert1027, align 8, !tbaa !36, !noalias !154
  %.pre1030 = load double, ptr %.phi.trans.insert1029, align 8, !tbaa !36, !noalias !154
  %i.aks = load <2 x double>, ptr %.phi.trans.insert1031, align 16, !tbaa !36, !noalias !154
  %i.akt = insertelement <2 x double> poison, double %.pre1016, i64 0
  %i.aku = insertelement <2 x double> %i.akt, double %.pre1018, i64 1
  %i.akv = insertelement <2 x double> poison, double %.pre1022, i64 0
  %i.akw = insertelement <2 x double> %i.akv, double %.pre1024, i64 1
  %i.akx = insertelement <2 x double> poison, double %.pre1026, i64 0
  %i.aky = insertelement <2 x double> %i.akx, double %.pre1028, i64 1
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.akz = load <2 x double>, ptr %i.adw, align 16
  %i.ala = load double, ptr %i.aeb, align 8, !tbaa !36, !noalias !155
  %i.alb = fsub double %i.ala, %i.agt
  %i.alc = load double, ptr %i.aeg, align 16, !tbaa !36, !noalias !155
  %i.ald = insertelement <2 x double> %i.akz, double %i.alc, i64 1
  %i.ale = fsub <2 x double> %i.ald, %i.agu
  %i.alf = load <2 x double>, ptr %i.aek, align 8
  %i.alg = load <2 x double>, ptr %i.aeo, align 16
  %i.alh = load double, ptr %i.aes, align 8, !tbaa !36, !noalias !155
  %i.ali = fsub double %i.alh, %i.agv
  %i.alj = load double, ptr %i.aex, align 16, !tbaa !36, !noalias !155
  %i.alk = insertelement <2 x double> %i.alf, double %i.alj, i64 1
  %i.all = fsub <2 x double> %i.alk, %i.agw
  %i.alm = load double, ptr %i.afb, align 8, !tbaa !36, !noalias !155
  %i.aln = insertelement <2 x double> %i.alg, double %i.alm, i64 1
  %i.alo = fsub <2 x double> %i.aln, %i.agx
  %i.alp = load <2 x double>, ptr %i.afe, align 16, !tbaa !36, !noalias !155
  %i.alq = fsub <2 x double> %i.alp, %i.agy
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge1015, %bb.m
  %i.alr = phi double [ %i.ali, %bb.m ], [ %.pre1030, %._crit_edge1015 ] ; 4 uses
  %i.als = phi double [ %i.alb, %bb.m ], [ %.pre1020, %._crit_edge1015 ] ; 3 uses
  %i.alt = phi <2 x double> [ %i.ale, %bb.m ], [ %i.aku, %._crit_edge1015 ] ; 5 uses
  %i.alu = phi <2 x double> [ %i.all, %bb.m ], [ %i.akw, %._crit_edge1015 ] ; 5 uses
  %i.alv = phi <2 x double> [ %i.alo, %bb.m ], [ %i.aky, %._crit_edge1015 ] ; 6 uses
  %i.alw = phi <2 x double> [ %i.alq, %bb.m ], [ %i.aks, %._crit_edge1015 ] ; 7 uses
  %i.alx = getelementptr inbounds nuw [32 x i8], ptr %i.uc, i64 %indvars.iv964 ; 2 uses
  %i.aly = load <2 x double>, ptr %i.alx, align 16, !tbaa !36, !noalias !154 ; 7 uses
  %i.alz = fmul <2 x double> %i.alt, %i.aly
  %i.ama = shufflevector <2 x double> %i.aly, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.amb = insertelement <2 x double> %i.alt, double %i.als, i64 0
  %i.amc = fmul <2 x double> %i.ama, %i.amb
  %i.amd = insertelement <2 x double> %i.alt, double %i.als, i64 1
  %i.ame = shufflevector <2 x double> %i.aly, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.amf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amd, <2 x double> %i.ame, <2 x double> %i.amc)
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %i.amh = load <2 x double>, ptr %i.amg, align 16, !tbaa !36, !noalias !154 ; 11 uses
  %i.ami = fmul <2 x double> %i.ama, %i.alu
  %i.amj = shufflevector <2 x double> %i.alt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amj, <2 x double> %i.amh, <2 x double> %i.ami)
  %i.aml = extractelement <2 x double> %i.amh, i64 0
  %i.amm = extractelement <2 x double> %i.amh, i64 1
  %i.amn = fmul <2 x double> %i.ame, %i.alv
  %i.amo = shufflevector <2 x double> %i.alt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.amp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amo, <2 x double> %i.amh, <2 x double> %i.amn)
  %i.amq = fmul <2 x double> %i.ame, %i.alu
  %i.amr = insertelement <2 x double> poison, double %i.als, i64 0
  %i.ams = shufflevector <2 x double> %i.amr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ams, <2 x double> %i.amh, <2 x double> %i.amq)
  %i.amu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alv, <2 x double> %i.ama, <2 x double> %i.amt)
  %i.amv = shufflevector <2 x double> %i.alw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.amw = insertelement <2 x double> %i.amv, double %i.alr, i64 1
  %i.amx = fmul <2 x double> %i.aly, %i.amw
  %i.amy = shufflevector <2 x double> %i.alu, <2 x double> %i.alv, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.amz = shufflevector <2 x double> %i.alw, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ana = shufflevector <4 x double> %i.amy, <4 x double> %i.amz, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.anb = shufflevector <2 x double> %i.amh, <2 x double> %i.aly, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.anc = shufflevector <2 x double> %i.amx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.and = insertelement <2 x double> %i.alw, double %i.alr, i64 0
  %i.ane = fmul <2 x double> %i.aly, %i.and       ; 2 uses
  %i.anf = fmul double %i.aml, %i.alr
  %foldExtExtBinop1143.a = fmul <2 x double> %i.amh, %i.alw
  %i.ang = extractelement <2 x double> %foldExtExtBinop1143.a, i64 0
  %i.anh = shufflevector <2 x double> %i.amh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ani = shufflevector <2 x double> %i.alu, <2 x double> %i.alv, <2 x i32> <i32 1, i32 3>
  %i.anj = fmul <2 x double> %i.anh, %i.ani
  %i.ank = shufflevector <2 x double> %i.alu, <2 x double> %i.alv, <2 x i32> <i32 0, i32 2>
  %i.anl = shufflevector <2 x double> %i.amh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.anm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ank, <2 x double> %i.anl, <2 x double> %i.anj) ; 2 uses
  %i.ann = shufflevector <2 x double> %i.ane, <2 x double> %i.anm, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ano = shufflevector <4 x double> %i.ann, <4 x double> %i.anc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.anp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ana, <4 x double> %i.anb, <4 x double> %i.ano)
  %i.anq = shufflevector <2 x double> %i.alw, <2 x double> %i.alv, <2 x i32> <i32 0, i32 3>
  %i.anr = shufflevector <2 x double> %i.aly, <2 x double> %i.amh, <2 x i32> <i32 1, i32 3>
  %i.ans = shufflevector <2 x double> %i.anm, <2 x double> %i.ane, <2 x i32> <i32 1, i32 3>
  %i.ant = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anq, <2 x double> %i.anr, <2 x double> %i.ans)
  %i.anu = call double @llvm.fmuladd.f64(double %i.alr, double %i.amm, double %i.ang)
  %shift1145 = shufflevector <2 x double> %i.alw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1146 = fmul <2 x double> %i.amh, %shift1145
  %i.anv = insertelement <2 x double> %foldExtExtBinop1146, double -0.000000e+00, i64 1
  %i.anw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alw, <2 x double> %i.anl, <2 x double> %i.anv)
  %i.anx = fadd <2 x double> %i.aji, %i.alz
  %i.any = fadd <2 x double> %i.ajo, %i.amf
  %i.anz = fadd <2 x double> %i.ajt, %i.amk
  %i.aoa = fadd <2 x double> %i.ajw, %i.amp
  %i.aob = fadd <2 x double> %i.akb, %i.amu
  %i.aoc = fadd <4 x double> %i.ako, %i.anp
  %66 = shufflevector <2 x double> %i.akr, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %67 = insertelement <4 x double> %66, double %63, i64 3
  %i.aod = shufflevector <2 x double> %61, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aoe = shufflevector <4 x double> %i.aod, <4 x double> %67, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aof = shufflevector <2 x double> %i.ant, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aog = insertelement <4 x double> %i.aof, double %i.anf, i64 2
  %i.aoh = insertelement <4 x double> %i.aog, double %i.anu, i64 3
  %i.aoi = fadd <4 x double> %i.aoe, %i.aoh
  %68 = insertelement <2 x double> %i.akr, double %65, i64 0
  %i.aoj = fadd <2 x double> %68, %i.anw
  br i1 %i.ahu, label %bb.o, label %._crit_edge1035

._crit_edge1035:                                  ; preds = %bb.n
  %.pre1036 = load double, ptr %i.ahx, align 16, !tbaa !36, !noalias !156
  %.pre1038 = load double, ptr %.phi.trans.insert1037, align 16, !tbaa !36, !noalias !156
  %.pre1040 = load double, ptr %.phi.trans.insert1039, align 8, !tbaa !36, !noalias !156
  %.pre1042 = load double, ptr %.phi.trans.insert1041, align 8, !tbaa !36, !noalias !156
  %.pre1044 = load double, ptr %.phi.trans.insert1043, align 16, !tbaa !36, !noalias !156
  %.pre1046 = load double, ptr %.phi.trans.insert1045, align 16, !tbaa !36, !noalias !156
  %.pre1048 = load double, ptr %.phi.trans.insert1047, align 8, !tbaa !36, !noalias !156
  %.pre1050 = load double, ptr %.phi.trans.insert1049, align 8, !tbaa !36, !noalias !156
  %i.aok = load <2 x double>, ptr %.phi.trans.insert1051, align 16, !tbaa !36, !noalias !156
  %i.aol = insertelement <2 x double> poison, double %.pre1036, i64 0
  %i.aom = insertelement <2 x double> %i.aol, double %.pre1038, i64 1
  %i.aon = insertelement <2 x double> poison, double %.pre1042, i64 0
  %i.aoo = insertelement <2 x double> %i.aon, double %.pre1044, i64 1
  %i.aop = insertelement <2 x double> poison, double %.pre1046, i64 0
  %i.aoq = insertelement <2 x double> %i.aop, double %.pre1048, i64 1
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aor = load <2 x double>, ptr %i.afg, align 16
  %i.aos = load double, ptr %i.afi, align 8, !tbaa !36, !noalias !157
  %i.aot = fsub double %i.aos, %i.agt
  %i.aou = load double, ptr %i.afl, align 16, !tbaa !36, !noalias !157
  %i.aov = insertelement <2 x double> %i.aor, double %i.aou, i64 1
  %i.aow = fsub <2 x double> %i.aov, %i.agu
  %i.aox = load <2 x double>, ptr %i.afs, align 8
  %i.aoy = load <2 x double>, ptr %i.afu, align 16
  %i.aoz = load double, ptr %i.afw, align 8, !tbaa !36, !noalias !157
  %i.apa = fsub double %i.aoz, %i.agv
  %i.apb = load double, ptr %i.afz, align 16, !tbaa !36, !noalias !157
  %i.apc = insertelement <2 x double> %i.aox, double %i.apb, i64 1
  %i.apd = fsub <2 x double> %i.apc, %i.agw
  %i.ape = load double, ptr %i.agg, align 8, !tbaa !36, !noalias !157
  %i.apf = insertelement <2 x double> %i.aoy, double %i.ape, i64 1
  %i.apg = fsub <2 x double> %i.apf, %i.agx
  %i.aph = load <2 x double>, ptr %i.agn, align 16, !tbaa !36, !noalias !157
  %i.api = fsub <2 x double> %i.aph, %i.agy
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge1035, %bb.o
  %i.apj = phi double [ %i.apa, %bb.o ], [ %.pre1050, %._crit_edge1035 ] ; 4 uses
  %i.apk = phi double [ %i.aot, %bb.o ], [ %.pre1040, %._crit_edge1035 ] ; 3 uses
  %i.apl = phi <2 x double> [ %i.aow, %bb.o ], [ %i.aom, %._crit_edge1035 ] ; 5 uses
  %i.apm = phi <2 x double> [ %i.apd, %bb.o ], [ %i.aoo, %._crit_edge1035 ] ; 5 uses
  %i.apn = phi <2 x double> [ %i.apg, %bb.o ], [ %i.aoq, %._crit_edge1035 ] ; 6 uses
  %i.apo = phi <2 x double> [ %i.api, %bb.o ], [ %i.aok, %._crit_edge1035 ] ; 7 uses
  %i.app = getelementptr inbounds nuw [32 x i8], ptr %i.ut, i64 %indvars.iv964 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load <2 x double>, ptr %i.app, align 16, !tbaa !36, !noalias !156 ; 8 uses
  %i.aps = fmul <2 x double> %i.apl, %i.apr
  %i.apt = extractelement <2 x double> %i.apr, i64 0
  %i.apu = fadd <2 x double> %i.anx, %i.aps
  store <2 x double> %i.apu, ptr %30, align 16, !tbaa !36, !alias.scope !158
  %i.apv = shufflevector <2 x double> %i.apr, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.apw = insertelement <2 x double> %i.apl, double %i.apk, i64 0
  %i.apx = fmul <2 x double> %i.apv, %i.apw
  %i.apy = insertelement <2 x double> %i.apl, double %i.apk, i64 1
  %i.apz = shufflevector <2 x double> %i.apr, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.aqa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apy, <2 x double> %i.apz, <2 x double> %i.apx)
  %i.aqb = fadd <2 x double> %i.any, %i.aqa
  store <2 x double> %i.aqb, ptr %i.agz, align 16, !tbaa !36, !alias.scope !158
  %i.aqc = load <2 x double>, ptr %i.apq, align 16, !tbaa !36, !noalias !156 ; 11 uses
  %i.aqd = extractelement <2 x double> %i.aqc, i64 0
  %i.aqe = extractelement <2 x double> %i.aqc, i64 1
  %i.aqf = shufflevector <2 x double> %i.apr, <2 x double> %i.aqc, <2 x i32> <i32 1, i32 2>
  %i.aqg = shufflevector <2 x double> %i.apo, <2 x double> %i.apn, <2 x i32> <i32 1, i32 3>
  %i.aqh = fmul <2 x double> %i.aqf, %i.aqg       ; 2 uses
  %i.aqi = extractelement <2 x double> %i.apn, i64 0
  %i.aqj = fmul double %i.aqd, %i.apj
  %shift1148 = shufflevector <2 x double> %i.apo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149 = fmul <2 x double> %i.aqc, %shift1148
  %i.aqk = fmul <2 x double> %i.apv, %i.apm
  %i.aql = shufflevector <2 x double> %i.apl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aql, <2 x double> %i.aqc, <2 x double> %i.aqk)
  %i.aqn = fadd <2 x double> %i.anz, %i.aqm
  store <2 x double> %i.aqn, ptr %i.aha, align 16, !tbaa !36, !alias.scope !158
  %i.aqo = fmul <2 x double> %i.apz, %i.apn
  %i.aqp = shufflevector <2 x double> %i.apl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aqq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqp, <2 x double> %i.aqc, <2 x double> %i.aqo)
  %i.aqr = fadd <2 x double> %i.aoa, %i.aqq
  store <2 x double> %i.aqr, ptr %i.ahb, align 16, !tbaa !36, !alias.scope !158
  %i.aqs = fmul <2 x double> %i.apz, %i.apm
  %i.aqt = insertelement <2 x double> poison, double %i.apk, i64 0
  %i.aqu = shufflevector <2 x double> %i.aqt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqu, <2 x double> %i.aqc, <2 x double> %i.aqs)
  %i.aqw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apn, <2 x double> %i.apv, <2 x double> %i.aqv)
  %i.aqx = fadd <2 x double> %i.aob, %i.aqw
  store <2 x double> %i.aqx, ptr %i.ahc, align 16, !tbaa !36, !alias.scope !158
  %i.aqy = fmul double %i.apt, %i.apj
  %i.aqz = shufflevector <2 x double> %i.apo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ara = insertelement <2 x double> %i.aqz, double %i.apj, i64 1
  %i.arb = fmul <2 x double> %i.apr, %i.ara
  %i.arc = shufflevector <2 x double> %i.apm, <2 x double> %i.apn, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.ard = shufflevector <2 x double> %i.apo, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.are = shufflevector <4 x double> %i.arc, <4 x double> %i.ard, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.arf = shufflevector <2 x double> %i.aqc, <2 x double> %i.apr, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.arg = insertelement <4 x double> poison, double %i.aqy, i64 0
  %i.arh = shufflevector <2 x double> %i.arb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ari = shufflevector <2 x double> %i.aqc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arj = shufflevector <2 x double> %i.apm, <2 x double> %i.apo, <2 x i32> <i32 1, i32 2>
  %i.ark = fmul <2 x double> %i.ari, %i.arj
  %i.arl = insertelement <2 x double> %i.apm, double %i.apj, i64 1
  %i.arm = shufflevector <2 x double> %i.aqc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.arn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.arl, <2 x double> %i.arm, <2 x double> %i.ark)
  %i.aro = shufflevector <2 x double> %i.arn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.arp = shufflevector <4 x double> %i.arg, <4 x double> %i.aro, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.arq = shufflevector <4 x double> %i.arp, <4 x double> %i.arh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.arr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.are, <4 x double> %i.arf, <4 x double> %i.arq)
  %i.ars = fadd <4 x double> %i.aoc, %i.arr
  store <4 x double> %i.ars, ptr %i.ahd, align 16, !tbaa !36, !alias.scope !158
  %i.art = extractelement <2 x double> %i.aqh, i64 1
  %i.aru = call double @llvm.fmuladd.f64(double %i.aqi, double %i.aqe, double %i.art)
  %i.arv = shufflevector <2 x double> %i.apo, <2 x double> %i.apn, <2 x i32> <i32 0, i32 3>
  %i.arw = shufflevector <2 x double> %i.apr, <2 x double> %i.aqc, <2 x i32> <i32 1, i32 3>
  %i.arx = insertelement <2 x double> poison, double %i.aru, i64 0
  %i.ary = shufflevector <2 x double> %i.arx, <2 x double> %i.aqh, <2 x i32> <i32 0, i32 2>
  %i.arz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.arv, <2 x double> %i.arw, <2 x double> %i.ary)
  %i.asa = shufflevector <2 x double> %i.arz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.asb = insertelement <4 x double> %i.asa, double %i.aqj, i64 2
  %i.asc = shufflevector <4 x double> %i.asb, <4 x double> %i.aro, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.asd = fadd <4 x double> %i.aoi, %i.asc
  store <4 x double> %i.asd, ptr %i.ahe, align 16, !tbaa !36, !alias.scope !158
  %i.ase = insertelement <2 x double> %foldExtExtBinop1149, double -0.000000e+00, i64 1
  %i.asf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apo, <2 x double> %i.arm, <2 x double> %i.ase)
  %i.asg = fadd <2 x double> %i.aoj, %i.asf
  store <2 x double> %i.asg, ptr %i.ahf, align 16, !tbaa !36, !alias.scope !158
  store <4 x i32> <i32 1124024326, i32 2, i32 1, i32 20>, ptr %29, align 16, !tbaa !33
  store i32 153, ptr %i.ahg, align 16, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ahh, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ahi, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ahj, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 1, i32 noundef 20, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(160) %30, i64 noundef 0)
          to label %.noexc410 unwind label %bb.u

.noexc410:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store i64 0, ptr %i.ahl, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !39
  store ptr %29, ptr %i.ahk, align 8, !tbaa !40
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.noexc410
  %i.ash = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.body

bb.r:                                             ; preds = %.noexc410
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.asi = mul nuw nsw i64 %indvars.iv964, 3
  %i.asj = add nuw nsw i64 %indvars.iv.next969, %i.asi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !160
  %i.ask = trunc nuw nsw i64 %i.asj to i32
  store i32 %i.ask, ptr %13, align 4, !tbaa !162, !noalias !160
  %i.asl = trunc i64 %i.asj to i32
  %i.asm = add i32 %i.asl, 1
  store i32 %i.asm, ptr %i.ahm, align 4, !tbaa !163, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !160
  store i64 9223372034707292160, ptr %14, align 8, !noalias !160
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !160
  store i64 0, ptr %i.aho, align 8
  store i32 -1040121850, ptr %31, align 8, !tbaa !39
  store ptr %32, ptr %i.ahn, align 8, !tbaa !40
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 2 uses
  %exitcond967.not = icmp eq i64 %indvars.iv.next965, 3
  br i1 %exitcond967.not, label %bb.i, label %bb.j, !llvm.loop !112

bb.u:                                             ; preds = %.noexc, %bb.p
  %i.asn = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
begin_hunk_1_@_ZNK2cv4usac30EssentialMinimalSolver5ptsImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE:bb.a
  %i.cqk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cln, <2 x double> %i.ccf, <2 x double> %i.cqj)
  %i.cql = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccg, <2 x double> %i.cch, <2 x double> %i.cqk)
  %i.cqm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cci, <2 x double> %i.ccj, <2 x double> %i.cql)
  %i.cqn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cck, <2 x double> %i.ccl, <2 x double> %i.cqm)
  %i.cqo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccm, <2 x double> %i.ccn, <2 x double> %i.cqn)
  %i.cqp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clc, <2 x double> %.sroa.0.176..sroa.0.176., <2 x double> %i.cqo)
  %i.cqq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cld, <2 x double> %i.brp, <2 x double> %i.cqp)
  %i.cqr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccp, <2 x double> %i.ccf, <2 x double> %i.cqq)
  %i.cqs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccq, <2 x double> %i.ccr, <2 x double> %i.cqr)
  %i.cqt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccs, <2 x double> %i.cct, <2 x double> %i.cqs)
  %i.cqu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cid, <2 x double> %i.ccu, <2 x double> %i.cqt)
  %i.cqv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccv, <2 x double> %i.ccw, <2 x double> %i.cqu)
  %i.cqw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cie, <2 x double> %i.buj, <2 x double> %i.cqv)
  %i.cqx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cif, <2 x double> %i.cdd, <2 x double> %i.cqw)
  %i.cqy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cde, <2 x double> %i.btv, <2 x double> %i.cqx)
  %i.cqz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cig, <2 x double> %i.cdf, <2 x double> %i.cqy)
  %i.cra = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdg, <2 x double> %i.cbw, <2 x double> %i.cqz)
  %i.crb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdh, <2 x double> %i.cdi, <2 x double> %i.cra)
  %i.crc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdj, <2 x double> %i.cdk, <2 x double> %i.crb)
  %i.crd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdl, <2 x double> %i.bus, <2 x double> %i.crc)
  %i.cre = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdm, <2 x double> %i.cdn, <2 x double> %i.crd)
  %i.crf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdo, <2 x double> %i.cdd, <2 x double> %i.cre)
  %i.crg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdp, <2 x double> %i.cdq, <2 x double> %i.crf)
  %i.crh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdr, <2 x double> %i.cds, <2 x double> %i.crg)
  %i.cri = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdt, <2 x double> %i.cdu, <2 x double> %i.crh)
  %i.crj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdv, <2 x double> %i.cdw, <2 x double> %i.cri)
  %i.crk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdx, <2 x double> %i.cdy, <2 x double> %i.crj)
  %i.crl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cdz, <2 x double> %i.cea, <2 x double> %i.crk)
  %i.crm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ceb, <2 x double> %i.cec, <2 x double> %i.crl)
  %i.crn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cee, <2 x double> %i.cef, <2 x double> %i.crm)
  %i.cro = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccz, <2 x double> %i.ceg, <2 x double> %i.crn)
  %i.crp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ceh, <2 x double> %i.cei, <2 x double> %i.cro)
  %i.crq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cej, <2 x double> %i.cek, <2 x double> %i.crp)
  %i.crr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cel, <2 x double> %i.cem, <2 x double> %i.crq)
  %i.crs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cen, <2 x double> %i.cek, <2 x double> %i.crr)
  %i.crt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ceo, <2 x double> %i.bwf, <2 x double> %i.crs)
  %i.cru = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cep, <2 x double> %i.bwo, <2 x double> %i.crt)
  %i.crv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ceq, <2 x double> %i.boj, <2 x double> %i.cru)
  %i.crw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cer, <2 x double> %i.ces, <2 x double> %i.crv)
  %i.crx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cet, <2 x double> %i.ceu, <2 x double> %i.crw)
  %i.cry = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cev, <2 x double> %i.cew, <2 x double> %i.crx)
  %i.crz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cey, <2 x double> %i.cez, <2 x double> %i.cry)
  %i.csa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfa, <2 x double> %i.cfb, <2 x double> %i.crz)
  %i.csb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfc, <2 x double> %i.cfd, <2 x double> %i.csa)
  %i.csc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bzq, <2 x double> %i.cfe, <2 x double> %i.csb)
  %i.csd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bnv, <2 x double> %i.cff, <2 x double> %i.csc)
  store <2 x double> %i.csd, ptr %i.bmt, align 8, !tbaa !36
  %i.cse = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clf, <2 x double> %i.cjf, <2 x double> %i.cqh)
  %i.csf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjg, <2 x double> %i.cdy, <2 x double> %i.cse)
  %i.csg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjh, <2 x double> %i.cji, <2 x double> %i.csf)
  %i.csh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjj, <2 x double> %i.cbl, <2 x double> %i.csg)
  %i.csi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjk, <2 x double> %i.cjl, <2 x double> %i.csh)
  %i.csj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjm, <2 x double> %i.ccr, <2 x double> %i.csi)
  %i.csk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjn, <2 x double> %i.cct, <2 x double> %i.csj)
  %i.csl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfp, <2 x double> %i.cir, <2 x double> %i.csk)
  %i.csm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjo, <2 x double> %i.cjq, <2 x double> %i.csl)
  %i.csn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfu, <2 x double> %i.cab, <2 x double> %i.csm)
  %i.cso = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clh, <2 x double> %i.cjr, <2 x double> %i.csn)
  %i.csp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjt, <2 x double> %i.cju, <2 x double> %i.cso)
  %i.csq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjv, <2 x double> %i.cea, <2 x double> %i.csp)
  %i.csr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cqi, <2 x double> %i.ccf, <2 x double> %i.csq)
  %i.css = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjw, <2 x double> %i.ccr, <2 x double> %i.csr)
  %i.cst = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjx, <2 x double> %i.cjy, <2 x double> %i.css)
  %i.csu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cli, <2 x double> %i.ccn, <2 x double> %i.cst)
  %i.csv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjz, <2 x double> %i.cju, <2 x double> %i.csu)
  %i.csw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cka, <2 x double> %i.ckb, <2 x double> %i.csv)
  %i.csx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckc, <2 x double> %i.ckd, <2 x double> %i.csw)
  %i.csy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cke, <2 x double> %i.ckf, <2 x double> %i.csx)
  %i.csz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clj, <2 x double> %i.ckg, <2 x double> %i.csy)
  %i.cta = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckh, <2 x double> %i.cki, <2 x double> %i.csz)
  %i.ctb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.boc, <2 x double> %i.ckj, <2 x double> %i.cta)
  %i.ctc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bnp, <2 x double> %i.ckk, <2 x double> %i.ctb)
  %i.ctd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bxj, <2 x double> %i.ckl, <2 x double> %i.ctc)
  %i.cte = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bze, <2 x double> %i.ckn, <2 x double> %i.ctd)
  %i.ctf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bny, <2 x double> %i.cko, <2 x double> %i.cte)
  %i.ctg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cex, <2 x double> %i.ckp, <2 x double> %i.ctf)
  %i.cth = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bzg, <2 x double> %i.ckq, <2 x double> %i.ctg)
  %i.cti = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bxh, <2 x double> %i.ckr, <2 x double> %i.cth)
  %i.ctj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bnu, <2 x double> %i.cks, <2 x double> %i.cti)
  %i.ctk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bzc, <2 x double> %i.ckt, <2 x double> %i.ctj)
  %i.ctl = shufflevector <2 x double> %i.ctk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ctl, ptr %i.bmu, align 8, !tbaa !36
  %i.ctm = extractelement <2 x double> %i.cqe, i64 1
  %i.ctn = call double @llvm.fmuladd.f64(double %i.bzh, double %.sroa.44.96..sroa.44.304., double %i.ctm)
  %i.cto = call double @llvm.fmuladd.f64(double %i.ckv, double %i.bom, double %i.ctn)
  %i.ctp = call double @llvm.fmuladd.f64(double %i.ckw, double %.sroa.0.96..sroa.0.96., double %i.cto)
  %i.ctq = call double @llvm.fmuladd.f64(double %i.bxk, double %.sroa.0.200..sroa.0.200., double %i.ctp)
  %i.ctr = call double @llvm.fmuladd.f64(double %i.boe, double %.sroa.0.96..sroa.0.96., double %i.ctq)
  %i.cts = call double @llvm.fmuladd.f64(double %i.cfi, double %i.bom, double %i.ctr)
  %i.ctt = call double @llvm.fmuladd.f64(double %i.cfk, double %.sroa.0.96..sroa.0.96., double %i.cts)
  %i.ctu = call double @llvm.fmuladd.f64(double %i.cfh, double %.sroa.44.96..sroa.44.304., double %i.ctt)
  %i.ctv = call double @llvm.fmuladd.f64(double %i.bws, double %.sroa.44.96..sroa.44.304., double %i.ctu)
  %i.ctw = call double @llvm.fmuladd.f64(double %i.bmx, double %i.bon, double %i.ctv)
  %i.ctx = call double @llvm.fmuladd.f64(double %i.cfj, double %.sroa.0.96..sroa.0.96., double %i.ctw)
  %i.cty = fmul double %i.ckx, %.sroa.0.200..sroa.0.200.
  %i.ctz = insertelement <2 x double> %i.cbk, double %.sroa.0.200..sroa.0.200., i64 1
  %i.cua = insertelement <2 x double> poison, double %i.cty, i64 0
  %i.cub = insertelement <2 x double> %i.cua, double %i.ctx, i64 1
  %i.cuc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cla, <2 x double> %i.ctz, <2 x double> %i.cub)
  %i.cud = shufflevector <2 x double> %i.boh, <2 x double> %i.cfu, <2 x i32> <i32 1, i32 3>
  %i.cue = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cud, <2 x double> %i.cbb, <2 x double> %i.cuc)
  %i.cuf = shufflevector <2 x double> %i.cfu, <2 x double> %i.boh, <2 x i32> <i32 1, i32 2>
  %i.cug = insertelement <2 x double> %i.byl, double %.sroa.44.96..sroa.44.304., i64 0
  %i.cuh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cuf, <2 x double> %i.cug, <2 x double> %i.cue)
  %i.cui = insertelement <2 x double> %i.cfx, double %i.bmx, i64 0
  %i.cuj = shufflevector <2 x double> %.sroa.44.88..sroa.44.296., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cuk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cui, <2 x double> %i.cuj, <2 x double> %i.cuh)
  %i.cul = shufflevector <2 x double> %.sroa.44.48..sroa.44.256., <2 x double> %.sroa.0.88..sroa.0.88., <2 x i32> <i32 1, i32 2>
  %i.cum = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.boh, <2 x double> %i.cul, <2 x double> %i.cuk)
  store <2 x double> %i.cum, ptr %i.bmm, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  invoke void @_ZN2cv4usac10SolverPoly6createEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.25") align 8 %47)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  %i.cun = load ptr, ptr %47, align 8, !tbaa !170 ; 2 uses
  %i.cuo = load ptr, ptr %i.cun, align 8, !tbaa !13
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cuo, i64 64
  %i.cuq = load ptr, ptr %i.cup, align 8
  %i.cur = invoke noundef i32 %i.cuq(ptr noundef nonnull align 8 dereferenceable(8) %i.cun, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.av unwind label %bb.bh     ; 3 uses

bb.av:                                            ; preds = %bb.au
  %i.cus = load ptr, ptr %2, align 8, !tbaa !44   ; 5 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.cuu = load ptr, ptr %i.cut, align 8, !tbaa !45 ; 2 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cuw = load ptr, ptr %i.cuv, align 8, !tbaa !46
  %.not4.i.i.i.i.i = icmp eq ptr %i.cus, %i.cuu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.av, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cux, %.lr.ph.i.i.i.i.i ], [ %i.cus, %bb.av ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #19
  %i.cux = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cux, %i.cuu
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !121

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.av
  %.not.i.i1.i.i.i = icmp eq ptr %i.cus, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.cuy = ptrtoint ptr %i.cuw to i64
  %i.cuz = ptrtoint ptr %i.cus to i64
  %i.cva = sub i64 %i.cuy, %i.cuz
  call void @_ZdlPvm(ptr noundef nonnull %i.cus, i64 noundef %i.cva) #20
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.aw
  %i.cvb = sext i32 %i.cur to i64
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cvb)
          to label %.preheader unwind label %bb.bh

.preheader:                                       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.cvc = icmp sgt i32 %i.cur, 0
  br i1 %i.cvc, label %.lr.ph933, label %._crit_edge934

.lr.ph933:                                        ; preds = %.preheader
  %i.cvd = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.cve = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.cvf = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.cvg = getelementptr inbounds nuw i8, ptr %50, i64 64
  %i.cvh = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.cvi = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.cvj = getelementptr inbounds nuw i8, ptr %49, i64 72
  %i.cvk = getelementptr inbounds nuw i8, ptr %49, i64 128
  %i.cvl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cvm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cvn = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  %i.cvo = getelementptr inbounds nuw i8, ptr %51, i64 24
  %wide.trip.count = zext nneg i32 %i.cur to i64
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %.sroa.0.64..sroa_idx1250 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  %.sroa.0.72..sroa_idx1252 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 72
  %.sroa.0.128..sroa_idx1262 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 128
  %.sroa.0.168..sroa_idx1274 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 168
  %.sroa.0.176..sroa_idx1277 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 176
  %.sroa.0.184..sroa_idx1276 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 184
  %.sroa.44.64..sroa_idx1236 = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 64
  %.sroa.44.72..sroa_idx1237 = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 72
  %.sroa.44.80..sroa_idx1238 = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 80
  %.sroa.44.88..sroa_idx1239 = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 88
  %.sroa.44.96..sroa_idx1241 = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 96
  %.sroa.0.80..sroa_idx1253 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 80
  %.sroa.0.136..sroa_idx1263 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 136
  %.sroa.0.144..sroa_idx1267 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 144
  %.sroa.0.152..sroa_idx1268 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 152
  %.sroa.0.192..sroa_idx1278 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 192
  br label %bb.bi

._crit_edge934:                                   ; preds = %bb.bt, %.preheader
  %i.cwn = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.cwo = load ptr, ptr %i.cwn, align 8, !tbaa !31 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cwo, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge934
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwo, i64 8 ; 4 uses
  %i.cwq = load atomic i64, ptr %i.cwp acquire, align 8 ; 2 uses
  %i.cwr = icmp eq i64 %i.cwq, 4294967297
  %i.cws = trunc i64 %i.cwq to i32                ; 2 uses
  br i1 %i.cwr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.cwp, align 8, !tbaa !10
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwo, i64 12
  store i32 0, ptr %i.cwt, align 4, !tbaa !11
  %i.cwu = load ptr, ptr %i.cwo, align 8, !tbaa !13
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 16
  %i.cww = load ptr, ptr %i.cwv, align 8
  call void %i.cww(ptr noundef nonnull align 8 dereferenceable(16) %i.cwo) #19, !inline_history !122
  %i.cwx = load ptr, ptr %i.cwo, align 8, !tbaa !13
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwx, i64 24
  %i.cwz = load ptr, ptr %i.cwy, align 8
  call void %i.cwz(ptr noundef nonnull align 8 dereferenceable(16) %i.cwo) #19, !inline_history !122
  br label %_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.cxa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i526 = icmp eq i8 %i.cxa, 0
  br i1 %.not.i.i.i526, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cxb = add nsw i32 %i.cws, -1
  store i32 %i.cxb, ptr %i.cwp, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.cxc = atomicrmw volatile add ptr %i.cwp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i = phi i32 [ %i.cws, %bb.ba ], [ %i.cxc, %bb.bb ]
  %i.cxd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cxd, label %bb.bc, label %_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cwo) #19
  br label %_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge934, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  %i.cxe = load ptr, ptr %46, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i527 = icmp eq ptr %i.cxe, null
  br i1 %.not.i.i.i527, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cxf = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.cxg = load ptr, ptr %i.cxf, align 8, !tbaa !129
  %i.cxh = ptrtoint ptr %i.cxg to i64
  %i.cxi = ptrtoint ptr %i.cxe to i64
  %i.cxj = sub i64 %i.cxh, %i.cxi
  call void @_ZdlPvm(ptr noundef nonnull %i.cxe, i64 noundef %i.cxj) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN2cv4usac10SolverPolyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.cxk = load ptr, ptr %45, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i528 = icmp eq ptr %i.cxk, null
  br i1 %.not.i.i.i528, label %_ZNSt6vectorIdSaIdEED2Ev.exit529, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.cxl = load ptr, ptr %i.bmo, align 8, !tbaa !129
  %i.cxm = ptrtoint ptr %i.cxl to i64
  %i.cxn = ptrtoint ptr %i.cxk to i64
  %i.cxo = sub i64 %i.cxm, %i.cxn
  call void @_ZdlPvm(ptr noundef nonnull %i.cxk, i64 noundef %i.cxo) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit529

_ZNSt6vectorIdSaIdEED2Ev.exit529:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.cxp = load ptr, ptr %i.cut, align 8, !tbaa !45
  %i.cxq = load ptr, ptr %2, align 8, !tbaa !44
  %i.cxr = ptrtoint ptr %i.cxp to i64
  %i.cxs = ptrtoint ptr %i.cxq to i64
  %i.cxt = sub i64 %i.cxr, %i.cxs
  %i.cxu = sdiv exact i64 %i.cxt, 208
  %i.cxv = trunc i64 %i.cxu to i32
  br label %bb.ci

bb.bf:                                            ; preds = %.peel.next.2
  %i.cxw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit541

bb.bg:                                            ; preds = %bb.at
  %i.cxx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bh:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.au
  %i.cxy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bi:                                            ; preds = %.lr.ph933, %bb.bt
  %indvars.iv993 = phi i64 [ 0, %.lr.ph933 ], [ %indvars.iv.next994, %bb.bt ] ; 2 uses
  %i.cxz = load ptr, ptr %46, align 8, !tbaa !128
  %i.cya = getelementptr inbounds nuw [8 x i8], ptr %i.cxz, i64 %indvars.iv993
  %i.cyb = load double, ptr %i.cya, align 8, !tbaa !36 ; 15 uses
  %.sroa.0.64..sroa.0.64.1197 = load double, ptr %.sroa.0.64..sroa_idx1250, align 16, !tbaa !36
  %.sroa.0.72..sroa.0.72.1199 = load double, ptr %.sroa.0.72..sroa_idx1252, align 8, !tbaa !36
  %.sroa.0.128..sroa.0.128.1205 = load double, ptr %.sroa.0.128..sroa_idx1262, align 16, !tbaa !36
  %.sroa.0.168..sroa.0.168.1216 = load double, ptr %.sroa.0.168..sroa_idx1274, align 8, !tbaa !36
  %.sroa.0.176..sroa.0.176.1219 = load double, ptr %.sroa.0.176..sroa_idx1277, align 16, !tbaa !36
  %.sroa.0.184..sroa.0.184. = load double, ptr %.sroa.0.184..sroa_idx1276, align 8, !tbaa !36
  %.sroa.44.64..sroa.44.272.1224 = load double, ptr %.sroa.44.64..sroa_idx1236, align 16, !tbaa !36
  %.sroa.44.72..sroa.44.280.1226 = load double, ptr %.sroa.44.72..sroa_idx1237, align 8, !tbaa !36
  %.sroa.44.80..sroa.44.288.1228 = load double, ptr %.sroa.44.80..sroa_idx1238, align 16, !tbaa !36
  %.sroa.44.88..sroa.44.296.1230 = load double, ptr %.sroa.44.88..sroa_idx1239, align 8, !tbaa !36
  %.sroa.44.96..sroa.44.304.1233 = load double, ptr %.sroa.44.96..sroa_idx1241, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %.sroa.0.0..sroa.0.0. = load <8 x double>, ptr %.sroa.0, align 16, !tbaa !36 ; 4 uses
  %i.cyc = shufflevector <8 x double> %.sroa.0.0..sroa.0.0., <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.cyd = shufflevector <8 x double> %.sroa.0.0..sroa.0.0., <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cye = shufflevector <8 x double> %.sroa.0.0..sroa.0.0., <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.cyf = insertelement <2 x double> poison, double %i.cyb, i64 0
  %i.cyg = shufflevector <2 x double> %i.cyf, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cyh = shufflevector <8 x double> %.sroa.0.0..sroa.0.0., <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %.sroa.0.80..sroa.0.80. = load <6 x double>, ptr %.sroa.0.80..sroa_idx1253, align 16, !tbaa !36 ; 3 uses
  %i.cyi = shufflevector <6 x double> %.sroa.0.80..sroa.0.80., <6 x double> poison, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.cyj = insertelement <2 x double> %i.cyi, double %.sroa.0.64..sroa.0.64.1197, i64 0
  %69 = shufflevector <6 x double> %.sroa.0.80..sroa.0.80., <6 x double> poison, <2 x i32> <i32 0, i32 3>
  %70 = shufflevector <6 x double> %.sroa.0.80..sroa.0.80., <6 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.cyk = insertelement <2 x double> %i.cyi, double %.sroa.0.128..sroa.0.128.1205, i64 1
  %.sroa.0.136..sroa.0.136. = load <2 x double>, ptr %.sroa.0.136..sroa_idx1263, align 8, !tbaa !36
  %.sroa.0.144..sroa.0.144.1212 = load double, ptr %.sroa.0.144..sroa_idx1267, align 16, !tbaa !36
  %.sroa.0.152..sroa.0.152. = load <2 x double>, ptr %.sroa.0.152..sroa_idx1268, align 8, !tbaa !36 ; 2 uses
  %.sroa.0.192..sroa.0.192.1221 = load <2 x double>, ptr %.sroa.0.192..sroa_idx1278, align 16, !tbaa !36 ; 2 uses
  %71 = fmul double %i.cyb, %i.cyb                ; 6 uses
  %72 = fmul double %i.cyb, %71                   ; 6 uses
  %73 = fmul double %i.cyb, %72                   ; 3 uses
  %74 = fmul double %72, %.sroa.0.72..sroa.0.72.1199
  %i.cyl = insertelement <2 x double> poison, double %73, i64 0
  %75 = insertelement <2 x double> %i.cyl, double %71, i64 1
  %76 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %74, i64 0
  %77 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyj, <2 x double> %75, <2 x double> %76)
  %78 = insertelement <2 x double> poison, double %71, i64 0 ; 2 uses
  %79 = insertelement <2 x double> %78, double %72, i64 1
  %80 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %69, <2 x double> %79, <2 x double> %77)
  %81 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %i.cyg, <2 x double> %80)
  %82 = fadd <2 x double> %i.cyk, %81             ; 3 uses
  %83 = fmul double %71, %.sroa.0.144..sroa.0.144.1212
  %84 = fmul double %72, %.sroa.0.176..sroa.0.176.1219
  %85 = call double @llvm.fmuladd.f64(double %.sroa.0.168..sroa.0.168.1216, double %73, double %84)
  %86 = insertelement <2 x double> %.sroa.0.136..sroa.0.136., double %.sroa.0.184..sroa.0.184., i64 1
  %87 = insertelement <2 x double> poison, double %72, i64 0 ; 2 uses
  %88 = insertelement <2 x double> %87, double %71, i64 1
  %89 = insertelement <2 x double> poison, double %83, i64 0
  %90 = insertelement <2 x double> %89, double %85, i64 1
  %91 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %86, <2 x double> %88, <2 x double> %90)
  %92 = shufflevector <2 x double> %.sroa.0.152..sroa.0.152., <2 x double> %.sroa.0.192..sroa.0.192.1221, <2 x i32> <i32 0, i32 2>
  %93 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %92, <2 x double> %i.cyg, <2 x double> %91)
  %94 = shufflevector <2 x double> %.sroa.0.152..sroa.0.152., <2 x double> %.sroa.0.192..sroa.0.192.1221, <2 x i32> <i32 1, i32 3>
  %95 = fadd <2 x double> %94, %93                ; 4 uses
  %foldExtExtBinop1192 = fmul <2 x double> %95, %95
  %96 = extractelement <2 x double> %foldExtExtBinop1192, i64 0
  %97 = extractelement <2 x double> %82, i64 1    ; 2 uses
  %i.cym = call double @llvm.fmuladd.f64(double %97, double %97, double %96)
  %98 = extractelement <2 x double> %95, i64 1    ; 2 uses
  %99 = call double @llvm.fmuladd.f64(double %98, double %98, double %i.cym)
  %100 = fmul double %72, %.sroa.44.72..sroa.44.280.1226
  %101 = call double @llvm.fmuladd.f64(double %.sroa.44.64..sroa.44.272.1224, double %73, double %100)
  %102 = call double @llvm.fmuladd.f64(double %.sroa.44.80..sroa.44.288.1228, double %71, double %101)
  %103 = call double @llvm.fmuladd.f64(double %.sroa.44.88..sroa.44.296.1230, double %i.cyb, double %102)
  %i.cyn = fadd double %.sroa.44.96..sroa.44.304.1233, %103 ; 3 uses
  %104 = shufflevector <2 x double> %78, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %105 = fmul <2 x double> %104, %i.cyc
  %106 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cyo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyd, <2 x double> %106, <2 x double> %105)
  %i.cyp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cye, <2 x double> %i.cyg, <2 x double> %i.cyo)
  %i.cyq = fadd <2 x double> %i.cyh, %i.cyp       ; 3 uses
  %i.cyr = extractelement <2 x double> %82, i64 0 ; 2 uses
  %.sroa.44.0..sroa.44.208. = load <8 x double>, ptr %.sroa.44, align 16, !tbaa !36 ; 4 uses
  %i.cys = shufflevector <8 x double> %.sroa.44.0..sroa.44.208., <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.cyt = fmul <2 x double> %104, %i.cys
  %i.cyu = shufflevector <8 x double> %.sroa.44.0..sroa.44.208., <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cyv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyu, <2 x double> %106, <2 x double> %i.cyt)
  %i.cyw = shufflevector <8 x double> %.sroa.44.0..sroa.44.208., <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.cyx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyw, <2 x double> %i.cyg, <2 x double> %i.cyv)
  %i.cyy = shufflevector <8 x double> %.sroa.44.0..sroa.44.208., <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cyz = fadd <2 x double> %i.cyy, %i.cyx       ; 3 uses
  %107 = shufflevector <2 x double> %i.cyq, <2 x double> %i.cyz, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cza = fmul <2 x double> %107, %107
  %108 = shufflevector <2 x double> %i.cyq, <2 x double> %i.cyz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.czb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %108, <2 x double> %108, <2 x double> %i.cza) ; 2 uses
  %i.czc = extractelement <2 x double> %i.czb, i64 0
  %i.czd = call double @llvm.fmuladd.f64(double %i.cyr, double %i.cyr, double %i.czc)
  %109 = fadd double %i.czd, 0.000000e+00
  %i.cze = fadd double %109, %99
  %i.czf = extractelement <2 x double> %i.czb, i64 1
  %i.czg = call double @llvm.fmuladd.f64(double %i.cyn, double %i.cyn, double %i.czf)
  %i.czh = fadd double %i.cze, %i.czg
  %i.czi = call double @sqrt(double noundef %i.czh) #19
  %i.czj = fdiv double 1.000000e+00, %i.czi       ; 2 uses
  %i.czk = insertelement <2 x double> poison, double %i.czj, i64 0
  %i.czl = shufflevector <2 x double> %i.czk, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.czm = fmul <2 x double> %i.cyq, %i.czl
  store <2 x double> %i.czm, ptr %50, align 16, !tbaa !36, !alias.scope !171
  %i.czn = fmul <2 x double> %82, %i.czl
  store <2 x double> %i.czn, ptr %i.cvd, align 16, !tbaa !36, !alias.scope !171
  %i.czo = fmul <2 x double> %95, %i.czl
  store <2 x double> %i.czo, ptr %i.cve, align 16, !tbaa !36, !alias.scope !171
  %i.czp = fmul <2 x double> %i.cyz, %i.czl
  store <2 x double> %i.czp, ptr %i.cvf, align 16, !tbaa !36, !alias.scope !171
  %i.czq = fmul double %i.cyn, %i.czj
  store double %i.czq, ptr %i.cvg, align 16, !tbaa !36, !alias.scope !171
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %49, align 16, !tbaa !33
  store i32 153, ptr %i.cvh, align 16, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cvi, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.cvj, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc530 unwind label %bb.bm

.noexc530:                                        ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cvk, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %50, i64 noundef 0)
          to label %.noexc531 unwind label %bb.bm

.noexc531:                                        ; preds = %.noexc530
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %i.cvm, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !39
  store ptr %49, ptr %i.cvl, align 8, !tbaa !40
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %.noexc531
  %i.czr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body532

bb.bk:                                            ; preds = %.noexc531
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  invoke void @_ZN2cv4usac5Utils15getRightEpipoleERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 8 %48, ptr noundef nonnull align 8 dereferenceable(208) %49)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  %i.czs = load double, ptr %i.cvn, align 16, !tbaa !36 ; 3 uses
  %i.czt = load <2 x double>, ptr %48, align 16, !tbaa !36 ; 4 uses
  %foldExtExtBinop1192.a = fmul <2 x double> %i.czt, %i.czt
  %i.czu = extractelement <2 x double> %foldExtExtBinop1192.a, i64 1
  %i.czv = extractelement <2 x double> %i.czt, i64 0 ; 2 uses
  %i.czw = call double @llvm.fmuladd.f64(double %i.czv, double %i.czv, double %i.czu)
  %i.czx = call double @llvm.fmuladd.f64(double %i.czs, double %i.czs, double %i.czw)
  %sqrt = call double @llvm.sqrt.f64(double %i.czx)
  %i.czy = fdiv double 1.000000e+00, %sqrt        ; 2 uses
  %i.czz = insertelement <2 x double> poison, double %i.czy, i64 0
  %i.daa = shufflevector <2 x double> %i.czz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dab = fmul <2 x double> %i.czt, %i.daa
  store <2 x double> %i.dab, ptr %48, align 16, !tbaa !36
  %i.dac = fmul double %i.czs, %i.czy             ; 2 uses
  store double %i.dac, ptr %i.cvn, align 16, !tbaa !36
  %i.dad = call double @llvm.fabs.f64(double %i.dac)
  %i.dae = fcmp olt double %i.dad, 1.000000e-10
  br i1 %i.dae, label %bb.bt, label %bb.bo

bb.bm:                                            ; preds = %.noexc530, %bb.bi
  %i.daf = landingpad { ptr, i32 }
          cleanup
  br label %.body532

bb.bn:                                            ; preds = %bb.bk
  %i.dag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #19
  br label %.body532

.body532:                                         ; preds = %bb.bm, %bb.bj, %bb.bn
  %.pn306 = phi { ptr, i32 } [ %i.dag, %bb.bn ], [ %i.daf, %bb.bm ], [ %i.czr, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %51, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit535 unwind label %bb.br

_ZN2cv4Mat_IdEC2Eii.exit535:                      ; preds = %bb.bo
  %i.dah = load ptr, ptr %i.cvo, align 8, !tbaa !34 ; 9 uses
  %i.dai = load double, ptr %i.cvn, align 16, !tbaa !36
  %i.daj = load <2 x double>, ptr %48, align 16, !tbaa !36
  %i.dak = insertelement <2 x double> poison, double %i.dai, i64 0
  %i.dal = shufflevector <2 x double> %i.dak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dam = fdiv <2 x double> %i.daj, %i.dal       ; 2 uses
  %i.dan = extractelement <2 x double> %i.dam, i64 1 ; 9 uses
  %i.dao = extractelement <2 x double> %i.dam, i64 0 ; 9 uses
  %i.dap = load double, ptr %i.a, align 16, !tbaa !36
  %i.daq = load double, ptr %i.rt, align 8, !tbaa !36
  %i.dar = fmul double %i.dan, %i.daq
  %i.das = call double @llvm.fmuladd.f64(double %i.dap, double %i.dao, double %i.dar)
  %i.dat = load double, ptr %i.sf, align 16, !tbaa !36
  %i.dau = call double @llvm.fmuladd.f64(double %i.dat, double %i.cyb, double %i.das)
  %i.dav = load double, ptr %i.sk, align 8, !tbaa !36
  %i.daw = fadd double %i.dav, %i.dau
  store double %i.daw, ptr %i.dah, align 8, !tbaa !36
  %i.dax = load double, ptr %i.rl, align 8, !tbaa !36
  %i.day = load double, ptr %i.cvp, align 16, !tbaa !36
  %i.daz = fmul double %i.dan, %i.day
  %i.dba = call double @llvm.fmuladd.f64(double %i.dax, double %i.dao, double %i.daz)
  %i.dbb = load double, ptr %i.cvq, align 8, !tbaa !36
  %i.dbc = call double @llvm.fmuladd.f64(double %i.dbb, double %i.cyb, double %i.dba)
  %i.dbd = load double, ptr %i.cvr, align 16, !tbaa !36
  %i.dbe = fadd double %i.dbd, %i.dbc
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dah, i64 8
  store double %i.dbe, ptr %i.dbf, align 8, !tbaa !36
  %i.dbg = load double, ptr %i.rm, align 16, !tbaa !36
  %i.dbh = load double, ptr %i.cvs, align 8, !tbaa !36
  %i.dbi = fmul double %i.dan, %i.dbh
  %i.dbj = call double @llvm.fmuladd.f64(double %i.dbg, double %i.dao, double %i.dbi)
  %i.dbk = load double, ptr %i.cvt, align 16, !tbaa !36
  %i.dbl = call double @llvm.fmuladd.f64(double %i.dbk, double %i.cyb, double %i.dbj)
  %i.dbm = load double, ptr %i.cvu, align 8, !tbaa !36
  %i.dbn = fadd double %i.dbm, %i.dbl
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dah, i64 16
  store double %i.dbn, ptr %i.dbo, align 8, !tbaa !36
  %i.dbp = load double, ptr %i.rn, align 8, !tbaa !36
  %i.dbq = load double, ptr %i.cvv, align 16, !tbaa !36
  %i.dbr = fmul double %i.dan, %i.dbq
  %i.dbs = call double @llvm.fmuladd.f64(double %i.dbp, double %i.dao, double %i.dbr)
  %i.dbt = load double, ptr %i.cvw, align 8, !tbaa !36
  %i.dbu = call double @llvm.fmuladd.f64(double %i.dbt, double %i.cyb, double %i.dbs)
  %i.dbv = load double, ptr %i.cvx, align 16, !tbaa !36
  %i.dbw = fadd double %i.dbv, %i.dbu
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dah, i64 24
  store double %i.dbw, ptr %i.dbx, align 8, !tbaa !36
  %i.dby = load double, ptr %i.ro, align 16, !tbaa !36
  %i.dbz = load double, ptr %i.cvy, align 8, !tbaa !36
  %i.dca = fmul double %i.dan, %i.dbz
  %i.dcb = call double @llvm.fmuladd.f64(double %i.dby, double %i.dao, double %i.dca)
  %i.dcc = load double, ptr %i.cvz, align 16, !tbaa !36
  %i.dcd = call double @llvm.fmuladd.f64(double %i.dcc, double %i.cyb, double %i.dcb)
  %i.dce = load double, ptr %i.cwa, align 8, !tbaa !36
  %i.dcf = fadd double %i.dce, %i.dcd
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dah, i64 32
  store double %i.dcf, ptr %i.dcg, align 8, !tbaa !36
  %i.dch = load double, ptr %i.rp, align 8, !tbaa !36
  %i.dci = load double, ptr %i.cwb, align 16, !tbaa !36
  %i.dcj = fmul double %i.dan, %i.dci
  %i.dck = call double @llvm.fmuladd.f64(double %i.dch, double %i.dao, double %i.dcj)
  %i.dcl = load double, ptr %i.cwc, align 8, !tbaa !36
  %i.dcm = call double @llvm.fmuladd.f64(double %i.dcl, double %i.cyb, double %i.dck)
  %i.dcn = load double, ptr %i.cwd, align 16, !tbaa !36
  %i.dco = fadd double %i.dcn, %i.dcm
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dah, i64 40
  store double %i.dco, ptr %i.dcp, align 8, !tbaa !36
  %i.dcq = load double, ptr %i.rq, align 16, !tbaa !36
  %i.dcr = load double, ptr %i.cwe, align 8, !tbaa !36
  %i.dcs = fmul double %i.dan, %i.dcr
  %i.dct = call double @llvm.fmuladd.f64(double %i.dcq, double %i.dao, double %i.dcs)
  %i.dcu = load double, ptr %i.cwf, align 16, !tbaa !36
  %i.dcv = call double @llvm.fmuladd.f64(double %i.dcu, double %i.cyb, double %i.dct)
  %i.dcw = load double, ptr %i.cwg, align 8, !tbaa !36
  %i.dcx = fadd double %i.dcw, %i.dcv
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dah, i64 48
  store double %i.dcx, ptr %i.dcy, align 8, !tbaa !36
  %i.dcz = load double, ptr %i.rr, align 8, !tbaa !36
  %i.dda = load double, ptr %i.cwh, align 16, !tbaa !36
  %i.ddb = fmul double %i.dan, %i.dda
  %i.ddc = call double @llvm.fmuladd.f64(double %i.dcz, double %i.dao, double %i.ddb)
  %i.ddd = load double, ptr %i.cwi, align 8, !tbaa !36
  %i.dde = call double @llvm.fmuladd.f64(double %i.ddd, double %i.cyb, double %i.ddc)
  %i.ddf = load double, ptr %i.cwj, align 16, !tbaa !36
  %i.ddg = fadd double %i.ddf, %i.dde
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dah, i64 56
  store double %i.ddg, ptr %i.ddh, align 8, !tbaa !36
  %i.ddi = load double, ptr %i.rs, align 16, !tbaa !36
  %i.ddj = load double, ptr %i.cwk, align 8, !tbaa !36
  %i.ddk = fmul double %i.dan, %i.ddj
  %i.ddl = call double @llvm.fmuladd.f64(double %i.ddi, double %i.dao, double %i.ddk)
  %i.ddm = load double, ptr %i.cwl, align 16, !tbaa !36
  %i.ddn = call double @llvm.fmuladd.f64(double %i.ddm, double %i.cyb, double %i.ddl)
  %i.ddo = load double, ptr %i.cwm, align 8, !tbaa !36
  %i.ddp = fadd double %i.ddo, %i.ddn
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.dah, i64 64
  store double %i.ddp, ptr %i.ddq, align 8, !tbaa !36
  %i.ddr = load ptr, ptr %i.cut, align 8, !tbaa !45 ; 3 uses
  %i.dds = load ptr, ptr %i.cuv, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.ddr, %i.dds
  br i1 %.not.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN2cv4Mat_IdEC2Eii.exit535
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ddr, ptr noundef nonnull align 8 dereferenceable(208) %51)
          to label %.noexc536 unwind label %bb.bs

.noexc536:                                        ; preds = %bb.bp
  %i.ddt = load ptr, ptr %i.cut, align 8, !tbaa !45
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddt, i64 208
  store ptr %i.ddu, ptr %i.cut, align 8, !tbaa !45
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJRNS0_4Mat_IdEEEEERS1_DpOT_.exit

bb.bq:                                            ; preds = %_ZN2cv4Mat_IdEC2Eii.exit535
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRNS0_4Mat_IdEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ddr, ptr noundef nonnull align 8 dereferenceable(208) %51)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJRNS0_4Mat_IdEEEEERS1_DpOT_.exit unwind label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %i.ddv = landingpad { ptr, i32 }
end_hunk_1
