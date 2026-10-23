Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_polystat?download=true
inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.acg = call noundef float @sqrtf(float noundef %i.acf) #18
  %i.ach = fdiv float 1.000000e+00, %i.acg        ; 2 uses
  %i.aci = insertelement <2 x float> poison, float %i.ach, i64 0
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ack = fmul <2 x float> %i.acb, %i.acj
  store <2 x float> %i.ack, ptr %i.abs, align 4, !tbaa !93
  %i.acl = fmul float %i.abx, %i.ach
  store float %i.acl, ptr %i.aby, align 4, !tbaa !93
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %i.rf
  br i1 %exitcond802.not, label %.preheader643, label %bb.cl

.preheader639:                                    ; preds = %.preheader639.preheader, %..critedge_crit_edge
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %..critedge_crit_edge ], [ %i.qz, %.preheader639.preheader ] ; 4 uses
  %i.acm = sub nsw i64 %indvars.iv806, %i.qz      ; 3 uses
  %i.acn = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.acm ; 3 uses
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !93 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 4
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !93 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !93 ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %.0632, i64 %i.acm ; 2 uses
  %i.act = add i64 %indvars.iv806, 2
  %i.acu = call i64 @llvm.smax.i64(i64 %i.act, i64 %i.rf)
  %i.acv = sub i64 %i.abi, %i.acm
  %i.acw = add i64 %i.acu, %i.acv
  %i.acx = lshr i64 %i.acw, 1
  %i.acy = call i64 @llvm.umin.i64(i64 %i.qi, i64 %i.acx) ; 2 uses
  %min.iters.check1142 = icmp samesign ult i64 %i.acy, 4
  br i1 %min.iters.check1142, label %scalar.ph1141.preheader, label %vector.ph1143

vector.ph1143:                                    ; preds = %.preheader639
  %i.acz = add nuw i64 %i.acy, 1                  ; 2 uses
  %i.ada = and i64 %i.acz, 3                      ; 2 uses
  %i.adb = icmp eq i64 %i.ada, 0
  %i.adc = select i1 %i.adb, i64 4, i64 %i.ada
  %n.vec1144 = sub i64 %i.acz, %i.adc             ; 2 uses
  %i.add = shl i64 %n.vec1144, 1
  %broadcast.splatinsert1145 = insertelement <4 x float> poison, float %i.aco, i64 0
  %broadcast.splat1146 = shufflevector <4 x float> %broadcast.splatinsert1145, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1147 = insertelement <4 x float> poison, float %i.acq, i64 0
  %broadcast.splat1148 = shufflevector <4 x float> %broadcast.splatinsert1147, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1149 = insertelement <4 x float> poison, float %i.acs, i64 0
  %broadcast.splat1150 = shufflevector <4 x float> %broadcast.splatinsert1149, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1143
  %index1152 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1160, %vector.body1151 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph1143 ], [ %vec.ind.next, %vector.body1151 ] ; 3 uses
  %.idx = mul i64 %index1152, 24
  %i.ade = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %wide.vec = load <24 x float>, ptr %i.ade, align 4, !tbaa !93 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec1153.a = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec1154 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %i.adf = fmul <4 x float> %broadcast.splat1148, %strided.vec1153.a
  %i.adg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1146, <4 x float> %strided.vec, <4 x float> %i.adf)
  %i.adh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1150, <4 x float> %strided.vec1154, <4 x float> %i.adg)
  %i.adi = fpext <4 x float> %i.adh to <4 x double>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0634, <4 x i64> %vec.ind ; 2 uses
  %i.adj = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec1155 = load <8 x double>, ptr %i.adj, align 8, !tbaa !91
  %strided.vec1156 = shufflevector <8 x double> %wide.vec1155, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adk = fadd <4 x double> %strided.vec1156, %i.adi
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.adk, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !91
  %wide.gep1157 = getelementptr inbounds nuw [4 x i8], ptr %.0633, <4 x i64> %vec.ind ; 2 uses
  %i.adl = extractelement <4 x ptr> %wide.gep1157, i64 0
  %wide.vec1158 = load <8 x i32>, ptr %i.adl, align 4, !tbaa !47
  %strided.vec1159 = shufflevector <8 x i32> %wide.vec1158, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adm = add nsw <4 x i32> %strided.vec1159, splat (i32 1)
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %i.adm, <4 x ptr> align 4 %wide.gep1157, <4 x i1> splat (i1 true)), !tbaa !47
  %index.next1160 = add nuw i64 %index1152, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.adn = icmp eq i64 %index.next1160, %n.vec1144
  br i1 %i.adn, label %scalar.ph1141.preheader, label %vector.body1151, !llvm.loop !37

scalar.ph1141.preheader:                          ; preds = %vector.body1151, %.preheader639
  %indvars.iv803.ph = phi i64 [ 0, %.preheader639 ], [ %i.add, %vector.body1151 ]
  br label %scalar.ph1141

scalar.ph1141:                                    ; preds = %scalar.ph1141.preheader, %scalar.ph1141
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %scalar.ph1141 ], [ %indvars.iv803.ph, %scalar.ph1141.preheader ] ; 4 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv803 ; 3 uses
  %i.ado = load float, ptr %gep, align 4, !tbaa !93
  %i.adp = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !93
  %i.adr = fmul float %i.acq, %i.adq
  %i.ads = call float @llvm.fmuladd.f32(float %i.aco, float %i.ado, float %i.adr)
  %i.adt = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !93
  %i.adv = call noundef float @llvm.fmuladd.f32(float %i.acs, float %i.adu, float %i.ads)
  %i.adw = fpext float %i.adv to double
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv803 ; 2 uses
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !91
  %i.adz = fadd double %i.ady, %i.adw
  store double %i.adz, ptr %i.adx, align 8, !tbaa !91
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv803 ; 2 uses
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !47
  %i.aec = add nsw i32 %i.aeb, 1
  store i32 %i.aec, ptr %i.aea, align 4, !tbaa !47
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 2 ; 3 uses
  %i.aed = add nsw i64 %indvars.iv.next804, %indvars.iv806
  %i.aee = icmp slt i64 %i.aed, %i.rf
  %i.aef = icmp slt i64 %indvars.iv.next804, %i.qb
  %or.cond = and i1 %i.aee, %i.aef
  br i1 %or.cond, label %scalar.ph1141, label %..critedge_crit_edge, !llvm.loop !38

..critedge_crit_edge:                             ; preds = %scalar.ph1141
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, 1 ; 2 uses
  %exitcond810.not = icmp eq i64 %indvars.iv.next807, %i.rf
  br i1 %exitcond810.not, label %.loopexit, label %.preheader639, !llvm.loop !39

.loopexit:                                        ; preds = %..critedge_crit_edge, %.preheader643, %.loopexit645
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %._crit_edge704, label %.lr.ph703, !llvm.loop !40

._crit_edge704:                                   ; preds = %.loopexit, %.loopexit652
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.loopexit652 ], [ %i.abf, %.loopexit ] ; 2 uses
  %.sroa.0.4 = phi double [ %.sroa.0.1, %.loopexit652 ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.sroa.8.4 = phi double [ %.sroa.8.1, %.loopexit652 ], [ %.sroa.8.3, %.loopexit ] ; 2 uses
  %.sroa.11.4 = phi double [ %.sroa.11.1, %.loopexit652 ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.0280.lcssa = phi double [ 0.000000e+00, %.loopexit652 ], [ %i.rx, %.loopexit ]
  %i.aeg = load ptr, ptr %i.ot, align 8, !tbaa !87 ; 3 uses
  %i.aeh = load <2 x double>, ptr %i.aeg, align 8, !tbaa !91
  %i.aei = fdiv <2 x double> %i.aeh, %i.qd        ; 2 uses
  %i.aej = extractelement <2 x double> %i.aei, i64 0
  store <2 x double> %i.aei, ptr %i.aeg, align 8, !tbaa !91
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16 ; 2 uses
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !91
  %i.aem = fdiv double %i.ael, %i.pt
  store double %i.aem, ptr %i.aek, align 8, !tbaa !91
  %i.aen = fadd double %i.aej, 0.000000e+00
  %i.aeo = load ptr, ptr %i.pb, align 8, !tbaa !87 ; 3 uses
  %i.aep = load double, ptr %i.aeo, align 8, !tbaa !91
  %i.aeq = fdiv double %i.aep, %i.pt
  store double %i.aeq, ptr %i.aeo, align 8, !tbaa !91
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 2 uses
  %i.aes = load <2 x double>, ptr %i.aer, align 8, !tbaa !91
  %i.aet = fdiv <2 x double> %i.aes, %i.qd        ; 2 uses
  %i.aeu = extractelement <2 x double> %i.aet, i64 0
  store <2 x double> %i.aet, ptr %i.aer, align 8, !tbaa !91
  %i.aev = fadd double %i.aen, %i.aeu
  %i.aew = load ptr, ptr %i.ph, align 8, !tbaa !87 ; 3 uses
  %i.aex = load <2 x double>, ptr %i.aew, align 8, !tbaa !91
  %i.aey = fdiv <2 x double> %i.aex, %i.qd
  store <2 x double> %i.aey, ptr %i.aew, align 8, !tbaa !91
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aew, i64 16 ; 2 uses
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !91
  %i.afb = fdiv double %i.afa, %i.pt              ; 2 uses
  store double %i.afb, ptr %i.aez, align 8, !tbaa !91
  %i.afc = fadd double %i.aev, %i.afb             ; 2 uses
  %i.afd = fdiv double %.0280.lcssa, %i.pt        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ot, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ou, ptr noundef nonnull %i.a)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc533:                                        ; preds = %._crit_edge704
  %i.afe = load double, ptr %i.o, align 16, !tbaa !91 ; 2 uses
  %i.aff = load double, ptr %i.ps, align 16, !tbaa !91 ; 3 uses
  %i.afg = fcmp olt double %i.afe, %i.aff         ; 2 uses
  %spec.store.select.i516 = select i1 %i.afg, i32 0, i32 2 ; 2 uses
  %i.afh = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !91 ; 2 uses
  %i.afi = fcmp ogt double %i.afh, %i.afe         ; 4 uses
  %spec.select1102 = zext i1 %i.afi to i64        ; 4 uses
  %i.afj = zext nneg i32 %spec.store.select.i516 to i64
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afj
  %i.afl = load double, ptr %i.afk, align 16, !tbaa !91
  %i.afm = fcmp uge double %i.afh, %i.afl         ; 2 uses
  %.sroa.28.8 = select i1 %i.afm, i32 %spec.store.select.i516, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val1108 = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val1109 = load double, ptr %i.o, align 16
  %i.afn = select i1 %i.afi, double %.027.1.i.sroa.gep.val1108, double %.val1109
  %i.afo = fcmp ogt double %i.aff, %i.afn
  %i.afp = zext nneg i32 %.sroa.28.8 to i64
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afp
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !91
  %i.afs = fcmp olt double %i.aff, %i.afr         ; 2 uses
  br i1 %i.afo, label %.thread41.i530, label %bb.cm

bb.cm:                                            ; preds = %.noexc533
  br i1 %i.afs, label %.preheader.thread.i529, label %.preheader.i519

.thread41.i530:                                   ; preds = %.noexc533
  br i1 %i.afs, label %.thread.i521, label %.preheader.thread42.i531

.preheader.i519:                                  ; preds = %bb.cm
  br i1 %i.afi, label %.preheader.thread42.i531, label %.thread37.i523

.preheader.thread.i529:                           ; preds = %bb.cm
  br i1 %i.afi, label %.thread.i521, label %.thread37.thread.i525

.preheader.thread42.i531:                         ; preds = %.thread41.i530, %.preheader.i519
  %.sroa.0869.10 = phi i64 [ 2, %.thread41.i530 ], [ %spec.select1102, %.preheader.i519 ]
  %i.aft = phi i32 [ 2, %.thread41.i530 ], [ 1, %.preheader.i519 ]
  %.not26.i520 = and i1 %i.afm, %i.afg            ; 2 uses
  %spec.select1235 = select i1 %.not26.i520, i32 %.sroa.13.1, i32 0
  %spec.select1236 = select i1 %.not26.i520, i32 0, i32 %.sroa.28.8
  br label %.thread.i521

.thread.i521:                                     ; preds = %.preheader.thread42.i531, %.preheader.thread.i529, %.thread41.i530
  %.sroa.13.2 = phi i32 [ %spec.select1235, %.preheader.thread42.i531 ], [ 0, %.thread41.i530 ], [ 0, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.27.10 = phi i32 [ %spec.select1236, %.preheader.thread42.i531 ], [ 2, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 3 uses
  %21 = phi i64 [ %.sroa.0869.10, %.preheader.thread42.i531 ], [ %spec.select1102, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 2 uses
  %i.afu = phi i32 [ %i.aft, %.preheader.thread42.i531 ], [ 1, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ]
  %.not.1.i522 = icmp eq i32 %i.afu, 1
  br i1 %.not.1.i522, label %.thread39.i527, label %.thread37.i523

.thread37.i523:                                   ; preds = %.thread.i521, %.preheader.i519
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.1, %.preheader.i519 ]
  %.sroa.27.11 = phi i32 [ %.sroa.27.10, %.thread.i521 ], [ %.sroa.28.8, %.preheader.i519 ] ; 3 uses
  %22 = phi i64 [ %21, %.thread.i521 ], [ %spec.select1102, %.preheader.i519 ]
  %i.afv = phi i32 [ 2, %.thread.i521 ], [ 0, %.preheader.i519 ]
  %.not26.1.i524 = icmp eq i32 %.sroa.27.11, 1    ; 2 uses
  %spec.select1237 = select i1 %.not26.1.i524, i32 %.sroa.13.3, i32 1
  %spec.select1238 = select i1 %.not26.1.i524, i32 1, i32 %.sroa.27.11
  br label %.thread37.thread.i525

.thread37.thread.i525:                            ; preds = %.thread37.i523, %.preheader.thread.i529
  %.sroa.13.4 = phi i32 [ %spec.select1237, %.thread37.i523 ], [ 1, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.27.13 = phi i32 [ %.sroa.27.11, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.28.13 = phi i32 [ %spec.select1238, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ] ; 2 uses
  %23 = phi i64 [ %22, %.thread37.i523 ], [ %spec.select1102, %.preheader.thread.i529 ] ; 2 uses
  %i.afw = phi i32 [ %i.afv, %.thread37.i523 ], [ 0, %.preheader.thread.i529 ]
  %.not.2.i526 = icmp eq i32 %i.afw, 2
  br i1 %.not.2.i526, label %bb.cn, label %.thread39.i527

.thread39.i527:                                   ; preds = %.thread37.thread.i525, %.thread.i521
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.4, %.thread37.thread.i525 ]
  %.sroa.27.14 = phi i32 [ %.sroa.27.10, %.thread.i521 ], [ %.sroa.27.13, %.thread37.thread.i525 ]
  %.sroa.28.14 = phi i32 [ %.sroa.27.10, %.thread.i521 ], [ %.sroa.28.13, %.thread37.thread.i525 ] ; 2 uses
  %24 = phi i64 [ %21, %.thread.i521 ], [ %23, %.thread37.thread.i525 ]
  %.not26.2.i528 = icmp eq i32 %.sroa.28.14, 2    ; 2 uses
  %spec.select = select i1 %.not26.2.i528, i32 %.sroa.13.5, i32 2
  %spec.select.a = select i1 %.not26.2.i528, i32 2, i32 %.sroa.28.14
  br label %bb.cn

bb.cn:                                            ; preds = %.thread39.i527, %.thread37.thread.i525
  %.sroa.13.6 = phi i32 [ %spec.select, %.thread39.i527 ], [ %.sroa.13.4, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.27.15 = phi i32 [ %.sroa.27.14, %.thread39.i527 ], [ %.sroa.27.13, %.thread37.thread.i525 ]
  %.sroa.28.15 = phi i32 [ %spec.select.a, %.thread39.i527 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  %25 = phi i64 [ %24, %.thread39.i527 ], [ %23, %.thread37.thread.i525 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.afx = load float, ptr %i.k, align 4, !tbaa !93
  %i.afy = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.afz = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.afy)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn
  %i.aga = fmul float %i.afx, %i.afz
  %i.agb = fpext float %i.aga to double
  %i.agc = call double @sqrt(double noundef %i.afd) #18
  %i.agd = call double @sqrt(double noundef %i.afc) #18
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %25
  %i.agf = load double, ptr %i.age, align 8, !tbaa !91
  %i.agg = call double @sqrt(double noundef %i.agf) #18
  %i.agh = sext i32 %.sroa.13.6 to i64            ; 2 uses
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.agh
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !91
  %i.agk = call double @sqrt(double noundef %i.agj) #18
  %i.agl = zext nneg i32 %.sroa.28.15 to i64
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.agl
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !91
  %i.ago = call double @sqrt(double noundef %i.agn) #18
  %i.agp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.69, double noundef %i.agb, double noundef %i.agc, double noundef %i.agd, double noundef %i.agg, double noundef %i.agk, double noundef %i.ago) #18 ; 0 uses
  %i.agq = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.agr = trunc nuw i8 %i.agq to i1
  br i1 %i.agr, label %.preheader648.preheader, label %.loopexit649

.preheader648.preheader:                          ; preds = %bb.co
  %i.ags = fdiv double %.sroa.0.4, %i.pt
  %i.agt = call double @sqrt(double noundef %i.ags) #18
  %i.agu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agt) #18 ; 0 uses
  %i.agv = fdiv double %.sroa.8.4, %i.pt
  %i.agw = call double @sqrt(double noundef %i.agv) #18
  %i.agx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agw) #18 ; 0 uses
  %i.agy = fdiv double %.sroa.11.4, %i.pt
  %i.agz = call double @sqrt(double noundef %i.agy) #18
  %i.aha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agz) #18 ; 0 uses
  br label %.loopexit649

.loopexit649:                                     ; preds = %.preheader648.preheader, %bb.co
  %fputc = call i32 @fputc(i32 10, ptr %i.fw)     ; 0 uses
  br i1 %.not346, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.loopexit649
  %i.ahb = load float, ptr %i.k, align 4, !tbaa !93
  %i.ahc = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.ahd = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.ahc)
          to label %.preheader641 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader641:                                    ; preds = %bb.cp
  %i.ahe = fmul float %i.ahb, %i.ahd
  %i.ahf = fpext float %i.ahe to double
  %i.ahg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.72, double noundef %i.ahf) #18 ; 0 uses
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %25 ; 3 uses
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !87
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !91
  %i.ahk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahj) #18 ; 0 uses
  %i.ahl = load ptr, ptr %i.ahh, align 8, !tbaa !87
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !91
  %i.aho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahn) #18 ; 0 uses
  %i.ahp = load ptr, ptr %i.ahh, align 8, !tbaa !87
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !91
  %i.ahs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahr) #18 ; 0 uses
  %i.aht = getelementptr inbounds [8 x i8], ptr %i.ou, i64 %i.agh ; 3 uses
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !87
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !91
  %i.ahw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahv) #18 ; 0 uses
  %i.ahx = load ptr, ptr %i.aht, align 8, !tbaa !87
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.ahz = load double, ptr %i.ahy, align 8, !tbaa !91
  %i.aia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahz) #18 ; 0 uses
  %i.aib = load ptr, ptr %i.aht, align 8, !tbaa !87
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !91
  %i.aie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aid) #18 ; 0 uses
  %26 = zext nneg i32 %.sroa.27.15 to i64
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %26 ; 3 uses
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !87
  %i.aih = load double, ptr %i.aig, align 8, !tbaa !91
  %i.aii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aih) #18 ; 0 uses
  %i.aij = load ptr, ptr %i.aif, align 8, !tbaa !87
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !91
  %i.aim = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ail) #18 ; 0 uses
  %i.ain = load ptr, ptr %i.aif, align 8, !tbaa !87
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !91
  %i.aiq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aip) #18 ; 0 uses
  %fputc348 = call i32 @fputc(i32 10, ptr nonnull %.0267) ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader641, %.loopexit649
  %i.air = insertelement <2 x double> poison, double %i.afd, i64 0
  %i.ais = insertelement <2 x double> %i.air, double %i.afc, i64 1
  %i.ait = fadd <2 x double> %i.qk, %i.ais        ; 2 uses
  br i1 %.not, label %bb.ct, label %.preheader647

.preheader647:                                    ; preds = %bb.cq
  br i1 %i.pu, label %.lr.ph714.preheader, label %._crit_edge715.thread

.lr.ph714.preheader:                              ; preds = %.preheader647
  br i1 %i.qj, label %.lr.ph714.epil.preheader, label %.lr.ph714

.lr.ph714:                                        ; preds = %.lr.ph714.preheader, %.lr.ph714
  %indvars.iv836 = phi i64 [ %indvars.iv.next837.3, %.lr.ph714 ], [ 0, %.lr.ph714.preheader ] ; 7 uses
  %.5304712 = phi i32 [ %.6305.3, %.lr.ph714 ], [ -1, %.lr.ph714.preheader ] ; 2 uses
  %niter1203 = phi i64 [ %niter1203.next.3, %.lr.ph714 ], [ 0, %.lr.ph714.preheader ]
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv836
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !47
  %i.aiw = sitofp i32 %i.aiv to double
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv836 ; 2 uses
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !91
  %i.aiz = fdiv double %i.aiy, %i.aiw             ; 2 uses
  store double %i.aiz, ptr %i.aix, align 8, !tbaa !91
  %i.aja = icmp eq i32 %.5304712, -1
  %i.ajb = fcmp ugt double %i.aiz, f0x3FD78B56362CEF38
  %i.ajc = trunc nuw nsw i64 %indvars.iv836 to i32
  %indvars.iv.next837 = or disjoint i64 %indvars.iv836, 2 ; 3 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv.next837
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !47
  %i.ajf = sitofp i32 %i.aje to double
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv.next837 ; 2 uses
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !91
  %i.aji = fdiv double %i.ajh, %i.ajf             ; 2 uses
  store double %i.aji, ptr %i.ajg, align 8, !tbaa !91
  %i.ajj = fcmp ugt double %i.aji, f0x3FD78B56362CEF38
  %i.ajk = trunc nuw nsw i64 %indvars.iv.next837 to i32
  %spec.select.1 = select i1 %i.ajj, i32 -1, i32 %i.ajk
  %.6305 = select i1 %i.ajb, i32 %spec.select.1, i32 %i.ajc
  %.6305.1 = select i1 %i.aja, i32 %.6305, i32 %.5304712 ; 2 uses
  %indvars.iv.next837.1 = or disjoint i64 %indvars.iv836, 4 ; 3 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv.next837.1
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !47
  %i.ajn = sitofp i32 %i.ajm to double
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv.next837.1 ; 2 uses
  %i.ajp = load double, ptr %i.ajo, align 8, !tbaa !91
  %i.ajq = fdiv double %i.ajp, %i.ajn             ; 2 uses
  store double %i.ajq, ptr %i.ajo, align 8, !tbaa !91
  %i.ajr = icmp eq i32 %.6305.1, -1               ; 2 uses
  %i.ajs = fcmp ugt double %i.ajq, f0x3FD78B56362CEF38 ; 2 uses
  %i.ajt = trunc nuw nsw i64 %indvars.iv.next837.1 to i32
  %indvars.iv.next837.2 = or disjoint i64 %indvars.iv836, 6 ; 3 uses
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv.next837.2
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !47
  %i.ajw = sitofp i32 %i.ajv to double
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv.next837.2 ; 2 uses
  %i.ajy = load double, ptr %i.ajx, align 8, !tbaa !91
  %i.ajz = fdiv double %i.ajy, %i.ajw             ; 2 uses
  store double %i.ajz, ptr %i.ajx, align 8, !tbaa !91
  %i.aka = fcmp ugt double %i.ajz, f0x3FD78B56362CEF38 ; 2 uses
  %i.akb = trunc nuw nsw i64 %indvars.iv.next837.2 to i32
  %spec.select.3 = select i1 %i.aka, i32 -1, i32 %i.akb
  %.6305.2 = select i1 %i.ajs, i32 %spec.select.3, i32 %i.ajt
  %.6305.3 = select i1 %i.ajr, i32 %.6305.2, i32 %.6305.1 ; 3 uses
  %indvars.iv.next837.3 = add nuw nsw i64 %indvars.iv836, 8 ; 3 uses
  %niter1203.next.3 = add i64 %niter1203, 4       ; 2 uses
  %niter1203.ncmp.3.not = icmp eq i64 %niter1203.next.3, %unroll_iter1202
  br i1 %niter1203.ncmp.3.not, label %._crit_edge715.unr-lcssa, label %.lr.ph714, !llvm.loop !41

._crit_edge715.unr-lcssa:                         ; preds = %.lr.ph714
  %i.akc = select i1 %i.ajr, i1 %i.ajs, i1 false
  br i1 %lcmp.mod1196.not, label %._crit_edge715, label %.lr.ph714.epil.preheader

.lr.ph714.epil.preheader:                         ; preds = %._crit_edge715.unr-lcssa, %.lr.ph714.preheader
  %indvars.iv836.epil.init = phi i64 [ 0, %.lr.ph714.preheader ], [ %indvars.iv.next837.3, %._crit_edge715.unr-lcssa ]
  %.5304712.epil.init = phi i32 [ -1, %.lr.ph714.preheader ], [ %.6305.3, %._crit_edge715.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1201)
  br label %.lr.ph714.epil

.lr.ph714.epil:                                   ; preds = %.lr.ph714.epil, %.lr.ph714.epil.preheader
  %indvars.iv836.epil = phi i64 [ %indvars.iv.next837.epil, %.lr.ph714.epil ], [ %indvars.iv836.epil.init, %.lr.ph714.epil.preheader ] ; 4 uses
  %.5304712.epil = phi i32 [ %.6305.epil, %.lr.ph714.epil ], [ %.5304712.epil.init, %.lr.ph714.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph714.epil ], [ 0, %.lr.ph714.epil.preheader ]
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv836.epil
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !47
  %i.akf = sitofp i32 %i.ake to double
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv836.epil ; 2 uses
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !91
  %i.aki = fdiv double %i.akh, %i.akf             ; 2 uses
  store double %i.aki, ptr %i.akg, align 8, !tbaa !91
  %i.akj = icmp eq i32 %.5304712.epil, -1         ; 2 uses
  %i.akk = fcmp ugt double %i.aki, f0x3FD78B56362CEF38 ; 2 uses
  %i.akl = trunc nuw nsw i64 %indvars.iv836.epil to i32
  %spec.select.epil = select i1 %i.akk, i32 -1, i32 %i.akl
  %.6305.epil = select i1 %i.akj, i32 %spec.select.epil, i32 %.5304712.epil ; 2 uses
  %indvars.iv.next837.epil = add nuw nsw i64 %indvars.iv836.epil, 2 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1195
  br i1 %epil.iter.cmp.not, label %._crit_edge715, label %.lr.ph714.epil, !llvm.loop !42

._crit_edge715:                                   ; preds = %.lr.ph714.epil, %._crit_edge715.unr-lcssa
  %.lcssa1181 = phi i1 [ %i.akc, %._crit_edge715.unr-lcssa ], [ %i.akj, %.lr.ph714.epil ]
  %.lcssa1180 = phi i1 [ %i.aka, %._crit_edge715.unr-lcssa ], [ %i.akk, %.lr.ph714.epil ]
  %.6305.lcssa = phi i32 [ %.6305.3, %._crit_edge715.unr-lcssa ], [ %.6305.epil, %.lr.ph714.epil ] ; 2 uses
  %indvars.iv.next837.lcssa = phi i64 [ %indvars.iv.next837.3, %._crit_edge715.unr-lcssa ], [ %indvars.iv.next837.epil, %.lr.ph714.epil ]
  %i.akm = trunc nuw nsw i64 %indvars.iv.next837.lcssa to i32
  %i.akn = uitofp nneg i32 %i.akm to double
  %i.ako = select i1 %.lcssa1181, i1 %.lcssa1180, i1 false
  br i1 %i.ako, label %._crit_edge715.thread, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge715
  %i.akp = sitofp i32 %.6305.lcssa to double
  %i.akq = fadd double %i.akp, -2.000000e+00
  %i.akr = sext i32 %.6305.lcssa to i64
  %i.aks = getelementptr [8 x i8], ptr %.0634, i64 %i.akr ; 2 uses
  %i.akt = getelementptr i8, ptr %i.aks, i64 -16
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !91
  %i.akv = call double @log(double noundef %i.aku) #18 ; 2 uses
  %i.akw = fadd double %i.akv, 1.000000e+00
  %i.akx = fmul double %i.akw, 2.000000e+00
  %i.aky = load double, ptr %i.aks, align 8, !tbaa !91
  %i.akz = call double @log(double noundef %i.aky) #18
  %i.ala = fsub double %i.akv, %i.akz
  %i.alb = fdiv double %i.akx, %i.ala
  %i.alc = fadd double %i.akq, %i.alb
  br label %._crit_edge715.thread

._crit_edge715.thread:                            ; preds = %.preheader647, %._crit_edge715, %bb.cr
  %.0274 = phi double [ %i.alc, %bb.cr ], [ %i.akn, %._crit_edge715 ], [ 0.000000e+00, %.preheader647 ] ; 2 uses
  %i.ald = load float, ptr %i.k, align 4, !tbaa !93
  %i.ale = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.alf = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.ale)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %._crit_edge715.thread
  %i.alg = fmul float %i.ald, %i.alf
  %i.alh = fpext float %i.alg to double
  %i.ali = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0266, ptr noundef nonnull @.str.74, double noundef %i.alh, double noundef %.0274) #18 ; 0 uses
  %i.alj = fadd double %.0275, %.0274
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cq
  %.1276 = phi double [ %i.alj, %bb.cs ], [ %.0275, %bb.cq ] ; 2 uses
  %i.alk = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.all = load ptr, ptr %i.j, align 8, !tbaa !101
  %i.alm = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.aln = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.alk, ptr noundef %i.all, ptr noundef nonnull %i.k, ptr noundef %i.alm, ptr noundef nonnull %i.m)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  %i.alo = add nuw nsw i32 %.0296, 1              ; 3 uses
  br i1 %i.aln, label %bb.ce, label %bb.cv, !llvm.loop !43

bb.cv:                                            ; preds = %bb.cu
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.pm)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %i.alp = load ptr, ptr %i.j, align 8, !tbaa !101
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.alp)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.fw)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not346, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0267)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %.not, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0266)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.alq = uitofp nneg i32 %i.alo to double       ; 2 uses
  %i.alr = insertelement <2 x double> poison, double %i.alq, i64 0
  %i.als = shufflevector <2 x double> %i.alr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.alt = fdiv <2 x double> %i.ait, %i.als       ; 2 uses
  %i.alu = fdiv double %.1276, %i.alq
  %i.alv = load ptr, ptr @stdout, align 8, !tbaa !57
end_hunk_0
