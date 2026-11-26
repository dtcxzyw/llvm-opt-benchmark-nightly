Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8gmx_whamiPPc:bb.a
  %i.bew = trunc nuw nsw i64 %indvars.iv30.i.i to i32
  %i.bex = uitofp nneg i32 %i.bew to double
  %i.bey = fadd double %i.bex, 5.000000e-01
  %i.bez = call double @llvm.fmuladd.f64(double %i.bey, double %i.bdm, double %i.bcx)
  %i.bfa = fsub double %i.bez, %i.ber             ; 5 uses
  %i.bfb = fcmp ogt double %i.bfa, %i.bdj
  %i.bfc = fsub double %i.bfa, %i.bdd
  %i.bfd = fcmp olt double %i.bfa, %i.bdk
  %i.bfe = fadd double %i.bdd, %i.bfa
  %spec.select.us.us.us.i.i = select i1 %i.bfd, double %i.bfe, double %i.bfa
  %.073.us.us.us.i.i = select i1 %i.bfb, double %i.bfc, double %spec.select.us.us.us.i.i
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %i.bet, i64 %indvars.iv30.i.i
  %i.bfg = load double, ptr %i.bff, align 8, !tbaa !90
  %i.bfh = fdiv double %i.bfg, %i.bev             ; 2 uses
  %i.bfi = call double @llvm.fmuladd.f64(double %i.bfh, double %.073.us.us.us.i.i, double %.0742.us.us.us.i.i)
  %i.bfj = fadd double %.03.us.us.us.i.i, %i.bfh
  %indvars.iv.next31.i.i = or disjoint i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.bfk = trunc nuw nsw i64 %indvars.iv.next31.i.i to i32
  %i.bfl = uitofp nneg i32 %i.bfk to double
  %i.bfm = fadd double %i.bfl, 5.000000e-01
  %i.bfn = call double @llvm.fmuladd.f64(double %i.bfm, double %i.bdm, double %i.bcx)
  %i.bfo = fsub double %i.bfn, %i.ber             ; 5 uses
  %i.bfp = fcmp ogt double %i.bfo, %i.bdj
  %i.bfq = fsub double %i.bfo, %i.bdd
  %i.bfr = fcmp olt double %i.bfo, %i.bdk
  %i.bfs = fadd double %i.bdd, %i.bfo
  %spec.select.us.us.us.i.i.1 = select i1 %i.bfr, double %i.bfs, double %i.bfo
  %.073.us.us.us.i.i.1 = select i1 %i.bfp, double %i.bfq, double %spec.select.us.us.us.i.i.1
  %i.bft = getelementptr inbounds nuw [8 x i8], ptr %i.bet, i64 %indvars.iv.next31.i.i
  %i.bfu = load double, ptr %i.bft, align 8, !tbaa !90
  %i.bfv = fdiv double %i.bfu, %i.bev             ; 2 uses
  %i.bfw = call double @llvm.fmuladd.f64(double %i.bfv, double %.073.us.us.us.i.i.1, double %i.bfi) ; 3 uses
  %i.bfx = fadd double %i.bfj, %i.bfv             ; 3 uses
  %indvars.iv.next31.i.i.1 = add nuw nsw i64 %indvars.iv30.i.i, 2 ; 2 uses
  %niter1326.next.1 = add i64 %niter1326, 2       ; 2 uses
  %niter1326.ncmp.1 = icmp eq i64 %niter1326.next.1, %unroll_iter1325
  br i1 %niter1326.ncmp.1, label %._crit_edge.split.us.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i334.new, !llvm.loop !211

._crit_edge.split.us.us.us.i.i.unr-lcssa:         ; preds = %.preheader.us.us.i.i334.new
  br i1 %lcmp.mod1321.not, label %._crit_edge.split.us.us.us.i.i, label %.epil.preheader1318

.epil.preheader1318:                              ; preds = %._crit_edge.split.us.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i334
  %indvars.iv30.i.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.i334 ], [ %indvars.iv.next31.i.i.1, %._crit_edge.split.us.us.us.i.i.unr-lcssa ] ; 2 uses
  %.03.us.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i334 ], [ %i.bfx, %._crit_edge.split.us.us.us.i.i.unr-lcssa ]
  %.0742.us.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i334 ], [ %i.bfw, %._crit_edge.split.us.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1324)
  %i.bfy = trunc nuw nsw i64 %indvars.iv30.i.i.epil.init to i32
  %i.bfz = uitofp nneg i32 %i.bfy to double
  %i.bga = fadd double %i.bfz, 5.000000e-01
  %i.bgb = call double @llvm.fmuladd.f64(double %i.bga, double %i.bdm, double %i.bcx)
  %i.bgc = fsub double %i.bgb, %i.ber             ; 5 uses
  %i.bgd = fcmp ogt double %i.bgc, %i.bdj
  %i.bge = fsub double %i.bgc, %i.bdd
  %i.bgf = fcmp olt double %i.bgc, %i.bdk
  %i.bgg = fadd double %i.bdd, %i.bgc
  %spec.select.us.us.us.i.i.epil = select i1 %i.bgf, double %i.bgg, double %i.bgc
  %.073.us.us.us.i.i.epil = select i1 %i.bgd, double %i.bge, double %spec.select.us.us.us.i.i.epil
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr %i.bet, i64 %indvars.iv30.i.i.epil.init
  %i.bgi = load double, ptr %i.bgh, align 8, !tbaa !90
  %i.bgj = fdiv double %i.bgi, %i.bev             ; 2 uses
  %i.bgk = call double @llvm.fmuladd.f64(double %i.bgj, double %.073.us.us.us.i.i.epil, double %.0742.us.us.us.i.i.epil.init)
  %i.bgl = fadd double %.03.us.us.us.i.i.epil.init, %i.bgj
  br label %._crit_edge.split.us.us.us.i.i

._crit_edge.split.us.us.us.i.i:                   ; preds = %._crit_edge.split.us.us.us.i.i.unr-lcssa, %.epil.preheader1318
  %.lcssa1200 = phi double [ %i.bfw, %._crit_edge.split.us.us.us.i.i.unr-lcssa ], [ %i.bgk, %.epil.preheader1318 ]
  %.lcssa1199 = phi double [ %i.bfx, %._crit_edge.split.us.us.us.i.i.unr-lcssa ], [ %i.bgl, %.epil.preheader1318 ]
  %i.bgm = fdiv double %.lcssa1200, %.lcssa1199
  %i.bgn = getelementptr inbounds nuw [8 x i8], ptr %i.bdx, i64 %indvars.iv35.i.i
  %i.bgo = load double, ptr %i.bgn, align 8, !tbaa !90
  %i.bgp = fmul double %i.bgm, %i.bgo
  %i.bgq = fptrunc double %i.bgp to float
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bdq, i64 %indvars.iv35.i.i
  store float %i.bgq, ptr %i.bgr, align 4, !tbaa !32
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %indvars.iv.next36.i.i, %wide.trip.count38.i.i
  br i1 %exitcond39.not.i.i, label %._crit_edge7.i.i, label %.preheader.us.us.i.i334, !llvm.loop !212

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader, %._crit_edge.split.us12.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %._crit_edge.split.us12.i.i ], [ 0, %.preheader.us.i.i.preheader ] ; 6 uses
  %i.bgs = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %indvars.iv25.i.i
  %i.bgt = load double, ptr %i.bgs, align 8, !tbaa !90 ; 6 uses
  %i.bgu = getelementptr inbounds nuw [8 x i8], ptr %i.bem, i64 %indvars.iv25.i.i
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !89 ; 3 uses
  %i.bgw = getelementptr inbounds nuw [8 x i8], ptr %i.ben, i64 %indvars.iv25.i.i
  %i.bgx = load double, ptr %i.bgw, align 8, !tbaa !90 ; 3 uses
  br i1 %i.beo, label %.epil.preheader1309, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %indvars.iv20.i.i = phi i64 [ %indvars.iv.next21.i.i.1, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ] ; 4 uses
  %.03.us9.i.i = phi double [ %.1.us.i.i.1, %.preheader.us.i.i.new ], [ 0.000000e+00, %.preheader.us.i.i ]
  %.0742.us10.i.i = phi double [ %.175.us.i.i.1, %.preheader.us.i.i.new ], [ 0.000000e+00, %.preheader.us.i.i ]
  %niter1317 = phi i64 [ %niter1317.next.1, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.bgy = trunc nuw nsw i64 %indvars.iv20.i.i to i32
  %i.bgz = uitofp nneg i32 %i.bgy to double
  %i.bha = fadd double %i.bgz, 5.000000e-01
  %i.bhb = call double @llvm.fmuladd.f64(double %i.bha, double %i.bdl, double %i.bcx)
  %i.bhc = fsub double %i.bhb, %i.bgt             ; 3 uses
  %i.bhd = getelementptr inbounds nuw [8 x i8], ptr %i.bgv, i64 %indvars.iv20.i.i
  %i.bhe = load double, ptr %i.bhd, align 8, !tbaa !90
  %i.bhf = fdiv double %i.bhe, %i.bgx             ; 4 uses
  %i.bhg = call double @llvm.fmuladd.f64(double %i.bhf, double %i.bhc, double %.0742.us10.i.i) ; 2 uses
  %i.bhh = fadd double %.03.us9.i.i, %i.bhf       ; 2 uses
  %i.bhi = fsub double %i.bgt, %i.bhc             ; 2 uses
  %i.bhj = fcmp oge double %i.bhi, %i.bcz
  %i.bhk = fcmp olt double %i.bhi, %i.bcx
  %or.cond.us.i.i = select i1 %i.bhj, i1 true, i1 %i.bhk ; 2 uses
  %i.bhl = fneg double %i.bhf
  %i.bhm = call double @llvm.fmuladd.f64(double %i.bhl, double %i.bhc, double %i.bhg)
  %i.bhn = fadd double %i.bhf, %i.bhh
  %.175.us.i.i = select i1 %or.cond.us.i.i, double %i.bhm, double %i.bhg
  %.1.us.i.i = select i1 %or.cond.us.i.i, double %i.bhn, double %i.bhh
  %indvars.iv.next21.i.i = or disjoint i64 %indvars.iv20.i.i, 1 ; 2 uses
  %i.bho = trunc nuw nsw i64 %indvars.iv.next21.i.i to i32
  %i.bhp = uitofp nneg i32 %i.bho to double
  %i.bhq = fadd double %i.bhp, 5.000000e-01
  %i.bhr = call double @llvm.fmuladd.f64(double %i.bhq, double %i.bdl, double %i.bcx)
  %i.bhs = fsub double %i.bhr, %i.bgt             ; 3 uses
  %i.bht = getelementptr inbounds nuw [8 x i8], ptr %i.bgv, i64 %indvars.iv.next21.i.i
  %i.bhu = load double, ptr %i.bht, align 8, !tbaa !90
  %i.bhv = fdiv double %i.bhu, %i.bgx             ; 4 uses
  %i.bhw = call double @llvm.fmuladd.f64(double %i.bhv, double %i.bhs, double %.175.us.i.i) ; 2 uses
  %i.bhx = fadd double %.1.us.i.i, %i.bhv         ; 2 uses
  %i.bhy = fsub double %i.bgt, %i.bhs             ; 2 uses
  %i.bhz = fcmp oge double %i.bhy, %i.bcz
  %i.bia = fcmp olt double %i.bhy, %i.bcx
  %or.cond.us.i.i.1 = select i1 %i.bhz, i1 true, i1 %i.bia ; 2 uses
  %i.bib = fneg double %i.bhv
  %i.bic = call double @llvm.fmuladd.f64(double %i.bib, double %i.bhs, double %i.bhw)
  %i.bid = fadd double %i.bhv, %i.bhx
  %.175.us.i.i.1 = select i1 %or.cond.us.i.i.1, double %i.bic, double %i.bhw ; 3 uses
  %.1.us.i.i.1 = select i1 %or.cond.us.i.i.1, double %i.bid, double %i.bhx ; 3 uses
  %indvars.iv.next21.i.i.1 = add nuw nsw i64 %indvars.iv20.i.i, 2 ; 2 uses
  %niter1317.next.1 = add i64 %niter1317, 2       ; 2 uses
  %niter1317.ncmp.1 = icmp eq i64 %niter1317.next.1, %unroll_iter1316
  br i1 %niter1317.ncmp.1, label %._crit_edge.split.us12.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !211

._crit_edge.split.us12.i.i.unr-lcssa:             ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod1312.not, label %._crit_edge.split.us12.i.i, label %.epil.preheader1309

.epil.preheader1309:                              ; preds = %._crit_edge.split.us12.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv20.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next21.i.i.1, %._crit_edge.split.us12.i.i.unr-lcssa ] ; 2 uses
  %.03.us9.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.i.i ], [ %.1.us.i.i.1, %._crit_edge.split.us12.i.i.unr-lcssa ]
  %.0742.us10.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.i.i ], [ %.175.us.i.i.1, %._crit_edge.split.us12.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1315)
  %i.bie = trunc nuw nsw i64 %indvars.iv20.i.i.epil.init to i32
  %i.bif = uitofp nneg i32 %i.bie to double
  %i.big = fadd double %i.bif, 5.000000e-01
  %i.bih = call double @llvm.fmuladd.f64(double %i.big, double %i.bdl, double %i.bcx)
  %i.bii = fsub double %i.bih, %i.bgt             ; 3 uses
  %i.bij = getelementptr inbounds nuw [8 x i8], ptr %i.bgv, i64 %indvars.iv20.i.i.epil.init
  %i.bik = load double, ptr %i.bij, align 8, !tbaa !90
  %i.bil = fdiv double %i.bik, %i.bgx             ; 4 uses
  %i.bim = call double @llvm.fmuladd.f64(double %i.bil, double %i.bii, double %.0742.us10.i.i.epil.init) ; 2 uses
  %i.bin = fadd double %.03.us9.i.i.epil.init, %i.bil ; 2 uses
  %i.bio = fsub double %i.bgt, %i.bii             ; 2 uses
  %i.bip = fcmp oge double %i.bio, %i.bcz
  %i.biq = fcmp olt double %i.bio, %i.bcx
  %or.cond.us.i.i.epil = select i1 %i.bip, i1 true, i1 %i.biq ; 2 uses
  %i.bir = fneg double %i.bil
  %i.bis = call double @llvm.fmuladd.f64(double %i.bir, double %i.bii, double %i.bim)
  %i.bit = fadd double %i.bil, %i.bin
  %.175.us.i.i.epil = select i1 %or.cond.us.i.i.epil, double %i.bis, double %i.bim
  %.1.us.i.i.epil = select i1 %or.cond.us.i.i.epil, double %i.bit, double %i.bin
  br label %._crit_edge.split.us12.i.i

._crit_edge.split.us12.i.i:                       ; preds = %._crit_edge.split.us12.i.i.unr-lcssa, %.epil.preheader1309
  %.175.us.i.i.lcssa = phi double [ %.175.us.i.i.1, %._crit_edge.split.us12.i.i.unr-lcssa ], [ %.175.us.i.i.epil, %.epil.preheader1309 ]
  %.1.us.i.i.lcssa = phi double [ %.1.us.i.i.1, %._crit_edge.split.us12.i.i.unr-lcssa ], [ %.1.us.i.i.epil, %.epil.preheader1309 ]
  %i.biu = fdiv double %.175.us.i.i.lcssa, %.1.us.i.i.lcssa
  %i.biv = getelementptr inbounds nuw [8 x i8], ptr %i.bdx, i64 %indvars.iv25.i.i
  %i.biw = load double, ptr %i.biv, align 8, !tbaa !90
  %i.bix = fmul double %i.biu, %i.biw
  %i.biy = fptrunc double %i.bix to float
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bdq, i64 %indvars.iv25.i.i
  store float %i.biy, ptr %i.biz, align 4, !tbaa !32
  %indvars.iv.next26.i.i = add nuw nsw i64 %indvars.iv25.i.i, 1 ; 2 uses
  %exitcond29.not.i.i = icmp eq i64 %indvars.iv.next26.i.i, %wide.trip.count38.i.i
  br i1 %exitcond29.not.i.i, label %._crit_edge7.i.i, label %.preheader.us.i.i, !llvm.loop !212

.preheader.i.i330:                                ; preds = %.preheader.i.i330.preheader, %.preheader.i.i330
  %indvars.iv.i.i331 = phi i64 [ %indvars.iv.next.i.i332, %.preheader.i.i330 ], [ %indvars.iv.i.i331.ph, %.preheader.i.i330.preheader ] ; 2 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bdq, i64 %indvars.iv.i.i331
  store float +qnan, ptr %i.bja, align 4, !tbaa !32
  %indvars.iv.next.i.i332 = add nuw nsw i64 %indvars.iv.i.i331, 1 ; 2 uses
  %exitcond.not.i.i333 = icmp eq i64 %indvars.iv.next.i.i332, %wide.trip.count.i.i329
  br i1 %exitcond.not.i.i333, label %._crit_edge7.i.i, label %.preheader.i.i330, !llvm.loop !213

._crit_edge7.i.i:                                 ; preds = %.preheader.i.i330, %._crit_edge.split.us12.i.i, %._crit_edge.split.us.us.us.i.i, %middle.block1127, %vec.epilog.middle.block1139, %.noexc335
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond44.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %wide.trip.count23.i
  br i1 %exitcond44.not.i.i, label %_ZL19computeAverageForceP16t_UmbrellaWindowiP15UmbrellaOptions.exit.i, label %bb.hz, !llvm.loop !214

_ZL19computeAverageForceP16t_UmbrellaWindowiP15UmbrellaOptions.exit.i: ; preds = %._crit_edge7.i.i
  %i.bjb = sext i32 %i.bcr to i64                 ; 2 uses
  %i.bjc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.374, ptr noundef nonnull @.str.219, i32 noundef 2673, i64 noundef range(i64 -2147483648, 2147483648) %i.bjb, i64 noundef 8)
          to label %.noexc336 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1281 ; 15 uses

.noexc336:                                        ; preds = %_ZL19computeAverageForceP16t_UmbrellaWindowiP15UmbrellaOptions.exit.i
  %i.bjd = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.219, i32 noundef 2674, i64 noundef range(i64 -2147483648, 2147483648) %i.bjb, i64 noundef 8)
          to label %.noexc337 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1281 ; 7 uses

.noexc337:                                        ; preds = %.noexc336
  %i.bje = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 72), align 8, !tbaa !30 ; 6 uses
  %i.bjf = icmp sgt i32 %i.bje, 0
  br i1 %i.bjf, label %.lr.ph39.i, label %._crit_edge43.i

.lr.ph39.i:                                       ; preds = %.noexc337
  %i.bjg = extractelement <2 x double> %i.bdi, i64 0 ; 3 uses
  %i.bjh = fmul double %i.bjg, 5.000000e-01       ; 3 uses
  %wide.trip.count66.i = zext nneg i32 %i.bje to i64 ; 2 uses
  %i.bji = extractelement <2 x double> %i.bcw, i64 0
  br label %bb.ia

.preheader.i318:                                  ; preds = %bb.ii
  %.not.i319 = icmp eq i32 %i.bje, 1
  br i1 %.not.i319, label %._crit_edge43.i, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.preheader.i318
  %i.bjj = fmul double %i.bjg, -5.000000e-01      ; 5 uses
  %.pre.i320 = load double, ptr %i.bjc, align 8, !tbaa !90 ; 2 uses
  %i.bjk = add nsw i64 %wide.trip.count66.i, -1   ; 2 uses
  %xtraiter1340 = and i64 %i.bjk, 3               ; 3 uses
  %i.bjl = add nsw i32 %i.bje, -2
  %i.bjm = icmp ult i32 %i.bjl, 3
  br i1 %i.bjm, label %.epil.preheader1339, label %.lr.ph42.i.new

.lr.ph42.i.new:                                   ; preds = %.lr.ph42.i
  %unroll_iter1344 = and i64 %i.bjk, -4
  br label %bb.ij

bb.ia:                                            ; preds = %bb.ii, %.lr.ph39.i
  %indvars.iv63.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next64.i, %bb.ii ] ; 3 uses
  %i.bjn = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.bjo = uitofp nneg i32 %i.bjn to double
  %i.bjp = fadd double %i.bjo, 5.000000e-01
  %i.bjq = call double @llvm.fmuladd.f64(double %i.bjp, double %i.bjg, double %i.bji) ; 3 uses
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.ia, %._crit_edge.i321
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %._crit_edge.i321 ], [ 0, %bb.ia ] ; 3 uses
  %.08932.i = phi double [ %.190.lcssa.i, %._crit_edge.i321 ], [ 1.000000e+20, %bb.ia ] ; 3 uses
  %.09131.i = phi double [ %.192.lcssa.i, %._crit_edge.i321 ], [ 0.000000e+00, %bb.ia ] ; 3 uses
  %.09430.i = phi i32 [ %.195.lcssa.i, %._crit_edge.i321 ], [ 0, %bb.ia ] ; 3 uses
  %.09729.i = phi i32 [ %.198.lcssa.i, %._crit_edge.i321 ], [ 0, %bb.ia ] ; 3 uses
  %.010028.i = phi i32 [ %.1101.lcssa.i, %._crit_edge.i321 ], [ 0, %bb.ia ] ; 3 uses
  %i.bjr = getelementptr inbounds nuw [152 x i8], ptr %i.pz, i64 %indvars.iv58.i ; 3 uses
  %i.bjs = load i32, ptr %i.bjr, align 8, !tbaa !85 ; 4 uses
  %i.bjt = icmp sgt i32 %i.bjs, 0
  br i1 %i.bjt, label %.lr.ph.i322, label %._crit_edge.i321

.lr.ph.i322:                                      ; preds = %.preheader12.i
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjr, i64 40
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !108 ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjr, i64 120 ; 3 uses
  %wide.trip.count.i323 = zext nneg i32 %i.bjs to i64 ; 2 uses
  %i.bjx = trunc nuw nsw i64 %indvars.iv58.i to i32 ; 2 uses
  %xtraiter1328 = and i64 %wide.trip.count.i323, 1
  %i.bjy = icmp eq i32 %i.bjs, 1
  br i1 %i.bjy, label %.epil.preheader1327, label %.lr.ph.i322.new

.lr.ph.i322.new:                                  ; preds = %.lr.ph.i322
  %unroll_iter1337 = and i64 %wide.trip.count.i323, 2147483646
  br label %bb.ib

bb.ib:                                            ; preds = %bb.if, %.lr.ph.i322.new
  %indvars.iv.i324 = phi i64 [ 0, %.lr.ph.i322.new ], [ %indvars.iv.next.i326.1, %bb.if ] ; 5 uses
  %.19022.i = phi double [ %.08932.i, %.lr.ph.i322.new ], [ %.2.i325.1, %bb.if ] ; 2 uses
  %.19221.i = phi double [ %.09131.i, %.lr.ph.i322.new ], [ %.293.i.1, %bb.if ] ; 2 uses
  %.19520.i = phi i32 [ %.09430.i, %.lr.ph.i322.new ], [ %.296.i.1, %bb.if ]
  %.19819.i = phi i32 [ %.09729.i, %.lr.ph.i322.new ], [ %.299.i.1, %bb.if ]
  %.110118.i = phi i32 [ %.010028.i, %.lr.ph.i322.new ], [ %.2102.i.1, %bb.if ] ; 2 uses
  %niter1338 = phi i64 [ 0, %.lr.ph.i322.new ], [ %niter1338.next.1, %bb.if ]
  %i.bjz = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %indvars.iv.i324
  %i.bka = load double, ptr %i.bjz, align 8, !tbaa !90
  %i.bkb = fsub double %i.bka, %i.bjq
  %i.bkc = call noundef double @llvm.fabs.f64(double %i.bkb) ; 3 uses
  %i.bkd = fcmp olt double %i.bkc, %i.bjh
  br i1 %i.bkd, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.bke = add nsw i32 %.110118.i, 1
  %i.bkf = load ptr, ptr %i.bjw, align 8, !tbaa !270
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.bkf, i64 %indvars.iv.i324
  %i.bkh = load float, ptr %i.bkg, align 4, !tbaa !32
  %i.bki = fpext float %i.bkh to double
  %i.bkj = fadd double %.19221.i, %i.bki
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.2102.i = phi i32 [ %i.bke, %bb.ic ], [ %.110118.i, %bb.ib ] ; 2 uses
  %.293.i = phi double [ %i.bkj, %bb.ic ], [ %.19221.i, %bb.ib ] ; 2 uses
  %i.bkk = fcmp olt double %i.bkc, %.19022.i      ; 3 uses
  %i.bkl = trunc nuw nsw i64 %indvars.iv.i324 to i32
  %.296.i = select i1 %i.bkk, i32 %i.bkl, i32 %.19520.i
  %.2.i325 = select i1 %i.bkk, double %i.bkc, double %.19022.i ; 2 uses
  %indvars.iv.next.i326 = or disjoint i64 %indvars.iv.i324, 1 ; 3 uses
  %i.bkm = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %indvars.iv.next.i326
  %i.bkn = load double, ptr %i.bkm, align 8, !tbaa !90
  %i.bko = fsub double %i.bkn, %i.bjq
  %i.bkp = call noundef double @llvm.fabs.f64(double %i.bko) ; 3 uses
  %i.bkq = fcmp olt double %i.bkp, %i.bjh
  br i1 %i.bkq, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.bkr = add nsw i32 %.2102.i, 1
  %i.bks = load ptr, ptr %i.bjw, align 8, !tbaa !270
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %indvars.iv.next.i326
  %i.bku = load float, ptr %i.bkt, align 4, !tbaa !32
  %i.bkv = fpext float %i.bku to double
  %i.bkw = fadd double %.293.i, %i.bkv
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.2102.i.1 = phi i32 [ %i.bkr, %bb.ie ], [ %.2102.i, %bb.id ] ; 3 uses
  %.293.i.1 = phi double [ %i.bkw, %bb.ie ], [ %.293.i, %bb.id ] ; 3 uses
  %i.bkx = fcmp olt double %i.bkp, %.2.i325       ; 3 uses
  %i.bky = or i1 %i.bkx, %i.bkk
  %.299.i.1 = select i1 %i.bky, i32 %i.bjx, i32 %.19819.i ; 3 uses
  %i.bkz = trunc nuw nsw i64 %indvars.iv.next.i326 to i32
  %.296.i.1 = select i1 %i.bkx, i32 %i.bkz, i32 %.296.i ; 3 uses
  %.2.i325.1 = select i1 %i.bkx, double %i.bkp, double %.2.i325 ; 3 uses
  %indvars.iv.next.i326.1 = add nuw nsw i64 %indvars.iv.i324, 2 ; 2 uses
  %niter1338.next.1 = add i64 %niter1338, 2       ; 2 uses
  %niter1338.ncmp.1 = icmp eq i64 %niter1338.next.1, %unroll_iter1337
  br i1 %niter1338.ncmp.1, label %._crit_edge.i321.loopexit.unr-lcssa, label %bb.ib, !llvm.loop !215

._crit_edge.i321.loopexit.unr-lcssa:              ; preds = %bb.if
  %lcmp.mod1330.not = icmp eq i64 %xtraiter1328, 0
  br i1 %lcmp.mod1330.not, label %._crit_edge.i321, label %.epil.preheader1327

.epil.preheader1327:                              ; preds = %._crit_edge.i321.loopexit.unr-lcssa, %.lr.ph.i322
  %indvars.iv.i324.epil.init = phi i64 [ 0, %.lr.ph.i322 ], [ %indvars.iv.next.i326.1, %._crit_edge.i321.loopexit.unr-lcssa ] ; 3 uses
  %.19022.i.epil.init = phi double [ %.08932.i, %.lr.ph.i322 ], [ %.2.i325.1, %._crit_edge.i321.loopexit.unr-lcssa ] ; 2 uses
  %.19221.i.epil.init = phi double [ %.09131.i, %.lr.ph.i322 ], [ %.293.i.1, %._crit_edge.i321.loopexit.unr-lcssa ] ; 2 uses
  %.19520.i.epil.init = phi i32 [ %.09430.i, %.lr.ph.i322 ], [ %.296.i.1, %._crit_edge.i321.loopexit.unr-lcssa ]
  %.19819.i.epil.init = phi i32 [ %.09729.i, %.lr.ph.i322 ], [ %.299.i.1, %._crit_edge.i321.loopexit.unr-lcssa ]
  %.110118.i.epil.init = phi i32 [ %.010028.i, %.lr.ph.i322 ], [ %.2102.i.1, %._crit_edge.i321.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1336 = trunc i32 %i.bjs to i1
  call void @llvm.assume(i1 %lcmp.mod1336)
  %i.bla = getelementptr inbounds nuw [8 x i8], ptr %i.bjv, i64 %indvars.iv.i324.epil.init
  %i.blb = load double, ptr %i.bla, align 8, !tbaa !90
  %i.blc = fsub double %i.blb, %i.bjq
  %i.bld = call noundef double @llvm.fabs.f64(double %i.blc) ; 3 uses
  %i.ble = fcmp olt double %i.bld, %i.bjh
  br i1 %i.ble, label %bb.ig, label %._crit_edge.i321.loopexit.epilog-lcssa

bb.ig:                                            ; preds = %.epil.preheader1327
  %i.blf = add nsw i32 %.110118.i.epil.init, 1
  %i.blg = load ptr, ptr %i.bjw, align 8, !tbaa !270
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.blg, i64 %indvars.iv.i324.epil.init
  %i.bli = load float, ptr %i.blh, align 4, !tbaa !32
  %i.blj = fpext float %i.bli to double
  %i.blk = fadd double %.19221.i.epil.init, %i.blj
  br label %._crit_edge.i321.loopexit.epilog-lcssa

._crit_edge.i321.loopexit.epilog-lcssa:           ; preds = %bb.ig, %.epil.preheader1327
  %.2102.i.epil = phi i32 [ %i.blf, %bb.ig ], [ %.110118.i.epil.init, %.epil.preheader1327 ]
  %.293.i.epil = phi double [ %i.blk, %bb.ig ], [ %.19221.i.epil.init, %.epil.preheader1327 ]
  %i.bll = fcmp olt double %i.bld, %.19022.i.epil.init ; 3 uses
  %.299.i.epil = select i1 %i.bll, i32 %i.bjx, i32 %.19819.i.epil.init
  %i.blm = trunc nuw nsw i64 %indvars.iv.i324.epil.init to i32
  %.296.i.epil = select i1 %i.bll, i32 %i.blm, i32 %.19520.i.epil.init
  %.2.i325.epil = select i1 %i.bll, double %i.bld, double %.19022.i.epil.init
  br label %._crit_edge.i321

._crit_edge.i321:                                 ; preds = %._crit_edge.i321.loopexit.epilog-lcssa, %._crit_edge.i321.loopexit.unr-lcssa, %.preheader12.i
  %.1101.lcssa.i = phi i32 [ %.010028.i, %.preheader12.i ], [ %.2102.i.1, %._crit_edge.i321.loopexit.unr-lcssa ], [ %.2102.i.epil, %._crit_edge.i321.loopexit.epilog-lcssa ] ; 3 uses
  %.198.lcssa.i = phi i32 [ %.09729.i, %.preheader12.i ], [ %.299.i.1, %._crit_edge.i321.loopexit.unr-lcssa ], [ %.299.i.epil, %._crit_edge.i321.loopexit.epilog-lcssa ] ; 2 uses
  %.195.lcssa.i = phi i32 [ %.09430.i, %.preheader12.i ], [ %.296.i.1, %._crit_edge.i321.loopexit.unr-lcssa ], [ %.296.i.epil, %._crit_edge.i321.loopexit.epilog-lcssa ] ; 2 uses
  %.192.lcssa.i = phi double [ %.09131.i, %.preheader12.i ], [ %.293.i.1, %._crit_edge.i321.loopexit.unr-lcssa ], [ %.293.i.epil, %._crit_edge.i321.loopexit.epilog-lcssa ] ; 2 uses
  %.190.lcssa.i = phi double [ %.08932.i, %.preheader12.i ], [ %.2.i325.1, %._crit_edge.i321.loopexit.unr-lcssa ], [ %.2.i325.epil, %._crit_edge.i321.loopexit.epilog-lcssa ]
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count23.i
  br i1 %exitcond62.not.i, label %._crit_edge33.i, label %.preheader12.i, !llvm.loop !216

._crit_edge33.i:                                  ; preds = %._crit_edge.i321
  %i.bln = icmp sgt i32 %.1101.lcssa.i, 0
  br i1 %i.bln, label %bb.ih, label %._crit_edge33.thread.i

bb.ih:                                            ; preds = %._crit_edge33.i
  %i.blo = uitofp nneg i32 %.1101.lcssa.i to double
  %i.blp = fdiv double %.192.lcssa.i, %i.blo
  br label %bb.ii

._crit_edge33.thread.i:                           ; preds = %._crit_edge33.i
  %i.blq = sext i32 %.195.lcssa.i to i64
  %i.blr = sext i32 %.198.lcssa.i to i64
  %i.bls = getelementptr inbounds [152 x i8], ptr %i.pz, i64 %i.blr
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 120
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !270
  %i.blv = getelementptr inbounds [4 x i8], ptr %i.blu, i64 %i.blq
  %i.blw = load float, ptr %i.blv, align 4, !tbaa !32
  %i.blx = fpext float %i.blw to double
  br label %bb.ii

bb.ii:                                            ; preds = %._crit_edge33.thread.i, %bb.ih
  %.3.i = phi double [ %i.blp, %bb.ih ], [ %i.blx, %._crit_edge33.thread.i ]
  %i.bly = getelementptr inbounds nuw [8 x i8], ptr %i.bjd, i64 %indvars.iv63.i
  store double %.3.i, ptr %i.bly, align 8, !tbaa !90
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count66.i
  br i1 %exitcond67.not.i, label %.preheader.i318, label %bb.ia, !llvm.loop !217

bb.ij:                                            ; preds = %bb.ij, %.lr.ph42.i.new
  %i.blz = phi double [ %.pre.i320, %.lr.ph42.i.new ], [ %i.bna, %bb.ij ]
  %indvars.iv68.i = phi i64 [ 1, %.lr.ph42.i.new ], [ %indvars.iv.next69.i.3, %bb.ij ] ; 6 uses
  %niter1345 = phi i64 [ 0, %.lr.ph42.i.new ], [ %niter1345.next.3, %bb.ij ]
  %i.bma = getelementptr [8 x i8], ptr %i.bjd, i64 %indvars.iv68.i ; 2 uses
  %i.bmb = getelementptr i8, ptr %i.bma, i64 -8
  %i.bmc = load double, ptr %i.bmb, align 8, !tbaa !90
  %i.bmd = load double, ptr %i.bma, align 8, !tbaa !90
  %i.bme = fadd double %i.bmc, %i.bmd
  %i.bmf = call double @llvm.fmuladd.f64(double %i.bjj, double %i.bme, double %i.blz) ; 2 uses
  %i.bmg = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %indvars.iv68.i
  store double %i.bmf, ptr %i.bmg, align 8, !tbaa !90
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.bmh = getelementptr [8 x i8], ptr %i.bjd, i64 %indvars.iv.next69.i ; 2 uses
  %i.bmi = getelementptr i8, ptr %i.bmh, i64 -8
  %i.bmj = load double, ptr %i.bmi, align 8, !tbaa !90
  %i.bmk = load double, ptr %i.bmh, align 8, !tbaa !90
  %i.bml = fadd double %i.bmj, %i.bmk
  %i.bmm = call double @llvm.fmuladd.f64(double %i.bjj, double %i.bml, double %i.bmf) ; 2 uses
  %i.bmn = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %indvars.iv.next69.i
  store double %i.bmm, ptr %i.bmn, align 8, !tbaa !90
  %indvars.iv.next69.i.1 = add nuw nsw i64 %indvars.iv68.i, 2 ; 2 uses
  %i.bmo = getelementptr [8 x i8], ptr %i.bjd, i64 %indvars.iv.next69.i.1 ; 2 uses
  %i.bmp = getelementptr i8, ptr %i.bmo, i64 -8
  %i.bmq = load double, ptr %i.bmp, align 8, !tbaa !90
  %i.bmr = load double, ptr %i.bmo, align 8, !tbaa !90
  %i.bms = fadd double %i.bmq, %i.bmr
  %i.bmt = call double @llvm.fmuladd.f64(double %i.bjj, double %i.bms, double %i.bmm) ; 2 uses
  %i.bmu = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %indvars.iv.next69.i.1
  store double %i.bmt, ptr %i.bmu, align 8, !tbaa !90
  %indvars.iv.next69.i.2 = add nuw nsw i64 %indvars.iv68.i, 3 ; 2 uses
  %i.bmv = getelementptr [8 x i8], ptr %i.bjd, i64 %indvars.iv.next69.i.2 ; 2 uses
  %i.bmw = getelementptr i8, ptr %i.bmv, i64 -8
  %i.bmx = load double, ptr %i.bmw, align 8, !tbaa !90
  %i.bmy = load double, ptr %i.bmv, align 8, !tbaa !90
  %i.bmz = fadd double %i.bmx, %i.bmy
  %i.bna = call double @llvm.fmuladd.f64(double %i.bjj, double %i.bmz, double %i.bmt) ; 3 uses
  %i.bnb = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %indvars.iv.next69.i.2
  store double %i.bna, ptr %i.bnb, align 8, !tbaa !90
  %indvars.iv.next69.i.3 = add nuw nsw i64 %indvars.iv68.i, 4 ; 2 uses
  %niter1345.next.3 = add i64 %niter1345, 4       ; 2 uses
  %niter1345.ncmp.3 = icmp eq i64 %niter1345.next.3, %unroll_iter1344
  br i1 %niter1345.ncmp.3, label %._crit_edge43.i.loopexit.unr-lcssa, label %bb.ij, !llvm.loop !218

._crit_edge43.i.loopexit.unr-lcssa:               ; preds = %bb.ij
  %lcmp.mod1342.not = icmp eq i64 %xtraiter1340, 0
  br i1 %lcmp.mod1342.not, label %._crit_edge43.i, label %.epil.preheader1339

.epil.preheader1339:                              ; preds = %._crit_edge43.i.loopexit.unr-lcssa, %.lr.ph42.i
  %.epil.init.a = phi double [ %.pre.i320, %.lr.ph42.i ], [ %i.bna, %._crit_edge43.i.loopexit.unr-lcssa ]
  %indvars.iv68.i.epil.init = phi i64 [ 1, %.lr.ph42.i ], [ %indvars.iv.next69.i.3, %._crit_edge43.i.loopexit.unr-lcssa ]
  %lcmp.mod1343 = icmp ne i64 %xtraiter1340, 0
  call void @llvm.assume(i1 %lcmp.mod1343)
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ik, %.epil.preheader1339
  %i.bnc = phi double [ %.epil.init.a, %.epil.preheader1339 ], [ %i.bni, %bb.ik ]
  %indvars.iv68.i.epil = phi i64 [ %indvars.iv68.i.epil.init, %.epil.preheader1339 ], [ %indvars.iv.next69.i.epil, %bb.ik ] ; 3 uses
  %epil.iter1341 = phi i64 [ 0, %.epil.preheader1339 ], [ %epil.iter1341.next, %bb.ik ]
  %i.bnd = getelementptr [8 x i8], ptr %i.bjd, i64 %indvars.iv68.i.epil ; 2 uses
  %i.bne = getelementptr i8, ptr %i.bnd, i64 -8
  %i.bnf = load double, ptr %i.bne, align 8, !tbaa !90
  %i.bng = load double, ptr %i.bnd, align 8, !tbaa !90
  %i.bnh = fadd double %i.bnf, %i.bng
  %i.bni = call double @llvm.fmuladd.f64(double %i.bjj, double %i.bnh, double %i.bnc) ; 2 uses
  %i.bnj = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %indvars.iv68.i.epil
  store double %i.bni, ptr %i.bnj, align 8, !tbaa !90
  %indvars.iv.next69.i.epil = add nuw nsw i64 %indvars.iv68.i.epil, 1
  %epil.iter1341.next = add i64 %epil.iter1341, 1 ; 2 uses
  %epil.iter1341.cmp.not = icmp eq i64 %epil.iter1341.next, %xtraiter1340
  br i1 %epil.iter1341.cmp.not, label %._crit_edge43.i, label %bb.ik, !llvm.loop !219

._crit_edge43.i:                                  ; preds = %._crit_edge43.i.loopexit.unr-lcssa, %bb.ik, %.preheader.i318, %.noexc337
  %i.bnk = phi i1 [ false, %.noexc337 ], [ false, %.preheader.i318 ], [ true, %bb.ik ], [ true, %._crit_edge43.i.loopexit.unr-lcssa ]
  %i.bnl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 96), align 8, !tbaa !31, !range !52, !noundef !53
  %i.bnm = trunc nuw i8 %i.bnl to i1
  br i1 %i.bnm, label %bb.il, label %.loopexit.i308

bb.il:                                            ; preds = %._crit_edge43.i
  %i.bnn = add nsw i32 %i.bcr, -1                 ; 2 uses
  %i.bno = sext i32 %i.bnn to i64
  %i.bnp = getelementptr inbounds [8 x i8], ptr %i.bjc, i64 %i.bno
  %i.bnq = load double, ptr %i.bnp, align 8, !tbaa !90
  %i.bnr = load double, ptr %i.bjc, align 8, !tbaa !90
  %i.bns = fsub double %i.bnq, %i.bnr
  %i.bnt = sitofp i32 %i.bnn to double
  %i.bnu = fdiv double %i.bns, %i.bnt             ; 3 uses
  br i1 %i.bnk, label %iter.check1159, label %.loopexit.i308

iter.check1159:                                   ; preds = %bb.il
  %wide.trip.count76.i = zext nneg i32 %i.bje to i64 ; 2 uses
  %i.bnv = add nsw i64 %wide.trip.count76.i, -1   ; 7 uses
  %min.iters.check1143 = icmp ult i64 %i.bnv, 4
  br i1 %min.iters.check1143, label %.lr.ph46.i.preheader, label %vector.main.loop.iter.check1144

vector.main.loop.iter.check1144:                  ; preds = %iter.check1159
  %min.iters.check1145 = icmp ult i64 %i.bnv, 16
  br i1 %min.iters.check1145, label %vec.epilog.ph1163, label %vector.ph1146

vector.ph1146:                                    ; preds = %vector.main.loop.iter.check1144
  %i.bnw = and i64 %i.bnv, 12
  %n.vec1147 = and i64 %i.bnv, -16                ; 4 uses
  %i.bnx = or disjoint i64 %n.vec1147, 1          ; 2 uses
  %broadcast.splatinsert1148 = insertelement <4 x double> poison, double %i.bnu, i64 0
  %broadcast.splat1149 = shufflevector <4 x double> %broadcast.splatinsert1148, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.ph1146, %vector.body1150
  %index1151 = phi i64 [ 0, %vector.ph1146 ], [ %index.next1156, %vector.body1150 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph1146 ], [ %vec.ind.next, %vector.body1150 ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.bny = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.bnz = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.boa = uitofp nneg <4 x i32> %step.add.2 to <4 x double>
  %i.bob = uitofp nneg <4 x i32> %step.add.3 to <4 x double>
  %i.boc = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %index1151 ; 4 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 8 ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.boc, i64 40 ; 2 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boc, i64 72 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.boc, i64 104 ; 2 uses
  %wide.load1152 = load <4 x double>, ptr %i.bod, align 8, !tbaa !90
  %wide.load1153 = load <4 x double>, ptr %i.boe, align 8, !tbaa !90
  %wide.load1154 = load <4 x double>, ptr %i.bof, align 8, !tbaa !90
  %wide.load1155 = load <4 x double>, ptr %i.bog, align 8, !tbaa !90
  %i.boh = fneg <4 x double> %i.bny
  %i.boi = fneg <4 x double> %i.bnz
  %i.boj = fneg <4 x double> %i.boa
  %i.bok = fneg <4 x double> %i.bob
  %i.bol = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.boh, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1152)
  %i.bom = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.boi, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1153)
  %i.bon = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.boj, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1154)
  %i.boo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bok, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1155)
  store <4 x double> %i.bol, ptr %i.bod, align 8, !tbaa !90
  store <4 x double> %i.bom, ptr %i.boe, align 8, !tbaa !90
  store <4 x double> %i.bon, ptr %i.bof, align 8, !tbaa !90
  store <4 x double> %i.boo, ptr %i.bog, align 8, !tbaa !90
  %index.next1156 = add nuw i64 %index1151, 16    ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.bop = icmp eq i64 %index.next1156, %n.vec1147
  br i1 %i.bop, label %middle.block1157, label %vector.body1150, !llvm.loop !220

middle.block1157:                                 ; preds = %vector.body1150
  %cmp.n1158 = icmp eq i64 %i.bnv, %n.vec1147
  br i1 %cmp.n1158, label %.loopexit.i308, label %vec.epilog.iter.check1160

vec.epilog.iter.check1160:                        ; preds = %middle.block1157
  %min.epilog.iters.check1162 = icmp eq i64 %i.bnw, 0
  br i1 %min.epilog.iters.check1162, label %.lr.ph46.i.preheader, label %vec.epilog.ph1163, !prof !93

vec.epilog.ph1163:                                ; preds = %vector.main.loop.iter.check1144, %vec.epilog.iter.check1160
  %vec.epilog.resume.val1164 = phi i64 [ %n.vec1147, %vec.epilog.iter.check1160 ], [ 0, %vector.main.loop.iter.check1144 ]
  %bc.resume.val1165 = phi i64 [ %i.bnx, %vec.epilog.iter.check1160 ], [ 1, %vector.main.loop.iter.check1144 ]
  %n.vec1166 = and i64 %i.bnv, -4                 ; 3 uses
  %i.boq = or disjoint i64 %n.vec1166, 1
  %broadcast.splatinsert1167 = insertelement <4 x double> poison, double %i.bnu, i64 0
  %broadcast.splat1168 = shufflevector <4 x double> %broadcast.splatinsert1167, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bor = trunc nsw i64 %bc.resume.val1165 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %i.bor, i64 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat1170, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1171

vec.epilog.vector.body1171:                       ; preds = %vec.epilog.vector.body1171, %vec.epilog.ph1163
  %index1172 = phi i64 [ %vec.epilog.resume.val1164, %vec.epilog.ph1163 ], [ %index.next1175, %vec.epilog.vector.body1171 ] ; 2 uses
  %vec.ind1173 = phi <4 x i32> [ %induction, %vec.epilog.ph1163 ], [ %vec.ind.next1176, %vec.epilog.vector.body1171 ] ; 2 uses
  %i.bos = uitofp nneg <4 x i32> %vec.ind1173 to <4 x double>
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %index1172
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 8 ; 2 uses
  %wide.load1174 = load <4 x double>, ptr %i.bou, align 8, !tbaa !90
  %i.bov = fneg <4 x double> %i.bos
  %i.bow = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bov, <4 x double> %broadcast.splat1168, <4 x double> %wide.load1174)
  store <4 x double> %i.bow, ptr %i.bou, align 8, !tbaa !90
  %index.next1175 = add nuw i64 %index1172, 4     ; 2 uses
  %vec.ind.next1176 = add <4 x i32> %vec.ind1173, splat (i32 4)
  %i.box = icmp eq i64 %index.next1175, %n.vec1166
  br i1 %i.box, label %vec.epilog.middle.block1177, label %vec.epilog.vector.body1171, !llvm.loop !221

vec.epilog.middle.block1177:                      ; preds = %vec.epilog.vector.body1171
  %cmp.n1178 = icmp eq i64 %i.bnv, %n.vec1166
  br i1 %cmp.n1178, label %.loopexit.i308, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %iter.check1159, %vec.epilog.iter.check1160, %vec.epilog.middle.block1177
  %indvars.iv73.i.ph = phi i64 [ 1, %iter.check1159 ], [ %i.bnx, %vec.epilog.iter.check1160 ], [ %i.boq, %vec.epilog.middle.block1177 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader, %.lr.ph46.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %.lr.ph46.i ], [ %indvars.iv73.i.ph, %.lr.ph46.i.preheader ] ; 3 uses
  %i.boy = trunc nuw nsw i64 %indvars.iv73.i to i32
  %i.boz = uitofp nneg i32 %i.boy to double
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %indvars.iv73.i ; 2 uses
  %i.bpb = load double, ptr %i.bpa, align 8, !tbaa !90
  %i.bpc = fneg double %i.boz
  %i.bpd = call double @llvm.fmuladd.f64(double %i.bpc, double %i.bnu, double %i.bpb)
  store double %i.bpd, ptr %i.bpa, align 8, !tbaa !90
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %.loopexit.i308, label %.lr.ph46.i, !llvm.loop !222

.loopexit.i308:                                   ; preds = %.lr.ph46.i, %middle.block1157, %vec.epilog.middle.block1177, %bb.il, %._crit_edge43.i
  %i.bpe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 116), align 4, !tbaa !105, !range !52, !noundef !53
  %i.bpf = trunc nuw i8 %i.bpe to i1
  br i1 %i.bpf, label %bb.im, label %bb.iu

bb.im:                                            ; preds = %.loopexit.i308
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA18_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(18) @.str.376, i8 noundef zeroext 2)
          to label %.noexc338 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1281

.noexc338:                                        ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bpg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bpg, ptr %3, align 8, !tbaa !94
  %i.bph = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.be) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #25
  store i64 %i.bph, ptr %i.af, align 8, !tbaa !95
  %i.bpi = icmp ugt i64 %i.bph, 15
  br i1 %i.bpi, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc338
  %i.bpj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 0)
          to label %.noexc.i317 unwind label %bb.is ; 2 uses

.noexc.i317:                                      ; preds = %.noexc.i.i
  store ptr %i.bpj, ptr %3, align 8, !tbaa !61
  %i.bpk = load i64, ptr %i.af, align 8, !tbaa !95
  store i64 %i.bpk, ptr %i.bpg, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i317, %.noexc338
  %i.bpl = phi ptr [ %i.bpj, %.noexc.i317 ], [ %i.bpg, %.noexc338 ] ; 2 uses
  switch i64 %i.bph, label %bb.io [
    i64 1, label %bb.in
    i64 0, label %bb.ip
  ]

bb.in:                                            ; preds = %._crit_edge.i.i.i
  %i.bpm = load i8, ptr %i.be, align 16, !tbaa !16
  store i8 %i.bpm, ptr %i.bpl, align 1, !tbaa !16
  br label %bb.ip

bb.io:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpl, ptr nonnull readonly align 16 %i.be, i64 %i.bph, i1 false)
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %._crit_edge.i.i.i
  %i.bpn = load i64, ptr %i.af, align 8, !tbaa !95 ; 2 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bpn, ptr %i.bpo, align 8, !tbaa !96
  %i.bpp = load ptr, ptr %3, align 8, !tbaa !61
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 %i.bpn
  store i8 0, ptr %i.bpq, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bpr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bpr, ptr %4, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bpr, ptr noundef nonnull align 1 dereferenceable(12) @.str.378, i64 12, i1 false)
  %i.bps = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.bps, align 8, !tbaa !96
  %i.bpt = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.bpt, align 4, !tbaa !16
  %i.bpu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !97
end_hunk_0
