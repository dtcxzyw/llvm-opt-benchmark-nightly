Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_traj?download=true
inline.NumInlined: 452
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_Z8gmx_trajiPPc:bb.a

._crit_edge.1.i:                                  ; preds = %.preheader.1.i, %.preheader47.1.i
  %i.aaj = phi float [ %.pre104.i, %.preheader47.1.i ], [ %i.aad, %.preheader.1.i ] ; 3 uses
  %i.aak = load float, ptr %i.yc, align 4, !tbaa !47
  %i.aal = fsub float %i.aaj, %i.aak              ; 2 uses
  %i.aam = fcmp ugt float %i.aal, %i.ya
  br i1 %i.aam, label %.preheader47.2.i, label %.preheader45.2.i

.preheader45.2.i:                                 ; preds = %._crit_edge.1.i, %.preheader45.2.i
  %i.aan = phi float [ %i.aap, %.preheader45.2.i ], [ %i.aaj, %._crit_edge.1.i ]
  %i.aao = load float, ptr %i.wc, align 4, !tbaa !47
  %i.aap = fadd float %i.aan, %i.aao              ; 4 uses
  store float %i.aap, ptr %i.yb, align 4, !tbaa !47
  %i.aaq = load float, ptr %i.yc, align 4, !tbaa !47
  %i.aar = fsub float %i.aap, %i.aaq              ; 2 uses
  %i.aas = fcmp ugt float %i.aar, %i.ya
  br i1 %i.aas, label %.preheader47.2.i, label %.preheader45.2.i, !llvm.loop !73

.preheader47.2.i:                                 ; preds = %.preheader45.2.i, %._crit_edge.1.i
  %.pre-phi108.i = phi float [ %i.aal, %._crit_edge.1.i ], [ %i.aar, %.preheader45.2.i ]
  %i.aat = phi float [ %i.aaj, %._crit_edge.1.i ], [ %i.aap, %.preheader45.2.i ]
  %i.aau = fcmp ogt float %.pre-phi108.i, %i.xs
  br i1 %i.aau, label %.preheader.2.i, label %._crit_edge.2.i

.preheader.2.i:                                   ; preds = %.preheader47.2.i, %.preheader.2.i
  %i.aav = phi float [ %i.aax, %.preheader.2.i ], [ %i.aat, %.preheader47.2.i ]
  %i.aaw = load float, ptr %i.wc, align 4, !tbaa !47
  %i.aax = fsub float %i.aav, %i.aaw              ; 3 uses
  store float %i.aax, ptr %i.yb, align 4, !tbaa !47
  %i.aay = load float, ptr %i.yc, align 4, !tbaa !47
  %i.aaz = fsub float %i.aax, %i.aay
  %i.aba = fcmp ogt float %i.aaz, %i.xs
  br i1 %i.aba, label %.preheader.2.i, label %._crit_edge.2.i, !llvm.loop !74

._crit_edge.2.i:                                  ; preds = %.preheader.2.i, %.preheader47.2.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL11remove_jumpPA3_fiS0_S0_.exit, label %.preheader49.i, !llvm.loop !75

bb.fm:                                            ; preds = %bb.fk
  %i.abb = sext i32 %i.xp to i64
  %i.abc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.91, i32 noundef 974, i64 noundef range(i64 -2147483648, 2147483648) %i.abb, i64 noundef 12)
          to label %._ZL11remove_jumpPA3_fiS0_S0_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZL11remove_jumpPA3_fiS0_S0_.exit_crit_edge:     ; preds = %bb.fm
  %.pre969 = load i32, ptr %i.wd, align 8, !tbaa !150
  br label %_ZL11remove_jumpPA3_fiS0_S0_.exit

_ZL11remove_jumpPA3_fiS0_S0_.exit:                ; preds = %._crit_edge.2.i, %._ZL11remove_jumpPA3_fiS0_S0_.exit_crit_edge
  %i.abd = phi i32 [ %.pre969, %._ZL11remove_jumpPA3_fiS0_S0_.exit_crit_edge ], [ %i.xp, %._crit_edge.2.i ] ; 3 uses
  %.1769 = phi ptr [ %i.abc, %._ZL11remove_jumpPA3_fiS0_S0_.exit_crit_edge ], [ %.0768, %._crit_edge.2.i ] ; 12 uses
  %i.abe = icmp sgt i32 %i.abd, 0
  br i1 %i.abe, label %.lr.ph840, label %.loopexit788

.lr.ph840:                                        ; preds = %_ZL11remove_jumpPA3_fiS0_S0_.exit
  %i.abf = load ptr, ptr %i.we, align 8, !tbaa !154 ; 8 uses
  %wide.trip.count932 = zext nneg i32 %i.abd to i64 ; 6 uses
  %min.iters.check1299 = icmp ult i32 %i.abd, 8
  br i1 %min.iters.check1299, label %scalar.ph1298.preheader, label %vector.memcheck1300

vector.memcheck1300:                              ; preds = %.lr.ph840
  %i.abg = mul nuw nsw i64 %wide.trip.count932, 12 ; 2 uses
  %i.abh = getelementptr i8, ptr %.1769, i64 %i.abg
  %i.abi = getelementptr i8, ptr %i.abf, i64 %i.abg
  %bound01301 = icmp ult ptr %.1769, %i.abi
  %bound11302 = icmp ult ptr %i.abf, %i.abh
  %found.conflict1303 = and i1 %bound01301, %bound11302
  br i1 %found.conflict1303, label %scalar.ph1298.preheader, label %vector.ph1304

vector.ph1304:                                    ; preds = %vector.memcheck1300
  %n.vec1305 = and i64 %wide.trip.count932, 2147483640 ; 3 uses
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1313, %vector.body1306 ] ; 3 uses
  %i.abj = getelementptr inbounds nuw [12 x i8], ptr %i.abf, i64 %index1307
  %i.abk = getelementptr inbounds nuw [12 x i8], ptr %.1769, i64 %index1307
  %wide.vec1308 = load <24 x float>, ptr %i.abj, align 4, !tbaa !47, !alias.scope !155
  store <24 x float> %wide.vec1308, ptr %i.abk, align 4, !tbaa !47, !alias.scope !156, !noalias !155
  %index.next1313 = add nuw i64 %index1307, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next1313, %n.vec1305
  br i1 %i.abl, label %middle.block1314, label %vector.body1306, !llvm.loop !79

middle.block1314:                                 ; preds = %vector.body1306
  %cmp.n1315 = icmp eq i64 %n.vec1305, %wide.trip.count932
  br i1 %cmp.n1315, label %.loopexit788, label %scalar.ph1298.preheader

scalar.ph1298.preheader:                          ; preds = %vector.memcheck1300, %.lr.ph840, %middle.block1314
  %indvars.iv929.ph = phi i64 [ 0, %vector.memcheck1300 ], [ 0, %.lr.ph840 ], [ %n.vec1305, %middle.block1314 ] ; 3 uses
  %xtraiter1363 = and i64 %wide.trip.count932, 3  ; 2 uses
  %lcmp.mod1364.not = icmp eq i64 %xtraiter1363, 0
  br i1 %lcmp.mod1364.not, label %scalar.ph1298.prol.loopexit, label %scalar.ph1298.prol

scalar.ph1298.prol:                               ; preds = %scalar.ph1298.preheader, %scalar.ph1298.prol
  %indvars.iv929.prol = phi i64 [ %indvars.iv.next930.prol, %scalar.ph1298.prol ], [ %indvars.iv929.ph, %scalar.ph1298.preheader ] ; 3 uses
  %prol.iter1365 = phi i64 [ %prol.iter1365.next, %scalar.ph1298.prol ], [ 0, %scalar.ph1298.preheader ]
  %i.abm = getelementptr inbounds nuw [12 x i8], ptr %i.abf, i64 %indvars.iv929.prol ; 3 uses
  %i.abn = getelementptr inbounds nuw [12 x i8], ptr %.1769, i64 %indvars.iv929.prol ; 3 uses
  %i.abo = load float, ptr %i.abm, align 4, !tbaa !47
  store float %i.abo, ptr %i.abn, align 4, !tbaa !47
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 4
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !47
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  store float %i.abq, ptr %i.abr, align 4, !tbaa !47
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !47
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  store float %i.abt, ptr %i.abu, align 4, !tbaa !47
  %indvars.iv.next930.prol = add nuw nsw i64 %indvars.iv929.prol, 1 ; 2 uses
  %prol.iter1365.next = add i64 %prol.iter1365, 1 ; 2 uses
  %prol.iter1365.cmp.not = icmp eq i64 %prol.iter1365.next, %xtraiter1363
  br i1 %prol.iter1365.cmp.not, label %scalar.ph1298.prol.loopexit, label %scalar.ph1298.prol, !llvm.loop !80

scalar.ph1298.prol.loopexit:                      ; preds = %scalar.ph1298.prol, %scalar.ph1298.preheader
  %indvars.iv929.unr = phi i64 [ %indvars.iv929.ph, %scalar.ph1298.preheader ], [ %indvars.iv.next930.prol, %scalar.ph1298.prol ]
  %i.abv = sub nsw i64 %indvars.iv929.ph, %wide.trip.count932
  %i.abw = icmp ugt i64 %i.abv, -4
  br i1 %i.abw, label %.loopexit788, label %scalar.ph1298

scalar.ph1298:                                    ; preds = %scalar.ph1298.prol.loopexit, %scalar.ph1298
  %indvars.iv929 = phi i64 [ %indvars.iv.next930.3, %scalar.ph1298 ], [ %indvars.iv929.unr, %scalar.ph1298.prol.loopexit ] ; 6 uses
  %i.abx = getelementptr inbounds nuw [12 x i8], ptr %i.abf, i64 %indvars.iv929 ; 3 uses
  %i.aby = getelementptr inbounds nuw [12 x i8], ptr %.1769, i64 %indvars.iv929 ; 3 uses
  %i.abz = load float, ptr %i.abx, align 4, !tbaa !47
  store float %i.abz, ptr %i.aby, align 4, !tbaa !47
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !47
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  store float %i.acb, ptr %i.acc, align 4, !tbaa !47
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !47
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  store float %i.ace, ptr %i.acf, align 4, !tbaa !47
  %indvars.iv.next930 = add nuw nsw i64 %indvars.iv929, 1 ; 2 uses
  %i.acg = getelementptr inbounds nuw [12 x i8], ptr %i.abf, i64 %indvars.iv.next930 ; 3 uses
  %i.ach = getelementptr inbounds nuw [12 x i8], ptr %.1769, i64 %indvars.iv.next930 ; 3 uses
  %i.aci = load float, ptr %i.acg, align 4, !tbaa !47
  store float %i.aci, ptr %i.ach, align 4, !tbaa !47
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !47
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  store float %i.ack, ptr %i.acl, align 4, !tbaa !47
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !47
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store float %i.acn, ptr %i.aco, align 4, !tbaa !47
  %indvars.iv.next930.1 = add nuw nsw i64 %indvars.iv929, 2 ; 2 uses
  %i.acp = getelementptr inbounds nuw [12 x i8], ptr %i.abf, i64 %indvars.iv.next930.1 ; 3 uses
  %i.acq = getelementptr inbounds nuw [12 x i8], ptr %.1769, i64 %indvars.iv.next930.1 ; 3 uses
  %i.acr = load float, ptr %i.acp, align 4, !tbaa !47
  store float %i.acr, ptr %i.acq, align 4, !tbaa !47
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.act = load float, ptr %i.acs, align 4, !tbaa !47
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  store float %i.act, ptr %i.acu, align 4, !tbaa !47
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !47
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  store float %i.acw, ptr %i.acx, align 4, !tbaa !47
  %indvars.iv.next930.2 = add nuw nsw i64 %indvars.iv929, 3 ; 2 uses
  %i.acy = getelementptr inbounds nuw [12 x i8], ptr %i.abf, i64 %indvars.iv.next930.2 ; 3 uses
  %i.acz = getelementptr inbounds nuw [12 x i8], ptr %.1769, i64 %indvars.iv.next930.2 ; 3 uses
  %i.ada = load float, ptr %i.acy, align 4, !tbaa !47
  store float %i.ada, ptr %i.acz, align 4, !tbaa !47
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !47
  %i.add = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  store float %i.adc, ptr %i.add, align 4, !tbaa !47
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !47
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store float %i.adf, ptr %i.adg, align 4, !tbaa !47
  %indvars.iv.next930.3 = add nuw nsw i64 %indvars.iv929, 4 ; 2 uses
  %exitcond933.not.3 = icmp eq i64 %indvars.iv.next930.3, %wide.trip.count932
  br i1 %exitcond933.not.3, label %.loopexit788, label %scalar.ph1298, !llvm.loop !81

.loopexit788:                                     ; preds = %scalar.ph1298.prol.loopexit, %scalar.ph1298, %middle.block1314, %bb.fl, %_ZL11remove_jumpPA3_fiS0_S0_.exit, %bb.fj
  %.2770 = phi ptr [ %.0768, %bb.fj ], [ %.1769, %_ZL11remove_jumpPA3_fiS0_S0_.exit ], [ %.0768, %bb.fl ], [ %.1769, %middle.block1314 ], [ %.1769, %scalar.ph1298 ], [ %.1769, %scalar.ph1298.prol.loopexit ]
  %i.adh = load i8, ptr %i.wa, align 8, !tbaa !153, !range !24, !noundef !25
  %i.adi = trunc nuw i8 %i.adh to i1
  %i.adj = load i8, ptr @_ZZ8gmx_trajiPPcE4bCom, align 1, !range !24
  %i.adk = trunc nuw i8 %i.adj to i1
  %or.cond36 = select i1 %i.adi, i1 %i.adk, i1 false
  %i.adl = load i8, ptr @_ZZ8gmx_trajiPPcE4bPBC, align 1, !range !24
  %i.adm = trunc nuw i8 %i.adl to i1
  %or.cond38 = select i1 %or.cond36, i1 %i.adm, i1 false
  br i1 %or.cond38, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.loopexit788
  invoke void @_Z15gmx_rmpbc_trxfrP9gmx_rmpbcP10t_trxframe(ptr noundef %.0332, ptr noundef nonnull %8)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fo:                                            ; preds = %bb.fn, %.loopexit788
  %i.adn = load i8, ptr %i.wk, align 8, !range !24
  %i.ado = trunc nuw i8 %i.adn to i1
  %or.cond41 = select i1 %i.es, i1 %i.ado, i1 false
  br i1 %or.cond41, label %bb.fp, label %_ZL12update_histoiPKiPA3_fPiPS3_f.exit

bb.fp:                                            ; preds = %bb.fo
  %i.adp = load i32, ptr %.0774, align 4, !tbaa !11 ; 5 uses
  %i.adq = load ptr, ptr %.0775, align 8, !tbaa !33 ; 6 uses
  %i.adr = load ptr, ptr %i.wl, align 8, !tbaa !157 ; 6 uses
  %i.ads = load float, ptr @_ZZ8gmx_trajiPPcE8binwidth, align 4, !tbaa !47 ; 2 uses
  %i.adt = icmp eq ptr %.0762, null
  br i1 %i.adt, label %.preheader.i571, label %.noexc577

.preheader.i571:                                  ; preds = %bb.fp
  %i.adu = icmp sgt i32 %i.adp, 0
  br i1 %i.adu, label %.lr.ph.preheader.i, label %._crit_edge.i572

.lr.ph.preheader.i:                               ; preds = %.preheader.i571
  %wide.trip.count.i573 = zext nneg i32 %i.adp to i64 ; 2 uses
  %xtraiter1366 = and i64 %wide.trip.count.i573, 3 ; 3 uses
  %i.adv = icmp ult i32 %i.adp, 4
  br i1 %i.adv, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter.a = and i64 %wide.trip.count.i573, 2147483644
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.new
  %indvars.iv.i574.a = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i575.3, %.lr.ph.i.a ] ; 5 uses
  %.04041.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %.sroa.speculated.i.3, %.lr.ph.i.a ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.a ]
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv.i574.a
  %34 = load i32, ptr %i.adw, align 4, !tbaa !11
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i8], ptr %i.adr, i64 %35 ; 3 uses
  %37 = load float, ptr %36, align 4, !tbaa !47   ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 4
  %39 = load float, ptr %38, align 4, !tbaa !47   ; 2 uses
  %40 = fmul float %39, %39
  %41 = call float @llvm.fmuladd.f32(float %37, float %37, float %40)
  %42 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %43 = load float, ptr %42, align 4, !tbaa !47   ; 2 uses
  %44 = call noundef float @llvm.fmuladd.f32(float %43, float %43, float %41)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %44) ; 2 uses
  %45 = fcmp olt float %sqrt.i.i, %.04041.i
  %.sroa.speculated.i = select i1 %45, float %.04041.i, float %sqrt.i.i ; 2 uses
  %46 = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv.i574.a
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !11
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [12 x i8], ptr %i.adr, i64 %49 ; 3 uses
  %51 = load float, ptr %50, align 4, !tbaa !47   ; 2 uses
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %53 = load float, ptr %52, align 4, !tbaa !47   ; 2 uses
  %54 = fmul float %53, %53
  %55 = call float @llvm.fmuladd.f32(float %51, float %51, float %54)
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %57 = load float, ptr %56, align 4, !tbaa !47   ; 2 uses
  %58 = call noundef float @llvm.fmuladd.f32(float %57, float %57, float %55)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %58) ; 2 uses
  %59 = fcmp olt float %sqrt.i.i.1, %.sroa.speculated.i
  %.sroa.speculated.i.1 = select i1 %59, float %.sroa.speculated.i, float %sqrt.i.i.1 ; 2 uses
  %60 = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv.i574.a
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !11
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [12 x i8], ptr %i.adr, i64 %63 ; 3 uses
  %65 = load float, ptr %64, align 4, !tbaa !47   ; 2 uses
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 4
  %67 = load float, ptr %66, align 4, !tbaa !47   ; 2 uses
  %68 = fmul float %67, %67
  %69 = call float @llvm.fmuladd.f32(float %65, float %65, float %68)
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load float, ptr %70, align 4, !tbaa !47   ; 2 uses
  %72 = call noundef float @llvm.fmuladd.f32(float %71, float %71, float %69)
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %72) ; 2 uses
  %73 = fcmp olt float %sqrt.i.i.2, %.sroa.speculated.i.1
  %.sroa.speculated.i.2 = select i1 %73, float %.sroa.speculated.i.1, float %sqrt.i.i.2 ; 2 uses
  %74 = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv.i574.a
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !11
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [12 x i8], ptr %i.adr, i64 %77 ; 3 uses
  %79 = load float, ptr %78, align 4, !tbaa !47   ; 2 uses
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %81 = load float, ptr %80, align 4, !tbaa !47   ; 2 uses
  %82 = fmul float %81, %81
  %83 = call float @llvm.fmuladd.f32(float %79, float %79, float %82)
  %84 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %85 = load float, ptr %84, align 4, !tbaa !47   ; 2 uses
  %86 = call noundef float @llvm.fmuladd.f32(float %85, float %85, float %83)
  %sqrt.i.i.3 = call noundef float @llvm.sqrt.f32(float %86) ; 2 uses
  %87 = fcmp olt float %sqrt.i.i.3, %.sroa.speculated.i.2
  %.sroa.speculated.i.3 = select i1 %87, float %.sroa.speculated.i.2, float %sqrt.i.i.3 ; 3 uses
  %indvars.iv.next.i575.3 = add nuw nsw i64 %indvars.iv.i574.a, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter.a
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i.a, !llvm.loop !82

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i.a
  %lcmp.mod1367.not = icmp eq i64 %xtraiter1366, 0
  br i1 %lcmp.mod1367.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i574.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i575.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.04041.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %.sroa.speculated.i.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod1369 = icmp ne i64 %xtraiter1366, 0
  call void @llvm.assume(i1 %lcmp.mod1369)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i574.epil = phi i64 [ %indvars.iv.i574.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i575.epil, %.lr.ph.i.epil ] ; 2 uses
  %.04041.i.epil = phi float [ %.04041.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next.a, %.lr.ph.i.epil ]
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv.i574.epil
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !11
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds [12 x i8], ptr %i.adr, i64 %i.adz ; 3 uses
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !47 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 4
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !47 ; 2 uses
  %i.aee = fmul float %i.aed, %i.aed
  %i.aef = call float @llvm.fmuladd.f32(float %i.aeb, float %i.aeb, float %i.aee)
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !47 ; 2 uses
  %i.aei = call noundef float @llvm.fmuladd.f32(float %i.aeh, float %i.aeh, float %i.aef)
  %sqrt.i.i.epil = call noundef float @llvm.sqrt.f32(float %i.aei) ; 2 uses
  %i.aej = fcmp olt float %sqrt.i.i.epil, %.04041.i.epil
  %.sroa.speculated.i.epil = select i1 %i.aej, float %.04041.i.epil, float %sqrt.i.i.epil ; 2 uses
  %indvars.iv.next.i575.epil = add nuw nsw i64 %indvars.iv.i574.epil, 1
  %epil.iter.next.a = add i64 %epil.iter, 1       ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %xtraiter1366
  br i1 %epil.iter.cmp.not.a, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !83

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.sroa.speculated.i.lcssa = phi float [ %.sroa.speculated.i.3, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  %i.aek = fmul float %.sroa.speculated.i.lcssa, 2.000000e+00
  br label %._crit_edge.i572

._crit_edge.i572:                                 ; preds = %._crit_edge.loopexit.i, %.preheader.i571
  %.040.lcssa.i = phi float [ 0.000000e+00, %.preheader.i571 ], [ %i.aek, %._crit_edge.loopexit.i ]
  %i.ael = fdiv float %.040.lcssa.i, %i.ads
  %i.aem = fadd float %i.ael, 1.000000e+00
  %i.aen = fptosi float %i.aem to i32             ; 2 uses
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.91, i32 noundef 572, i64 noundef range(i64 -2147483648, 2147483648) %i.aeo, i64 noundef 4)
          to label %.noexc577 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc577:                                        ; preds = %._crit_edge.i572, %bb.fp
  %.2764 = phi ptr [ %.0762, %bb.fp ], [ %i.aep, %._crit_edge.i572 ] ; 3 uses
  %.2 = phi i32 [ %.0761, %bb.fp ], [ %i.aen, %._crit_edge.i572 ] ; 2 uses
  %i.aeq = icmp sgt i32 %i.adp, 0
  br i1 %i.aeq, label %.lr.ph49.preheader.i, label %_ZL12update_histoiPKiPA3_fPiPS3_f.exit

.lr.ph49.preheader.i:                             ; preds = %.noexc577
  %wide.trip.count58.i = zext nneg i32 %i.adp to i64
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %._crit_edge46.i, %.lr.ph49.preheader.i
  %.3765 = phi ptr [ %.2764, %.lr.ph49.preheader.i ], [ %.4766, %._crit_edge46.i ] ; 2 uses
  %.3 = phi i32 [ %.2, %.lr.ph49.preheader.i ], [ %.4, %._crit_edge46.i ] ; 5 uses
  %i.aer = phi ptr [ %.2764, %.lr.ph49.preheader.i ], [ %i.afr, %._crit_edge46.i ]
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph49.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge46.i ] ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv55.i
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !11
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [12 x i8], ptr %i.adr, i64 %i.aeu ; 3 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !47 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !47 ; 2 uses
  %i.aez = fmul float %i.aey, %i.aey
  %i.afa = call float @llvm.fmuladd.f32(float %i.aew, float %i.aew, float %i.aez)
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !47 ; 2 uses
  %i.afd = call noundef float @llvm.fmuladd.f32(float %i.afc, float %i.afc, float %i.afa)
  %sqrt.i38.i = call noundef float @llvm.sqrt.f32(float %i.afd)
  %i.afe = fdiv float %sqrt.i38.i, %i.ads
  %i.aff = fptosi float %i.afe to i32             ; 4 uses
  %.not.i = icmp sgt i32 %.3, %i.aff
  br i1 %.not.i, label %._crit_edge46.i, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph49.i
  %i.afg = add nsw i32 %i.aff, 100                ; 3 uses
  %i.afh = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.afi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afh, ptr noundef nonnull @.str.141, i32 noundef %.3, i32 noundef %i.afg) #27 ; 0 uses
  %i.afj = sext i32 %i.afg to i64
  %i.afk = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.91, i32 noundef 583, ptr noundef %.3765, i64 noundef range(i64 -2147483548, 2147483648) %i.afj, i64 noundef 4)
          to label %.noexc578 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc578:                                        ; preds = %bb.fq
  %i.afl = sext i32 %.3 to i64
  %i.afm = shl nsw i64 %i.afl, 2
  %scevgep.i = getelementptr i8, ptr %i.afk, i64 %i.afm
  %reass.sub = sub i32 %i.aff, %.3
  %i.afn = add i32 %reass.sub, 99
  %i.afo = zext i32 %i.afn to i64
  %i.afp = shl nuw nsw i64 %i.afo, 2
  %i.afq = add nuw nsw i64 %i.afp, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.afq, i1 false), !tbaa !11
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %.noexc578, %.lr.ph49.i
  %.4766 = phi ptr [ %.3765, %.lr.ph49.i ], [ %i.afk, %.noexc578 ] ; 2 uses
  %.4 = phi i32 [ %.3, %.lr.ph49.i ], [ %i.afg, %.noexc578 ] ; 2 uses
  %i.afr = phi ptr [ %i.aer, %.lr.ph49.i ], [ %i.afk, %.noexc578 ] ; 2 uses
  %i.afs = sext i32 %i.aff to i64
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.afr, i64 %i.afs ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !11
  %i.afv = add nsw i32 %i.afu, 1
  store i32 %i.afv, ptr %i.aft, align 4, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %_ZL12update_histoiPKiPA3_fPiPS3_f.exit, label %.lr.ph49.i, !llvm.loop !84

_ZL12update_histoiPKiPA3_fPiPS3_f.exit:           ; preds = %._crit_edge46.i, %.noexc577, %bb.fo
  %.1763 = phi ptr [ %.0762, %bb.fo ], [ %.2764, %.noexc577 ], [ %.4766, %._crit_edge46.i ] ; 2 uses
  %.1 = phi i32 [ %.0761, %bb.fo ], [ %.2, %.noexc577 ], [ %.4, %._crit_edge46.i ] ; 3 uses
  %i.afw = load i8, ptr %i.wa, align 8, !range !24 ; 2 uses
  %i.afx = trunc nuw i8 %i.afw to i1
  %or.cond44 = select i1 %i.ec, i1 %i.afx, i1 false
  br i1 %or.cond44, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZL12update_histoiPKiPA3_fPiPS3_f.exit
  %i.afy = load ptr, ptr %i.we, align 8, !tbaa !154
  %i.afz = load i8, ptr @_ZZ8gmx_trajiPPcE4bCom, align 1, !tbaa !23, !range !24, !noundef !25
  %i.aga = trunc nuw i8 %i.afz to i1
  %i.agb = load i32, ptr @_ZZ8gmx_trajiPPcE7ngroups, align 4, !tbaa !11
  invoke fastcc void @_ZL10print_dataP8_IO_FILEfPA3_fPfbiPiPS4_PbPKc(ptr noundef %.0351, float noundef %i.xi, ptr noundef %i.afy, ptr noundef %.0760, i1 noundef zeroext %i.aga, i32 noundef %i.agb, ptr noundef %.0774, ptr noundef %.0775, ptr noundef %i.n, ptr noundef %i.p)
          to label %._crit_edge970 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge970:                                   ; preds = %bb.fr
  %.pre971 = load i8, ptr %i.wa, align 8, !range !24
  br label %bb.fs

bb.fs:                                            ; preds = %._crit_edge970, %_ZL12update_histoiPKiPA3_fPiPS3_f.exit
  %i.agc = phi i8 [ %.pre971, %._crit_edge970 ], [ %i.afw, %_ZL12update_histoiPKiPA3_fPiPS3_f.exit ]
  %i.agd = trunc nuw i8 %i.agc to i1
  %or.cond47 = select i1 %i.ed, i1 %i.agd, i1 false
  br i1 %or.cond47, label %bb.ft, label %bb.gf

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %33, ptr noundef nonnull align 8 dereferenceable(176) %8, i64 176, i1 false), !tbaa.struct !159
  %i.age = load i8, ptr %i.wm, align 4, !tbaa !160, !range !24, !noundef !25
  %i.agf = trunc nuw i8 %i.age to i1
  br i1 %i.agf, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  store ptr %i.gq, ptr %i.wn, align 8, !tbaa !161
  store i8 1, ptr %i.wm, align 4, !tbaa !160
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  store i8 0, ptr %i.wo, align 8, !tbaa !162
  store i8 0, ptr %i.wp, align 8, !tbaa !163
  %i.agg = load i8, ptr @_ZZ8gmx_trajiPPcE4bCom, align 1, !tbaa !23, !range !24, !noundef !25
  %i.agh = trunc nuw i8 %i.agg to i1
  %i.agi = load i32, ptr @_ZZ8gmx_trajiPPcE7ngroups, align 4, !tbaa !11 ; 8 uses
  %i.agj = load atomic i8, ptr @_ZGVZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav acquire, align 8
  %i.agk = icmp eq i8 %i.agj, 0
  br i1 %i.agk, label %bb.fw, label %bb.fy, !prof !50

bb.fw:                                            ; preds = %bb.fv
  %i.agl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav) #22
  %.not.i585 = icmp eq i32 %i.agl, 0
  br i1 %.not.i585, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav, i8 0, i64 24, i1 false)
  %i.agm = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev, ptr nonnull @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav) #22
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  br i1 %i.agh, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %i.agn = load ptr, ptr @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav, align 8, !tbaa !52
  %i.ago = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav, i64 8), align 8, !tbaa !52
  %i.agp = icmp eq ptr %i.agn, %i.ago
  br i1 %i.agp, label %bb.ga, label %.loopexit.i

bb.ga:                                            ; preds = %bb.fz
  %i.agq = sext i32 %i.agi to i64                 ; 2 uses
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E3xav, i64 noundef %i.agq)
          to label %.noexc586 unwind label %bb.ge

.noexc586:                                        ; preds = %bb.ga
  %i.agr = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.91, i32 noundef 210, i64 noundef 1, i64 noundef 72)
          to label %.noexc587 unwind label %bb.ge ; 3 uses

.noexc587:                                        ; preds = %.noexc586
  store ptr %i.agr, ptr @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E5atoms, align 8, !tbaa !158
  %i.ags = load ptr, ptr %i.wn, align 8, !tbaa !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.agr, ptr noundef nonnull align 8 dereferenceable(72) %i.ags, i64 72, i1 false), !tbaa.struct !167
  %i.agt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.91, i32 noundef 212, i64 noundef range(i64 -2147483648, 2147483648) %i.agq, i64 noundef 36)
          to label %.noexc588 unwind label %bb.ge

.noexc588:                                        ; preds = %.noexc587
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  store ptr %i.agt, ptr %i.agu, align 8, !tbaa !164
  %i.agv = load ptr, ptr @_ZZL11write_trx_xP11t_trxstatusPK10t_trxframePfbiPiPS5_E5atoms, align 8, !tbaa !158 ; 3 uses
  store i32 %i.agi, ptr %i.agv, align 8, !tbaa !54
  %i.agw = icmp sgt i32 %i.agi, 0
  br i1 %i.agw, label %.lr.ph.i579, label %.loopexit.i

.lr.ph.i579:                                      ; preds = %.noexc588
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 16 ; 3 uses
  %wide.trip.count.i580 = zext nneg i32 %i.agi to i64 ; 2 uses
  %.pre.i581 = load ptr, ptr %i.wn, align 8, !tbaa !161 ; 2 uses
  %xtraiter1370 = and i64 %wide.trip.count.i580, 1
  %i.agz = icmp eq i32 %i.agi, 1
  br i1 %i.agz, label %.epil.preheader, label %.lr.ph.i579.new

.lr.ph.i579.new:                                  ; preds = %.lr.ph.i579
  %unroll_iter1374 = and i64 %wide.trip.count.i580, 2147483646
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gb, %.lr.ph.i579.new
  %i.aha = phi ptr [ %.pre.i581, %.lr.ph.i579.new ], [ %i.aid, %bb.gb ]
  %indvars.iv.i582 = phi i64 [ 0, %.lr.ph.i579.new ], [ %indvars.iv.next.i583.1, %bb.gb ] ; 5 uses
  %niter1375 = phi i64 [ 0, %.lr.ph.i579.new ], [ %niter1375.next.1, %bb.gb ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !55
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %.0775, i64 %indvars.iv.i582 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !33
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !11
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds [36 x i8], ptr %i.ahc, i64 %i.ahg
  %i.ahi = load ptr, ptr %i.agx, align 8, !tbaa !55
  %i.ahj = getelementptr inbounds nuw [36 x i8], ptr %i.ahi, i64 %indvars.iv.i582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ahj, ptr noundef nonnull align 4 dereferenceable(36) %i.ahh, i64 36, i1 false), !tbaa.struct !170
  %i.ahk = load ptr, ptr %i.wn, align 8, !tbaa !161 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
end_hunk_0
begin_hunk_1_@_ZL12average_dataPA3_fS0_PKfiPKiPPi:bb.a
  %i.eo = fptrunc <2 x double> %i.en to <2 x float>
  store <2 x float> %i.eo, ptr %i.bu, align 4, !tbaa !47
  %shift = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x double> %i.el, %shift
  %i.ep = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.eq = fptrunc double %i.ep to float
  store float %i.eq, ptr %i.bv, align 4, !tbaa !47
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count97
  br i1 %exitcond80.not, label %._crit_edge62, label %.lr.ph61.split.split, !llvm.loop !226

._crit_edge62:                                    ; preds = %.preheader51, %.preheader49.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14low_print_dataP8_IO_FILEfPA3_fiPKiPKbPKc(ptr nofree noundef captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #18 {
bb.a:
  %i.a = fpext float %1 to double
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.125, double noundef %i.a) #22 ; 0 uses
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  %wide.trip.count38 = zext nneg i32 %3 to i64    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv35 ; 6 uses
  %i.h = load i8, ptr %5, align 1, !tbaa !23, !range !24, !noundef !25
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = load float, ptr %i.g, align 4, !tbaa !47
  %i.k = fpext float %i.j to double
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.k) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.m = load i8, ptr %i.e, align 1, !tbaa !23, !range !24, !noundef !25
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !47
  %i.q = fpext float %i.p to double
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.q) #22 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = load i8, ptr %i.f, align 1, !tbaa !23, !range !24, !noundef !25
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !47
  %i.w = fpext float %i.v to double
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.w) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load i8, ptr %i.d, align 1, !tbaa !23, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load float, ptr %i.g, align 4, !tbaa !47 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !47 ; 2 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !47 ; 2 uses
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ae)
  %sqrt.i.us = tail call noundef float @llvm.sqrt.f32(float %i.ah)
  %i.ai = fpext float %sqrt.i.us to double
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.ai) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !227

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %2, i64 %i.am ; 6 uses
  %i.ao = load i8, ptr %5, align 1, !tbaa !23, !range !24, !noundef !25
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %i.aq = load float, ptr %i.an, align 4, !tbaa !47
  %i.ar = fpext float %i.aq to double
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.ar) #22 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split, %bb.j
  %i.at = load i8, ptr %i.e, align 1, !tbaa !23, !range !24, !noundef !25
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !47
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.ax) #22 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = load i8, ptr %i.f, align 1, !tbaa !23, !range !24, !noundef !25
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !47
  %i.bd = fpext float %i.bc to double
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.bd) #22 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = load i8, ptr %i.d, align 1, !tbaa !23, !range !24, !noundef !25
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = load float, ptr %i.an, align 4, !tbaa !47 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !47 ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !47 ; 2 uses
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bl)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bo)
  %i.bp = fpext float %sqrt.i to double
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %6, double noundef %i.bp) #22 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count38
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !227

._crit_edge:                                      ; preds = %bb.q, %bb.i, %bb.a
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  ret void
}

declare noundef i32 @_Z14write_trxframeP11t_trxstatusPK10t_trxframeP12gmx_conect_t(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z22write_trxframe_indexedP11t_trxstatusPK10t_trxframeiPKiP12gmx_conect_t(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

declare noundef i32 @_Z9m_inv_genPKfiPf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @_Z22write_sto_conf_indexedRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_iPi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { cold nounwind }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
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
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !16, i64 8, !7, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!7, !7, i64 0}
!20 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"bool", !7, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!17, !13, i64 0}
!32 = !{!"p1 int", !12, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"any p2 pointer", !12, i64 0}
!36 = !{!"p2 omnipotent char", !35, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!"p1 _ZTS6t_atom", !12, i64 0}
!39 = !{!"any p3 pointer", !35, i64 0}
!40 = !{!"p3 omnipotent char", !39, i64 0}
!41 = !{!"p1 _ZTS9t_resinfo", !12, i64 0}
!42 = !{!"p1 _ZTS9t_pdbinfo", !12, i64 0}
!43 = !{!"_ZTS7t_atoms", !8, i64 0, !38, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !8, i64 40, !41, i64 48, !42, i64 56, !22, i64 64, !22, i64 65, !22, i64 66, !22, i64 67, !22, i64 68}
!44 = !{!"short", !7, i64 0}
!45 = !{!"_ZTS12ParticleType", !7, i64 0}
!46 = !{!"_ZTS6t_atom", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !44, i64 16, !44, i64 18, !45, i64 20, !8, i64 24, !8, i64 28, !7, i64 32}
!47 = !{!37, !37, i64 0}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!16, !16, i64 0}
!50 = !{!"branch_weights", i32 1, i32 1048575}
!51 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !12, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!42, !42, i64 0}
!54 = !{!43, !8, i64 0}
!55 = !{!43, !38, i64 8}
!56 = !{!43, !40, i64 16}
!57 = !{!36, !36, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!59 = !{!58, !51, i64 0}
!60 = !{!21, !20, i64 0}
!61 = !{!21, !20, i64 8}
!62 = !{!21, !20, i64 16}
!63 = !{!58, !51, i64 16}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !34, !142, !143}
!70 = distinct !{!70, !34, !142, !143}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !34, !142}
!73 = distinct !{!73, !34}
!74 = distinct !{!74, !34}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, i1 false, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !34, !142, !143}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !34, !142}
!82 = distinct !{!82, !34}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !34}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, i1 false, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !34, !142, !143}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !34, !142}
!100 = distinct !{!100, i1 false, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !34, !142, !143}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !34, !142}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !34, !142, !143}
!110 = distinct !{!110, !48}
!111 = distinct !{!111, !34, !142}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !34}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !34}
!118 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !21, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !119, i64 0}
!121 = !{!"_ZTS8t_filenm", !8, i64 0, !13, i64 8, !13, i64 16, !16, i64 24, !120, i64 32}
!122 = !{!121, !8, i64 0}
!123 = !{!121, !13, i64 8}
!124 = !{!121, !13, i64 16}
!125 = !{!121, !16, i64 24}
!126 = !{!"p1 float", !12, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"_ZTS7t_block", !8, i64 0, !32, i64 8, !8, i64 16}
!129 = !{!128, !32, i64 8}
!130 = !{!128, !8, i64 0}
!131 = !{!"p1 _ZTS9t_iparams", !12, i64 0}
!132 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !7, i64 0}
!133 = !{!"_ZTS6t_idef", !8, i64 0, !8, i64 4, !12, i64 8, !131, i64 16, !37, i64 24, !131, i64 32, !131, i64 40, !132, i64 48, !8, i64 2328}
!134 = !{!"p1 _ZTS8t_symbuf", !12, i64 0}
!135 = !{!"_ZTS8t_symtab", !8, i64 0, !134, i64 8}
!136 = !{!"_ZTS10t_topology", !36, i64 0, !133, i64 8, !43, i64 2344, !128, i64 2416, !22, i64 2440, !135, i64 2448}
!137 = !{!136, !8, i64 2344}
!138 = !{!136, !38, i64 2352}
!139 = !{!46, !37, i64 0}
!140 = !{!67}
!141 = !{!68}
!142 = !{!"llvm.loop.isvectorized", i32 1}
!143 = !{!"llvm.loop.unroll.runtime.disable"}
!144 = !{!"branch_weights", i32 8, i32 24}
!145 = !{!"p1 _ZTS16gmx_output_env_t", !12, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"p1 _ZTS7t_atoms", !12, i64 0}
!148 = !{!"_ZTS7PbcType", !7, i64 0}
!149 = !{!"_ZTS10t_trxframe", !8, i64 0, !22, i64 4, !8, i64 8, !22, i64 12, !16, i64 16, !22, i64 24, !37, i64 28, !22, i64 32, !22, i64 33, !37, i64 36, !8, i64 40, !22, i64 44, !147, i64 48, !22, i64 56, !37, i64 60, !22, i64 64, !126, i64 72, !22, i64 80, !126, i64 88, !22, i64 96, !126, i64 104, !22, i64 112, !7, i64 116, !22, i64 152, !148, i64 156, !22, i64 160, !32, i64 168}
!150 = !{!149, !8, i64 8}
!151 = !{!148, !148, i64 0}
!152 = !{!149, !37, i64 28}
!153 = !{!149, !22, i64 64}
!154 = !{!149, !126, i64 72}
!155 = !{!77}
!156 = !{!78}
!157 = !{!149, !126, i64 88}
!158 = !{!147, !147, i64 0}
!159 = !{i64 0, i64 4, !11, i64 4, i64 1, !23, i64 8, i64 4, !11, i64 12, i64 1, !23, i64 16, i64 8, !49, i64 24, i64 1, !23, i64 28, i64 4, !47, i64 32, i64 1, !23, i64 33, i64 1, !23, i64 36, i64 4, !47, i64 40, i64 4, !11, i64 44, i64 1, !23, i64 48, i64 8, !158, i64 56, i64 1, !23, i64 60, i64 4, !47, i64 64, i64 1, !23, i64 72, i64 8, !127, i64 80, i64 1, !23, i64 88, i64 8, !127, i64 96, i64 1, !23, i64 104, i64 8, !127, i64 112, i64 1, !23, i64 116, i64 36, !19, i64 152, i64 1, !23, i64 156, i64 4, !151, i64 160, i64 1, !23, i64 168, i64 8, !33}
!160 = !{!149, !22, i64 44}
!161 = !{!149, !147, i64 48}
!162 = !{!149, !22, i64 80}
!163 = !{!149, !22, i64 96}
!164 = !{!38, !38, i64 0}
!165 = !{!40, !40, i64 0}
!166 = !{!41, !41, i64 0}
!167 = !{i64 0, i64 4, !11, i64 8, i64 8, !164, i64 16, i64 8, !165, i64 24, i64 8, !165, i64 32, i64 8, !165, i64 40, i64 4, !11, i64 48, i64 8, !166, i64 56, i64 8, !53, i64 64, i64 1, !23, i64 65, i64 1, !23, i64 66, i64 1, !23, i64 67, i64 1, !23, i64 68, i64 1, !23}
!168 = !{!44, !44, i64 0}
!169 = !{!45, !45, i64 0}
!170 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 2, !168, i64 18, i64 2, !168, i64 20, i64 4, !169, i64 24, i64 4, !11, i64 28, i64 4, !11, i64 32, i64 4, !19}
!171 = !{!149, !126, i64 104}
!172 = !{!95}
!173 = !{!96}
!174 = !{!101}
!175 = !{!102}
!176 = !{!107}
!177 = !{!108}
!178 = !{!"p1 _ZTS11t_trxstatus", !12, i64 0}
!179 = !{!178, !178, i64 0}
!180 = distinct !{!180, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!181 = distinct !{!181, !180, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!182 = distinct !{!182, !180, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!183 = distinct !{!183, !34}
!184 = distinct !{!184, !34}
!185 = !{!181}
!186 = !{!182}
!187 = !{!181, !182}
!188 = distinct !{!188, !34}
!189 = distinct !{!189, !48}
!190 = distinct !{!190, !34}
!191 = distinct !{!191, !34}
!192 = distinct !{!192, !34}
!193 = distinct !{!193, !34}
!194 = distinct !{!194, !48}
!195 = !{!43, !41, i64 48}
!196 = !{!46, !8, i64 24}
!197 = !{!"_ZTS9t_resinfo", !36, i64 0, !8, i64 8, !7, i64 12, !8, i64 16, !7, i64 20, !36, i64 24}
!198 = !{!197, !36, i64 0}
!199 = !{!197, !8, i64 8}
!200 = !{!43, !42, i64 56}
!201 = !{!43, !22, i64 68}
!202 = !{!"_ZTS13PdbRecordType", !7, i64 0}
!203 = !{!"_ZTS9t_pdbinfo", !202, i64 0, !8, i64 4, !7, i64 8, !7, i64 9, !37, i64 16, !37, i64 20, !22, i64 24, !7, i64 28}
!204 = !{!203, !37, i64 20}
!205 = distinct !{!205, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!206 = distinct !{!206, !205, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!207 = distinct !{!207, !205, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!208 = distinct !{!208, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!209 = distinct !{!209, !208, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!210 = distinct !{!210, !208, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!211 = !{!206}
!212 = !{!207}
!213 = !{!206, !207}
!214 = !{!209}
!215 = !{!210}
!216 = !{!209, !210}
!217 = distinct !{!217, i1 true, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!218 = distinct !{!218, !217, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!219 = distinct !{!219, !217, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!220 = distinct !{!220, !34}
!221 = !{!58, !51, i64 8}
!222 = !{i64 0, i64 12, !19}
!223 = !{!219, !218}
!224 = distinct !{!224, !34}
!225 = distinct !{!225, !48}
!226 = distinct !{!226, !34}
!227 = distinct !{!227, !34}
end_hunk_1
