Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@KINSol:bb.a
  %i.abw = shufflevector <2 x double> %i.abv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abx = fsub <2 x double> %i.abu, %i.abw
  %i.aby = insertelement <2 x double> poison, double %.0294.i381, i64 0
  %i.abz = insertelement <2 x double> %i.aby, double %.0303.i380, i64 1 ; 3 uses
  %i.aca = fneg <2 x double> %i.abz               ; 2 uses
  %i.acb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aca, <2 x double> %i.abn, <2 x double> %i.abx) ; 3 uses
  %i.acc = fmul <2 x double> %i.abz, %i.abz       ; 2 uses
  %i.acd = fdiv <2 x double> splat (double 1.000000e+00), %i.acc ; 2 uses
  %i.ace = insertelement <2 x double> poison, double %.0303.i380, i64 0
  %i.acf = shufflevector <2 x double> %i.ace, <2 x double> %i.aca, <2 x i32> <i32 0, i32 2>
  %i.acg = fdiv <2 x double> %i.acf, %i.acc       ; 2 uses
  %i.ach = shufflevector <2 x double> %i.acd, <2 x double> %i.acg, <2 x i32> <i32 0, i32 2>
  %i.aci = fneg <2 x double> %i.acb
  %i.acj = shufflevector <2 x double> %i.aci, <2 x double> %i.acb, <2 x i32> <i32 0, i32 2>
  %i.ack = fmul <2 x double> %i.ach, %i.acj
  %i.acl = shufflevector <2 x double> %i.acd, <2 x double> %i.acg, <2 x i32> <i32 1, i32 3>
  %i.acm = shufflevector <2 x double> %i.acb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.acn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acl, <2 x double> %i.acm, <2 x double> %i.ack) ; 2 uses
  %i.aco = fsub double %.0303.i380, %.0294.i381
  %i.acp = fdiv double 1.000000e+00, %i.aco       ; 2 uses
  %i.acq = extractelement <2 x double> %i.acn, i64 0
  %i.acr = fmul double %i.acp, %i.acq             ; 2 uses
  %i.acs = extractelement <2 x double> %i.acn, i64 1
  %i.act = fmul double %i.acp, %i.acs             ; 4 uses
  %i.acu = fmul double %i.acr, 3.000000e+00       ; 2 uses
  %i.acv = fmul double %i.acu, %i.aai
  %i.acw = tail call double @llvm.fmuladd.f64(double %i.act, double %i.act, double %i.acv) ; 2 uses
  %i.acx = tail call double @llvm.fabs.f64(double %i.acr)
  %i.acy = load double, ptr %i.hn, align 8, !tbaa !19
  %i.acz = fcmp olt double %i.acx, %i.acy
  br i1 %i.acz, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph
  %i.ada = fmul double %i.act, 2.000000e+00
  %i.adb = fdiv double %i.aai, %i.ada
  br label %bb.fz

bb.fw:                                            ; preds = %.lr.ph
  %i.adc = fcmp ugt double %i.acw, 0.000000e+00
  br i1 %i.adc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.add = tail call double @sqrt(double noundef %i.acw) #13
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ade = phi double [ %i.add, %bb.fx ], [ 0.000000e+00, %bb.fw ]
  %i.adf = fsub double %i.ade, %i.act
  %i.adg = fdiv double %i.adf, %i.acu
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fv
  %.0296.i = phi double [ %i.adg, %bb.fy ], [ %i.adb, %bb.fv ] ; 2 uses
  %i.adh = fmul double %.0303.i380, 5.000000e-01  ; 2 uses
  %i.adi = fcmp ogt double %.0296.i, %i.adh
  %.1297.i = select i1 %i.adi, double %i.adh, double %.0296.i ; 2 uses
  %i.adj = fmul double %.0303.i380, 1.000000e-01  ; 2 uses
  %i.adk = fcmp ogt double %i.adj, %.1297.i
  %i.adl = select i1 %i.adk, double %i.adj, double %.1297.i ; 5 uses
  %i.adm = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.adn = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.ado = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.adm, double noundef %i.adl, ptr noundef %i.adn, ptr noundef %i.ado) #13
  %i.adp = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.adq = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.adr = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ads = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.adt = tail call i32 %i.adp(ptr noundef %i.adq, ptr noundef %i.adr, ptr noundef %i.ads) #13, !inline_history !93
  %i.adu = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.adv = add nsw i64 %i.adu, 1
  store i64 %i.adv, ptr %i.ey, align 8, !tbaa !99
  %.not332.i = icmp eq i32 %i.adt, 0
  br i1 %.not332.i, label %bb.ga, label %KINLinSolDrv.exit.thread.thread

bb.ga:                                            ; preds = %bb.fz
  %i.adw = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.adx = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.ady = tail call double @N_VWL2Norm(ptr noundef %i.adw, ptr noundef %i.adx) #13 ; 4 uses
  %i.adz = fmul double %i.ady, 5.000000e-01
  %i.aea = fmul double %i.ady, %i.adz             ; 4 uses
  %i.aeb = fcmp olt double %i.adl, %i.aag
  br i1 %i.aeb, label %.loopexit425.i, label %.peel.next.i194, !llvm.loop !94

.loopexit425.i:                                   ; preds = %bb.ga, %bb.fu
  %.11238 = phi double [ %i.abf, %bb.fu ], [ %i.ady, %bb.ga ]
  %.11 = phi double [ %i.abh, %bb.fu ], [ %i.aea, %bb.ga ]
  %i.aec = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.aed = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aec, ptr noundef %i.aed) #13
  br label %bb.gk

.loopexit.i195:                                   ; preds = %.peel.next.i194, %.peel.next.i194.preheader
  %.10237.lcssa = phi double [ %i.abf, %.peel.next.i194.preheader ], [ %i.ady, %.peel.next.i194 ] ; 3 uses
  %.10.lcssa = phi double [ %i.abh, %.peel.next.i194.preheader ], [ %i.aea, %.peel.next.i194 ] ; 4 uses
  %.0303.i.lcssa = phi double [ %i.aas, %.peel.next.i194.preheader ], [ %i.adl, %.peel.next.i194 ] ; 4 uses
  %.0294.i.lcssa = phi double [ 1.000000e+00, %.peel.next.i194.preheader ], [ %.0303.i380, %.peel.next.i194 ]
  %.0287.i.lcssa = phi i32 [ 1, %.peel.next.i194.preheader ], [ %i.abo, %.peel.next.i194 ] ; 3 uses
  %.lcssa301 = phi double [ %i.abj, %.peel.next.i194.preheader ], [ %i.abp, %.peel.next.i194 ]
  %.lcssa298 = phi double [ %i.abk, %.peel.next.i194.preheader ], [ %i.abq, %.peel.next.i194 ]
  %i.aee = fmul double %i.zu, 9.000000e-01        ; 3 uses
  %i.aef = tail call double @llvm.fmuladd.f64(double %i.aee, double %.0303.i.lcssa, double %.lcssa301)
  %i.aeg = fcmp olt double %.10.lcssa, %i.aef
  br i1 %i.aeg, label %bb.gb, label %.thread475.i

.loopexit.thread.i:                               ; preds = %.peel.begin.i190
  %i.aeh = fmul double %i.zu, 9.000000e-01        ; 2 uses
  %i.aei = fadd double %i.aeh, %i.aaj
  %i.aej = fcmp olt double %i.zr, %i.aei
  br i1 %i.aej, label %.thread.i191, label %.thread475.i

bb.gb:                                            ; preds = %.loopexit.i195
  %i.aek = fcmp oeq double %.0303.i.lcssa, 1.000000e+00
  br i1 %i.aek, label %.thread.i191, label %.critedge.i

.thread.i191:                                     ; preds = %bb.gb, %.loopexit.thread.i
  %.5232 = phi double [ %.10237.lcssa, %bb.gb ], [ %i.zp, %.loopexit.thread.i ]
  %.5 = phi double [ %.10.lcssa, %bb.gb ], [ %i.zr, %.loopexit.thread.i ]
  %.0287.lcssa452462.i = phi i32 [ %.0287.i.lcssa, %bb.gb ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.ael = phi double [ %i.aee, %bb.gb ], [ %i.aeh, %.loopexit.thread.i ] ; 2 uses
  %i.aem = load double, ptr %i.ek, align 8, !tbaa !110
  %i.aen = extractelement <2 x double> %i.zm, i64 0
  %i.aeo = fcmp olt double %i.aen, %i.aem
  br i1 %i.aeo, label %.preheader.i.preheader, label %.thread475.i

.preheader.i.preheader:                           ; preds = %.thread.i191
  %i.aep = insertelement <2 x double> poison, double %i.aah, i64 0
  %i.aeq = insertelement <2 x double> %i.aep, double %i.ael, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.gc
  %.1304.i = phi double [ %i.aer, %bb.gc ], [ 1.000000e+00, %.preheader.i.preheader ] ; 2 uses
  %.1288.i = phi i32 [ %i.afe, %bb.gc ], [ %.0287.lcssa452462.i, %.preheader.i.preheader ]
  %i.aer = fmul double %.1304.i, 2.000000e+00     ; 3 uses
  %i.aes = fcmp uge double %i.aer, %.2302390.lcssa.i ; 2 uses
  %i.aet = select i1 %i.aes, double %.2302390.lcssa.i, double %i.aer ; 3 uses
  %i.aeu = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.aev = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.aew = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aeu, double noundef %i.aet, ptr noundef %i.aev, ptr noundef %i.aew) #13
  %i.aex = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.aey = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.aez = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.afa = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.afb = tail call i32 %i.aex(ptr noundef %i.aey, ptr noundef %i.aez, ptr noundef %i.afa) #13, !inline_history !93
  %i.afc = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.afd = add nsw i64 %i.afc, 1
  store i64 %i.afd, ptr %i.ey, align 8, !tbaa !99
  %.not333.i = icmp eq i32 %i.afb, 0
  br i1 %.not333.i, label %bb.gc, label %KINLinSolDrv.exit.thread.thread

bb.gc:                                            ; preds = %.preheader.i
  %i.afe = add nuw nsw i32 %.1288.i, 1            ; 2 uses
  %i.aff = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.afg = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.afh = tail call double @N_VWL2Norm(ptr noundef %i.aff, ptr noundef %i.afg) #13 ; 3 uses
  %i.afi = fmul double %i.afh, 5.000000e-01
  %i.afj = fmul double %i.afh, %i.afi             ; 3 uses
  %i.afk = load double, ptr %i.ge, align 8, !tbaa !116
  %i.afl = insertelement <2 x double> poison, double %i.aet, i64 0
  %i.afm = shufflevector <2 x double> %i.afl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afn = insertelement <2 x double> poison, double %i.afk, i64 0
  %i.afo = shufflevector <2 x double> %i.afn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeq, <2 x double> %i.afm, <2 x double> %i.afo) ; 2 uses
  %i.afq = extractelement <2 x double> %i.afp, i64 0 ; 2 uses
  %i.afr = fcmp ugt double %i.afj, %i.afq
  %i.afs = extractelement <2 x double> %i.afp, i64 1
  %i.aft = fcmp uge double %i.afj, %i.afs
  %or.cond.i192.not728 = or i1 %i.afr, %i.aft     ; 2 uses
  %brmerge = or i1 %or.cond.i192.not728, %i.aes
  br i1 %brmerge, label %.critedge.i.loopexit, label %.preheader.i

.critedge.i.loopexit:                             ; preds = %bb.gc
  %.mux = select i1 %or.cond.i192.not728, double %i.aet, double %.2302390.lcssa.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.gb
  %.7234 = phi double [ %.10237.lcssa, %bb.gb ], [ %i.afh, %.critedge.i.loopexit ]
  %.7 = phi double [ %.10.lcssa, %bb.gb ], [ %i.afj, %.critedge.i.loopexit ] ; 2 uses
  %i.afu = phi double [ %i.aee, %bb.gb ], [ %i.ael, %.critedge.i.loopexit ]
  %.2305.i = phi double [ %.0303.i.lcssa, %bb.gb ], [ %.mux, %.critedge.i.loopexit ] ; 6 uses
  %.1295.i = phi double [ %.0294.i.lcssa, %bb.gb ], [ %.1304.i, %.critedge.i.loopexit ] ; 3 uses
  %.0290.i = phi double [ %.lcssa298, %bb.gb ], [ %i.afq, %.critedge.i.loopexit ]
  %.2.i = phi i32 [ %.0287.i.lcssa, %bb.gb ], [ %i.afe, %.critedge.i.loopexit ] ; 2 uses
  %i.afv = fcmp olt double %.2305.i, 1.000000e+00
  br i1 %i.afv, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.critedge.i
  %i.afw = fcmp ogt double %.2305.i, 1.000000e+00
  %i.afx = fcmp ogt double %.7, %.0290.i
  %or.cond509.i = and i1 %i.afw, %i.afx
  br i1 %or.cond509.i, label %bb.ge, label %.thread475.i

bb.ge:                                            ; preds = %bb.gd, %.critedge.i
  %i.afy = fcmp olt double %.2305.i, %.1295.i
  %i.afz = select i1 %i.afy, double %.2305.i, double %.1295.i
  %i.aga = fsub double %.1295.i, %.2305.i
  %i.agb = tail call double @llvm.fabs.f64(double %i.aga)
  br label %.critedge2.outer.i

.critedge2.outer.i:                               ; preds = %bb.gg, %bb.ge
  %.0298.ph.i = phi double [ %i.agz, %bb.gg ], [ %i.agb, %bb.ge ]
  %.0291.ph.i = phi double [ %i.agd, %bb.gg ], [ %i.afz, %bb.ge ]
  %.3.ph.i = phi i32 [ %i.ago, %bb.gg ], [ %.2.i, %bb.ge ]
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.gf, %.critedge2.outer.i
  %.0298.i = phi double [ %i.agc, %bb.gf ], [ %.0298.ph.i, %.critedge2.outer.i ] ; 2 uses
  %.3.i193 = phi i32 [ %i.ago, %bb.gf ], [ %.3.ph.i, %.critedge2.outer.i ]
  %i.agc = fmul double %.0298.i, 5.000000e-01     ; 3 uses
  %i.agd = fadd double %.0291.ph.i, %i.agc        ; 7 uses
  %i.age = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.agf = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.agg = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.age, double noundef %i.agd, ptr noundef %i.agf, ptr noundef %i.agg) #13
  %i.agh = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.agi = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.agj = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.agk = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.agl = tail call i32 %i.agh(ptr noundef %i.agi, ptr noundef %i.agj, ptr noundef %i.agk) #13, !inline_history !93
  %i.agm = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.agn = add nsw i64 %i.agm, 1
  store i64 %i.agn, ptr %i.ey, align 8, !tbaa !99
  %.not334.i = icmp eq i32 %i.agl, 0
  br i1 %.not334.i, label %bb.gf, label %KINLinSolDrv.exit.thread.thread

bb.gf:                                            ; preds = %.critedge2.i
  %i.ago = add nsw i32 %.3.i193, 1                ; 4 uses
  %i.agp = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.agq = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.agr = tail call double @N_VWL2Norm(ptr noundef %i.agp, ptr noundef %i.agq) #13 ; 3 uses
  %i.ags = fmul double %i.agr, 5.000000e-01
  %i.agt = fmul double %i.agr, %i.ags             ; 3 uses
  %i.agu = load double, ptr %i.ge, align 8, !tbaa !116 ; 2 uses
  %i.agv = tail call double @llvm.fmuladd.f64(double %i.aah, double %i.agd, double %i.agu)
  %i.agw = fcmp ogt double %i.agt, %i.agv
  br i1 %i.agw, label %.critedge2.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.agx = tail call double @llvm.fmuladd.f64(double %i.afu, double %i.agd, double %i.agu)
  %i.agy = fcmp olt double %i.agt, %i.agx         ; 2 uses
  %i.agz = fsub double %.0298.i, %i.agc           ; 2 uses
  %i.aha = fcmp oge double %i.agz, %i.aag
  %i.ahb = select i1 %i.agy, i1 %i.aha, i1 false
  br i1 %i.ahb, label %.critedge2.outer.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.agy, label %bb.gi, label %.thread475.i

bb.gi:                                            ; preds = %bb.gh
  %i.ahc = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.ahd = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.ahe = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ahc, double noundef %i.agd, ptr noundef %i.ahd, ptr noundef %i.ahe) #13
  %i.ahf = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.ahg = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.ahh = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ahi = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.ahj = tail call i32 %i.ahf(ptr noundef %i.ahg, ptr noundef %i.ahh, ptr noundef %i.ahi) #13, !inline_history !93
  %i.ahk = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.ahl = add nsw i64 %i.ahk, 1
  store i64 %i.ahl, ptr %i.ey, align 8, !tbaa !99
  %.not335.i = icmp eq i32 %i.ahj, 0
  br i1 %.not335.i, label %bb.gj, label %KINLinSolDrv.exit.thread.thread

bb.gj:                                            ; preds = %bb.gi
  %i.ahm = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ahn = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.aho = tail call double @N_VWL2Norm(ptr noundef %i.ahm, ptr noundef %i.ahn) #13 ; 3 uses
  %i.ahp = fmul double %i.aho, 5.000000e-01
  %i.ahq = fmul double %i.aho, %i.ahp
  %i.ahr = load i64, ptr %i.ho, align 8, !tbaa !136
  %i.ahs = add nsw i64 %i.ahr, 1
  store i64 %i.ahs, ptr %i.ho, align 8, !tbaa !136
  br label %.thread475.i

.thread475.i:                                     ; preds = %bb.gj, %bb.gh, %bb.gd, %.thread.i191, %.loopexit.thread.i, %.loopexit.i195
  %.4231 = phi double [ %i.aho, %bb.gj ], [ %i.agr, %bb.gh ], [ %.7234, %bb.gd ], [ %.5232, %.thread.i191 ], [ %.10237.lcssa, %.loopexit.i195 ], [ %i.zp, %.loopexit.thread.i ]
  %.4226 = phi double [ %i.ahq, %bb.gj ], [ %i.agt, %bb.gh ], [ %.7, %bb.gd ], [ %.5, %.thread.i191 ], [ %.10.lcssa, %.loopexit.i195 ], [ %i.zr, %.loopexit.thread.i ]
  %.3306.i = phi double [ %i.agd, %bb.gj ], [ %i.agd, %bb.gh ], [ %.2305.i, %bb.gd ], [ 1.000000e+00, %.thread.i191 ], [ %.0303.i.lcssa, %.loopexit.i195 ], [ 1.000000e+00, %.loopexit.thread.i ] ; 2 uses
  %.4.i = phi i32 [ %i.ago, %bb.gj ], [ %i.ago, %bb.gh ], [ %.2.i, %bb.gd ], [ %.0287.lcssa452462.i, %.thread.i191 ], [ %.0287.i.lcssa, %.loopexit.i195 ], [ 0, %.loopexit.thread.i ]
  %i.aht = sext i32 %.4.i to i64
  %i.ahu = load i64, ptr %i.hp, align 8, !tbaa !137
  %i.ahv = add nsw i64 %i.ahu, %i.aht
  store i64 %i.ahv, ptr %i.hp, align 8, !tbaa !137
  %i.ahw = load <2 x double>, ptr %i.hg, align 8, !tbaa !27
  %i.ahx = insertelement <2 x double> poison, double %.3306.i, i64 0
  %i.ahy = shufflevector <2 x double> %i.ahx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahz = fmul <2 x double> %i.ahy, %i.ahw
  %i.aia = shufflevector <2 x double> %i.zm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aib = fmul <2 x double> %i.aia, %i.ahz
  store <2 x double> %i.aib, ptr %i.hg, align 8, !tbaa !27
  %i.aic = extractelement <2 x double> %i.zm, i64 0
  %i.aid = fmul double %i.aic, %.3306.i
  %i.aie = load double, ptr %i.ek, align 8, !tbaa !110
  %i.aif = fmul double %i.aie, f0x3FEFAE147AE147AE
  %i.aig = fcmp ogt double %i.aid, %i.aif
  %spec.select282 = zext i1 %i.aig to i32
  br label %bb.gk

bb.gk:                                            ; preds = %.thread475.i, %.loopexit425.i, %bb.fi
  %.12239 = phi double [ %.11238, %.loopexit425.i ], [ %.1228556, %bb.fi ], [ %.4231, %.thread475.i ]
  %.12 = phi double [ %.11, %.loopexit425.i ], [ %.1223558, %bb.fi ], [ %.4226, %.thread475.i ]
  %.4221 = phi i32 [ 0, %.loopexit425.i ], [ 0, %bb.fi ], [ %spec.select282, %.thread475.i ]
  %.0313.i = phi i32 [ -997, %.loopexit425.i ], [ -997, %bb.fi ], [ 0, %.thread475.i ]
  %i.aih = load i64, ptr %i.ho, align 8, !tbaa !136
  %i.aii = load i64, ptr %i.hq, align 8, !tbaa !25
  %i.aij = icmp sgt i64 %i.aih, %i.aii
  br i1 %i.aij, label %.thread261, label %KINFullNewton.exit.jt2

KINFullNewton.exit:                               ; preds = %bb.dp
  %i.aik = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.ail = and i32 %i.aik, -2
  %switch158 = icmp eq i32 %i.ail, 2
  br i1 %switch158, label %KINStop.exit.thread, label %bb.gl

KINFullNewton.exit.jt2:                           ; preds = %bb.es, %bb.eh, %bb.gk, %bb.dq
  %.2229.jt2 = phi double [ %.2229559, %bb.dq ], [ %.12239, %bb.gk ], [ %.1228555, %bb.eh ], [ %i.ud, %bb.es ]
  %.2224.jt2 = phi double [ %.2224561, %bb.dq ], [ %.12, %bb.gk ], [ %.1223557, %bb.eh ], [ %i.uf, %bb.es ] ; 2 uses
  %.2219.jt2 = phi i32 [ %.2219564, %bb.dq ], [ %.4221, %bb.gk ], [ 0, %bb.eh ], [ %spec.select, %bb.es ]
  %.2.jt2 = phi i32 [ -998, %bb.dq ], [ 0, %bb.gk ], [ 0, %bb.eh ], [ 0, %bb.es ]
  %.0.jt2 = phi i32 [ 0, %bb.dq ], [ %.0313.i, %bb.gk ], [ -997, %bb.eh ], [ 0, %bb.es ]
  %i.aim = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.ain = and i32 %i.aim, -2
  %switch158.jt2 = icmp eq i32 %i.ain, 2
  br i1 %switch158.jt2, label %KINStop.exit.thread.jt2, label %bb.gl

KINFullNewton.exit.jt4294966297:                  ; preds = %bb.dr
  %i.aio = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.aip = and i32 %i.aio, -2
  %switch158.jt4294966297 = icmp eq i32 %i.aip, 2
  br i1 %switch158.jt4294966297, label %KINStop.exit.thread.jt4294966297, label %bb.gl

bb.gl:                                            ; preds = %KINFullNewton.exit.jt2, %KINFullNewton.exit.jt4294966297, %KINFullNewton.exit
  %i.aiq = phi i32 [ %i.aim, %KINFullNewton.exit.jt2 ], [ %i.aio, %KINFullNewton.exit.jt4294966297 ], [ %i.aik, %KINFullNewton.exit ] ; 2 uses
  %.0566 = phi i32 [ %.0.jt2, %KINFullNewton.exit.jt2 ], [ 0, %KINFullNewton.exit.jt4294966297 ], [ 0, %KINFullNewton.exit ]
  %.2219564 = phi i32 [ %.2219.jt2, %KINFullNewton.exit.jt2 ], [ %.0217, %KINFullNewton.exit.jt4294966297 ], [ %.0217, %KINFullNewton.exit ] ; 6 uses
  %.2224561 = phi double [ %.2224.jt2, %KINFullNewton.exit.jt2 ], [ %.0222, %KINFullNewton.exit.jt4294966297 ], [ %.0222, %KINFullNewton.exit ] ; 14 uses
  %.2229559 = phi double [ %.2229.jt2, %KINFullNewton.exit.jt2 ], [ %.0227, %KINFullNewton.exit.jt4294966297 ], [ %.0227, %KINFullNewton.exit ] ; 10 uses
  %i.air = load i32, ptr %i.hr, align 8, !tbaa !112
  %.not154 = icmp eq i32 %i.air, 0
  br i1 %.not154, label %bb.gq, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ais = load i32, ptr %i.hs, align 8, !tbaa !28
  switch i32 %i.ais, label %._crit_edge.i198 [
    i32 1, label %bb.gn
    i32 2, label %bb.gp
  ]

._crit_edge.i198:                                 ; preds = %bb.gm
  %.pre.i200 = load double, ptr %i.hu, align 8, !tbaa !113
  br label %KINForcingTerm.exit

bb.gn:                                            ; preds = %bb.gm
  %i.ait = load double, ptr %i.gb, align 8, !tbaa !104 ; 3 uses
  %i.aiu = load double, ptr %i.hg, align 8, !tbaa !130
  %i.aiv = fmul double %i.aiu, 2.000000e+00
  %i.aiw = tail call double @llvm.fmuladd.f64(double %i.ait, double %i.ait, double %i.aiv)
  %i.aix = load double, ptr %i.hf, align 8, !tbaa !131 ; 2 uses
  %i.aiy = tail call double @llvm.fmuladd.f64(double %i.aix, double %i.aix, double %i.aiw) ; 2 uses
  %i.aiz = fcmp ugt double %i.aiy, 0.000000e+00
  br i1 %i.aiz, label %bb.go, label %.thread.i197

bb.go:                                            ; preds = %bb.gn
  %i.aja = tail call double @sqrt(double noundef %i.aiy) #13
  br label %.thread.i197

.thread.i197:                                     ; preds = %bb.go, %bb.gn
  %i.ajb = phi double [ %i.aja, %bb.go ], [ 0.000000e+00, %bb.gn ]
  %i.ajc = load double, ptr %i.hu, align 8, !tbaa !113
  %i.ajd = load double, ptr %i.hv, align 8, !tbaa !29
  %i.aje = tail call double @pow(double noundef %i.ajc, double noundef %i.ajd) #13
  %i.ajf = fsub double %.2229559, %i.ajb
  %i.ajg = tail call double @llvm.fabs.f64(double %i.ajf)
  %i.ajh = fdiv double %i.ajg, %i.ait
  br label %KINForcingTerm.exit

bb.gp:                                            ; preds = %bb.gm
  %i.aji = load double, ptr %i.ht, align 8, !tbaa !132 ; 2 uses
  %i.ajj = load double, ptr %i.hu, align 8, !tbaa !113
  %i.ajk = load double, ptr %i.hv, align 8, !tbaa !29 ; 2 uses
  %i.ajl = tail call double @pow(double noundef %i.ajj, double noundef %i.ajk) #13
  %i.ajm = fmul double %i.aji, %i.ajl
  %i.ajn = load double, ptr %i.gb, align 8, !tbaa !104
  %i.ajo = fdiv double %.2229559, %i.ajn
  %i.ajp = tail call double @pow(double noundef %i.ajo, double noundef %i.ajk) #13
  %i.ajq = fmul double %i.aji, %i.ajp
  br label %KINForcingTerm.exit

KINForcingTerm.exit:                              ; preds = %._crit_edge.i198, %.thread.i197, %bb.gp
  %i.ajr = phi double [ %i.ajq, %bb.gp ], [ %.pre.i200, %._crit_edge.i198 ], [ %i.ajh, %.thread.i197 ] ; 2 uses
  %.1.i196 = phi double [ %i.ajm, %bb.gp ], [ 5.000000e-01, %._crit_edge.i198 ], [ %i.aje, %.thread.i197 ] ; 2 uses
  %i.ajs = fcmp olt double %.1.i196, 1.000000e-01
  %spec.store.select.i = select i1 %i.ajs, double 0.000000e+00, double %.1.i196 ; 2 uses
  %i.ajt = fcmp ogt double %i.ajr, %spec.store.select.i
  %.spec.store.select.i = select i1 %i.ajt, double %i.ajr, double %spec.store.select.i ; 2 uses
  %i.aju = fcmp ogt double %.spec.store.select.i, 1.000000e-04
  %i.ajv = select i1 %i.aju, double %.spec.store.select.i, double 1.000000e-04 ; 2 uses
  %i.ajw = fcmp olt double %i.ajv, 9.000000e-01
  %i.ajx = select i1 %i.ajw, double %i.ajv, double 9.000000e-01
  store double %i.ajx, ptr %i.hu, align 8, !tbaa !113
  br label %bb.gq

bb.gq:                                            ; preds = %KINForcingTerm.exit, %bb.gl
  store double %.2229559, ptr %i.gb, align 8, !tbaa !104
  %i.ajy = icmp eq i32 %.0566, -997
  br i1 %i.ajy, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.ajz = load ptr, ptr %i.gz, align 8, !tbaa !126
  %.not84.i213 = icmp eq ptr %i.ajz, null
  br i1 %.not84.i213, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aka = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not85.i = icmp eq i32 %i.aka, 0
  br i1 %.not85.i, label %bb.dq, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.akb = icmp eq i32 %i.aiq, 0
  br i1 %i.akb, label %KINStop.exit.thread.jt2, label %KINStop.exit.thread.jt4294967291

bb.gu:                                            ; preds = %bb.gq
  %i.akc = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.akd = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.ake = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VProd(ptr noundef %i.akd, ptr noundef %i.akc, ptr noundef %i.ake) #13
  %i.akf = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.akg = tail call double @N_VMaxNorm(ptr noundef %i.akf) #13
  %i.akh = load double, ptr %i.fn, align 8, !tbaa !105
  %i.aki = fcmp ugt double %i.akg, %i.akh
  br i1 %i.aki, label %bb.gv, label %KINStop.exit.thread.jt2

bb.gv:                                            ; preds = %bb.gu
  %i.akj = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  %i.akk = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.akl = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.akk, double noundef -1.000000e+00, ptr noundef %i.akl, ptr noundef %i.akj) #13
  %i.akm = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.akn = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.ako = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VInv(ptr noundef %i.akn, ptr noundef %i.ako) #13
end_hunk_0
