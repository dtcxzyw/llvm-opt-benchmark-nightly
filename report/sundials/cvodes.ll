Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
  %i.ahf = fadd double %i.ahe, %.018.i.i.i.i.i.epil.init
  br label %cvAltSum.exit.loopexit.i.i.i.i

cvAltSum.exit.loopexit.i.i.i.i:                   ; preds = %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.epil.preheader
  %.lcssa1133 = phi double [ %i.agy, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ], [ %i.ahf, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.ahg = fmul double %.lcssa1133, %i.age
  %i.ahh = load double, ptr %i.agg, align 8, !tbaa !29
  %i.ahi = fdiv double %i.ahg, %i.ahh
  store double %i.ahi, ptr %i.rc, align 8, !tbaa !29
  br label %bb.hq

bb.hq:                                            ; preds = %cvAltSum.exit.loopexit.i.i.i.i, %bb.hp, %bb.ho
  %i.ahj = fdiv double %i.aga, %.03440.i.i.i.i    ; 4 uses
  %min.iters.check1026 = icmp samesign ult i64 %indvars.iv.i.i.i.i, 4
  br i1 %min.iters.check1026, label %scalar.ph1025, label %vector.ph1027

vector.ph1027:                                    ; preds = %bb.hq
  %n.vec1028 = and i64 %indvars.iv.i.i.i.i, 9223372036854775804 ; 2 uses
  %i.ahk = and i64 %indvars.iv.i.i.i.i, 3
  %broadcast.splatinsert1029 = insertelement <2 x double> poison, double %i.ahj, i64 0 ; 2 uses
  %i.ahl = shufflevector <2 x double> %broadcast.splatinsert1029, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahm = shufflevector <2 x double> %broadcast.splatinsert1029, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1027
  %index1032 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1043, %vector.body1031 ] ; 2 uses
  %i.ahn = sub i64 %indvars.iv.i.i.i.i, %index1032
  %i.aho = getelementptr [8 x i8], ptr %i.o, i64 %i.ahn ; 4 uses
  %i.ahp = getelementptr i8, ptr %i.aho, i64 -16
  %i.ahq = getelementptr i8, ptr %i.aho, i64 -32
  %wide.load1033 = load <2 x double>, ptr %i.ahp, align 8, !tbaa !29
  %wide.load1034 = load <2 x double>, ptr %i.ahq, align 8, !tbaa !29
  %i.ahr = getelementptr i8, ptr %i.aho, i64 -8   ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.aho, i64 -24  ; 2 uses
  %wide.load1037 = load <2 x double>, ptr %i.ahr, align 8, !tbaa !29
  %wide.load1038 = load <2 x double>, ptr %i.ahs, align 8, !tbaa !29
  %reverse1041 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1033, <2 x double> %i.ahl, <2 x double> %wide.load1037)
  %reverse1042 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1034, <2 x double> %i.ahm, <2 x double> %wide.load1038)
  store <2 x double> %reverse1041, ptr %i.ahr, align 8, !tbaa !29
  store <2 x double> %reverse1042, ptr %i.ahs, align 8, !tbaa !29
  %index.next1043 = add nuw i64 %index1032, 4     ; 2 uses
  %i.aht = icmp eq i64 %index.next1043, %n.vec1028
  br i1 %i.aht, label %middle.block1044, label %vector.body1031, !llvm.loop !266

middle.block1044:                                 ; preds = %vector.body1031
  %cmp.n1045 = icmp eq i64 %indvars.iv.i.i.i.i, %n.vec1028
  br i1 %cmp.n1045, label %.loopexit1124, label %scalar.ph1025

scalar.ph1025:                                    ; preds = %middle.block1044, %bb.hq
  %indvars.iv46.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %bb.hq ], [ %i.ahk, %middle.block1044 ] ; 5 uses
  %i.ahu = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 3 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 -8
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !29
  %i.ahx = load double, ptr %i.ahu, align 8, !tbaa !29
  %i.ahy = call double @llvm.fmuladd.f64(double %i.ahw, double %i.ahj, double %i.ahx)
  store double %i.ahy, ptr %i.ahu, align 8, !tbaa !29
  %i.ahz = icmp samesign ugt i64 %indvars.iv46.i.i.i.i.ph, 1
  br i1 %i.ahz, label %scalar.ph1025.1, label %.loopexit1124

scalar.ph1025.1:                                  ; preds = %scalar.ph1025
  %i.aia = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 2 uses
  %i.aib = getelementptr i8, ptr %i.aia, i64 -8   ; 2 uses
  %i.aic = getelementptr i8, ptr %i.aia, i64 -16
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !29
  %i.aie = load double, ptr %i.aib, align 8, !tbaa !29
  %i.aif = call double @llvm.fmuladd.f64(double %i.aid, double %i.ahj, double %i.aie)
  store double %i.aif, ptr %i.aib, align 8, !tbaa !29
  %i.aig = icmp eq i64 %indvars.iv46.i.i.i.i.ph, 3
  br i1 %i.aig, label %scalar.ph1025.2, label %.loopexit1124

scalar.ph1025.2:                                  ; preds = %scalar.ph1025.1
  %i.aih = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 2 uses
  %i.aii = getelementptr i8, ptr %i.aih, i64 -16  ; 2 uses
  %i.aij = getelementptr i8, ptr %i.aih, i64 -24
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !29
  %i.ail = load double, ptr %i.aii, align 8, !tbaa !29
  %i.aim = call double @llvm.fmuladd.f64(double %i.aik, double %i.ahj, double %i.ail)
  store double %i.aim, ptr %i.aii, align 8, !tbaa !29
  br label %.loopexit1124

.loopexit1124:                                    ; preds = %scalar.ph1025, %scalar.ph1025.1, %scalar.ph1025.2, %middle.block1044
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.i.i.i.i
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !29
  %i.aip = fadd double %.03440.i.i.i.i, %i.aio    ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.agb
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i15.i.i.i.preheader, label %bb.ho

.preheader.i15.i.i.i.preheader:                   ; preds = %.loopexit1124
  %i.aiq = add nsw i64 %i.agb, -1                 ; 2 uses
  %xtraiter1162 = and i64 %i.agb, 1
  %i.air = icmp eq i64 %i.aiq, 0
  br i1 %i.air, label %.preheader.i15.i.i.i.epil.preheader, label %.preheader.i15.i.i.i.preheader.new

.preheader.i15.i.i.i.preheader.new:               ; preds = %.preheader.i15.i.i.i.preheader
  %unroll_iter1167 = and i64 %i.agb, 2147483646
  br label %.preheader.i15.i.i.i

cvAltSum.exit28.thread.i.i.i:                     ; preds = %bb.hn
  store double 1.000000e+00, ptr %i.qx, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

.preheader.i15.i.i.i:                             ; preds = %.preheader.i15.i.i.i, %.preheader.i15.i.i.i.preheader.new
  %indvars.iv.i16.i.i.i = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i15.i.i.i ] ; 4 uses
  %.018.i.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader.new ], [ %i.ajf, %.preheader.i15.i.i.i ]
  %niter1168 = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %niter1168.next.1, %.preheader.i15.i.i.i ]
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i
  %i.ait = load double, ptr %i.ais, align 16, !tbaa !29
  %i.aiu = trunc i64 %indvars.iv.i16.i.i.i to i32
  %i.aiv = or disjoint i32 %i.aiu, 1
  %i.aiw = uitofp nneg i32 %i.aiv to double
  %i.aix = fdiv double %i.ait, %i.aiw
  %i.aiy = fadd double %i.aix, %.018.i.i.i.i
  %indvars.iv.next.i17.i.i.i = or disjoint i64 %indvars.iv.i16.i.i.i, 1 ; 2 uses
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i17.i.i.i
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !29
  %i.ajb = trunc i64 %indvars.iv.next.i17.i.i.i to i32
  %i.ajc = add i32 %i.ajb, 1
  %i.ajd = uitofp nneg i32 %i.ajc to double
  %i.aje = fdiv double %i.aja, %i.ajd
  %i.ajf = fsub double %i.aiy, %i.aje             ; 3 uses
  %indvars.iv.next.i17.i.i.i.1 = add nuw nsw i64 %indvars.iv.i16.i.i.i, 2 ; 2 uses
  %niter1168.next.1 = add i64 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1 = icmp eq i64 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1, label %.preheader.i21.i.i.i.preheader.unr-lcssa, label %.preheader.i15.i.i.i

.preheader.i21.i.i.i.preheader.unr-lcssa:         ; preds = %.preheader.i15.i.i.i
  %lcmp.mod1164.not = icmp eq i64 %xtraiter1162, 0
  br i1 %lcmp.mod1164.not, label %.preheader.i21.i.i.i.preheader, label %.preheader.i15.i.i.i.epil.preheader

.preheader.i15.i.i.i.epil.preheader:              ; preds = %.preheader.i21.i.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.i.preheader
  %indvars.iv.i16.i.i.i.epil.init = phi i64 [ 0, %.preheader.i15.i.i.i.preheader ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i21.i.i.i.preheader.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader ], [ %i.ajf, %.preheader.i21.i.i.i.preheader.unr-lcssa ]
  %lcmp.mod1166 = trunc i32 %i.afv to i1
  call void @llvm.assume(i1 %lcmp.mod1166)
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i.epil.init
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !29
  %i.aji = trunc i64 %indvars.iv.i16.i.i.i.epil.init to i32
  %i.ajj = add i32 %i.aji, 1
  %i.ajk = uitofp nneg i32 %i.ajj to double
  %i.ajl = fdiv double %i.ajh, %i.ajk
  %i.ajm = fadd double %i.ajl, %.018.i.i.i.i.epil.init
  br label %.preheader.i21.i.i.i.preheader

.preheader.i21.i.i.i.preheader:                   ; preds = %.preheader.i21.i.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.i.epil.preheader
  %.lcssa1135 = phi double [ %i.ajf, %.preheader.i21.i.i.i.preheader.unr-lcssa ], [ %i.ajm, %.preheader.i15.i.i.i.epil.preheader ]
  %xtraiter1169 = and i64 %i.agb, 1
  %i.ajn = icmp eq i64 %i.aiq, 0
  br i1 %i.ajn, label %.preheader.i21.i.i.i.epil.preheader, label %.preheader.i21.i.i.i.preheader.new

.preheader.i21.i.i.i.preheader.new:               ; preds = %.preheader.i21.i.i.i.preheader
  %unroll_iter1174 = and i64 %i.agb, 2147483646
  br label %.preheader.i21.i.i.i

.preheader.i21.i.i.i:                             ; preds = %.preheader.i21.i.i.i, %.preheader.i21.i.i.i.preheader.new
  %indvars.iv.i22.i.i.i = phi i64 [ 0, %.preheader.i21.i.i.i.preheader.new ], [ %indvars.iv.next.i25.i.i.i.1, %.preheader.i21.i.i.i ] ; 4 uses
  %.018.i23.i.i.i = phi double [ 0.000000e+00, %.preheader.i21.i.i.i.preheader.new ], [ %i.akb, %.preheader.i21.i.i.i ]
  %niter1175 = phi i64 [ 0, %.preheader.i21.i.i.i.preheader.new ], [ %niter1175.next.1, %.preheader.i21.i.i.i ]
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i22.i.i.i
  %i.ajp = load double, ptr %i.ajo, align 16, !tbaa !29
  %i.ajq = trunc i64 %indvars.iv.i22.i.i.i to i32
  %i.ajr = add i32 %i.ajq, 2
  %i.ajs = uitofp nneg i32 %i.ajr to double
  %i.ajt = fdiv double %i.ajp, %i.ajs
  %i.aju = fadd double %i.ajt, %.018.i23.i.i.i
  %indvars.iv.next.i25.i.i.i = or disjoint i64 %indvars.iv.i22.i.i.i, 1 ; 2 uses
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i25.i.i.i
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !29
  %i.ajx = trunc i64 %indvars.iv.next.i25.i.i.i to i32
  %i.ajy = add i32 %i.ajx, 2
  %i.ajz = uitofp nneg i32 %i.ajy to double
  %i.aka = fdiv double %i.ajw, %i.ajz
  %i.akb = fsub double %i.aju, %i.aka             ; 3 uses
  %indvars.iv.next.i25.i.i.i.1 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 2 ; 2 uses
  %niter1175.next.1 = add i64 %niter1175, 2       ; 2 uses
  %niter1175.ncmp.1 = icmp eq i64 %niter1175.next.1, %unroll_iter1174
  br i1 %niter1175.ncmp.1, label %cvAltSum.exit28.i.i.i.unr-lcssa, label %.preheader.i21.i.i.i

cvAltSum.exit28.i.i.i.unr-lcssa:                  ; preds = %.preheader.i21.i.i.i
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  br i1 %lcmp.mod1171.not, label %cvAltSum.exit28.i.i.i, label %.preheader.i21.i.i.i.epil.preheader

.preheader.i21.i.i.i.epil.preheader:              ; preds = %cvAltSum.exit28.i.i.i.unr-lcssa, %.preheader.i21.i.i.i.preheader
  %indvars.iv.i22.i.i.i.epil.init = phi i64 [ 0, %.preheader.i21.i.i.i.preheader ], [ %indvars.iv.next.i25.i.i.i.1, %cvAltSum.exit28.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i23.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i21.i.i.i.preheader ], [ %i.akb, %cvAltSum.exit28.i.i.i.unr-lcssa ]
  %lcmp.mod1173 = trunc i32 %i.afv to i1
  call void @llvm.assume(i1 %lcmp.mod1173)
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i22.i.i.i.epil.init
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !29
  %i.ake = trunc i64 %indvars.iv.i22.i.i.i.epil.init to i32
  %i.akf = add i32 %i.ake, 2
  %i.akg = uitofp nneg i32 %i.akf to double
  %i.akh = fdiv double %i.akd, %i.akg
  %i.aki = fadd double %i.akh, %.018.i23.i.i.i.epil.init
  br label %cvAltSum.exit28.i.i.i

cvAltSum.exit28.i.i.i:                            ; preds = %cvAltSum.exit28.i.i.i.unr-lcssa, %.preheader.i21.i.i.i.epil.preheader
  %.lcssa1136 = phi double [ %i.akb, %cvAltSum.exit28.i.i.i.unr-lcssa ], [ %i.aki, %.preheader.i21.i.i.i.epil.preheader ]
  %i.akj = fdiv double 1.000000e+00, %.lcssa1135  ; 4 uses
  store double 1.000000e+00, ptr %i.qx, align 8, !tbaa !29
  %i.akk = add nuw nsw i32 %i.afv, 1
  %wide.trip.count.i29.i.i.i = zext nneg i32 %i.akk to i64
  %i.akl = zext nneg i32 %i.afv to i64            ; 3 uses
  %n.vec1013 = and i64 %i.akl, 2147483646         ; 2 uses
  %i.akm = or i64 %i.akl, 1
  %broadcast.splatinsert1014 = insertelement <2 x double> poison, double %i.akj, i64 0
  %broadcast.splat1015 = shufflevector <2 x double> %broadcast.splatinsert1014, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %cvAltSum.exit28.i.i.i
  %index1017 = phi i64 [ 0, %cvAltSum.exit28.i.i.i ], [ %index.next1020, %vector.body1016 ] ; 2 uses
  %vec.ind1018 = phi <2 x i32> [ <i32 1, i32 2>, %cvAltSum.exit28.i.i.i ], [ %vec.ind.next1021, %vector.body1016 ] ; 2 uses
  %i.akn = or disjoint i64 %index1017, 1          ; 2 uses
  %i.ako = getelementptr [8 x i8], ptr %i.o, i64 %i.akn
  %i.akp = getelementptr i8, ptr %i.ako, i64 -8
  %wide.load1019 = load <2 x double>, ptr %i.akp, align 16, !tbaa !29
  %i.akq = uitofp nneg <2 x i32> %vec.ind1018 to <2 x double>
  %i.akr = fdiv <2 x double> %wide.load1019, %i.akq
  %i.aks = fmul <2 x double> %broadcast.splat1015, %i.akr
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.akn
  store <2 x double> %i.aks, ptr %i.akt, align 8, !tbaa !29
  %index.next1020 = add nuw i64 %index1017, 2     ; 2 uses
  %vec.ind.next1021 = add <2 x i32> %vec.ind1018, splat (i32 2)
  %i.aku = icmp eq i64 %index.next1020, %n.vec1013
  br i1 %i.aku, label %middle.block1022, label %vector.body1016, !llvm.loop !267

middle.block1022:                                 ; preds = %vector.body1016
  %cmp.n1023 = icmp eq i64 %n.vec1013, %i.akl
  br i1 %cmp.n1023, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block1022, %.lr.ph.i.i.i.i
  %indvars.iv.i30.i.i.i = phi i64 [ %indvars.iv.next.i31.i.i.i, %.lr.ph.i.i.i.i ], [ %i.akm, %middle.block1022 ] ; 4 uses
  %i.akv = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i30.i.i.i
  %i.akw = getelementptr i8, ptr %i.akv, i64 -8
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !29
  %i.aky = trunc nuw nsw i64 %indvars.iv.i30.i.i.i to i32
  %i.akz = uitofp nneg i32 %i.aky to double
  %i.ala = fdiv double %i.akx, %i.akz
  %i.alb = fmul double %i.akj, %i.ala
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.i30.i.i.i
  store double %i.alb, ptr %i.alc, align 8, !tbaa !29
  %indvars.iv.next.i31.i.i.i = add nuw nsw i64 %indvars.iv.i30.i.i.i, 1 ; 2 uses
  %exitcond.not.i32.i.i.i = icmp eq i64 %indvars.iv.next.i31.i.i.i, %wide.trip.count.i29.i.i.i
  br i1 %exitcond.not.i32.i.i.i, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !268

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %middle.block1022
  %i.ald = fmul double %i.akj, %.lcssa1136
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %cvAltSum.exit28.thread.i.i.i
  %.034.lcssa.i55.i.i.i = phi double [ %i.aga, %cvAltSum.exit28.thread.i.i.i ], [ %i.aip, %._crit_edge.i.loopexit.i.i.i ]
  %i.ale = phi double [ +inf, %cvAltSum.exit28.thread.i.i.i ], [ %i.akj, %._crit_edge.i.loopexit.i.i.i ]
  %.014.i2745.i.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i.i ], [ %i.ald, %._crit_edge.i.loopexit.i.i.i ]
  %i.alf = fdiv double %.034.lcssa.i55.i.i.i, %i.aga ; 3 uses
  %i.alg = fdiv double 1.000000e+00, %i.alf       ; 2 uses
  %i.alh = fdiv double %.014.i2745.i.i.i, %i.alf  ; 2 uses
  store double %i.alh, ptr %i.ra, align 8, !tbaa !29
  %i.ali = sext i32 %i.afv to i64
  %i.alj = getelementptr inbounds [8 x i8], ptr %i.qx, i64 %i.ali
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !29
  %i.all = fdiv double %i.alf, %i.alk
  store double %i.all, ptr %i.rb, align 8, !tbaa !29
  %i.alm = load i32, ptr %i.qr, align 4, !tbaa !81
  %i.aln = icmp eq i32 %i.alm, 1
  br i1 %i.aln, label %.preheader.i33.i.i.i, label %cvAdamsFinish.exit.i.i.i

.preheader.i33.i.i.i:                             ; preds = %._crit_edge.i.i.i.i
  %i.alo = icmp sgt i32 %i.afv, 0
  br i1 %i.alo, label %.lr.ph44.preheader.i.i.i.i, label %._crit_edge45.i.i.i.i

.lr.ph44.preheader.i.i.i.i:                       ; preds = %.preheader.i33.i.i.i
  %i.alp = zext nneg i32 %i.afv to i64            ; 5 uses
  %min.iters.check991 = icmp ult i32 %i.afv, 4
  br i1 %min.iters.check991, label %.lr.ph44.i.i.i.i.preheader, label %vector.ph992

vector.ph992:                                     ; preds = %.lr.ph44.preheader.i.i.i.i
  %n.vec993 = and i64 %i.alp, 2147483644          ; 2 uses
  %i.alq = and i64 %i.alp, 3
  %broadcast.splatinsert994 = insertelement <2 x double> poison, double %i.alg, i64 0 ; 2 uses
  %i.alr = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer
  %i.als = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph992
  %index997 = phi i64 [ 0, %vector.ph992 ], [ %index.next1006, %vector.body996 ] ; 2 uses
  %i.alt = sub i64 %i.alp, %index997
  %i.alu = getelementptr [8 x i8], ptr %i.o, i64 %i.alt ; 4 uses
  %i.alv = getelementptr i8, ptr %i.alu, i64 -16
  %i.alw = getelementptr i8, ptr %i.alu, i64 -32
  %wide.load = load <2 x double>, ptr %i.alv, align 8, !tbaa !29
  %wide.load998 = load <2 x double>, ptr %i.alw, align 8, !tbaa !29
  %i.alx = getelementptr i8, ptr %i.alu, i64 -8   ; 2 uses
  %i.aly = getelementptr i8, ptr %i.alu, i64 -24  ; 2 uses
  %wide.load1000 = load <2 x double>, ptr %i.alx, align 8, !tbaa !29
  %wide.load1001 = load <2 x double>, ptr %i.aly, align 8, !tbaa !29
  %reverse1004 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.alr, <2 x double> %wide.load1000)
  %reverse1005 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load998, <2 x double> %i.als, <2 x double> %wide.load1001)
  store <2 x double> %reverse1004, ptr %i.alx, align 8, !tbaa !29
  store <2 x double> %reverse1005, ptr %i.aly, align 8, !tbaa !29
  %index.next1006 = add nuw i64 %index997, 4      ; 2 uses
  %i.alz = icmp eq i64 %index.next1006, %n.vec993
  br i1 %i.alz, label %middle.block1007, label %vector.body996, !llvm.loop !269

middle.block1007:                                 ; preds = %vector.body996
  %cmp.n1008 = icmp eq i64 %n.vec993, %i.alp
  br i1 %cmp.n1008, label %.preheader.preheader.i.i.i.i.i, label %.lr.ph44.i.i.i.i.preheader

.lr.ph44.i.i.i.i.preheader:                       ; preds = %.lr.ph44.preheader.i.i.i.i, %middle.block1007
  %indvars.iv47.i.i.i.i.ph = phi i64 [ %i.alp, %.lr.ph44.preheader.i.i.i.i ], [ %i.alq, %middle.block1007 ]
  br label %.lr.ph44.i.i.i.i

.lr.ph44.i.i.i.i:                                 ; preds = %.lr.ph44.i.i.i.i.preheader, %.lr.ph44.i.i.i.i
  %indvars.iv47.i.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i.i, %.lr.ph44.i.i.i.i ], [ %indvars.iv47.i.i.i.i.ph, %.lr.ph44.i.i.i.i.preheader ] ; 3 uses
  %i.ama = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv47.i.i.i.i ; 3 uses
  %i.amb = getelementptr i8, ptr %i.ama, i64 -8
  %i.amc = load double, ptr %i.amb, align 8, !tbaa !29
  %i.amd = load double, ptr %i.ama, align 8, !tbaa !29
  %i.ame = call double @llvm.fmuladd.f64(double %i.amc, double %i.alg, double %i.amd)
  store double %i.ame, ptr %i.ama, align 8, !tbaa !29
  %indvars.iv.next48.i.i.i.i = add nsw i64 %indvars.iv47.i.i.i.i, -1
  %i.amf = icmp samesign ugt i64 %indvars.iv47.i.i.i.i, 1
  br i1 %i.amf, label %.lr.ph44.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, !llvm.loop !270

._crit_edge45.i.i.i.i:                            ; preds = %.preheader.i33.i.i.i
  %i.amg = icmp slt i32 %i.afv, 0
  br i1 %i.amg, label %cvAltSum.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.lr.ph44.i.i.i.i, %middle.block1007, %._crit_edge45.i.i.i.i
  %i.amh = add nuw i32 %i.afv, 1                  ; 2 uses
  %wide.trip.count.i.i34.i.i.i = zext i32 %i.amh to i64 ; 2 uses
  %xtraiter1176 = and i64 %wide.trip.count.i.i34.i.i.i, 1
  %i.ami = icmp eq i32 %i.afv, 0
  br i1 %i.ami, label %.preheader.i.i35.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.i.new

.preheader.preheader.i.i.i.i.i.new:               ; preds = %.preheader.preheader.i.i.i.i.i
  %unroll_iter1181 = and i64 %wide.trip.count.i.i34.i.i.i, 4294967294
  br label %.preheader.i.i35.i.i.i

.preheader.i.i35.i.i.i:                           ; preds = %.preheader.i.i35.i.i.i, %.preheader.preheader.i.i.i.i.i.new
  %indvars.iv.i.i36.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.i.1, %.preheader.i.i35.i.i.i ] ; 4 uses
  %.018.i.i37.i.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i.new ], [ %i.amw, %.preheader.i.i35.i.i.i ]
  %niter1182 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %niter1182.next.1, %.preheader.i.i35.i.i.i ]
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i
  %i.amk = load double, ptr %i.amj, align 16, !tbaa !29
  %i.aml = trunc i64 %indvars.iv.i.i36.i.i.i to i32
  %i.amm = add i32 %i.aml, 2
  %i.amn = uitofp nneg i32 %i.amm to double
  %i.amo = fdiv double %i.amk, %i.amn
  %i.amp = fadd double %i.amo, %.018.i.i37.i.i.i
  %indvars.iv.next.i.i39.i.i.i = or disjoint i64 %indvars.iv.i.i36.i.i.i, 1 ; 2 uses
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i39.i.i.i
  %i.amr = load double, ptr %i.amq, align 8, !tbaa !29
  %i.ams = trunc i64 %indvars.iv.next.i.i39.i.i.i to i32
  %i.amt = add i32 %i.ams, 2
  %i.amu = uitofp nneg i32 %i.amt to double
  %i.amv = fdiv double %i.amr, %i.amu
  %i.amw = fsub double %i.amp, %i.amv             ; 3 uses
  %indvars.iv.next.i.i39.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i.i, 2 ; 2 uses
  %niter1182.next.1 = add i64 %niter1182, 2       ; 2 uses
  %niter1182.ncmp.1 = icmp eq i64 %niter1182.next.1, %unroll_iter1181
  br i1 %niter1182.ncmp.1, label %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i.i

cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa:         ; preds = %.preheader.i.i35.i.i.i
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1176, 0
  br i1 %lcmp.mod1178.not, label %cvAltSum.exit.i.i.i.i, label %.preheader.i.i35.i.i.i.epil.preheader

.preheader.i.i35.i.i.i.epil.preheader:            ; preds = %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i.i
  %indvars.iv.i.i36.i.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.i.1, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i ], [ %i.amw, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1180 = trunc i32 %i.amh to i1
  call void @llvm.assume(i1 %lcmp.mod1180)
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i.epil.init
  %i.amy = load double, ptr %i.amx, align 8, !tbaa !29
  %i.amz = trunc i64 %indvars.iv.i.i36.i.i.i.epil.init to i32
  %i.ana = add i32 %i.amz, 2
  %i.anb = uitofp nneg i32 %i.ana to double
  %i.anc = fdiv double %i.amy, %i.anb
  %i.and = fadd double %i.anc, %.018.i.i37.i.i.i.epil.init
  br label %cvAltSum.exit.i.i.i.i

cvAltSum.exit.i.i.i.i:                            ; preds = %.preheader.i.i35.i.i.i.epil.preheader, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i.i
  %.014.i.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i.i ], [ %i.amw, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.and, %.preheader.i.i35.i.i.i.epil.preheader ]
  %i.ane = fmul double %i.ale, %.014.i.i.i.i.i
  %i.anf = load i32, ptr %i.qq, align 8, !tbaa !80
  %i.ang = sitofp i32 %i.anf to double
  %i.anh = fdiv double %i.ane, %i.ang
  store double %i.anh, ptr %i.re, align 8, !tbaa !29
  br label %cvAdamsFinish.exit.i.i.i

cvAdamsFinish.exit.i.i.i:                         ; preds = %cvAltSum.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.ani = load double, ptr %i.rf, align 8, !tbaa !34
  %i.anj = fdiv double %i.ani, %i.alh
  br label %cvSetAdams.exit.i.i

cvSetAdams.exit.i.i:                              ; preds = %cvAdamsFinish.exit.i.i.i, %bb.hm
  %.sink.i.i.i = phi double [ %i.anj, %cvAdamsFinish.exit.i.i.i ], [ %i.afz, %bb.hm ]
  store double %.sink.i.i.i, ptr %i.rg, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  br label %bb.hv

bb.hr:                                            ; preds = %cvPredict.exit.i
  store <2 x double> splat (double 1.000000e+00), ptr %i.qx, align 8, !tbaa !29
end_hunk_0
