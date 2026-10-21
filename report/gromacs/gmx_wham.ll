Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8gmx_whamiPPc:bb.a
  %i.aij = shl nuw nsw i64 %i.aih, 2              ; 4 uses
  %i.aik = uitofp nneg i32 %i.ahp to double
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahm, i64 72
  %i.aim = zext nneg i32 %i.ahp to i64            ; 5 uses
  %i.ain = sext i32 %spec.store.select.i to i64   ; 2 uses
  %smax.i274 = call i32 @llvm.smax.i32(i32 %i.ahq, i32 2)
  %wide.trip.count155.i = zext nneg i32 %smax.i274 to i64
  %xtraiter1286 = and i64 %i.aim, 7               ; 3 uses
  %unroll_iter1291 = and i64 %i.aim, 2147483640
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1286, 0
  %lcmp.mod1290 = icmp ne i64 %xtraiter1286, 0
  %i.aio = add nsw i64 %i.aih, -1
  %min.iters.check1066 = icmp ult i32 %i.ahp, 32
  %i.aip = and i64 %i.aih, 12
  %n.vec1068 = and i64 %i.aih, 1073741808         ; 4 uses
  %cmp.n1081 = icmp eq i64 %n.vec1068, %i.aih
  %min.epilog.iters.check1086 = icmp eq i64 %i.aip, 0
  %n.vec1088 = and i64 %i.aih, 1073741820         ; 3 uses
  %cmp.n1095 = icmp eq i64 %n.vec1088, %i.aih
  %min.iters.check1033 = icmp ult i32 %i.ahp, 32
  %i.aiq = and i64 %i.aih, 12
  %n.vec1035 = and i64 %i.aih, 1073741808         ; 4 uses
  %cmp.n1046 = icmp eq i64 %n.vec1035, %i.aih
  %min.epilog.iters.check1051 = icmp eq i64 %i.aiq, 0
  %n.vec1053 = and i64 %i.aih, 1073741820         ; 3 uses
  %cmp.n1061 = icmp eq i64 %n.vec1053, %i.aih
  br label %bb.gq

bb.gq:                                            ; preds = %.critedge2.i, %.lr.ph78.i
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next158.i, %.critedge2.i ] ; 6 uses
  %i.air = load ptr, ptr %i.ahn, align 8, !tbaa !80
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv157.i
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !12
  %.not207.i = icmp eq i32 %i.ahp, %i.ait
  br i1 %.not207.i, label %.noexc229.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279

.noexc291:                                        ; preds = %bb.gr
  %i.aiu = load ptr, ptr %i.ahn, align 8, !tbaa !80
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.aiu, i64 %indvars.iv157.i
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !12
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 2375, ptr noundef nonnull @.str.353, i32 noundef %i.ahp, i32 noundef %i.aiw) #31
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %.noexc291
  unreachable

bb.gt:                                            ; preds = %.noexc291
  %i.aix = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

.noexc229.i:                                      ; preds = %bb.gq
  %i.aiy = load ptr, ptr %i.aig, align 8, !tbaa !106
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %indvars.iv157.i
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !107 ; 12 uses
  %i.ajb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aii) #36
          to label %.noexc292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1279 ; 15 uses

.noexc292:                                        ; preds = %.noexc229.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajb, i8 0, i64 %i.aii, i1 false), !tbaa !90
  %i.ajc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aij) #36
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i unwind label %bb.gu ; 8 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i: ; preds = %.noexc292
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ajc, i8 0, i64 %i.aij, i1 false), !tbaa !12
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i
  %indvars.iv.i276 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %indvars.iv.next.i277.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 9 uses
  %.017555.i = phi double [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %i.akp, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
  %niter1292 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %niter1292.next.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !32
  %i.ajf = fpext float %i.aje to double
  %i.ajg = fadd double %.017555.i, %i.ajf
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !32
  %i.ajk = fpext float %i.ajj to double
  %i.ajl = fadd double %i.ajg, %i.ajk
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !32
  %i.ajp = fpext float %i.ajo to double
  %i.ajq = fadd double %i.ajl, %i.ajp
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 12
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !32
  %i.aju = fpext float %i.ajt to double
  %i.ajv = fadd double %i.ajq, %i.aju
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !32
  %i.ajz = fpext float %i.ajy to double
  %i.aka = fadd double %i.ajv, %i.ajz
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 20
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !32
  %i.ake = fpext float %i.akd to double
  %i.akf = fadd double %i.aka, %i.ake
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 24
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !32
  %i.akj = fpext float %i.aki to double
  %i.akk = fadd double %i.akf, %i.akj
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 28
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !32
  %i.ako = fpext float %i.akn to double
  %i.akp = fadd double %i.akk, %i.ako             ; 3 uses
  %indvars.iv.next.i277.7 = add nuw nsw i64 %indvars.iv.i276, 8 ; 2 uses
  %niter1292.next.7 = add i64 %niter1292, 8       ; 2 uses
  %niter1292.ncmp.7 = icmp eq i64 %niter1292.next.7, %unroll_iter1291
  br i1 %niter1292.ncmp.7, label %.preheader34.preheader.i.unr-lcssa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, !llvm.loop !179

bb.gu:                                            ; preds = %.noexc292
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit240.i

.preheader34.preheader.i.unr-lcssa:               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  br i1 %lcmp.mod1288.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader: ; preds = %.preheader34.preheader.i.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1290)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil:     ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader
  %indvars.iv.i276.epil = phi i64 [ %indvars.iv.next.i277.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %indvars.iv.next.i277.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ] ; 2 uses
  %.017555.i.epil = phi double [ %i.akp, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %i.aku, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %epil.iter1287 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %epil.iter1287.next, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276.epil
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !32
  %i.akt = fpext float %i.aks to double
  %i.aku = fadd double %.017555.i.epil, %i.akt    ; 2 uses
  %indvars.iv.next.i277.epil = add nuw nsw i64 %indvars.iv.i276.epil, 1
  %epil.iter1287.next = add i64 %epil.iter1287, 1 ; 2 uses
  %epil.iter1287.cmp.not = icmp eq i64 %epil.iter1287.next, %xtraiter1286
  br i1 %epil.iter1287.cmp.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, !llvm.loop !180

.preheader34.preheader.i:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %.preheader34.preheader.i.unr-lcssa
  %.lcssa1213 = phi double [ %i.akp, %.preheader34.preheader.i.unr-lcssa ], [ %i.aku, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akv = fdiv double %.lcssa1213, %i.aik        ; 3 uses
  %broadcast.splatinsert1101 = insertelement <4 x double> poison, double %i.akv, i64 0
  %broadcast.splat1102 = shufflevector <4 x double> %broadcast.splatinsert1101, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.critedge.i279, %.preheader34.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i279 ], [ 0, %.preheader34.preheader.i ] ; 2 uses
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %.critedge.i279 ], [ 0, %.preheader34.preheader.i ] ; 5 uses
  %i.akw = mul i64 %indvar, %i.ain
  %i.akx = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %indvars.iv134.i ; 2 uses
  %i.aky = call i64 @llvm.smax.i64(i64 %indvars.iv134.i, i64 %i.aim)
  %i.akz = sub i64 %i.aky, %i.akw
  %i.ala = call i64 @llvm.umin.i64(i64 %i.akz, i64 %i.aio)
  %i.alb = add i64 %i.ala, 1                      ; 3 uses
  %min.iters.check1098 = icmp ult i64 %i.alb, 9
  br i1 %min.iters.check1098, label %scalar.ph1097.preheader, label %vector.ph1099

vector.ph1099:                                    ; preds = %.preheader34.i
  %i.alc = and i64 %i.alb, 7                      ; 2 uses
  %i.ald = icmp eq i64 %i.alc, 0
  %i.ale = select i1 %i.ald, i64 8, i64 %i.alc
  %n.vec1100 = sub i64 %i.alb, %i.ale             ; 2 uses
  %i.alf = load float, ptr %i.akx, align 4, !tbaa !32
  %broadcast.splatinsert1105 = insertelement <4 x float> poison, float %i.alf, i64 0
  %broadcast.splat1106 = shufflevector <4 x float> %broadcast.splatinsert1105, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alg = fpext <4 x float> %broadcast.splat1106 to <4 x double>
  %i.alh = fsub <4 x double> %i.alg, %broadcast.splat1102 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aja, i64 %indvars.iv134.i
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1099
  %index1104 = phi i64 [ 0, %vector.ph1099 ], [ %index.next1113, %vector.body1103 ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1104 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load1107 = load <4 x float>, ptr %gep, align 4, !tbaa !32
  %wide.load1108 = load <4 x float>, ptr %i.ali, align 4, !tbaa !32
  %i.alj = fpext <4 x float> %wide.load1107 to <4 x double>
  %i.alk = fpext <4 x float> %wide.load1108 to <4 x double>
  %i.all = fsub <4 x double> %i.alj, %broadcast.splat1102
  %i.alm = fsub <4 x double> %i.alk, %broadcast.splat1102
  %i.aln = fmul <4 x double> %i.alh, %i.all
  %i.alo = fmul <4 x double> %i.alh, %i.alm
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1104 ; 3 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 32 ; 2 uses
  %wide.load1109 = load <4 x double>, ptr %i.alp, align 8, !tbaa !90
  %wide.load1110 = load <4 x double>, ptr %i.alq, align 8, !tbaa !90
  %i.alr = fadd <4 x double> %wide.load1109, %i.aln
  %i.als = fadd <4 x double> %wide.load1110, %i.alo
  store <4 x double> %i.alr, ptr %i.alp, align 8, !tbaa !90
  store <4 x double> %i.als, ptr %i.alq, align 8, !tbaa !90
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1104 ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16 ; 2 uses
  %wide.load1111 = load <4 x i32>, ptr %i.alt, align 4, !tbaa !12
  %wide.load1112 = load <4 x i32>, ptr %i.alu, align 4, !tbaa !12
  %44 = add nsw <4 x i32> %wide.load1111, splat (i32 1)
  %45 = add nsw <4 x i32> %wide.load1112, splat (i32 1)
  store <4 x i32> %44, ptr %i.alt, align 4, !tbaa !12
  store <4 x i32> %45, ptr %i.alu, align 4, !tbaa !12
  %index.next1113 = add nuw i64 %index1104, 8     ; 2 uses
  %i.alv = icmp eq i64 %index.next1113, %n.vec1100
  br i1 %i.alv, label %scalar.ph1097.preheader, label %vector.body1103, !llvm.loop !181

scalar.ph1097.preheader:                          ; preds = %vector.body1103, %.preheader34.i
  %indvars.iv129.i.ph = phi i64 [ 0, %.preheader34.i ], [ %n.vec1100, %vector.body1103 ]
  br label %scalar.ph1097

scalar.ph1097:                                    ; preds = %scalar.ph1097.preheader, %bb.gv
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.gv ], [ %indvars.iv129.i.ph, %scalar.ph1097.preheader ] ; 4 uses
  %i.alw = add nsw i64 %indvars.iv129.i, %indvars.iv134.i ; 2 uses
  %i.alx = icmp slt i64 %i.alw, %i.aim
  br i1 %i.alx, label %bb.gv, label %.critedge.i279

bb.gv:                                            ; preds = %scalar.ph1097
  %i.aly = load float, ptr %i.akx, align 4, !tbaa !32
  %i.alz = fpext float %i.aly to double
  %i.ama = fsub double %i.alz, %i.akv
  %i.amb = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.alw
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !32
  %i.amd = fpext float %i.amc to double
  %i.ame = fsub double %i.amd, %i.akv
  %i.amf = fmul double %i.ama, %i.ame
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv129.i ; 2 uses
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !90
  %i.ami = fadd double %i.amh, %i.amf
  store double %i.ami, ptr %i.amg, align 8, !tbaa !90
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv129.i ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !12
  %i.aml = add nsw i32 %i.amk, 1
  store i32 %i.aml, ptr %i.amj, align 4, !tbaa !12
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %i.aih
  br i1 %exitcond133.not.i, label %.critedge.i279, label %scalar.ph1097, !llvm.loop !182

.critedge.i279:                                   ; preds = %bb.gv, %scalar.ph1097
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, %i.ain ; 2 uses
  %i.amm = icmp slt i64 %indvars.iv.next135.i, %i.aim
  %indvar.next = add i64 %indvar, 1
  br i1 %i.amm, label %.preheader34.i, label %vector.main.loop.iter.check1065, !llvm.loop !183

vector.main.loop.iter.check1065:                  ; preds = %.critedge.i279
  br i1 %min.iters.check1066, label %vec.epilog.ph1087, label %vector.body1069

vector.body1069:                                  ; preds = %vector.main.loop.iter.check1065, %vector.body1069
  %index1070 = phi i64 [ %index.next1079, %vector.body1069 ], [ 0, %vector.main.loop.iter.check1065 ] ; 3 uses
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1070 ; 5 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 32 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 64 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amn, i64 96 ; 2 uses
  %wide.load1071 = load <4 x double>, ptr %i.amn, align 8, !tbaa !90
  %wide.load1072 = load <4 x double>, ptr %i.amo, align 8, !tbaa !90
  %wide.load1073 = load <4 x double>, ptr %i.amp, align 8, !tbaa !90
  %wide.load1074 = load <4 x double>, ptr %i.amq, align 8, !tbaa !90
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1070 ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 48
  %wide.load1075 = load <4 x i32>, ptr %i.amr, align 4, !tbaa !12
  %wide.load1076 = load <4 x i32>, ptr %i.ams, align 4, !tbaa !12
  %wide.load1077 = load <4 x i32>, ptr %i.amt, align 4, !tbaa !12
  %wide.load1078 = load <4 x i32>, ptr %i.amu, align 4, !tbaa !12
  %i.amv = sitofp <4 x i32> %wide.load1075 to <4 x double>
  %i.amw = sitofp <4 x i32> %wide.load1076 to <4 x double>
  %i.amx = sitofp <4 x i32> %wide.load1077 to <4 x double>
  %i.amy = sitofp <4 x i32> %wide.load1078 to <4 x double>
  %i.amz = fdiv <4 x double> %wide.load1071, %i.amv
  %i.ana = fdiv <4 x double> %wide.load1072, %i.amw
  %i.anb = fdiv <4 x double> %wide.load1073, %i.amx
  %i.anc = fdiv <4 x double> %wide.load1074, %i.amy
  store <4 x double> %i.amz, ptr %i.amn, align 8, !tbaa !90
  store <4 x double> %i.ana, ptr %i.amo, align 8, !tbaa !90
  store <4 x double> %i.anb, ptr %i.amp, align 8, !tbaa !90
  store <4 x double> %i.anc, ptr %i.amq, align 8, !tbaa !90
  %index.next1079 = add nuw i64 %index1070, 16    ; 2 uses
  %i.and = icmp eq i64 %index.next1079, %n.vec1068
  br i1 %i.and, label %middle.block1080, label %vector.body1069, !llvm.loop !184

middle.block1080:                                 ; preds = %vector.body1069
  br i1 %cmp.n1081, label %iter.check1048, label %vec.epilog.iter.check1085

vec.epilog.iter.check1085:                        ; preds = %middle.block1080
  br i1 %min.epilog.iters.check1086, label %.lr.ph61.i.preheader, label %vec.epilog.ph1087, !prof !93

vec.epilog.ph1087:                                ; preds = %vector.main.loop.iter.check1065, %vec.epilog.iter.check1085
  %vec.epilog.resume.val1082 = phi i64 [ %n.vec1068, %vec.epilog.iter.check1085 ], [ 0, %vector.main.loop.iter.check1065 ]
  br label %vec.epilog.vector.body1089

vec.epilog.vector.body1089:                       ; preds = %vec.epilog.vector.body1089, %vec.epilog.ph1087
  %index1090 = phi i64 [ %vec.epilog.resume.val1082, %vec.epilog.ph1087 ], [ %index.next1093, %vec.epilog.vector.body1089 ] ; 3 uses
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1090 ; 2 uses
  %wide.load1091 = load <4 x double>, ptr %i.ane, align 8, !tbaa !90
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1090
  %wide.load1092 = load <4 x i32>, ptr %i.anf, align 4, !tbaa !12
  %i.ang = sitofp <4 x i32> %wide.load1092 to <4 x double>
  %i.anh = fdiv <4 x double> %wide.load1091, %i.ang
  store <4 x double> %i.anh, ptr %i.ane, align 8, !tbaa !90
  %index.next1093 = add nuw i64 %index1090, 4     ; 2 uses
  %i.ani = icmp eq i64 %index.next1093, %n.vec1088
  br i1 %i.ani, label %vec.epilog.middle.block1094, label %vec.epilog.vector.body1089, !llvm.loop !185

vec.epilog.middle.block1094:                      ; preds = %vec.epilog.vector.body1089
  br i1 %cmp.n1095, label %iter.check1048, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %vec.epilog.iter.check1085, %vec.epilog.middle.block1094
  %indvars.iv137.i.ph = phi i64 [ %n.vec1068, %vec.epilog.iter.check1085 ], [ %n.vec1088, %vec.epilog.middle.block1094 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.lr.ph61.i ], [ %indvars.iv137.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv137.i ; 2 uses
  %i.ank = load double, ptr %i.anj, align 8, !tbaa !90
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv137.i
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !12
  %i.ann = sitofp i32 %i.anm to double
  %i.ano = fdiv double %i.ank, %i.ann
  store double %i.ano, ptr %i.anj, align 8, !tbaa !90
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %i.aih
  br i1 %exitcond141.not.i, label %iter.check1048, label %.lr.ph61.i, !llvm.loop !186

iter.check1048:                                   ; preds = %.lr.ph61.i, %vec.epilog.middle.block1094, %middle.block1080
  %i.anp = load double, ptr %i.ajb, align 8, !tbaa !90
  %i.anq = fdiv double 1.000000e+00, %i.anp       ; 3 uses
  br i1 %min.iters.check1033, label %vec.epilog.ph1052, label %vector.ph1034

vector.ph1034:                                    ; preds = %iter.check1048
  %broadcast.splatinsert1036 = insertelement <4 x double> poison, double %i.anq, i64 0
  %broadcast.splat1037 = shufflevector <4 x double> %broadcast.splatinsert1036, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.ph1034, %vector.body1038
  %index1039 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1044, %vector.body1038 ] ; 2 uses
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1039 ; 5 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 32 ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anr, i64 64 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 96 ; 2 uses
  %wide.load1040 = load <4 x double>, ptr %i.anr, align 8, !tbaa !90
  %wide.load1041 = load <4 x double>, ptr %i.ans, align 8, !tbaa !90
  %wide.load1042 = load <4 x double>, ptr %i.ant, align 8, !tbaa !90
  %wide.load1043 = load <4 x double>, ptr %i.anu, align 8, !tbaa !90
  %i.anv = fmul <4 x double> %broadcast.splat1037, %wide.load1040
  %i.anw = fmul <4 x double> %broadcast.splat1037, %wide.load1041
  %i.anx = fmul <4 x double> %broadcast.splat1037, %wide.load1042
  %i.any = fmul <4 x double> %broadcast.splat1037, %wide.load1043
  store <4 x double> %i.anv, ptr %i.anr, align 8, !tbaa !90
  store <4 x double> %i.anw, ptr %i.ans, align 8, !tbaa !90
  store <4 x double> %i.anx, ptr %i.ant, align 8, !tbaa !90
  store <4 x double> %i.any, ptr %i.anu, align 8, !tbaa !90
  %index.next1044 = add nuw i64 %index1039, 16    ; 2 uses
  %i.anz = icmp eq i64 %index.next1044, %n.vec1035
  br i1 %i.anz, label %middle.block1045, label %vector.body1038, !llvm.loop !187

middle.block1045:                                 ; preds = %vector.body1038
  br i1 %cmp.n1046, label %._crit_edge65.i, label %vec.epilog.iter.check1050

vec.epilog.iter.check1050:                        ; preds = %middle.block1045
  br i1 %min.epilog.iters.check1051, label %.lr.ph64.i.preheader, label %vec.epilog.ph1052, !prof !93

vec.epilog.ph1052:                                ; preds = %iter.check1048, %vec.epilog.iter.check1050
  %vec.epilog.resume.val1047 = phi i64 [ %n.vec1035, %vec.epilog.iter.check1050 ], [ 0, %iter.check1048 ]
  %broadcast.splatinsert1054 = insertelement <4 x double> poison, double %i.anq, i64 0
  %broadcast.splat1055 = shufflevector <4 x double> %broadcast.splatinsert1054, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1056

vec.epilog.vector.body1056:                       ; preds = %vec.epilog.vector.body1056, %vec.epilog.ph1052
  %index1057 = phi i64 [ %vec.epilog.resume.val1047, %vec.epilog.ph1052 ], [ %index.next1059, %vec.epilog.vector.body1056 ] ; 2 uses
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1057 ; 2 uses
  %wide.load1058 = load <4 x double>, ptr %i.aoa, align 8, !tbaa !90
  %i.aob = fmul <4 x double> %broadcast.splat1055, %wide.load1058
  store <4 x double> %i.aob, ptr %i.aoa, align 8, !tbaa !90
  %index.next1059 = add nuw i64 %index1057, 4     ; 2 uses
  %i.aoc = icmp eq i64 %index.next1059, %n.vec1053
  br i1 %i.aoc, label %vec.epilog.middle.block1060, label %vec.epilog.vector.body1056, !llvm.loop !188

vec.epilog.middle.block1060:                      ; preds = %vec.epilog.vector.body1056
  br i1 %cmp.n1061, label %._crit_edge65.i, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %vec.epilog.iter.check1050, %vec.epilog.middle.block1060
  %indvars.iv142.i.ph = phi i64 [ %n.vec1035, %vec.epilog.iter.check1050 ], [ %n.vec1053, %vec.epilog.middle.block1060 ]
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph64.i ], [ %indvars.iv142.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv142.i ; 2 uses
  %i.aoe = load double, ptr %i.aod, align 8, !tbaa !90
  %i.aof = fmul double %i.anq, %i.aoe
  store double %i.aof, ptr %i.aod, align 8, !tbaa !90
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.aih
  br i1 %exitcond146.not.i, label %._crit_edge65.i, label %.lr.ph64.i, !llvm.loop !189

._crit_edge65.i:                                  ; preds = %.lr.ph64.i, %vec.epilog.middle.block1060, %middle.block1045
  br i1 %.not208.i, label %.lr.ph72.preheader.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge65.i, %.lr.ph67.i
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %.lr.ph67.i ], [ 0, %._crit_edge65.i ] ; 3 uses
  %i.aog = trunc nuw nsw i64 %indvars.iv147.i to i32
  %i.aoh = uitofp nneg i32 %i.aog to double
  %i.aoi = fmul double %i.ahu, %i.aoh
end_hunk_0
