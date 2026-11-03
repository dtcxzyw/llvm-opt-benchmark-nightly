Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hbond?download=true
inline.NumInlined: 2166
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z9gmx_hbondiPPc.omp_outlined:bb.a
  %i.ade = load float, ptr %i.ada, align 4, !tbaa !69, !llvm.access.group !502
  %i.adf = fsub <2 x float> %i.adb, %i.add        ; 4 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.adk = fsub float %i.adh, %i.adj              ; 4 uses
  %i.adl = icmp sgt i32 %i.yy, %i.abl             ; 2 uses
  %or.cond99.i = and i1 %i.adl, %i.aby
  br i1 %or.cond99.i, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i

_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i: ; preds = %bb.bz
  br i1 %i.abt, label %bb.ca, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i

_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i: ; preds = %bb.bz
  br i1 %i.abt, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i

bb.ca:                                            ; preds = %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i
  br i1 %i.yf, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.acn
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.ado = icmp eq i32 %i.adn, -49297
  br i1 %i.ado, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.adp = sext i32 %i.adn to i64
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !61, !llvm.access.group !502
  %i.ads = zext i32 %i.adr to i64
  %.not.i.i112.i = icmp eq i64 %indvars.iv1634, %i.ads
  br i1 %.not.i.i112.i, label %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i

_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i: ; preds = %bb.cc
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %i.zc
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !61, !llvm.access.group !502
  %i.ady = zext i32 %i.adx to i64
  %.not.i12.i116.i = icmp eq i64 %indvars.iv1634, %i.ady
  %i.adz = icmp ne i32 %i.adu, -49297
  %i.aea = and i1 %i.adz, %.not.i12.i116.i
  br label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i

_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i: ; preds = %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i, %bb.cc, %bb.cb, %bb.ca, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i
  %.0.i = phi i1 [ false, %bb.ca ], [ false, %bb.cb ], [ false, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i ], [ %i.aea, %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i ], [ false, %bb.cc ]
  %i.aeb = load float, ptr %i.aa, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.aec = fneg float %i.aeb
  %i.aed = load float, ptr %i.y, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.aee = fneg float %i.aed
  %i.aef = load float, ptr %9, align 4, !tbaa !69, !llvm.access.group !502 ; 3 uses
  %i.aeg = fneg float %i.aef
  br label %.preheader.i.i285

.preheader.i.i285:                                ; preds = %.preheader.i.i285.backedge, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i
  %.sroa.24.1.i = phi float [ %i.adk, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.sroa.24.1.i.be, %.preheader.i.i285.backedge ]
  %i.aeh = phi float [ %i.adk, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.be2360, %.preheader.i.i285.backedge ] ; 3 uses
  %i.aei = phi <2 x float> [ %i.adf, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.be2361, %.preheader.i.i285.backedge ] ; 2 uses
  %i.aej = phi <2 x float> [ %i.adf, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.be2362, %.preheader.i.i285.backedge ]
  %i.aek = fcmp uge float %i.aeh, %i.aec          ; 2 uses
  br i1 %i.aek, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i.i285
  %i.ael = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.aem = fadd <2 x float> %i.aei, %i.ael        ; 2 uses
  %i.aen = load float, ptr %i.z, align 4, !tbaa !69, !llvm.access.group !502
  %i.aeo = fadd float %i.aeh, %i.aen              ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.preheader.i.i285
  %.sroa.24.2.i = phi float [ %.sroa.24.1.i, %.preheader.i.i285 ], [ %i.aeo, %bb.cd ]
  %i.aep = phi float [ %i.aeh, %.preheader.i.i285 ], [ %i.aeo, %bb.cd ] ; 3 uses
  %i.aeq = phi <2 x float> [ %i.aei, %.preheader.i.i285 ], [ %i.aem, %bb.cd ] ; 2 uses
  %i.aer = phi <2 x float> [ %i.aej, %.preheader.i.i285 ], [ %i.aem, %bb.cd ]
  %i.aes = fcmp ult float %i.aep, %i.aeb
  br i1 %i.aes, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aet = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.aeu = fsub <2 x float> %i.aeq, %i.aet        ; 2 uses
  %i.aev = load float, ptr %i.z, align 4, !tbaa !69, !llvm.access.group !502
  %i.aew = fsub float %i.aep, %i.aev              ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.sroa.24.3.i = phi float [ %.sroa.24.2.i, %bb.ce ], [ %i.aew, %bb.cf ]
  %i.aex = phi float [ %i.aep, %bb.ce ], [ %i.aew, %bb.cf ] ; 2 uses
  %.3.i.i286 = phi i1 [ %i.aek, %bb.ce ], [ false, %bb.cf ]
  %i.aey = phi <2 x float> [ %i.aeq, %bb.ce ], [ %i.aeu, %bb.cf ] ; 3 uses
  %i.aez = phi <2 x float> [ %i.aer, %bb.ce ], [ %i.aeu, %bb.cf ]
  %i.afa = extractelement <2 x float> %i.aey, i64 1
  %i.afb = fcmp olt float %i.afa, %i.aee
  br i1 %i.afb, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.afc = load <2 x float>, ptr %i.u, align 4, !tbaa !69
  %i.afd = fadd <2 x float> %i.aey, %i.afc        ; 2 uses
  %i.afe = load float, ptr %i.af, align 4, !tbaa !69, !llvm.access.group !502
  %i.aff = fadd float %i.aex, %i.afe              ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.24.4.i = phi float [ %i.aff, %bb.ch ], [ %.sroa.24.3.i, %bb.cg ]
  %i.afg = phi float [ %i.aff, %bb.ch ], [ %i.aex, %bb.cg ] ; 2 uses
  %.2.1.i.i287 = phi i1 [ false, %bb.ch ], [ %.3.i.i286, %bb.cg ]
  %i.afh = phi <2 x float> [ %i.afd, %bb.ch ], [ %i.aey, %bb.cg ] ; 3 uses
  %i.afi = phi <2 x float> [ %i.afd, %bb.ch ], [ %i.aez, %bb.cg ]
  %i.afj = extractelement <2 x float> %i.afh, i64 1
  %i.afk = fcmp ult float %i.afj, %i.aed
  br i1 %i.afk, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.afl = load <2 x float>, ptr %i.u, align 4, !tbaa !69
  %i.afm = fsub <2 x float> %i.afh, %i.afl        ; 2 uses
  %i.afn = load float, ptr %i.af, align 4, !tbaa !69, !llvm.access.group !502
  %i.afo = fsub float %i.afg, %i.afn              ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.24.5.i = phi float [ %.sroa.24.4.i, %bb.ci ], [ %i.afo, %bb.cj ] ; 2 uses
  %i.afp = phi float [ %i.afg, %bb.ci ], [ %i.afo, %bb.cj ] ; 3 uses
  %.3.1.i.i288 = phi i1 [ %.2.1.i.i287, %bb.ci ], [ false, %bb.cj ]
  %i.afq = phi <2 x float> [ %i.afh, %bb.ci ], [ %i.afm, %bb.cj ] ; 4 uses
  %i.afr = phi <2 x float> [ %i.afi, %bb.ci ], [ %i.afm, %bb.cj ] ; 2 uses
  %i.afs = extractelement <2 x float> %i.afq, i64 0 ; 2 uses
  %i.aft = fcmp olt float %i.afs, %i.aeg
  br i1 %i.aft, label %.thread190.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.afu = fcmp ult float %i.afs, %i.aef
  br i1 %i.afu, label %.loopexit.i.i292, label %..split.i_crit_edge.i

..split.i_crit_edge.i:                            ; preds = %bb.cl
  %i.afv = load <2 x float>, ptr %3, align 4, !tbaa !69
  %.pre281.i = load float, ptr %i.ah, align 4, !tbaa !69, !llvm.access.group !502
  br label %.split.i.i289

.thread190.i:                                     ; preds = %bb.ck
  %i.afw = load <2 x float>, ptr %3, align 4, !tbaa !69 ; 2 uses
  %i.afx = load float, ptr %i.ag, align 4, !tbaa !69, !llvm.access.group !502
  %i.afy = fadd <2 x float> %i.afq, %i.afw        ; 4 uses
  %i.afz = load float, ptr %i.ah, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.aga = fadd float %i.afp, %i.afz              ; 3 uses
  %i.agb = extractelement <2 x float> %i.afy, i64 0
  %i.agc = fcmp ult float %i.agb, %i.aef
  %i.agd = insertelement <2 x float> %i.afw, float %i.afx, i64 1
  br i1 %i.agc, label %.preheader.i.i285.backedge, label %.split.i.i289

.split.i.i289:                                    ; preds = %.thread190.i, %..split.i_crit_edge.i
  %i.age = phi float [ %i.afz, %.thread190.i ], [ %.pre281.i, %..split.i_crit_edge.i ]
  %i.agf = phi float [ %i.aga, %.thread190.i ], [ %i.afp, %..split.i_crit_edge.i ]
  %i.agg = phi <2 x float> [ %i.afy, %.thread190.i ], [ %i.afq, %..split.i_crit_edge.i ]
  %i.agh = phi <2 x float> [ %i.agd, %.thread190.i ], [ %i.afv, %..split.i_crit_edge.i ]
  %i.agi = fsub <2 x float> %i.agg, %i.agh        ; 2 uses
  %i.agj = fsub float %i.agf, %i.age              ; 2 uses
  br label %.preheader.i.i285.backedge

.loopexit.i.i292:                                 ; preds = %bb.cl
  br i1 %.3.1.i.i288, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i, label %.preheader.i.i285.backedge

.preheader.i.i285.backedge:                       ; preds = %.loopexit.i.i292, %.split.i.i289, %.thread190.i
  %.sroa.24.1.i.be = phi float [ %.sroa.24.5.i, %.loopexit.i.i292 ], [ %i.agj, %.split.i.i289 ], [ %i.aga, %.thread190.i ]
  %.be2360 = phi float [ %i.afp, %.loopexit.i.i292 ], [ %i.agj, %.split.i.i289 ], [ %i.aga, %.thread190.i ]
  %.be2361 = phi <2 x float> [ %i.afq, %.loopexit.i.i292 ], [ %i.agi, %.split.i.i289 ], [ %i.afy, %.thread190.i ]
  %.be2362 = phi <2 x float> [ %i.afr, %.loopexit.i.i292 ], [ %i.agi, %.split.i.i289 ], [ %i.afy, %.thread190.i ]
  br label %.preheader.i.i285, !llvm.loop !504

_ZL15pbc_correct_gemPfPA3_fPKf.exit.i:            ; preds = %.loopexit.i.i292, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i
  %.sroa.24.0.i = phi float [ %i.adk, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i ], [ %i.adk, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i ], [ %.sroa.24.5.i, %.loopexit.i.i292 ] ; 3 uses
  %.1.i = phi i1 [ false, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i ], [ false, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i ], [ %.0.i, %.loopexit.i.i292 ]
  %i.agk = phi <2 x float> [ %i.adf, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i ], [ %i.adf, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i ], [ %i.afr, %.loopexit.i.i292 ] ; 2 uses
  %i.agl = extractelement <2 x float> %i.agk, i64 1 ; 3 uses
  %i.agm = fmul float %i.agl, %i.agl
  %i.agn = extractelement <2 x float> %i.agk, i64 0 ; 3 uses
  %i.ago = call float @llvm.fmuladd.f32(float %i.agn, float %i.agn, float %i.agm)
  %i.agp = call noundef float @llvm.fmuladd.f32(float %.sroa.24.0.i, float %.sroa.24.0.i, float %i.ago) ; 4 uses
  br i1 %i.abw, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i
  br i1 %.1.i, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.agq = fcmp ugt float %i.agp, %i.acv
  br i1 %i.agq, label %bb.co, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405

bb.co:                                            ; preds = %bb.cn
  %i.agr = fcmp olt float %i.agp, %i.acw
  %..i = zext i1 %i.agr to i32
  br label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit

bb.cp:                                            ; preds = %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i
  %i.ags = fcmp ogt float %i.agp, %i.acv
  %or.cond101.i = and i1 %i.ags, %i.abv
  br i1 %or.cond101.i, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread, label %.preheader.i269

.preheader.i269:                                  ; preds = %bb.cp
  %i.agt = getelementptr inbounds nuw i8, ptr %i.abn, i64 232
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !70, !llvm.access.group !502
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.acg ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %.lr.ph.i271, label %._crit_edge.i270

.lr.ph.i271:                                      ; preds = %.preheader.i269
  %i.agy = getelementptr inbounds nuw i8, ptr %i.abn, i64 256
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !76, !llvm.access.group !502
  %i.aha = getelementptr inbounds nuw [16 x i8], ptr %i.agz, i64 %i.acg
  %i.ahb = fpext float %i.agn to double           ; 3 uses
  %i.ahc = call double @llvm.fmuladd.f64(double %i.ahb, double %i.ahb, double 0.000000e+00)
  %i.ahd = fpext float %i.agl to double           ; 3 uses
  %i.ahe = call double @llvm.fmuladd.f64(double %i.ahd, double %i.ahd, double %i.ahc)
  %i.ahf = fpext float %.sroa.24.0.i to double    ; 3 uses
  %i.ahg = call double @llvm.fmuladd.f64(double %i.ahf, double %i.ahf, double %i.ahe)
  %i.ahh = insertelement <2 x float> %i.adb, float %i.adc, i64 1
  %i.ahi = insertelement <2 x float> %i.add, float %i.ade, i64 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.do, %.lr.ph.i271
  %45 = phi i32 [ %i.agw, %.lr.ph.i271 ], [ %46, %bb.do ]
  %indvars.iv.i272 = phi i64 [ 0, %.lr.ph.i271 ], [ %indvars.iv.next.i277, %bb.do ] ; 2 uses
  %.089260.i = phi i8 [ 0, %.lr.ph.i271 ], [ %.2.i, %bb.do ] ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.i272
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %.phi.trans.insert.i273 = sext i32 %i.ahk to i64
  %.phi.trans.insert265.i = getelementptr inbounds [12 x i8], ptr %i.abr, i64 %.phi.trans.insert.i273 ; 6 uses
  %.pre266.i = load float, ptr %.phi.trans.insert265.i, align 4, !tbaa !69, !llvm.access.group !502
  br i1 %i.abv, label %..thread232_crit_edge.i, label %bb.cr

..thread232_crit_edge.i:                          ; preds = %bb.cq
  %.phi.trans.insert269.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert265.i, i64 4
  %.pre270.i = load float, ptr %.phi.trans.insert269.i, align 4, !tbaa !69, !llvm.access.group !502
  %.phi.trans.insert273.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert265.i, i64 8
  %.pre274.i = load float, ptr %.phi.trans.insert273.i, align 4, !tbaa !69, !llvm.access.group !502
  br label %.thread232.i

bb.cr:                                            ; preds = %bb.cq
  %i.ahl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert265.i, i64 4
  %i.ahm = load <2 x float>, ptr %.phi.trans.insert265.i, align 4, !tbaa !69, !llvm.access.group !502
  %i.ahn = load float, ptr %i.ahl, align 4, !tbaa !69, !llvm.access.group !502
  %i.aho = fsub <2 x float> %i.ahm, %i.ahi        ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert265.i, i64 8
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.ahr = fsub float %i.ahq, %i.adj              ; 3 uses
  br i1 %i.abt, label %bb.cs, label %.loopexit.i274

bb.cs:                                            ; preds = %bb.cr
  %i.ahs = load float, ptr %i.aa, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.aht = fneg float %i.ahs
  %i.ahu = load float, ptr %i.y, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.ahv = fneg float %i.ahu
  %i.ahw = load float, ptr %9, align 4, !tbaa !69, !llvm.access.group !502 ; 3 uses
  %i.ahx = fneg float %i.ahw
  br label %.preheader.i121.i

.preheader.i121.i:                                ; preds = %.preheader.i121.i.backedge, %bb.cs
  %.sroa.22.1.i = phi float [ %i.ahr, %bb.cs ], [ %.sroa.22.1.i.be, %.preheader.i121.i.backedge ]
  %i.ahy = phi float [ %i.ahr, %bb.cs ], [ %.be2353.a, %.preheader.i121.i.backedge ] ; 3 uses
  %i.ahz = phi <2 x float> [ %i.aho, %bb.cs ], [ %.be2354.a, %.preheader.i121.i.backedge ] ; 2 uses
  %i.aia = phi <2 x float> [ %i.aho, %bb.cs ], [ %.be2355, %.preheader.i121.i.backedge ]
  %i.aib = fcmp uge float %i.ahy, %i.aht          ; 2 uses
  br i1 %i.aib, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.preheader.i121.i
  %i.aic = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.aid = fadd <2 x float> %i.ahz, %i.aic        ; 2 uses
  %i.aie = load float, ptr %i.z, align 4, !tbaa !69, !llvm.access.group !502
  %i.aif = fadd float %i.ahy, %i.aie              ; 2 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.preheader.i121.i
  %.sroa.22.2.i = phi float [ %.sroa.22.1.i, %.preheader.i121.i ], [ %i.aif, %bb.ct ]
  %i.aig = phi float [ %i.ahy, %.preheader.i121.i ], [ %i.aif, %bb.ct ] ; 3 uses
  %i.aih = phi <2 x float> [ %i.ahz, %.preheader.i121.i ], [ %i.aid, %bb.ct ] ; 2 uses
  %i.aii = phi <2 x float> [ %i.aia, %.preheader.i121.i ], [ %i.aid, %bb.ct ]
  %i.aij = fcmp ult float %i.aig, %i.ahs
  br i1 %i.aij, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.aik = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.ail = fsub <2 x float> %i.aih, %i.aik        ; 2 uses
  %i.aim = load float, ptr %i.z, align 4, !tbaa !69, !llvm.access.group !502
  %i.ain = fsub float %i.aig, %i.aim              ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.22.3.i = phi float [ %.sroa.22.2.i, %bb.cu ], [ %i.ain, %bb.cv ]
  %i.aio = phi float [ %i.aig, %bb.cu ], [ %i.ain, %bb.cv ] ; 2 uses
  %.3.i129.i = phi i1 [ %i.aib, %bb.cu ], [ false, %bb.cv ]
  %i.aip = phi <2 x float> [ %i.aih, %bb.cu ], [ %i.ail, %bb.cv ] ; 3 uses
  %i.aiq = phi <2 x float> [ %i.aii, %bb.cu ], [ %i.ail, %bb.cv ]
  %i.air = extractelement <2 x float> %i.aip, i64 1
  %i.ais = fcmp olt float %i.air, %i.ahv
  br i1 %i.ais, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ait = load <2 x float>, ptr %i.u, align 4, !tbaa !69
  %i.aiu = fadd <2 x float> %i.aip, %i.ait        ; 2 uses
  %i.aiv = load float, ptr %i.af, align 4, !tbaa !69, !llvm.access.group !502
  %i.aiw = fadd float %i.aio, %i.aiv              ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.22.4.i = phi float [ %i.aiw, %bb.cx ], [ %.sroa.22.3.i, %bb.cw ]
  %i.aix = phi float [ %i.aiw, %bb.cx ], [ %i.aio, %bb.cw ] ; 2 uses
  %.2.1.i132.i = phi i1 [ false, %bb.cx ], [ %.3.i129.i, %bb.cw ]
  %i.aiy = phi <2 x float> [ %i.aiu, %bb.cx ], [ %i.aip, %bb.cw ] ; 3 uses
  %i.aiz = phi <2 x float> [ %i.aiu, %bb.cx ], [ %i.aiq, %bb.cw ]
  %i.aja = extractelement <2 x float> %i.aiy, i64 1
  %i.ajb = fcmp ult float %i.aja, %i.ahu
  br i1 %i.ajb, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ajc = load <2 x float>, ptr %i.u, align 4, !tbaa !69
  %i.ajd = fsub <2 x float> %i.aiy, %i.ajc        ; 2 uses
  %i.aje = load float, ptr %i.af, align 4, !tbaa !69, !llvm.access.group !502
  %i.ajf = fsub float %i.aix, %i.aje              ; 2 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.22.5.i = phi float [ %.sroa.22.4.i, %bb.cy ], [ %i.ajf, %bb.cz ] ; 2 uses
  %i.ajg = phi float [ %i.aix, %bb.cy ], [ %i.ajf, %bb.cz ] ; 3 uses
  %.3.1.i135.i = phi i1 [ %.2.1.i132.i, %bb.cy ], [ false, %bb.cz ]
  %i.ajh = phi <2 x float> [ %i.aiy, %bb.cy ], [ %i.ajd, %bb.cz ] ; 4 uses
  %i.aji = phi <2 x float> [ %i.aiz, %bb.cy ], [ %i.ajd, %bb.cz ] ; 2 uses
  %i.ajj = extractelement <2 x float> %i.ajh, i64 0 ; 2 uses
  %i.ajk = fcmp olt float %i.ajj, %i.ahx
  br i1 %i.ajk, label %.thread211.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ajl = fcmp ult float %i.ajj, %i.ahw
  br i1 %i.ajl, label %.loopexit.i144.i, label %..split.i139_crit_edge.i

..split.i139_crit_edge.i:                         ; preds = %bb.db
  %i.ajm = load <2 x float>, ptr %3, align 4, !tbaa !69
  %.pre264.i = load float, ptr %i.ah, align 4, !tbaa !69, !llvm.access.group !502
  br label %.split.i139.i

.thread211.i:                                     ; preds = %bb.da
  %i.ajn = load <2 x float>, ptr %3, align 4, !tbaa !69 ; 2 uses
  %i.ajo = load float, ptr %i.ag, align 4, !tbaa !69, !llvm.access.group !502
  %i.ajp = fadd <2 x float> %i.ajh, %i.ajn        ; 4 uses
  %i.ajq = load float, ptr %i.ah, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.ajr = fadd float %i.ajg, %i.ajq              ; 3 uses
  %i.ajs = extractelement <2 x float> %i.ajp, i64 0
  %i.ajt = fcmp ult float %i.ajs, %i.ahw
  %i.aju = insertelement <2 x float> %i.ajn, float %i.ajo, i64 1
  br i1 %i.ajt, label %.preheader.i121.i.backedge, label %.split.i139.i

.split.i139.i:                                    ; preds = %.thread211.i, %..split.i139_crit_edge.i
  %i.ajv = phi float [ %i.ajq, %.thread211.i ], [ %.pre264.i, %..split.i139_crit_edge.i ]
  %i.ajw = phi float [ %i.ajr, %.thread211.i ], [ %i.ajg, %..split.i139_crit_edge.i ]
  %i.ajx = phi <2 x float> [ %i.ajp, %.thread211.i ], [ %i.ajh, %..split.i139_crit_edge.i ]
  %i.ajy = phi <2 x float> [ %i.aju, %.thread211.i ], [ %i.ajm, %..split.i139_crit_edge.i ]
  %i.ajz = fsub <2 x float> %i.ajx, %i.ajy        ; 2 uses
  %i.aka = fsub float %i.ajw, %i.ajv              ; 2 uses
  br label %.preheader.i121.i.backedge

.loopexit.i144.i:                                 ; preds = %bb.db
  br i1 %.3.1.i135.i, label %.loopexit.i274, label %.preheader.i121.i.backedge

.preheader.i121.i.backedge:                       ; preds = %.loopexit.i144.i, %.split.i139.i, %.thread211.i
  %.sroa.22.1.i.be = phi float [ %.sroa.22.5.i, %.loopexit.i144.i ], [ %i.aka, %.split.i139.i ], [ %i.ajr, %.thread211.i ]
  %.be2353.a = phi float [ %i.ajg, %.loopexit.i144.i ], [ %i.aka, %.split.i139.i ], [ %i.ajr, %.thread211.i ]
  %.be2354.a = phi <2 x float> [ %i.ajh, %.loopexit.i144.i ], [ %i.ajz, %.split.i139.i ], [ %i.ajp, %.thread211.i ]
  %.be2355 = phi <2 x float> [ %i.aji, %.loopexit.i144.i ], [ %i.ajz, %.split.i139.i ], [ %i.ajp, %.thread211.i ]
  br label %.preheader.i121.i, !llvm.loop !504

.loopexit.i274:                                   ; preds = %.loopexit.i144.i, %bb.cr
  %.sroa.22.0.i = phi float [ %i.ahr, %bb.cr ], [ %.sroa.22.5.i, %.loopexit.i144.i ] ; 2 uses
  %i.akb = phi <2 x float> [ %i.aho, %bb.cr ], [ %i.aji, %.loopexit.i144.i ] ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.akb, %i.akb
  %i.akc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.akd = extractelement <2 x float> %i.akb, i64 0 ; 2 uses
  %i.ake = call float @llvm.fmuladd.f32(float %i.akd, float %i.akd, float %i.akc)
  %i.akf = call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.i, float %.sroa.22.0.i, float %i.ake) ; 2 uses
  %i.akg = fcmp ugt float %i.akf, %i.acv
  br i1 %i.akg, label %bb.do, label %.thread232.i

.thread232.i:                                     ; preds = %.loopexit.i274, %..thread232_crit_edge.i
  %i.akh = phi float [ %i.ahq, %.loopexit.i274 ], [ %.pre274.i, %..thread232_crit_edge.i ]
  %i.aki = phi float [ %i.ahn, %.loopexit.i274 ], [ %.pre270.i, %..thread232_crit_edge.i ]
  %i.akj = phi float [ %i.akf, %.loopexit.i274 ], [ %i.agp, %..thread232_crit_edge.i ]
  %i.akk = insertelement <2 x float> poison, float %.pre266.i, i64 0
  %i.akl = insertelement <2 x float> %i.akk, float %i.aki, i64 1
  %i.akm = fsub <2 x float> %i.ahh, %i.akl        ; 3 uses
  %i.akn = fsub float %i.adh, %i.akh              ; 3 uses
  br i1 %i.abt, label %bb.dc, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit177.i

bb.dc:                                            ; preds = %.thread232.i
  %i.ako = load float, ptr %i.aa, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.akp = fneg float %i.ako
  %i.akq = load float, ptr %i.y, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.akr = fneg float %i.akq
  %i.aks = load float, ptr %9, align 4, !tbaa !69, !llvm.access.group !502 ; 3 uses
  %i.akt = fneg float %i.aks
  br label %.preheader.i151.i

.preheader.i151.i:                                ; preds = %.preheader.i151.i.backedge, %bb.dc
  %.sroa.20.1.i = phi float [ %i.akn, %bb.dc ], [ %.sroa.20.1.i.be, %.preheader.i151.i.backedge ]
  %i.aku = phi float [ %i.akn, %bb.dc ], [ %.be, %.preheader.i151.i.backedge ] ; 3 uses
  %i.akv = phi <2 x float> [ %i.akm, %bb.dc ], [ %.be2351, %.preheader.i151.i.backedge ] ; 2 uses
  %i.akw = phi <2 x float> [ %i.akm, %bb.dc ], [ %.be2352, %.preheader.i151.i.backedge ]
  %i.akx = fcmp uge float %i.aku, %i.akp          ; 2 uses
  br i1 %i.akx, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.preheader.i151.i
  %i.aky = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.akz = fadd <2 x float> %i.akv, %i.aky        ; 2 uses
  %i.ala = load float, ptr %i.z, align 4, !tbaa !69, !llvm.access.group !502
  %i.alb = fadd float %i.aku, %i.ala              ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.preheader.i151.i
  %.sroa.20.2.i = phi float [ %.sroa.20.1.i, %.preheader.i151.i ], [ %i.alb, %bb.dd ]
  %i.alc = phi float [ %i.aku, %.preheader.i151.i ], [ %i.alb, %bb.dd ] ; 3 uses
  %i.ald = phi <2 x float> [ %i.akv, %.preheader.i151.i ], [ %i.akz, %bb.dd ] ; 2 uses
  %i.ale = phi <2 x float> [ %i.akw, %.preheader.i151.i ], [ %i.akz, %bb.dd ]
  %i.alf = fcmp ult float %i.alc, %i.ako
  br i1 %i.alf, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.alg = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.alh = fsub <2 x float> %i.ald, %i.alg        ; 2 uses
  %i.ali = load float, ptr %i.z, align 4, !tbaa !69, !llvm.access.group !502
  %i.alj = fsub float %i.alc, %i.ali              ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.sroa.20.3.i = phi float [ %.sroa.20.2.i, %bb.de ], [ %i.alj, %bb.df ]
  %i.alk = phi float [ %i.alc, %bb.de ], [ %i.alj, %bb.df ] ; 2 uses
  %.3.i159.i = phi i1 [ %i.akx, %bb.de ], [ false, %bb.df ]
  %i.all = phi <2 x float> [ %i.ald, %bb.de ], [ %i.alh, %bb.df ] ; 3 uses
  %i.alm = phi <2 x float> [ %i.ale, %bb.de ], [ %i.alh, %bb.df ]
  %i.aln = extractelement <2 x float> %i.all, i64 1
  %i.alo = fcmp olt float %i.aln, %i.akr
  br i1 %i.alo, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.alp = load <2 x float>, ptr %i.u, align 4, !tbaa !69
  %i.alq = fadd <2 x float> %i.all, %i.alp        ; 2 uses
  %i.alr = load float, ptr %i.af, align 4, !tbaa !69, !llvm.access.group !502
  %i.als = fadd float %i.alk, %i.alr              ; 2 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.sroa.20.4.i = phi float [ %i.als, %bb.dh ], [ %.sroa.20.3.i, %bb.dg ]
  %i.alt = phi float [ %i.als, %bb.dh ], [ %i.alk, %bb.dg ] ; 2 uses
  %.2.1.i162.i = phi i1 [ false, %bb.dh ], [ %.3.i159.i, %bb.dg ]
  %i.alu = phi <2 x float> [ %i.alq, %bb.dh ], [ %i.all, %bb.dg ] ; 3 uses
  %i.alv = phi <2 x float> [ %i.alq, %bb.dh ], [ %i.alm, %bb.dg ]
  %i.alw = extractelement <2 x float> %i.alu, i64 1
  %i.alx = fcmp ult float %i.alw, %i.akq
  br i1 %i.alx, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aly = load <2 x float>, ptr %i.u, align 4, !tbaa !69
  %i.alz = fsub <2 x float> %i.alu, %i.aly        ; 2 uses
  %i.ama = load float, ptr %i.af, align 4, !tbaa !69, !llvm.access.group !502
  %i.amb = fsub float %i.alt, %i.ama              ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.sroa.20.5.i = phi float [ %.sroa.20.4.i, %bb.di ], [ %i.amb, %bb.dj ] ; 2 uses
  %i.amc = phi float [ %i.alt, %bb.di ], [ %i.amb, %bb.dj ] ; 3 uses
  %.3.1.i165.i = phi i1 [ %.2.1.i162.i, %bb.di ], [ false, %bb.dj ]
  %i.amd = phi <2 x float> [ %i.alu, %bb.di ], [ %i.alz, %bb.dj ] ; 4 uses
  %i.ame = phi <2 x float> [ %i.alv, %bb.di ], [ %i.alz, %bb.dj ] ; 2 uses
  %i.amf = extractelement <2 x float> %i.amd, i64 0 ; 2 uses
  %i.amg = fcmp olt float %i.amf, %i.akt
  br i1 %i.amg, label %.thread236.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.amh = fcmp ult float %i.amf, %i.aks
  br i1 %i.amh, label %.loopexit.i174.i, label %..split.i169_crit_edge.i

..split.i169_crit_edge.i:                         ; preds = %bb.dl
  %i.ami = load <2 x float>, ptr %3, align 4, !tbaa !69
  %.pre278.i = load float, ptr %i.ah, align 4, !tbaa !69, !llvm.access.group !502
  br label %.split.i169.i

.thread236.i:                                     ; preds = %bb.dk
  %i.amj = load <2 x float>, ptr %3, align 4, !tbaa !69 ; 2 uses
  %i.amk = load float, ptr %i.ag, align 4, !tbaa !69, !llvm.access.group !502
  %i.aml = fadd <2 x float> %i.amd, %i.amj        ; 4 uses
  %i.amm = load float, ptr %i.ah, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.amn = fadd float %i.amc, %i.amm              ; 3 uses
  %i.amo = extractelement <2 x float> %i.aml, i64 0
  %i.amp = fcmp ult float %i.amo, %i.aks
  %i.amq = insertelement <2 x float> %i.amj, float %i.amk, i64 1
  br i1 %i.amp, label %.preheader.i151.i.backedge, label %.split.i169.i

.split.i169.i:                                    ; preds = %.thread236.i, %..split.i169_crit_edge.i
  %i.amr = phi float [ %i.amm, %.thread236.i ], [ %.pre278.i, %..split.i169_crit_edge.i ]
  %i.ams = phi float [ %i.amn, %.thread236.i ], [ %i.amc, %..split.i169_crit_edge.i ]
  %i.amt = phi <2 x float> [ %i.aml, %.thread236.i ], [ %i.amd, %..split.i169_crit_edge.i ]
  %i.amu = phi <2 x float> [ %i.amq, %.thread236.i ], [ %i.ami, %..split.i169_crit_edge.i ]
  %i.amv = fsub <2 x float> %i.amt, %i.amu        ; 2 uses
  %i.amw = fsub float %i.ams, %i.amr              ; 2 uses
  br label %.preheader.i151.i.backedge

.loopexit.i174.i:                                 ; preds = %bb.dl
  br i1 %.3.1.i165.i, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit177.i, label %.preheader.i151.i.backedge

.preheader.i151.i.backedge:                       ; preds = %.loopexit.i174.i, %.split.i169.i, %.thread236.i
  %.sroa.20.1.i.be = phi float [ %.sroa.20.5.i, %.loopexit.i174.i ], [ %i.amw, %.split.i169.i ], [ %i.amn, %.thread236.i ]
  %.be = phi float [ %i.amc, %.loopexit.i174.i ], [ %i.amw, %.split.i169.i ], [ %i.amn, %.thread236.i ]
  %.be2351 = phi <2 x float> [ %i.amd, %.loopexit.i174.i ], [ %i.amv, %.split.i169.i ], [ %i.aml, %.thread236.i ]
  %.be2352 = phi <2 x float> [ %i.ame, %.loopexit.i174.i ], [ %i.amv, %.split.i169.i ], [ %i.aml, %.thread236.i ]
  br label %.preheader.i151.i, !llvm.loop !504

_ZL15pbc_correct_gemPfPA3_fPKf.exit177.i:         ; preds = %.loopexit.i174.i, %.thread232.i
  %.sroa.20.0.i = phi float [ %i.akn, %.thread232.i ], [ %.sroa.20.5.i, %.loopexit.i174.i ]
  %i.amx = phi <2 x float> [ %i.akm, %.thread232.i ], [ %i.ame, %.loopexit.i174.i ] ; 2 uses
  %spec.select103.i = select i1 %i.abv, i8 %.089260.i, i8 1
  %i.amy = extractelement <2 x float> %i.amx, i64 0
  %i.amz = fpext float %i.amy to double           ; 3 uses
  %i.ana = call double @llvm.fmuladd.f64(double %i.amz, double %i.amz, double 0.000000e+00)
  %i.anb = extractelement <2 x float> %i.amx, i64 1
  %i.anc = fpext float %i.anb to double           ; 3 uses
  %i.and = call double @llvm.fmuladd.f64(double %i.anc, double %i.anc, double %i.ana)
  %i.ane = fpext float %.sroa.20.0.i to double    ; 3 uses
  %i.anf = call double @llvm.fmuladd.f64(double %i.ane, double %i.ane, double %i.and)
  %i.ang = fmul double %i.ahg, %i.anf             ; 2 uses
  %i.anh = fcmp ogt double %i.ang, 0.000000e+00
  br i1 %i.anh, label %bb.dm, label %_ZL9cos_anglePKfS0_.exit.i

bb.dm:                                            ; preds = %_ZL15pbc_correct_gemPfPA3_fPKf.exit177.i
  %i.ani = call double @llvm.fmuladd.f64(double %i.amz, double %i.ahb, double 0.000000e+00)
  %i.anj = call double @llvm.fmuladd.f64(double %i.anc, double %i.ahd, double %i.ani)
  %i.ank = call double @llvm.fmuladd.f64(double %i.ane, double %i.ahf, double %i.anj)
  %i.anl = call double @sqrt(double noundef %i.ang) #24, !llvm.access.group !502
  %i.anm = fdiv double 1.000000e+00, %i.anl
  %i.ann = fmul double %i.ank, %i.anm
  %i.ano = fptrunc double %i.ann to float
  br label %_ZL9cos_anglePKfS0_.exit.i

_ZL9cos_anglePKfS0_.exit.i:                       ; preds = %bb.dm, %_ZL15pbc_correct_gemPfPA3_fPKf.exit177.i
  %.026.i.i = phi float [ %i.ano, %bb.dm ], [ 1.000000e+00, %_ZL15pbc_correct_gemPfPA3_fPKf.exit177.i ] ; 3 uses
  %i.anp = fcmp ogt float %.026.i.i, 1.000000e+00
  %i.anq = fcmp olt float %.026.i.i, -1.000000e+00
  %..026.i.i = select i1 %i.anq, float -1.000000e+00, float %.026.i.i
  %.027.i.i = select i1 %i.anp, float 1.000000e+00, float %..026.i.i ; 2 uses
  %i.anr = fcmp ult float %.027.i.i, %i.abq
  br i1 %i.anr, label %_ZL9cos_anglePKfS0_.exit._crit_edge.i, label %bb.dn

_ZL9cos_anglePKfS0_.exit._crit_edge.i:            ; preds = %_ZL9cos_anglePKfS0_.exit.i
  %.pre275.i = load i32, ptr %i.agv, align 4, !tbaa !61, !llvm.access.group !502
  br label %bb.do

bb.dn:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.i
  %i.ans = call noundef float @sqrtf(float noundef %i.akj) #24, !llvm.access.group !502
  %i.ant = call noundef float @acosf(float noundef %.027.i.i) #24, !llvm.access.group !502
  br label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405

bb.do:                                            ; preds = %_ZL9cos_anglePKfS0_.exit._crit_edge.i, %.loopexit.i274
  %46 = phi i32 [ %.pre275.i, %_ZL9cos_anglePKfS0_.exit._crit_edge.i ], [ %45, %.loopexit.i274 ] ; 2 uses
  %.2.i = phi i8 [ %spec.select103.i, %_ZL9cos_anglePKfS0_.exit._crit_edge.i ], [ %.089260.i, %.loopexit.i274 ] ; 2 uses
  %indvars.iv.next.i277 = add nuw nsw i64 %indvars.iv.i272, 1 ; 2 uses
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %indvars.iv.next.i277, %47
  br i1 %48, label %bb.cq, label %._crit_edge.loopexit.i278, !llvm.loop !505

._crit_edge.loopexit.i278:                        ; preds = %bb.do
  %i.anu = zext nneg i8 %.2.i to i32
  br label %._crit_edge.i270

._crit_edge.i270:                                 ; preds = %._crit_edge.loopexit.i278, %.preheader.i269
  %.089.lcssa.i = phi i32 [ 0, %.preheader.i269 ], [ %i.anu, %._crit_edge.loopexit.i278 ]
  br i1 %i.abv, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit

_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit: ; preds = %._crit_edge.i270, %bb.co
  %.sroa.0.12 = phi i32 [ -49297, %._crit_edge.i270 ], [ %.sroa.0.101278, %bb.co ] ; 2 uses
  %.093.i = phi i32 [ %.089.lcssa.i, %._crit_edge.i270 ], [ %..i, %bb.co ]
  %.not243 = icmp eq i32 %.093.i, 0
  br i1 %.not243, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405

_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405: ; preds = %._crit_edge.i270, %bb.dn, %bb.cn, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit
  %i.anv = phi i1 [ true, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit ], [ false, %bb.dn ], [ false, %bb.cn ], [ true, %._crit_edge.i270 ] ; 3 uses
  %spec.select2095 = phi i64 [ 40, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit ], [ 32, %bb.dn ], [ 32, %bb.cn ], [ 40, %._crit_edge.i270 ]
  %i.anw = phi i1 [ false, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit ], [ true, %bb.dn ], [ true, %bb.cn ], [ false, %._crit_edge.i270 ] ; 2 uses
  %.sroa.0.12413 = phi i32 [ %.sroa.0.12, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit ], [ %i.ahk, %bb.dn ], [ %.sroa.0.101278, %bb.cn ], [ -49297, %._crit_edge.i270 ] ; 6 uses
  %.sroa.0390.12412 = phi float [ %.sroa.0390.101277, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit ], [ %i.ans, %bb.dn ], [ %.sroa.0390.101277, %bb.cn ], [ %.sroa.0390.101277, %._crit_edge.i270 ] ; 6 uses
  %.sroa.0388.13411 = phi float [ %.sroa.0388.101276, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit ], [ %i.ant, %bb.dn ], [ %.sroa.0388.101276, %bb.cn ], [ %.sroa.0388.101276, %._crit_edge.i270 ] ; 2 uses
  %i.anx = load i32, ptr %5, align 4, !tbaa !61, !llvm.access.group !502 ; 8 uses
  %i.any = call i32 @__kmpc_global_thread_num(ptr nonnull @1), !llvm.access.group !502 ; 2 uses
  %i.anz = load ptr, ptr %i.aca, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.zc
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !61, !llvm.access.group !502 ; 6 uses
  %i.aoc = icmp eq i32 %i.aob, -49297
  br i1 %i.aoc, label %bb.dp, label %bb.dt

bb.dp:                                            ; preds = %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24, !llvm.access.group !502
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %.noexc314 unwind label %bb.ge

.noexc314:                                        ; preds = %bb.dp
  %i.aod = add nsw i32 %i.yy, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 452, ptr noundef nonnull @.str.248, i32 noundef %i.aod) #31
          to label %bb.dq unwind label %bb.dr, !llvm.access.group !502

bb.dq:                                            ; preds = %.noexc314
  unreachable

bb.dr:                                            ; preds = %.noexc314
  %i.aoe = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  %i.aof = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !97, !llvm.access.group !502 ; 2 uses
  %.not.i.i.i383 = icmp eq ptr %i.aog, null
  br i1 %.not.i.i.i383, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i384, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aof, ptr noundef nonnull %i.aog) #24, !llvm.access.group !502
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i384

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i384: ; preds = %bb.ds, %bb.dr
  %i.aoh = load ptr, ptr %33, align 8, !tbaa !21, !llvm.access.group !502 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.aoj = icmp eq ptr %i.aoh, %i.aoi
  br i1 %i.aoj, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i385: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i384
  %i.aok = load i64, ptr %i.aoi, align 8, !tbaa !22, !llvm.access.group !502
  %i.aol = add i64 %i.aok, 1
  call void @_ZdlPvm(ptr noundef %i.aoh, i64 noundef %i.aol) #32, !llvm.access.group !502
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit387

_ZNSt10filesystem7__cxx114pathD2Ev.exit387:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !llvm.access.group !502
  br label %.body320

bb.dt:                                            ; preds = %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread405
  %i.aom = sext i32 %i.aob to i64                 ; 2 uses
  %i.aon = load ptr, ptr %i.acf, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %i.aom
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !61, !llvm.access.group !502
  %i.aoq = zext i32 %i.aop to i64
  %.not.i = icmp eq i64 %indvars.iv1634, %i.aoq
  br i1 %.not.i, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24, !llvm.access.group !502
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %.noexc315 unwind label %bb.ge

.noexc315:                                        ; preds = %bb.du
  %i.aor = load ptr, ptr %i.acf, align 8, !tbaa !70, !llvm.access.group !502
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aom
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !61, !llvm.access.group !502
  %i.aou = add nsw i32 %i.yy, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 456, ptr noundef nonnull @.str.249, i32 noundef range(i32 0, 2) %i.yh, i32 noundef %i.aot, i32 noundef %i.aou) #31
          to label %bb.dv unwind label %bb.dw, !llvm.access.group !502

bb.dv:                                            ; preds = %.noexc315
  unreachable

bb.dw:                                            ; preds = %.noexc315
  %i.aov = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  %i.aow = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !97, !llvm.access.group !502 ; 2 uses
  %.not.i.i.i378 = icmp eq ptr %i.aox, null
  br i1 %.not.i.i.i378, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i379, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aow, ptr noundef nonnull %i.aox) #24, !llvm.access.group !502
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i379

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i379: ; preds = %bb.dx, %bb.dw
  %i.aoy = load ptr, ptr %34, align 8, !tbaa !21, !llvm.access.group !502 ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.apa = icmp eq ptr %i.aoy, %i.aoz
  br i1 %i.apa, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i379
  %i.apb = load i64, ptr %i.aoz, align 8, !tbaa !22, !llvm.access.group !502
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoy, i64 noundef %i.apc) #32, !llvm.access.group !502
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit382

_ZNSt10filesystem7__cxx114pathD2Ev.exit382:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24, !llvm.access.group !502
  br label %.body320

bb.dy:                                            ; preds = %bb.dt
  %i.apd = load ptr, ptr %i.acm, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.acn
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !61, !llvm.access.group !502 ; 6 uses
  %i.apg = icmp eq i32 %i.apf, -49297
  br i1 %i.apg, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24, !llvm.access.group !502
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %.noexc316 unwind label %bb.ge

.noexc316:                                        ; preds = %bb.dz
  %i.aph = add nsw i32 %i.abl, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef 460, ptr noundef nonnull @.str.250, i32 noundef %i.aph) #31
          to label %bb.ea unwind label %bb.eb, !llvm.access.group !502

bb.ea:                                            ; preds = %.noexc316
  unreachable

bb.eb:                                            ; preds = %.noexc316
  %i.api = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  %i.apj = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !97, !llvm.access.group !502 ; 2 uses
  %.not.i.i.i373 = icmp eq ptr %i.apk, null
  br i1 %.not.i.i.i373, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.apj, ptr noundef nonnull %i.apk) #24, !llvm.access.group !502
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374: ; preds = %bb.ec, %bb.eb
  %i.apl = load ptr, ptr %35, align 8, !tbaa !21, !llvm.access.group !502 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.apn = icmp eq ptr %i.apl, %i.apm
  br i1 %i.apn, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i375: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374
  %i.apo = load i64, ptr %i.apm, align 8, !tbaa !22, !llvm.access.group !502
  %i.app = add i64 %i.apo, 1
  call void @_ZdlPvm(ptr noundef %i.apl, i64 noundef %i.app) #32, !llvm.access.group !502
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit377

_ZNSt10filesystem7__cxx114pathD2Ev.exit377:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !llvm.access.group !502
  br label %.body320

bb.ed:                                            ; preds = %bb.dy
  %i.apq = sext i32 %i.apf to i64                 ; 2 uses
  %i.apr = load ptr, ptr %i.acl, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.apq
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !61, !llvm.access.group !502
  %.not167.i = icmp eq i32 %.0210, %i.apt
  br i1 %.not167.i, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24, !llvm.access.group !502
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 1 dereferenceable(65) @.str.134, i8 noundef zeroext 2)
          to label %.noexc317 unwind label %bb.ge

.noexc317:                                        ; preds = %bb.ee
  %i.apu = load ptr, ptr %i.acl, align 8, !tbaa !70, !llvm.access.group !502
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %i.apu, i64 %i.apq
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !61, !llvm.access.group !502
  %i.apx = add nsw i32 %i.abl, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 464, ptr noundef nonnull @.str.251, i32 noundef range(i32 0, 2) %.0210, i32 noundef %i.apw, i32 noundef %i.apx) #31
          to label %bb.ef unwind label %bb.eg, !llvm.access.group !502

bb.ef:                                            ; preds = %.noexc317
  unreachable

bb.eg:                                            ; preds = %.noexc317
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt5arrayIiLm7EESaIS1_EE17_M_default_appendEm:bb.a

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false), !tbaa.struct !548
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !547

_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !191
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorISt5arrayIiLm7EESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #31
  unreachable

_ZNKSt6vectorISt5arrayIiLm7EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 329406144173384850) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 28
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt5arrayIiLm7EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 4 dereferenceable(28) %i.z, i64 28, i1 false), !tbaa.struct !548
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !547

_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorISt5arrayIiLm7EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorISt5arrayIiLm7EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorISt5arrayIiLm7EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorISt5arrayIiLm7EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm7EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #32
  br label %_ZNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorISt5arrayIiLm7EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw [28 x i8], ptr %i.z, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !191
  %i.ak = getelementptr inbounds nuw [28 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt5arrayIiLm7EEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !550
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !549

_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !192
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #31
  unreachable

_ZNKSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 768614336404564650) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 12
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, i8 0, i64 12, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !550
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !549

_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE13_M_deallocateEPS3_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #32
  br label %_ZNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE13_M_deallocateEPS3_m.exit38

_ZNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE13_M_deallocateEPS3_m.exit38: ; preds = %_ZNSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !192
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE13_M_deallocateEPS3_m.exit38, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3gmx17getProgramContextEv() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #24

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare void @_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, float noundef, float noundef, i32 noundef) local_unnamed_addr #6

declare void @_Z10cross_corriPfS_S_(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA13_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(13) %1, i8 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.b, ptr %i.a, align 8, !tbaa !19
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !21
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.f, ptr %i.c, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.h, ptr %i.g, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !23
  %i.k = load ptr, ptr %0, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !69
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !63
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #31
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !69
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !69
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #32
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !65
  br label %bb.h

end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !21
  %i.z = load i64, ptr %i.t, align 8, !tbaa !22
  store i64 %i.z, ptr %i.r, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !23
  store ptr %i.t, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.ab, align 8, !tbaa !23
  store i8 0, ptr %i.t, align 8, !tbaa !22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !569
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !570 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23, !alias.scope !570 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !571
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !569
  %i.al = load i64, ptr %i.af, align 8, !tbaa !22, !alias.scope !570
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !22, !alias.scope !569
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !23, !alias.scope !570
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !23, !alias.scope !569
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !570
  store i64 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !570
  store i8 0, ptr %i.af, align 8, !tbaa !22, !alias.scope !570
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !565

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !17, !alias.scope !572
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !573 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23, !alias.scope !573 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !574
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !572
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !22, !alias.scope !573
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !22, !alias.scope !572
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !23, !alias.scope !573
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !23, !alias.scope !572
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !573
  store i64 0, ptr %i.bc, align 8, !tbaa !23, !alias.scope !573
  store i8 0, ptr %i.au, align 8, !tbaa !22, !alias.scope !573
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !565

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !190
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !188
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !189
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !190
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_gmx_hbond.cpp() #28 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 16), ptr @_ZL11hxtypenamesB5cxx11, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 8), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 19), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 32), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 48), ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 40), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 53), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 64), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 80), ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 72), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 85), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 96), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 112), ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 104), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 117), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 128), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 136), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 149), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 160), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 176), ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 168), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 181), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 192), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 208), ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 200), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 213), align 1, !tbaa !22
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm7EED2Ev, ptr nonnull @_ZL11hxtypenamesB5cxx11, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { convergent nounwind }
attributes #24 = { nounwind }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { cold nounwind }
attributes #36 = { cold }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !81}
!1 = distinct !{!1, !81}
!2 = distinct !{!2, !81}
!3 = distinct !{!3, !81}
!4 = distinct !{!4, !81}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !10, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!20, !18, i64 8}
!24 = !{!"bool", !10, i64 0}
!25 = !{!"p1 int", !14, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"p1 _ZTSSt5arrayIiLm4EE", !14, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorISt5arrayIiLm4EESaIS1_EE", !33, i64 0}
!35 = !{!"p1 float", !14, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIfSaIfEE", !38, i64 0}
!40 = !{!"p1 _ZTSN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS1_3EEE", !14, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE", !43, i64 0}
!45 = !{!"p1 _ZTSSt5arrayIiLm7EE", !14, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorISt5arrayIiLm7EESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTS8t_donors", !29, i64 0, !29, i64 24, !29, i64 48, !29, i64 72, !34, i64 96, !34, i64 120}
!51 = !{!"_ZTS11t_acceptors", !29, i64 0, !29, i64 24, !29, i64 48}
!52 = !{!"any p2 pointer", !14, i64 0}
!53 = !{!"any p3 pointer", !52, i64 0}
!54 = !{!"_ZTS16HydrogenBondData", !24, i64 0, !24, i64 1, !11, i64 4, !11, i64 8, !29, i64 16, !29, i64 40, !34, i64 64, !39, i64 88, !44, i64 112, !49, i64 136, !50, i64 160, !51, i64 304, !11, i64 376, !11, i64 380, !53, i64 384}
!55 = !{!54, !24, i64 0}
!56 = !{!54, !24, i64 1}
!57 = !{!54, !11, i64 4}
!58 = !{!54, !11, i64 8}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!11, !11, i64 0}
!62 = !{!54, !53, i64 384}
!63 = !{!36, !35, i64 8}
!64 = !{!36, !35, i64 0}
!65 = !{!36, !35, i64 16}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = !{!"float", !10, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!26, !25, i64 0}
!71 = !{!26, !25, i64 16}
!72 = !{!46, !45, i64 0}
!73 = !{!46, !45, i64 16}
!74 = !{!41, !40, i64 0}
!75 = !{!41, !40, i64 16}
!76 = !{!31, !30, i64 0}
!77 = !{!31, !30, i64 16}
!78 = !{!26, !25, i64 8}
!79 = !{!31, !30, i64 8}
!80 = !{i64 0, i64 16, !22}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!"branch_weights", i32 4, i32 12}
!86 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!24, !24, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"p2 int", !52, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!15, !15, i64 0}
!94 = !{!"p1 _ZTS16gmx_output_env_t", !14, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"p2 omnipotent char", !52, i64 0}
!99 = !{!"p1 _ZTS9t_iparams", !14, i64 0}
!100 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !10, i64 0}
!101 = !{!"_ZTS6t_idef", !11, i64 0, !11, i64 4, !14, i64 8, !99, i64 16, !68, i64 24, !99, i64 32, !99, i64 40, !100, i64 48, !11, i64 2328}
!102 = !{!"p1 _ZTS6t_atom", !14, i64 0}
!103 = !{!"p3 omnipotent char", !53, i64 0}
!104 = !{!"p1 _ZTS9t_resinfo", !14, i64 0}
!105 = !{!"p1 _ZTS9t_pdbinfo", !14, i64 0}
!106 = !{!"_ZTS7t_atoms", !11, i64 0, !102, i64 8, !103, i64 16, !103, i64 24, !103, i64 32, !11, i64 40, !104, i64 48, !105, i64 56, !24, i64 64, !24, i64 65, !24, i64 66, !24, i64 67, !24, i64 68}
!107 = !{!"_ZTS7t_block", !11, i64 0, !25, i64 8, !11, i64 16}
!108 = !{!"p1 _ZTS8t_symbuf", !14, i64 0}
!109 = !{!"_ZTS8t_symtab", !11, i64 0, !108, i64 8}
!110 = !{!"_ZTS10t_topology", !98, i64 0, !101, i64 8, !106, i64 2344, !107, i64 2416, !24, i64 2440, !109, i64 2448}
!111 = !{!110, !11, i64 2344}
!112 = !{!25, !25, i64 0}
!113 = !{!110, !103, i64 2360}
!114 = !{!98, !98, i64 0}
!115 = !{!52, !52, i64 0}
!116 = !{!14, !14, i64 0}
!117 = !{!"double", !10, i64 0}
!118 = !{!"p1 _ZTSSt6vectorIS_I16HydrogenGridCellSaIS0_EESaIS2_EE", !14, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_I16HydrogenGridCellSaIS1_EESaIS3_EESaIS5_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!119, !118, i64 8}
!121 = !{!119, !118, i64 0}
!122 = !{!119, !118, i64 16}
!123 = !{!"p1 _ZTSSt6vectorI16HydrogenGridCellSaIS0_EE", !14, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseISt6vectorI16HydrogenGridCellSaIS1_EESaIS3_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!124, !123, i64 16}
!126 = !{!124, !123, i64 0}
!127 = !{!124, !123, i64 8}
!128 = !{!"p1 _ZTS16HydrogenGridCell", !14, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseI16HydrogenGridCellSaIS0_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!129, !128, i64 8}
!131 = !{!129, !128, i64 0}
!132 = !{!129, !128, i64 16}
!133 = !{!"p1 _ZTS16HydrogenBondData", !14, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseI16HydrogenBondDataSaIS0_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!134, !133, i64 16}
!136 = !{!134, !133, i64 0}
!137 = !{!134, !133, i64 8}
!138 = !{!30, !30, i64 0}
!139 = !{!35, !35, i64 0}
!140 = !{!40, !40, i64 0}
!141 = !{!45, !45, i64 0}
!142 = !{!"p1 _ZTS11t_trxstatus", !14, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!54, !11, i64 376}
!145 = !{!54, !11, i64 380}
!146 = !{!"_ZTS7t_hbond", !10, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !91, i64 32, !91, i64 40}
!147 = !{!146, !11, i64 16}
!148 = !{!146, !11, i64 20}
!149 = !{!146, !91, i64 32}
end_hunk_2
