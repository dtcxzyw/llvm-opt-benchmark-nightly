inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 39
begin_hunk_0_@process:bb.a
  %i.aas = fpext <4 x float> %i.aar to <4 x double>
  %i.aat = insertelement <4 x double> poison, double %i.aaq, i64 0
  %i.aau = shufflevector <4 x double> %i.aat, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aav = fdiv reassoc nsz arcp contract afn <4 x double> %i.aas, %i.aau
  %i.aaw = fptrunc <4 x double> %i.aav to <4 x float>
  store <4 x float> %i.aaw, ptr %invariant.gep.us.us.i, align 4, !tbaa !24
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, %i.zf
  br i1 %exitcond51.not.i, label %._crit_edge.split.us.us.i, label %bb.bn, !llvm.loop !200

._crit_edge.i.loopexit.us.us.i:                   ; preds = %bb.bp
  %i.aax = load float, ptr %i.ze, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %.loopexit.i57, label %.preheader2.us.i, !llvm.loop !201

.preheader2.i:                                    ; preds = %.preheader2.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %._crit_edge.split.i ], [ 0, %.preheader2.lr.ph.split.i ] ; 3 uses
  %i.aay = mul nuw nsw i64 %indvars.iv41.i, %i.zf
  %i.aaz = trunc i64 %indvars.iv41.i to i32
  %i.aba = add i32 %i.yz, %i.aaz
  %i.abb = sitofp reassoc nsz arcp contract afn i32 %i.aba to float
  %i.abc = fsub reassoc nsz arcp contract afn float %i.abb, %i.xv
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.split.i:                              ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count55.i
  br i1 %exitcond45.not.i, label %.loopexit.i57, label %.preheader2.i, !llvm.loop !201

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, %.preheader2.i
  %indvars.iv.i64 = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next.i65, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.abd = add nuw nsw i64 %indvars.iv.i64, %i.aay
  %i.abe = shl i64 %i.abd, 2
  %i.abf = and i64 %i.abe, 4294967292
  %i.abg = trunc i64 %indvars.iv.i64 to i32
  %i.abh = add i32 %i.yy, %i.abg
  %i.abi = sitofp reassoc nsz arcp contract afn i32 %i.abh to float
  %i.abj = fsub reassoc nsz arcp contract afn float %i.abi, %i.xu
  %i.abk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.abj, float noundef %i.abc) #32
  %i.abl = fmul reassoc nsz arcp contract afn float %i.abk, %i.xx
  %i.abm = load float, ptr %i.yv, align 4, !tbaa !24
  %i.abn = fcmp reassoc nsz arcp contract afn olt float %i.abl, %i.abm
  %.1.i.in.i = select i1 %i.abn, ptr %i.yw, ptr %i.ze
  %.1.i.i = load float, ptr %.1.i.in.i, align 4, !tbaa !24
  %i.abo = fpext reassoc nsz arcp contract afn float %.1.i.i to double ; 2 uses
  %i.abp = fcmp reassoc nsz arcp contract afn olt double %i.abo, 1.000000e-04
  %i.abq = select reassoc nsz arcp contract afn i1 %i.abp, double 1.000000e-04, double %i.abo
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0.i, i64 %i.abf ; 2 uses
  %i.abr = load <4 x float>, ptr %invariant.gep.i, align 4, !tbaa !24
  %i.abs = fpext <4 x float> %i.abr to <4 x double>
  %i.abt = insertelement <4 x double> poison, double %i.abq, i64 0
  %i.abu = shufflevector <4 x double> %i.abt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abv = fdiv reassoc nsz arcp contract afn <4 x double> %i.abs, %i.abu
  %i.abw = fptrunc <4 x double> %i.abv to <4 x float>
  store <4 x float> %i.abw, ptr %invariant.gep.i, align 4, !tbaa !24
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %i.zf
  br i1 %exitcond.not.i66, label %._crit_edge.split.i, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, !llvm.loop !200

.loopexit.i57:                                    ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader2.lr.ph.i, %.preheader3.i, %bb.bm, %bb.bl
  %i.abx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !162
  %i.abz = add nsw i32 %i.aby, -1
  %i.aca = sitofp reassoc nsz arcp contract afn i32 %i.abz to float ; 8 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.acd = add nsw i32 %i.acc, -1
  %i.ace = sitofp reassoc nsz arcp contract afn i32 %i.acd to float ; 8 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !163 ; 2 uses
  %i.ach = icmp sgt i32 %i.acg, 0
  br i1 %i.ach, label %.preheader.lr.ph.i58, label %._crit_edge25.i

.preheader.lr.ph.i58:                             ; preds = %.loopexit.i57
  %i.aci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.xc, i64 108 ; 12 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.acl = load i32, ptr %i.aci, align 4, !tbaa !162 ; 2 uses
  %i.acm = icmp sgt i32 %i.acl, 0
  br i1 %i.acm, label %.preheader.preheader.i59, label %._crit_edge25.i

.preheader.preheader.i59:                         ; preds = %.preheader.lr.ph.i58
  %i.acn = getelementptr inbounds nuw i8, ptr %i.xc, i64 236 ; 2 uses
  %i.aco = zext i1 %i.yc to i64
  %i.acp = getelementptr inbounds nuw [64 x i8], ptr %i.acn, i64 %i.aco ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.xc, i64 300 ; 8 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.acs = select i1 %i.yc, i64 1, i64 2
  %i.act = getelementptr inbounds nuw [64 x i8], ptr %i.acn, i64 %i.acs ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.acv = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  br label %.preheader.i60

.preheader.i60:                                   ; preds = %._crit_edge.i61, %.preheader.preheader.i59
  %i.acw = phi i32 [ %i.ada, %._crit_edge.i61 ], [ %i.acg, %.preheader.preheader.i59 ]
  %i.acx = phi i32 [ %i.adb, %._crit_edge.i61 ], [ %i.acl, %.preheader.preheader.i59 ] ; 3 uses
  %.013124.i = phi i32 [ %i.adc, %._crit_edge.i61 ], [ 0, %.preheader.preheader.i59 ] ; 3 uses
  %i.acy = icmp sgt i32 %i.acx, 0
  br i1 %i.acy, label %.lr.ph.i62.preheader, label %._crit_edge.i61

.lr.ph.i62.preheader:                             ; preds = %.preheader.i60
  %i.acz = insertelement <2 x i32> poison, i32 %.013124.i, i64 1
  br label %.lr.ph.i62

._crit_edge25.i:                                  ; preds = %._crit_edge.i61, %.preheader.lr.ph.i58, %.loopexit.i57
  br i1 %i.v, label %bb.dg, label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

._crit_edge.loopexit.i:                           ; preds = %bb.df
  %.pre.i63 = load i32, ptr %i.acf, align 4, !tbaa !163
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i60
  %i.ada = phi i32 [ %.pre.i63, %._crit_edge.loopexit.i ], [ %i.acw, %.preheader.i60 ] ; 2 uses
  %i.adb = phi i32 [ %i.akx, %._crit_edge.loopexit.i ], [ %i.acx, %.preheader.i60 ]
  %i.adc = add nuw nsw i32 %.013124.i, 1          ; 2 uses
  %i.add = icmp slt i32 %i.adc, %i.ada
  br i1 %i.add, label %.preheader.i60, label %._crit_edge25.i, !llvm.loop !202

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %bb.df
  %i.ade = phi i32 [ %i.akx, %bb.df ], [ %i.acx, %.lr.ph.i62.preheader ]
  %.013223.i = phi i32 [ %i.akw, %bb.df ], [ 0, %.lr.ph.i62.preheader ] ; 3 uses
  %i.adf = mul nsw i32 %i.ade, %.013124.i
  %i.adg = add nsw i32 %i.adf, %.013223.i
  %i.adh = shl nsw i32 %i.adg, 2
  %i.adi = sext i32 %i.adh to i64
  %i.adj = load <2 x i32>, ptr %5, align 4, !tbaa !38
  %i.adk = insertelement <2 x i32> %i.acz, i32 %.013223.i, i64 0
  %i.adl = add nsw <2 x i32> %i.adj, %i.adk
  %i.adm = sitofp <2 x i32> %i.adl to <2 x float>
  %i.adn = fsub reassoc nsz arcp contract afn <2 x float> %i.adm, %i.xt ; 2 uses
  %i.ado = extractelement <2 x float> %i.adn, i64 0
  %i.adp = fmul reassoc nsz arcp contract afn float %i.ado, %i.xk ; 5 uses
  %i.adq = extractelement <2 x float> %i.adn, i64 1
  %i.adr = fmul reassoc nsz arcp contract afn float %i.adq, %i.xk ; 5 uses
  %i.ads = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.adp, float noundef %i.adr) #32
  %i.adt = fmul reassoc nsz arcp contract afn float %i.ads, %i.xx ; 16 uses
  %invariant.gep20.i = getelementptr [4 x i8], ptr %3, i64 %i.adi ; 4 uses
  %i.adu = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.adv = load float, ptr %i.acj, align 4, !tbaa !24
  %i.adw = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.adv
  br i1 %i.adw, label %bb.bs, label %.preheader.i141.i

.preheader.i141.i:                                ; preds = %.lr.ph.i62
  %i.adx = icmp sgt i32 %i.adu, 1
  br i1 %i.adx, label %.lr.ph.preheader.i144.i, label %._crit_edge.i142.i

.lr.ph.preheader.i144.i:                          ; preds = %.preheader.i141.i
  %wide.trip.count.i145.i = zext nneg i32 %i.adu to i64
  br label %.lr.ph.i146.i

bb.bs:                                            ; preds = %.lr.ph.i62
  %i.ady = load float, ptr %i.acp, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i

.lr.ph.i146.i:                                    ; preds = %bb.bu, %.lr.ph.preheader.i144.i
  %indvars.iv.i147.i = phi i64 [ 1, %.lr.ph.preheader.i144.i ], [ %indvars.iv.next.i148.i, %bb.bu ] ; 4 uses
  %i.adz = add nsw i64 %indvars.iv.i147.i, -1     ; 2 uses
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.adz
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !24 ; 3 uses
  %i.aec = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.aeb
  br i1 %i.aec, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i146.i
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.i
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !24 ; 2 uses
  %i.aef = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.aee
  br i1 %i.aef, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i146.i
  %indvars.iv.next.i148.i = add nuw nsw i64 %indvars.iv.i147.i, 1 ; 2 uses
  %exitcond.not.i149.i = icmp eq i64 %indvars.iv.next.i148.i, %wide.trip.count.i145.i
  br i1 %exitcond.not.i149.i, label %._crit_edge.i142.i, label %.lr.ph.i146.i, !llvm.loop !199

bb.bv:                                            ; preds = %bb.bt
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %indvars.iv.i147.i
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !24
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.adz
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !24 ; 2 uses
  %i.aek = fsub reassoc nsz arcp contract afn float %i.aeh, %i.aej
  %i.ael = fsub reassoc nsz arcp contract afn float %i.aee, %i.aeb
  %i.aem = fsub reassoc nsz arcp contract afn float %i.adt, %i.aeb
  %i.aen = fmul reassoc nsz arcp contract afn float %i.aek, %i.aem
  %i.aeo = fdiv reassoc nsz arcp contract afn float %i.aen, %i.ael
  %i.aep = fadd reassoc nsz arcp contract afn float %i.aeo, %i.aej
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i

._crit_edge.i142.i:                               ; preds = %bb.bu, %.preheader.i141.i
  %i.aeq = sext i32 %i.adu to i64
  %i.aer = getelementptr [4 x i8], ptr %i.acp, i64 %i.aeq
  %i.aes = getelementptr i8, ptr %i.aer, i64 -4
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.i: ; preds = %._crit_edge.i142.i, %bb.bv, %bb.bs
  %.1.i143.i = phi nsz float [ %i.ady, %bb.bs ], [ %i.aet, %._crit_edge.i142.i ], [ %i.aep, %bb.bv ] ; 2 uses
  %i.aeu = fmul reassoc nsz arcp contract afn float %.1.i143.i, %i.adp
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeu, %i.xu
  %i.aew = load i32, ptr %4, align 4, !tbaa !170
  %i.aex = sitofp reassoc nsz arcp contract afn i32 %i.aew to float
  %i.aey = fsub reassoc nsz arcp contract afn float %i.aev, %i.aex ; 3 uses
  %i.aez = fcmp reassoc nsz arcp contract afn ogt float %i.aey, %i.aca
  br i1 %i.aez, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i
  %i.afa = fcmp reassoc nsz arcp contract afn olt float %i.aey, 0.000000e+00
  br i1 %i.afa, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i
  %i.afb = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.bw ], [ %i.aey, %bb.bx ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i ]
  %i.afc = fmul reassoc nsz arcp contract afn float %.1.i143.i, %i.adr
  %i.afd = fadd reassoc nsz arcp contract afn float %i.afc, %i.xv
  %i.afe = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.aff = sitofp reassoc nsz arcp contract afn i32 %i.afe to float
  %i.afg = fsub reassoc nsz arcp contract afn float %i.afd, %i.aff ; 3 uses
  %i.afh = fcmp reassoc nsz arcp contract afn ogt float %i.afg, %i.ace
  br i1 %i.afh, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.afi = fcmp reassoc nsz arcp contract afn olt float %i.afg, 0.000000e+00
  br i1 %i.afi, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.afj = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.bz ], [ %i.afg, %bb.ca ], [ %i.ace, %bb.by ]
  %i.afk = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.afl = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.afm = shl nsw i32 %i.afk, 2
  %i.afn = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef %.0.i, float noundef %i.afb, float noundef %i.afj, i32 noundef %i.afk, i32 noundef %i.afl, i32 noundef 4, i32 noundef %i.afm)
  store float %i.afn, ptr %invariant.gep20.i, align 4, !tbaa !24
  %i.afo = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.afp = load float, ptr %i.acj, align 4, !tbaa !24
  %i.afq = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.afp
  br i1 %i.afq, label %bb.cf, label %.preheader.i141.1.i

.preheader.i141.1.i:                              ; preds = %bb.cb
  %i.afr = icmp sgt i32 %i.afo, 1
  br i1 %i.afr, label %.lr.ph.preheader.i144.1.i, label %._crit_edge.i142.1.i

.lr.ph.preheader.i144.1.i:                        ; preds = %.preheader.i141.1.i
  %wide.trip.count.i145.1.i = zext nneg i32 %i.afo to i64
  br label %.lr.ph.i146.1.i

.lr.ph.i146.1.i:                                  ; preds = %bb.ce, %.lr.ph.preheader.i144.1.i
  %indvars.iv.i147.1.i = phi i64 [ 1, %.lr.ph.preheader.i144.1.i ], [ %indvars.iv.next.i148.1.i, %bb.ce ] ; 4 uses
  %i.afs = add nsw i64 %indvars.iv.i147.1.i, -1   ; 2 uses
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.afs
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !24 ; 3 uses
  %i.afv = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.afu
  br i1 %i.afv, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i146.1.i
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.1.i
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !24 ; 2 uses
  %i.afy = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.afx
  br i1 %i.afy, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv.i147.1.i
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !24
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.afs
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !24 ; 2 uses
  %i.agd = fsub reassoc nsz arcp contract afn float %i.aga, %i.agc
  %i.age = fsub reassoc nsz arcp contract afn float %i.afx, %i.afu
  %i.agf = fsub reassoc nsz arcp contract afn float %i.adt, %i.afu
  %i.agg = fmul reassoc nsz arcp contract afn float %i.agd, %i.agf
  %i.agh = fdiv reassoc nsz arcp contract afn float %i.agg, %i.age
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agh, %i.agc
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i

bb.ce:                                            ; preds = %bb.cc, %.lr.ph.i146.1.i
  %indvars.iv.next.i148.1.i = add nuw nsw i64 %indvars.iv.i147.1.i, 1 ; 2 uses
  %exitcond.not.i149.1.i = icmp eq i64 %indvars.iv.next.i148.1.i, %wide.trip.count.i145.1.i
  br i1 %exitcond.not.i149.1.i, label %._crit_edge.i142.1.i, label %.lr.ph.i146.1.i, !llvm.loop !199

._crit_edge.i142.1.i:                             ; preds = %bb.ce, %.preheader.i141.1.i
  %i.agj = sext i32 %i.afo to i64
  %i.agk = getelementptr [4 x i8], ptr %i.acq, i64 %i.agj
  %i.agl = getelementptr i8, ptr %i.agk, i64 -4
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i

bb.cf:                                            ; preds = %bb.cb
  %i.agn = load float, ptr %i.acq, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i: ; preds = %bb.cf, %._crit_edge.i142.1.i, %bb.cd
  %.1.i143.1.i = phi nsz float [ %i.agn, %bb.cf ], [ %i.agm, %._crit_edge.i142.1.i ], [ %i.agi, %bb.cd ] ; 2 uses
  %i.ago = fmul reassoc nsz arcp contract afn float %.1.i143.1.i, %i.adp
  %i.agp = fadd reassoc nsz arcp contract afn float %i.ago, %i.xu
  %i.agq = load i32, ptr %4, align 4, !tbaa !170
  %i.agr = sitofp reassoc nsz arcp contract afn i32 %i.agq to float
  %i.ags = fsub reassoc nsz arcp contract afn float %i.agp, %i.agr ; 3 uses
  %i.agt = fcmp reassoc nsz arcp contract afn ogt float %i.ags, %i.aca
  br i1 %i.agt, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i
  %i.agu = fcmp reassoc nsz arcp contract afn olt float %i.ags, 0.000000e+00
  br i1 %i.agu, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i
  %i.agv = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.cg ], [ %i.ags, %bb.ch ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i ]
  %i.agw = fmul reassoc nsz arcp contract afn float %.1.i143.1.i, %i.adr
  %i.agx = fadd reassoc nsz arcp contract afn float %i.agw, %i.xv
  %i.agy = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.agz = sitofp reassoc nsz arcp contract afn i32 %i.agy to float
  %i.aha = fsub reassoc nsz arcp contract afn float %i.agx, %i.agz ; 3 uses
  %i.ahb = fcmp reassoc nsz arcp contract afn ogt float %i.aha, %i.ace
  br i1 %i.ahb, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ahc = fcmp reassoc nsz arcp contract afn olt float %i.aha, 0.000000e+00
  br i1 %i.ahc, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.ahd = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.cj ], [ %i.aha, %bb.ck ], [ %i.ace, %bb.ci ]
  %i.ahe = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.ahf = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.ahg = shl nsw i32 %i.ahe, 2
  %i.ahh = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acr, float noundef %i.agv, float noundef %i.ahd, i32 noundef %i.ahe, i32 noundef %i.ahf, i32 noundef 4, i32 noundef %i.ahg)
  %gep21.1.i = getelementptr i8, ptr %invariant.gep20.i, i64 4
  store float %i.ahh, ptr %gep21.1.i, align 4, !tbaa !24
  %i.ahi = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.ahj = load float, ptr %i.acj, align 4, !tbaa !24
  %i.ahk = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.ahj
  br i1 %i.ahk, label %bb.cp, label %.preheader.i141.2.i

.preheader.i141.2.i:                              ; preds = %bb.cl
  %i.ahl = icmp sgt i32 %i.ahi, 1
  br i1 %i.ahl, label %.lr.ph.preheader.i144.2.i, label %._crit_edge.i142.2.i

.lr.ph.preheader.i144.2.i:                        ; preds = %.preheader.i141.2.i
  %wide.trip.count.i145.2.i = zext nneg i32 %i.ahi to i64
  br label %.lr.ph.i146.2.i

.lr.ph.i146.2.i:                                  ; preds = %bb.co, %.lr.ph.preheader.i144.2.i
  %indvars.iv.i147.2.i = phi i64 [ 1, %.lr.ph.preheader.i144.2.i ], [ %indvars.iv.next.i148.2.i, %bb.co ] ; 4 uses
  %i.ahm = add nsw i64 %indvars.iv.i147.2.i, -1   ; 2 uses
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.ahm
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !24 ; 3 uses
  %i.ahp = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.aho
  br i1 %i.ahp, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i146.2.i
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.2.i
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !24 ; 2 uses
  %i.ahs = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.ahr
  br i1 %i.ahs, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %indvars.iv.i147.2.i
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !24
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.act, i64 %i.ahm
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !24 ; 2 uses
  %i.ahx = fsub reassoc nsz arcp contract afn float %i.ahu, %i.ahw
  %i.ahy = fsub reassoc nsz arcp contract afn float %i.ahr, %i.aho
  %i.ahz = fsub reassoc nsz arcp contract afn float %i.adt, %i.aho
  %i.aia = fmul reassoc nsz arcp contract afn float %i.ahx, %i.ahz
  %i.aib = fdiv reassoc nsz arcp contract afn float %i.aia, %i.ahy
  %i.aic = fadd reassoc nsz arcp contract afn float %i.aib, %i.ahw
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i

bb.co:                                            ; preds = %bb.cm, %.lr.ph.i146.2.i
  %indvars.iv.next.i148.2.i = add nuw nsw i64 %indvars.iv.i147.2.i, 1 ; 2 uses
  %exitcond.not.i149.2.i = icmp eq i64 %indvars.iv.next.i148.2.i, %wide.trip.count.i145.2.i
  br i1 %exitcond.not.i149.2.i, label %._crit_edge.i142.2.i, label %.lr.ph.i146.2.i, !llvm.loop !199

._crit_edge.i142.2.i:                             ; preds = %bb.co, %.preheader.i141.2.i
  %i.aid = sext i32 %i.ahi to i64
  %i.aie = getelementptr [4 x i8], ptr %i.act, i64 %i.aid
  %i.aif = getelementptr i8, ptr %i.aie, i64 -4
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i

bb.cp:                                            ; preds = %bb.cl
  %i.aih = load float, ptr %i.act, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i: ; preds = %bb.cp, %._crit_edge.i142.2.i, %bb.cn
  %.1.i143.2.i = phi nsz float [ %i.aih, %bb.cp ], [ %i.aig, %._crit_edge.i142.2.i ], [ %i.aic, %bb.cn ] ; 2 uses
  %i.aii = fmul reassoc nsz arcp contract afn float %.1.i143.2.i, %i.adp
  %i.aij = fadd reassoc nsz arcp contract afn float %i.aii, %i.xu
  %i.aik = load i32, ptr %4, align 4, !tbaa !170
  %i.ail = sitofp reassoc nsz arcp contract afn i32 %i.aik to float
  %i.aim = fsub reassoc nsz arcp contract afn float %i.aij, %i.ail ; 3 uses
  %i.ain = fcmp reassoc nsz arcp contract afn ogt float %i.aim, %i.aca
  br i1 %i.ain, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i
  %i.aio = fcmp reassoc nsz arcp contract afn olt float %i.aim, 0.000000e+00
  br i1 %i.aio, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i
  %i.aip = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.cq ], [ %i.aim, %bb.cr ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i ]
  %i.aiq = fmul reassoc nsz arcp contract afn float %.1.i143.2.i, %i.adr
  %i.air = fadd reassoc nsz arcp contract afn float %i.aiq, %i.xv
  %i.ais = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.ait = sitofp reassoc nsz arcp contract afn i32 %i.ais to float
  %i.aiu = fsub reassoc nsz arcp contract afn float %i.air, %i.ait ; 3 uses
  %i.aiv = fcmp reassoc nsz arcp contract afn ogt float %i.aiu, %i.ace
  br i1 %i.aiv, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aiw = fcmp reassoc nsz arcp contract afn olt float %i.aiu, 0.000000e+00
  br i1 %i.aiw, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.aix = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.ct ], [ %i.aiu, %bb.cu ], [ %i.ace, %bb.cs ]
  %i.aiy = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.aiz = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.aja = shl nsw i32 %i.aiy, 2
  %i.ajb = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acu, float noundef %i.aip, float noundef %i.aix, i32 noundef %i.aiy, i32 noundef %i.aiz, i32 noundef 4, i32 noundef %i.aja)
  %gep21.2.i = getelementptr i8, ptr %invariant.gep20.i, i64 8
  store float %i.ajb, ptr %gep21.2.i, align 4, !tbaa !24
  %i.ajc = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.ajd = load float, ptr %i.acj, align 4, !tbaa !24
  %i.aje = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.ajd
  br i1 %i.aje, label %bb.cz, label %.preheader.i141.3.i

.preheader.i141.3.i:                              ; preds = %bb.cv
  %i.ajf = icmp sgt i32 %i.ajc, 1
  br i1 %i.ajf, label %.lr.ph.preheader.i144.3.i, label %._crit_edge.i142.3.i

.lr.ph.preheader.i144.3.i:                        ; preds = %.preheader.i141.3.i
  %wide.trip.count.i145.3.i = zext nneg i32 %i.ajc to i64
  br label %.lr.ph.i146.3.i

.lr.ph.i146.3.i:                                  ; preds = %bb.cy, %.lr.ph.preheader.i144.3.i
  %indvars.iv.i147.3.i = phi i64 [ 1, %.lr.ph.preheader.i144.3.i ], [ %indvars.iv.next.i148.3.i, %bb.cy ] ; 4 uses
  %i.ajg = add nsw i64 %indvars.iv.i147.3.i, -1   ; 2 uses
  %i.ajh = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.ajg
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !24 ; 3 uses
  %i.ajj = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.aji
  br i1 %i.ajj, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i146.3.i
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.3.i
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !24 ; 2 uses
  %i.ajm = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.ajl
  br i1 %i.ajm, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv.i147.3.i
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !24
  %i.ajp = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.ajg
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !24 ; 2 uses
  %i.ajr = fsub reassoc nsz arcp contract afn float %i.ajo, %i.ajq
  %i.ajs = fsub reassoc nsz arcp contract afn float %i.ajl, %i.aji
  %i.ajt = fsub reassoc nsz arcp contract afn float %i.adt, %i.aji
  %i.aju = fmul reassoc nsz arcp contract afn float %i.ajr, %i.ajt
  %i.ajv = fdiv reassoc nsz arcp contract afn float %i.aju, %i.ajs
  %i.ajw = fadd reassoc nsz arcp contract afn float %i.ajv, %i.ajq
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i

bb.cy:                                            ; preds = %bb.cw, %.lr.ph.i146.3.i
  %indvars.iv.next.i148.3.i = add nuw nsw i64 %indvars.iv.i147.3.i, 1 ; 2 uses
  %exitcond.not.i149.3.i = icmp eq i64 %indvars.iv.next.i148.3.i, %wide.trip.count.i145.3.i
  br i1 %exitcond.not.i149.3.i, label %._crit_edge.i142.3.i, label %.lr.ph.i146.3.i, !llvm.loop !199

._crit_edge.i142.3.i:                             ; preds = %bb.cy, %.preheader.i141.3.i
  %i.ajx = sext i32 %i.ajc to i64
  %i.ajy = getelementptr [4 x i8], ptr %i.acq, i64 %i.ajx
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 -4
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i

bb.cz:                                            ; preds = %bb.cv
  %i.akb = load float, ptr %i.acq, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i: ; preds = %bb.cz, %._crit_edge.i142.3.i, %bb.cx
  %.1.i143.3.i = phi nsz float [ %i.akb, %bb.cz ], [ %i.aka, %._crit_edge.i142.3.i ], [ %i.ajw, %bb.cx ] ; 2 uses
  %i.akc = fmul reassoc nsz arcp contract afn float %.1.i143.3.i, %i.adp
  %i.akd = fadd reassoc nsz arcp contract afn float %i.akc, %i.xu
  %i.ake = load i32, ptr %4, align 4, !tbaa !170
  %i.akf = sitofp reassoc nsz arcp contract afn i32 %i.ake to float
  %i.akg = fsub reassoc nsz arcp contract afn float %i.akd, %i.akf ; 3 uses
  %i.akh = fcmp reassoc nsz arcp contract afn ogt float %i.akg, %i.aca
  br i1 %i.akh, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i
  %i.aki = fcmp reassoc nsz arcp contract afn olt float %i.akg, 0.000000e+00
  br i1 %i.aki, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i
  %i.akj = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.da ], [ %i.akg, %bb.db ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i ]
  %i.akk = fmul reassoc nsz arcp contract afn float %.1.i143.3.i, %i.adr
  %i.akl = fadd reassoc nsz arcp contract afn float %i.akk, %i.xv
  %i.akm = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.akn = sitofp reassoc nsz arcp contract afn i32 %i.akm to float
  %i.ako = fsub reassoc nsz arcp contract afn float %i.akl, %i.akn ; 3 uses
  %i.akp = fcmp reassoc nsz arcp contract afn ogt float %i.ako, %i.ace
  br i1 %i.akp, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.akq = fcmp reassoc nsz arcp contract afn olt float %i.ako, 0.000000e+00
  br i1 %i.akq, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.akr = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.dd ], [ %i.ako, %bb.de ], [ %i.ace, %bb.dc ]
  %i.aks = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.akt = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.aku = shl nsw i32 %i.aks, 2
  %i.akv = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acv, float noundef %i.akj, float noundef %i.akr, i32 noundef %i.aks, i32 noundef %i.akt, i32 noundef 4, i32 noundef %i.aku)
  %gep21.3.i = getelementptr i8, ptr %invariant.gep20.i, i64 12
  store float %i.akv, ptr %gep21.3.i, align 4, !tbaa !24
  %i.akw = add nuw nsw i32 %.013223.i, 1          ; 2 uses
  %i.akx = load i32, ptr %i.aci, align 4, !tbaa !162 ; 3 uses
  %i.aky = icmp slt i32 %i.akw, %i.akx
  br i1 %i.aky, label %.lr.ph.i62, label %._crit_edge.loopexit.i, !llvm.loop !204

bb.dg:                                            ; preds = %._crit_edge25.i
  tail call void @free(ptr noundef %.0.i) #30
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.dh:                                            ; preds = %_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %.0, i64 noundef 4, ptr noundef %4, ptr noundef %5)
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit: ; preds = %bb.dg, %._crit_edge25.i, %bb.bi, %.loopexit250.i, %bb.o, %bb.dh
  %.not50 = icmp eq ptr %.0, %2
  br i1 %.not50, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit
  call void @free(ptr noundef %.0) #30
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 492
  %.val.val = load float, ptr %i.d, align 4, !tbaa !156
  store float 4.500000e+00, ptr %4, align 4, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.500000e+00, ptr %i.e, align 4, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.g, align 4, !tbaa !209
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.h, align 4, !tbaa !210
  %i.i = fcmp reassoc nsz arcp contract afn une float %.val.val, 0.000000e+00
  br i1 %i.i, label %bb.c, label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.c:                                             ; preds = %bb.b
  store float 5.500000e+00, ptr %4, align 4, !tbaa !205
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.d:                                             ; preds = %bb.a
  store float 4.500000e+00, ptr %4, align 4, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.500000e+00, ptr %i.j, align 4, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.l, align 4, !tbaa !209
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.m, align 4, !tbaa !210
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.e:                                             ; preds = %bb.a
  store float 2.000000e+00, ptr %4, align 4, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 4, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.p, align 4, !tbaa !209
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.q, align 4, !tbaa !210
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @distort_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x float], align 64             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !81  ; 15 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !174
  switch i32 %i.d, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit [
    i32 1, label %bb.b
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176, !noalias !211 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177, !noalias !211
  %.not27.i = icmp eq ptr %i.g, null
  br i1 %.not27.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !186, !noalias !211
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.e, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load <2 x i32>, ptr %i.k, align 16, !tbaa !38, !noalias !211
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !187, !noalias !211
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.p), !noalias !211
  %i.r = extractelement <2 x float> %i.m, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.m, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !197, !noalias !211 ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !211 ; 6 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !176, !noalias !211
  %i.z = load float, ptr %i.h, align 8, !tbaa !186, !noalias !211
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.y, float noundef %i.z, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f, !noalias !211

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !211
  resume { ptr, i32 } %i.aa

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %.not28.i = icmp eq i32 %i.q, 0
  %i.ab = select i1 %.not28.i, i32 -1, i32 -2
  %i.ac = and i32 %i.w, 3
  %i.ad = shl i32 %i.w, 1
  %i.ae = and i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = or disjoint i32 %i.af, 48
  %i.ah = and i32 %i.ag, %i.ab
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !176, !noalias !211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !214, !noalias !211
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.am = load float, ptr %i.al, align 8, !tbaa !215, !noalias !211
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !216, !noalias !211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !217, !noalias !211
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !218, !noalias !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !188, !noalias !211
  %.not23.i.i = icmp eq i32 %i.au, 0
  %i.av = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ai, i32 noundef 3, float noundef %i.ak, float noundef %i.am, float noundef %i.ao, float noundef %i.aq, i32 noundef %i.as, i32 noundef %i.ah, i1 noundef zeroext %.not23.i.i), !noalias !211
  %i.aw = and i32 %i.av, 57
  %.not29.i = icmp eq i32 %i.aw, 0
  br i1 %.not29.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.ax = shl i64 %3, 1                           ; 2 uses
  %.not31.i = icmp eq i64 %i.ax, 0
  br i1 %.not31.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.030.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@distort_mask:bb.a
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fsub reassoc nsz arcp contract afn float %.pre9.i, %i.ce ; 3 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cb, %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.bb, align 4, !tbaa !162 ; 2 uses
  %i.cj = load i32, ptr %i.bc, align 4, !tbaa !163
  %i.ck = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef 1, i32 noundef %i.ci)
  %i.cl = fcmp reassoc nsz arcp contract afn ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.bb, align 4, !tbaa !162 ; 2 uses
  %i.cn = load i32, ptr %i.bc, align 4, !tbaa !163
  %i.co = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 1, i32 noundef %i.cm)
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.co, 1.000000e+00
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %i.bb, align 4, !tbaa !162 ; 2 uses
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !163
  %i.cs = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 1, i32 noundef %i.cq)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %storemerge.i = phi float [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.cs, %bb.n ], [ 0.000000e+00, %bb.l ]
  store float %storemerge.i, ptr %.0722.i, align 4, !tbaa !24
  %i.ct = add nuw nsw i32 %.0713.i, 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0731.i, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0722.i, i64 4
  %i.cw = load i32, ptr %i.ap, align 4, !tbaa !162 ; 2 uses
  %i.cx = icmp slt i32 %i.ct, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !228

bb.p:                                             ; preds = %._crit_edge7.i, %bb.g
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ad) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 96) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.q:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !196
  %.not.i19 = icmp eq i32 %i.cz, 0
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !197
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !162
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !163
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, %i.df
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.dj)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !198
  %i.dm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.do = load float, ptr %i.dn, align 4, !tbaa !169
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 5.000000e-01
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dr = load <2 x i32>, ptr %i.dq, align 16, !tbaa !38
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.du, %i.ds ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !162
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.dy to float ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float ; 2 uses
  %i.ee = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !163 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader.lr.ph.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !162 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.preheader.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.eo = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.ep = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.eo, float noundef %i.ep) #32
  %i.er = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eq
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i20, %.preheader.preheader.i
  %i.es = phi i32 [ %i.ew, %._crit_edge.i20 ], [ %i.eg, %.preheader.preheader.i ]
  %i.et = phi i32 [ %i.ex, %._crit_edge.i20 ], [ %i.em, %.preheader.preheader.i ] ; 2 uses
  %.08.i = phi i32 [ %i.ey, %._crit_edge.i20 ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i21.preheader, label %._crit_edge.i20

.lr.ph.i21.preheader:                             ; preds = %.preheader.i
  %i.ev = insertelement <2 x i32> poison, i32 %.08.i, i64 1
  br label %.lr.ph.i21

._crit_edge.loopexit.i:                           ; preds = %bb.ag
  %.pre.i22 = load i32, ptr %i.ef, align 4, !tbaa !163
  br label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ew = phi i32 [ %.pre.i22, %._crit_edge.loopexit.i ], [ %i.es, %.preheader.i ] ; 2 uses
  %i.ex = phi i32 [ %i.hn, %._crit_edge.loopexit.i ], [ %i.et, %.preheader.i ]
  %i.ey = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.ew
  br i1 %i.ez, label %.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit, !llvm.loop !229

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %bb.ag
  %.0887.i = phi i32 [ %i.hs, %bb.ag ], [ 0, %.lr.ph.i21.preheader ] ; 3 uses
  %i.fa = load <2 x i32>, ptr %5, align 4, !tbaa !38
  %i.fb = insertelement <2 x i32> %i.ev, i32 %.0887.i, i64 0
  %i.fc = add nsw <2 x i32> %i.fa, %i.fb
  %i.fd = sitofp <2 x i32> %i.fc to <2 x float>
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.fd, %i.dv ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.dm ; 2 uses
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.dm ; 2 uses
  %i.fj = load i32, ptr %i.cy, align 8, !tbaa !196 ; 3 uses
  %i.fk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.fg, float noundef %i.fi) #32
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.er ; 4 uses
  %i.fm = load float, ptr %i.ej, align 4, !tbaa !24
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.fl, %i.fm
  br i1 %i.fn, label %bb.u, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i21
  %i.fo = icmp sgt i32 %i.fj, 1
  br i1 %i.fo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fj to i64
  br label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i21
  %i.fp = load float, ptr %i.ek, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 4 uses
  %i.fq = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24 ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ult float %i.fl, %i.fs
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !24 ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ugt float %i.fl, %i.fv
  br i1 %i.fw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !199

bb.x:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !24
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fq
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !24 ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fy, %i.ga
  %i.gc = fsub reassoc nsz arcp contract afn float %i.fv, %i.fs
  %i.gd = fsub reassoc nsz arcp contract afn float %i.fl, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gb, %i.gd
  %i.gf = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gc
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, %i.ga
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.i.i:                                  ; preds = %bb.w, %.preheader.i.i
  %i.gh = sext i32 %i.fj to i64
  %i.gi = getelementptr [4 x i8], ptr %i.ek, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 -4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %._crit_edge.i.i, %bb.x, %bb.u
  %.1.i.i = phi nsz float [ %i.fp, %bb.u ], [ %i.gk, %._crit_edge.i.i ], [ %i.gg, %bb.x ] ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %.1.i.i, %i.fg
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gl, %i.eo
  %i.gn = load i32, ptr %4, align 4, !tbaa !170
  %i.go = sitofp reassoc nsz arcp contract afn i32 %i.gn to float
  %i.gp = fsub reassoc nsz arcp contract afn float %i.gm, %i.go ; 3 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gp, %i.dz
  br i1 %i.gq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gr = fcmp reassoc nsz arcp contract afn olt float %i.gp, 0.000000e+00
  br i1 %i.gr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gs = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.y ], [ %i.gp, %bb.z ], [ %i.dz, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %.1.i.i, %i.fi
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.ep
  %i.gv = load i32, ptr %i.el, align 4, !tbaa !171
  %i.gw = sitofp reassoc nsz arcp contract afn i32 %i.gv to float
  %i.gx = fsub reassoc nsz arcp contract afn float %i.gu, %i.gw ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gx, %i.ed
  br i1 %i.gy, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = fcmp reassoc nsz arcp contract afn olt float %i.gx, 0.000000e+00
  br i1 %i.gz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ha = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.ab ], [ %i.gx, %bb.ac ], [ %i.ed, %bb.aa ] ; 3 uses
  %i.hb = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hc = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hd = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.hc, i32 noundef 1, i32 noundef %i.hb)
  %i.he = fcmp reassoc nsz arcp contract afn ult float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hf = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hg = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hh = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hf, i32 noundef %i.hg, i32 noundef 1, i32 noundef %i.hf)
  %i.hi = fcmp reassoc nsz arcp contract afn ugt float %i.hh, 1.000000e+00
  br i1 %i.hi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hk = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hl = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hj, i32 noundef %i.hk, i32 noundef 1, i32 noundef %i.hj)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hm = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ae ], [ %i.hl, %bb.af ], [ 0.000000e+00, %bb.ad ]
  %i.hn = load i32, ptr %i.ei, align 4, !tbaa !162 ; 3 uses
  %i.ho = mul nsw i32 %i.hn, %.08.i
  %i.hp = add nsw i32 %i.ho, %.0887.i
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hq
  store float %i.hm, ptr %i.hr, align 4, !tbaa !24
  %i.hs = add nuw nsw i32 %.0887.i, 1             ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.hn
  br i1 %i.ht, label %.lr.ph.i21, label %._crit_edge.loopexit.i, !llvm.loop !230

bb.ah:                                            ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit: ; preds = %._crit_edge.i20, %.preheader.lr.ph.i, %bb.t, %bb.s, %bb.p, %bb.e, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 23 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull readonly align 4 dereferenceable(20) %2, i64 20, i1 false)
  switch i32 %i.c, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit [
    i32 1, label %bb.b
    i32 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177
  %.not224.i = icmp eq ptr %i.f, null
  br i1 %.not224.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !186 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load <2 x i32>, ptr %i.l, align 16, !tbaa !38
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n ; 8 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !197  ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 9 uses
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull %i.e, float noundef %i.h, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33
  resume { ptr, i32 } %i.y

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %i.z = and i32 %i.w, 3
  %i.aa = shl i32 %i.w, 1
  %i.ab = and i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = or disjoint i32 %i.ac, 48
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ag = load float, ptr %i.af, align 4, !tbaa !214
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !216
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !217
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !218
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !188
  %.not23.i.i = icmp ne i32 %i.aq, 0
  %i.ar = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ae, i32 noundef 3, float noundef %i.ag, float noundef %i.ai, float noundef %i.ak, float noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ad, i1 noundef zeroext %.not23.i.i)
  %i.as = and i32 %i.ar, 57
  %.not225.i = icmp eq i32 %i.as, 0
  br i1 %.not225.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.at = load i32, ptr %3, align 4, !tbaa !170   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !171 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !163 ; 4 uses
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true) ; 3 uses
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true) ; 3 uses
  %.inv.i = icmp sgt i32 %i.ax, -1
  %i.bc = select i1 %.inv.i, i32 1, i32 -1        ; 2 uses
  %.inv226.i = icmp sgt i32 %i.az, -1
  %i.bd = select i1 %.inv226.i, i32 1, i32 -1     ; 2 uses
  %i.be = shl nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bf = add nuw i32 %i.bb, %i.ba                ; 2 uses
  %i.bg = shl nuw i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.bi) ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %.not27.i = icmp eq i32 %i.ax, 0
  br i1 %.not27.i, label %.preheader5.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %wide.trip.count.i = zext nneg i32 %i.ba to i64 ; 3 uses
  br label %bb.h

.lr.ph9.i:                                        ; preds = %bb.h
  %i.bl = add i32 %i.av, -1
  %i.bm = add i32 %i.bl, %i.az
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.bo = trunc i64 %indvars.iv.i to i32
  %i.bp = mul i32 %i.bc, %i.bo
  %i.bq = add i32 %i.bp, %i.at
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %.idx53.i = mul nuw nsw i64 %indvars.iv.i, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx53.i
  %i.bt = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.br, float noundef %i.bk, i32 noundef 1, i32 noundef 1, ptr noundef %i.bs) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph9.i, label %bb.h, !llvm.loop !231

.preheader5.i:                                    ; preds = %bb.i, %bb.g
  %.not29.i = icmp eq i32 %i.az, 0
  br i1 %.not29.i, label %.preheader3.i, label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.preheader5.i
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.bv = zext nneg i32 %i.be to i64
  %wide.trip.count44.i = zext nneg i32 %i.bb to i64 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph9.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next37.i, %bb.i ] ; 3 uses
  %i.bw = trunc i64 %indvars.iv36.i to i32
  %i.bx = mul i32 %i.bc, %i.bw
  %i.by = add i32 %i.bx, %i.at
  %i.bz = sitofp reassoc nsz arcp contract afn i32 %i.by to float
  %i.ca = add nuw nsw i64 %indvars.iv36.i, %wide.trip.count.i
  %.idx54.i = mul nuw nsw i64 %i.ca, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx54.i
end_hunk_1
begin_hunk_2_@commit_params:bb.a
  %exitcond.not.i.i69.i = icmp eq i64 %indvars.iv.next.i.i68.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i.i69.i, label %._crit_edge.i.i63.i, label %.lr.ph.i.i66.i, !llvm.loop !199

bb.bk:                                            ; preds = %bb.bi
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i67.i
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !24
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rp
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !24 ; 2 uses
  %i.sa = fsub reassoc nsz arcp contract afn float %i.rx, %i.rz
  %i.sb = fsub reassoc nsz arcp contract afn float %i.ru, %i.rr
  %i.sc = fsub reassoc nsz arcp contract afn float %i.rn, %i.rr
  %i.sd = fmul reassoc nsz arcp contract afn float %i.sa, %i.sc
  %i.se = fdiv reassoc nsz arcp contract afn float %i.sd, %i.sb
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.rz
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i

._crit_edge.i.i63.i:                              ; preds = %bb.bj, %.preheader.i.i.i
  %i.sg = load float, ptr %i.pu, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i: ; preds = %._crit_edge.i.i63.i, %bb.bk, %bb.bh
  %.1.i.i65.i = phi nsz float [ %i.sf, %bb.bk ], [ %i.sg, %._crit_edge.i.i63.i ], [ %i.pq, %bb.bh ] ; 5 uses
  %i.sh = fdiv reassoc nsz arcp contract afn float %i.rn, %.1.i.i65.i
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv564.i.i
  store float %i.sh, ptr %i.si, align 4, !tbaa !24
  br i1 %.not380.i.i, label %bb.bl, label %.preheader435.i.i

.preheader435.i.i:                                ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i
  %invariant.gep474.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i ; 3 uses
  store float %.1.i.i65.i, ptr %invariant.gep474.i.i, align 4, !tbaa !24
  %gep475.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep474.i.i, i64 64
  store float %.1.i.i65.i, ptr %gep475.1.i.i, align 4, !tbaa !24
  %gep475.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep474.i.i, i64 128
  store float %.1.i.i65.i, ptr %gep475.2.i.i, align 4, !tbaa !24
  br label %.critedge396.i.i

bb.bl:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sj, align 4, !tbaa !24
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sk, align 4, !tbaa !24
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sl, align 4, !tbaa !24
  br label %.critedge396.i.i

.critedge396.i.i:                                 ; preds = %bb.bl, %.preheader435.i.i
  %i.sm = phi float [ %.1.i.i65.i, %.preheader435.i.i ], [ 1.000000e+00, %bb.bl ] ; 2 uses
  br i1 %.not381.i.i, label %.critedge397.i.i, label %bb.bm

bb.bm:                                            ; preds = %.critedge396.i.i
  br i1 %i.ro, label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, label %.preheader.i401.i.i

.preheader.i401.i.i:                              ; preds = %bb.bm
  br i1 %i.ps, label %.lr.ph.i406.i.i, label %._crit_edge.i402.i.i

.lr.ph.i406.i.i:                                  ; preds = %.preheader.i401.i.i, %bb.bo
  %indvars.iv.i407.i.i = phi i64 [ %indvars.iv.next.i408.i.i, %bb.bo ], [ 1, %.preheader.i401.i.i ] ; 4 uses
  %i.sn = add nsw i64 %indvars.iv.i407.i.i, -1    ; 2 uses
  %i.so = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !24 ; 3 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.sp
  br i1 %i.sq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i406.i.i
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i407.i.i
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !24 ; 2 uses
  %i.st = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.ss
  br i1 %i.st, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i406.i.i
  %indvars.iv.next.i408.i.i = add nuw nsw i64 %indvars.iv.i407.i.i, 1 ; 2 uses
  %exitcond.not.i409.i.i = icmp eq i64 %indvars.iv.next.i408.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i409.i.i, label %._crit_edge.i402.i.i, label %.lr.ph.i406.i.i, !llvm.loop !199

bb.bp:                                            ; preds = %bb.bn
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i407.i.i
  %i.sv = load float, ptr %i.su, align 4, !tbaa !24
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.sn
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !24 ; 2 uses
  %i.sy = fsub reassoc nsz arcp contract afn float %i.sv, %i.sx
  %i.sz = fsub reassoc nsz arcp contract afn float %i.ss, %i.sp
  %i.ta = fsub reassoc nsz arcp contract afn float %i.rn, %i.sp
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sy, %i.ta
  %i.tc = fdiv reassoc nsz arcp contract afn float %i.tb, %i.sz
  %i.td = fadd reassoc nsz arcp contract afn float %i.tc, %i.sx
  br label %.preheader.i411.i.i

._crit_edge.i402.i.i:                             ; preds = %bb.bo, %.preheader.i401.i.i
  %i.te = load float, ptr %i.py, align 4, !tbaa !24
  br label %.preheader.i411.i.i

.preheader.i411.i.i:                              ; preds = %._crit_edge.i402.i.i, %bb.bp
  %.1.i403.i.i = phi nsz float [ %i.td, %bb.bp ], [ %i.te, %._crit_edge.i402.i.i ] ; 2 uses
  br i1 %i.ps, label %.lr.ph.i416.i.i, label %._crit_edge.i412.i.i

.lr.ph.i416.i.i:                                  ; preds = %.preheader.i411.i.i, %bb.br
  %indvars.iv.i417.i.i = phi i64 [ %indvars.iv.next.i418.i.i, %bb.br ], [ 1, %.preheader.i411.i.i ] ; 4 uses
  %i.tf = add nsw i64 %indvars.iv.i417.i.i, -1    ; 2 uses
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !24 ; 3 uses
  %i.ti = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.th
  br i1 %i.ti, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i416.i.i
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i417.i.i
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !24 ; 2 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.tk
  br i1 %i.tl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i416.i.i
  %indvars.iv.next.i418.i.i = add nuw nsw i64 %indvars.iv.i417.i.i, 1 ; 2 uses
  %exitcond.not.i419.i.i = icmp eq i64 %indvars.iv.next.i418.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i419.i.i, label %._crit_edge.i412.i.i, label %.lr.ph.i416.i.i, !llvm.loop !199

bb.bs:                                            ; preds = %bb.bq
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i417.i.i
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !24
  %i.to = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.tf
  %i.tp = load float, ptr %i.to, align 4, !tbaa !24 ; 2 uses
  %i.tq = fsub reassoc nsz arcp contract afn float %i.tn, %i.tp
  %i.tr = fsub reassoc nsz arcp contract afn float %i.tk, %i.th
  %i.ts = fsub reassoc nsz arcp contract afn float %i.rn, %i.th
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tq, %i.ts
  %i.tu = fdiv reassoc nsz arcp contract afn float %i.tt, %i.tr
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tu, %i.tp
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

._crit_edge.i412.i.i:                             ; preds = %bb.br, %.preheader.i411.i.i
  %i.tw = load float, ptr %i.qa, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i: ; preds = %._crit_edge.i412.i.i, %bb.bs, %bb.bm
  %.1.i403432.i.i = phi float [ %.1.i403.i.i, %bb.bs ], [ %.1.i403.i.i, %._crit_edge.i412.i.i ], [ %i.pp, %bb.bm ]
  %.1.i413.i.i = phi nsz float [ %i.tv, %bb.bs ], [ %i.tw, %._crit_edge.i412.i.i ], [ %i.po, %bb.bm ]
  %i.tx = fadd reassoc nsz arcp contract afn float %.1.i403432.i.i, 1.000000e+00
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tx, %i.sm
  store float %i.tz, ptr %i.ty, align 4, !tbaa !24
  %i.ua = fadd reassoc nsz arcp contract afn float %.1.i413.i.i, 1.000000e+00
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv564.i.i
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ua, %i.sm
  store float %i.uc, ptr %i.ub, align 4, !tbaa !24
  br label %.critedge397.i.i

.critedge397.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, %.critedge396.i.i
  %indvars.iv.next565.i.i = add nuw nsw i64 %indvars.iv564.i.i, 1 ; 2 uses
  %exitcond567.not.i.i = icmp eq i64 %indvars.iv.next565.i.i, 16
  br i1 %exitcond567.not.i.i, label %bb.bg, label %bb.bh, !llvm.loop !315

bb.bt:                                            ; preds = %bb.by, %.preheader438.i.i
  %indvars.iv547.i.i = phi i64 [ 0, %.preheader438.i.i ], [ %indvars.iv.next548.i.i, %bb.by ] ; 8 uses
  %i.ud = trunc nuw nsw i64 %indvars.iv547.i.i to i32
  %i.ue = uitofp nneg i32 %i.ud to float
  %i.uf = fmul reassoc nnan nsz arcp contract afn float %i.ue, f0x3D888889 ; 8 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv547.i.i
  store float %i.uf, ptr %i.ug, align 4, !tbaa !24
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv547.i.i
  store float %i.uf, ptr %i.uh, align 4, !tbaa !24
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.ui, align 4, !tbaa !24
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.uj, align 4, !tbaa !24
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv547.i.i ; 3 uses
  store float 1.000000e+00, ptr %i.uk, align 4, !tbaa !24
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.ul, align 4, !tbaa !24
  %square374.i.i = fmul reassoc nnan nsz arcp contract afn float %i.uf, %i.uf ; 2 uses
  %i.um = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 4) ; 2 uses
  %i.un = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 6) ; 2 uses
  %i.uo = load i32, ptr %i.ks, align 4, !tbaa !59
  %.not375.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not375.i.i, label %._crit_edge.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.up = load i32, ptr %i.t, align 4, !tbaa !267
  %i.uq = and i32 %i.up, 5
  %.not376.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not376.i.i, label %._crit_edge.thread.i.i, label %.preheader437.i.i

.preheader437.i.i:                                ; preds = %bb.bu
  %i.ur = load i32, ptr %i.kp, align 4, !tbaa !59
  %i.us = icmp sgt i32 %i.ur, 0
  br i1 %i.us, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader437.i.i
  %i.ut = insertelement <2 x float> poison, float %i.um, i64 0
  %i.uu = insertelement <2 x float> %i.ut, float %i.un, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.uv = icmp eq i32 %i.vk, 1
  br i1 %i.uv, label %bb.bv, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv544.i.i = phi i64 [ %indvars.iv.next545.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.uw = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv544.i.i ; 3 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !59
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !59
  %i.va = fmul reassoc nsz arcp contract afn float %i.uz, %square374.i.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vc = load <2 x float>, ptr %i.vb, align 4, !tbaa !59
  %i.vd = fmul reassoc nsz arcp contract afn <2 x float> %i.vc, %i.uu ; 2 uses
  %5 = load float, ptr %i.el, align 4, !tbaa !300
  %6 = fadd reassoc nsz arcp contract afn float %i.ux, -1.000000e+00
  %i.ve = fadd reassoc nsz arcp contract afn float %6, %i.va
  %i.vf = extractelement <2 x float> %i.vd, i64 0
  %i.vg = fadd reassoc nsz arcp contract afn float %i.ve, %i.vf
  %7 = extractelement <2 x float> %i.vd, i64 1
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, %7
  %i.vi = fmul reassoc nsz arcp contract afn float %i.vh, %5
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, 1.000000e+00
  %gep.i.i = getelementptr inbounds nuw [64 x i8], ptr %i.uk, i64 %indvars.iv544.i.i
  store float %i.vj, ptr %gep.i.i, align 4, !tbaa !24
  %indvars.iv.next545.i.i = add nuw nsw i64 %indvars.iv544.i.i, 1 ; 2 uses
  %i.vk = load i32, ptr %i.kp, align 4, !tbaa !59 ; 2 uses
  %i.vl = sext i32 %i.vk to i64
  %i.vm = icmp slt i64 %indvars.iv.next545.i.i, %i.vl
  br i1 %i.vm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !316

bb.bv:                                            ; preds = %._crit_edge.i.i
  %i.vn = load float, ptr %i.uk, align 4, !tbaa !24 ; 2 uses
  store float %i.vn, ptr %i.uj, align 4, !tbaa !24
  store float %i.vn, ptr %i.ui, align 4, !tbaa !24
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bv, %._crit_edge.i.i, %.preheader437.i.i, %bb.bu, %bb.bt
  %i.vo = load i32, ptr %i.ku, align 8, !tbaa !59
  %.not377.i.i = icmp eq i32 %i.vo, 0
  br i1 %.not377.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.thread.i.i
  %i.vp = load i32, ptr %i.t, align 4, !tbaa !267
  %i.vq = and i32 %i.vp, 2
  %.not378.i.i = icmp eq i32 %i.vq, 0
  br i1 %.not378.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vr = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 8)
  %i.vs = load <4 x float>, ptr %i.kv, align 8, !tbaa !59
  %i.vt = insertelement <4 x float> poison, float %square374.i.i, i64 0
  %i.vu = insertelement <4 x float> %i.vt, float %i.um, i64 1
  %i.vv = insertelement <4 x float> %i.vu, float %i.un, i64 2
  %i.vw = insertelement <4 x float> %i.vv, float %i.vr, i64 3
  %i.vx = fmul reassoc nsz arcp contract afn <4 x float> %i.vs, %i.vw
  %i.vy = load float, ptr %i.kw, align 8, !tbaa !59
  %i.vz = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 10)
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vy, %i.vz
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.wa, <4 x float> %i.vx)
  %i.wb = load float, ptr %i.en, align 4, !tbaa !306
  %i.wc = fmul reassoc nsz arcp contract afn float %op.rdx, %i.wb
  %i.wd = fadd reassoc nsz arcp contract afn float %i.wc, 1.000000e+00
  %i.we = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wd
  store float %i.we, ptr %i.ul, align 4, !tbaa !24
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.thread.i.i
  %indvars.iv.next548.i.i = add nuw nsw i64 %indvars.iv547.i.i, 1 ; 2 uses
  %exitcond550.not.i.i = icmp eq i64 %indvars.iv.next548.i.i, 16
  br i1 %exitcond550.not.i.i, label %.loopexit.i.i, label %bb.bt, !llvm.loop !317

bb.bz:                                            ; preds = %bb.aw
  %i.wf = load i32, ptr %i.kp, align 4, !tbaa !59
  %.not.i.i = icmp eq i32 %i.wf, 0
  br i1 %.not.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wg = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.wh = load <4 x float>, ptr %i.wg, align 8, !tbaa !59
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.wi = phi <4 x float> [ %i.wh, %bb.ca ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.bz ] ; 8 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.eh, i64 704
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !59
  %.not366.i.i = icmp eq i32 %i.wk, 0
  br i1 %.not366.i.i, label %vector.memcheck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wl = getelementptr inbounds nuw i8, ptr %i.eh, i64 708
  %i.wm = load <4 x float>, ptr %i.wl, align 4, !tbaa !59
  %i.wn = getelementptr inbounds nuw i8, ptr %i.eh, i64 724
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !59
  %i.wp = getelementptr inbounds nuw i8, ptr %i.eh, i64 728
  %i.wq = load float, ptr %i.wp, align 8, !tbaa !59
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.cc, %bb.cb
  %.0346.i.i = phi nsz float [ %i.wo, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %.0345.i.i = phi nsz float [ %i.wq, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %i.wr = phi <4 x float> [ %i.wm, %bb.cc ], [ zeroinitializer, %bb.cb ] ; 8 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.0, i64 312 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.ww = load i32, ptr %i.t, align 4, !tbaa !267 ; 2 uses
  %i.wx = and i32 %i.ww, 4
  %.not368.i.i = icmp ne i32 %i.wx, 0             ; 4 uses
  %.not369.i.i = trunc i32 %i.ww to i1            ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ee, i64 492
  %scevgep391 = getelementptr i8, ptr %.0, i64 320
  %bound0 = icmp ult ptr %i.kl, %scevgep391
  %bound1 = icmp ult ptr %i.el, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.memcheck
  %i.wy = extractelement <4 x float> %i.wi, i64 3 ; 2 uses
  %i.wz = extractelement <4 x float> %i.wi, i64 2
  %i.xa = extractelement <4 x float> %i.wi, i64 1
  %i.xb = extractelement <4 x float> %i.wi, i64 0
  %i.xc = extractelement <4 x float> %i.wr, i64 2
  %i.xd = extractelement <4 x float> %i.wr, i64 1
  %i.xe = extractelement <4 x float> %i.wr, i64 0
  %i.xf = extractelement <4 x float> %i.wr, i64 3
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert416 = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %broadcast.splat417 = shufflevector <8 x ptr> %broadcast.splatinsert416, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat415 = shufflevector <4 x float> %i.wi, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat413 = shufflevector <4 x float> %i.wi, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat411 = shufflevector <4 x float> %i.wi, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat409 = shufflevector <4 x float> %i.wi, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %broadcast.splatinsert406 = insertelement <8 x ptr> poison, ptr %i.wv, i64 0
  %broadcast.splat407 = shufflevector <8 x ptr> %broadcast.splatinsert406, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert404 = insertelement <8 x ptr> poison, ptr %i.wu, i64 0
  %broadcast.splat405 = shufflevector <8 x ptr> %broadcast.splatinsert404, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert402 = insertelement <8 x float> poison, float %.0345.i.i, i64 0
  %broadcast.splat403 = shufflevector <8 x float> %broadcast.splatinsert402, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %.0346.i.i, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat399 = shufflevector <4 x float> %i.wr, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %broadcast.splat397 = shufflevector <4 x float> %i.wr, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat395 = shufflevector <4 x float> %i.wr, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat393 = shufflevector <4 x float> %i.wr, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xg = insertelement <8 x i1> poison, i1 %.not368.i.i, i64 0
  %i.xh = shufflevector <8 x i1> %i.xg, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.km, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.kl, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.xi = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat409, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 2 uses
  %i.xj = fmul reassoc nsz arcp contract afn <8 x float> %i.xi, %i.xi ; 3 uses
  %i.xk = fmul reassoc nsz arcp contract afn <8 x float> %i.xj, %broadcast.splat411
  %i.xl = fadd reassoc nsz arcp contract afn <8 x float> %i.xk, %broadcast.splat413
  %i.xm = fmul reassoc nsz arcp contract afn <8 x float> %i.xl, %i.xj
  %i.xn = fadd reassoc nsz arcp contract afn <8 x float> %i.xm, %broadcast.splat415
  %i.xo = fmul reassoc nsz arcp contract afn <8 x float> %i.xn, %i.xj
  %i.xp = fadd reassoc nsz arcp contract afn <8 x float> %i.xo, splat (float 1.000000e+00)
  %i.xq = fmul reassoc nsz arcp contract afn <8 x float> %i.xp, %broadcast.splat409
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat417, <8 x i1> %i.xh, <8 x float> poison), !tbaa !300, !alias.scope !321
  %i.xr = fadd reassoc nsz arcp contract afn <8 x float> %i.xq, splat (float -1.000000e+00)
  %i.xs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.xr
  %i.xt = fadd reassoc nsz arcp contract afn <8 x float> %i.xs, splat (float 1.000000e+00)
  %predphi = select i1 %.not368.i.i, <8 x float> %i.xt, <8 x float> splat (float 1.000000e+00) ; 6 uses
  store <8 x float> %predphi, ptr %i.ws, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> %predphi, ptr %i.wt, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> %predphi, ptr %i.kn, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.xu = select i1 %.not369.i.i, <8 x i1> <i1 false, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i1> zeroinitializer ; 4 uses
  %i.xv = fmul reassoc nsz arcp contract afn <8 x float> %predphi, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 4 uses
  %i.xw = fmul reassoc nsz arcp contract afn <8 x float> %i.xv, %i.xv ; 4 uses
  %wide.masked.gather418 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.xu, <8 x float> poison), !tbaa !304, !alias.scope !321
  %i.xx = fmul reassoc nsz arcp contract afn <8 x float> %i.xw, %broadcast.splat397
  %i.xy = fadd reassoc nsz arcp contract afn <8 x float> %i.xx, %broadcast.splat395
  %i.xz = fmul reassoc nsz arcp contract afn <8 x float> %i.xy, %i.xw
  %i.ya = fadd reassoc nsz arcp contract afn <8 x float> %i.xz, %broadcast.splat393
  %i.yb = fmul reassoc nsz arcp contract afn <8 x float> %i.ya, %i.xv
  %i.yc = fmul reassoc nsz arcp contract afn <8 x float> %i.yb, %wide.masked.gather418
  %i.yd = fdiv reassoc nsz arcp contract afn <8 x float> %i.yc, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.ye = fadd reassoc nsz arcp contract afn <8 x float> %i.yd, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ye, ptr align 4 %i.kn, <8 x i1> %i.xu), !tbaa !24, !alias.scope !318, !noalias !321
  %wide.masked.gather419 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat407, <8 x i1> %i.xu, <8 x float> poison), !tbaa !305, !alias.scope !321
  %i.yf = fmul reassoc nsz arcp contract afn <8 x float> %i.xw, %broadcast.splat403
  %i.yg = fadd reassoc nsz arcp contract afn <8 x float> %i.yf, %broadcast.splat401
  %i.yh = fmul reassoc nsz arcp contract afn <8 x float> %i.yg, %i.xw
  %i.yi = fadd reassoc nsz arcp contract afn <8 x float> %i.yh, %broadcast.splat399
  %i.yj = fmul reassoc nsz arcp contract afn <8 x float> %i.yi, %i.xv
  %i.yk = fmul reassoc nsz arcp contract afn <8 x float> %i.yj, %wide.masked.gather419
  %i.yl = fdiv reassoc nsz arcp contract afn <8 x float> %i.yk, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.ym = fadd reassoc nsz arcp contract afn <8 x float> %i.yl, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ym, ptr align 4 %i.ws, <8 x i1> %i.xu), !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> splat (float 1.000000e+00), ptr %i.ko, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ee, i64 204
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yn, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yo = getelementptr i8, ptr %i.ee, i64 140
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yo, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat409, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 2 uses
  %i.yq = fmul reassoc nsz arcp contract afn <8 x float> %i.yp, %i.yp ; 3 uses
  %i.yr = fmul reassoc nsz arcp contract afn <8 x float> %i.yq, %broadcast.splat411
  %i.ys = fadd reassoc nsz arcp contract afn <8 x float> %i.yr, %broadcast.splat413
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %i.ys, %i.yq
  %i.yu = fadd reassoc nsz arcp contract afn <8 x float> %i.yt, %broadcast.splat415
  %i.yv = fmul reassoc nsz arcp contract afn <8 x float> %i.yu, %i.yq
  %i.yw = fadd reassoc nsz arcp contract afn <8 x float> %i.yv, splat (float 1.000000e+00)
  %i.yx = fmul reassoc nsz arcp contract afn <8 x float> %i.yw, %broadcast.splat409
  %wide.masked.gather.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat417, <8 x i1> %i.xh, <8 x float> poison), !tbaa !300, !alias.scope !321
  %i.yy = fadd reassoc nsz arcp contract afn <8 x float> %i.yx, splat (float -1.000000e+00)
  %i.yz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather.1, %i.yy
  %i.za = fadd reassoc nsz arcp contract afn <8 x float> %i.yz, splat (float 1.000000e+00)
  %predphi.1 = select i1 %.not368.i.i, <8 x float> %i.za, <8 x float> splat (float 1.000000e+00) ; 6 uses
  %i.zb = getelementptr i8, ptr %i.ee, i64 396    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zb, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ee, i64 332
  store <8 x float> %predphi.1, ptr %i.zc, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.zd = getelementptr i8, ptr %i.ee, i64 268    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zd, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.ze = select i1 %.not369.i.i, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer ; 4 uses
  %i.zf = fmul reassoc nsz arcp contract afn <8 x float> %predphi.1, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 4 uses
  %i.zg = fmul reassoc nsz arcp contract afn <8 x float> %i.zf, %i.zf ; 4 uses
  %wide.masked.gather418.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.ze, <8 x float> poison), !tbaa !304, !alias.scope !321
  %i.zh = fmul reassoc nsz arcp contract afn <8 x float> %i.zg, %broadcast.splat397
  %i.zi = fadd reassoc nsz arcp contract afn <8 x float> %i.zh, %broadcast.splat395
end_hunk_2
begin_hunk_3_@_ZL18_init_coeffs_md_v1PK10dt_image_tPK20dt_iop_lens_params_tfPfS5_PA16_fS5_:bb.a
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat379, <8 x i1> %i.lc, <8 x float> poison), !tbaa !300, !alias.scope !517
  %i.lk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, splat (float f0x3C23D70A)
  %wide.masked.gather388 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat383, <8 x i1> %i.li, <8 x float> poison), !tbaa !306, !alias.scope !517
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 12 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index
  %wide.load = load <8 x float>, ptr %i.ll, align 4, !tbaa !59, !alias.scope !519
  %i.lm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat385 ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <8 x float> %i.lm, ptr %i.ln, align 4, !tbaa !24, !alias.scope !521, !noalias !523
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <8 x float> %i.lm, ptr %i.lo, align 4, !tbaa !24, !alias.scope !527, !noalias !528
  %i.lp = getelementptr [4 x i8], ptr %i.cb, i64 %index
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.lp, <8 x i1> %i.lc, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.lq = fmul reassoc nsz arcp contract afn <8 x float> %i.lk, %wide.masked.load
  %i.lr = fadd reassoc nsz arcp contract afn <8 x float> %i.lq, splat (float 1.000000e+00)
  %i.ls = fmul reassoc nsz arcp contract afn <8 x float> %i.lr, %broadcast.splat381
  %predphi = select i1 %.not205, <8 x float> %i.ls, <8 x float> %broadcast.splat381 ; 5 uses
  %i.lt = getelementptr [4 x i8], ptr %i.cc, i64 %index ; 2 uses
  store <8 x float> %predphi, ptr %i.lt, align 4, !tbaa !24, !alias.scope !529, !noalias !530
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index
  store <8 x float> %predphi, ptr %i.lu, align 4, !tbaa !24, !alias.scope !529, !noalias !530
  %i.lv = getelementptr [4 x i8], ptr %5, i64 %index ; 2 uses
  store <8 x float> %predphi, ptr %i.lv, align 4, !tbaa !24, !alias.scope !529, !noalias !530
  %i.lw = getelementptr [4 x i8], ptr %i.ce, i64 %index
  %wide.masked.load386 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.lw, <8 x i1> %i.le, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.lx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load386, splat (float 1.000000e+00)
  %i.ly = fmul reassoc nsz arcp contract afn <8 x float> %predphi, %i.lx
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ly, ptr align 4 %i.lv, <8 x i1> %i.le), !tbaa !24, !alias.scope !529, !noalias !530
  %i.lz = getelementptr [4 x i8], ptr %i.cf, i64 %index
  %wide.masked.load387 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.lz, <8 x i1> %i.le, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.ma = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load387, splat (float 1.000000e+00)
  %i.mb = fmul reassoc nsz arcp contract afn <8 x float> %predphi, %i.ma
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.mb, ptr align 4 %i.lt, <8 x i1> %i.le), !tbaa !24, !alias.scope !529, !noalias !530
  %i.mc = getelementptr [4 x i8], ptr %i.ci, i64 %index
  %wide.masked.load389 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mc, <8 x i1> %i.li, <8 x float> poison), !tbaa !59, !alias.scope !519
  %i.md = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load389, splat (float f0x3C23D70A)
  %i.me = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.md
  %i.mf = fmul reassoc nsz arcp contract afn <8 x float> %i.me, %wide.masked.gather388
  %i.mg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.mf ; 2 uses
  %i.mh = getelementptr [4 x i8], ptr %6, i64 %index ; 2 uses
  %i.mi = fmul reassoc nsz arcp contract afn <8 x float> %i.mg, %i.mg
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.mi, ptr align 4 %i.mh, <8 x i1> %i.li), !tbaa !24, !alias.scope !531, !noalias !532
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.mh, <8 x i1> %i.lj), !tbaa !24, !alias.scope !531, !noalias !532
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph230.split, %middle.block
  %indvars.iv247.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph230.split ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.critedge222
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %.critedge222 ], [ %indvars.iv247.ph, %scalar.ph.preheader ] ; 14 uses
  %i.mk = load float, ptr %i.by, align 8, !tbaa !59
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv247
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !59
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, %i.mk ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv247
  store float %i.mn, ptr %i.mo, align 4, !tbaa !24
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv247
  store float %i.mn, ptr %i.mp, align 4, !tbaa !24
  br i1 %.not205, label %bb.k, label %.critedge219

bb.k:                                             ; preds = %scalar.ph
  %i.mq = load float, ptr %i.ca, align 4, !tbaa !300
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv247
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !59
  %i.mt = fmul reassoc nsz arcp contract afn float %i.mq, f0x3C23D70A
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mt, %i.ms
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, 1.000000e+00
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %2
  br label %.critedge219

.critedge219:                                     ; preds = %scalar.ph, %bb.k
  %.sink293 = phi float [ %i.mw, %bb.k ], [ %2, %scalar.ph ] ; 5 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv247
  store float %.sink293, ptr %i.mx, align 4, !tbaa !24
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv247
  store float %.sink293, ptr %i.my, align 4, !tbaa !24
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv247 ; 2 uses
  store float %.sink293, ptr %i.mz, align 4, !tbaa !24
  br i1 %.not206, label %bb.l, label %.critedge220

bb.l:                                             ; preds = %.critedge219
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv247
  %i.nb = load float, ptr %i.na, align 4, !tbaa !59
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, 1.000000e+00
  %i.nd = fmul reassoc nsz arcp contract afn float %.sink293, %i.nc
  store float %i.nd, ptr %i.mz, align 4, !tbaa !24
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv247
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !59
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, 1.000000e+00
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv247
  %i.ni = fmul reassoc nsz arcp contract afn float %.sink293, %i.ng
  store float %i.ni, ptr %i.nh, align 4, !tbaa !24
  br label %.critedge220

.critedge220:                                     ; preds = %bb.l, %.critedge219
  br i1 %.not207, label %bb.m, label %.critedge222

bb.m:                                             ; preds = %.critedge220
  br i1 %.not208, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.nj = load float, ptr %i.ch, align 4, !tbaa !306
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv247
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !59
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, f0x3C23D70A
  %i.nn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.nm
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %i.nj
  %i.np = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv247
  %i.nr = fmul reassoc nsz arcp contract afn float %i.np, %i.np
  store float %i.nr, ptr %i.nq, align 4, !tbaa !24
  br label %.critedge222

bb.o:                                             ; preds = %bb.m
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv247
  store float 1.000000e+00, ptr %i.ns, align 4, !tbaa !24
  br label %.critedge222

.critedge222:                                     ; preds = %.critedge220, %bb.n, %bb.o
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count
  br i1 %exitcond250.not, label %.loopexit, label %scalar.ph, !llvm.loop !534

bb.p:                                             ; preds = %.preheader224, %bb.aa
  %indvars.iv244 = phi i64 [ 0, %.preheader224 ], [ %indvars.iv.next245, %bb.aa ] ; 12 uses
  %i.nt = trunc nuw nsw i64 %indvars.iv244 to i32
  %i.nu = uitofp nneg i32 %i.nt to float
  %i.nv = fmul reassoc nnan nsz arcp contract afn float %i.nu, f0x3D888889 ; 8 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv244
  store float %i.nv, ptr %i.nw, align 4, !tbaa !24
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv244
  store float %i.nv, ptr %i.nx, align 4, !tbaa !24
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.ny, align 4, !tbaa !24
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.nz, align 4, !tbaa !24
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.oa, align 4, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not199, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv244
  store float 1.000000e+00, ptr %i.ob, align 4, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %square = fmul reassoc nnan nsz arcp contract afn float %i.nv, %i.nv ; 2 uses
  %i.oc = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 4) ; 2 uses
  %i.od = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 6) ; 2 uses
  br i1 %.not, label %._crit_edge.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !59
  %.not200 = icmp eq i32 %i.oe, 0
  br i1 %.not200, label %._crit_edge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.of = load i32, ptr %i.g, align 4, !tbaa !267
  %i.og = and i32 %i.of, 5
  %.not201 = icmp eq i32 %i.og, 0
  br i1 %.not201, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.v
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv244 ; 2 uses
  %i.oh = load i32, ptr %i.a, align 4, !tbaa !59
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.oj = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.ok = insertelement <2 x float> %i.oj, float %i.od, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ol = icmp eq i32 %i.pb, 1
  br i1 %i.ol, label %bb.w, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !59
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.op = load float, ptr %i.oo, align 4, !tbaa !59
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, %square
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.os = load <2 x float>, ptr %i.or, align 4, !tbaa !59
  %i.ot = fmul reassoc nsz arcp contract afn <2 x float> %i.os, %i.ok ; 2 uses
  %7 = load float, ptr %i.i, align 4, !tbaa !300
  %8 = fadd reassoc nsz arcp contract afn float %i.on, -1.000000e+00
  %i.ou = fadd reassoc nsz arcp contract afn float %8, %i.oq
  %i.ov = extractelement <2 x float> %i.ot, i64 0
  %i.ow = fadd reassoc nsz arcp contract afn float %i.ou, %i.ov
  %9 = extractelement <2 x float> %i.ot, i64 1
  %i.ox = fadd reassoc nsz arcp contract afn float %i.ow, %9
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, %7
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, 1.000000e+00
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %2
  %gep = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.pa, ptr %gep, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pb = load i32, ptr %i.a, align 4, !tbaa !59  ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %i.pd = icmp slt i64 %indvars.iv.next, %i.pc
  br i1 %i.pd, label %.lr.ph, label %._crit_edge, !llvm.loop !535

bb.w:                                             ; preds = %._crit_edge
  %i.pe = load float, ptr %invariant.gep, align 4, !tbaa !24 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv244
  store float %i.pe, ptr %i.pf, align 4, !tbaa !24
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv244
  store float %i.pe, ptr %i.pg, align 4, !tbaa !24
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge, %bb.w, %bb.v, %bb.u, %bb.t
  br i1 %.not199, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread
  %i.ph = load i32, ptr %i.j, align 8, !tbaa !59
  %.not202 = icmp eq i32 %i.ph, 0
  br i1 %.not202, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.pi = load i32, ptr %i.g, align 4, !tbaa !267
  %i.pj = and i32 %i.pi, 2
  %.not203 = icmp eq i32 %i.pj, 0
  br i1 %.not203, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.pk = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 8)
  %i.pl = load <4 x float>, ptr %i.k, align 8, !tbaa !59
  %i.pm = insertelement <4 x float> poison, float %square, i64 0
  %i.pn = insertelement <4 x float> %i.pm, float %i.oc, i64 1
  %i.po = insertelement <4 x float> %i.pn, float %i.od, i64 2
  %i.pp = insertelement <4 x float> %i.po, float %i.pk, i64 3
  %i.pq = fmul reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pp
  %i.pr = load float, ptr %i.l, align 8, !tbaa !59
  %i.ps = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.nv, i32 10)
  %i.pt = fmul reassoc nsz arcp contract afn float %i.pr, %i.ps
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.pt, <4 x float> %i.pq)
  %i.pu = load float, ptr %i.m, align 4, !tbaa !306
  %i.pv = fmul reassoc nsz arcp contract afn float %op.rdx, %i.pu
  %i.pw = fadd reassoc nsz arcp contract afn float %i.pv, 1.000000e+00
  %i.px = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv244
  store float %i.px, ptr %i.py, align 4, !tbaa !24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %._crit_edge.thread
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next245, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !536

.loopexit:                                        ; preds = %bb.aa, %.critedge222, %.critedge220.us.prol.loopexit, %.critedge220.us, %.critedge220.us.us231.prol.loopexit, %.critedge220.us.us231, %.critedge220.us.us.prol.loopexit, %.critedge220.us.us, %.critedge217, %middle.block, %middle.block459, %vec.epilog.middle.block, %middle.block527, %vec.epilog.middle.block542, %middle.block583, %vec.epilog.middle.block598, %bb.j, %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ], [ %i.bw, %bb.j ], [ %i.bw, %middle.block ], [ %i.bw, %middle.block583 ], [ %i.bw, %middle.block527 ], [ %i.bw, %.critedge220.us.prol.loopexit ], [ %i.bw, %middle.block459 ], [ %i.bw, %.critedge222 ], [ %i.bw, %vec.epilog.middle.block598 ], [ %i.n, %.critedge217 ], [ %i.bw, %vec.epilog.middle.block542 ], [ %i.bw, %.critedge220.us.us.prol.loopexit ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bw, %.critedge220.us.us231.prol.loopexit ], [ %i.bw, %.critedge220.us.us ], [ %i.bw, %.critedge220.us.us231 ], [ %i.bw, %.critedge220.us ], [ 16, %bb.aa ]
  ret i32 %.0
}

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare noundef float @_ZN10lfModifier12GetAutoScaleEb(ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext) local_unnamed_addr #4

declare void @dt_iop_set_module_trouble_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK10lfDatabase10GetCamerasEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16camera_menu_fillP15dt_iop_module_tPKPK8lfCamera(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @gtk_menu_new()            ; 2 uses
  %i.b = tail call ptr @g_ptr_array_new()         ; 7 uses
  %i.c = tail call ptr @g_ptr_array_new()         ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !275    ; 2 uses
  %.not61 = icmp eq ptr %i.d, null
  br i1 %.not61, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

.preheader:                                       ; preds = %bb.j, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !537
  %.not65 = icmp eq i32 %i.h, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph64

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.cf, %bb.j ]
  %i.j = phi ptr [ %1, %.lr.ph ], [ %i.ce, %bb.j ] ; 3 uses
  %.062 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.j ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !440
  %i.l = tail call ptr @lf_mlstr_get(ptr noundef %i.k) ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !539 ; 2 uses
  %.val53 = load i32, ptr %i.e, align 8, !tbaa !537 ; 9 uses
  %.not.i = icmp eq i32 %.val53, 0
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.val53, -1                  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %.not24.i = icmp eq ptr %i.p, null
  %i.q = add nsw i32 %.val53, -2
  %spec.select.i = select i1 %.not24.i, i32 %i.q, i32 %i.m ; 2 uses
  %.not251.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not251.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.13.i = phi i32 [ %.2.i, %bb.d ], [ %spec.select.i, %bb.c ] ; 2 uses
  %.0202.i = phi i32 [ %.121.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = add nuw nsw i32 %.0202.i, %.13.i
  %i.s = lshr i32 %i.r, 1                         ; 4 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = tail call noundef i32 @g_utf8_collate(ptr noundef %i.v, ptr noundef readonly %i.l) ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZL22_ptr_array_find_sortedPK10_GPtrArrayPKvPFiS3_S3_E.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp slt i32 %i.w, 0                     ; 2 uses
  %i.z = add nuw nsw i32 %i.s, 1
  %i.aa = add nsw i32 %i.s, -1
  %.121.i = select i1 %i.y, i32 %i.z, i32 %.0202.i ; 2 uses
  %.2.i = select i1 %i.y, i32 %.13.i, i32 %i.aa   ; 2 uses
  %.not25.i = icmp sgt i32 %.121.i, %.2.i
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !540

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.c
  %i.ab = add nsw i32 %.val53, 1
  tail call void @g_ptr_array_set_size(ptr noundef nonnull %i.b, i32 noundef %i.ab)
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !539 ; 3 uses
  %i.ad = icmp sgt i32 %.val53, 0
  br i1 %i.ad, label %bb.e, label %_ZL24_ptr_array_insert_sortedP10_GPtrArrayPKvPFiS2_S2_E.exit

bb.e:                                             ; preds = %.loopexit
  %i.ae = add nsw i32 %.val53, -1                 ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %.not.i54 = icmp eq ptr %i.ah, null
  br i1 %.not.i54, label %bb.f, label %.lr.ph.i55.preheader

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %.val53, -2
  %.not487.i = icmp eq i32 %.val53, 1
  br i1 %.not487.i, label %_ZL24_ptr_array_insert_sortedP10_GPtrArrayPKvPFiS2_S2_E.exit, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.f, %bb.e
  %.19.i.ph = phi i32 [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %bb.g
  %.19.i = phi i32 [ %.2.i56, %bb.g ], [ %.19.i.ph, %.lr.ph.i55.preheader ] ; 2 uses
  %.0398.i = phi i32 [ %.140.i, %bb.g ], [ 0, %.lr.ph.i55.preheader ] ; 2 uses
  %i.aj = add nuw nsw i32 %.0398.i, %.19.i
  %i.ak = lshr i32 %i.aj, 1                       ; 6 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = tail call noundef i32 @g_utf8_collate(ptr noundef %i.an, ptr noundef %i.l) ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.lr.ph.i55
  %i.aq = add nuw nsw i32 %i.ak, 1
  br label %_ZL24_ptr_array_insert_sortedP10_GPtrArrayPKvPFiS2_S2_E.exit

bb.g:                                             ; preds = %.lr.ph.i55
  %i.ar = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.as = add nuw nsw i32 %i.ak, 1
  %i.at = add nsw i32 %i.ak, -1
  %.140.i = select i1 %i.ar, i32 %i.as, i32 %.0398.i ; 2 uses
  %.2.i56 = select i1 %i.ar, i32 %.19.i, i32 %i.at ; 3 uses
end_hunk_3
