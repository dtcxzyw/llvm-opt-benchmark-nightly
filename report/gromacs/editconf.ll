Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/editconf?download=true
inline.NumInlined: 264
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z12gmx_editconfiPPc:bb.a

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %bb.gc
  store ptr %i.afr, ptr %i.w, align 8, !tbaa !16
  %i.afs = load i32, ptr %i.u, align 4, !tbaa !11 ; 2 uses
  %i.aft = icmp sgt i32 %i.afs, 0
  br i1 %i.aft, label %.lr.ph626, label %.loopexit579

.lr.ph626:                                        ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %.lr.ph626
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %.lr.ph626 ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 3 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %indvars.iv687
  %i.afv = trunc nuw nsw i64 %indvars.iv687 to i32
  store i32 %i.afv, ptr %i.afu, align 4, !tbaa !11
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 2 uses
  %i.afw = load i32, ptr %i.u, align 4, !tbaa !11 ; 2 uses
  %i.afx = sext i32 %i.afw to i64
  %i.afy = icmp slt i64 %indvars.iv.next688, %i.afx
  br i1 %i.afy, label %.lr.ph626, label %.loopexit579, !llvm.loop !63

.loopexit579:                                     ; preds = %.lr.ph626, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %bb.fy
  %i.afz = phi i32 [ %.pre750, %bb.fy ], [ %i.afs, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ], [ %i.afw, %.lr.ph626 ]
  %i.aga = load float, ptr @_ZZ12gmx_editconfiPPcE9targetvec, align 4, !tbaa !35
  %i.agb = fpext float %i.aga to double
  %i.agc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 4), align 4, !tbaa !35
  %i.agd = fpext float %i.agc to double
  %i.age = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 8), align 4, !tbaa !35
  %i.agf = fpext float %i.age to double
  %i.agg = load float, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, align 8, !tbaa !35
  %i.agh = fpext float %i.agg to double
  %i.agi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, i64 4), align 4, !tbaa !35
  %i.agj = fpext <2 x float> %i.agi to <2 x double> ; 2 uses
  %i.agk = extractelement <2 x double> %i.agj, i64 0
  %i.agl = extractelement <2 x double> %i.agj, i64 1
  %i.agm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.172, i32 noundef %i.afz, i32 noundef %i.ds, double noundef %i.agb, double noundef %i.agd, double noundef %i.agf, double noundef %i.agh, double noundef %i.agk, double noundef %i.agl) ; 0 uses
  %i.agn = load i32, ptr %i.u, align 4, !tbaa !11 ; 4 uses
  %i.ago = icmp sgt i32 %i.agn, 0
  %.pre751 = load ptr, ptr %i.w, align 8, !tbaa !16 ; 6 uses
  %.pre752 = load ptr, ptr %i.x, align 8, !tbaa !152 ; 6 uses
  br i1 %i.ago, label %.lr.ph629, label %._crit_edge630

.lr.ph629:                                        ; preds = %.loopexit579
  %wide.trip.count = zext nneg i32 %i.agn to i64  ; 2 uses
  %xtraiter1299 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.agp = icmp ult i32 %i.agn, 4
  br i1 %i.agp, label %.epil.preheader1298, label %.lr.ph629.new

.lr.ph629.new:                                    ; preds = %.lr.ph629
  %unroll_iter1303 = and i64 %wide.trip.count, 2147483644
  br label %bb.ge

._crit_edge630.loopexit.unr-lcssa:                ; preds = %bb.ge
  %lcmp.mod1301.not = icmp eq i64 %xtraiter1299, 0
  br i1 %lcmp.mod1301.not, label %._crit_edge630, label %.epil.preheader1298

.epil.preheader1298:                              ; preds = %._crit_edge630.loopexit.unr-lcssa, %.lr.ph629
  %indvars.iv690.epil.init = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next691.3, %._crit_edge630.loopexit.unr-lcssa ]
  %lcmp.mod1302 = icmp ne i64 %xtraiter1299, 0
  call void @llvm.assume(i1 %lcmp.mod1302)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gd, %.epil.preheader1298
  %indvars.iv690.epil = phi i64 [ %indvars.iv690.epil.init, %.epil.preheader1298 ], [ %indvars.iv.next691.epil, %bb.gd ] ; 2 uses
  %epil.iter1300 = phi i64 [ 0, %.epil.preheader1298 ], [ %epil.iter1300.next, %bb.gd ]
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.pre751, i64 %indvars.iv690.epil
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !11
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr inbounds [12 x i8], ptr %.pre752, i64 %i.ags ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 8 ; 2 uses
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !35
  %i.agw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, i64 8), align 8, !tbaa !35
  %i.agx = fsub float %i.agv, %i.agw
  %i.agy = load <2 x float>, ptr %i.agt, align 4, !tbaa !35
  %i.agz = load <2 x float>, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, align 8, !tbaa !35
  %i.aha = fsub <2 x float> %i.agy, %i.agz
  store <2 x float> %i.aha, ptr %i.agt, align 4, !tbaa !35
  store float %i.agx, ptr %i.agu, align 4, !tbaa !35
  %indvars.iv.next691.epil = add nuw nsw i64 %indvars.iv690.epil, 1
  %epil.iter1300.next = add i64 %epil.iter1300, 1 ; 2 uses
  %epil.iter1300.cmp.not = icmp eq i64 %epil.iter1300.next, %xtraiter1299
  br i1 %epil.iter1300.cmp.not, label %._crit_edge630, label %bb.gd, !llvm.loop !64

._crit_edge630:                                   ; preds = %._crit_edge630.loopexit.unr-lcssa, %bb.gd, %.loopexit579
  %i.ahb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !154
  invoke void @_Z14principal_compiPKiP6t_atomPA3_fS4_Pf(i32 noundef %i.agn, ptr noundef %.pre751, ptr noundef %i.ahc, ptr noundef %.pre752, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.ge, %.lr.ph629.new
  %indvars.iv690 = phi i64 [ 0, %.lr.ph629.new ], [ %indvars.iv.next691.3, %bb.ge ] ; 5 uses
  %niter1304 = phi i64 [ 0, %.lr.ph629.new ], [ %niter1304.next.3, %bb.ge ]
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %.pre751, i64 %indvars.iv690
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !11
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [12 x i8], ptr %.pre752, i64 %i.ahf ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8 ; 2 uses
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !35
  %i.ahj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, i64 8), align 8, !tbaa !35
  %i.ahk = fsub float %i.ahi, %i.ahj
  %i.ahl = load <2 x float>, ptr %i.ahg, align 4, !tbaa !35
  %i.ahm = load <2 x float>, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, align 8, !tbaa !35
  %i.ahn = fsub <2 x float> %i.ahl, %i.ahm
  store <2 x float> %i.ahn, ptr %i.ahg, align 4, !tbaa !35
  store float %i.ahk, ptr %i.ahh, align 4, !tbaa !35
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.pre751, i64 %indvars.iv690
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 4
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !11
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds [12 x i8], ptr %.pre752, i64 %i.ahr ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8 ; 2 uses
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !35
  %i.ahv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, i64 8), align 8, !tbaa !35
  %i.ahw = fsub float %i.ahu, %i.ahv
  %i.ahx = load <2 x float>, ptr %i.ahs, align 4, !tbaa !35
  %i.ahy = load <2 x float>, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, align 8, !tbaa !35
  %i.ahz = fsub <2 x float> %i.ahx, %i.ahy
  store <2 x float> %i.ahz, ptr %i.ahs, align 4, !tbaa !35
  store float %i.ahw, ptr %i.aht, align 4, !tbaa !35
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %.pre751, i64 %indvars.iv690
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !11
  %i.aid = sext i32 %i.aic to i64
  %i.aie = getelementptr inbounds [12 x i8], ptr %.pre752, i64 %i.aid ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 8 ; 2 uses
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !35
  %i.aih = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, i64 8), align 8, !tbaa !35
  %i.aii = fsub float %i.aig, %i.aih
  %i.aij = load <2 x float>, ptr %i.aie, align 4, !tbaa !35
  %i.aik = load <2 x float>, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, align 8, !tbaa !35
  %i.ail = fsub <2 x float> %i.aij, %i.aik
  store <2 x float> %i.ail, ptr %i.aie, align 4, !tbaa !35
  store float %i.aii, ptr %i.aif, align 4, !tbaa !35
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %.pre751, i64 %indvars.iv690
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 12
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !11
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds [12 x i8], ptr %.pre752, i64 %i.aip ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8 ; 2 uses
  %i.ais = load float, ptr %i.air, align 4, !tbaa !35
  %i.ait = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, i64 8), align 8, !tbaa !35
  %i.aiu = fsub float %i.ais, %i.ait
  %i.aiv = load <2 x float>, ptr %i.aiq, align 4, !tbaa !35
  %i.aiw = load <2 x float>, ptr @_ZZ12gmx_editconfiPPcE11aligncenter, align 8, !tbaa !35
  %i.aix = fsub <2 x float> %i.aiv, %i.aiw
  store <2 x float> %i.aix, ptr %i.aiq, align 4, !tbaa !35
  store float %i.aiu, ptr %i.air, align 4, !tbaa !35
  %indvars.iv.next691.3 = add nuw nsw i64 %indvars.iv690, 4 ; 2 uses
  %niter1304.next.3 = add i64 %niter1304, 4       ; 2 uses
  %niter1304.ncmp.3 = icmp eq i64 %niter1304.next.3, %unroll_iter1303
  br i1 %niter1304.ncmp.3, label %._crit_edge630.loopexit.unr-lcssa, label %bb.ge, !llvm.loop !65

bb.gf:                                            ; preds = %._crit_edge630
  %i.aiy = load float, ptr @_ZZ12gmx_editconfiPPcE9targetvec, align 4, !tbaa !35 ; 3 uses
  %i.aiz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 4), align 4, !tbaa !35 ; 3 uses
  %i.aja = fmul float %i.aiz, %i.aiz
  %i.ajb = call float @llvm.fmuladd.f32(float %i.aiy, float %i.aiy, float %i.aja)
  %i.ajc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 8), align 4, !tbaa !35 ; 3 uses
  %i.ajd = call noundef float @llvm.fmuladd.f32(float %i.ajc, float %i.ajc, float %i.ajb)
  %sqrt.i451 = call float @llvm.sqrt.f32(float %i.ajd)
  %i.aje = fdiv float 1.000000e+00, %sqrt.i451    ; 3 uses
  %i.ajf = fmul float %i.aiy, %i.aje
  store float %i.ajf, ptr @_ZZ12gmx_editconfiPPcE9targetvec, align 4, !tbaa !35
  %i.ajg = fmul float %i.aiz, %i.aje
  store float %i.ajg, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 4), align 4, !tbaa !35
  %i.ajh = fmul float %i.ajc, %i.aje
  store float %i.ajh, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 8), align 4, !tbaa !35
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ajj = load float, ptr %i.aji, align 8, !tbaa !35
  %i.ajk = fpext float %i.ajj to double
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !35
  %i.ajn = fpext float %i.ajm to double
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 16, !tbaa !35
  %i.ajq = fpext float %i.ajp to double
  %i.ajr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.173, double noundef %i.ajk, double noundef %i.ajn, double noundef %i.ajq) ; 0 uses
  %i.ajs = load float, ptr %i.aji, align 8, !tbaa !35 ; 3 uses
  %i.ajt = load float, ptr %i.ajl, align 4, !tbaa !35 ; 3 uses
  %i.aju = load float, ptr %i.ajo, align 16, !tbaa !35 ; 3 uses
  %i.ajv = fpext float %i.ajs to double           ; 4 uses
  %i.ajw = load float, ptr @_ZZ12gmx_editconfiPPcE9targetvec, align 4, !tbaa !35 ; 3 uses
  %i.ajx = fpext float %i.ajw to double           ; 4 uses
  %i.ajy = call double @llvm.fmuladd.f64(double %i.ajv, double %i.ajv, double 0.000000e+00)
  %i.ajz = call double @llvm.fmuladd.f64(double %i.ajx, double %i.ajx, double 0.000000e+00)
  %i.aka = fpext float %i.ajt to double           ; 4 uses
  %i.akb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 4), align 4, !tbaa !35 ; 3 uses
  %i.akc = fpext float %i.akb to double           ; 4 uses
  %i.akd = call double @llvm.fmuladd.f64(double %i.aka, double %i.aka, double %i.ajy)
  %i.ake = call double @llvm.fmuladd.f64(double %i.akc, double %i.akc, double %i.ajz)
  %i.akf = fpext float %i.aju to double           ; 4 uses
  %i.akg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE9targetvec, i64 8), align 4, !tbaa !35 ; 3 uses
  %i.akh = fpext float %i.akg to double           ; 4 uses
  %i.aki = call double @llvm.fmuladd.f64(double %i.akf, double %i.akf, double %i.akd)
  %i.akj = call double @llvm.fmuladd.f64(double %i.akh, double %i.akh, double %i.ake)
  %i.akk = fmul double %i.aki, %i.akj             ; 2 uses
  %i.akl = fcmp ogt double %i.akk, 0.000000e+00
  br i1 %i.akl, label %bb.gg, label %_ZL14calc_rotmatrixPfS_PA3_f.exit

bb.gg:                                            ; preds = %bb.gf
  %i.akm = call double @llvm.fmuladd.f64(double %i.ajv, double %i.ajx, double 0.000000e+00)
  %i.akn = call double @llvm.fmuladd.f64(double %i.aka, double %i.akc, double %i.akm)
  %i.ako = call double @llvm.fmuladd.f64(double %i.akf, double %i.akh, double %i.akn)
  %i.akp = call double @sqrt(double noundef %i.akk) #20
  %i.akq = fdiv double 1.000000e+00, %i.akp
  %i.akr = fmul double %i.ako, %i.akq
  %i.aks = fptrunc double %i.akr to float
  br label %_ZL14calc_rotmatrixPfS_PA3_f.exit

_ZL14calc_rotmatrixPfS_PA3_f.exit:                ; preds = %bb.gf, %bb.gg
  %.026.i.i = phi float [ %i.aks, %bb.gg ], [ 1.000000e+00, %bb.gf ] ; 3 uses
  %i.akt = fcmp ogt float %.026.i.i, 1.000000e+00
  %i.aku = fcmp olt float %.026.i.i, -1.000000e+00
  %..026.i.i = select i1 %i.aku, float -1.000000e+00, float %.026.i.i
  %.027.i.i = select i1 %i.akt, float 1.000000e+00, float %..026.i.i ; 4 uses
  %i.akv = fmul float %.027.i.i, %.027.i.i
  %i.akw = fpext float %i.akv to double
  %i.akx = fsub double 1.000000e+00, %i.akw
  %i.aky = call double @sqrt(double noundef %i.akx) #20
  %i.akz = fptrunc double %i.aky to float         ; 3 uses
  %i.ala = fneg float %i.akb
  %i.alb = fmul float %i.aju, %i.ala
  %i.alc = call float @llvm.fmuladd.f32(float %i.ajt, float %i.akg, float %i.alb) ; 3 uses
  %i.ald = fneg float %i.akg
  %i.ale = fmul float %i.ajs, %i.ald
  %i.alf = call float @llvm.fmuladd.f32(float %i.aju, float %i.ajw, float %i.ale) ; 3 uses
  %i.alg = fneg float %i.ajw
  %i.alh = fmul float %i.ajt, %i.alg
  %i.ali = call float @llvm.fmuladd.f32(float %i.ajs, float %i.akb, float %i.alh) ; 3 uses
  %i.alj = fmul float %i.alf, %i.alf
  %i.alk = call float @llvm.fmuladd.f32(float %i.alc, float %i.alc, float %i.alj)
  %i.all = call noundef float @llvm.fmuladd.f32(float %i.ali, float %i.ali, float %i.alk)
  %sqrt.i.i452 = call float @llvm.sqrt.f32(float %i.all)
  %i.alm = fdiv float 1.000000e+00, %sqrt.i.i452  ; 3 uses
  %i.aln = fmul float %i.alc, %i.alm              ; 6 uses
  %i.alo = fmul float %i.alf, %i.alm              ; 6 uses
  %i.alp = fmul float %i.ali, %i.alm              ; 6 uses
  %i.alq = fpext float %i.aln to double
  %i.alr = fpext float %i.alo to double
  %i.als = fpext float %i.alp to double
  %i.alt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, double noundef %i.ajv, double noundef %i.aka, double noundef %i.akf, double noundef %i.ajx, double noundef %i.akc, double noundef %i.akh, double noundef %i.alq, double noundef %i.alr, double noundef %i.als) ; 0 uses
  %i.alu = fmul float %i.aln, %i.aln
  %i.alv = fpext float %i.alu to double           ; 2 uses
  %i.alw = fsub double 1.000000e+00, %i.alv
  %i.alx = fpext float %.027.i.i to double        ; 3 uses
  %i.aly = call double @llvm.fmuladd.f64(double %i.alw, double %i.alx, double %i.alv)
  %i.alz = fptrunc double %i.aly to float         ; 4 uses
  %i.ama = fmul float %i.aln, %i.alo              ; 2 uses
  %i.amb = fsub float 1.000000e+00, %.027.i.i     ; 6 uses
  %i.amc = fmul float %i.alp, %i.akz              ; 2 uses
  %i.amd = fneg float %i.amc
  %i.ame = call float @llvm.fmuladd.f32(float %i.ama, float %i.amb, float %i.amd) ; 4 uses
  %i.amf = fmul float %i.aln, %i.alp              ; 2 uses
  %i.amg = fmul float %i.alo, %i.akz              ; 2 uses
  %i.amh = call float @llvm.fmuladd.f32(float %i.amf, float %i.amb, float %i.amg) ; 4 uses
  %i.ami = call float @llvm.fmuladd.f32(float %i.ama, float %i.amb, float %i.amc) ; 4 uses
  %i.amj = fmul float %i.alo, %i.alo
  %i.amk = fpext float %i.amj to double           ; 2 uses
  %i.aml = fsub double 1.000000e+00, %i.amk
  %i.amm = call double @llvm.fmuladd.f64(double %i.aml, double %i.alx, double %i.amk)
  %i.amn = fptrunc double %i.amm to float         ; 4 uses
  %i.amo = fmul float %i.alo, %i.alp              ; 2 uses
  %i.amp = fmul float %i.aln, %i.akz              ; 2 uses
  %i.amq = fneg float %i.amp
  %i.amr = call float @llvm.fmuladd.f32(float %i.amo, float %i.amb, float %i.amq) ; 4 uses
  %i.ams = fneg float %i.amg
  %i.amt = call float @llvm.fmuladd.f32(float %i.amf, float %i.amb, float %i.ams) ; 4 uses
  %i.amu = call float @llvm.fmuladd.f32(float %i.amo, float %i.amb, float %i.amp) ; 4 uses
  %i.amv = fmul float %i.alp, %i.alp
  %i.amw = fpext float %i.amv to double           ; 2 uses
  %i.amx = fsub double 1.000000e+00, %i.amw
  %i.amy = call double @llvm.fmuladd.f64(double %i.amx, double %i.alx, double %i.amw)
  %i.amz = fptrunc double %i.amy to float         ; 4 uses
  %i.ana = fpext float %i.alz to double
  %i.anb = fpext float %i.ame to double
  %i.anc = fpext float %i.amh to double
  %i.and = fpext float %i.ami to double
  %i.ane = fpext float %i.amn to double
  %i.anf = fpext float %i.amr to double
  %i.ang = fpext float %i.amt to double
  %i.anh = fpext float %i.amu to double
  %i.ani = fpext float %i.amz to double
  %i.anj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, double noundef %i.ana, double noundef %i.anb, double noundef %i.anc, double noundef %i.and, double noundef %i.ane, double noundef %i.anf, double noundef %i.ang, double noundef %i.anh, double noundef %i.ani) ; 0 uses
  %i.ank = load i32, ptr %i.u, align 4, !tbaa !11 ; 5 uses
  %i.anl = icmp sgt i32 %i.ank, 0
  br i1 %i.anl, label %.lr.ph633, label %._crit_edge637

.lr.ph633:                                        ; preds = %_ZL14calc_rotmatrixPfS_PA3_f.exit
  %i.anm = load ptr, ptr %i.x, align 8, !tbaa !152 ; 3 uses
  %i.ann = load ptr, ptr %i.w, align 8, !tbaa !16 ; 3 uses
  %wide.trip.count696 = zext nneg i32 %i.ank to i64 ; 4 uses
  %xtraiter1306 = and i64 %wide.trip.count696, 1
  %i.ano = icmp eq i32 %i.ank, 1
  br i1 %i.ano, label %.epil.preheader1305, label %.lr.ph633.new

.lr.ph633.new:                                    ; preds = %.lr.ph633
  %unroll_iter1310 = and i64 %wide.trip.count696, 2147483646
  br label %bb.gh

.lr.ph636.unr-lcssa:                              ; preds = %bb.gh
  %lcmp.mod1308.not = icmp eq i64 %xtraiter1306, 0
  br i1 %lcmp.mod1308.not, label %.lr.ph636, label %.epil.preheader1305

.epil.preheader1305:                              ; preds = %.lr.ph636.unr-lcssa, %.lr.ph633
  %indvars.iv693.epil.init = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next694.1, %.lr.ph636.unr-lcssa ]
  %lcmp.mod1309 = trunc i32 %i.ank to i1
  call void @llvm.assume(i1 %lcmp.mod1309)
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv693.epil.init
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !11
  %i.anr = sext i32 %i.anq to i64
  %i.ans = getelementptr inbounds [12 x i8], ptr %i.anm, i64 %i.anr ; 4 uses
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !35 ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 4 ; 2 uses
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !35 ; 3 uses
  %i.anw = fmul float %i.ame, %i.anv
  %i.anx = call float @llvm.fmuladd.f32(float %i.alz, float %i.ant, float %i.anw)
  %i.any = getelementptr inbounds nuw i8, ptr %i.ans, i64 8 ; 2 uses
  %i.anz = load float, ptr %i.any, align 4, !tbaa !35 ; 3 uses
  %i.aoa = call float @llvm.fmuladd.f32(float %i.amh, float %i.anz, float %i.anx)
  %i.aob = fmul float %i.anv, %i.amn
  %i.aoc = call float @llvm.fmuladd.f32(float %i.ami, float %i.ant, float %i.aob)
  %i.aod = call float @llvm.fmuladd.f32(float %i.amr, float %i.anz, float %i.aoc)
  %i.aoe = fmul float %i.amu, %i.anv
  %i.aof = call float @llvm.fmuladd.f32(float %i.amt, float %i.ant, float %i.aoe)
  %i.aog = call float @llvm.fmuladd.f32(float %i.amz, float %i.anz, float %i.aof)
  store float %i.aoa, ptr %i.ans, align 4, !tbaa !35
  store float %i.aod, ptr %i.anu, align 4, !tbaa !35
  store float %i.aog, ptr %i.any, align 4, !tbaa !35
  br label %.lr.ph636

.lr.ph636:                                        ; preds = %.lr.ph636.unr-lcssa, %.epil.preheader1305
  %i.aoh = load ptr, ptr %i.x, align 8, !tbaa !152 ; 5 uses
  %i.aoi = load ptr, ptr %i.w, align 8, !tbaa !16 ; 5 uses
  %xtraiter1313 = and i64 %wide.trip.count696, 3  ; 3 uses
  %i.aoj = icmp ult i32 %i.ank, 4
  br i1 %i.aoj, label %.epil.preheader1312, label %.lr.ph636.new

.lr.ph636.new:                                    ; preds = %.lr.ph636
  %unroll_iter1317 = and i64 %wide.trip.count696, 2147483644
  br label %bb.gj

bb.gh:                                            ; preds = %bb.gh, %.lr.ph633.new
  %indvars.iv693 = phi i64 [ 0, %.lr.ph633.new ], [ %indvars.iv.next694.1, %bb.gh ] ; 3 uses
  %niter1311 = phi i64 [ 0, %.lr.ph633.new ], [ %niter1311.next.1, %bb.gh ]
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv693
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !11
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds [12 x i8], ptr %i.anm, i64 %i.aom ; 4 uses
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !35 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aon, i64 4 ; 2 uses
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !35 ; 3 uses
  %i.aor = fmul float %i.ame, %i.aoq
  %i.aos = call float @llvm.fmuladd.f32(float %i.alz, float %i.aoo, float %i.aor)
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aon, i64 8 ; 2 uses
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !35 ; 3 uses
  %i.aov = call float @llvm.fmuladd.f32(float %i.amh, float %i.aou, float %i.aos)
  %i.aow = fmul float %i.aoq, %i.amn
  %i.aox = call float @llvm.fmuladd.f32(float %i.ami, float %i.aoo, float %i.aow)
  %i.aoy = call float @llvm.fmuladd.f32(float %i.amr, float %i.aou, float %i.aox)
  %i.aoz = fmul float %i.amu, %i.aoq
  %i.apa = call float @llvm.fmuladd.f32(float %i.amt, float %i.aoo, float %i.aoz)
  %i.apb = call float @llvm.fmuladd.f32(float %i.amz, float %i.aou, float %i.apa)
  store float %i.aov, ptr %i.aon, align 4, !tbaa !35
  store float %i.aoy, ptr %i.aop, align 4, !tbaa !35
  store float %i.apb, ptr %i.aot, align 4, !tbaa !35
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.ann, i64 %indvars.iv693
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 4
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !11
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds [12 x i8], ptr %i.anm, i64 %i.apf ; 4 uses
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !35 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.apg, i64 4 ; 2 uses
  %i.apj = load float, ptr %i.api, align 4, !tbaa !35 ; 3 uses
  %i.apk = fmul float %i.ame, %i.apj
  %i.apl = call float @llvm.fmuladd.f32(float %i.alz, float %i.aph, float %i.apk)
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apg, i64 8 ; 2 uses
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !35 ; 3 uses
  %i.apo = call float @llvm.fmuladd.f32(float %i.amh, float %i.apn, float %i.apl)
  %i.app = fmul float %i.apj, %i.amn
  %i.apq = call float @llvm.fmuladd.f32(float %i.ami, float %i.aph, float %i.app)
  %i.apr = call float @llvm.fmuladd.f32(float %i.amr, float %i.apn, float %i.apq)
  %i.aps = fmul float %i.amu, %i.apj
  %i.apt = call float @llvm.fmuladd.f32(float %i.amt, float %i.aph, float %i.aps)
  %i.apu = call float @llvm.fmuladd.f32(float %i.amz, float %i.apn, float %i.apt)
  store float %i.apo, ptr %i.apg, align 4, !tbaa !35
  store float %i.apr, ptr %i.api, align 4, !tbaa !35
  store float %i.apu, ptr %i.apm, align 4, !tbaa !35
  %indvars.iv.next694.1 = add nuw nsw i64 %indvars.iv693, 2 ; 2 uses
  %niter1311.next.1 = add i64 %niter1311, 2       ; 2 uses
  %niter1311.ncmp.1 = icmp eq i64 %niter1311.next.1, %unroll_iter1310
  br i1 %niter1311.ncmp.1, label %.lr.ph636.unr-lcssa, label %bb.gh, !llvm.loop !66

._crit_edge637.loopexit.unr-lcssa:                ; preds = %bb.gj
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1313, 0
  br i1 %lcmp.mod1315.not, label %._crit_edge637, label %.epil.preheader1312

.epil.preheader1312:                              ; preds = %._crit_edge637.loopexit.unr-lcssa, %.lr.ph636
  %indvars.iv698.epil.init = phi i64 [ 0, %.lr.ph636 ], [ %indvars.iv.next699.3, %._crit_edge637.loopexit.unr-lcssa ]
  %lcmp.mod1316 = icmp ne i64 %xtraiter1313, 0
  call void @llvm.assume(i1 %lcmp.mod1316)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %.epil.preheader1312
  %indvars.iv698.epil = phi i64 [ %indvars.iv698.epil.init, %.epil.preheader1312 ], [ %indvars.iv.next699.epil, %bb.gi ] ; 2 uses
  %epil.iter1314 = phi i64 [ 0, %.epil.preheader1312 ], [ %epil.iter1314.next, %bb.gi ]
end_hunk_0
begin_hunk_1_@_ZL11renum_resnrP7t_atomsiPKii:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.epil
  %.1.epil = phi i32 [ %i.cn, %bb.n ], [ %.0151.epil, %.lr.ph.split.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !175

._crit_edge:                                      ; preds = %._crit_edge.loopexit16.unr-lcssa, %bb.o, %._crit_edge.loopexit.unr-lcssa, %bb.m, %bb.a
  ret void
}

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_Z21write_pdbfile_indexedP8_IO_FILEPKcPK7t_atomsPA3_Kf7PbcTypeS8_ciiPKiP12gmx_conect_tbb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z22write_sto_conf_indexedRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_iPi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL9read_bfacPKcPiPPdPS1_(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call noundef i32 @_Z9get_linesPKcPPPc(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !11
  %i.c = sext i32 %i.b to i64
  %i.d = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.142, i32 noundef 221, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8)
  store ptr %i.d, ptr %2, align 8, !tbaa !14
  %i.e = load i32, ptr %1, align 4, !tbaa !11
  %i.f = sext i32 %i.e to i64
  %i.g = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.142, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 4)
  store ptr %i.g, ptr %3, align 8, !tbaa !16
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.i = load i32, ptr %1, align 4, !tbaa !11
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.209, i32 noundef %i.i, ptr noundef %0) #25 ; 0 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !11
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = load ptr, ptr %3, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %2, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.o, ptr noundef nonnull @.str.210, ptr noundef %i.q, ptr noundef %i.s) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !11
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9done_atomP7t_atoms(ptr noundef) local_unnamed_addr #3

declare void @_Z11done_symtabP8t_symtab(ptr noundef) local_unnamed_addr #3

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN14AtomPropertiesD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !27
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #13

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare void @_Z12init_t_atomsP7t_atomsib(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_Z21calc_triclinic_imagesPA3_KfPA3_f(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare noundef i32 @_Z9get_linesPKcPPPc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

declare void @_Z11gmx_warningPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare void @_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, ptr noundef, i8 noundef signext, i32 noundef, i8 noundef signext, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z22compact_unitcell_edgesv() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 double", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{!"bool", !7, i64 0}
!25 = !{}
!26 = !{!17, !17, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !18, i64 8, !7, i64 16}
!32 = !{!31, !17, i64 0}
!33 = !{!"any p2 pointer", !12, i64 0}
!34 = !{!"float", !7, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p2 omnipotent char", !33, i64 0}
!37 = !{!"short", !7, i64 0}
!38 = !{!"_ZTS12ParticleType", !7, i64 0}
!39 = !{!"_ZTS6t_atom", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !37, i64 16, !37, i64 18, !38, i64 20, !8, i64 24, !8, i64 28, !7, i64 32}
!40 = !{!39, !8, i64 24}
!41 = !{!"_ZTS9t_resinfo", !36, i64 0, !8, i64 8, !7, i64 12, !8, i64 16, !7, i64 20, !36, i64 24}
!42 = !{!30, !17, i64 0}
!43 = !{!18, !18, i64 0}
!44 = !{!31, !18, i64 8}
!45 = !{!36, !36, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!41, !8, i64 8}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!"_ZTSSt22_Optional_payload_baseINSt10filesystem7__cxx114pathEE", !7, i64 0, !24, i64 40}
!50 = !{!49, !24, i64 40}
!51 = !{!20, !19, i64 0}
!52 = !{!20, !19, i64 8}
!53 = !{!20, !19, i64 16}
!54 = distinct !{!54, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = distinct !{!57, !48}
!58 = distinct !{!58, i1 false, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !46, !160, !161}
!62 = distinct !{!62, !46, !160}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !46}
!66 = distinct !{!66, !46}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !46}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !46, !160, !161}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !46}
!75 = distinct !{!75, !46, !160}
!76 = distinct !{!76, !48}
!77 = distinct !{!77, !46, !160, !161}
!78 = distinct !{!78, !46, !161, !160}
!79 = distinct !{!79, !46}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !46, !160, !161}
!84 = distinct !{!84, !46, !160, !161}
!85 = distinct !{!85, !46, !161, !160}
!86 = distinct !{!86, !46}
!87 = distinct !{!87, !46}
!88 = distinct !{!88, !46, !160, !161}
!89 = distinct !{!89, !46, !160, !161}
!90 = distinct !{!90, !46, !160, !161}
!91 = distinct !{!91, !46, !160, !161}
!92 = distinct !{!92, !46, !161, !160}
!93 = distinct !{!93, !46}
!94 = distinct !{!94, !46, !161, !160}
!95 = distinct !{!95, !46}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !46, !160, !161}
!98 = distinct !{!98, !46, !160, !161}
!99 = distinct !{!99, !46, !161, !160}
!100 = distinct !{!100, !46}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !46}
!103 = distinct !{!103, !46}
!104 = distinct !{!104, !46}
!105 = distinct !{!105, !46}
!106 = distinct !{!106, !46}
!107 = distinct !{!107, !46}
!108 = distinct !{!108, !46}
!109 = distinct !{!109, !46}
!110 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !20, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !111, i64 0}
!113 = !{!"_ZTS8t_filenm", !8, i64 0, !17, i64 8, !17, i64 16, !18, i64 24, !112, i64 32}
!114 = !{!113, !8, i64 0}
!115 = !{!113, !17, i64 8}
!116 = !{!113, !17, i64 16}
!117 = !{!113, !18, i64 24}
!118 = !{!24, !24, i64 0}
!119 = !{!"p1 _ZTS6t_atom", !12, i64 0}
!120 = !{!"any p3 pointer", !33, i64 0}
!121 = !{!"p3 omnipotent char", !120, i64 0}
!122 = !{!"p1 _ZTS9t_resinfo", !12, i64 0}
!123 = !{!"p1 _ZTS9t_pdbinfo", !12, i64 0}
!124 = !{!"_ZTS7t_atoms", !8, i64 0, !119, i64 8, !121, i64 16, !121, i64 24, !121, i64 32, !8, i64 40, !122, i64 48, !123, i64 56, !24, i64 64, !24, i64 65, !24, i64 66, !24, i64 67, !24, i64 68}
!125 = !{!124, !8, i64 0}
!126 = !{!124, !123, i64 56}
!127 = !{!123, !123, i64 0}
!128 = !{!124, !24, i64 68}
!129 = !{!"_ZTS7PbcType", !7, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!"p1 _ZTS9t_iparams", !12, i64 0}
!132 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !7, i64 0}
!133 = !{!"_ZTS6t_idef", !8, i64 0, !8, i64 4, !12, i64 8, !131, i64 16, !34, i64 24, !131, i64 32, !131, i64 40, !132, i64 48, !8, i64 2328}
!134 = !{!"_ZTS7t_block", !8, i64 0, !15, i64 8, !8, i64 16}
!135 = !{!"p1 _ZTS8t_symbuf", !12, i64 0}
!136 = !{!"_ZTS8t_symtab", !8, i64 0, !135, i64 8}
!137 = !{!"_ZTS10t_topology", !36, i64 0, !133, i64 8, !124, i64 2344, !134, i64 2416, !24, i64 2440, !136, i64 2448}
!138 = !{!137, !8, i64 2344}
!139 = !{!137, !8, i64 12}
!140 = !{!137, !122, i64 2392}
!141 = !{!137, !119, i64 2352}
!142 = !{!41, !36, i64 0}
!143 = !{!137, !121, i64 2360}
!144 = !{!39, !37, i64 16}
!145 = !{!137, !131, i64 24}
!146 = !{!39, !34, i64 4}
!147 = !{!"_ZTS13PdbRecordType", !7, i64 0}
!148 = !{!"_ZTS9t_pdbinfo", !147, i64 0, !8, i64 4, !7, i64 8, !7, i64 9, !34, i64 16, !34, i64 20, !24, i64 24, !7, i64 28}
!149 = !{!148, !34, i64 16}
!150 = !{!148, !34, i64 20}
!151 = !{!"p1 float", !12, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!124, !121, i64 16}
!154 = !{!124, !119, i64 8}
!155 = !{!124, !122, i64 48}
!156 = !{!41, !7, i64 20}
!157 = !{!39, !34, i64 0}
!158 = !{!59}
!159 = !{!60}
end_hunk_1
