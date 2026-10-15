Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_polystat?download=true
inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.aas = phi i32 [ %i.aan, %.thread.i ], [ %i.aaq, %.thread37.thread.i ]
  %.sroa.0863.7 = phi i64 [ %.sroa.0863.3, %.thread.i ], [ %.sroa.0863.6, %.thread37.thread.i ]
  %i.aat = phi i32 [ %.sroa.28.2, %.thread.i ], [ %i.aar, %.thread37.thread.i ] ; 2 uses
  %.not26.2.i = icmp eq i32 %i.aat, 2
  %spec.select1094 = select i1 %.not26.2.i, i32 %i.aas, i32 2
  br label %_ZL10gyro_eigenPPdS_S0_Pi.exit

_ZL10gyro_eigenPPdS_S0_Pi.exit:                   ; preds = %.thread39.i, %.thread37.thread.i
  %i.aau = phi i32 [ %spec.select1094, %.thread39.i ], [ %i.aaq, %.thread37.thread.i ] ; 2 uses
  %.sroa.0863.8 = phi i64 [ %.sroa.0863.7, %.thread39.i ], [ %.sroa.0863.6, %.thread37.thread.i ]
  %.sroa.28.7 = phi i32 [ %i.aat, %.thread39.i ], [ %i.aar, %.thread37.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0863.8
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !91
  %i.aax = fadd double %i.aaw, %.sroa.0.2
  %i.aay = sext i32 %i.aau to i64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aay
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !91
  %i.abb = fadd double %i.aba, %.sroa.8.2
  %i.abc = zext nneg i32 %.sroa.28.7 to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.abc
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !91
  %i.abf = fadd double %i.abe, %.sroa.11.2
  br label %.loopexit645

.loopexit645:                                     ; preds = %_ZL10gyro_eigenPPdS_S0_Pi.exit, %._crit_edge690
  %i.abg = phi i32 [ %i.aau, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %i.qt, %._crit_edge690 ] ; 2 uses
  %.sroa.0.3 = phi double [ %i.aax, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.0.2, %._crit_edge690 ] ; 2 uses
  %.sroa.8.3 = phi double [ %i.abb, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.8.2, %._crit_edge690 ] ; 2 uses
  %.sroa.11.3 = phi double [ %i.abf, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.11.2, %._crit_edge690 ] ; 2 uses
  %.not1070 = icmp sge i32 %i.qv, %i.rf
  %or.cond1095.not = or i1 %.not1070, %.not
  br i1 %or.cond1095.not, label %.loopexit, label %.lr.ph696

.lr.ph696:                                        ; preds = %.loopexit645
  %i.abh = load ptr, ptr %i.l, align 8, !tbaa !89 ; 2 uses
  %i.abi = load ptr, ptr %i.h, align 8, !tbaa !92 ; 2 uses
  br label %bb.cm

.preheader643:                                    ; preds = %bb.cm
  br i1 %i.pr, label %.loopexit, label %.preheader639.preheader

.preheader639.preheader:                          ; preds = %.preheader643
  %i.abj = xor i64 %i.ra, -1
  %i.abk = add nsw i64 %i.ra, 2
  br label %.preheader639

bb.cm:                                            ; preds = %.lr.ph696, %bb.cm
  %indvars.iv792 = phi i64 [ %i.ra, %.lr.ph696 ], [ %indvars.iv.next793, %bb.cm ] ; 3 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 3 uses
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %indvars.iv.next793
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !47
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds [12 x i8], ptr %i.abh, i64 %i.abn ; 2 uses
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %indvars.iv792
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !47
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [12 x i8], ptr %i.abh, i64 %i.abr ; 2 uses
  %i.abt = sub nsw i64 %indvars.iv792, %i.ra
  %i.abu = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.abt ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !93
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !93
  %i.abz = fsub float %i.abw, %i.aby              ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.acb = load <2 x float>, ptr %i.abo, align 4, !tbaa !93
  %i.acc = load <2 x float>, ptr %i.abs, align 4, !tbaa !93
  %i.acd = fsub <2 x float> %i.acb, %i.acc        ; 4 uses
  %foldExtExtBinop1161 = fmul <2 x float> %i.acd, %i.acd
  %i.ace = extractelement <2 x float> %foldExtExtBinop1161, i64 1
  %i.acf = extractelement <2 x float> %i.acd, i64 0 ; 2 uses
  %i.acg = call float @llvm.fmuladd.f32(float %i.acf, float %i.acf, float %i.ace)
  %i.ach = call noundef float @llvm.fmuladd.f32(float %i.abz, float %i.abz, float %i.acg)
  %i.aci = call noundef float @sqrtf(float noundef %i.ach) #18
  %i.acj = fdiv float 1.000000e+00, %i.aci        ; 2 uses
  %i.ack = insertelement <2 x float> poison, float %i.acj, i64 0
  %i.acl = shufflevector <2 x float> %i.ack, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acm = fmul <2 x float> %i.acd, %i.acl
  store <2 x float> %i.acm, ptr %i.abu, align 4, !tbaa !93
  %i.acn = fmul float %i.abz, %i.acj
  store float %i.acn, ptr %i.aca, align 4, !tbaa !93
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %i.rg
  br i1 %exitcond796.not, label %.preheader643, label %bb.cm

.preheader639:                                    ; preds = %.preheader639.preheader, %..critedge_crit_edge
  %indvar = phi i64 [ 0, %.preheader639.preheader ], [ %indvar.next, %..critedge_crit_edge ] ; 3 uses
  %indvars.iv800 = phi i64 [ %i.ra, %.preheader639.preheader ], [ %indvars.iv.next801, %..critedge_crit_edge ] ; 3 uses
  %i.aco = sub i64 %i.abj, %indvar
  %i.acp = add i64 %i.abk, %indvar
  %i.acq = sub nsw i64 %indvars.iv800, %i.ra      ; 2 uses
  %i.acr = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.acq ; 3 uses
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !93 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.acu = load float, ptr %i.act, align 4, !tbaa !93 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !93 ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %.0632, i64 %i.acq ; 2 uses
  %i.acx = call i64 @llvm.smax.i64(i64 %i.acp, i64 %i.rg)
  %i.acy = add i64 %i.acx, %i.aco
  %i.acz = lshr i64 %i.acy, 1
  %i.ada = call i64 @llvm.umin.i64(i64 %i.qj, i64 %i.acz) ; 2 uses
  %min.iters.check1135 = icmp samesign ult i64 %i.ada, 4
  br i1 %min.iters.check1135, label %scalar.ph1134.preheader, label %vector.ph1136

vector.ph1136:                                    ; preds = %.preheader639
  %i.adb = add nuw i64 %i.ada, 1                  ; 2 uses
  %i.adc = and i64 %i.adb, 3                      ; 2 uses
  %i.add = icmp eq i64 %i.adc, 0
  %i.ade = select i1 %i.add, i64 4, i64 %i.adc
  %n.vec1137 = sub i64 %i.adb, %i.ade             ; 2 uses
  %i.adf = shl i64 %n.vec1137, 1
  %broadcast.splatinsert1138 = insertelement <4 x float> poison, float %i.acs, i64 0
  %broadcast.splat1139 = shufflevector <4 x float> %broadcast.splatinsert1138, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1140 = insertelement <4 x float> poison, float %i.acu, i64 0
  %broadcast.splat1141 = shufflevector <4 x float> %broadcast.splatinsert1140, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1142 = insertelement <4 x float> poison, float %i.acw, i64 0
  %broadcast.splat1143 = shufflevector <4 x float> %broadcast.splatinsert1142, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1136
  %index1145 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1153, %vector.body1144 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph1136 ], [ %vec.ind.next, %vector.body1144 ] ; 3 uses
  %.idx = mul i64 %index1145, 24
  %i.adg = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %wide.vec = load <24 x float>, ptr %i.adg, align 4, !tbaa !93 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec1146 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec1147 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %i.adh = fmul <4 x float> %broadcast.splat1141, %strided.vec1146
  %i.adi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1139, <4 x float> %strided.vec, <4 x float> %i.adh)
  %i.adj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1143, <4 x float> %strided.vec1147, <4 x float> %i.adi)
  %i.adk = fpext <4 x float> %i.adj to <4 x double>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0634, <4 x i64> %vec.ind ; 2 uses
  %i.adl = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec1148 = load <8 x double>, ptr %i.adl, align 8, !tbaa !91
  %strided.vec1149 = shufflevector <8 x double> %wide.vec1148, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adm = fadd <4 x double> %strided.vec1149, %i.adk
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.adm, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !91
  %wide.gep1150 = getelementptr inbounds nuw [4 x i8], ptr %.0633, <4 x i64> %vec.ind ; 2 uses
  %i.adn = extractelement <4 x ptr> %wide.gep1150, i64 0
  %wide.vec1151 = load <8 x i32>, ptr %i.adn, align 4, !tbaa !47
  %strided.vec1152 = shufflevector <8 x i32> %wide.vec1151, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ado = add nsw <4 x i32> %strided.vec1152, splat (i32 1)
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %i.ado, <4 x ptr> align 4 %wide.gep1150, <4 x i1> splat (i1 true)), !tbaa !47
  %index.next1153 = add nuw i64 %index1145, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.adp = icmp eq i64 %index.next1153, %n.vec1137
  br i1 %i.adp, label %scalar.ph1134.preheader, label %vector.body1144, !llvm.loop !37

scalar.ph1134.preheader:                          ; preds = %vector.body1144, %.preheader639
  %indvars.iv797.ph = phi i64 [ 0, %.preheader639 ], [ %i.adf, %vector.body1144 ]
  br label %scalar.ph1134

scalar.ph1134:                                    ; preds = %scalar.ph1134.preheader, %scalar.ph1134
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %scalar.ph1134 ], [ %indvars.iv797.ph, %scalar.ph1134.preheader ] ; 4 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv797 ; 3 uses
  %i.adq = load float, ptr %gep, align 4, !tbaa !93
  %i.adr = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !93
  %i.adt = fmul float %i.acu, %i.ads
  %i.adu = call float @llvm.fmuladd.f32(float %i.acs, float %i.adq, float %i.adt)
  %i.adv = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !93
  %i.adx = call noundef float @llvm.fmuladd.f32(float %i.acw, float %i.adw, float %i.adu)
  %i.ady = fpext float %i.adx to double
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv797 ; 2 uses
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !91
  %i.aeb = fadd double %i.aea, %i.ady
  store double %i.aeb, ptr %i.adz, align 8, !tbaa !91
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv797 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !47
  %i.aee = add nsw i32 %i.aed, 1
  store i32 %i.aee, ptr %i.aec, align 4, !tbaa !47
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 2 ; 3 uses
  %i.aef = add nsw i64 %indvars.iv.next798, %indvars.iv800
  %i.aeg = icmp slt i64 %i.aef, %i.rg
  %i.aeh = icmp slt i64 %indvars.iv.next798, %i.qc
  %or.cond = and i1 %i.aeg, %i.aeh
  br i1 %or.cond, label %scalar.ph1134, label %..critedge_crit_edge, !llvm.loop !38

..critedge_crit_edge:                             ; preds = %scalar.ph1134
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801, %i.rg
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond804.not, label %.loopexit, label %.preheader639, !llvm.loop !39

.loopexit:                                        ; preds = %..critedge_crit_edge, %.preheader643, %.loopexit645
  %exitcond809.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count808
  br i1 %exitcond809.not, label %._crit_edge704, label %.lr.ph703, !llvm.loop !40

._crit_edge704:                                   ; preds = %.loopexit, %.loopexit652
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.loopexit652 ], [ %i.abg, %.loopexit ] ; 2 uses
  %.sroa.0.4 = phi double [ %.sroa.0.1, %.loopexit652 ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.sroa.8.4 = phi double [ %.sroa.8.1, %.loopexit652 ], [ %.sroa.8.3, %.loopexit ] ; 2 uses
  %.sroa.11.4 = phi double [ %.sroa.11.1, %.loopexit652 ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.0280.lcssa = phi double [ 0.000000e+00, %.loopexit652 ], [ %i.ry, %.loopexit ]
  %i.aei = load ptr, ptr %i.ou, align 8, !tbaa !87 ; 3 uses
  %i.aej = load <2 x double>, ptr %i.aei, align 8, !tbaa !91
  %i.aek = fdiv <2 x double> %i.aej, %i.qe        ; 2 uses
  store <2 x double> %i.aek, ptr %i.aei, align 8, !tbaa !91
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 16 ; 2 uses
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !91
  %i.aen = fdiv double %i.aem, %i.pu
  store double %i.aen, ptr %i.ael, align 8, !tbaa !91
  %21 = extractelement <2 x double> %i.aek, i64 0
  %i.aeo = fadd double %21, 0.000000e+00
  %i.aep = load ptr, ptr %i.pc, align 8, !tbaa !87 ; 3 uses
  %22 = load <2 x double>, ptr %i.aep, align 8, !tbaa !91
  %23 = fdiv <2 x double> %22, %i.qe              ; 2 uses
  store <2 x double> %23, ptr %i.aep, align 8, !tbaa !91
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 16 ; 2 uses
  %24 = load double, ptr %i.aeq, align 8, !tbaa !91
  %25 = fdiv double %24, %i.pu
  store double %25, ptr %i.aeq, align 8, !tbaa !91
  %26 = extractelement <2 x double> %23, i64 1
  %i.aer = fadd double %i.aeo, %26
  %i.aes = load ptr, ptr %i.pi, align 8, !tbaa !87 ; 3 uses
  %i.aet = load <2 x double>, ptr %i.aes, align 8, !tbaa !91
  %i.aeu = fdiv <2 x double> %i.aet, %i.qe
  store <2 x double> %i.aeu, ptr %i.aes, align 8, !tbaa !91
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 16 ; 2 uses
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !91
  %i.aex = fdiv double %i.aew, %i.pu              ; 2 uses
  store double %i.aex, ptr %i.aev, align 8, !tbaa !91
  %i.aey = fadd double %i.aer, %i.aex             ; 2 uses
  %i.aez = fdiv double %.0280.lcssa, %i.pu        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ou, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ov, ptr noundef nonnull %i.a)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit

.noexc533:                                        ; preds = %._crit_edge704
  %i.afa = load double, ptr %i.o, align 16, !tbaa !91 ; 2 uses
  %i.afb = load double, ptr %i.pt, align 16, !tbaa !91 ; 3 uses
  %i.afc = fcmp olt double %i.afa, %i.afb         ; 2 uses
  %spec.store.select.i516 = select i1 %i.afc, i32 0, i32 2 ; 2 uses
  %i.afd = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !91 ; 2 uses
  %i.afe = fcmp ogt double %i.afd, %i.afa         ; 4 uses
  %spec.select1096 = zext i1 %i.afe to i64        ; 4 uses
  %i.aff = zext nneg i32 %spec.store.select.i516 to i64
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aff
  %i.afh = load double, ptr %i.afg, align 16, !tbaa !91
  %i.afi = fcmp uge double %i.afd, %i.afh         ; 2 uses
  %.sroa.28.8 = select i1 %i.afi, i32 %spec.store.select.i516, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val1102 = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val1103 = load double, ptr %i.o, align 16
  %i.afj = select i1 %i.afe, double %.027.1.i.sroa.gep.val1102, double %.val1103
  %i.afk = fcmp ogt double %i.afb, %i.afj
  %i.afl = zext nneg i32 %.sroa.28.8 to i64
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afl
  %i.afn = load double, ptr %i.afm, align 8, !tbaa !91
  %i.afo = fcmp olt double %i.afb, %i.afn         ; 2 uses
  br i1 %i.afk, label %.thread41.i530, label %bb.cn

bb.cn:                                            ; preds = %.noexc533
  br i1 %i.afo, label %.preheader.thread.i529, label %.preheader.i519

.thread41.i530:                                   ; preds = %.noexc533
  br i1 %i.afo, label %.thread.i521, label %.preheader.thread42.i531

.preheader.i519:                                  ; preds = %bb.cn
  br i1 %i.afe, label %.preheader.thread42.i531, label %.thread37.i523

.preheader.thread.i529:                           ; preds = %bb.cn
  br i1 %i.afe, label %.thread.i521, label %.thread37.thread.i525

.preheader.thread42.i531:                         ; preds = %.thread41.i530, %.preheader.i519
  %.sroa.0863.10 = phi i64 [ 2, %.thread41.i530 ], [ %spec.select1096, %.preheader.i519 ]
  %i.afp = phi i32 [ 2, %.thread41.i530 ], [ 1, %.preheader.i519 ]
  %.not26.i520 = and i1 %i.afi, %i.afc            ; 2 uses
  %spec.select1228 = select i1 %.not26.i520, i32 %.sroa.13.1, i32 0
  %spec.select1229 = select i1 %.not26.i520, i32 0, i32 %.sroa.28.8
  br label %.thread.i521

.thread.i521:                                     ; preds = %.preheader.thread42.i531, %.preheader.thread.i529, %.thread41.i530
  %.sroa.13.2 = phi i32 [ %spec.select1228, %.preheader.thread42.i531 ], [ 0, %.thread41.i530 ], [ 0, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.0863.12 = phi i64 [ %.sroa.0863.10, %.preheader.thread42.i531 ], [ %spec.select1096, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 2 uses
  %.sroa.28.10 = phi i32 [ %spec.select1229, %.preheader.thread42.i531 ], [ 2, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 3 uses
  %i.afq = phi i32 [ %i.afp, %.preheader.thread42.i531 ], [ 1, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ]
  %.not.1.i522 = icmp eq i32 %i.afq, 1
  br i1 %.not.1.i522, label %.thread39.i527, label %.thread37.i523

.thread37.i523:                                   ; preds = %.thread.i521, %.preheader.i519
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.1, %.preheader.i519 ]
  %.sroa.0863.13 = phi i64 [ %.sroa.0863.12, %.thread.i521 ], [ %spec.select1096, %.preheader.i519 ]
  %.sroa.28.11 = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %.sroa.28.8, %.preheader.i519 ] ; 3 uses
  %i.afr = phi i32 [ 2, %.thread.i521 ], [ 0, %.preheader.i519 ]
  %.not26.1.i524 = icmp eq i32 %.sroa.28.11, 1    ; 2 uses
  %spec.select1230 = select i1 %.not26.1.i524, i32 %.sroa.13.3, i32 1
  %spec.select1231 = select i1 %.not26.1.i524, i32 1, i32 %.sroa.28.11
  br label %.thread37.thread.i525

.thread37.thread.i525:                            ; preds = %.thread37.i523, %.preheader.thread.i529
  %.sroa.13.4 = phi i32 [ %spec.select1230, %.thread37.i523 ], [ 1, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.0863.15 = phi i64 [ %.sroa.0863.13, %.thread37.i523 ], [ %spec.select1096, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.28.13 = phi i32 [ %.sroa.28.11, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ] ; 2 uses
  %i.afs = phi i32 [ %i.afr, %.thread37.i523 ], [ 0, %.preheader.thread.i529 ]
  %i.aft = phi i32 [ %spec.select1231, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ]
  %.not.2.i526 = icmp eq i32 %i.afs, 2
  br i1 %.not.2.i526, label %bb.co, label %.thread39.i527

.thread39.i527:                                   ; preds = %.thread37.thread.i525, %.thread.i521
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.4, %.thread37.thread.i525 ]
  %.sroa.0863.16 = phi i64 [ %.sroa.0863.12, %.thread.i521 ], [ %.sroa.0863.15, %.thread37.thread.i525 ]
  %.sroa.28.14 = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  %i.afu = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %i.aft, %.thread37.thread.i525 ]
  %.not26.2.i528 = icmp eq i32 %i.afu, 2
  %spec.select = select i1 %.not26.2.i528, i32 %.sroa.13.5, i32 2
  br label %bb.co

bb.co:                                            ; preds = %.thread39.i527, %.thread37.thread.i525
  %.sroa.13.6 = phi i32 [ %spec.select, %.thread39.i527 ], [ %.sroa.13.4, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.0863.17 = phi i64 [ %.sroa.0863.16, %.thread39.i527 ], [ %.sroa.0863.15, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.28.15 = phi i32 [ %.sroa.28.14, %.thread39.i527 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.afv = load float, ptr %i.k, align 4, !tbaa !93
  %i.afw = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.afx = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.afw)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.afy = fmul float %i.afv, %i.afx
  %i.afz = fpext float %i.afy to double
  %i.aga = call double @sqrt(double noundef %i.aez) #18
  %i.agb = call double @sqrt(double noundef %i.aey) #18
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0863.17
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !91
  %i.age = call double @sqrt(double noundef %i.agd) #18
  %i.agf = sext i32 %.sroa.13.6 to i64            ; 2 uses
  %i.agg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.agf
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !91
  %i.agi = call double @sqrt(double noundef %i.agh) #18
  %i.agj = zext nneg i32 %.sroa.28.15 to i64      ; 2 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.agj
  %i.agl = load double, ptr %i.agk, align 8, !tbaa !91
  %i.agm = call double @sqrt(double noundef %i.agl) #18
  %i.agn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.69, double noundef %i.afz, double noundef %i.aga, double noundef %i.agb, double noundef %i.age, double noundef %i.agi, double noundef %i.agm) #18 ; 0 uses
  %i.ago = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.agp = trunc nuw i8 %i.ago to i1
  br i1 %i.agp, label %.preheader648.preheader, label %.loopexit649

.preheader648.preheader:                          ; preds = %bb.cp
  %i.agq = fdiv double %.sroa.0.4, %i.pu
  %i.agr = call double @sqrt(double noundef %i.agq) #18
  %i.ags = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agr) #18 ; 0 uses
  %i.agt = fdiv double %.sroa.8.4, %i.pu
  %i.agu = call double @sqrt(double noundef %i.agt) #18
  %i.agv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agu) #18 ; 0 uses
  %i.agw = fdiv double %.sroa.11.4, %i.pu
  %i.agx = call double @sqrt(double noundef %i.agw) #18
  %i.agy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agx) #18 ; 0 uses
  br label %.loopexit649

.loopexit649:                                     ; preds = %.preheader648.preheader, %bb.cp
  %fputc = call i32 @fputc(i32 10, ptr %i.fw)     ; 0 uses
  br i1 %.not346, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.loopexit649
  %i.agz = load float, ptr %i.k, align 4, !tbaa !93
  %i.aha = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.ahb = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.aha)
          to label %.preheader641 unwind label %.loopexit.split-lp.loopexit

.preheader641:                                    ; preds = %bb.cq
  %i.ahc = fmul float %i.agz, %i.ahb
  %i.ahd = fpext float %i.ahc to double
  %i.ahe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.72, double noundef %i.ahd) #18 ; 0 uses
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %.sroa.0863.17 ; 3 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !87
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !91
  %i.ahi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahh) #18 ; 0 uses
  %i.ahj = load ptr, ptr %i.ahf, align 8, !tbaa !87
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !91
  %i.ahm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahl) #18 ; 0 uses
  %i.ahn = load ptr, ptr %i.ahf, align 8, !tbaa !87
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = load double, ptr %i.aho, align 8, !tbaa !91
  %i.ahq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahp) #18 ; 0 uses
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.agf ; 3 uses
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !87
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !91
  %i.ahu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aht) #18 ; 0 uses
  %i.ahv = load ptr, ptr %i.ahr, align 8, !tbaa !87
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load double, ptr %i.ahw, align 8, !tbaa !91
  %i.ahy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahx) #18 ; 0 uses
  %i.ahz = load ptr, ptr %i.ahr, align 8, !tbaa !87
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !91
  %i.aic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aib) #18 ; 0 uses
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.agj ; 3 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !87
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !91
  %i.aig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aif) #18 ; 0 uses
  %i.aih = load ptr, ptr %i.aid, align 8, !tbaa !87
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !91
  %i.aik = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aij) #18 ; 0 uses
  %i.ail = load ptr, ptr %i.aid, align 8, !tbaa !87
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !91
  %i.aio = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ain) #18 ; 0 uses
  %fputc348 = call i32 @fputc(i32 10, ptr nonnull %.0267) ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader641, %.loopexit649
  %i.aip = insertelement <2 x double> poison, double %i.aez, i64 0
  %i.aiq = insertelement <2 x double> %i.aip, double %i.aey, i64 1
  %i.air = fadd <2 x double> %i.ql, %i.aiq        ; 2 uses
  br i1 %.not, label %bb.cu, label %.preheader647

.preheader647:                                    ; preds = %bb.cr
  br i1 %i.pv, label %.lr.ph714.preheader, label %._crit_edge715.thread

.lr.ph714.preheader:                              ; preds = %.preheader647
end_hunk_0
