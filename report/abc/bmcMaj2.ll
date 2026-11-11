Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj2?download=true
inline.NumInlined: 254
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 76
begin_hunk_0_@Maj_ManExactSynthesis2:bb.a
  br i1 %.not105.1.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 %i.aij, ptr %.3.sroa.gep180.i, align 4, !tbaa !10
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.3.1.sroa.phi.i = phi ptr [ %.3.sroa.gep.i, %bb.eg ], [ %.3.sroa.gep180.i, %bb.ef ]
  %i.aic = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.aid = call i32 @sat_solver_addclause(ptr noundef %i.aic, ptr noundef nonnull %i.b, ptr noundef nonnull %.3.1.sroa.phi.i) #21
  %.not107.not.1.i = icmp eq i32 %i.aid, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not107.not.1.i, label %.loopexit90, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.adx, ptr %i.b, align 4, !tbaa !10
  store i32 %invariant.op147.i, ptr %i.abq, align 4, !tbaa !10
  %i.aie = load i32, ptr %i.p, align 8, !tbaa !118
  %i.aif = add nsw i32 %i.aie, -1
  %.not105.2.i = icmp eq i32 %i.aif, %i.adq
  br i1 %.not105.2.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store i32 %i.aij, ptr %.3.sroa.gep180.i, align 4, !tbaa !10
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.3.2.sroa.phi.i = phi ptr [ %.3.sroa.gep.i, %bb.ej ], [ %.3.sroa.gep180.i, %bb.ei ]
  %i.aig = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.aih = call i32 @sat_solver_addclause(ptr noundef %i.aig, ptr noundef nonnull %i.b, ptr noundef nonnull %.3.2.sroa.phi.i) #21
  %.not107.not.2.i = icmp eq i32 %i.aih, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not107.not.2.i, label %.loopexit90, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.ek
  %.pre197.i = load i32, ptr %i.p, align 8, !tbaa !118 ; 2 uses
  %.pre199.i = add nsw i32 %.pre197.i, -1
  %i.aii = icmp eq i32 %.pre199.i, %i.adq
  br label %.loopexit.i

bb.el:                                            ; preds = %.preheader129.i
  %i.aij = add i32 %i.adx, 7                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %invariant.op147.i, ptr %i.b, align 4, !tbaa !10
  store i32 %invariant.op149.i, ptr %i.abq, align 4, !tbaa !10
  br i1 %i.aeb, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 %i.aij, ptr %.3.sroa.gep180.i, align 4, !tbaa !10
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.3.sroa.phi.i = phi ptr [ %.3.sroa.gep.i, %bb.em ], [ %.3.sroa.gep180.i, %bb.el ]
  %i.aik = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ail = call i32 @sat_solver_addclause(ptr noundef %i.aik, ptr noundef nonnull %i.b, ptr noundef nonnull %.3.sroa.phi.i) #21
  %.not107.not.i = icmp eq i32 %i.ail, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not107.not.i, label %.loopexit90, label %bb.ef

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader129.i
  %.pre-phi.i = phi i1 [ %i.aii, %.loopexit.loopexit.i ], [ true, %.preheader129.i ] ; 2 uses
  %i.aim = phi i32 [ %.pre197.i, %.loopexit.loopexit.i ], [ %i.ady, %.preheader129.i ]
  %or.cond.1.i = select i1 %.pre-phi.i, i1 %i.adb, i1 false
  br i1 %or.cond.1.i, label %.loopexit.1.i, label %bb.eo

bb.eo:                                            ; preds = %.loopexit.i
  %i.ain = or disjoint i32 %i.adx, 1              ; 2 uses
  %.reass.reass.1.i = add i32 %i.adx, 3           ; 2 uses
  %.reass141.reass.1.i = add i32 %i.adx, 5        ; 2 uses
  %.reass143.reass.1.i = add i32 %i.adx, 6        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %.reass.reass.1.i, ptr %i.b, align 4, !tbaa !10
  store i32 %.reass141.reass.1.i, ptr %i.abq, align 4, !tbaa !10
  br i1 %.pre-phi.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i32 %.reass143.reass.1.i, ptr %.3.sroa.gep180.i, align 4, !tbaa !10
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.3.1175.sroa.phi.i = phi ptr [ %.3.sroa.gep.i, %bb.ep ], [ %.3.sroa.gep180.i, %bb.eo ]
  %i.aio = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.aip = call i32 @sat_solver_addclause(ptr noundef %i.aio, ptr noundef nonnull %i.b, ptr noundef nonnull %.3.1175.sroa.phi.i) #21
  %.not107.not.1176.i = icmp eq i32 %i.aip, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not107.not.1176.i, label %.loopexit90, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.ain, ptr %i.b, align 4, !tbaa !10
  store i32 %.reass141.reass.1.i, ptr %i.abq, align 4, !tbaa !10
  %i.aiq = load i32, ptr %i.p, align 8, !tbaa !118
  %i.air = add nsw i32 %i.aiq, -1
  %.not105.1.1.i = icmp eq i32 %i.air, %i.adq
  br i1 %.not105.1.1.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  store i32 %.reass143.reass.1.i, ptr %.3.sroa.gep180.i, align 4, !tbaa !10
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.3.1.1.sroa.phi.i = phi ptr [ %.3.sroa.gep.i, %bb.es ], [ %.3.sroa.gep180.i, %bb.er ]
  %i.ais = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ait = call i32 @sat_solver_addclause(ptr noundef %i.ais, ptr noundef nonnull %i.b, ptr noundef nonnull %.3.1.1.sroa.phi.i) #21
  %.not107.not.1.1.i = icmp eq i32 %i.ait, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not107.not.1.1.i, label %.loopexit90, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.ain, ptr %i.b, align 4, !tbaa !10
  store i32 %.reass.reass.1.i, ptr %i.abq, align 4, !tbaa !10
  %i.aiu = load i32, ptr %i.p, align 8, !tbaa !118
  %i.aiv = add nsw i32 %i.aiu, -1
  %.not105.2.1.i = icmp eq i32 %i.aiv, %i.adq
  br i1 %.not105.2.1.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  store i32 %.reass143.reass.1.i, ptr %.3.sroa.gep180.i, align 4, !tbaa !10
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.3.2.1.sroa.phi.i = phi ptr [ %.3.sroa.gep.i, %bb.ev ], [ %.3.sroa.gep180.i, %bb.eu ]
  %i.aiw = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.aix = call i32 @sat_solver_addclause(ptr noundef %i.aiw, ptr noundef nonnull %i.b, ptr noundef nonnull %.3.2.1.sroa.phi.i) #21
  %.not107.not.2.1.i = icmp eq i32 %i.aix, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %.not107.not.2.1.i, label %.loopexit90, label %.loopexit.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %bb.ew
  %.pre198.i = load i32, ptr %i.p, align 8, !tbaa !118
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.aiy = phi i32 [ %.pre198.i, %.loopexit.loopexit.1.i ], [ %i.aim, %.loopexit.i ] ; 2 uses
  %indvars.iv.next178.i = add nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = icmp slt i64 %indvars.iv.next178.i, %i.aiz
  br i1 %i.aja, label %bb.dd, label %.loopexit91, !llvm.loop !105

.loopexit91:                                      ; preds = %.loopexit.1.i, %._crit_edge.i35
  %i.ajb = load i32, ptr %i.m, align 4, !tbaa !117
  %i.ajc = shl nsw i32 %i.ajb, 2
  %i.ajd = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.aje = add nsw i32 %i.ajd, %i.ajc
  store i32 %i.aje, ptr %i.ai, align 8, !tbaa !126
  %i.ajf = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ajg = call i32 @sat_solver_solve(ptr noundef %i.ajf, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #21
  br i1 %.not, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %.loopexit91
  %i.ajh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.028127) ; 0 uses
  %i.aji = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.ajj = load i32, ptr %i.l, align 8, !tbaa !116
  call void @Extra_PrintBinary(ptr noundef %i.aji, ptr noundef nonnull %i.f, i32 noundef %i.ajj) #21
  %i.ajk = load i32, ptr %i.ai, align 8, !tbaa !126
  %i.ajl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ajk) ; 0 uses
  %i.ajm = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ajn = call i32 @sat_solver_nclauses(ptr noundef %i.ajm) #21
  %i.ajo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ajn) ; 0 uses
  %i.ajp = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ajq = call i32 @sat_solver_nconflicts(ptr noundef %i.ajp) #21
  %i.ajr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ajq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ajs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #21
  %i.ajt = icmp slt i32 %i.ajs, 0
  br i1 %i.ajt, label %Abc_Clock.exit47, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aju = load i64, ptr %8, align 8, !tbaa !13
  %i.ajv = mul nsw i64 %i.aju, 1000000
  %i.ajw = load i64, ptr %i.abr, align 8, !tbaa !14
  %i.ajx = sdiv i64 %i.ajw, 1000
  %i.ajy = add nsw i64 %i.ajx, %i.ajv
  br label %Abc_Clock.exit47

Abc_Clock.exit47:                                 ; preds = %bb.ex, %bb.ey
  %.0.i46 = phi i64 [ %i.ajy, %bb.ey ], [ -1, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ajz = add i64 %.0.i46, %.0.i33.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6)
  %i.aka = sitofp i64 %i.ajz to double
  %i.akb = fdiv double %i.aka, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.24, double noundef %i.akb)
  br label %bb.ez

bb.ez:                                            ; preds = %Abc_Clock.exit47, %.loopexit91
  %i.akc = icmp eq i32 %i.ajg, -1
  br i1 %i.akc, label %.loopexit90, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.akd = load i32, ptr %i.l, align 8, !tbaa !116 ; 6 uses
  %i.ake = add nsw i32 %i.akd, 2
  %i.akf = load i32, ptr %i.p, align 8, !tbaa !118 ; 10 uses
  %i.akg = icmp slt i32 %i.ake, %i.akf
  br i1 %i.akg, label %.preheader65.lr.ph.i, label %.preheader.i48

.preheader65.lr.ph.i:                             ; preds = %bb.fa
  %i.akh = icmp sgt i32 %i.akf, 0
  %.val55.i = load i32, ptr %i.z, align 4, !tbaa !124 ; 9 uses
  %.val56.i = load ptr, ptr %i.xm, align 8, !tbaa !127
  %i.aki = getelementptr i8, ptr %.val56.i, i64 8
  %.val56.val.i = load ptr, ptr %i.aki, align 8, !tbaa !34 ; 6 uses
  %wide.trip.count.i.i53 = zext i32 %i.akf to i64 ; 7 uses
  %i.akj = sub nsw i32 0, %.val55.i
  %i.akk = sext i32 %i.akj to i64
  %i.akl = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.akk ; 6 uses
  %i.akm = icmp sgt i32 %.val55.i, 0              ; 2 uses
  %wide.trip.count.i57.i = zext i32 %.val55.i to i64 ; 16 uses
  br i1 %i.akh, label %.preheader65.us.preheader.i, label %.preheader65.lr.ph.split.i

.preheader65.us.preheader.i:                      ; preds = %.preheader65.lr.ph.i
  %i.akn = sext i32 %i.akd to i64
  %i.ako = add nsw i64 %i.akn, 2                  ; 2 uses
  %i.akp = shl nuw nsw i64 %wide.trip.count.i57.i, 3
  %i.akq = shl nsw i64 %i.ako, 3
  %i.akr = mul i64 %i.akq, %wide.trip.count.i57.i
  %i.aks = add nsw i64 %wide.trip.count.i.i53, -1 ; 3 uses
  %xtraiter499 = and i64 %wide.trip.count.i.i53, 1
  %i.akt = icmp eq i64 %i.aks, 0
  %unroll_iter503 = and i64 %wide.trip.count.i.i53, 2147483646
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  %lcmp.mod502 = trunc i32 %i.akf to i1
  %xtraiter506 = and i64 %wide.trip.count.i.i53, 1
  %i.aku = icmp eq i64 %i.aks, 0
  %unroll_iter510 = and i64 %wide.trip.count.i.i53, 2147483646
  %lcmp.mod507.not = icmp eq i64 %xtraiter506, 0
  %lcmp.mod509 = trunc i32 %i.akf to i1
  %xtraiter513 = and i64 %wide.trip.count.i.i53, 1
  %i.akv = icmp eq i64 %i.aks, 0
  %unroll_iter517 = and i64 %wide.trip.count.i.i53, 2147483646
  %lcmp.mod514.not = icmp eq i64 %xtraiter513, 0
  %lcmp.mod516 = trunc i32 %i.akf to i1
  %min.iters.check370 = icmp ult i32 %.val55.i, 8
  %n.vec375 = and i64 %wide.trip.count.i57.i, 2147483644 ; 3 uses
  %cmp.n385 = icmp eq i64 %n.vec375, %wide.trip.count.i57.i
  %xtraiter519 = and i64 %wide.trip.count.i57.i, 1
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  %i.akw = add nsw i64 %wide.trip.count.i57.i, -1
  br label %.preheader65.us.i

.preheader65.us.i:                                ; preds = %Abc_TtMaj.exit.us.i, %.preheader65.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %Abc_TtMaj.exit.us.i ], [ 0, %.preheader65.us.preheader.i ] ; 2 uses
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %Abc_TtMaj.exit.us.i ], [ %i.ako, %.preheader65.us.preheader.i ] ; 3 uses
  %i.akx = getelementptr inbounds [384 x i8], ptr %i.abn, i64 %indvars.iv94.i ; 5 uses
  br i1 %i.akt, label %.epil.preheader498, label %.preheader65.us.i.new

.preheader65.us.i.new:                            ; preds = %.preheader65.us.i, %bb.fe
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i.1, %bb.fe ], [ 0, %.preheader65.us.i ] ; 4 uses
  %.023.i.us.us.i = phi i32 [ %.1.i.us.us.i.1, %bb.fe ], [ -1, %.preheader65.us.i ] ; 2 uses
  %niter504 = phi i64 [ %niter504.next.1, %bb.fe ], [ 0, %.preheader65.us.i ]
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv.i.us.us.i
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.i = icmp eq i32 %i.akz, 0
  br i1 %.not.i.us.us.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.preheader65.us.i.new
  %i.ala = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.alb = getelementptr i8, ptr %i.ala, i64 328
  %.val.i.us.us.i = load ptr, ptr %i.alb, align 8, !tbaa !52
  %i.alc = sext i32 %i.akz to i64
  %i.ald = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.i, i64 %i.alc
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !10
  %.not20.i.us.us.i = icmp eq i32 %i.ale, 1
  %i.alf = trunc nuw nsw i64 %indvars.iv.i.us.us.i to i32
  %spec.select19.i.us.us.i = select i1 %.not20.i.us.us.i, i32 %i.alf, i32 %.023.i.us.us.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.preheader65.us.i.new
  %.1.i.us.us.i = phi i32 [ %.023.i.us.us.i, %.preheader65.us.i.new ], [ %spec.select19.i.us.us.i, %bb.fb ] ; 2 uses
  %indvars.iv.next.i.us.us.i = or disjoint i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv.next.i.us.us.i
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.i.1 = icmp eq i32 %i.alh, 0
  br i1 %.not.i.us.us.i.1, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ali = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.alj = getelementptr i8, ptr %i.ali, i64 328
  %.val.i.us.us.i.1 = load ptr, ptr %i.alj, align 8, !tbaa !52
  %i.alk = sext i32 %i.alh to i64
  %i.all = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.i.1, i64 %i.alk
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !10
  %.not20.i.us.us.i.1 = icmp eq i32 %i.alm, 1
  %i.aln = trunc nuw nsw i64 %indvars.iv.next.i.us.us.i to i32
  %spec.select19.i.us.us.i.1 = select i1 %.not20.i.us.us.i.1, i32 %i.aln, i32 %.1.i.us.us.i
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.1.i.us.us.i.1 = phi i32 [ %.1.i.us.us.i, %bb.fc ], [ %spec.select19.i.us.us.i.1, %bb.fd ] ; 3 uses
  %indvars.iv.next.i.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.i, 2 ; 2 uses
  %niter504.next.1 = add i64 %niter504, 2         ; 2 uses
  %niter504.ncmp.1 = icmp eq i64 %niter504.next.1, %unroll_iter503
  br i1 %niter504.ncmp.1, label %Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa, label %.preheader65.us.i.new, !llvm.loop !106

Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa: ; preds = %bb.fe
  br i1 %lcmp.mod500.not, label %Maj_ManFindFanin.exit.loopexit.us.us.i, label %.epil.preheader498

.epil.preheader498:                               ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa, %.preheader65.us.i
  %indvars.iv.i.us.us.i.epil.init = phi i64 [ 0, %.preheader65.us.i ], [ %indvars.iv.next.i.us.us.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  %.023.i.us.us.i.epil.init = phi i32 [ -1, %.preheader65.us.i ], [ %.1.i.us.us.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod502)
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv.i.us.us.i.epil.init
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.i.epil = icmp eq i32 %i.alp, 0
  br i1 %.not.i.us.us.i.epil, label %Maj_ManFindFanin.exit.loopexit.us.us.i, label %bb.ff

bb.ff:                                            ; preds = %.epil.preheader498
  %i.alq = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.alr = getelementptr i8, ptr %i.alq, i64 328
  %.val.i.us.us.i.epil = load ptr, ptr %i.alr, align 8, !tbaa !52
  %i.als = sext i32 %i.alp to i64
  %i.alt = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.i.epil, i64 %i.als
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !10
  %.not20.i.us.us.i.epil = icmp eq i32 %i.alu, 1
  %i.alv = trunc nuw nsw i64 %indvars.iv.i.us.us.i.epil.init to i32
  %spec.select19.i.us.us.i.epil = select i1 %.not20.i.us.us.i.epil, i32 %i.alv, i32 %.023.i.us.us.i.epil.init
  br label %Maj_ManFindFanin.exit.loopexit.us.us.i

Maj_ManFindFanin.exit.loopexit.us.us.i:           ; preds = %.epil.preheader498, %bb.ff, %Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa
  %.1.i.us.us.i.lcssa = phi i32 [ %.1.i.us.us.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.i.unr-lcssa ], [ %.023.i.us.us.i.epil.init, %.epil.preheader498 ], [ %spec.select19.i.us.us.i.epil, %bb.ff ]
  %i.alw = getelementptr inbounds nuw i8, ptr %i.akx, i64 128 ; 3 uses
  br i1 %i.aku, label %.epil.preheader505, label %Maj_ManFindFanin.exit.loopexit.us.us.i.new

Maj_ManFindFanin.exit.loopexit.us.us.i.new:       ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.i, %bb.fj
  %indvars.iv.i.us.us.1.i = phi i64 [ %indvars.iv.next.i.us.us.1.i.1, %bb.fj ], [ 0, %Maj_ManFindFanin.exit.loopexit.us.us.i ] ; 4 uses
  %.023.i.us.us.1.i = phi i32 [ %.1.i.us.us.1.i.1, %bb.fj ], [ -1, %Maj_ManFindFanin.exit.loopexit.us.us.i ] ; 2 uses
  %niter511 = phi i64 [ %niter511.next.1, %bb.fj ], [ 0, %Maj_ManFindFanin.exit.loopexit.us.us.i ]
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %indvars.iv.i.us.us.1.i
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.1.i = icmp eq i32 %i.aly, 0
  br i1 %.not.i.us.us.1.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.i.new
  %i.alz = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ama = getelementptr i8, ptr %i.alz, i64 328
  %.val.i.us.us.1.i = load ptr, ptr %i.ama, align 8, !tbaa !52
  %i.amb = sext i32 %i.aly to i64
  %i.amc = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.1.i, i64 %i.amb
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !10
  %.not20.i.us.us.1.i = icmp eq i32 %i.amd, 1
  %i.ame = trunc nuw nsw i64 %indvars.iv.i.us.us.1.i to i32
  %spec.select19.i.us.us.1.i = select i1 %.not20.i.us.us.1.i, i32 %i.ame, i32 %.023.i.us.us.1.i
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %Maj_ManFindFanin.exit.loopexit.us.us.i.new
  %.1.i.us.us.1.i = phi i32 [ %.023.i.us.us.1.i, %Maj_ManFindFanin.exit.loopexit.us.us.i.new ], [ %spec.select19.i.us.us.1.i, %bb.fg ] ; 2 uses
  %indvars.iv.next.i.us.us.1.i = or disjoint i64 %indvars.iv.i.us.us.1.i, 1 ; 2 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %indvars.iv.next.i.us.us.1.i
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.1.i.1 = icmp eq i32 %i.amg, 0
  br i1 %.not.i.us.us.1.i.1, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.amh = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.ami = getelementptr i8, ptr %i.amh, i64 328
  %.val.i.us.us.1.i.1 = load ptr, ptr %i.ami, align 8, !tbaa !52
  %i.amj = sext i32 %i.amg to i64
  %i.amk = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.1.i.1, i64 %i.amj
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !10
  %.not20.i.us.us.1.i.1 = icmp eq i32 %i.aml, 1
  %i.amm = trunc nuw nsw i64 %indvars.iv.next.i.us.us.1.i to i32
  %spec.select19.i.us.us.1.i.1 = select i1 %.not20.i.us.us.1.i.1, i32 %i.amm, i32 %.1.i.us.us.1.i
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.1.i.us.us.1.i.1 = phi i32 [ %.1.i.us.us.1.i, %bb.fh ], [ %spec.select19.i.us.us.1.i.1, %bb.fi ] ; 3 uses
  %indvars.iv.next.i.us.us.1.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.1.i, 2 ; 2 uses
  %niter511.next.1 = add i64 %niter511, 2         ; 2 uses
  %niter511.ncmp.1 = icmp eq i64 %niter511.next.1, %unroll_iter510
  br i1 %niter511.ncmp.1, label %Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa, label %Maj_ManFindFanin.exit.loopexit.us.us.i.new, !llvm.loop !106

Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa: ; preds = %bb.fj
  br i1 %lcmp.mod507.not, label %Maj_ManFindFanin.exit.loopexit.us.us.1.i, label %.epil.preheader505

.epil.preheader505:                               ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa, %Maj_ManFindFanin.exit.loopexit.us.us.i
  %indvars.iv.i.us.us.1.i.epil.init = phi i64 [ 0, %Maj_ManFindFanin.exit.loopexit.us.us.i ], [ %indvars.iv.next.i.us.us.1.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa ] ; 2 uses
  %.023.i.us.us.1.i.epil.init = phi i32 [ -1, %Maj_ManFindFanin.exit.loopexit.us.us.i ], [ %.1.i.us.us.1.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod509)
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %indvars.iv.i.us.us.1.i.epil.init
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.1.i.epil = icmp eq i32 %i.amo, 0
  br i1 %.not.i.us.us.1.i.epil, label %Maj_ManFindFanin.exit.loopexit.us.us.1.i, label %bb.fk

bb.fk:                                            ; preds = %.epil.preheader505
  %i.amp = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.amq = getelementptr i8, ptr %i.amp, i64 328
  %.val.i.us.us.1.i.epil = load ptr, ptr %i.amq, align 8, !tbaa !52
  %i.amr = sext i32 %i.amo to i64
  %i.ams = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.1.i.epil, i64 %i.amr
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !10
  %.not20.i.us.us.1.i.epil = icmp eq i32 %i.amt, 1
  %i.amu = trunc nuw nsw i64 %indvars.iv.i.us.us.1.i.epil.init to i32
  %spec.select19.i.us.us.1.i.epil = select i1 %.not20.i.us.us.1.i.epil, i32 %i.amu, i32 %.023.i.us.us.1.i.epil.init
  br label %Maj_ManFindFanin.exit.loopexit.us.us.1.i

Maj_ManFindFanin.exit.loopexit.us.us.1.i:         ; preds = %.epil.preheader505, %bb.fk, %Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa
  %.1.i.us.us.1.i.lcssa = phi i32 [ %.1.i.us.us.1.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.1.i.unr-lcssa ], [ %.023.i.us.us.1.i.epil.init, %.epil.preheader505 ], [ %spec.select19.i.us.us.1.i.epil, %bb.fk ]
  %i.amv = getelementptr inbounds nuw i8, ptr %i.akx, i64 256 ; 3 uses
  br i1 %i.akv, label %.epil.preheader512, label %Maj_ManFindFanin.exit.loopexit.us.us.1.i.new

Maj_ManFindFanin.exit.loopexit.us.us.1.i.new:     ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.1.i, %bb.fo
  %indvars.iv.i.us.us.2.i = phi i64 [ %indvars.iv.next.i.us.us.2.i.1, %bb.fo ], [ 0, %Maj_ManFindFanin.exit.loopexit.us.us.1.i ] ; 4 uses
  %.023.i.us.us.2.i = phi i32 [ %.1.i.us.us.2.i.1, %bb.fo ], [ -1, %Maj_ManFindFanin.exit.loopexit.us.us.1.i ] ; 2 uses
  %niter518 = phi i64 [ %niter518.next.1, %bb.fo ], [ 0, %Maj_ManFindFanin.exit.loopexit.us.us.1.i ]
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv.i.us.us.2.i
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.2.i = icmp eq i32 %i.amx, 0
  br i1 %.not.i.us.us.2.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.1.i.new
  %i.amy = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.amz = getelementptr i8, ptr %i.amy, i64 328
  %.val.i.us.us.2.i = load ptr, ptr %i.amz, align 8, !tbaa !52
  %i.ana = sext i32 %i.amx to i64
  %i.anb = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.2.i, i64 %i.ana
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !10
  %.not20.i.us.us.2.i = icmp eq i32 %i.anc, 1
  %i.and = trunc nuw nsw i64 %indvars.iv.i.us.us.2.i to i32
  %spec.select19.i.us.us.2.i = select i1 %.not20.i.us.us.2.i, i32 %i.and, i32 %.023.i.us.us.2.i
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %Maj_ManFindFanin.exit.loopexit.us.us.1.i.new
  %.1.i.us.us.2.i = phi i32 [ %.023.i.us.us.2.i, %Maj_ManFindFanin.exit.loopexit.us.us.1.i.new ], [ %spec.select19.i.us.us.2.i, %bb.fl ] ; 2 uses
  %indvars.iv.next.i.us.us.2.i = or disjoint i64 %indvars.iv.i.us.us.2.i, 1 ; 2 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv.next.i.us.us.2.i
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.2.i.1 = icmp eq i32 %i.anf, 0
  br i1 %.not.i.us.us.2.i.1, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ang = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.anh = getelementptr i8, ptr %i.ang, i64 328
  %.val.i.us.us.2.i.1 = load ptr, ptr %i.anh, align 8, !tbaa !52
  %i.ani = sext i32 %i.anf to i64
  %i.anj = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.2.i.1, i64 %i.ani
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !10
  %.not20.i.us.us.2.i.1 = icmp eq i32 %i.ank, 1
  %i.anl = trunc nuw nsw i64 %indvars.iv.next.i.us.us.2.i to i32
  %spec.select19.i.us.us.2.i.1 = select i1 %.not20.i.us.us.2.i.1, i32 %i.anl, i32 %.1.i.us.us.2.i
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.1.i.us.us.2.i.1 = phi i32 [ %.1.i.us.us.2.i, %bb.fm ], [ %spec.select19.i.us.us.2.i.1, %bb.fn ] ; 3 uses
  %indvars.iv.next.i.us.us.2.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.2.i, 2 ; 2 uses
  %niter518.next.1 = add i64 %niter518, 2         ; 2 uses
  %niter518.ncmp.1 = icmp eq i64 %niter518.next.1, %unroll_iter517
  br i1 %niter518.ncmp.1, label %Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa, label %Maj_ManFindFanin.exit.loopexit.us.us.1.i.new, !llvm.loop !106

Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa: ; preds = %bb.fo
  br i1 %lcmp.mod514.not, label %Maj_ManFindFanin.exit.loopexit.us.us.2.i, label %.epil.preheader512

.epil.preheader512:                               ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa, %Maj_ManFindFanin.exit.loopexit.us.us.1.i
  %indvars.iv.i.us.us.2.i.epil.init = phi i64 [ 0, %Maj_ManFindFanin.exit.loopexit.us.us.1.i ], [ %indvars.iv.next.i.us.us.2.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa ] ; 2 uses
  %.023.i.us.us.2.i.epil.init = phi i32 [ -1, %Maj_ManFindFanin.exit.loopexit.us.us.1.i ], [ %.1.i.us.us.2.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod516)
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv.i.us.us.2.i.epil.init
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !10 ; 2 uses
  %.not.i.us.us.2.i.epil = icmp eq i32 %i.ann, 0
  br i1 %.not.i.us.us.2.i.epil, label %Maj_ManFindFanin.exit.loopexit.us.us.2.i, label %bb.fp

bb.fp:                                            ; preds = %.epil.preheader512
  %i.ano = load ptr, ptr %i.xo, align 8, !tbaa !128
  %i.anp = getelementptr i8, ptr %i.ano, i64 328
  %.val.i.us.us.2.i.epil = load ptr, ptr %i.anp, align 8, !tbaa !52
  %i.anq = sext i32 %i.ann to i64
  %i.anr = getelementptr inbounds [4 x i8], ptr %.val.i.us.us.2.i.epil, i64 %i.anq
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !10
  %.not20.i.us.us.2.i.epil = icmp eq i32 %i.ans, 1
  %i.ant = trunc nuw nsw i64 %indvars.iv.i.us.us.2.i.epil.init to i32
  %spec.select19.i.us.us.2.i.epil = select i1 %.not20.i.us.us.2.i.epil, i32 %i.ant, i32 %.023.i.us.us.2.i.epil.init
  br label %Maj_ManFindFanin.exit.loopexit.us.us.2.i

Maj_ManFindFanin.exit.loopexit.us.us.2.i:         ; preds = %.epil.preheader512, %bb.fp, %Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa
  %.1.i.us.us.2.i.lcssa = phi i32 [ %.1.i.us.us.2.i.1, %Maj_ManFindFanin.exit.loopexit.us.us.2.i.unr-lcssa ], [ %.023.i.us.us.2.i.epil.init, %.epil.preheader512 ], [ %spec.select19.i.us.us.2.i.epil, %bb.fp ]
  %i.anu = mul i32 %.1.i.us.us.i.lcssa, %.val55.i
  %i.anv = sext i32 %i.anu to i64                 ; 2 uses
  %i.anw = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.anv ; 4 uses
  %i.anx = mul i32 %.1.i.us.us.1.i.lcssa, %.val55.i
  %i.any = sext i32 %i.anx to i64                 ; 2 uses
  %i.anz = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.any ; 4 uses
  %i.aoa = mul i32 %.1.i.us.us.2.i.lcssa, %.val55.i
  %i.aob = sext i32 %i.aoa to i64                 ; 2 uses
  %i.aoc = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.aob ; 4 uses
  %i.aod = mul nsw i64 %indvars.iv94.i, %wide.trip.count.i57.i
  %i.aoe = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.aod ; 4 uses
  br i1 %i.akm, label %.lr.ph.i58.us.i.preheader, label %Abc_TtMaj.exit.us.i

.lr.ph.i58.us.i.preheader:                        ; preds = %Maj_ManFindFanin.exit.loopexit.us.us.2.i
  br i1 %min.iters.check370, label %.lr.ph.i58.us.i.preheader441, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i58.us.i.preheader
  %i.aof = mul i64 %indvar, %i.akp
  %i.aog = add i64 %i.akr, %i.aof                 ; 3 uses
  %i.aoh = shl nsw i64 %i.anv, 3
  %i.aoi = sub i64 %i.aoh, %i.aog
  %diff.check = icmp ugt i64 %i.aoi, -32
  %i.aoj = shl nsw i64 %i.any, 3
  %i.aok = sub i64 %i.aoj, %i.aog
  %diff.check371 = icmp ugt i64 %i.aok, -32
  %conflict.rdx = or i1 %diff.check, %diff.check371
  %i.aol = shl nsw i64 %i.aob, 3
  %i.aom = sub i64 %i.aol, %i.aog
  %diff.check372 = icmp ugt i64 %i.aom, -32
  %conflict.rdx373 = or i1 %conflict.rdx, %diff.check372
  br i1 %conflict.rdx373, label %.lr.ph.i58.us.i.preheader441, label %vector.body376

vector.body376:                                   ; preds = %vector.memcheck, %vector.body376
  %index377 = phi i64 [ %index.next383, %vector.body376 ], [ 0, %vector.memcheck ] ; 5 uses
  %i.aon = getelementptr inbounds nuw [8 x i8], ptr %i.anw, i64 %index377 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 16
  %wide.load = load <2 x i64>, ptr %i.aon, align 8, !tbaa !36
  %wide.load378 = load <2 x i64>, ptr %i.aoo, align 8, !tbaa !36
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %index377 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  %wide.load379 = load <2 x i64>, ptr %i.aop, align 8, !tbaa !36 ; 2 uses
  %wide.load380 = load <2 x i64>, ptr %i.aoq, align 8, !tbaa !36 ; 2 uses
  %i.aor = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %index377 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 16
  %wide.load381 = load <2 x i64>, ptr %i.aor, align 8, !tbaa !36 ; 2 uses
  %wide.load382 = load <2 x i64>, ptr %i.aos, align 8, !tbaa !36 ; 2 uses
  %i.aot = or <2 x i64> %wide.load381, %wide.load379
  %i.aou = or <2 x i64> %wide.load382, %wide.load380
  %i.aov = and <2 x i64> %i.aot, %wide.load
  %i.aow = and <2 x i64> %i.aou, %wide.load378
  %i.aox = and <2 x i64> %wide.load381, %wide.load379
  %i.aoy = and <2 x i64> %wide.load382, %wide.load380
  %i.aoz = or <2 x i64> %i.aov, %i.aox
  %i.apa = or <2 x i64> %i.aow, %i.aoy
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %index377 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 16
  store <2 x i64> %i.aoz, ptr %i.apb, align 8, !tbaa !36
  store <2 x i64> %i.apa, ptr %i.apc, align 8, !tbaa !36
  %index.next383 = add nuw i64 %index377, 4       ; 2 uses
  %i.apd = icmp eq i64 %index.next383, %n.vec375
  br i1 %i.apd, label %middle.block384, label %vector.body376, !llvm.loop !107

middle.block384:                                  ; preds = %vector.body376
  br i1 %cmp.n385, label %Abc_TtMaj.exit.us.i, label %.lr.ph.i58.us.i.preheader441

.lr.ph.i58.us.i.preheader441:                     ; preds = %vector.memcheck, %.lr.ph.i58.us.i.preheader, %middle.block384
  %indvars.iv.i59.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i58.us.i.preheader ], [ %n.vec375, %middle.block384 ] ; 7 uses
  br i1 %lcmp.mod520.not, label %.lr.ph.i58.us.i.prol.loopexit, label %.lr.ph.i58.us.i.prol

.lr.ph.i58.us.i.prol:                             ; preds = %.lr.ph.i58.us.i.preheader441
  %i.ape = getelementptr inbounds nuw [8 x i8], ptr %i.anw, i64 %indvars.iv.i59.us.i.ph
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !36
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv.i59.us.i.ph
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !36 ; 2 uses
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv.i59.us.i.ph
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !36 ; 2 uses
  %i.apk = or i64 %i.apj, %i.aph
  %i.apl = and i64 %i.apk, %i.apf
  %i.apm = and i64 %i.apj, %i.aph
  %i.apn = or i64 %i.apl, %i.apm
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv.i59.us.i.ph
  store i64 %i.apn, ptr %i.apo, align 8, !tbaa !36
  %indvars.iv.next.i60.us.i.prol = or disjoint i64 %indvars.iv.i59.us.i.ph, 1
  br label %.lr.ph.i58.us.i.prol.loopexit

.lr.ph.i58.us.i.prol.loopexit:                    ; preds = %.lr.ph.i58.us.i.prol, %.lr.ph.i58.us.i.preheader441
  %indvars.iv.i59.us.i.unr = phi i64 [ %indvars.iv.i59.us.i.ph, %.lr.ph.i58.us.i.preheader441 ], [ %indvars.iv.next.i60.us.i.prol, %.lr.ph.i58.us.i.prol ]
  %i.app = icmp eq i64 %indvars.iv.i59.us.i.ph, %i.akw
  br i1 %i.app, label %Abc_TtMaj.exit.us.i, label %.lr.ph.i58.us.i

.lr.ph.i58.us.i:                                  ; preds = %.lr.ph.i58.us.i.prol.loopexit, %.lr.ph.i58.us.i
  %indvars.iv.i59.us.i = phi i64 [ %indvars.iv.next.i60.us.i.1, %.lr.ph.i58.us.i ], [ %indvars.iv.i59.us.i.unr, %.lr.ph.i58.us.i.prol.loopexit ] ; 6 uses
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.anw, i64 %indvars.iv.i59.us.i
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !36
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv.i59.us.i
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !36 ; 2 uses
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv.i59.us.i
  %i.apv = load i64, ptr %i.apu, align 8, !tbaa !36 ; 2 uses
  %i.apw = or i64 %i.apv, %i.apt
  %i.apx = and i64 %i.apw, %i.apr
  %i.apy = and i64 %i.apv, %i.apt
  %i.apz = or i64 %i.apx, %i.apy
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv.i59.us.i
  store i64 %i.apz, ptr %i.aqa, align 8, !tbaa !36
  %indvars.iv.next.i60.us.i = add nuw nsw i64 %indvars.iv.i59.us.i, 1 ; 4 uses
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.anw, i64 %indvars.iv.next.i60.us.i
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !36
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv.next.i60.us.i
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !36 ; 2 uses
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %indvars.iv.next.i60.us.i
  %i.aqg = load i64, ptr %i.aqf, align 8, !tbaa !36 ; 2 uses
  %i.aqh = or i64 %i.aqg, %i.aqe
  %i.aqi = and i64 %i.aqh, %i.aqc
  %i.aqj = and i64 %i.aqg, %i.aqe
  %i.aqk = or i64 %i.aqi, %i.aqj
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv.next.i60.us.i
  store i64 %i.aqk, ptr %i.aql, align 8, !tbaa !36
  %indvars.iv.next.i60.us.i.1 = add nuw nsw i64 %indvars.iv.i59.us.i, 2 ; 2 uses
  %exitcond.not.i61.us.i.1 = icmp eq i64 %indvars.iv.next.i60.us.i.1, %wide.trip.count.i57.i
  br i1 %exitcond.not.i61.us.i.1, label %Abc_TtMaj.exit.us.i, label %.lr.ph.i58.us.i, !llvm.loop !108

Abc_TtMaj.exit.us.i:                              ; preds = %.lr.ph.i58.us.i.prol.loopexit, %.lr.ph.i58.us.i, %middle.block384, %Maj_ManFindFanin.exit.loopexit.us.us.2.i
  %indvars.iv.next95.i = add nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %lftr.wideiv97.i = trunc i64 %indvars.iv.next95.i to i32
  %exitcond98.not.i = icmp eq i32 %i.akf, %lftr.wideiv97.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond98.not.i, label %.preheader.i48, label %.preheader65.us.i, !llvm.loop !109

.preheader65.lr.ph.split.i:                       ; preds = %.preheader65.lr.ph.i
  br i1 %i.akm, label %.preheader65.us68.preheader.i, label %.preheader.i48

.preheader65.us68.preheader.i:                    ; preds = %.preheader65.lr.ph.split.i
  %i.aqm = sext i32 %i.akd to i64
  %i.aqn = add nsw i64 %i.aqm, 2                  ; 2 uses
  %i.aqo = shl nuw nsw i64 %wide.trip.count.i57.i, 3
  %i.aqp = shl nsw i64 %i.aqn, 3
  %i.aqq = mul i64 %i.aqp, %wide.trip.count.i57.i
  %i.aqr = zext nneg i32 %.val55.i to i64
  %i.aqs = shl nuw nsw i64 %i.aqr, 3
  %i.aqt = add i64 %i.aqq, %i.aqs
  %min.iters.check394 = icmp ult i32 %.val55.i, 4
  %invariant.op = add i64 %i.aqt, -1
  %n.vec398 = and i64 %wide.trip.count.i57.i, 2147483644 ; 3 uses
  %cmp.n405 = icmp eq i64 %n.vec398, %wide.trip.count.i57.i
  %xtraiter496 = and i64 %wide.trip.count.i57.i, 3 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br label %.preheader65.us68.i

.preheader65.us68.i:                              ; preds = %Abc_TtMaj.exit.loopexit.us75.i, %.preheader65.us68.preheader.i
  %indvar391 = phi i64 [ %indvar.next392, %Abc_TtMaj.exit.loopexit.us75.i ], [ 0, %.preheader65.us68.preheader.i ] ; 2 uses
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i56, %Abc_TtMaj.exit.loopexit.us75.i ], [ %i.aqn, %.preheader65.us68.preheader.i ] ; 2 uses
  %i.aqu = mul nsw i64 %indvars.iv.i55, %wide.trip.count.i57.i
  %i.aqv = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.aqu ; 6 uses
  br i1 %min.iters.check394, label %.lr.ph.i58.us71.i.preheader, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.preheader65.us68.i
  %i.aqw = mul i64 %indvar391, %i.aqo
  %.reass = add i64 %i.aqw, %invariant.op
  %diff.check396 = icmp ult i64 %.reass, 31
  br i1 %diff.check396, label %.lr.ph.i58.us71.i.preheader, label %vector.body399

vector.body399:                                   ; preds = %vector.memcheck395, %vector.body399
  %index400 = phi i64 [ %index.next403, %vector.body399 ], [ 0, %vector.memcheck395 ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %index400 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 16
  %wide.load401 = load <2 x i64>, ptr %i.aqx, align 8, !tbaa !36
  %wide.load402 = load <2 x i64>, ptr %i.aqy, align 8, !tbaa !36
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %index400 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16
  store <2 x i64> %wide.load401, ptr %i.aqz, align 8, !tbaa !36
  store <2 x i64> %wide.load402, ptr %i.ara, align 8, !tbaa !36
  %index.next403 = add nuw i64 %index400, 4       ; 2 uses
  %i.arb = icmp eq i64 %index.next403, %n.vec398
  br i1 %i.arb, label %middle.block404, label %vector.body399, !llvm.loop !110

middle.block404:                                  ; preds = %vector.body399
  br i1 %cmp.n405, label %Abc_TtMaj.exit.loopexit.us75.i, label %.lr.ph.i58.us71.i.preheader

.lr.ph.i58.us71.i.preheader:                      ; preds = %vector.memcheck395, %.preheader65.us68.i, %middle.block404
  %indvars.iv.i59.us72.i.ph = phi i64 [ 0, %vector.memcheck395 ], [ 0, %.preheader65.us68.i ], [ %n.vec398, %middle.block404 ] ; 3 uses
  br i1 %lcmp.mod497.not, label %.lr.ph.i58.us71.i.prol.loopexit, label %.lr.ph.i58.us71.i.prol

.lr.ph.i58.us71.i.prol:                           ; preds = %.lr.ph.i58.us71.i.preheader, %.lr.ph.i58.us71.i.prol
  %indvars.iv.i59.us72.i.prol = phi i64 [ %indvars.iv.next.i60.us73.i.prol, %.lr.ph.i58.us71.i.prol ], [ %indvars.iv.i59.us72.i.ph, %.lr.ph.i58.us71.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i58.us71.i.prol ], [ 0, %.lr.ph.i58.us71.i.preheader ]
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %indvars.iv.i59.us72.i.prol
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !36
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %indvars.iv.i59.us72.i.prol
  store i64 %i.ard, ptr %i.are, align 8, !tbaa !36
  %indvars.iv.next.i60.us73.i.prol = add nuw nsw i64 %indvars.iv.i59.us72.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter496
  br i1 %prol.iter.cmp.not, label %.lr.ph.i58.us71.i.prol.loopexit, label %.lr.ph.i58.us71.i.prol, !llvm.loop !111

.lr.ph.i58.us71.i.prol.loopexit:                  ; preds = %.lr.ph.i58.us71.i.prol, %.lr.ph.i58.us71.i.preheader
  %indvars.iv.i59.us72.i.unr = phi i64 [ %indvars.iv.i59.us72.i.ph, %.lr.ph.i58.us71.i.preheader ], [ %indvars.iv.next.i60.us73.i.prol, %.lr.ph.i58.us71.i.prol ]
  %i.arf = sub nsw i64 %indvars.iv.i59.us72.i.ph, %wide.trip.count.i57.i
  %i.arg = icmp ugt i64 %i.arf, -4
  br i1 %i.arg, label %Abc_TtMaj.exit.loopexit.us75.i, label %.lr.ph.i58.us71.i

.lr.ph.i58.us71.i:                                ; preds = %.lr.ph.i58.us71.i.prol.loopexit, %.lr.ph.i58.us71.i
  %indvars.iv.i59.us72.i = phi i64 [ %indvars.iv.next.i60.us73.i.3, %.lr.ph.i58.us71.i ], [ %indvars.iv.i59.us72.i.unr, %.lr.ph.i58.us71.i.prol.loopexit ] ; 6 uses
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %indvars.iv.i59.us72.i
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !36
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %indvars.iv.i59.us72.i
  store i64 %i.ari, ptr %i.arj, align 8, !tbaa !36
  %indvars.iv.next.i60.us73.i = add nuw nsw i64 %indvars.iv.i59.us72.i, 1 ; 2 uses
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %indvars.iv.next.i60.us73.i
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !36
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %indvars.iv.next.i60.us73.i
end_hunk_0
begin_hunk_1_@Exa3_ManExactSynthesis2:bb.a
bb.ez:                                            ; preds = %bb.ez, %.lr.ph86.i
  %.085.i = phi i32 [ 0, %.lr.ph86.i ], [ %i.atp, %bb.ez ] ; 2 uses
  %i.atm = lshr i32 %i.atl, %.085.i
  %i.atn = and i32 %i.atm, 1
  %i.ato = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aqh, ptr noundef nonnull @.str.51, i32 noundef %i.atn) #21 ; 0 uses
  %i.atp = add nuw nsw i32 %.085.i, 1             ; 2 uses
  %i.atq = load i32, ptr %i.cz, align 8, !tbaa !71
  %i.atr = icmp slt i32 %i.atp, %i.atq
  br i1 %i.atr, label %bb.ez, label %._crit_edge87.i, !llvm.loop !268

._crit_edge87.i:                                  ; preds = %bb.ez, %.preheader.i138
  %i.ats = load i32, ptr %i.dd, align 8, !tbaa !282
  %.not.i139 = icmp eq i32 %i.ats, %i.asr
  %spec.select.i = select i1 %.not.i139, i32 %.056, i32 1
  %i.att = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aqh, ptr noundef nonnull @.str.63, i32 noundef %spec.select.i) #21 ; 0 uses
  %.pre.i140 = load ptr, ptr %i.oj, align 8, !tbaa !288
  %.pre106.i = load i32, ptr %i.db, align 4, !tbaa !281
  br label %bb.fa

bb.fa:                                            ; preds = %._crit_edge87.i, %.lr.ph90.i
  %i.atu = phi i32 [ %i.atb, %.lr.ph90.i ], [ %.pre106.i, %._crit_edge87.i ] ; 2 uses
  %i.atv = phi ptr [ %i.atc, %.lr.ph90.i ], [ %.pre.i140, %._crit_edge87.i ]
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.atw = sext i32 %i.atu to i64
  %i.atx = icmp slt i64 %indvars.iv.next100.i, %i.atw
  br i1 %i.atx, label %.lr.ph90.i, label %.loopexit.loopexit.i137, !llvm.loop !269

._crit_edge97.i:                                  ; preds = %.loopexit.i134, %._crit_edge.i132
  %fwrite71.i = call i64 @fwrite(ptr nonnull @.str.64, i64 6, i64 1, ptr nonnull %i.aqh) ; 0 uses
  %i.aty = call i32 @fclose(ptr noundef nonnull %i.aqh) ; 0 uses
  %i.atz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef nonnull %i.g) ; 0 uses
  call void @free(ptr noundef %i.aqa) #21
  br label %Exa3_ManDumpBlif.exit

Exa3_ManDumpBlif.exit:                            ; preds = %bb.ej, %._crit_edge97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !72
  %.not74 = icmp eq i32 %i.aub, 0
  br i1 %.not74, label %bb.ia, label %bb.fb

bb.fb:                                            ; preds = %Exa3_ManDumpBlif.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.auc = load i32, ptr %i.cz, align 8, !tbaa !71
  %i.aud = icmp sgt i32 %i.auc, 6
  br i1 %i.aud, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %puts.i182 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %Exa3_ManDumpCascadeVerilog.exit

bb.fd:                                            ; preds = %bb.fb
  call fastcc void @Exa3_ManDumpVerilogName(ptr noundef nonnull readonly %i.cr, ptr noundef %i.d)
  %i.aue = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 132, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.d) #21 ; 0 uses
  %i.auf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 160, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.d) #21 ; 0 uses
  %i.aug = call noalias ptr @fopen(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.55) ; 45 uses
  %i.auh = icmp eq ptr %i.aug, null
  br i1 %i.auh, label %Exa3_ManDumpCascadeVerilog.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aui = load i32, ptr %i.ct, align 8, !tbaa !279
  %i.auj = call ptr (...) @Extra_TimeStamp() #21
  %i.auk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.77, i32 noundef %i.aui, ptr noundef nonnull %i.d, ptr noundef %i.auj) #21 ; 0 uses
  %i.aul = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.f) #21 ; 0 uses
  %i.aum = load i32, ptr %i.ct, align 8, !tbaa !279
  %i.aun = add nsw i32 %i.aum, -1
  %i.auo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.79, i32 noundef %i.aun) #21 ; 0 uses
  %fwrite.i156 = call i64 @fwrite(ptr nonnull @.str.80, i64 22, i64 1, ptr nonnull %i.aug) ; 0 uses
  %fwrite89.i = call i64 @fwrite(ptr nonnull @.str.81, i64 3, i64 1, ptr nonnull %i.aug) ; 0 uses
  %i.aup = load i32, ptr %i.cw, align 4, !tbaa !70
  %i.auq = icmp sgt i32 %i.aup, 1
  br i1 %i.auq, label %.lr.ph.i180, label %._crit_edge.thread.i157

.lr.ph.i180:                                      ; preds = %bb.fe, %.lr.ph.i180
  %.08096.i = phi i32 [ %i.aus, %.lr.ph.i180 ], [ 0, %bb.fe ] ; 2 uses
  %i.aur = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.82, i32 noundef %.08096.i) #21 ; 0 uses
  %i.aus = add nuw nsw i32 %.08096.i, 1           ; 2 uses
  %i.aut = load i32, ptr %i.cw, align 4, !tbaa !70 ; 2 uses
  %i.auu = add nsw i32 %i.aut, -1
  %i.auv = icmp slt i32 %i.aus, %i.auu
  br i1 %i.auv, label %.lr.ph.i180, label %._crit_edge.i181, !llvm.loop !270

._crit_edge.i181:                                 ; preds = %.lr.ph.i180
  %i.auw = icmp sgt i32 %i.aut, 1
  br i1 %i.auw, label %bb.ff, label %._crit_edge.thread.i157

bb.ff:                                            ; preds = %._crit_edge.i181
  %fputc.i = call i32 @fputc(i32 10, ptr nonnull %i.aug) ; 0 uses
  br label %._crit_edge.thread.i157

._crit_edge.thread.i157:                          ; preds = %bb.ff, %._crit_edge.i181, %bb.fe
  %i.aux = load i32, ptr %i.ct, align 8, !tbaa !279 ; 2 uses
  %i.auy = load i32, ptr %i.dd, align 8, !tbaa !282 ; 2 uses
  %i.auz = icmp slt i32 %i.aux, %i.auy
  br i1 %i.auz, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %._crit_edge.thread.i157
  %i.ava = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.avb = sext i32 %i.aux to i64
  br label %bb.fg

bb.fg:                                            ; preds = %bb.hz, %.lr.ph107.i
  %indvars.iv115.i = phi i64 [ %i.avb, %.lr.ph107.i ], [ %indvars.iv.next116.i, %bb.hz ] ; 3 uses
  %i.avc = phi i32 [ %i.auy, %.lr.ph107.i ], [ %i.bga, %bb.hz ]
  %i.avd = load i32, ptr %i.ct, align 8, !tbaa !279
  %i.ave = trunc nsw i64 %indvars.iv115.i to i32  ; 3 uses
  %i.avf = sub nsw i32 %i.ave, %i.avd             ; 5 uses
  %i.avg = sdiv i32 %i.avf, 8                     ; 2 uses
  %i.avh = srem i32 %i.avf, 8
  %i.avi = load i32, ptr %i.db, align 4, !tbaa !281 ; 4 uses
  %i.avj = load i32, ptr %i.cz, align 8, !tbaa !71 ; 9 uses
  %i.avk = icmp eq i32 %i.avj, 6
  %i.avl = shl nuw i32 1, %i.avj
  %i.avm = zext nneg i32 %i.avl to i64
  %notmask.i158 = shl nsw i64 -1, %i.avm
  %i.avn = xor i64 %notmask.i158, -1
  %i.avo = select i1 %i.avk, i64 -1, i64 %i.avn
  %i.avp = icmp sgt i32 %i.avi, 0
  br i1 %i.avp, label %.lr.ph100.i, label %._crit_edge101.i

.lr.ph100.i:                                      ; preds = %bb.fg
  %i.avq = mul nsw i32 %i.avi, %i.avf
  %i.avr = load ptr, ptr %i.oj, align 8, !tbaa !288
  %i.avs = getelementptr i8, ptr %i.avr, i64 328
  %.val.i173 = load ptr, ptr %i.avs, align 8, !tbaa !52
  %wide.trip.count.i174 = zext nneg i32 %i.avi to i64 ; 3 uses
  %i.avt = sext i32 %i.avq to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val.i173, i64 %i.avt ; 2 uses
  %min.iters.check638 = icmp ult i32 %i.avi, 4
  br i1 %min.iters.check638, label %scalar.ph637.preheader, label %vector.ph639

vector.ph639:                                     ; preds = %.lr.ph100.i
  %n.vec640 = and i64 %wide.trip.count.i174, 2147483644 ; 3 uses
  br label %vector.body641

vector.body641:                                   ; preds = %vector.body641, %vector.ph639
  %index642 = phi i64 [ 0, %vector.ph639 ], [ %index.next649, %vector.body641 ] ; 2 uses
  %vec.ind643 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph639 ], [ %vec.ind.next650, %vector.body641 ] ; 3 uses
  %vec.phi644 = phi <2 x i64> [ zeroinitializer, %vector.ph639 ], [ %i.awd, %vector.body641 ]
  %vec.phi645 = phi <2 x i64> [ zeroinitializer, %vector.ph639 ], [ %i.awe, %vector.body641 ]
  %i.avu = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index642 ; 2 uses
  %i.avv = getelementptr i8, ptr %i.avu, i64 4
  %i.avw = getelementptr i8, ptr %i.avu, i64 12
  %wide.load647 = load <2 x i32>, ptr %i.avv, align 4, !tbaa !10
  %wide.load648 = load <2 x i32>, ptr %i.avw, align 4, !tbaa !10
  %i.avx = icmp eq <2 x i32> %wide.load647, splat (i32 1)
  %i.avy = icmp eq <2 x i32> %wide.load648, splat (i32 1)
  %i.avz = shl nuw <2 x i64> splat (i64 2), %vec.ind643
  %i.awa = shl nuw <2 x i64> splat (i64 8), %vec.ind643
  %i.awb = select <2 x i1> %i.avx, <2 x i64> %i.avz, <2 x i64> zeroinitializer
  %i.awc = select <2 x i1> %i.avy, <2 x i64> %i.awa, <2 x i64> zeroinitializer
  %i.awd = or <2 x i64> %i.awb, %vec.phi644       ; 2 uses
  %i.awe = or <2 x i64> %i.awc, %vec.phi645       ; 2 uses
  %index.next649 = add nuw i64 %index642, 4       ; 2 uses
  %vec.ind.next650 = add nuw <2 x i64> %vec.ind643, splat (i64 4)
  %i.awf = icmp eq i64 %index.next649, %n.vec640
  br i1 %i.awf, label %middle.block651, label %vector.body641, !llvm.loop !271

middle.block651:                                  ; preds = %vector.body641
  %bin.rdx652 = or <2 x i64> %i.awe, %i.awd
  %i.awg = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx652) ; 2 uses
  %cmp.n653 = icmp eq i64 %n.vec640, %wide.trip.count.i174
  br i1 %cmp.n653, label %._crit_edge101.i, label %scalar.ph637.preheader

scalar.ph637.preheader:                           ; preds = %.lr.ph100.i, %middle.block651
  %indvars.iv.i175.ph = phi i64 [ 0, %.lr.ph100.i ], [ %n.vec640, %middle.block651 ]
  %.098.i.ph = phi i64 [ 0, %.lr.ph100.i ], [ %i.awg, %middle.block651 ]
  br label %scalar.ph637

scalar.ph637:                                     ; preds = %scalar.ph637.preheader, %scalar.ph637
  %indvars.iv.i175 = phi i64 [ %indvars.iv.next.i177, %scalar.ph637 ], [ %indvars.iv.i175.ph, %scalar.ph637.preheader ] ; 3 uses
  %.098.i = phi i64 [ %.1.i178, %scalar.ph637 ], [ %.098.i.ph, %scalar.ph637.preheader ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i175
  %i.awh = getelementptr i8, ptr %gep.i, i64 4
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !10
  %.not.i176 = icmp eq i32 %i.awi, 1
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %i.awj = shl nuw i64 2, %indvars.iv.i175
  %i.awk = select i1 %.not.i176, i64 %i.awj, i64 0
  %.1.i178 = or i64 %i.awk, %.098.i               ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i177, %wide.trip.count.i174
  br i1 %exitcond.not.i179, label %._crit_edge101.i, label %scalar.ph637, !llvm.loop !272

._crit_edge101.i:                                 ; preds = %scalar.ph637, %middle.block651, %bb.fg
  %.0.lcssa.i = phi i64 [ 0, %bb.fg ], [ %i.awg, %middle.block651 ], [ %.1.i178, %scalar.ph637 ] ; 2 uses
  %i.awl = add nsw i32 %i.avc, -1
  %i.awm = icmp eq i32 %i.awl, %i.ave
  %or.cond.i159 = and i1 %i.awm, %.not67
  %i.awn = xor i64 %.0.lcssa.i, -1
  %i.awo = and i64 %i.avo, %i.awn
  %.2.i160 = select i1 %or.cond.i159, i64 %i.awo, i64 %.0.lcssa.i ; 8 uses
  %i.awp = icmp slt i32 %i.avj, 6
  br i1 %i.awp, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %._crit_edge101.i
  %i.awq = icmp eq i32 %i.avj, 0
  %i.awr = trunc i64 %.2.i160 to i1
  %i.aws = select i1 %i.awr, i64 3, i64 0
  %i.awt = icmp samesign ult i32 %i.avj, 2
  %i.awu = and i64 %.2.i160, 3
  %i.awv = select i1 %i.awq, i64 %i.aws, i64 %i.awu
  %i.aww = mul nuw nsw i64 %i.awv, 5
  %.126.i.i = select i1 %i.awt, i64 %i.aww, i64 %.2.i160
  %i.awx = icmp samesign ult i32 %i.avj, 3
  %i.awy = and i64 %.126.i.i, 15
  %i.awz = mul nuw nsw i64 %i.awy, 17
  %.227.i.i = select i1 %i.awx, i64 %i.awz, i64 %.2.i160
  %i.axa = icmp samesign ult i32 %i.avj, 4
  %i.axb = and i64 %.227.i.i, 255
  %i.axc = mul nuw nsw i64 %i.axb, 257
  %.328.i.i = select i1 %i.axa, i64 %i.axc, i64 %.2.i160
  %i.axd = icmp samesign ult i32 %i.avj, 5
  %i.axe = and i64 %.328.i.i, 65535
  %i.axf = mul nuw nsw i64 %i.axe, 65537
  %.429.i.i = select i1 %i.axd, i64 %i.axf, i64 %.2.i160
  %i.axg = icmp ult i32 %i.avj, 6
  %i.axh = and i64 %.429.i.i, 4294967295
  %i.axi = mul nuw i64 %i.axh, 4294967297
  %.5.i.i = select i1 %i.axg, i64 %i.axi, i64 %.2.i160
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %._crit_edge101.i
  %.3.i = phi i64 [ %.5.i.i, %bb.fh ], [ %.2.i160, %._crit_edge101.i ]
  %i.axj = sext i32 %i.avh to i64
  %i.axk = getelementptr inbounds [8 x i8], ptr @Exa3_ManDumpCascadeVerilog.pBels, i64 %i.axj
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !299
  %i.axm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.83, i32 noundef %i.avg, i32 noundef %i.avg, ptr noundef %i.axl) #21 ; 0 uses
  %i.axn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.84, i64 noundef %.3.i, i32 noundef %i.avf) #21 ; 0 uses
  %i.axo = getelementptr inbounds [768 x i8], ptr %i.ava, i64 %indvars.iv115.i ; 8 uses
  %i.axp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.85, i32 noundef 0) #21 ; 0 uses
  %i.axq = load i32, ptr %i.cz, align 8, !tbaa !71
  %i.axr = icmp sgt i32 %i.axq, 0
  br i1 %i.axr, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.axs = load i32, ptr %i.dd, align 8, !tbaa !282 ; 4 uses
  %i.axt = icmp sgt i32 %i.axs, 0
  br i1 %i.axt, label %.lr.ph.i.i162, label %Exa3_ManFindFanin.exit.i161

.lr.ph.i.i162:                                    ; preds = %bb.fj
  %wide.trip.count.i.i163 = zext nneg i32 %i.axs to i64 ; 2 uses
  %xtraiter752 = and i64 %wide.trip.count.i.i163, 1
  %i.axu = icmp eq i32 %i.axs, 1
  br i1 %i.axu, label %.epil.preheader751, label %.lr.ph.i.i162.new

.lr.ph.i.i162.new:                                ; preds = %.lr.ph.i.i162
  %unroll_iter756 = and i64 %wide.trip.count.i.i163, 2147483646
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fo, %.lr.ph.i.i162.new
  %indvars.iv.i.i164 = phi i64 [ 0, %.lr.ph.i.i162.new ], [ %indvars.iv.next.i.i171.1, %bb.fo ] ; 4 uses
  %.023.i.i165 = phi i32 [ -1, %.lr.ph.i.i162.new ], [ %.1.i.i170.1, %bb.fo ] ; 2 uses
  %niter757 = phi i64 [ 0, %.lr.ph.i.i162.new ], [ %niter757.next.1, %bb.fo ]
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv.i.i164
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !10 ; 2 uses
  %.not.i.i166 = icmp eq i32 %i.axw, 0
  br i1 %.not.i.i166, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.axx = load ptr, ptr %i.oj, align 8, !tbaa !288
  %i.axy = getelementptr i8, ptr %i.axx, i64 328
  %.val.i.i167 = load ptr, ptr %i.axy, align 8, !tbaa !52
  %i.axz = sext i32 %i.axw to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %.val.i.i167, i64 %i.axz
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !10
  %.not20.i.i168 = icmp eq i32 %i.ayb, 1
  %i.ayc = trunc nuw nsw i64 %indvars.iv.i.i164 to i32
  %spec.select19.i.i169 = select i1 %.not20.i.i168, i32 %i.ayc, i32 %.023.i.i165
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.1.i.i170 = phi i32 [ %.023.i.i165, %bb.fk ], [ %spec.select19.i.i169, %bb.fl ] ; 2 uses
  %indvars.iv.next.i.i171 = or disjoint i64 %indvars.iv.i.i164, 1 ; 2 uses
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv.next.i.i171
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !10 ; 2 uses
  %.not.i.i166.1 = icmp eq i32 %i.aye, 0
  br i1 %.not.i.i166.1, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ayf = load ptr, ptr %i.oj, align 8, !tbaa !288
  %i.ayg = getelementptr i8, ptr %i.ayf, i64 328
  %.val.i.i167.1 = load ptr, ptr %i.ayg, align 8, !tbaa !52
  %i.ayh = sext i32 %i.aye to i64
  %i.ayi = getelementptr inbounds [4 x i8], ptr %.val.i.i167.1, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !10
  %.not20.i.i168.1 = icmp eq i32 %i.ayj, 1
  %i.ayk = trunc nuw nsw i64 %indvars.iv.next.i.i171 to i32
  %spec.select19.i.i169.1 = select i1 %.not20.i.i168.1, i32 %i.ayk, i32 %.1.i.i170
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.1.i.i170.1 = phi i32 [ %.1.i.i170, %bb.fm ], [ %spec.select19.i.i169.1, %bb.fn ] ; 3 uses
  %indvars.iv.next.i.i171.1 = add nuw nsw i64 %indvars.iv.i.i164, 2 ; 2 uses
  %niter757.next.1 = add i64 %niter757, 2         ; 2 uses
  %niter757.ncmp.1 = icmp eq i64 %niter757.next.1, %unroll_iter756
  br i1 %niter757.ncmp.1, label %Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa, label %bb.fk, !llvm.loop !238

Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa:   ; preds = %bb.fo
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %Exa3_ManFindFanin.exit.i161, label %.epil.preheader751

.epil.preheader751:                               ; preds = %Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa, %.lr.ph.i.i162
  %indvars.iv.i.i164.epil.init = phi i64 [ 0, %.lr.ph.i.i162 ], [ %indvars.iv.next.i.i171.1, %Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa ] ; 2 uses
  %.023.i.i165.epil.init = phi i32 [ -1, %.lr.ph.i.i162 ], [ %.1.i.i170.1, %Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod755 = trunc i32 %i.axs to i1
  call void @llvm.assume(i1 %lcmp.mod755)
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv.i.i164.epil.init
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !10 ; 2 uses
  %.not.i.i166.epil = icmp eq i32 %i.aym, 0
  br i1 %.not.i.i166.epil, label %Exa3_ManFindFanin.exit.i161, label %bb.fp

bb.fp:                                            ; preds = %.epil.preheader751
  %i.ayn = load ptr, ptr %i.oj, align 8, !tbaa !288
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 328
  %.val.i.i167.epil = load ptr, ptr %i.ayo, align 8, !tbaa !52
  %i.ayp = sext i32 %i.aym to i64
  %i.ayq = getelementptr inbounds [4 x i8], ptr %.val.i.i167.epil, i64 %i.ayp
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !10
  %.not20.i.i168.epil = icmp eq i32 %i.ayr, 1
  %i.ays = trunc nuw nsw i64 %indvars.iv.i.i164.epil.init to i32
  %spec.select19.i.i169.epil = select i1 %.not20.i.i168.epil, i32 %i.ays, i32 %.023.i.i165.epil.init
  br label %Exa3_ManFindFanin.exit.i161

Exa3_ManFindFanin.exit.i161:                      ; preds = %Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa, %bb.fp, %.epil.preheader751, %bb.fj
  %.0.lcssa.i.i = phi i32 [ -1, %bb.fj ], [ %.1.i.i170.1, %Exa3_ManFindFanin.exit.i161.loopexit.unr-lcssa ], [ %.023.i.i165.epil.init, %.epil.preheader751 ], [ %spec.select19.i.i169.epil, %bb.fp ] ; 3 uses
  %i.ayt = load i32, ptr %i.ct, align 8, !tbaa !279 ; 2 uses
  %i.ayu = icmp slt i32 %.0.lcssa.i.i, %i.ayt
  br i1 %i.ayu, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %Exa3_ManFindFanin.exit.i161
  %i.ayv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.86, i32 noundef %.0.lcssa.i.i) #21 ; 0 uses
  br label %bb.ft

bb.fr:                                            ; preds = %Exa3_ManFindFanin.exit.i161
  %i.ayw = sub nsw i32 %.0.lcssa.i.i, %i.ayt
  %i.ayx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.87, i32 noundef %i.ayw) #21 ; 0 uses
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fi
  %fwrite94.i = call i64 @fwrite(ptr nonnull @.str.88, i64 4, i64 1, ptr nonnull %i.aug) ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq
  %fwrite95.i = call i64 @fwrite(ptr nonnull @.str.89, i64 3, i64 1, ptr nonnull %i.aug) ; 0 uses
  %i.ayy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aug, ptr noundef nonnull @.str.85, i32 noundef 1) #21 ; 0 uses
  %i.ayz = load i32, ptr %i.cz, align 8, !tbaa !71
  %i.aza = icmp sgt i32 %i.ayz, 1
  br i1 %i.aza, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %fwrite94.1.i = call i64 @fwrite(ptr nonnull @.str.88, i64 4, i64 1, ptr nonnull %i.aug) ; 0 uses
  br label %bb.ge

bb.fv:                                            ; preds = %bb.ft
  %i.azb = load i32, ptr %i.dd, align 8, !tbaa !282 ; 4 uses
  %i.azc = icmp sgt i32 %i.azb, 0
  br i1 %i.azc, label %.lr.ph.i.1.i, label %Exa3_ManFindFanin.exit.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.fv
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axo, i64 128 ; 3 uses
  %wide.trip.count.i.1.i = zext nneg i32 %i.azb to i64 ; 2 uses
  %xtraiter759 = and i64 %wide.trip.count.i.1.i, 1
  %i.aze = icmp eq i32 %i.azb, 1
  br i1 %i.aze, label %.epil.preheader758, label %.lr.ph.i.1.i.new

.lr.ph.i.1.i.new:                                 ; preds = %.lr.ph.i.1.i
  %unroll_iter763 = and i64 %wide.trip.count.i.1.i, 2147483646
  br label %bb.fw

bb.fw:                                            ; preds = %bb.ga, %.lr.ph.i.1.i.new
  %indvars.iv.i.1.i = phi i64 [ 0, %.lr.ph.i.1.i.new ], [ %indvars.iv.next.i.1.i.1, %bb.ga ] ; 4 uses
  %.023.i.1.i = phi i32 [ -1, %.lr.ph.i.1.i.new ], [ %.1.i.1.i.1, %bb.ga ] ; 2 uses
  %niter764 = phi i64 [ 0, %.lr.ph.i.1.i.new ], [ %niter764.next.1, %bb.ga ]
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %indvars.iv.i.1.i
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !10 ; 2 uses
  %.not.i.1.i = icmp eq i32 %i.azg, 0
  br i1 %.not.i.1.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.azh = load ptr, ptr %i.oj, align 8, !tbaa !288
  %i.azi = getelementptr i8, ptr %i.azh, i64 328
  %.val.i.1.i = load ptr, ptr %i.azi, align 8, !tbaa !52
  %i.azj = sext i32 %i.azg to i64
  %i.azk = getelementptr inbounds [4 x i8], ptr %.val.i.1.i, i64 %i.azj
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !10
  %.not20.i.1.i = icmp eq i32 %i.azl, 1
  %i.azm = trunc nuw nsw i64 %indvars.iv.i.1.i to i32
  %spec.select19.i.1.i = select i1 %.not20.i.1.i, i32 %i.azm, i32 %.023.i.1.i
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.1.i.1.i = phi i32 [ %.023.i.1.i, %bb.fw ], [ %spec.select19.i.1.i, %bb.fx ] ; 2 uses
  %indvars.iv.next.i.1.i = or disjoint i64 %indvars.iv.i.1.i, 1 ; 2 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %indvars.iv.next.i.1.i
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !10 ; 2 uses
  %.not.i.1.i.1 = icmp eq i32 %i.azo, 0
  br i1 %.not.i.1.i.1, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.azp = load ptr, ptr %i.oj, align 8, !tbaa !288
  %i.azq = getelementptr i8, ptr %i.azp, i64 328
  %.val.i.1.i.1 = load ptr, ptr %i.azq, align 8, !tbaa !52
  %i.azr = sext i32 %i.azo to i64
  %i.azs = getelementptr inbounds [4 x i8], ptr %.val.i.1.i.1, i64 %i.azr
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !10
  %.not20.i.1.i.1 = icmp eq i32 %i.azt, 1
  %i.azu = trunc nuw nsw i64 %indvars.iv.next.i.1.i to i32
  %spec.select19.i.1.i.1 = select i1 %.not20.i.1.i.1, i32 %i.azu, i32 %.1.i.1.i
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.1.i.1.i.1 = phi i32 [ %.1.i.1.i, %bb.fy ], [ %spec.select19.i.1.i.1, %bb.fz ] ; 3 uses
end_hunk_1
