Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_bar?download=true
inline.NumInlined: 497
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z7gmx_bariPPc:bb.a

.lr.ph130.i.i.new:                                ; preds = %.prol.loopexit4372, %.lr.ph130.i.i.new
  %indvars.iv157.i.i = phi i64 [ %indvars.iv.next158.i.i.7, %.lr.ph130.i.i.new ], [ %indvars.iv157.i.i.unr, %.prol.loopexit4372 ] ; 9 uses
  %.1101128.i.i = phi double [ %i.ekj, %.lr.ph130.i.i.new ], [ %.1101128.i.i.unr, %.prol.loopexit4372 ]
  %i.ejf = getelementptr inbounds [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ejg = load double, ptr %i.ejf, align 8, !tbaa !56
  %i.ejh = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.ejg, double %.1101128.i.i)
  %i.eji = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ejj = getelementptr i8, ptr %i.eji, i64 8
  %i.ejk = load double, ptr %i.ejj, align 8, !tbaa !56
  %i.ejl = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.ejk, double %i.ejh)
  %i.ejm = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ejn = getelementptr i8, ptr %i.ejm, i64 16
  %i.ejo = load double, ptr %i.ejn, align 8, !tbaa !56
  %i.ejp = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.ejo, double %i.ejl)
  %i.ejq = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ejr = getelementptr i8, ptr %i.ejq, i64 24
  %i.ejs = load double, ptr %i.ejr, align 8, !tbaa !56
  %i.ejt = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.ejs, double %i.ejp)
  %i.eju = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ejv = getelementptr i8, ptr %i.eju, i64 32
  %i.ejw = load double, ptr %i.ejv, align 8, !tbaa !56
  %i.ejx = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.ejw, double %i.ejt)
  %i.ejy = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ejz = getelementptr i8, ptr %i.ejy, i64 40
  %i.eka = load double, ptr %i.ejz, align 8, !tbaa !56
  %i.ekb = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.eka, double %i.ejx)
  %i.ekc = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ekd = getelementptr i8, ptr %i.ekc, i64 48
  %i.eke = load double, ptr %i.ekd, align 8, !tbaa !56
  %i.ekf = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.eke, double %i.ekb)
  %i.ekg = getelementptr [8 x i8], ptr %i.eix, i64 %indvars.iv157.i.i
  %i.ekh = getelementptr i8, ptr %i.ekg, i64 56
  %i.eki = load double, ptr %i.ekh, align 8, !tbaa !56
  %i.ekj = call double @llvm.fmuladd.f64(double %.0106.i.i, double %i.eki, double %i.ekf) ; 2 uses
  %indvars.iv.next158.i.i.7 = add nsw i64 %indvars.iv157.i.i, 8 ; 2 uses
  %exitcond161.not.i.i.7 = icmp eq i64 %indvars.iv.next158.i.i.7, %wide.trip.count160.i.i
  br i1 %exitcond161.not.i.i.7, label %.loopexit.i.i510, label %.lr.ph130.i.i.new, !llvm.loop !210

bb.vi:                                            ; preds = %bb.vg
  %i.ekk = getelementptr inbounds nuw i8, ptr %i.eir, i64 64
  %i.ekl = load i32, ptr %i.ekk, align 8, !tbaa !89
  %i.ekm = icmp sgt i32 %i.ekl, 1
  %or.cond3.i.i512 = and i1 %i.eed, %i.ekm
  %spec.select110.i.i = zext i1 %or.cond3.i.i512 to i64
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.eir, i64 16
  %i.eko = getelementptr inbounds nuw [8 x i8], ptr %i.ekn, i64 %spec.select110.i.i
  %i.ekp = load double, ptr %i.eko, align 8, !tbaa !56 ; 5 uses
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.eir, i64 48
  %i.ekr = load i32, ptr %i.ekq, align 8, !tbaa !15 ; 3 uses
  %i.eks = icmp sgt i32 %i.ekr, 0
  br i1 %i.eks, label %.lr.ph126.i.i, label %.loopexit.i.i510

.lr.ph126.i.i:                                    ; preds = %bb.vi
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.eir, i64 32
  %i.eku = load i64, ptr %i.ekt, align 8, !tbaa !88 ; 5 uses
  %i.ekv = load ptr, ptr %i.eir, align 8, !tbaa !50 ; 5 uses
  %wide.trip.count155.i.i = zext nneg i32 %i.ekr to i64 ; 2 uses
  %xtraiter4364 = and i64 %wide.trip.count155.i.i, 3 ; 3 uses
  %i.ekw = icmp ult i32 %i.ekr, 4
  br i1 %i.ekw, label %.epil.preheader4363, label %.lr.ph126.i.i.new

.lr.ph126.i.i.new:                                ; preds = %.lr.ph126.i.i
  %unroll_iter4369 = and i64 %wide.trip.count155.i.i, 2147483644
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vj, %.lr.ph126.i.i.new
  %indvars.iv152.i.i = phi i64 [ 0, %.lr.ph126.i.i.new ], [ %indvars.iv.next153.i.i.3, %bb.vj ] ; 6 uses
  %.2102124.i.i = phi double [ %.0100132.i.i, %.lr.ph126.i.i.new ], [ %i.emg, %bb.vj ]
  %niter4370 = phi i64 [ 0, %.lr.ph126.i.i.new ], [ %niter4370.next.3, %bb.vj ]
  %i.ekx = add nsw i64 %indvars.iv152.i.i, %i.eku
  %i.eky = sitofp i64 %i.ekx to double
  %i.ekz = fadd nnan double %i.eky, 5.000000e-01
  %i.ela = fmul double %.0106.i.i, %i.ekz
  %i.elb = fmul double %i.ekp, %i.ela
  %i.elc = getelementptr inbounds nuw [4 x i8], ptr %i.ekv, i64 %indvars.iv152.i.i
  %i.eld = load i32, ptr %i.elc, align 4, !tbaa !15
  %i.ele = uitofp i32 %i.eld to double
  %i.elf = call double @llvm.fmuladd.f64(double %i.ele, double %i.elb, double %.2102124.i.i)
  %indvars.iv.next153.i.i = or disjoint i64 %indvars.iv152.i.i, 1 ; 2 uses
  %i.elg = add nsw i64 %indvars.iv.next153.i.i, %i.eku
  %i.elh = sitofp i64 %i.elg to double
  %i.eli = fadd nnan double %i.elh, 5.000000e-01
  %i.elj = fmul double %.0106.i.i, %i.eli
  %i.elk = fmul double %i.ekp, %i.elj
  %i.ell = getelementptr inbounds nuw [4 x i8], ptr %i.ekv, i64 %indvars.iv.next153.i.i
  %i.elm = load i32, ptr %i.ell, align 4, !tbaa !15
  %i.eln = uitofp i32 %i.elm to double
  %i.elo = call double @llvm.fmuladd.f64(double %i.eln, double %i.elk, double %i.elf)
  %indvars.iv.next153.i.i.1 = or disjoint i64 %indvars.iv152.i.i, 2 ; 2 uses
  %i.elp = add nsw i64 %indvars.iv.next153.i.i.1, %i.eku
  %i.elq = sitofp i64 %i.elp to double
  %i.elr = fadd nnan double %i.elq, 5.000000e-01
  %i.els = fmul double %.0106.i.i, %i.elr
  %i.elt = fmul double %i.ekp, %i.els
  %i.elu = getelementptr inbounds nuw [4 x i8], ptr %i.ekv, i64 %indvars.iv.next153.i.i.1
  %i.elv = load i32, ptr %i.elu, align 4, !tbaa !15
  %i.elw = uitofp i32 %i.elv to double
  %i.elx = call double @llvm.fmuladd.f64(double %i.elw, double %i.elt, double %i.elo)
  %indvars.iv.next153.i.i.2 = or disjoint i64 %indvars.iv152.i.i, 3 ; 2 uses
  %i.ely = add nsw i64 %indvars.iv.next153.i.i.2, %i.eku
  %i.elz = sitofp i64 %i.ely to double
  %i.ema = fadd nnan double %i.elz, 5.000000e-01
  %i.emb = fmul double %.0106.i.i, %i.ema
  %i.emc = fmul double %i.ekp, %i.emb
  %i.emd = getelementptr inbounds nuw [4 x i8], ptr %i.ekv, i64 %indvars.iv.next153.i.i.2
  %i.eme = load i32, ptr %i.emd, align 4, !tbaa !15
  %i.emf = uitofp i32 %i.eme to double
  %i.emg = call double @llvm.fmuladd.f64(double %i.emf, double %i.emc, double %i.elx) ; 3 uses
  %indvars.iv.next153.i.i.3 = add nuw nsw i64 %indvars.iv152.i.i, 4 ; 2 uses
  %niter4370.next.3 = add i64 %niter4370, 4       ; 2 uses
  %niter4370.ncmp.3 = icmp eq i64 %niter4370.next.3, %unroll_iter4369
  br i1 %niter4370.ncmp.3, label %.loopexit.i.i510.loopexit3605.unr-lcssa, label %bb.vj, !llvm.loop !211

.loopexit.i.i510.loopexit3605.unr-lcssa:          ; preds = %bb.vj
  %lcmp.mod4366.not = icmp eq i64 %xtraiter4364, 0
  br i1 %lcmp.mod4366.not, label %.loopexit.i.i510, label %.epil.preheader4363

.epil.preheader4363:                              ; preds = %.loopexit.i.i510.loopexit3605.unr-lcssa, %.lr.ph126.i.i
  %indvars.iv152.i.i.epil.init = phi i64 [ 0, %.lr.ph126.i.i ], [ %indvars.iv.next153.i.i.3, %.loopexit.i.i510.loopexit3605.unr-lcssa ]
  %.2102124.i.i.epil.init = phi double [ %.0100132.i.i, %.lr.ph126.i.i ], [ %i.emg, %.loopexit.i.i510.loopexit3605.unr-lcssa ]
  %lcmp.mod4368 = icmp ne i64 %xtraiter4364, 0
  call void @llvm.assume(i1 %lcmp.mod4368)
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vk, %.epil.preheader4363
  %indvars.iv152.i.i.epil = phi i64 [ %indvars.iv152.i.i.epil.init, %.epil.preheader4363 ], [ %indvars.iv.next153.i.i.epil, %bb.vk ] ; 3 uses
  %.2102124.i.i.epil = phi double [ %.2102124.i.i.epil.init, %.epil.preheader4363 ], [ %i.emp, %bb.vk ]
  %epil.iter4365 = phi i64 [ 0, %.epil.preheader4363 ], [ %epil.iter4365.next, %bb.vk ]
  %i.emh = add nsw i64 %indvars.iv152.i.i.epil, %i.eku
  %i.emi = sitofp i64 %i.emh to double
  %i.emj = fadd nnan double %i.emi, 5.000000e-01
  %i.emk = fmul double %.0106.i.i, %i.emj
  %i.eml = fmul double %i.ekp, %i.emk
  %i.emm = getelementptr inbounds nuw [4 x i8], ptr %i.ekv, i64 %indvars.iv152.i.i.epil
  %i.emn = load i32, ptr %i.emm, align 4, !tbaa !15
  %i.emo = uitofp i32 %i.emn to double
  %i.emp = call double @llvm.fmuladd.f64(double %i.emo, double %i.eml, double %.2102124.i.i.epil) ; 2 uses
  %indvars.iv.next153.i.i.epil = add nuw nsw i64 %indvars.iv152.i.i.epil, 1
  %epil.iter4365.next = add i64 %epil.iter4365, 1 ; 2 uses
  %epil.iter4365.cmp.not = icmp eq i64 %epil.iter4365.next, %xtraiter4364
  br i1 %epil.iter4365.cmp.not, label %.loopexit.i.i510, label %bb.vk, !llvm.loop !218

.loopexit.i.i510:                                 ; preds = %.loopexit.i.i510.loopexit3605.unr-lcssa, %bb.vk, %.prol.loopexit4372, %.lr.ph130.i.i.new, %bb.vi, %bb.vh, %bb.vf
  %.3103.i.i = phi double [ %.0100132.i.i, %bb.vf ], [ %i.ekj, %.lr.ph130.i.i.new ], [ %.0100132.i.i, %bb.vh ], [ %.0100132.i.i, %bb.vi ], [ %.lcssa3630.unr, %.prol.loopexit4372 ], [ %i.emg, %.loopexit.i.i510.loopexit3605.unr-lcssa ], [ %i.emp, %bb.vk ] ; 2 uses
  %indvars.iv.next163.i.i = add nuw nsw i64 %indvars.iv162.i.i, 1 ; 2 uses
  %exitcond166.not.i.i = icmp eq i64 %indvars.iv.next163.i.i, %wide.trip.count165.i.i
  br i1 %exitcond166.not.i.i, label %.loopexit.i509, label %bb.vf, !llvm.loop !213

.thread240.i:                                     ; preds = %.noexc539, %.noexc538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.vl

.loopexit.i509:                                   ; preds = %.loopexit.i.i510, %.preheader.i.i508
  %.0100.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i508 ], [ %.3103.i.i, %.loopexit.i.i510 ]
  invoke fastcc void @_ZL14calc_dg_stddevP13sample_coll_tS0_ddPd(ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef %i.dje, double noundef %i.eam, ptr noundef nonnull %i.a)
          to label %.noexc546 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp4103

.noexc546:                                        ; preds = %.loopexit.i509
  %i.emq = load double, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %.val212.i = load ptr, ptr %i.dio, align 8
  %.val213.i = load ptr, ptr %i.dit, align 8, !tbaa !78
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.116, i32 noundef 630, ptr noundef %.val213.i)
          to label %.noexc547 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp4103

.noexc547:                                        ; preds = %.noexc546
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.116, i32 noundef 631, ptr noundef %.val212.i)
          to label %.noexc548 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp4103

.noexc548:                                        ; preds = %.noexc547
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.116, i32 noundef 630, ptr noundef %.val211.pre.i)
          to label %.noexc549 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp4103

.noexc549:                                        ; preds = %.noexc548
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.116, i32 noundef 631, ptr noundef %.val.pre.i)
          to label %.noexc550 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp4103

.noexc550:                                        ; preds = %.noexc549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.emr = call double @llvm.fmuladd.f64(double %i.emq, double %i.emq, double %.0171329.i) ; 2 uses
  %i.ems = fadd double %.0173328.i, %i.emq
  %i.emt = insertelement <2 x i64> %i.ear, i64 %i.eas, i64 1
  %i.emu = sitofp <2 x i64> %i.emt to <2 x double>
  %i.emv = insertelement <2 x double> poison, double %.096.lcssa.i.i, i64 0
  %i.emw = insertelement <2 x double> %i.emv, double %.0100.lcssa.i.i, i64 1
  %i.emx = fdiv <2 x double> %i.emw, %i.emu       ; 2 uses
  %i.emy = insertelement <2 x double> poison, double %i.eam, i64 0
  %i.emz = shufflevector <2 x double> %i.emy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ena = fsub <2 x double> %i.emx, %i.emz
  %i.enb = fadd <2 x double> %i.emx, %i.emz
  %i.enc = shufflevector <2 x double> %i.ena, <2 x double> %i.enb, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.end = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.enc, <2 x double> %i.enc, <2 x double> %i.eaf) ; 2 uses
  %i.ene = fadd <2 x double> %i.eag, %i.enc
  %indvars.iv.next398.i = add nuw nsw i64 %indvars.iv397.i, 1 ; 2 uses
  %exitcond401.not.i = icmp eq i64 %indvars.iv.next398.i, %wide.trip.count400.i
  br i1 %exitcond401.not.i, label %.thread245.i.loopexit, label %bb.ui, !llvm.loop !219

.thread245.i.loopexit:                            ; preds = %.noexc550
  %i.enf = insertelement <4 x double> poison, double %i.ean, i64 0
  %i.eng = shufflevector <2 x double> %i.eag, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.enh = shufflevector <4 x double> %i.enf, <4 x double> %i.eng, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.eni = insertelement <4 x double> %i.enh, double %.0173328.i, i64 3
  %67 = shufflevector <2 x double> %i.enc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %68 = shufflevector <4 x double> %67, <4 x double> <double -0.000000e+00, double poison, double poison, double poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 poison>
  %69 = insertelement <4 x double> %68, double %i.emq, i64 3
  %70 = fadd <4 x double> %i.eni, %69
  %i.enj = shufflevector <2 x double> %i.end, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %.thread245.i

.thread245.i:                                     ; preds = %.thread245.i.loopexit, %.preheader..thread245_crit_edge.i
  %.pre-phi = phi i32 [ %.pre406.i, %.preheader..thread245_crit_edge.i ], [ %i.eae, %.thread245.i.loopexit ] ; 2 uses
  %.0183.lcssa.i = phi double [ 0.000000e+00, %.preheader..thread245_crit_edge.i ], [ %i.eao, %.thread245.i.loopexit ]
  %.0171.lcssa.i = phi double [ 0.000000e+00, %.preheader..thread245_crit_edge.i ], [ %i.emr, %.thread245.i.loopexit ]
  %i.enk = phi <4 x double> [ zeroinitializer, %.preheader..thread245_crit_edge.i ], [ %70, %.thread245.i.loopexit ]
  %i.enl = phi <4 x double> [ <double 0.000000e+00, double 0.000000e+00, double poison, double poison>, %.preheader..thread245_crit_edge.i ], [ %i.enj, %.thread245.i.loopexit ]
  %i.enm = sitofp i32 %.pre-phi to double
  %i.enn = add i32 %.pre-phi, -1
  %i.eno = sitofp i32 %i.enn to double
  %i.enp = insertelement <4 x double> poison, double %i.enm, i64 0
  %i.enq = shufflevector <4 x double> %i.enp, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.enr = fdiv <4 x double> %i.enk, %i.enq       ; 2 uses
  %i.ens = insertelement <4 x double> poison, double %.0183.lcssa.i, i64 0
  %i.ent = shufflevector <4 x double> %i.ens, <4 x double> %i.enl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.enu = insertelement <4 x double> %i.ent, double %.0171.lcssa.i, i64 3
  %i.env = fdiv <4 x double> %i.enu, %i.enq
  %i.enw = fneg <4 x double> %i.enr
  %i.enx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.enw, <4 x double> %i.enr, <4 x double> %i.env)
  %i.eny = insertelement <4 x double> poison, double %i.eno, i64 0
  %i.enz = shufflevector <4 x double> %i.eny, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eoa = fdiv <4 x double> %i.enx, %i.enz
  %i.eob = fadd <4 x double> %i.eac, %i.eoa       ; 2 uses
  %indvars.iv.next403.i = add nsw i64 %indvars.iv402.i, 1 ; 2 uses
  %lftr.wideiv.i502 = trunc i64 %indvars.iv.next403.i to i32
  %exitcond405.not.i = icmp eq i32 %i.dzy, %lftr.wideiv.i502
  br i1 %exitcond405.not.i, label %._crit_edge.i503, label %.preheader.i501, !llvm.loop !220

._crit_edge.i503:                                 ; preds = %.thread245.i, %.noexc534
  %i.eoc = phi <4 x double> [ zeroinitializer, %.noexc534 ], [ %i.eob, %.thread245.i ]
  %reass.sub = sub i32 %i.djb, %i.dja
  %i.eod = add i32 %reass.sub, 1
  %i.eoe = sitofp i32 %i.eod to double
  %i.eof = getelementptr inbounds nuw i8, ptr %i.diz, i64 24
  %i.eog = getelementptr inbounds nuw i8, ptr %i.diz, i64 56
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.diz, i64 72
  %i.eoi = insertelement <4 x double> poison, double %i.eoe, i64 0
  %i.eoj = shufflevector <4 x double> %i.eoi, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eok = fdiv <4 x double> %i.eoc, %i.eoj       ; 4 uses
  %i.eol = extractelement <4 x double> %i.eok, i64 0
  %i.eom = call double @sqrt(double noundef %i.eol) #23
  store double %i.eom, ptr %i.eof, align 8, !tbaa !306
  %i.eon = extractelement <4 x double> %i.eok, i64 1
  %i.eoo = call double @sqrt(double noundef %i.eon) #23
  store double %i.eoo, ptr %i.eog, align 8, !tbaa !307
  %i.eop = extractelement <4 x double> %i.eok, i64 2
  %i.eoq = call double @sqrt(double noundef %i.eop) #23
  store double %i.eoq, ptr %i.eoh, align 8, !tbaa !308
  %i.eor = extractelement <4 x double> %i.eok, i64 3
  %i.eos = call double @sqrt(double noundef %i.eor) #23
  %i.eot = getelementptr inbounds nuw i8, ptr %i.diz, i64 88
  store double %i.eos, ptr %i.eot, align 8, !tbaa !309
  br label %bb.vl

bb.vl:                                            ; preds = %._crit_edge.i503, %.thread240.i
  %.1664 = phi i1 [ true, %._crit_edge.i503 ], [ false, %.thread240.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.eou = load <2 x double>, ptr %i.djj, align 8, !tbaa !56
  %i.eov = fcmp ogt <2 x double> %i.eou, %i.dix
  %i.eow = select <2 x i1> %i.eov, <2 x i1> splat (i1 true), <2 x i1> %i.diy ; 3 uses
  %indvars.iv.next1792 = add nuw nsw i64 %indvars.iv1791, 1 ; 2 uses
  %exitcond1803.not = icmp eq i64 %indvars.iv.next1792, %wide.trip.count
  br i1 %exitcond1803.not, label %bb.vm, label %bb.sn, !llvm.loop !221

bb.vm:                                            ; preds = %bb.vl
  %i.eox = load float, ptr @_ZZ7gmx_bariPPcE4temp, align 4, !tbaa !252
  %i.eoy = fpext float %i.eox to double           ; 2 uses
  %i.eoz = fmul double %i.eoy, f0x3F81072C483AF26D ; 6 uses
  %i.epa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, double noundef %i.eoy) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.epb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.135, ptr noundef nonnull @.str.136) ; 0 uses
  %i.epc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.135, ptr noundef nonnull @.str.137) ; 0 uses
  %i.epd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull @.str.138) ; 0 uses
  br i1 %.1664, label %bb.vn, label %bb.vo

bb.vn:                                            ; preds = %bb.vm
  %i.epe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull @.str.139) ; 0 uses
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  %i.epf = extractelement <2 x i1> %i.eow, i64 0  ; 3 uses
  br i1 %i.epf, label %bb.vp, label %bb.vq

bb.vp:                                            ; preds = %bb.vo
  %i.epg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull @.str.140) ; 0 uses
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  %i.eph = extractelement <2 x i1> %i.eow, i64 1  ; 4 uses
  br i1 %i.eph, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  %i.epi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull @.str.141) ; 0 uses
  br label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %bb.vq
  %i.epj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull @.str.142) ; 0 uses
  br i1 %.1664, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.epk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull @.str.143) ; 0 uses
  %i.epl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull @.str.144) ; 0 uses
  br label %bb.vv

bb.vu:                                            ; preds = %bb.vs
  %i.epm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull @.str.139) ; 0 uses
  %i.epn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull @.str.143) ; 0 uses
  %i.epo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull @.str.139) ; 0 uses
  %i.epp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull @.str.144) ; 0 uses
  %i.epq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull @.str.139) ; 0 uses
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vt, %bb.vu
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.vv
  %indvars.iv1804.ph = phi i64 [ %indvars.iv.next18052161, %.thread ], [ 0, %bb.vv ]
  %.01401241.ph = phi i1 [ false, %.thread ], [ true, %bb.vv ]
  br label %bb.vw

bb.vw:                                            ; preds = %.outer, %bb.wq
  %indvars.iv1804 = phi i64 [ %indvars.iv.next1805, %bb.wq ], [ %indvars.iv1804.ph, %.outer ] ; 3 uses
  %i.epr = getelementptr inbounds nuw [96 x i8], ptr %i.csx, i64 %indvars.iv1804 ; 15 uses
  %i.eps = load ptr, ptr %i.epr, align 8, !tbaa !301
  %i.ept = load ptr, ptr %i.eps, align 8, !tbaa !93 ; 3 uses
  %i.epu = getelementptr inbounds nuw i8, ptr %i.ept, i64 24
  %i.epv = load i32, ptr %i.epu, align 8, !tbaa !52 ; 2 uses
  %i.epw = icmp sgt i32 %i.epv, -1
  br i1 %i.epw, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %bb.vw
  %i.epx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.epv) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit

bb.vy:                                            ; preds = %bb.vw
  %i.epy = getelementptr inbounds nuw i8, ptr %i.ept, i64 8
  %i.epz = load i32, ptr %i.epy, align 8, !tbaa !53 ; 2 uses
  %i.eqa = icmp slt i32 %i.epz, 0
  br i1 %i.eqa, label %bb.vz, label %bb.wa

bb.vz:                                            ; preds = %bb.vy
  %i.eqb = load ptr, ptr %i.ept, align 8, !tbaa !58
  %i.eqc = load double, ptr %i.eqb, align 8, !tbaa !56
  %i.eqd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.eqc) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit

bb.wa:                                            ; preds = %bb.vy
  %i.eqe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.epz) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit: ; preds = %bb.vx, %bb.vz, %bb.wa
  %i.eqf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, ptr noundef nonnull %i.an) ; 0 uses
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.epr, i64 8
  %i.eqh = load ptr, ptr %i.eqg, align 8, !tbaa !302
  %i.eqi = load ptr, ptr %i.eqh, align 8, !tbaa !93 ; 3 uses
  %i.eqj = getelementptr inbounds nuw i8, ptr %i.eqi, i64 24
  %i.eqk = load i32, ptr %i.eqj, align 8, !tbaa !52 ; 2 uses
  %i.eql = icmp sgt i32 %i.eqk, -1
  br i1 %i.eql, label %bb.wb, label %bb.wc

bb.wb:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit
  %i.eqm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %i.eqk) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit551

bb.wc:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit
  %i.eqn = getelementptr inbounds nuw i8, ptr %i.eqi, i64 8
  %i.eqo = load i32, ptr %i.eqn, align 8, !tbaa !53 ; 2 uses
  %i.eqp = icmp slt i32 %i.eqo, 0
  br i1 %i.eqp, label %bb.wd, label %bb.we

bb.wd:                                            ; preds = %bb.wc
  %i.eqq = load ptr, ptr %i.eqi, align 8, !tbaa !58
  %i.eqr = load double, ptr %i.eqq, align 8, !tbaa !56
  %i.eqs = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.290, double noundef %i.eqr) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit551

bb.we:                                            ; preds = %bb.wc
  %i.eqt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) @.str.291, i32 noundef %i.eqo) #23 ; 0 uses
  br label %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit551

_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit551: ; preds = %bb.wb, %bb.wd, %bb.we
  %i.equ = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, ptr noundef nonnull %i.an) ; 0 uses
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.epr, i64 16
  %i.eqw = load double, ptr %i.eqv, align 8, !tbaa !303
  %i.eqx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ap, double noundef %i.eqw) ; 0 uses
  %putchar168 = call i32 @putchar(i32 32)         ; 0 uses
  br i1 %.1664, label %bb.wf, label %bb.wg

bb.wf:                                            ; preds = %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit551
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.epr, i64 24
  %i.eqz = load double, ptr %i.eqy, align 8, !tbaa !306
  %i.era = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.ar, double noundef %i.eqz) ; 0 uses
  %putchar169 = call i32 @putchar(i32 32)         ; 0 uses
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %_ZL22lambda_vec_print_shortPK12lambda_vec_tPc.exit551
end_hunk_0
