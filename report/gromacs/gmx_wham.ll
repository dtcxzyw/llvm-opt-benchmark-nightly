Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8gmx_whamiPPc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %bb.gm
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 2358, ptr noundef nonnull @.str.351, i32 noundef %i.ahp) #31
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %.noexc289
  unreachable

bb.go:                                            ; preds = %.noexc289
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.gp:                                            ; preds = %bb.gl
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahm, i64 96
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !104 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahm, i64 80 ; 2 uses
  %i.ahw = load i32, ptr %i.ahm, align 8, !tbaa !85
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.219, i32 noundef 2364, i64 noundef range(i64 -2147483648, 2147483648) %i.ahx, i64 noundef 8)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc290:                                        ; preds = %bb.gp
  store ptr %i.ahy, ptr %i.ahv, align 8, !tbaa !89
  %i.ahz = load i32, ptr %i.ahm, align 8, !tbaa !85
  %i.aia = icmp sgt i32 %i.ahz, 0
  br i1 %i.aia, label %.lr.ph78.i, label %.loopexit37.i

.lr.ph78.i:                                       ; preds = %.noexc290
  %i.aib = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 148), align 4, !tbaa !255
  %i.aic = fpext float %i.aib to double
  %i.aid = fdiv double %i.aic, %i.ahu
  %i.aie = call double @llvm.rint.f64(double %i.aid)
  %i.aif = fptosi double %i.aie to i32
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.aif, i32 1)
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahm, i64 112
  %i.aih = zext nneg i32 %i.ahq to i64            ; 17 uses
  %i.aii = shl nuw nsw i64 %i.aih, 3              ; 4 uses
  %i.aij = shl nuw nsw i64 %i.aih, 2              ; 4 uses
  %i.aik = uitofp nneg i32 %i.ahp to double
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahm, i64 72
  %i.aim = zext nneg i32 %i.ahp to i64            ; 5 uses
  %i.ain = sext i32 %spec.store.select.i to i64   ; 2 uses
  %smax.i274 = call i32 @llvm.smax.i32(i32 %i.ahq, i32 2)
  %wide.trip.count155.i = zext nneg i32 %smax.i274 to i64
  %xtraiter1161 = and i64 %i.aim, 7               ; 3 uses
  %unroll_iter1166 = and i64 %i.aim, 2147483640
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1161, 0
  %lcmp.mod1165 = icmp ne i64 %xtraiter1161, 0
  %i.aio = add nsw i64 %i.aih, -1
  %min.iters.check989 = icmp ult i32 %i.ahp, 32
  %i.aip = and i64 %i.aih, 12
  %n.vec991 = and i64 %i.aih, 1073741808          ; 4 uses
  %cmp.n1004 = icmp eq i64 %n.vec991, %i.aih
  %min.epilog.iters.check1009 = icmp eq i64 %i.aip, 0
  %n.vec1011 = and i64 %i.aih, 1073741820         ; 3 uses
  %cmp.n1018 = icmp eq i64 %n.vec1011, %i.aih
  %min.iters.check956 = icmp ult i32 %i.ahp, 32
  %i.aiq = and i64 %i.aih, 12
  %n.vec958 = and i64 %i.aih, 1073741808          ; 4 uses
  %cmp.n969 = icmp eq i64 %n.vec958, %i.aih
  %min.epilog.iters.check974 = icmp eq i64 %i.aiq, 0
  %n.vec976 = and i64 %i.aih, 1073741820          ; 3 uses
  %cmp.n984 = icmp eq i64 %n.vec976, %i.aih
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
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 15 uses

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
  %niter1167 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.preheader105.i ], [ %niter1167.next.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ]
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
  %niter1167.next.7 = add i64 %niter1167, 8       ; 2 uses
  %niter1167.ncmp.7 = icmp eq i64 %niter1167.next.7, %unroll_iter1166
  br i1 %niter1167.ncmp.7, label %.preheader34.preheader.i.unr-lcssa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, !llvm.loop !179

bb.gu:                                            ; preds = %.noexc292
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit240.i

.preheader34.preheader.i.unr-lcssa:               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  br i1 %lcmp.mod1163.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader: ; preds = %.preheader34.preheader.i.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1165)
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil:     ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader
  %indvars.iv.i276.epil = phi i64 [ %indvars.iv.next.i277.7, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %indvars.iv.next.i277.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ] ; 2 uses
  %.017555.i.epil = phi double [ %i.akp, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %i.aku, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %epil.iter1162 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil.preheader ], [ %epil.iter1162.next, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %indvars.iv.i276.epil
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !32
  %i.akt = fpext float %i.aks to double
  %i.aku = fadd double %.017555.i.epil, %i.akt    ; 2 uses
  %indvars.iv.next.i277.epil = add nuw nsw i64 %indvars.iv.i276.epil, 1
  %epil.iter1162.next = add i64 %epil.iter1162, 1 ; 2 uses
  %epil.iter1162.cmp.not = icmp eq i64 %epil.iter1162.next, %xtraiter1161
  br i1 %epil.iter1162.cmp.not, label %.preheader34.preheader.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, !llvm.loop !180

.preheader34.preheader.i:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil, %.preheader34.preheader.i.unr-lcssa
  %.lcssa1113 = phi double [ %i.akp, %.preheader34.preheader.i.unr-lcssa ], [ %i.aku, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.epil ]
  %i.akv = fdiv double %.lcssa1113, %i.aik        ; 3 uses
  %broadcast.splatinsert1024 = insertelement <4 x double> poison, double %i.akv, i64 0
  %broadcast.splat1025 = shufflevector <4 x double> %broadcast.splatinsert1024, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.critedge.i279, %.preheader34.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i279 ], [ 0, %.preheader34.preheader.i ] ; 2 uses
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %.critedge.i279 ], [ 0, %.preheader34.preheader.i ] ; 5 uses
  %44 = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %indvars.iv134.i ; 2 uses
  %45 = call i64 @llvm.smax.i64(i64 %indvars.iv134.i, i64 %i.aim)
  %46 = mul i64 %indvar, %i.ain
  %i.akw = sub i64 %45, %46
  %i.akx = call i64 @llvm.umin.i64(i64 %i.akw, i64 %i.aio)
  %i.aky = add i64 %i.akx, 1                      ; 3 uses
  %min.iters.check1021 = icmp ult i64 %i.aky, 9
  br i1 %min.iters.check1021, label %scalar.ph1020.preheader, label %vector.ph1022

vector.ph1022:                                    ; preds = %.preheader34.i
  %i.akz = and i64 %i.aky, 7                      ; 2 uses
  %i.ala = icmp eq i64 %i.akz, 0
  %i.alb = select i1 %i.ala, i64 8, i64 %i.akz
  %n.vec1023 = sub i64 %i.aky, %i.alb             ; 2 uses
  %i.alc = load float, ptr %44, align 4, !tbaa !32
  %broadcast.splatinsert1028 = insertelement <4 x float> poison, float %i.alc, i64 0
  %broadcast.splat1029 = shufflevector <4 x float> %broadcast.splatinsert1028, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ald = fpext <4 x float> %broadcast.splat1029 to <4 x double>
  %i.ale = fsub <4 x double> %i.ald, %broadcast.splat1025 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aja, i64 %indvars.iv134.i
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1022
  %index1027 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1036, %vector.body1026 ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1027 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load1030 = load <4 x float>, ptr %gep, align 4, !tbaa !32
  %wide.load1031 = load <4 x float>, ptr %i.alf, align 4, !tbaa !32
  %i.alg = fpext <4 x float> %wide.load1030 to <4 x double>
  %i.alh = fpext <4 x float> %wide.load1031 to <4 x double>
  %i.ali = fsub <4 x double> %i.alg, %broadcast.splat1025
  %i.alj = fsub <4 x double> %i.alh, %broadcast.splat1025
  %i.alk = fmul <4 x double> %i.ale, %i.ali
  %i.all = fmul <4 x double> %i.ale, %i.alj
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1027 ; 3 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 32 ; 2 uses
  %wide.load1032 = load <4 x double>, ptr %i.alm, align 8, !tbaa !90
  %wide.load1033 = load <4 x double>, ptr %i.aln, align 8, !tbaa !90
  %i.alo = fadd <4 x double> %wide.load1032, %i.alk
  %i.alp = fadd <4 x double> %wide.load1033, %i.all
  store <4 x double> %i.alo, ptr %i.alm, align 8, !tbaa !90
  store <4 x double> %i.alp, ptr %i.aln, align 8, !tbaa !90
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1027 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 16 ; 2 uses
  %wide.load1034 = load <4 x i32>, ptr %i.alq, align 4, !tbaa !12
  %wide.load1035 = load <4 x i32>, ptr %i.alr, align 4, !tbaa !12
  %i.als = add nsw <4 x i32> %wide.load1034, splat (i32 1)
  %i.alt = add nsw <4 x i32> %wide.load1035, splat (i32 1)
  store <4 x i32> %i.als, ptr %i.alq, align 4, !tbaa !12
  store <4 x i32> %i.alt, ptr %i.alr, align 4, !tbaa !12
  %index.next1036 = add nuw i64 %index1027, 8     ; 2 uses
  %i.alu = icmp eq i64 %index.next1036, %n.vec1023
  br i1 %i.alu, label %scalar.ph1020.preheader, label %vector.body1026, !llvm.loop !181

scalar.ph1020.preheader:                          ; preds = %vector.body1026, %.preheader34.i
  %indvars.iv129.i.ph = phi i64 [ 0, %.preheader34.i ], [ %n.vec1023, %vector.body1026 ]
  br label %scalar.ph1020

scalar.ph1020:                                    ; preds = %scalar.ph1020.preheader, %bb.gv
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.gv ], [ %indvars.iv129.i.ph, %scalar.ph1020.preheader ] ; 4 uses
  %i.alv = add nsw i64 %indvars.iv129.i, %indvars.iv134.i ; 2 uses
  %i.alw = icmp slt i64 %i.alv, %i.aim
  br i1 %i.alw, label %bb.gv, label %.critedge.i279

bb.gv:                                            ; preds = %scalar.ph1020
  %i.alx = load float, ptr %44, align 4, !tbaa !32
  %i.aly = fpext float %i.alx to double
  %i.alz = fsub double %i.aly, %i.akv
  %i.ama = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.alv
  %i.amb = load float, ptr %i.ama, align 4, !tbaa !32
  %i.amc = fpext float %i.amb to double
  %i.amd = fsub double %i.amc, %i.akv
  %i.ame = fmul double %i.alz, %i.amd
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv129.i ; 2 uses
  %i.amg = load double, ptr %i.amf, align 8, !tbaa !90
  %i.amh = fadd double %i.amg, %i.ame
  store double %i.amh, ptr %i.amf, align 8, !tbaa !90
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv129.i ; 2 uses
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !12
  %i.amk = add nsw i32 %i.amj, 1
  store i32 %i.amk, ptr %i.ami, align 4, !tbaa !12
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %i.aih
  br i1 %exitcond133.not.i, label %.critedge.i279, label %scalar.ph1020, !llvm.loop !182

.critedge.i279:                                   ; preds = %bb.gv, %scalar.ph1020
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, %i.ain ; 2 uses
  %i.aml = icmp slt i64 %indvars.iv.next135.i, %i.aim
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aml, label %.preheader34.i, label %vector.main.loop.iter.check988, !llvm.loop !183

vector.main.loop.iter.check988:                   ; preds = %.critedge.i279
  br i1 %min.iters.check989, label %vec.epilog.ph1010, label %vector.body992

vector.body992:                                   ; preds = %vector.main.loop.iter.check988, %vector.body992
  %index993 = phi i64 [ %index.next1002, %vector.body992 ], [ 0, %vector.main.loop.iter.check988 ] ; 3 uses
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index993 ; 5 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 32 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 64 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 96 ; 2 uses
  %wide.load994 = load <4 x double>, ptr %i.amm, align 8, !tbaa !90
  %wide.load995 = load <4 x double>, ptr %i.amn, align 8, !tbaa !90
  %wide.load996 = load <4 x double>, ptr %i.amo, align 8, !tbaa !90
  %wide.load997 = load <4 x double>, ptr %i.amp, align 8, !tbaa !90
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index993 ; 4 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 16
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 32
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amq, i64 48
  %wide.load998 = load <4 x i32>, ptr %i.amq, align 4, !tbaa !12
  %wide.load999 = load <4 x i32>, ptr %i.amr, align 4, !tbaa !12
  %wide.load1000 = load <4 x i32>, ptr %i.ams, align 4, !tbaa !12
  %wide.load1001 = load <4 x i32>, ptr %i.amt, align 4, !tbaa !12
  %i.amu = sitofp <4 x i32> %wide.load998 to <4 x double>
  %i.amv = sitofp <4 x i32> %wide.load999 to <4 x double>
  %i.amw = sitofp <4 x i32> %wide.load1000 to <4 x double>
  %i.amx = sitofp <4 x i32> %wide.load1001 to <4 x double>
  %i.amy = fdiv <4 x double> %wide.load994, %i.amu
  %i.amz = fdiv <4 x double> %wide.load995, %i.amv
  %i.ana = fdiv <4 x double> %wide.load996, %i.amw
  %i.anb = fdiv <4 x double> %wide.load997, %i.amx
  store <4 x double> %i.amy, ptr %i.amm, align 8, !tbaa !90
  store <4 x double> %i.amz, ptr %i.amn, align 8, !tbaa !90
  store <4 x double> %i.ana, ptr %i.amo, align 8, !tbaa !90
  store <4 x double> %i.anb, ptr %i.amp, align 8, !tbaa !90
  %index.next1002 = add nuw i64 %index993, 16     ; 2 uses
  %i.anc = icmp eq i64 %index.next1002, %n.vec991
  br i1 %i.anc, label %middle.block1003, label %vector.body992, !llvm.loop !184

middle.block1003:                                 ; preds = %vector.body992
  br i1 %cmp.n1004, label %iter.check971, label %vec.epilog.iter.check1008

vec.epilog.iter.check1008:                        ; preds = %middle.block1003
  br i1 %min.epilog.iters.check1009, label %.lr.ph61.i.preheader, label %vec.epilog.ph1010, !prof !93

vec.epilog.ph1010:                                ; preds = %vector.main.loop.iter.check988, %vec.epilog.iter.check1008
  %vec.epilog.resume.val1005 = phi i64 [ %n.vec991, %vec.epilog.iter.check1008 ], [ 0, %vector.main.loop.iter.check988 ]
  br label %vec.epilog.vector.body1012

vec.epilog.vector.body1012:                       ; preds = %vec.epilog.vector.body1012, %vec.epilog.ph1010
  %index1013 = phi i64 [ %vec.epilog.resume.val1005, %vec.epilog.ph1010 ], [ %index.next1016, %vec.epilog.vector.body1012 ] ; 3 uses
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index1013 ; 2 uses
  %wide.load1014 = load <4 x double>, ptr %i.and, align 8, !tbaa !90
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %index1013
  %wide.load1015 = load <4 x i32>, ptr %i.ane, align 4, !tbaa !12
  %i.anf = sitofp <4 x i32> %wide.load1015 to <4 x double>
  %i.ang = fdiv <4 x double> %wide.load1014, %i.anf
  store <4 x double> %i.ang, ptr %i.and, align 8, !tbaa !90
  %index.next1016 = add nuw i64 %index1013, 4     ; 2 uses
  %i.anh = icmp eq i64 %index.next1016, %n.vec1011
  br i1 %i.anh, label %vec.epilog.middle.block1017, label %vec.epilog.vector.body1012, !llvm.loop !185

vec.epilog.middle.block1017:                      ; preds = %vec.epilog.vector.body1012
  br i1 %cmp.n1018, label %iter.check971, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %vec.epilog.iter.check1008, %vec.epilog.middle.block1017
  %indvars.iv137.i.ph = phi i64 [ %n.vec991, %vec.epilog.iter.check1008 ], [ %n.vec1011, %vec.epilog.middle.block1017 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.lr.ph61.i ], [ %indvars.iv137.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv137.i ; 2 uses
  %i.anj = load double, ptr %i.ani, align 8, !tbaa !90
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %indvars.iv137.i
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !12
  %i.anm = sitofp i32 %i.anl to double
  %i.ann = fdiv double %i.anj, %i.anm
  store double %i.ann, ptr %i.ani, align 8, !tbaa !90
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %i.aih
  br i1 %exitcond141.not.i, label %iter.check971, label %.lr.ph61.i, !llvm.loop !186

iter.check971:                                    ; preds = %.lr.ph61.i, %vec.epilog.middle.block1017, %middle.block1003
  %i.ano = load double, ptr %i.ajb, align 8, !tbaa !90
  %i.anp = fdiv double 1.000000e+00, %i.ano       ; 3 uses
  br i1 %min.iters.check956, label %vec.epilog.ph975, label %vector.ph957

vector.ph957:                                     ; preds = %iter.check971
  %broadcast.splatinsert959 = insertelement <4 x double> poison, double %i.anp, i64 0
  %broadcast.splat960 = shufflevector <4 x double> %broadcast.splatinsert959, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body961

vector.body961:                                   ; preds = %vector.ph957, %vector.body961
  %index962 = phi i64 [ 0, %vector.ph957 ], [ %index.next967, %vector.body961 ] ; 2 uses
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index962 ; 5 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 32 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 64 ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anq, i64 96 ; 2 uses
  %wide.load963 = load <4 x double>, ptr %i.anq, align 8, !tbaa !90
  %wide.load964 = load <4 x double>, ptr %i.anr, align 8, !tbaa !90
  %wide.load965 = load <4 x double>, ptr %i.ans, align 8, !tbaa !90
  %wide.load966 = load <4 x double>, ptr %i.ant, align 8, !tbaa !90
  %i.anu = fmul <4 x double> %broadcast.splat960, %wide.load963
  %i.anv = fmul <4 x double> %broadcast.splat960, %wide.load964
  %i.anw = fmul <4 x double> %broadcast.splat960, %wide.load965
  %i.anx = fmul <4 x double> %broadcast.splat960, %wide.load966
  store <4 x double> %i.anu, ptr %i.anq, align 8, !tbaa !90
  store <4 x double> %i.anv, ptr %i.anr, align 8, !tbaa !90
  store <4 x double> %i.anw, ptr %i.ans, align 8, !tbaa !90
  store <4 x double> %i.anx, ptr %i.ant, align 8, !tbaa !90
  %index.next967 = add nuw i64 %index962, 16      ; 2 uses
  %i.any = icmp eq i64 %index.next967, %n.vec958
  br i1 %i.any, label %middle.block968, label %vector.body961, !llvm.loop !187

middle.block968:                                  ; preds = %vector.body961
  br i1 %cmp.n969, label %._crit_edge65.i, label %vec.epilog.iter.check973

vec.epilog.iter.check973:                         ; preds = %middle.block968
  br i1 %min.epilog.iters.check974, label %.lr.ph64.i.preheader, label %vec.epilog.ph975, !prof !93

vec.epilog.ph975:                                 ; preds = %iter.check971, %vec.epilog.iter.check973
  %vec.epilog.resume.val970 = phi i64 [ %n.vec958, %vec.epilog.iter.check973 ], [ 0, %iter.check971 ]
  %broadcast.splatinsert977 = insertelement <4 x double> poison, double %i.anp, i64 0
  %broadcast.splat978 = shufflevector <4 x double> %broadcast.splatinsert977, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body979

vec.epilog.vector.body979:                        ; preds = %vec.epilog.vector.body979, %vec.epilog.ph975
  %index980 = phi i64 [ %vec.epilog.resume.val970, %vec.epilog.ph975 ], [ %index.next982, %vec.epilog.vector.body979 ] ; 2 uses
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %index980 ; 2 uses
  %wide.load981 = load <4 x double>, ptr %i.anz, align 8, !tbaa !90
  %i.aoa = fmul <4 x double> %broadcast.splat978, %wide.load981
  store <4 x double> %i.aoa, ptr %i.anz, align 8, !tbaa !90
  %index.next982 = add nuw i64 %index980, 4       ; 2 uses
  %i.aob = icmp eq i64 %index.next982, %n.vec976
  br i1 %i.aob, label %vec.epilog.middle.block983, label %vec.epilog.vector.body979, !llvm.loop !188

vec.epilog.middle.block983:                       ; preds = %vec.epilog.vector.body979
  br i1 %cmp.n984, label %._crit_edge65.i, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %vec.epilog.iter.check973, %vec.epilog.middle.block983
  %indvars.iv142.i.ph = phi i64 [ %n.vec958, %vec.epilog.iter.check973 ], [ %n.vec976, %vec.epilog.middle.block983 ]
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph64.i ], [ %indvars.iv142.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv142.i ; 2 uses
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !90
  %i.aoe = fmul double %i.anp, %i.aod
  store double %i.aoe, ptr %i.aoc, align 8, !tbaa !90
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.aih
  br i1 %exitcond146.not.i, label %._crit_edge65.i, label %.lr.ph64.i, !llvm.loop !189

._crit_edge65.i:                                  ; preds = %.lr.ph64.i, %vec.epilog.middle.block983, %middle.block968
  br i1 %.not208.i, label %.lr.ph72.preheader.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge65.i, %.lr.ph67.i
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %.lr.ph67.i ], [ 0, %._crit_edge65.i ] ; 3 uses
  %i.aof = trunc nuw nsw i64 %indvars.iv147.i to i32
  %i.aog = uitofp nneg i32 %i.aof to double
  %i.aoh = fmul double %i.ahu, %i.aog
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv147.i
  %i.aoj = load double, ptr %i.aoi, align 8, !tbaa !90
  %i.aok = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0173.i, ptr noundef nonnull @.str.354, double noundef %i.aoh, double noundef %i.aoj) #25 ; 0 uses
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %i.aih
  br i1 %exitcond151.not.i, label %._crit_edge68.i, label %.lr.ph67.i, !llvm.loop !190

._crit_edge68.i:                                  ; preds = %.lr.ph67.i
  %i.aol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !97
  %i.aom = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.aol)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %._crit_edge68.i
  %i.aon = select i1 %i.aom, ptr @.str.356, ptr @.str.4
  %i.aoo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0173.i, ptr noundef nonnull @.str.355, ptr noundef nonnull %i.aon) #25 ; 0 uses
  br label %.lr.ph72.preheader.i
end_hunk_0
