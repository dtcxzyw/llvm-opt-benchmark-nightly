Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@KINSol:bb.a
  br i1 %i.acv, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.acw = tail call double @sqrt(double noundef %i.acp) #13
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.acx = phi double [ %i.acw, %bb.fx ], [ 0.000000e+00, %bb.fw ]
  %i.acy = fsub double %i.acx, %i.acm
  %i.acz = fdiv double %i.acy, %i.acn
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fv
  %.0296.i = phi double [ %i.acz, %bb.fy ], [ %i.acu, %bb.fv ] ; 2 uses
  %i.ada = fmul double %.0303.i380, 5.000000e-01  ; 2 uses
  %i.adb = fcmp ogt double %.0296.i, %i.ada
  %.1297.i = select i1 %i.adb, double %i.ada, double %.0296.i ; 2 uses
  %i.adc = fmul double %.0303.i380, 1.000000e-01  ; 2 uses
  %i.add = fcmp ogt double %i.adc, %.1297.i
  %i.ade = select i1 %i.add, double %i.adc, double %.1297.i ; 5 uses
  %i.adf = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.adg = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.adh = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.adf, double noundef %i.ade, ptr noundef %i.adg, ptr noundef %i.adh) #13
  %i.adi = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.adj = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.adk = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.adl = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.adm = tail call i32 %i.adi(ptr noundef %i.adj, ptr noundef %i.adk, ptr noundef %i.adl) #13, !inline_history !93
  %i.adn = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.ado = add nsw i64 %i.adn, 1
  store i64 %i.ado, ptr %i.ey, align 8, !tbaa !99
  %.not332.i = icmp eq i32 %i.adm, 0
  br i1 %.not332.i, label %bb.ga, label %KINLinSolDrv.exit.thread.thread

bb.ga:                                            ; preds = %bb.fz
  %i.adp = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.adq = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.adr = tail call double @N_VWL2Norm(ptr noundef %i.adp, ptr noundef %i.adq) #13 ; 4 uses
  %i.ads = fmul double %i.adr, 5.000000e-01
  %i.adt = fmul double %i.adr, %i.ads             ; 4 uses
  %i.adu = fcmp olt double %i.ade, %i.zz
  br i1 %i.adu, label %.loopexit425.i, label %.peel.next.i194, !llvm.loop !94

.loopexit425.i:                                   ; preds = %bb.ga, %bb.fu
  %.11238 = phi double [ %i.aay, %bb.fu ], [ %i.adr, %bb.ga ]
  %.11 = phi double [ %i.aba, %bb.fu ], [ %i.adt, %bb.ga ]
  %i.adv = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.adw = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.adv, ptr noundef %i.adw) #13
  br label %bb.gk

.loopexit.i195:                                   ; preds = %.peel.next.i194, %.peel.next.i194.preheader
  %.10237.lcssa = phi double [ %i.aay, %.peel.next.i194.preheader ], [ %i.adr, %.peel.next.i194 ] ; 3 uses
  %.10.lcssa = phi double [ %i.aba, %.peel.next.i194.preheader ], [ %i.adt, %.peel.next.i194 ] ; 4 uses
  %.0303.i.lcssa = phi double [ %i.aal, %.peel.next.i194.preheader ], [ %i.ade, %.peel.next.i194 ] ; 4 uses
  %.0294.i.lcssa = phi double [ 1.000000e+00, %.peel.next.i194.preheader ], [ %.0303.i380, %.peel.next.i194 ]
  %.0287.i.lcssa = phi i32 [ 1, %.peel.next.i194.preheader ], [ %i.abh, %.peel.next.i194 ] ; 3 uses
  %.lcssa301 = phi double [ %i.abc, %.peel.next.i194.preheader ], [ %i.abi, %.peel.next.i194 ]
  %.lcssa298 = phi double [ %i.abd, %.peel.next.i194.preheader ], [ %i.abj, %.peel.next.i194 ]
  %i.adx = fmul double %i.zn, 9.000000e-01        ; 3 uses
  %i.ady = tail call double @llvm.fmuladd.f64(double %i.adx, double %.0303.i.lcssa, double %.lcssa301)
  %i.adz = fcmp olt double %.10.lcssa, %i.ady
  br i1 %i.adz, label %bb.gb, label %.thread475.i

.loopexit.thread.i:                               ; preds = %.peel.begin.i190
  %i.aea = fmul double %i.zn, 9.000000e-01        ; 2 uses
  %i.aeb = fadd double %i.aea, %i.aac
  %i.aec = fcmp olt double %i.zl, %i.aeb
  br i1 %i.aec, label %.thread.i191, label %.thread475.i

bb.gb:                                            ; preds = %.loopexit.i195
  %i.aed = fcmp oeq double %.0303.i.lcssa, 1.000000e+00
  br i1 %i.aed, label %.thread.i191, label %.critedge.i

.thread.i191:                                     ; preds = %bb.gb, %.loopexit.thread.i
  %.5232 = phi double [ %.10237.lcssa, %bb.gb ], [ %i.zj, %.loopexit.thread.i ]
  %.5 = phi double [ %.10.lcssa, %bb.gb ], [ %i.zl, %.loopexit.thread.i ]
  %.0287.lcssa452462.i = phi i32 [ %.0287.i.lcssa, %bb.gb ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.aee = phi double [ %i.adx, %bb.gb ], [ %i.aea, %.loopexit.thread.i ] ; 2 uses
  %i.aef = load double, ptr %i.ek, align 8, !tbaa !110
  %i.aeg = fcmp olt double %.2312388.lcssa.i, %i.aef
  br i1 %i.aeg, label %.preheader.i.preheader, label %.thread475.i

.preheader.i.preheader:                           ; preds = %.thread.i191
  %i.aeh = insertelement <2 x double> poison, double %i.aaa, i64 0
  %i.aei = insertelement <2 x double> %i.aeh, double %i.aee, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.gc
  %.1304.i = phi double [ %i.aej, %bb.gc ], [ 1.000000e+00, %.preheader.i.preheader ] ; 2 uses
  %.1288.i = phi i32 [ %i.aew, %bb.gc ], [ %.0287.lcssa452462.i, %.preheader.i.preheader ]
  %i.aej = fmul double %.1304.i, 2.000000e+00     ; 3 uses
  %i.aek = fcmp uge double %i.aej, %.2302390.lcssa.i ; 2 uses
  %i.ael = select i1 %i.aek, double %.2302390.lcssa.i, double %i.aej ; 3 uses
  %i.aem = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.aen = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.aeo = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aem, double noundef %i.ael, ptr noundef %i.aen, ptr noundef %i.aeo) #13
  %i.aep = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.aeq = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.aer = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aes = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.aet = tail call i32 %i.aep(ptr noundef %i.aeq, ptr noundef %i.aer, ptr noundef %i.aes) #13, !inline_history !93
  %i.aeu = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.aev = add nsw i64 %i.aeu, 1
  store i64 %i.aev, ptr %i.ey, align 8, !tbaa !99
  %.not333.i = icmp eq i32 %i.aet, 0
  br i1 %.not333.i, label %bb.gc, label %KINLinSolDrv.exit.thread.thread

bb.gc:                                            ; preds = %.preheader.i
  %i.aew = add nuw nsw i32 %.1288.i, 1            ; 2 uses
  %i.aex = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aey = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.aez = tail call double @N_VWL2Norm(ptr noundef %i.aex, ptr noundef %i.aey) #13 ; 3 uses
  %i.afa = fmul double %i.aez, 5.000000e-01
  %i.afb = fmul double %i.aez, %i.afa             ; 3 uses
  %i.afc = load double, ptr %i.ge, align 8, !tbaa !116
  %i.afd = insertelement <2 x double> poison, double %i.ael, i64 0
  %i.afe = shufflevector <2 x double> %i.afd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aff = insertelement <2 x double> poison, double %i.afc, i64 0
  %i.afg = shufflevector <2 x double> %i.aff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aei, <2 x double> %i.afe, <2 x double> %i.afg) ; 2 uses
  %i.afi = extractelement <2 x double> %i.afh, i64 0 ; 2 uses
  %i.afj = fcmp ugt double %i.afb, %i.afi
  %i.afk = extractelement <2 x double> %i.afh, i64 1
  %i.afl = fcmp uge double %i.afb, %i.afk
  %or.cond.i192.not728 = select i1 %i.afj, i1 true, i1 %i.afl ; 2 uses
  %brmerge = or i1 %or.cond.i192.not728, %i.aek
  br i1 %brmerge, label %.critedge.i.loopexit, label %.preheader.i

.critedge.i.loopexit:                             ; preds = %bb.gc
  %.mux = select i1 %or.cond.i192.not728, double %i.ael, double %.2302390.lcssa.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.gb
  %.7234 = phi double [ %.10237.lcssa, %bb.gb ], [ %i.aez, %.critedge.i.loopexit ]
  %.7 = phi double [ %.10.lcssa, %bb.gb ], [ %i.afb, %.critedge.i.loopexit ] ; 2 uses
  %i.afm = phi double [ %i.adx, %bb.gb ], [ %i.aee, %.critedge.i.loopexit ]
  %.2305.i = phi double [ %.0303.i.lcssa, %bb.gb ], [ %.mux, %.critedge.i.loopexit ] ; 6 uses
  %.1295.i = phi double [ %.0294.i.lcssa, %bb.gb ], [ %.1304.i, %.critedge.i.loopexit ] ; 3 uses
  %.0290.i = phi double [ %.lcssa298, %bb.gb ], [ %i.afi, %.critedge.i.loopexit ]
  %.2.i = phi i32 [ %.0287.i.lcssa, %bb.gb ], [ %i.aew, %.critedge.i.loopexit ] ; 2 uses
  %i.afn = fcmp olt double %.2305.i, 1.000000e+00
  br i1 %i.afn, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.critedge.i
  %i.afo = fcmp ogt double %.2305.i, 1.000000e+00
  %i.afp = fcmp ogt double %.7, %.0290.i
  %or.cond509.i = and i1 %i.afo, %i.afp
  br i1 %or.cond509.i, label %bb.ge, label %.thread475.i

bb.ge:                                            ; preds = %bb.gd, %.critedge.i
  %i.afq = fcmp olt double %.2305.i, %.1295.i
  %i.afr = select i1 %i.afq, double %.2305.i, double %.1295.i
  %i.afs = fsub double %.1295.i, %.2305.i
  %i.aft = tail call double @llvm.fabs.f64(double %i.afs)
  br label %.critedge2.outer.i

.critedge2.outer.i:                               ; preds = %bb.gg, %bb.ge
  %.0298.ph.i = phi double [ %.1299.ph.i, %bb.gg ], [ %i.aft, %bb.ge ]
  %.0291.ph.i = phi double [ %.1292.ph.i, %bb.gg ], [ %i.afr, %bb.ge ] ; 2 uses
  %.3.ph.i = phi i32 [ %i.agg, %bb.gg ], [ %.2.i, %bb.ge ]
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.gf, %.critedge2.outer.i
  %.0298.i = phi double [ %i.afu, %bb.gf ], [ %.0298.ph.i, %.critedge2.outer.i ] ; 3 uses
  %.3.i193 = phi i32 [ %i.agg, %bb.gf ], [ %.3.ph.i, %.critedge2.outer.i ]
  %i.afu = fmul double %.0298.i, 5.000000e-01     ; 3 uses
  %i.afv = fadd double %.0291.ph.i, %i.afu        ; 7 uses
  %i.afw = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.afx = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.afy = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.afw, double noundef %i.afv, ptr noundef %i.afx, ptr noundef %i.afy) #13
  %i.afz = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.aga = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.agb = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.agc = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.agd = tail call i32 %i.afz(ptr noundef %i.aga, ptr noundef %i.agb, ptr noundef %i.agc) #13, !inline_history !93
  %i.age = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.agf = add nsw i64 %i.age, 1
  store i64 %i.agf, ptr %i.ey, align 8, !tbaa !99
  %.not334.i = icmp eq i32 %i.agd, 0
  br i1 %.not334.i, label %bb.gf, label %KINLinSolDrv.exit.thread.thread

bb.gf:                                            ; preds = %.critedge2.i
  %i.agg = add nsw i32 %.3.i193, 1                ; 4 uses
  %i.agh = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.agi = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.agj = tail call double @N_VWL2Norm(ptr noundef %i.agh, ptr noundef %i.agi) #13 ; 3 uses
  %i.agk = fmul double %i.agj, 5.000000e-01
  %i.agl = fmul double %i.agj, %i.agk             ; 3 uses
  %i.agm = load double, ptr %i.ge, align 8, !tbaa !116 ; 2 uses
  %i.agn = tail call double @llvm.fmuladd.f64(double %i.aaa, double %i.afv, double %i.agm)
  %i.ago = fcmp ogt double %i.agl, %i.agn
  br i1 %i.ago, label %.critedge2.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.agp = tail call double @llvm.fmuladd.f64(double %i.afm, double %i.afv, double %i.agm)
  %i.agq = fcmp olt double %i.agl, %i.agp         ; 4 uses
  %i.agr = fsub double %.0298.i, %i.afu
  %.1299.ph.i = select i1 %i.agq, double %i.agr, double %.0298.i ; 2 uses
  %.1292.ph.i = select i1 %i.agq, double %i.afv, double %.0291.ph.i
  %i.ags = fcmp oge double %.1299.ph.i, %i.zz
  %i.agt = select i1 %i.agq, i1 %i.ags, i1 false
  br i1 %i.agt, label %.critedge2.outer.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.agq, label %bb.gi, label %.thread475.i

bb.gi:                                            ; preds = %bb.gh
  %i.agu = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.agv = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.agw = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.agu, double noundef %i.afv, ptr noundef %i.agv, ptr noundef %i.agw) #13
  %i.agx = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.agy = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.agz = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aha = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.ahb = tail call i32 %i.agx(ptr noundef %i.agy, ptr noundef %i.agz, ptr noundef %i.aha) #13, !inline_history !93
  %i.ahc = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.ahd = add nsw i64 %i.ahc, 1
  store i64 %i.ahd, ptr %i.ey, align 8, !tbaa !99
  %.not335.i = icmp eq i32 %i.ahb, 0
  br i1 %.not335.i, label %bb.gj, label %KINLinSolDrv.exit.thread.thread

bb.gj:                                            ; preds = %bb.gi
  %i.ahe = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ahf = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.ahg = tail call double @N_VWL2Norm(ptr noundef %i.ahe, ptr noundef %i.ahf) #13 ; 3 uses
  %i.ahh = fmul double %i.ahg, 5.000000e-01
  %i.ahi = fmul double %i.ahg, %i.ahh
  %i.ahj = load i64, ptr %i.ho, align 8, !tbaa !136
  %i.ahk = add nsw i64 %i.ahj, 1
  store i64 %i.ahk, ptr %i.ho, align 8, !tbaa !136
  br label %.thread475.i

.thread475.i:                                     ; preds = %bb.gj, %bb.gh, %bb.gd, %.thread.i191, %.loopexit.thread.i, %.loopexit.i195
  %.4231 = phi double [ %i.ahg, %bb.gj ], [ %i.agj, %bb.gh ], [ %.7234, %bb.gd ], [ %.5232, %.thread.i191 ], [ %.10237.lcssa, %.loopexit.i195 ], [ %i.zj, %.loopexit.thread.i ]
  %.4226 = phi double [ %i.ahi, %bb.gj ], [ %i.agl, %bb.gh ], [ %.7, %bb.gd ], [ %.5, %.thread.i191 ], [ %.10.lcssa, %.loopexit.i195 ], [ %i.zl, %.loopexit.thread.i ]
  %.3306.i = phi double [ %i.afv, %bb.gj ], [ %i.afv, %bb.gh ], [ %.2305.i, %bb.gd ], [ 1.000000e+00, %.thread.i191 ], [ %.0303.i.lcssa, %.loopexit.i195 ], [ 1.000000e+00, %.loopexit.thread.i ] ; 2 uses
  %.4.i = phi i32 [ %i.agg, %bb.gj ], [ %i.agg, %bb.gh ], [ %.2.i, %bb.gd ], [ %.0287.lcssa452462.i, %.thread.i191 ], [ %.0287.i.lcssa, %.loopexit.i195 ], [ 0, %.loopexit.thread.i ]
  %i.ahl = sext i32 %.4.i to i64
  %i.ahm = load i64, ptr %i.hp, align 8, !tbaa !137
  %i.ahn = add nsw i64 %i.ahm, %i.ahl
  store i64 %i.ahn, ptr %i.hp, align 8, !tbaa !137
  %i.aho = load <2 x double>, ptr %i.hg, align 8, !tbaa !27
  %i.ahp = insertelement <2 x double> poison, double %.3306.i, i64 0
  %i.ahq = shufflevector <2 x double> %i.ahp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahr = fmul <2 x double> %i.ahq, %i.aho
  %i.ahs = insertelement <2 x double> poison, double %.2309389.lcssa.i, i64 0
  %i.aht = shufflevector <2 x double> %i.ahs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahu = fmul <2 x double> %i.aht, %i.ahr
  store <2 x double> %i.ahu, ptr %i.hg, align 8, !tbaa !27
  %i.ahv = fmul double %.2312388.lcssa.i, %.3306.i
  %i.ahw = load double, ptr %i.ek, align 8, !tbaa !110
  %i.ahx = fmul double %i.ahw, f0x3FEFAE147AE147AE
  %i.ahy = fcmp ogt double %i.ahv, %i.ahx
  %spec.select282 = zext i1 %i.ahy to i32
  br label %bb.gk

bb.gk:                                            ; preds = %.thread475.i, %.loopexit425.i, %bb.fi
  %.12239 = phi double [ %.11238, %.loopexit425.i ], [ %.1228556, %bb.fi ], [ %.4231, %.thread475.i ]
  %.12 = phi double [ %.11, %.loopexit425.i ], [ %.1223558, %bb.fi ], [ %.4226, %.thread475.i ]
  %.4221 = phi i32 [ 0, %.loopexit425.i ], [ 0, %bb.fi ], [ %spec.select282, %.thread475.i ]
  %.0313.i = phi i32 [ -997, %.loopexit425.i ], [ -997, %bb.fi ], [ 0, %.thread475.i ]
  %i.ahz = load i64, ptr %i.ho, align 8, !tbaa !136
  %i.aia = load i64, ptr %i.hq, align 8, !tbaa !25
  %i.aib = icmp sgt i64 %i.ahz, %i.aia
  br i1 %i.aib, label %.thread261, label %KINFullNewton.exit.jt2

KINFullNewton.exit:                               ; preds = %bb.dp
  %i.aic = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.aid = and i32 %i.aic, -2
  %switch158 = icmp eq i32 %i.aid, 2
  br i1 %switch158, label %KINStop.exit.thread, label %bb.gl

KINFullNewton.exit.jt2:                           ; preds = %bb.es, %bb.eh, %bb.gk, %bb.dq
  %.2229.jt2 = phi double [ %.2229559, %bb.dq ], [ %.12239, %bb.gk ], [ %.1228555, %bb.eh ], [ %i.ud, %bb.es ]
  %.2224.jt2 = phi double [ %.2224561, %bb.dq ], [ %.12, %bb.gk ], [ %.1223557, %bb.eh ], [ %i.uf, %bb.es ] ; 2 uses
  %.2219.jt2 = phi i32 [ %.2219564, %bb.dq ], [ %.4221, %bb.gk ], [ 0, %bb.eh ], [ %spec.select, %bb.es ]
  %.2.jt2 = phi i32 [ -998, %bb.dq ], [ 0, %bb.gk ], [ 0, %bb.eh ], [ 0, %bb.es ]
  %.0.jt2 = phi i32 [ 0, %bb.dq ], [ %.0313.i, %bb.gk ], [ -997, %bb.eh ], [ 0, %bb.es ]
  %i.aie = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.aif = and i32 %i.aie, -2
  %switch158.jt2 = icmp eq i32 %i.aif, 2
  br i1 %switch158.jt2, label %KINStop.exit.thread.jt2, label %bb.gl

KINFullNewton.exit.jt4294966297:                  ; preds = %bb.dr
  %i.aig = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.aih = and i32 %i.aig, -2
  %switch158.jt4294966297 = icmp eq i32 %i.aih, 2
  br i1 %switch158.jt4294966297, label %KINStop.exit.thread.jt4294966297, label %bb.gl

bb.gl:                                            ; preds = %KINFullNewton.exit.jt2, %KINFullNewton.exit.jt4294966297, %KINFullNewton.exit
  %i.aii = phi i32 [ %i.aie, %KINFullNewton.exit.jt2 ], [ %i.aig, %KINFullNewton.exit.jt4294966297 ], [ %i.aic, %KINFullNewton.exit ] ; 2 uses
  %.0566 = phi i32 [ %.0.jt2, %KINFullNewton.exit.jt2 ], [ 0, %KINFullNewton.exit.jt4294966297 ], [ 0, %KINFullNewton.exit ]
  %.2219564 = phi i32 [ %.2219.jt2, %KINFullNewton.exit.jt2 ], [ %.0217, %KINFullNewton.exit.jt4294966297 ], [ %.0217, %KINFullNewton.exit ] ; 6 uses
  %.2224561 = phi double [ %.2224.jt2, %KINFullNewton.exit.jt2 ], [ %.0222, %KINFullNewton.exit.jt4294966297 ], [ %.0222, %KINFullNewton.exit ] ; 14 uses
  %.2229559 = phi double [ %.2229.jt2, %KINFullNewton.exit.jt2 ], [ %.0227, %KINFullNewton.exit.jt4294966297 ], [ %.0227, %KINFullNewton.exit ] ; 10 uses
  %i.aij = load i32, ptr %i.hr, align 8, !tbaa !112
  %.not154 = icmp eq i32 %i.aij, 0
  br i1 %.not154, label %bb.gq, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aik = load i32, ptr %i.hs, align 8, !tbaa !28
  switch i32 %i.aik, label %._crit_edge.i198 [
    i32 1, label %bb.gn
    i32 2, label %bb.gp
  ]

._crit_edge.i198:                                 ; preds = %bb.gm
  %.pre.i200 = load double, ptr %i.hu, align 8, !tbaa !113
  br label %KINForcingTerm.exit

bb.gn:                                            ; preds = %bb.gm
  %i.ail = load double, ptr %i.gb, align 8, !tbaa !104 ; 3 uses
  %i.aim = load double, ptr %i.hg, align 8, !tbaa !130
  %i.ain = fmul double %i.aim, 2.000000e+00
  %i.aio = tail call double @llvm.fmuladd.f64(double %i.ail, double %i.ail, double %i.ain)
  %i.aip = load double, ptr %i.hf, align 8, !tbaa !131 ; 2 uses
  %i.aiq = tail call double @llvm.fmuladd.f64(double %i.aip, double %i.aip, double %i.aio) ; 2 uses
  %i.air = fcmp ugt double %i.aiq, 0.000000e+00
  br i1 %i.air, label %bb.go, label %.thread.i197

bb.go:                                            ; preds = %bb.gn
  %i.ais = tail call double @sqrt(double noundef %i.aiq) #13
  br label %.thread.i197

.thread.i197:                                     ; preds = %bb.go, %bb.gn
  %i.ait = phi double [ %i.ais, %bb.go ], [ 0.000000e+00, %bb.gn ]
  %i.aiu = load double, ptr %i.hu, align 8, !tbaa !113
  %i.aiv = load double, ptr %i.hv, align 8, !tbaa !29
  %i.aiw = tail call double @pow(double noundef %i.aiu, double noundef %i.aiv) #13
  %i.aix = fsub double %.2229559, %i.ait
  %i.aiy = tail call double @llvm.fabs.f64(double %i.aix)
  %i.aiz = fdiv double %i.aiy, %i.ail
  br label %KINForcingTerm.exit

bb.gp:                                            ; preds = %bb.gm
  %i.aja = load double, ptr %i.ht, align 8, !tbaa !132 ; 2 uses
  %i.ajb = load double, ptr %i.hu, align 8, !tbaa !113
  %i.ajc = load double, ptr %i.hv, align 8, !tbaa !29 ; 2 uses
  %i.ajd = tail call double @pow(double noundef %i.ajb, double noundef %i.ajc) #13
  %i.aje = fmul double %i.aja, %i.ajd
  %i.ajf = load double, ptr %i.gb, align 8, !tbaa !104
  %i.ajg = fdiv double %.2229559, %i.ajf
  %i.ajh = tail call double @pow(double noundef %i.ajg, double noundef %i.ajc) #13
  %i.aji = fmul double %i.aja, %i.ajh
  br label %KINForcingTerm.exit

KINForcingTerm.exit:                              ; preds = %._crit_edge.i198, %.thread.i197, %bb.gp
  %i.ajj = phi double [ %i.aji, %bb.gp ], [ %.pre.i200, %._crit_edge.i198 ], [ %i.aiz, %.thread.i197 ] ; 2 uses
  %.1.i196 = phi double [ %i.aje, %bb.gp ], [ 5.000000e-01, %._crit_edge.i198 ], [ %i.aiw, %.thread.i197 ] ; 2 uses
  %i.ajk = fcmp olt double %.1.i196, 1.000000e-01
  %spec.store.select.i = select i1 %i.ajk, double 0.000000e+00, double %.1.i196 ; 2 uses
  %i.ajl = fcmp ogt double %i.ajj, %spec.store.select.i
  %.spec.store.select.i = select i1 %i.ajl, double %i.ajj, double %spec.store.select.i ; 2 uses
  %i.ajm = fcmp ogt double %.spec.store.select.i, 1.000000e-04
  %i.ajn = select i1 %i.ajm, double %.spec.store.select.i, double 1.000000e-04 ; 2 uses
  %i.ajo = fcmp olt double %i.ajn, 9.000000e-01
  %i.ajp = select i1 %i.ajo, double %i.ajn, double 9.000000e-01
  store double %i.ajp, ptr %i.hu, align 8, !tbaa !113
  br label %bb.gq

bb.gq:                                            ; preds = %KINForcingTerm.exit, %bb.gl
  store double %.2229559, ptr %i.gb, align 8, !tbaa !104
  %i.ajq = icmp eq i32 %.0566, -997
  br i1 %i.ajq, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.ajr = load ptr, ptr %i.gz, align 8, !tbaa !126
  %.not84.i213 = icmp eq ptr %i.ajr, null
  br i1 %.not84.i213, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajs = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not85.i = icmp eq i32 %i.ajs, 0
  br i1 %.not85.i, label %bb.dq, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.ajt = icmp eq i32 %i.aii, 0
  br i1 %i.ajt, label %KINStop.exit.thread.jt2, label %KINStop.exit.thread.jt4294967291

bb.gu:                                            ; preds = %bb.gq
  %i.aju = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ajv = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.ajw = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VProd(ptr noundef %i.ajv, ptr noundef %i.aju, ptr noundef %i.ajw) #13
  %i.ajx = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.ajy = tail call double @N_VMaxNorm(ptr noundef %i.ajx) #13
  %i.ajz = load double, ptr %i.fn, align 8, !tbaa !105
  %i.aka = fcmp ugt double %i.ajy, %i.ajz
  br i1 %i.aka, label %bb.gv, label %KINStop.exit.thread.jt2

bb.gv:                                            ; preds = %bb.gu
  %i.akb = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  %i.akc = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.akd = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.akc, double noundef -1.000000e+00, ptr noundef %i.akd, ptr noundef %i.akb) #13
  %i.ake = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.akf = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.akg = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VInv(ptr noundef %i.akf, ptr noundef %i.akg) #13
end_hunk_0
