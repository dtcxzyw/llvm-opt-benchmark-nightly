Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
  %indvars.iv.next108.i.i = add nsw i64 %indvars.iv107.i.i, -1
  %.not81.not.i.i = icmp sgt i64 %indvars.iv107.i.i, %indvars.iv110.i.i
  br i1 %.not81.not.i.i, label %bb.hd, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1
  %i.afb = load i32, ptr %i.ps, align 8, !tbaa !79 ; 3 uses
  %i.afc = sext i32 %i.afb to i64
  %.not74.not.i.i = icmp slt i64 %indvars.iv110.i.i, %i.afc
  br i1 %.not74.not.i.i, label %.preheader87.i.i, label %.loopexit89.i.i

.loopexit89.i.i:                                  ; preds = %bb.he, %._crit_edge.i.i
  %i.afd = phi i32 [ %i.aes, %._crit_edge.i.i ], [ %i.afb, %bb.he ] ; 3 uses
  %i.afe = load i32, ptr %i.qc, align 4, !tbaa !141
  %.not75.i.i = icmp eq i32 %i.afe, 0
  %.not7698.i.i = icmp slt i32 %i.afd, 1
  %or.cond132.i.i = or i1 %.not7698.i.i, %.not75.i.i
  br i1 %or.cond132.i.i, label %.loopexit86.i.i, label %.preheader84.i.i

.preheader84.i.i:                                 ; preds = %.loopexit89.i.i, %bb.hg
  %indvars.iv116.i.i = phi i64 [ %indvars.iv.next117.i.i, %bb.hg ], [ 1, %.loopexit89.i.i ] ; 3 uses
  %i.aff = phi i32 [ %i.afn, %bb.hg ], [ %i.afd, %.loopexit89.i.i ]
  %i.afg = sext i32 %i.aff to i64
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hf, %.preheader84.i.i
  %indvars.iv113.i.i = phi i64 [ %i.afg, %.preheader84.i.i ], [ %indvars.iv.next114.i.i, %bb.hf ] ; 3 uses
  %i.afh = load i32, ptr %i.ql, align 8, !tbaa !129
  %i.afi = getelementptr [8 x i8], ptr %i.qd, i64 %indvars.iv113.i.i ; 2 uses
  %i.afj = getelementptr i8, ptr %i.afi, i64 -8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !135 ; 2 uses
  %i.afl = load ptr, ptr %i.afi, align 8, !tbaa !135
  %i.afm = call i32 @N_VLinearSumVectorArray(i32 noundef %i.afh, double noundef 1.000000e+00, ptr noundef %i.afk, double noundef 1.000000e+00, ptr noundef %i.afl, ptr noundef %i.afk) #13 ; 0 uses
  %indvars.iv.next114.i.i = add nsw i64 %indvars.iv113.i.i, -1
  %.not80.not.i.i = icmp sgt i64 %indvars.iv113.i.i, %indvars.iv116.i.i
  br i1 %.not80.not.i.i, label %bb.hf, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %indvars.iv.next117.i.i = add nuw nsw i64 %indvars.iv116.i.i, 1
  %i.afn = load i32, ptr %i.ps, align 8, !tbaa !79 ; 3 uses
  %i.afo = sext i32 %i.afn to i64
  %.not76.not.i.i = icmp slt i64 %indvars.iv116.i.i, %i.afo
  br i1 %.not76.not.i.i, label %.preheader84.i.i, label %.loopexit86.i.i

.loopexit86.i.i:                                  ; preds = %bb.hg, %.loopexit89.i.i
  %i.afp = phi i32 [ %i.afd, %.loopexit89.i.i ], [ %i.afn, %bb.hg ] ; 3 uses
  %i.afq = load i32, ptr %i.qf, align 8, !tbaa !173
  %.not77.i.i = icmp eq i32 %i.afq, 0
  %.not78101.i.i = icmp slt i32 %i.afp, 1
  %or.cond133.i.i = or i1 %.not78101.i.i, %.not77.i.i
  br i1 %or.cond133.i.i, label %cvPredict.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit86.i.i, %bb.hi
  %indvars.iv122.i.i = phi i64 [ %indvars.iv.next123.i.i, %bb.hi ], [ 1, %.loopexit86.i.i ] ; 3 uses
  %i.afr = phi i32 [ %i.afz, %bb.hi ], [ %i.afp, %.loopexit86.i.i ]
  %i.afs = sext i32 %i.afr to i64
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %.preheader.i.i
  %indvars.iv119.i.i = phi i64 [ %i.afs, %.preheader.i.i ], [ %indvars.iv.next120.i.i, %bb.hh ] ; 3 uses
  %i.aft = load i32, ptr %i.ql, align 8, !tbaa !129
  %i.afu = getelementptr [8 x i8], ptr %i.qh, i64 %indvars.iv119.i.i ; 2 uses
  %i.afv = getelementptr i8, ptr %i.afu, i64 -8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !135 ; 2 uses
  %i.afx = load ptr, ptr %i.afu, align 8, !tbaa !135
  %i.afy = call i32 @N_VLinearSumVectorArray(i32 noundef %i.aft, double noundef 1.000000e+00, ptr noundef %i.afw, double noundef 1.000000e+00, ptr noundef %i.afx, ptr noundef %i.afw) #13 ; 0 uses
  %indvars.iv.next120.i.i = add nsw i64 %indvars.iv119.i.i, -1
  %.not79.not.i.i = icmp sgt i64 %indvars.iv119.i.i, %indvars.iv122.i.i
  br i1 %.not79.not.i.i, label %bb.hh, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %indvars.iv.next123.i.i = add nuw nsw i64 %indvars.iv122.i.i, 1
  %i.afz = load i32, ptr %i.ps, align 8, !tbaa !79 ; 3 uses
  %i.aga = sext i32 %i.afz to i64
  %.not78.not.i.i = icmp slt i64 %indvars.iv122.i.i, %i.aga
  br i1 %.not78.not.i.i, label %.preheader.i.i, label %cvPredict.exit.i

cvPredict.exit.i:                                 ; preds = %bb.hi, %.loopexit86.i.i, %bb.ha
  %i.agb = phi i32 [ %i.afp, %.loopexit86.i.i ], [ %i.ael, %bb.ha ], [ %i.afz, %bb.hi ] ; 30 uses
  %i.agc = load i32, ptr %i.rd, align 8, !tbaa !23
  switch i32 %i.agc, label %bb.ht [
    i32 1, label %bb.hj
    i32 2, label %bb.hp
  ]

bb.hj:                                            ; preds = %cvPredict.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.agd = icmp eq i32 %i.agb, 1
  br i1 %i.agd, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store double 1.000000e+00, ptr %i.rf, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.ri, align 8, !tbaa !29
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.rj, align 8, !tbaa !29
  store double f0x3FB5555555555555, ptr %i.rl, align 8, !tbaa !29
  %i.age = load double, ptr %i.rm, align 8, !tbaa !34
  %i.agf = fmul double %i.age, 2.000000e+00
  br label %cvSetAdams.exit.i.i

bb.hl:                                            ; preds = %bb.hj
  %i.agg = load double, ptr %i.pq, align 8, !tbaa !197 ; 4 uses
  store double 1.000000e+00, ptr %i.o, align 16, !tbaa !29
  %.not37.i.i.i.i = icmp slt i32 %i.agb, 1
  br i1 %.not37.i.i.i.i, label %cvAltSum.exit28.thread.i.i.i, label %.lr.ph42.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %bb.hl
  %i.agh = zext nneg i32 %i.agb to i64            ; 8 uses
  %i.agi = shl nuw nsw i64 %i.agh, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i.i, i8 0, i64 %i.agi, i1 false), !tbaa !29
  %i.agj = add nsw i32 %i.agb, -1                 ; 3 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.agj to i64 ; 3 uses
  %i.agk = uitofp nneg i32 %i.agb to double
  %i.agl = getelementptr [8 x i8], ptr %i.o, i64 %i.agh
  %i.agm = getelementptr i8, ptr %i.agl, i64 -16
  %xtraiter1161 = and i64 %wide.trip.count.i.i.i.i.i, 1
  %i.agn = icmp eq i32 %i.agj, 1
  %unroll_iter1166 = and i64 %wide.trip.count.i.i.i.i.i, 2147483646
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1161, 0
  %lcmp.mod1165 = trunc i32 %i.agj to i1
  br label %bb.hm

bb.hm:                                            ; preds = %.loopexit1127, %.lr.ph42.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.lr.ph42.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit1127 ] ; 9 uses
  %.03440.i.i.i.i = phi double [ %i.agg, %.lr.ph42.i.i.i.i ], [ %i.aiu, %.loopexit1127 ] ; 2 uses
  %i.ago = icmp eq i64 %indvars.iv.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %i.ago, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.agp = load i32, ptr %i.qy, align 4, !tbaa !81
  %i.agq = icmp eq i32 %i.agp, 1
  br i1 %i.agq, label %.preheader.i.i.i.i.i.preheader, label %bb.ho

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.hn
  br i1 %i.agn, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.018.i.i.i.i.i = phi double [ %i.ahe, %.preheader.i.i.i.i.i ], [ 0.000000e+00, %.preheader.i.i.i.i.i.preheader ]
  %niter1167 = phi i64 [ %niter1167.next.1, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ]
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i
  %i.ags = load double, ptr %i.agr, align 16, !tbaa !29
  %i.agt = trunc i64 %indvars.iv.i.i.i.i.i to i32
  %i.agu = add i32 %i.agt, 2
  %i.agv = uitofp nneg i32 %i.agu to double
  %i.agw = fdiv double %i.ags, %i.agv
  %i.agx = fadd double %i.agw, %.018.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !29
  %i.aha = trunc i64 %indvars.iv.next.i.i.i.i.i to i32
  %i.ahb = add i32 %i.aha, 2
  %i.ahc = uitofp nneg i32 %i.ahb to double
  %i.ahd = fdiv double %i.agz, %i.ahc
  %i.ahe = fsub double %i.agx, %i.ahd             ; 3 uses
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %niter1167.next.1 = add i64 %niter1167, 2       ; 2 uses
  %niter1167.ncmp.1 = icmp eq i64 %niter1167.next.1, %unroll_iter1166
  br i1 %niter1167.ncmp.1, label %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i

cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa:         ; preds = %.preheader.i.i.i.i.i
  br i1 %lcmp.mod1163.not, label %cvAltSum.exit.loopexit.i.i.i.i, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.1, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.i.i.i.i.preheader ], [ %i.ahe, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1165)
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i.epil.init
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !29
  %i.ahh = trunc i64 %indvars.iv.i.i.i.i.i.epil.init to i32
  %i.ahi = add i32 %i.ahh, 2
  %i.ahj = uitofp nneg i32 %i.ahi to double
  %i.ahk = fdiv double %i.ahg, %i.ahj
  %i.ahl = fadd double %i.ahk, %.018.i.i.i.i.i.epil.init
  br label %cvAltSum.exit.loopexit.i.i.i.i

cvAltSum.exit.loopexit.i.i.i.i:                   ; preds = %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.epil.preheader
  %.lcssa1139 = phi double [ %i.ahe, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ], [ %i.ahl, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.ahm = fmul double %.lcssa1139, %i.agk
  %i.ahn = load double, ptr %i.agm, align 8, !tbaa !29
  %i.aho = fdiv double %i.ahm, %i.ahn
  store double %i.aho, ptr %i.rj, align 8, !tbaa !29
  br label %bb.ho

bb.ho:                                            ; preds = %cvAltSum.exit.loopexit.i.i.i.i, %bb.hn, %bb.hm
  %i.ahp = fdiv double %i.agg, %.03440.i.i.i.i    ; 4 uses
  %min.iters.check1029 = icmp samesign ult i64 %indvars.iv.i.i.i.i, 4
  br i1 %min.iters.check1029, label %scalar.ph1028, label %vector.ph1030

vector.ph1030:                                    ; preds = %bb.ho
  %n.vec1031 = and i64 %indvars.iv.i.i.i.i, 9223372036854775804 ; 2 uses
  %i.ahq = and i64 %indvars.iv.i.i.i.i, 3
  %broadcast.splatinsert1032 = insertelement <2 x double> poison, double %i.ahp, i64 0 ; 2 uses
  %i.ahr = shufflevector <2 x double> %broadcast.splatinsert1032, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahs = shufflevector <2 x double> %broadcast.splatinsert1032, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1030
  %index1035 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1046, %vector.body1034 ] ; 2 uses
  %i.aht = sub i64 %indvars.iv.i.i.i.i, %index1035
  %i.ahu = getelementptr [8 x i8], ptr %i.o, i64 %i.aht ; 4 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 -8   ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.ahu, i64 -16
  %5 = getelementptr i8, ptr %i.ahu, i64 -32
  %wide.load1037.a = load <2 x double>, ptr %i.ahw, align 8, !tbaa !29
  %wide.load1037 = load <2 x double>, ptr %5, align 8, !tbaa !29
  %i.ahx = getelementptr i8, ptr %i.ahu, i64 -24  ; 2 uses
  %wide.load1040 = load <2 x double>, ptr %i.ahv, align 8, !tbaa !29
  %wide.load1041 = load <2 x double>, ptr %i.ahx, align 8, !tbaa !29
  %reverse1044 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1037.a, <2 x double> %i.ahr, <2 x double> %wide.load1040)
  %reverse1045 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1037, <2 x double> %i.ahs, <2 x double> %wide.load1041)
  store <2 x double> %reverse1044, ptr %i.ahv, align 8, !tbaa !29
  store <2 x double> %reverse1045, ptr %i.ahx, align 8, !tbaa !29
  %index.next1046 = add nuw i64 %index1035, 4     ; 2 uses
  %i.ahy = icmp eq i64 %index.next1046, %n.vec1031
  br i1 %i.ahy, label %middle.block1047, label %vector.body1034, !llvm.loop !266

middle.block1047:                                 ; preds = %vector.body1034
  %cmp.n1048 = icmp eq i64 %indvars.iv.i.i.i.i, %n.vec1031
  br i1 %cmp.n1048, label %.loopexit1127, label %scalar.ph1028

scalar.ph1028:                                    ; preds = %middle.block1047, %bb.ho
  %indvars.iv46.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %bb.ho ], [ %i.ahq, %middle.block1047 ] ; 5 uses
  %i.ahz = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 3 uses
  %i.aia = getelementptr i8, ptr %i.ahz, i64 -8
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !29
  %i.aic = load double, ptr %i.ahz, align 8, !tbaa !29
  %i.aid = call double @llvm.fmuladd.f64(double %i.aib, double %i.ahp, double %i.aic)
  store double %i.aid, ptr %i.ahz, align 8, !tbaa !29
  %i.aie = icmp samesign ugt i64 %indvars.iv46.i.i.i.i.ph, 1
  br i1 %i.aie, label %scalar.ph1028.1, label %.loopexit1127

scalar.ph1028.1:                                  ; preds = %scalar.ph1028
  %i.aif = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 2 uses
  %i.aig = getelementptr i8, ptr %i.aif, i64 -8   ; 2 uses
  %i.aih = getelementptr i8, ptr %i.aif, i64 -16
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !29
  %i.aij = load double, ptr %i.aig, align 8, !tbaa !29
  %i.aik = call double @llvm.fmuladd.f64(double %i.aii, double %i.ahp, double %i.aij)
  store double %i.aik, ptr %i.aig, align 8, !tbaa !29
  %i.ail = icmp eq i64 %indvars.iv46.i.i.i.i.ph, 3
  br i1 %i.ail, label %scalar.ph1028.2, label %.loopexit1127

scalar.ph1028.2:                                  ; preds = %scalar.ph1028.1
  %i.aim = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 2 uses
  %i.ain = getelementptr i8, ptr %i.aim, i64 -16  ; 2 uses
  %i.aio = getelementptr i8, ptr %i.aim, i64 -24
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !29
  %i.aiq = load double, ptr %i.ain, align 8, !tbaa !29
  %i.air = call double @llvm.fmuladd.f64(double %i.aip, double %i.ahp, double %i.aiq)
  store double %i.air, ptr %i.ain, align 8, !tbaa !29
  br label %.loopexit1127

.loopexit1127:                                    ; preds = %scalar.ph1028, %scalar.ph1028.1, %scalar.ph1028.2, %middle.block1047
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %indvars.iv.i.i.i.i
  %i.ait = load double, ptr %i.ais, align 8, !tbaa !29
  %i.aiu = fadd double %.03440.i.i.i.i, %i.ait    ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.agh
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i15.i.i.i.preheader, label %bb.hm

.preheader.i15.i.i.i.preheader:                   ; preds = %.loopexit1127
  %i.aiv = add nsw i64 %i.agh, -1                 ; 2 uses
  %xtraiter1168 = and i64 %i.agh, 1
  %i.aiw = icmp eq i64 %i.aiv, 0
  br i1 %i.aiw, label %.preheader.i15.i.i.i.epil.preheader, label %.preheader.i15.i.i.i.preheader.new

.preheader.i15.i.i.i.preheader.new:               ; preds = %.preheader.i15.i.i.i.preheader
  %unroll_iter1173 = and i64 %i.agh, 2147483646
  br label %.preheader.i15.i.i.i

cvAltSum.exit28.thread.i.i.i:                     ; preds = %bb.hl
  store double 1.000000e+00, ptr %i.re, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

.preheader.i15.i.i.i:                             ; preds = %.preheader.i15.i.i.i, %.preheader.i15.i.i.i.preheader.new
  %indvars.iv.i16.i.i.i = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i15.i.i.i ] ; 4 uses
  %.018.i.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader.new ], [ %i.ajk, %.preheader.i15.i.i.i ]
  %niter1174 = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %niter1174.next.1, %.preheader.i15.i.i.i ]
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i
  %i.aiy = load double, ptr %i.aix, align 16, !tbaa !29
  %i.aiz = trunc i64 %indvars.iv.i16.i.i.i to i32
  %i.aja = or disjoint i32 %i.aiz, 1
  %i.ajb = uitofp nneg i32 %i.aja to double
  %i.ajc = fdiv double %i.aiy, %i.ajb
  %i.ajd = fadd double %i.ajc, %.018.i.i.i.i
  %indvars.iv.next.i17.i.i.i = or disjoint i64 %indvars.iv.i16.i.i.i, 1 ; 2 uses
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i17.i.i.i
  %i.ajf = load double, ptr %i.aje, align 8, !tbaa !29
  %i.ajg = trunc i64 %indvars.iv.next.i17.i.i.i to i32
  %i.ajh = add i32 %i.ajg, 1
  %i.aji = uitofp nneg i32 %i.ajh to double
  %i.ajj = fdiv double %i.ajf, %i.aji
  %i.ajk = fsub double %i.ajd, %i.ajj             ; 3 uses
  %indvars.iv.next.i17.i.i.i.1 = add nuw nsw i64 %indvars.iv.i16.i.i.i, 2 ; 2 uses
  %niter1174.next.1 = add i64 %niter1174, 2       ; 2 uses
  %niter1174.ncmp.1 = icmp eq i64 %niter1174.next.1, %unroll_iter1173
  br i1 %niter1174.ncmp.1, label %.preheader.i21.i.i.i.preheader.unr-lcssa, label %.preheader.i15.i.i.i

.preheader.i21.i.i.i.preheader.unr-lcssa:         ; preds = %.preheader.i15.i.i.i
  %lcmp.mod1170.not = icmp eq i64 %xtraiter1168, 0
  br i1 %lcmp.mod1170.not, label %.preheader.i21.i.i.i.preheader, label %.preheader.i15.i.i.i.epil.preheader

.preheader.i15.i.i.i.epil.preheader:              ; preds = %.preheader.i21.i.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.i.preheader
  %indvars.iv.i16.i.i.i.epil.init = phi i64 [ 0, %.preheader.i15.i.i.i.preheader ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i21.i.i.i.preheader.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader ], [ %i.ajk, %.preheader.i21.i.i.i.preheader.unr-lcssa ]
  %lcmp.mod1172 = trunc i32 %i.agb to i1
  call void @llvm.assume(i1 %lcmp.mod1172)
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i.epil.init
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !29
  %i.ajn = trunc i64 %indvars.iv.i16.i.i.i.epil.init to i32
  %i.ajo = add i32 %i.ajn, 1
  %i.ajp = uitofp nneg i32 %i.ajo to double
  %i.ajq = fdiv double %i.ajm, %i.ajp
  %i.ajr = fadd double %i.ajq, %.018.i.i.i.i.epil.init
  br label %.preheader.i21.i.i.i.preheader

.preheader.i21.i.i.i.preheader:                   ; preds = %.preheader.i21.i.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.i.epil.preheader
  %.lcssa1141 = phi double [ %i.ajk, %.preheader.i21.i.i.i.preheader.unr-lcssa ], [ %i.ajr, %.preheader.i15.i.i.i.epil.preheader ]
  %xtraiter1175 = and i64 %i.agh, 1
  %i.ajs = icmp eq i64 %i.aiv, 0
  br i1 %i.ajs, label %.preheader.i21.i.i.i.epil.preheader, label %.preheader.i21.i.i.i.preheader.new

.preheader.i21.i.i.i.preheader.new:               ; preds = %.preheader.i21.i.i.i.preheader
  %unroll_iter1180 = and i64 %i.agh, 2147483646
  br label %.preheader.i21.i.i.i

.preheader.i21.i.i.i:                             ; preds = %.preheader.i21.i.i.i, %.preheader.i21.i.i.i.preheader.new
  %indvars.iv.i22.i.i.i = phi i64 [ 0, %.preheader.i21.i.i.i.preheader.new ], [ %indvars.iv.next.i25.i.i.i.1, %.preheader.i21.i.i.i ] ; 4 uses
  %.018.i23.i.i.i = phi double [ 0.000000e+00, %.preheader.i21.i.i.i.preheader.new ], [ %i.akg, %.preheader.i21.i.i.i ]
  %niter1181 = phi i64 [ 0, %.preheader.i21.i.i.i.preheader.new ], [ %niter1181.next.1, %.preheader.i21.i.i.i ]
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i22.i.i.i
  %i.aju = load double, ptr %i.ajt, align 16, !tbaa !29
  %i.ajv = trunc i64 %indvars.iv.i22.i.i.i to i32
  %i.ajw = add i32 %i.ajv, 2
  %i.ajx = uitofp nneg i32 %i.ajw to double
  %i.ajy = fdiv double %i.aju, %i.ajx
  %i.ajz = fadd double %i.ajy, %.018.i23.i.i.i
  %indvars.iv.next.i25.i.i.i = or disjoint i64 %indvars.iv.i22.i.i.i, 1 ; 2 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i25.i.i.i
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !29
  %i.akc = trunc i64 %indvars.iv.next.i25.i.i.i to i32
  %i.akd = add i32 %i.akc, 2
  %i.ake = uitofp nneg i32 %i.akd to double
  %i.akf = fdiv double %i.akb, %i.ake
  %i.akg = fsub double %i.ajz, %i.akf             ; 3 uses
  %indvars.iv.next.i25.i.i.i.1 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 2 ; 2 uses
  %niter1181.next.1 = add i64 %niter1181, 2       ; 2 uses
  %niter1181.ncmp.1 = icmp eq i64 %niter1181.next.1, %unroll_iter1180
  br i1 %niter1181.ncmp.1, label %cvAltSum.exit28.i.i.i.unr-lcssa, label %.preheader.i21.i.i.i

cvAltSum.exit28.i.i.i.unr-lcssa:                  ; preds = %.preheader.i21.i.i.i
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1175, 0
  br i1 %lcmp.mod1177.not, label %cvAltSum.exit28.i.i.i, label %.preheader.i21.i.i.i.epil.preheader

.preheader.i21.i.i.i.epil.preheader:              ; preds = %cvAltSum.exit28.i.i.i.unr-lcssa, %.preheader.i21.i.i.i.preheader
  %indvars.iv.i22.i.i.i.epil.init = phi i64 [ 0, %.preheader.i21.i.i.i.preheader ], [ %indvars.iv.next.i25.i.i.i.1, %cvAltSum.exit28.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i23.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i21.i.i.i.preheader ], [ %i.akg, %cvAltSum.exit28.i.i.i.unr-lcssa ]
  %lcmp.mod1179 = trunc i32 %i.agb to i1
  call void @llvm.assume(i1 %lcmp.mod1179)
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i22.i.i.i.epil.init
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !29
  %i.akj = trunc i64 %indvars.iv.i22.i.i.i.epil.init to i32
  %i.akk = add i32 %i.akj, 2
  %i.akl = uitofp nneg i32 %i.akk to double
  %i.akm = fdiv double %i.aki, %i.akl
  %i.akn = fadd double %i.akm, %.018.i23.i.i.i.epil.init
  br label %cvAltSum.exit28.i.i.i

cvAltSum.exit28.i.i.i:                            ; preds = %cvAltSum.exit28.i.i.i.unr-lcssa, %.preheader.i21.i.i.i.epil.preheader
  %.lcssa1142 = phi double [ %i.akg, %cvAltSum.exit28.i.i.i.unr-lcssa ], [ %i.akn, %.preheader.i21.i.i.i.epil.preheader ]
  %i.ako = fdiv double 1.000000e+00, %.lcssa1141  ; 4 uses
  store double 1.000000e+00, ptr %i.re, align 8, !tbaa !29
  %i.akp = add nuw nsw i32 %i.agb, 1
  %wide.trip.count.i29.i.i.i = zext nneg i32 %i.akp to i64
  %i.akq = zext nneg i32 %i.agb to i64            ; 3 uses
  %n.vec1016 = and i64 %i.akq, 2147483646         ; 2 uses
  %i.akr = or i64 %i.akq, 1
  %broadcast.splatinsert1017 = insertelement <2 x double> poison, double %i.ako, i64 0
  %broadcast.splat1018 = shufflevector <2 x double> %broadcast.splatinsert1017, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %cvAltSum.exit28.i.i.i
  %index1020 = phi i64 [ 0, %cvAltSum.exit28.i.i.i ], [ %index.next1023, %vector.body1019 ] ; 2 uses
  %vec.ind1021 = phi <2 x i32> [ <i32 1, i32 2>, %cvAltSum.exit28.i.i.i ], [ %vec.ind.next1024, %vector.body1019 ] ; 2 uses
  %i.aks = or disjoint i64 %index1020, 1          ; 2 uses
  %i.akt = getelementptr [8 x i8], ptr %i.o, i64 %i.aks
  %i.aku = getelementptr i8, ptr %i.akt, i64 -8
  %wide.load1022 = load <2 x double>, ptr %i.aku, align 16, !tbaa !29
  %i.akv = uitofp nneg <2 x i32> %vec.ind1021 to <2 x double>
  %i.akw = fdiv <2 x double> %wide.load1022, %i.akv
  %i.akx = fmul <2 x double> %broadcast.splat1018, %i.akw
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.aks
  store <2 x double> %i.akx, ptr %i.aky, align 8, !tbaa !29
  %index.next1023 = add nuw i64 %index1020, 2     ; 2 uses
  %vec.ind.next1024 = add <2 x i32> %vec.ind1021, splat (i32 2)
  %i.akz = icmp eq i64 %index.next1023, %n.vec1016
  br i1 %i.akz, label %middle.block1025, label %vector.body1019, !llvm.loop !267

middle.block1025:                                 ; preds = %vector.body1019
  %cmp.n1026 = icmp eq i64 %n.vec1016, %i.akq
  br i1 %cmp.n1026, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block1025, %.lr.ph.i.i.i.i
  %indvars.iv.i30.i.i.i = phi i64 [ %indvars.iv.next.i31.i.i.i, %.lr.ph.i.i.i.i ], [ %i.akr, %middle.block1025 ] ; 4 uses
  %i.ala = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i30.i.i.i
  %i.alb = getelementptr i8, ptr %i.ala, i64 -8
  %i.alc = load double, ptr %i.alb, align 8, !tbaa !29
  %i.ald = trunc nuw nsw i64 %indvars.iv.i30.i.i.i to i32
  %i.ale = uitofp nneg i32 %i.ald to double
  %i.alf = fdiv double %i.alc, %i.ale
  %i.alg = fmul double %i.ako, %i.alf
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv.i30.i.i.i
  store double %i.alg, ptr %i.alh, align 8, !tbaa !29
  %indvars.iv.next.i31.i.i.i = add nuw nsw i64 %indvars.iv.i30.i.i.i, 1 ; 2 uses
  %exitcond.not.i32.i.i.i = icmp eq i64 %indvars.iv.next.i31.i.i.i, %wide.trip.count.i29.i.i.i
  br i1 %exitcond.not.i32.i.i.i, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !268

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %middle.block1025
  %i.ali = fmul double %i.ako, %.lcssa1142
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %cvAltSum.exit28.thread.i.i.i
  %.034.lcssa.i55.i.i.i = phi double [ %i.agg, %cvAltSum.exit28.thread.i.i.i ], [ %i.aiu, %._crit_edge.i.loopexit.i.i.i ]
  %i.alj = phi double [ +inf, %cvAltSum.exit28.thread.i.i.i ], [ %i.ako, %._crit_edge.i.loopexit.i.i.i ]
  %.014.i2745.i.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i.i ], [ %i.ali, %._crit_edge.i.loopexit.i.i.i ]
  %i.alk = fdiv double %.034.lcssa.i55.i.i.i, %i.agg ; 3 uses
  %i.all = fdiv double 1.000000e+00, %i.alk       ; 2 uses
  %i.alm = fdiv double %.014.i2745.i.i.i, %i.alk  ; 2 uses
  store double %i.alm, ptr %i.rh, align 8, !tbaa !29
  %i.aln = sext i32 %i.agb to i64
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.aln
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !29
  %i.alq = fdiv double %i.alk, %i.alp
  store double %i.alq, ptr %i.ri, align 8, !tbaa !29
  %i.alr = load i32, ptr %i.qy, align 4, !tbaa !81
  %i.als = icmp eq i32 %i.alr, 1
  br i1 %i.als, label %.preheader.i33.i.i.i, label %cvAdamsFinish.exit.i.i.i

.preheader.i33.i.i.i:                             ; preds = %._crit_edge.i.i.i.i
  %i.alt = icmp sgt i32 %i.agb, 0
  br i1 %i.alt, label %.lr.ph44.preheader.i.i.i.i, label %._crit_edge45.i.i.i.i

.lr.ph44.preheader.i.i.i.i:                       ; preds = %.preheader.i33.i.i.i
  %i.alu = zext nneg i32 %i.agb to i64            ; 5 uses
  %min.iters.check994 = icmp ult i32 %i.agb, 4
  br i1 %min.iters.check994, label %.lr.ph44.i.i.i.i.preheader, label %vector.ph995

vector.ph995:                                     ; preds = %.lr.ph44.preheader.i.i.i.i
  %n.vec996 = and i64 %i.alu, 2147483644          ; 2 uses
  %i.alv = and i64 %i.alu, 3
  %broadcast.splatinsert997 = insertelement <2 x double> poison, double %i.all, i64 0 ; 2 uses
  %i.alw = shufflevector <2 x double> %broadcast.splatinsert997, <2 x double> poison, <2 x i32> zeroinitializer
  %i.alx = shufflevector <2 x double> %broadcast.splatinsert997, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph995
  %index1000 = phi i64 [ 0, %vector.ph995 ], [ %index.next1009, %vector.body999 ] ; 2 uses
  %i.aly = sub i64 %i.alu, %index1000
  %i.alz = getelementptr [8 x i8], ptr %i.o, i64 %i.aly ; 4 uses
  %i.ama = getelementptr i8, ptr %i.alz, i64 -8   ; 2 uses
  %i.amb = getelementptr i8, ptr %i.alz, i64 -16
  %6 = getelementptr i8, ptr %i.alz, i64 -32
  %wide.load1001.a = load <2 x double>, ptr %i.amb, align 8, !tbaa !29
  %wide.load1001 = load <2 x double>, ptr %6, align 8, !tbaa !29
  %i.amc = getelementptr i8, ptr %i.alz, i64 -24  ; 2 uses
  %wide.load1003 = load <2 x double>, ptr %i.ama, align 8, !tbaa !29
  %wide.load1004 = load <2 x double>, ptr %i.amc, align 8, !tbaa !29
  %reverse1007 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1001.a, <2 x double> %i.alw, <2 x double> %wide.load1003)
  %reverse1008 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1001, <2 x double> %i.alx, <2 x double> %wide.load1004)
  store <2 x double> %reverse1007, ptr %i.ama, align 8, !tbaa !29
  store <2 x double> %reverse1008, ptr %i.amc, align 8, !tbaa !29
  %index.next1009 = add nuw i64 %index1000, 4     ; 2 uses
  %i.amd = icmp eq i64 %index.next1009, %n.vec996
  br i1 %i.amd, label %middle.block1010, label %vector.body999, !llvm.loop !269

middle.block1010:                                 ; preds = %vector.body999
  %cmp.n1011 = icmp eq i64 %n.vec996, %i.alu
  br i1 %cmp.n1011, label %.preheader.preheader.i.i.i.i.i, label %.lr.ph44.i.i.i.i.preheader

.lr.ph44.i.i.i.i.preheader:                       ; preds = %.lr.ph44.preheader.i.i.i.i, %middle.block1010
  %indvars.iv47.i.i.i.i.ph = phi i64 [ %i.alu, %.lr.ph44.preheader.i.i.i.i ], [ %i.alv, %middle.block1010 ]
  br label %.lr.ph44.i.i.i.i

.lr.ph44.i.i.i.i:                                 ; preds = %.lr.ph44.i.i.i.i.preheader, %.lr.ph44.i.i.i.i
  %indvars.iv47.i.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i.i, %.lr.ph44.i.i.i.i ], [ %indvars.iv47.i.i.i.i.ph, %.lr.ph44.i.i.i.i.preheader ] ; 3 uses
  %i.ame = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv47.i.i.i.i ; 3 uses
  %i.amf = getelementptr i8, ptr %i.ame, i64 -8
  %i.amg = load double, ptr %i.amf, align 8, !tbaa !29
  %i.amh = load double, ptr %i.ame, align 8, !tbaa !29
  %i.ami = call double @llvm.fmuladd.f64(double %i.amg, double %i.all, double %i.amh)
  store double %i.ami, ptr %i.ame, align 8, !tbaa !29
  %indvars.iv.next48.i.i.i.i = add nsw i64 %indvars.iv47.i.i.i.i, -1
  %i.amj = icmp samesign ugt i64 %indvars.iv47.i.i.i.i, 1
  br i1 %i.amj, label %.lr.ph44.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, !llvm.loop !270

._crit_edge45.i.i.i.i:                            ; preds = %.preheader.i33.i.i.i
  %i.amk = icmp slt i32 %i.agb, 0
  br i1 %i.amk, label %cvAltSum.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.lr.ph44.i.i.i.i, %middle.block1010, %._crit_edge45.i.i.i.i
  %i.aml = add nuw nsw i32 %i.agb, 1              ; 2 uses
  %wide.trip.count.i.i34.i.i.i = zext nneg i32 %i.aml to i64 ; 2 uses
  %xtraiter1182 = and i64 %wide.trip.count.i.i34.i.i.i, 1
  %i.amm = icmp eq i32 %i.agb, 0
  br i1 %i.amm, label %.preheader.i.i35.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.i.new

.preheader.preheader.i.i.i.i.i.new:               ; preds = %.preheader.preheader.i.i.i.i.i
  %unroll_iter1187 = and i64 %wide.trip.count.i.i34.i.i.i, 2147483646
  br label %.preheader.i.i35.i.i.i

.preheader.i.i35.i.i.i:                           ; preds = %.preheader.i.i35.i.i.i, %.preheader.preheader.i.i.i.i.i.new
  %indvars.iv.i.i36.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.i.1, %.preheader.i.i35.i.i.i ] ; 4 uses
  %.018.i.i37.i.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i.new ], [ %i.ana, %.preheader.i.i35.i.i.i ]
  %niter1188 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %niter1188.next.1, %.preheader.i.i35.i.i.i ]
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i
  %i.amo = load double, ptr %i.amn, align 16, !tbaa !29
  %i.amp = trunc i64 %indvars.iv.i.i36.i.i.i to i32
  %i.amq = add i32 %i.amp, 2
  %i.amr = uitofp nneg i32 %i.amq to double
  %i.ams = fdiv double %i.amo, %i.amr
  %i.amt = fadd double %i.ams, %.018.i.i37.i.i.i
  %indvars.iv.next.i.i39.i.i.i = or disjoint i64 %indvars.iv.i.i36.i.i.i, 1 ; 2 uses
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i39.i.i.i
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !29
  %i.amw = trunc i64 %indvars.iv.next.i.i39.i.i.i to i32
  %i.amx = add i32 %i.amw, 2
  %i.amy = uitofp nneg i32 %i.amx to double
  %i.amz = fdiv double %i.amv, %i.amy
  %i.ana = fsub double %i.amt, %i.amz             ; 3 uses
  %indvars.iv.next.i.i39.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i.i, 2 ; 2 uses
  %niter1188.next.1 = add i64 %niter1188, 2       ; 2 uses
  %niter1188.ncmp.1 = icmp eq i64 %niter1188.next.1, %unroll_iter1187
  br i1 %niter1188.ncmp.1, label %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i.i

cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa:         ; preds = %.preheader.i.i35.i.i.i
  %lcmp.mod1184.not = icmp eq i64 %xtraiter1182, 0
  br i1 %lcmp.mod1184.not, label %cvAltSum.exit.i.i.i.i, label %.preheader.i.i35.i.i.i.epil.preheader

.preheader.i.i35.i.i.i.epil.preheader:            ; preds = %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i.i
  %indvars.iv.i.i36.i.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.i.1, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i ], [ %i.ana, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1186 = trunc i32 %i.aml to i1
  call void @llvm.assume(i1 %lcmp.mod1186)
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i.epil.init
  %i.anc = load double, ptr %i.anb, align 8, !tbaa !29
  %i.and = trunc i64 %indvars.iv.i.i36.i.i.i.epil.init to i32
  %i.ane = add i32 %i.and, 2
  %i.anf = uitofp nneg i32 %i.ane to double
  %i.ang = fdiv double %i.anc, %i.anf
  %i.anh = fadd double %i.ang, %.018.i.i37.i.i.i.epil.init
  br label %cvAltSum.exit.i.i.i.i

cvAltSum.exit.i.i.i.i:                            ; preds = %.preheader.i.i35.i.i.i.epil.preheader, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i.i
  %.014.i.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i.i ], [ %i.ana, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.anh, %.preheader.i.i35.i.i.i.epil.preheader ]
  %i.ani = fmul double %i.alj, %.014.i.i.i.i.i
  %i.anj = load i32, ptr %i.qx, align 8, !tbaa !80
  %i.ank = sitofp i32 %i.anj to double
  %i.anl = fdiv double %i.ani, %i.ank
  store double %i.anl, ptr %i.rl, align 8, !tbaa !29
  br label %cvAdamsFinish.exit.i.i.i

cvAdamsFinish.exit.i.i.i:                         ; preds = %cvAltSum.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.anm = load double, ptr %i.rm, align 8, !tbaa !34
  %i.ann = fdiv double %i.anm, %i.alm
  br label %cvSetAdams.exit.i.i

cvSetAdams.exit.i.i:                              ; preds = %cvAdamsFinish.exit.i.i.i, %bb.hk
  %.sink.i.i.i = phi double [ %i.ann, %cvAdamsFinish.exit.i.i.i ], [ %i.agf, %bb.hk ]
  store double %.sink.i.i.i, ptr %i.rn, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  br label %bb.ht

bb.hp:                                            ; preds = %cvPredict.exit.i
  store <2 x double> splat (double 1.000000e+00), ptr %i.re, align 8, !tbaa !29
  %.not86.i.i.i = icmp slt i32 %i.agb, 2
  br i1 %.not86.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.hp
  %i.ano = add nsw i32 %i.agb, -1
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = shl nuw nsw i64 %i.anp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.anq, i1 false), !tbaa !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %bb.hp
  %i.anr = load double, ptr %i.pq, align 8, !tbaa !197 ; 6 uses
  %i.ans = load i32, ptr %i.qz, align 8, !tbaa !303
  %.not79.i.i.i = icmp eq i32 %i.ans, 0           ; 2 uses
  %.not8088.i.i.i = icmp slt i32 %i.agb, 0
  %or.cond.i.i.i = or i1 %.not8088.i.i.i, %.not79.i.i.i
  br i1 %or.cond.i.i.i, label %.loopexit85.i.i.i, label %.lr.ph90.i.i.i

.lr.ph90.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.ant = add nuw i32 %i.agb, 1
  %wide.trip.count.i.i.i = zext i32 %i.ant to i64 ; 3 uses
  %min.iters.check1117 = icmp eq i32 %i.agb, 0
  br i1 %min.iters.check1117, label %scalar.ph1116.preheader, label %vector.ph1118

vector.ph1118:                                    ; preds = %.lr.ph90.i.i.i
  %n.vec1119 = and i64 %wide.trip.count.i.i.i, 4294967294 ; 3 uses
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1118
  %index1121 = phi i64 [ 0, %vector.ph1118 ], [ %index.next1123, %vector.body1120 ] ; 3 uses
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %index1121
  %wide.load1122 = load <2 x double>, ptr %i.anu, align 8, !tbaa !29
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %index1121
  store <2 x double> %wide.load1122, ptr %i.anv, align 8, !tbaa !29
  %index.next1123 = add nuw i64 %index1121, 2     ; 2 uses
  %i.anw = icmp eq i64 %index.next1123, %n.vec1119
  br i1 %i.anw, label %middle.block1124, label %vector.body1120, !llvm.loop !271

middle.block1124:                                 ; preds = %vector.body1120
  %cmp.n1125 = icmp eq i64 %n.vec1119, %wide.trip.count.i.i.i
  br i1 %cmp.n1125, label %.loopexit85.i.i.i, label %scalar.ph1116.preheader

scalar.ph1116.preheader:                          ; preds = %.lr.ph90.i.i.i, %middle.block1124
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph90.i.i.i ], [ %n.vec1119, %middle.block1124 ]
  br label %scalar.ph1116

scalar.ph1116:                                    ; preds = %scalar.ph1116.preheader, %scalar.ph1116
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph1116 ], [ %indvars.iv.i.i.i.ph, %scalar.ph1116.preheader ] ; 3 uses
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv.i.i.i
  %i.any = load double, ptr %i.anx, align 8, !tbaa !29
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv.i.i.i
  store double %i.any, ptr %i.anz, align 8, !tbaa !29
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit85.i.i.i, label %scalar.ph1116, !llvm.loop !272

.loopexit85.i.i.i:                                ; preds = %scalar.ph1116, %middle.block1124, %._crit_edge.i.i.i
  %i.aoa = icmp sgt i32 %i.agb, 1                 ; 2 uses
  br i1 %i.aoa, label %.preheader83.i.i.i, label %.loopexit85..loopexit_crit_edge.i.i.i

.loopexit85..loopexit_crit_edge.i.i.i:            ; preds = %.loopexit85.i.i.i
  %.pre123.i.i.i = sitofp i32 %i.agb to double
  br label %.loopexit.i.i.i

.preheader83.i.i.i:                               ; preds = %.loopexit85.i.i.i
  %.not.i.i.i = icmp eq i32 %i.agb, 2
  br i1 %.not.i.i.i, label %._crit_edge96.i.i.i, label %.lr.ph95.preheader.i.i.i

.lr.ph95.preheader.i.i.i:                         ; preds = %.preheader83.i.i.i
  %wide.trip.count114.i.i.i = zext nneg i32 %i.agb to i64 ; 2 uses
  br label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %.loopexit1128, %.lr.ph95.preheader.i.i.i
  %indvars.iv108.i.i.i = phi i64 [ 2, %.lr.ph95.preheader.i.i.i ], [ %indvars.iv.next109.i.i.i, %.loopexit1128 ] ; 9 uses
  %.07193.i.i.i = phi double [ %i.anr, %.lr.ph95.preheader.i.i.i ], [ %i.aoe, %.loopexit1128 ]
  %.07692.i.i.i = phi double [ -1.000000e+00, %.lr.ph95.preheader.i.i.i ], [ %i.apl, %.loopexit1128 ]
  %i.aob = getelementptr [8 x i8], ptr %0, i64 %indvars.iv108.i.i.i
  %i.aoc = getelementptr i8, ptr %i.aob, i64 1040
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !29
  %i.aoe = fadd double %.07193.i.i.i, %i.aod      ; 3 uses
  %i.aof = fdiv double %i.anr, %i.aoe             ; 4 uses
  %min.iters.check1095 = icmp samesign ult i64 %indvars.iv108.i.i.i, 4
  br i1 %min.iters.check1095, label %scalar.ph1094, label %vector.ph1096

vector.ph1096:                                    ; preds = %.lr.ph95.i.i.i
  %n.vec1097 = and i64 %indvars.iv108.i.i.i, 9223372036854775804 ; 2 uses
  %i.aog = and i64 %indvars.iv108.i.i.i, 3
  %broadcast.splatinsert1098 = insertelement <2 x double> poison, double %i.aof, i64 0 ; 2 uses
  %i.aoh = shufflevector <2 x double> %broadcast.splatinsert1098, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoi = shufflevector <2 x double> %broadcast.splatinsert1098, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %vector.ph1096
  %index1101 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1112, %vector.body1100 ] ; 2 uses
  %i.aoj = sub i64 %indvars.iv108.i.i.i, %index1101
  %i.aok = getelementptr [8 x i8], ptr %i.re, i64 %i.aoj ; 4 uses
  %i.aol = getelementptr i8, ptr %i.aok, i64 -8   ; 2 uses
  %i.aom = getelementptr i8, ptr %i.aok, i64 -16
  %7 = getelementptr i8, ptr %i.aok, i64 -32
  %wide.load1103.a = load <2 x double>, ptr %i.aom, align 8, !tbaa !29
  %wide.load1103 = load <2 x double>, ptr %7, align 8, !tbaa !29
  %i.aon = getelementptr i8, ptr %i.aok, i64 -24  ; 2 uses
  %wide.load1106 = load <2 x double>, ptr %i.aol, align 8, !tbaa !29
  %wide.load1107 = load <2 x double>, ptr %i.aon, align 8, !tbaa !29
  %reverse1110 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1103.a, <2 x double> %i.aoh, <2 x double> %wide.load1106)
  %reverse1111 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1103, <2 x double> %i.aoi, <2 x double> %wide.load1107)
  store <2 x double> %reverse1110, ptr %i.aol, align 8, !tbaa !29
  store <2 x double> %reverse1111, ptr %i.aon, align 8, !tbaa !29
  %index.next1112 = add nuw i64 %index1101, 4     ; 2 uses
  %i.aoo = icmp eq i64 %index.next1112, %n.vec1097
  br i1 %i.aoo, label %middle.block1113, label %vector.body1100, !llvm.loop !273

middle.block1113:                                 ; preds = %vector.body1100
  %cmp.n1114 = icmp eq i64 %indvars.iv108.i.i.i, %n.vec1097
  br i1 %cmp.n1114, label %.loopexit1128, label %scalar.ph1094

scalar.ph1094:                                    ; preds = %middle.block1113, %.lr.ph95.i.i.i
  %indvars.iv110.i.i.i.ph = phi i64 [ %indvars.iv108.i.i.i, %.lr.ph95.i.i.i ], [ %i.aog, %middle.block1113 ] ; 5 uses
  %i.aop = getelementptr [8 x i8], ptr %i.re, i64 %indvars.iv110.i.i.i.ph ; 3 uses
  %i.aoq = getelementptr i8, ptr %i.aop, i64 -8
  %i.aor = load double, ptr %i.aoq, align 8, !tbaa !29
  %i.aos = load double, ptr %i.aop, align 8, !tbaa !29
  %i.aot = call double @llvm.fmuladd.f64(double %i.aor, double %i.aof, double %i.aos)
  store double %i.aot, ptr %i.aop, align 8, !tbaa !29
  %i.aou = icmp samesign ugt i64 %indvars.iv110.i.i.i.ph, 1
  br i1 %i.aou, label %scalar.ph1094.1, label %.loopexit1128

scalar.ph1094.1:                                  ; preds = %scalar.ph1094
  %i.aov = getelementptr [8 x i8], ptr %i.re, i64 %indvars.iv110.i.i.i.ph ; 2 uses
  %i.aow = getelementptr i8, ptr %i.aov, i64 -8   ; 2 uses
  %i.aox = getelementptr i8, ptr %i.aov, i64 -16
  %i.aoy = load double, ptr %i.aox, align 8, !tbaa !29
  %i.aoz = load double, ptr %i.aow, align 8, !tbaa !29
  %i.apa = call double @llvm.fmuladd.f64(double %i.aoy, double %i.aof, double %i.aoz)
  store double %i.apa, ptr %i.aow, align 8, !tbaa !29
  %i.apb = icmp eq i64 %indvars.iv110.i.i.i.ph, 3
  br i1 %i.apb, label %scalar.ph1094.2, label %.loopexit1128

scalar.ph1094.2:                                  ; preds = %scalar.ph1094.1
  %i.apc = getelementptr [8 x i8], ptr %i.re, i64 %indvars.iv110.i.i.i.ph ; 2 uses
  %i.apd = getelementptr i8, ptr %i.apc, i64 -16  ; 2 uses
  %i.ape = getelementptr i8, ptr %i.apc, i64 -24
  %i.apf = load double, ptr %i.ape, align 8, !tbaa !29
  %i.apg = load double, ptr %i.apd, align 8, !tbaa !29
  %i.aph = call double @llvm.fmuladd.f64(double %i.apf, double %i.aof, double %i.apg)
  store double %i.aph, ptr %i.apd, align 8, !tbaa !29
  br label %.loopexit1128

.loopexit1128:                                    ; preds = %scalar.ph1094, %scalar.ph1094.1, %scalar.ph1094.2, %middle.block1113
  %i.api = trunc nuw nsw i64 %indvars.iv108.i.i.i to i32
  %i.apj = uitofp nneg i32 %i.api to double
  %i.apk = fdiv double 1.000000e+00, %i.apj
  %i.apl = fsub double %.07692.i.i.i, %i.apk      ; 2 uses
  %indvars.iv.next109.i.i.i = add nuw nsw i64 %indvars.iv108.i.i.i, 1 ; 2 uses
  %exitcond115.not.i.i.i = icmp eq i64 %indvars.iv.next109.i.i.i, %wide.trip.count114.i.i.i
  br i1 %exitcond115.not.i.i.i, label %._crit_edge96.loopexit.i.i.i, label %.lr.ph95.i.i.i

._crit_edge96.loopexit.i.i.i:                     ; preds = %.loopexit1128
  %.pre.i.i.i = load double, ptr %i.rf, align 8, !tbaa !29
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %._crit_edge96.loopexit.i.i.i, %.preheader83.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %wide.trip.count114.i.i.i, %._crit_edge96.loopexit.i.i.i ], [ 2, %.preheader83.i.i.i ] ; 11 uses
  %i.apm = phi double [ %.pre.i.i.i, %._crit_edge96.loopexit.i.i.i ], [ 1.000000e+00, %.preheader83.i.i.i ]
  %.076.lcssa.i.i.i = phi double [ %i.apl, %._crit_edge96.loopexit.i.i.i ], [ -1.000000e+00, %.preheader83.i.i.i ]
  %.071.lcssa.i.i.i = phi double [ %i.aoe, %._crit_edge96.loopexit.i.i.i ], [ %i.anr, %.preheader83.i.i.i ]
  %i.apn = uitofp nneg i32 %i.agb to double       ; 3 uses
  %i.apo = fdiv double 1.000000e+00, %i.apn
  %i.app = fsub double %.076.lcssa.i.i.i, %i.apo  ; 3 uses
  %i.apq = fneg double %i.apm                     ; 2 uses
  %i.apr = fsub double %i.apq, %i.app             ; 4 uses
  %i.aps = getelementptr [8 x i8], ptr %0, i64 %.pre-phi.i.i.i
  %i.apt = getelementptr i8, ptr %i.aps, i64 1040
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !29
  %i.apv = fadd double %.071.lcssa.i.i.i, %i.apu  ; 3 uses
  %i.apw = fdiv double %i.anr, %i.apv             ; 5 uses
  %i.apx = fsub double %i.apq, %i.apw             ; 2 uses
  br i1 %.not79.i.i.i, label %.lr.ph103.preheader.i.i.i, label %.lr.ph100.i.i.i.preheader

.lr.ph100.i.i.i.preheader:                        ; preds = %._crit_edge96.i.i.i
  %i.apy = call i64 @llvm.smax.i64(i64 %.pre-phi.i.i.i, i64 1) ; 2 uses
  %min.iters.check1073 = icmp samesign ult i64 %.pre-phi.i.i.i, 4
  br i1 %min.iters.check1073, label %.lr.ph100.i.i.i.preheader1132, label %vector.ph1074

vector.ph1074:                                    ; preds = %.lr.ph100.i.i.i.preheader
  %n.vec1075 = and i64 %i.apy, 2147483644         ; 3 uses
  %i.apz = sub nsw i64 %.pre-phi.i.i.i, %n.vec1075
  %broadcast.splatinsert1076 = insertelement <2 x double> poison, double %i.apw, i64 0 ; 2 uses
  %i.aqa = shufflevector <2 x double> %broadcast.splatinsert1076, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqb = shufflevector <2 x double> %broadcast.splatinsert1076, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %vector.ph1074
  %index1079 = phi i64 [ 0, %vector.ph1074 ], [ %index.next1090, %vector.body1078 ] ; 2 uses
  %i.aqc = sub i64 %.pre-phi.i.i.i, %index1079    ; 2 uses
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.aqc ; 2 uses
  %i.aqe = getelementptr inbounds i8, ptr %i.aqd, i64 -8
  %i.aqf = getelementptr inbounds i8, ptr %i.aqd, i64 -24
  %wide.load1080 = load <2 x double>, ptr %i.aqe, align 8, !tbaa !29
  %wide.load1081 = load <2 x double>, ptr %i.aqf, align 8, !tbaa !29
  %i.aqg = getelementptr [8 x i8], ptr %i.rg, i64 %i.aqc ; 4 uses
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 -8
  %i.aqi = getelementptr i8, ptr %i.aqg, i64 -16
  %8 = getelementptr i8, ptr %i.aqg, i64 -32
  %wide.load1085.a = load <2 x double>, ptr %i.aqi, align 8, !tbaa !29
  %wide.load1085 = load <2 x double>, ptr %8, align 8, !tbaa !29
  %i.aqj = getelementptr i8, ptr %i.aqg, i64 -24
  %reverse1088 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1085.a, <2 x double> %i.aqa, <2 x double> %wide.load1080)
  %reverse1089 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1085, <2 x double> %i.aqb, <2 x double> %wide.load1081)
  store <2 x double> %reverse1088, ptr %i.aqh, align 8, !tbaa !29
  store <2 x double> %reverse1089, ptr %i.aqj, align 8, !tbaa !29
  %index.next1090 = add nuw i64 %index1079, 4     ; 2 uses
  %i.aqk = icmp eq i64 %index.next1090, %n.vec1075
  br i1 %i.aqk, label %middle.block1091, label %vector.body1078, !llvm.loop !274

middle.block1091:                                 ; preds = %vector.body1078
  %cmp.n1092 = icmp eq i64 %i.apy, %n.vec1075
  br i1 %cmp.n1092, label %.lr.ph103.preheader.i.i.i, label %.lr.ph100.i.i.i.preheader1132

.lr.ph100.i.i.i.preheader1132:                    ; preds = %.lr.ph100.i.i.i.preheader, %middle.block1091
  %indvars.iv116.i.i.i.ph = phi i64 [ %.pre-phi.i.i.i, %.lr.ph100.i.i.i.preheader ], [ %i.apz, %middle.block1091 ]
  br label %.lr.ph100.i.i.i

.lr.ph100.i.i.i:                                  ; preds = %.lr.ph100.i.i.i.preheader1132, %.lr.ph100.i.i.i
  %indvars.iv116.i.i.i = phi i64 [ %indvars.iv.next117.i.i.i, %.lr.ph100.i.i.i ], [ %indvars.iv116.i.i.i.ph, %.lr.ph100.i.i.i.preheader1132 ] ; 4 uses
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv116.i.i.i
  %i.aqm = load double, ptr %i.aql, align 8, !tbaa !29
  %i.aqn = getelementptr [8 x i8], ptr %i.rg, i64 %indvars.iv116.i.i.i ; 2 uses
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 -8
  %i.aqp = load double, ptr %i.aqo, align 8, !tbaa !29
  %i.aqq = call double @llvm.fmuladd.f64(double %i.aqp, double %i.apw, double %i.aqm)
  store double %i.aqq, ptr %i.aqn, align 8, !tbaa !29
  %indvars.iv.next117.i.i.i = add nsw i64 %indvars.iv116.i.i.i, -1
  %i.aqr = icmp sgt i64 %indvars.iv116.i.i.i, 1
  br i1 %i.aqr, label %.lr.ph100.i.i.i, label %.lr.ph103.preheader.i.i.i, !llvm.loop !275

.lr.ph103.preheader.i.i.i:                        ; preds = %.lr.ph100.i.i.i, %middle.block1091, %._crit_edge96.i.i.i
  %i.aqs = call i64 @llvm.smax.i64(i64 %.pre-phi.i.i.i, i64 1) ; 2 uses
  %min.iters.check1051 = icmp samesign ult i64 %.pre-phi.i.i.i, 4
  br i1 %min.iters.check1051, label %.lr.ph103.i.i.i.preheader, label %vector.ph1052

vector.ph1052:                                    ; preds = %.lr.ph103.preheader.i.i.i
  %n.vec1053 = and i64 %i.aqs, 2147483644         ; 3 uses
  %i.aqt = sub nsw i64 %.pre-phi.i.i.i, %n.vec1053
  %broadcast.splatinsert1054 = insertelement <2 x double> poison, double %i.apr, i64 0 ; 2 uses
  %i.aqu = shufflevector <2 x double> %broadcast.splatinsert1054, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqv = shufflevector <2 x double> %broadcast.splatinsert1054, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %vector.ph1052
  %index1057 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1068, %vector.body1056 ] ; 2 uses
  %i.aqw = sub i64 %.pre-phi.i.i.i, %index1057
  %i.aqx = getelementptr [8 x i8], ptr %i.re, i64 %i.aqw ; 4 uses
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 -8   ; 2 uses
  %i.aqz = getelementptr i8, ptr %i.aqx, i64 -16
  %9 = getelementptr i8, ptr %i.aqx, i64 -32
  %wide.load1059.a = load <2 x double>, ptr %i.aqz, align 8, !tbaa !29
  %wide.load1059 = load <2 x double>, ptr %9, align 8, !tbaa !29
  %i.ara = getelementptr i8, ptr %i.aqx, i64 -24  ; 2 uses
  %wide.load1062 = load <2 x double>, ptr %i.aqy, align 8, !tbaa !29
  %wide.load1063 = load <2 x double>, ptr %i.ara, align 8, !tbaa !29
  %reverse1066 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1059.a, <2 x double> %i.aqu, <2 x double> %wide.load1062)
  %reverse1067 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1059, <2 x double> %i.aqv, <2 x double> %wide.load1063)
  store <2 x double> %reverse1066, ptr %i.aqy, align 8, !tbaa !29
  store <2 x double> %reverse1067, ptr %i.ara, align 8, !tbaa !29
  %index.next1068 = add nuw i64 %index1057, 4     ; 2 uses
  %i.arb = icmp eq i64 %index.next1068, %n.vec1053
  br i1 %i.arb, label %middle.block1069, label %vector.body1056, !llvm.loop !276

middle.block1069:                                 ; preds = %vector.body1056
  %cmp.n1070 = icmp eq i64 %i.aqs, %n.vec1053
  br i1 %cmp.n1070, label %.loopexit.i.i.i, label %.lr.ph103.i.i.i.preheader

.lr.ph103.i.i.i.preheader:                        ; preds = %.lr.ph103.preheader.i.i.i, %middle.block1069
  %indvars.iv119.i.i.i.ph = phi i64 [ %.pre-phi.i.i.i, %.lr.ph103.preheader.i.i.i ], [ %i.aqt, %middle.block1069 ]
  br label %.lr.ph103.i.i.i

.lr.ph103.i.i.i:                                  ; preds = %.lr.ph103.i.i.i.preheader, %.lr.ph103.i.i.i
  %indvars.iv119.i.i.i = phi i64 [ %indvars.iv.next120.i.i.i, %.lr.ph103.i.i.i ], [ %indvars.iv119.i.i.i.ph, %.lr.ph103.i.i.i.preheader ] ; 3 uses
  %i.arc = getelementptr [8 x i8], ptr %i.re, i64 %indvars.iv119.i.i.i ; 3 uses
  %i.ard = getelementptr i8, ptr %i.arc, i64 -8
  %i.are = load double, ptr %i.ard, align 8, !tbaa !29
  %i.arf = load double, ptr %i.arc, align 8, !tbaa !29
  %i.arg = call double @llvm.fmuladd.f64(double %i.are, double %i.apr, double %i.arf)
  store double %i.arg, ptr %i.arc, align 8, !tbaa !29
  %indvars.iv.next120.i.i.i = add nsw i64 %indvars.iv119.i.i.i, -1
  %i.arh = icmp sgt i64 %indvars.iv119.i.i.i, 1
  br i1 %i.arh, label %.lr.ph103.i.i.i, label %.loopexit.i.i.i, !llvm.loop !277

.loopexit.i.i.i:                                  ; preds = %.lr.ph103.i.i.i, %middle.block1069, %.loopexit85..loopexit_crit_edge.i.i.i
  %.pre-phi124.i.i.i = phi double [ %.pre123.i.i.i, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apn, %middle.block1069 ], [ %i.apn, %.lr.ph103.i.i.i ]
  %.177.i.i.i = phi double [ -1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.app, %middle.block1069 ], [ %i.app, %.lr.ph103.i.i.i ] ; 4 uses
  %.075.i.i.i = phi double [ -1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apx, %middle.block1069 ], [ %i.apx, %.lr.ph103.i.i.i ] ; 3 uses
  %.074.i.i.i = phi double [ 1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apw, %middle.block1069 ], [ %i.apw, %.lr.ph103.i.i.i ] ; 2 uses
  %.073.i.i.i = phi double [ 1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apr, %middle.block1069 ], [ %i.apr, %.lr.ph103.i.i.i ] ; 2 uses
  %.172.i.i.i = phi double [ %i.anr, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apv, %middle.block1069 ], [ %i.apv, %.lr.ph103.i.i.i ]
  %i.ari = fsub double 1.000000e+00, %.075.i.i.i
  %i.arj = fadd double %.177.i.i.i, %i.ari        ; 2 uses
  %i.ark = call double @llvm.fmuladd.f64(double %.pre-phi124.i.i.i, double %i.arj, double 1.000000e+00) ; 3 uses
  %i.arl = fmul double %.177.i.i.i, %i.ark
  %i.arm = fdiv double %i.arj, %i.arl
  %i.arn = call double @llvm.fabs.f64(double %i.arm) ; 2 uses
  store double %i.arn, ptr %i.rh, align 8, !tbaa !29
  %i.aro = fmul double %.073.i.i.i, %i.ark
  %i.arp = sext i32 %i.agb to i64                 ; 2 uses
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.arp
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !29 ; 2 uses
  %i.ars = fmul double %.074.i.i.i, %i.arr
  %i.art = fdiv double %i.aro, %i.ars
  %i.aru = call double @llvm.fabs.f64(double %i.art)
  store double %i.aru, ptr %i.ri, align 8, !tbaa !29
  %i.arv = load i32, ptr %i.qy, align 4, !tbaa !81
  %i.arw = icmp eq i32 %i.arv, 1
  br i1 %i.arw, label %bb.hq, label %cvSetBDF.exit.i.i

bb.hq:                                            ; preds = %.loopexit.i.i.i
  br i1 %i.aoa, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.arx = fdiv double %.073.i.i.i, %i.arr
  %i.ary = uitofp nneg i32 %i.agb to double
  %i.arz = fdiv double 1.000000e+00, %i.ary
  %i.asa = fadd double %i.arz, %.177.i.i.i        ; 2 uses
  %i.asb = fadd double %.075.i.i.i, %.074.i.i.i
  %i.asc = fsub double 1.000000e+00, %i.asb
  %i.asd = fadd double %i.asa, %i.asc
  %i.ase = fdiv double %i.asd, %i.asa
  %i.asf = fmul double %i.ase, %i.arx
  %i.asg = call double @llvm.fabs.f64(double %i.asf)
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.sink.i.i.i.i = phi double [ %i.asg, %bb.hr ], [ 1.000000e+00, %bb.hq ]
  store double %.sink.i.i.i.i, ptr %i.rj, align 8, !tbaa !29
  %i.ash = getelementptr inbounds [8 x i8], ptr %i.rk, i64 %i.arp
  %i.asi = load double, ptr %i.ash, align 8, !tbaa !29
  %i.asj = fadd double %.172.i.i.i, %i.asi
  %i.ask = fdiv double %i.anr, %i.asj             ; 2 uses
  %i.asl = add nsw i32 %i.agb, 1
  %i.asm = sitofp i32 %i.asl to double
  %i.asn = fdiv double 1.000000e+00, %i.asm
  %i.aso = fsub double %.177.i.i.i, %i.asn        ; 2 uses
  %i.asp = fsub double %i.ask, %.075.i.i.i
  %i.asq = fadd double %i.asp, 1.000000e+00
  %i.asr = fadd double %i.aso, %i.asq
  %i.ass = fdiv double %i.asr, %i.ark
  %i.ast = add nsw i32 %i.agb, 2
  %i.asu = sitofp i32 %i.ast to double
  %i.asv = fmul double %i.ask, %i.asu
  %i.asw = fmul double %i.aso, %i.asv
  %i.asx = fdiv double %i.ass, %i.asw
  %i.asy = call double @llvm.fabs.f64(double %i.asx)
  store double %i.asy, ptr %i.rl, align 8, !tbaa !29
  br label %cvSetBDF.exit.i.i

cvSetBDF.exit.i.i:                                ; preds = %bb.hs, %.loopexit.i.i.i
  %i.asz = load double, ptr %i.rm, align 8, !tbaa !34
  %i.ata = fdiv double %i.asz, %i.arn
  store double %i.ata, ptr %i.rn, align 8, !tbaa !29
  br label %bb.ht

bb.ht:                                            ; preds = %cvSetBDF.exit.i.i, %cvSetAdams.exit.i.i, %cvPredict.exit.i
  %i.atb = load double, ptr %i.rf, align 8, !tbaa !29
  %i.atc = fdiv double 1.000000e+00, %i.atb       ; 2 uses
  store double %i.atc, ptr %i.ro, align 8, !tbaa !316
  %i.atd = load double, ptr %i.pq, align 8, !tbaa !197
  %i.ate = fmul double %i.atc, %i.atd             ; 3 uses
  store double %i.ate, ptr %i.rp, align 8, !tbaa !317
  %i.atf = load i64, ptr %i.aj, align 8, !tbaa !301 ; 3 uses
  %i.atg = icmp eq i64 %i.atf, 0                  ; 2 uses
  br i1 %i.atg, label %.thread.i.i, label %bb.hu

.thread.i.i:                                      ; preds = %bb.ht
  store double %i.ate, ptr %i.rq, align 8, !tbaa !318
  br label %cvSet.exit.i

bb.hu:                                            ; preds = %bb.ht
  %i.ath = icmp sgt i64 %i.atf, 0
  br i1 %i.ath, label %bb.hv, label %cvSet.exit.i

bb.hv:                                            ; preds = %bb.hu
  %i.ati = load double, ptr %i.rq, align 8, !tbaa !318
  %i.atj = fdiv double %i.ate, %i.ati
  br label %cvSet.exit.i

cvSet.exit.i:                                     ; preds = %bb.hv, %bb.hu, %.thread.i.i
  %i.atk = phi double [ %i.atj, %bb.hv ], [ 1.000000e+00, %bb.hu ], [ 1.000000e+00, %.thread.i.i ] ; 2 uses
  store double %i.atk, ptr %i.rr, align 8, !tbaa !319
  %i.atl = load i32, ptr %i.t, align 4, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store i64 0, ptr %i.m, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store i64 0, ptr %i.n, align 8, !tbaa !65
  %i.atm = load i32, ptr %i.qc, align 4, !tbaa !141
  %.not.i246.i = icmp eq i32 %i.atm, 0
  br i1 %.not.i246.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %cvSet.exit.i
  %i.atn = load i32, ptr %i.qs, align 4, !tbaa !130
  %i.ato = icmp eq i32 %i.atn, 1
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %cvSet.exit.i
  %i.atp = phi i1 [ false, %cvSet.exit.i ], [ %i.ato, %bb.hw ] ; 3 uses
  %i.atq = load ptr, ptr %i.rs, align 8, !tbaa !320
  %.not80.i.i = icmp eq ptr %i.atq, null
  br i1 %.not80.i.i, label %bb.if, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.atr = icmp eq i32 %i.atl, 6
  %i.ats = icmp eq i32 %i.atl, 9
  %i.att = or i1 %i.atr, %i.ats
  %i.atu = select i1 %i.att, i32 0, i32 2
  store i32 %i.atu, ptr %i.rt, align 8, !tbaa !321
  switch i32 %i.atl, label %bb.hz [
    i32 9, label %bb.id
    i32 7, label %bb.id
  ]

bb.hz:                                            ; preds = %bb.hy
  br i1 %i.atg, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.atv = load i32, ptr %i.qw, align 8, !tbaa !310
  %.not81.i.i = icmp eq i32 %i.atv, 0
  br i1 %.not81.i.i, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.atw = load i64, ptr %i.ru, align 8, !tbaa !104
  %i.atx = load i64, ptr %i.rv, align 8, !tbaa !35
  %i.aty = add nsw i64 %i.atx, %i.atw
  %.not82.i.i = icmp slt i64 %i.atf, %i.aty
  br i1 %.not82.i.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.atz = fadd double %i.atk, -1.000000e+00
  %i.aua = call double @llvm.fabs.f64(double %i.atz)
  %i.aub = load double, ptr %i.rw, align 8, !tbaa !36
  %i.auc = fcmp ogt double %i.aua, %i.aub
  %i.aud = zext i1 %i.auc to i32
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hy
  %i.aue = phi i32 [ 1, %bb.ib ], [ 1, %bb.ia ], [ 1, %bb.hz ], [ %i.aud, %bb.ic ], [ 1, %bb.hy ], [ 1, %bb.hy ]
  %i.auf = load i32, ptr %i.rx, align 8, !tbaa !87
  %.not83.i.i = icmp eq i32 %i.auf, 0
  br i1 %.not83.i.i, label %bb.ig, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  store i32 2, ptr %i.rt, align 8, !tbaa !321
  br label %bb.ig

bb.if:                                            ; preds = %bb.hx
  store <2 x double> splat (double 1.000000e+00), ptr %i.ry, align 8, !tbaa !29
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie, %bb.id
  %.0.i.i = phi i32 [ 1, %bb.ie ], [ %i.aue, %bb.id ], [ 0, %bb.if ] ; 2 uses
  br i1 %i.atp, label %bb.ih, label %.thread.i247.i

bb.ih:                                            ; preds = %bb.ig
  %i.aug = load ptr, ptr %i.sc, align 8, !tbaa !204
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.aug) #13
  %i.auh = load ptr, ptr %i.sa, align 8, !tbaa !205 ; 2 uses
end_hunk_0
