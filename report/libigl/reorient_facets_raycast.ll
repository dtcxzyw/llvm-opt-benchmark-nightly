Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/reorient_facets_raycast?download=true
inline.NumInlined: 2561
inline.NumDeleted: 1392
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3igl6embree23reorient_facets_raycastIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEES6_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EEiibbbRNS2_15PlainObjectBaseIT1_EERNSG_IT2_EE:bb.a

bb.co:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i516
  %i.agu = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.agu, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.agu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc519 unwind label %bb.cp

.noexc519:                                        ; preds = %bb.co
  unreachable

.lr.ph.i.i.i.i.i.i.i.i336:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i336.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i336
  %.05.i.i.i.i.i.i.i.i337 = phi i64 [ %i.ahs, %.lr.ph.i.i.i.i.i.i.i.i336 ], [ %.05.i.i.i.i.i.i.i.i337.unr, %.lr.ph.i.i.i.i.i.i.i.i336.prol.loopexit ] ; 6 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %.05.i.i.i.i.i.i.i.i337
  %i.agw = mul nsw i64 %.05.i.i.i.i.i.i.i.i337, %i.adz
  %i.agx = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.agw
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !53
  %i.agz = fptrunc double %i.agy to float
  store float %i.agz, ptr %i.agv, align 4, !tbaa !68
  %i.aha = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 1 ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.aha
  %i.ahc = mul nsw i64 %i.aha, %i.adz
  %i.ahd = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.ahc
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !53
  %i.ahf = fptrunc double %i.ahe to float
  store float %i.ahf, ptr %i.ahb, align 4, !tbaa !68
  %i.ahg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 2 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.ahg
  %i.ahi = mul nsw i64 %i.ahg, %i.adz
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.ahi
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !53
  %i.ahl = fptrunc double %i.ahk to float
  store float %i.ahl, ptr %i.ahh, align 4, !tbaa !68
  %i.ahm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 3 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.ahm
  %i.aho = mul nsw i64 %i.ahm, %i.adz
  %i.ahp = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.aho
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !53
  %i.ahr = fptrunc double %i.ahq to float
  store float %i.ahr, ptr %i.ahn, align 4, !tbaa !68
  %i.ahs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i338.3 = icmp eq i64 %i.ahs, %i.ady
  br i1 %exitcond.not.i.i.i.i.i.i.i.i338.3, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i525, label %.lr.ph.i.i.i.i.i.i.i.i336, !llvm.loop !186

bb.cp:                                            ; preds = %bb.co
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i525: ; preds = %.lr.ph.i.i.i.i.i.i.i.i336.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i336, %middle.block2636
  %.idx1949 = shl i64 %i.afx, 3
  %i.ahu = getelementptr i8, ptr %i.adt, i64 %.idx1949
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !29
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.adw, i64 %i.ahw ; 6 uses
  %i.ahy = shl nuw i64 %i.ady, 2
  %i.ahz = call noalias ptr @malloc(i64 noundef %i.ahy) #21 ; 10 uses
  %i.aia = icmp eq ptr %i.ahz, null
  br i1 %i.aia, label %bb.cq, label %.lr.ph.i.i.i.i.i.i.i.i346.preheader

.lr.ph.i.i.i.i.i.i.i.i346.preheader:              ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i525
  %min.iters.check2614 = icmp ugt i64 %i.ady, 3
  %ident.check.not = icmp eq i64 %i.adz, 1
  %or.cond2720 = select i1 %min.iters.check2614, i1 %ident.check.not, i1 false
  br i1 %or.cond2720, label %vector.ph2615, label %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722

vector.ph2615:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.preheader
  %n.vec2616 = and i64 %i.ady, 4611686018427387900 ; 3 uses
  br label %vector.body2617

vector.body2617:                                  ; preds = %vector.body2617, %vector.ph2615
  %index2618 = phi i64 [ 0, %vector.ph2615 ], [ %index.next2621, %vector.body2617 ] ; 3 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %index2618 ; 2 uses
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %index2618 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  %wide.load2619 = load <2 x double>, ptr %i.aic, align 8, !tbaa !53
  %wide.load2620 = load <2 x double>, ptr %i.aid, align 8, !tbaa !53
  %i.aie = fptrunc <2 x double> %wide.load2619 to <2 x float>
  %i.aif = fptrunc <2 x double> %wide.load2620 to <2 x float>
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store <2 x float> %i.aie, ptr %i.aib, align 4, !tbaa !68
  store <2 x float> %i.aif, ptr %i.aig, align 4, !tbaa !68
  %index.next2621 = add nuw i64 %index2618, 4     ; 2 uses
  %i.aih = icmp eq i64 %index.next2621, %n.vec2616
  br i1 %i.aih, label %middle.block2622, label %vector.body2617, !llvm.loop !187

middle.block2622:                                 ; preds = %vector.body2617
  %cmp.n2623 = icmp eq i64 %i.ady, %n.vec2616
  br i1 %cmp.n2623, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit529.thread, label %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722

.lr.ph.i.i.i.i.i.i.i.i346.preheader2722:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.preheader, %middle.block2622
  %.05.i.i.i.i.i.i.i.i347.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i346.preheader ], [ %n.vec2616, %middle.block2622 ] ; 3 uses
  %xtraiter2979 = and i64 %i.ady, 3               ; 2 uses
  %lcmp.mod2980.not = icmp eq i64 %xtraiter2979, 0
  br i1 %lcmp.mod2980.not, label %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i346.prol

.lr.ph.i.i.i.i.i.i.i.i346.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722, %.lr.ph.i.i.i.i.i.i.i.i346.prol
  %.05.i.i.i.i.i.i.i.i347.prol = phi i64 [ %i.ain, %.lr.ph.i.i.i.i.i.i.i.i346.prol ], [ %.05.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722 ] ; 3 uses
  %prol.iter2981 = phi i64 [ %prol.iter2981.next, %.lr.ph.i.i.i.i.i.i.i.i346.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722 ]
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %.05.i.i.i.i.i.i.i.i347.prol
  %i.aij = mul nsw i64 %.05.i.i.i.i.i.i.i.i347.prol, %i.adz
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.aij
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !53
  %i.aim = fptrunc double %i.ail to float
  store float %i.aim, ptr %i.aii, align 4, !tbaa !68
  %i.ain = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347.prol, 1 ; 2 uses
  %prol.iter2981.next = add i64 %prol.iter2981, 1 ; 2 uses
  %prol.iter2981.cmp.not = icmp eq i64 %prol.iter2981.next, %xtraiter2979
  br i1 %prol.iter2981.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i346.prol, !llvm.loop !188

.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.prol, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722
  %.05.i.i.i.i.i.i.i.i347.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2722 ], [ %i.ain, %.lr.ph.i.i.i.i.i.i.i.i346.prol ]
  %i.aio = sub nsw i64 %.05.i.i.i.i.i.i.i.i347.ph, %i.ady
  %i.aip = icmp ugt i64 %i.aio, -4
  br i1 %i.aip, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit529.thread, label %.lr.ph.i.i.i.i.i.i.i.i346

bb.cq:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i525
  %i.aiq = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aiq, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.aiq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc528 unwind label %.body349

.noexc528:                                        ; preds = %bb.cq
  unreachable

.lr.ph.i.i.i.i.i.i.i.i346:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i346
  %.05.i.i.i.i.i.i.i.i347 = phi i64 [ %i.ajo, %.lr.ph.i.i.i.i.i.i.i.i346 ], [ %.05.i.i.i.i.i.i.i.i347.unr, %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit ] ; 6 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %.05.i.i.i.i.i.i.i.i347
  %i.ais = mul nsw i64 %.05.i.i.i.i.i.i.i.i347, %i.adz
  %i.ait = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.ais
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !53
  %i.aiv = fptrunc double %i.aiu to float
  store float %i.aiv, ptr %i.air, align 4, !tbaa !68
  %i.aiw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 1 ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aiw
  %i.aiy = mul nsw i64 %i.aiw, %i.adz
  %i.aiz = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.aiy
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !53
  %i.ajb = fptrunc double %i.aja to float
  store float %i.ajb, ptr %i.aix, align 4, !tbaa !68
  %i.ajc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 2 ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.ajc
  %i.aje = mul nsw i64 %i.ajc, %i.adz
  %i.ajf = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.aje
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !53
  %i.ajh = fptrunc double %i.ajg to float
  store float %i.ajh, ptr %i.ajd, align 4, !tbaa !68
  %i.aji = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 3 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aji
  %i.ajk = mul nsw i64 %i.aji, %i.adz
  %i.ajl = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.ajk
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !53
  %i.ajn = fptrunc double %i.ajm to float
  store float %i.ajn, ptr %i.ajj, align 4, !tbaa !68
  %i.ajo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i348.3 = icmp eq i64 %i.ajo, %i.ady
  br i1 %exitcond.not.i.i.i.i.i.i.i.i348.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit529.thread, label %.lr.ph.i.i.i.i.i.i.i.i346, !llvm.loop !189

.body349:                                         ; preds = %bb.cq
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef nonnull %i.agd) #20
  br label %.body339

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit529.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i346, %middle.block2622
  %i.ajq = load <2 x float>, ptr %i.aeg, align 4, !tbaa !68
  %i.ajr = insertelement <2 x float> poison, float %i.adn, i64 0
  %i.ajs = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajt = fmul <2 x float> %i.ajs, %i.ajq
  %i.aju = load <2 x float>, ptr %i.agd, align 4, !tbaa !68
  %i.ajv = insertelement <2 x float> poison, float %i.adp, i64 0
  %i.ajw = shufflevector <2 x float> %i.ajv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajx = fmul <2 x float> %i.ajw, %i.aju
  %i.ajy = fadd <2 x float> %i.ajt, %i.ajx
  %i.ajz = load <2 x float>, ptr %i.ahz, align 4, !tbaa !68
  %i.aka = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.akb = shufflevector <2 x float> %i.aka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akc = fmul <2 x float> %i.akb, %i.ajz
  %i.akd = fadd <2 x float> %i.ajy, %i.akc        ; 2 uses
  %i.ake = getelementptr i8, ptr %i.aeg, i64 8
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !68
  %i.akg = fmul float %i.adn, %i.akf
  %i.akh = getelementptr i8, ptr %i.agd, i64 8
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !68
  %i.akj = fmul float %i.adp, %i.aki
  %i.akk = fadd float %i.akg, %i.akj
  %i.akl = getelementptr i8, ptr %i.ahz, i64 8
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !68
  %i.akn = fmul float %i.adq, %i.akm
  %i.ako = fadd float %i.akk, %i.akn              ; 2 uses
  call void @free(ptr noundef %i.ahz) #20
  call void @free(ptr noundef %i.agd) #20
  call void @free(ptr noundef %i.aeg) #20
  %i.akp = load ptr, ptr %15, align 8, !tbaa !64, !noalias !210
  %i.akq = getelementptr inbounds [8 x i8], ptr %i.akp, i64 %i.adr ; 3 uses
  %i.akr = load i64, ptr %i.qf, align 8, !tbaa !66 ; 2 uses
  %i.aks = load double, ptr %i.akq, align 8, !tbaa !53
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.akq, i64 %i.akr
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !53
  %i.akv = insertelement <2 x double> poison, double %i.aks, i64 0
  %i.akw = insertelement <2 x double> %i.akv, double %i.aku, i64 1
  %.fr = freeze <2 x double> %i.akw
  %i.akx = fptrunc <2 x double> %.fr to <2 x float> ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.akr, 4
  %i.aky = getelementptr inbounds i8, ptr %i.akq, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !53
  %i.ala = fptrunc double %i.akz to float         ; 2 uses
  %i.alb = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.akx)
  %27 = fcmp ugt <2 x float> %i.alb, splat (float f0x3727C5AC)
  %28 = bitcast <2 x i1> %27 to i2
  %or.cond1051.not1058 = icmp eq i2 %28, 0
  %i.alc = call float @llvm.fabs.f32(float %i.ala)
  %i.ald = fcmp ole float %i.alc, f0x3727C5AC
  %or.cond1053 = select i1 %or.cond1051.not1058, i1 %i.ald, i1 false
  br i1 %or.cond1053, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385, label %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread

.body339:                                         ; preds = %.body349, %bb.cp
  %.pn192.pn.pn.pn = phi { ptr, i32 } [ %i.aht, %bb.cp ], [ %i.ajp, %.body349 ]
  call void @free(ptr noundef nonnull %i.aeg) #20
  br label %.body330

_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit529.thread, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZN3igl10random_dirEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.172") align 8 %20)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread
  %i.ale = load <2 x double>, ptr %20, align 16, !tbaa !53
  %i.alf = fptrunc <2 x double> %i.ale to <2 x float> ; 3 uses
  %i.alg = load double, ptr %i.qg, align 16, !tbaa !53
  %i.alh = fptrunc double %i.alg to float         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ali = fmul <2 x float> %i.akx, %i.alf        ; 2 uses
  %i.alj = fmul float %i.ala, %i.alh
  %i.alk = extractelement <2 x float> %i.ali, i64 1
  %i.all = fadd float %i.alk, %i.alj
  %i.alm = extractelement <2 x float> %i.ali, i64 0
  %i.aln = fadd float %i.alm, %i.all              ; 2 uses
  %i.alo = call float @llvm.fabs.f32(float %i.aln)
  %i.alp = fcmp olt float %i.alo, 1.000000e-01
  br i1 %i.alp, label %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread, label %bb.ct, !llvm.loop !192

bb.cs:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread
  %i.alq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body330

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369, %bb.di
  %.sroa.19.3.ph = phi ptr [ %.sroa.19.21469, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.19.21469, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.12753.11470, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.19.12, %bb.di ]
  %.sroa.0747.3.ph = phi ptr [ %.sroa.0747.21471, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0747.21471, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0747.21471, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.0747.12, %bb.di ]
  %.sroa.19772.3.ph = phi ptr [ %.sroa.19772.21472, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.12768.11473, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19772.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.19772.12, %bb.di ]
  %.sroa.0762.3.ph = phi ptr [ %.sroa.0762.21474, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0762.21474, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0762.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.0762.12, %bb.di ]
  %.sroa.24.3.ph = phi ptr [ %.sroa.15787.11476, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.24.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.24.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.24.12, %bb.di ]
  %.sroa.0778.3.ph = phi ptr [ %.sroa.0778.21477, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0778.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0778.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.0778.12, %bb.di ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body330

.loopexit.split-lp:                               ; preds = %bb.cw, %bb.db, %bb.df
  %.sroa.19.214691558 = phi ptr [ %.sroa.12753.11470, %bb.df ], [ %.sroa.19.21469, %bb.db ], [ %.sroa.19.21469, %bb.cw ]
  %.sroa.19772.3.ph1061 = phi ptr [ %.sroa.19772.12, %bb.df ], [ %.sroa.12768.11473, %bb.db ], [ %.sroa.19772.21472, %bb.cw ]
  %.sroa.0762.3.ph1062 = phi ptr [ %.sroa.0762.12, %bb.df ], [ %.sroa.0762.21474, %bb.db ], [ %.sroa.0762.21474, %bb.cw ]
  %.sroa.24.3.ph1063 = phi ptr [ %.sroa.24.12, %bb.df ], [ %.sroa.24.12, %bb.db ], [ %.sroa.15787.11476, %bb.cw ]
  %.sroa.0778.3.ph1064 = phi ptr [ %.sroa.0778.12, %bb.df ], [ %.sroa.0778.12, %bb.db ], [ %.sroa.0778.21477, %bb.cw ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body330

bb.ct:                                            ; preds = %bb.cr
  %i.alr = fcmp olt float %i.aln, 0.000000e+00    ; 2 uses
  %i.als = fneg <2 x float> %i.alf
  %i.alt = fneg float %i.alh
  %.sroa.13.0.ph = select i1 %i.alr, float %i.alt, float %i.alh ; 2 uses
  %i.alu = insertelement <2 x i1> poison, i1 %i.alr, i64 0
  %i.alv = shufflevector <2 x i1> %i.alu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.alw = select <2 x i1> %i.alv, <2 x float> %i.als, <2 x float> %i.alf ; 2 uses
  %.not.i352 = icmp eq ptr %.sroa.15787.11476, %.sroa.24.21475
  br i1 %.not.i352, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.xr, ptr %.sroa.15787.11476, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361

bb.cv:                                            ; preds = %bb.ct
  %i.alx = ptrtoint ptr %.sroa.15787.11476 to i64
  %i.aly = ptrtoint ptr %.sroa.0778.21477 to i64
  %i.alz = sub i64 %i.alx, %i.aly                 ; 6 uses
  %i.ama = icmp eq i64 %i.alz, 9223372036854775804
  br i1 %i.ama, label %bb.cw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
          to label %.noexc359 unwind label %.loopexit.split-lp

.noexc359:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.cv
  %i.amb = ashr exact i64 %i.alz, 2               ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.amb, i64 1)
  %i.amc = add nsw i64 %.sroa.speculated.i.i.i354, %i.amb ; 2 uses
  %i.amd = icmp ult i64 %i.amc, %i.amb
  %i.ame = call i64 @llvm.umin.i64(i64 %i.amc, i64 2305843009213693951)
  %i.amf = select i1 %i.amd, i64 2305843009213693951, i64 %i.ame ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.amf, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.amg = shl nuw nsw i64 %i.amf, 2
  %i.amh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amg) #23
          to label %.noexc360 unwind label %.loopexit ; 4 uses

.noexc360:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353
  %i.ami = getelementptr inbounds i8, ptr %i.amh, i64 %i.alz ; 2 uses
  store i32 %i.xr, ptr %i.ami, align 4, !tbaa !29
  %i.amj = icmp sgt i64 %i.alz, 0
  br i1 %i.amj, label %bb.cx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356

bb.cx:                                            ; preds = %.noexc360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.amh, ptr align 4 %.sroa.0778.21477, i64 %i.alz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356: ; preds = %bb.cx, %.noexc360
  %.not.i17.i.i357 = icmp eq ptr %.sroa.0778.21477, null
  br i1 %.not.i17.i.i357, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0778.21477, i64 noundef %i.alz) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358: ; preds = %bb.cy, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.amf
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361

_ZNSt6vectorIiSaIiEE9push_backERKi.exit361:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358, %bb.cu
  %.sroa.24.12 = phi ptr [ %i.amk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358 ], [ %.sroa.24.21475, %bb.cu ] ; 8 uses
  %.pn1059 = phi ptr [ %i.ami, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358 ], [ %.sroa.15787.11476, %bb.cu ]
  %.sroa.0778.12 = phi ptr [ %i.amh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358 ], [ %.sroa.0778.21477, %bb.cu ] ; 9 uses
  %.sroa.15787.5 = getelementptr inbounds nuw i8, ptr %.pn1059, i64 4 ; 4 uses
  %.not.i362 = icmp eq ptr %.sroa.12768.11473, %.sroa.19772.21472
  br i1 %.not.i362, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361
  store <2 x float> %i.akd, ptr %.sroa.12768.11473, align 4
  %.sroa.7718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12768.11473, i64 8
  store float %i.ako, ptr %.sroa.7718.0..sroa_idx, align 4, !tbaa !40
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE9push_backERKS2_.exit

bb.da:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361
  %i.aml = ptrtoint ptr %.sroa.12768.11473 to i64
  %i.amm = ptrtoint ptr %.sroa.0762.21474 to i64
  %i.amn = sub i64 %i.aml, %i.amm                 ; 4 uses
  %i.amo = icmp eq i64 %i.amn, 9223372036854775800
  br i1 %i.amo, label %bb.db, label %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
          to label %.noexc366 unwind label %.loopexit.split-lp

.noexc366:                                        ; preds = %bb.db
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.da
  %i.amp = sdiv exact i64 %i.amn, 12              ; 3 uses
  %.sroa.speculated.i.i.i363 = call i64 @llvm.umax.i64(i64 %i.amp, i64 1)
  %i.amq = add nsw i64 %.sroa.speculated.i.i.i363, %i.amp ; 2 uses
  %i.amr = icmp ult i64 %i.amq, %i.amp
  %i.ams = call i64 @llvm.umin.i64(i64 %i.amq, i64 768614336404564650)
  %i.amt = select i1 %i.amr, i64 768614336404564650, i64 %i.ams ; 3 uses
  %.not.i.i.i364 = icmp ne i64 %i.amt, 0
  call void @llvm.assume(i1 %.not.i.i.i364)
  %i.amu = mul nuw nsw i64 %i.amt, 12
  %i.amv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amu) #23
          to label %.noexc367 unwind label %.loopexit ; 5 uses

.noexc367:                                        ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amn ; 2 uses
  store <2 x float> %i.akd, ptr %i.amw, align 4
  %.sroa.7718.0..sroa_idx719 = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  store float %i.ako, ptr %.sroa.7718.0..sroa_idx719, align 4, !tbaa !40
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0762.21474, %.sroa.12768.11473
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc367, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i ], [ %i.amv, %.noexc367 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.amx, %.lr.ph.i.i.i.i.i ], [ %.sroa.0762.21474, %.noexc367 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !69, !alias.scope !211
  %i.amx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i365 = icmp eq ptr %i.amx, %.sroa.12768.11473
  br i1 %.not.i.i.i.i.i365, label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc367
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.amv, %.noexc367 ], [ %i.amy, %.lr.ph.i.i.i.i.i ]
  %.not.i33.i.i = icmp eq ptr %.sroa.0762.21474, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0762.21474, i64 noundef %i.amn) #24
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.dc, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i
  %i.amz = getelementptr inbounds nuw [12 x i8], ptr %i.amv, i64 %i.amt
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.cz
  %.sroa.19772.12 = phi ptr [ %i.amz, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.19772.21472, %bb.cz ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.12768.11473, %bb.cz ]
  %.sroa.0762.12 = phi ptr [ %i.amv, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0762.21474, %bb.cz ] ; 6 uses
  %.sroa.12768.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 3 uses
  %.not.i368 = icmp eq ptr %.sroa.12753.11470, %.sroa.19.21469
  br i1 %.not.i368, label %bb.de, label %bb.dd
end_hunk_0
begin_hunk_1_@_ZN3igl6embree23reorient_facets_raycastIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EEiibbbRNS2_15PlainObjectBaseIT1_EERNSH_IT2_EE:bb.a

bb.co:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i513
  %i.agu = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.agu, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.agu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc516 unwind label %bb.cp

.noexc516:                                        ; preds = %bb.co
  unreachable

.lr.ph.i.i.i.i.i.i.i.i336:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i336.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i336
  %.05.i.i.i.i.i.i.i.i337 = phi i64 [ %i.ahs, %.lr.ph.i.i.i.i.i.i.i.i336 ], [ %.05.i.i.i.i.i.i.i.i337.unr, %.lr.ph.i.i.i.i.i.i.i.i336.prol.loopexit ] ; 6 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %.05.i.i.i.i.i.i.i.i337
  %i.agw = mul nsw i64 %.05.i.i.i.i.i.i.i.i337, %i.adz
  %i.agx = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.agw
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !53
  %i.agz = fptrunc double %i.agy to float
  store float %i.agz, ptr %i.agv, align 4, !tbaa !68
  %i.aha = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 1 ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.aha
  %i.ahc = mul nsw i64 %i.aha, %i.adz
  %i.ahd = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.ahc
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !53
  %i.ahf = fptrunc double %i.ahe to float
  store float %i.ahf, ptr %i.ahb, align 4, !tbaa !68
  %i.ahg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 2 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.ahg
  %i.ahi = mul nsw i64 %i.ahg, %i.adz
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.ahi
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !53
  %i.ahl = fptrunc double %i.ahk to float
  store float %i.ahl, ptr %i.ahh, align 4, !tbaa !68
  %i.ahm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 3 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.ahm
  %i.aho = mul nsw i64 %i.ahm, %i.adz
  %i.ahp = getelementptr inbounds [8 x i8], ptr %i.agb, i64 %i.aho
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !53
  %i.ahr = fptrunc double %i.ahq to float
  store float %i.ahr, ptr %i.ahn, align 4, !tbaa !68
  %i.ahs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i337, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i338.3 = icmp eq i64 %i.ahs, %i.ady
  br i1 %exitcond.not.i.i.i.i.i.i.i.i338.3, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i522, label %.lr.ph.i.i.i.i.i.i.i.i336, !llvm.loop !254

bb.cp:                                            ; preds = %bb.co
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i522: ; preds = %.lr.ph.i.i.i.i.i.i.i.i336.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i336, %middle.block2633
  %.idx1946 = shl i64 %i.afx, 3
  %i.ahu = getelementptr i8, ptr %i.adt, i64 %.idx1946
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !29
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.adw, i64 %i.ahw ; 6 uses
  %i.ahy = shl nuw i64 %i.ady, 2
  %i.ahz = call noalias ptr @malloc(i64 noundef %i.ahy) #21 ; 10 uses
  %i.aia = icmp eq ptr %i.ahz, null
  br i1 %i.aia, label %bb.cq, label %.lr.ph.i.i.i.i.i.i.i.i346.preheader

.lr.ph.i.i.i.i.i.i.i.i346.preheader:              ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i522
  %min.iters.check2611 = icmp ugt i64 %i.ady, 3
  %ident.check.not = icmp eq i64 %i.adz, 1
  %or.cond2717 = select i1 %min.iters.check2611, i1 %ident.check.not, i1 false
  br i1 %or.cond2717, label %vector.ph2612, label %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719

vector.ph2612:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.preheader
  %n.vec2613 = and i64 %i.ady, 4611686018427387900 ; 3 uses
  br label %vector.body2614

vector.body2614:                                  ; preds = %vector.body2614, %vector.ph2612
  %index2615 = phi i64 [ 0, %vector.ph2612 ], [ %index.next2618, %vector.body2614 ] ; 3 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %index2615 ; 2 uses
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %index2615 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  %wide.load2616 = load <2 x double>, ptr %i.aic, align 8, !tbaa !53
  %wide.load2617 = load <2 x double>, ptr %i.aid, align 8, !tbaa !53
  %i.aie = fptrunc <2 x double> %wide.load2616 to <2 x float>
  %i.aif = fptrunc <2 x double> %wide.load2617 to <2 x float>
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store <2 x float> %i.aie, ptr %i.aib, align 4, !tbaa !68
  store <2 x float> %i.aif, ptr %i.aig, align 4, !tbaa !68
  %index.next2618 = add nuw i64 %index2615, 4     ; 2 uses
  %i.aih = icmp eq i64 %index.next2618, %n.vec2613
  br i1 %i.aih, label %middle.block2619, label %vector.body2614, !llvm.loop !255

middle.block2619:                                 ; preds = %vector.body2614
  %cmp.n2620 = icmp eq i64 %i.ady, %n.vec2613
  br i1 %cmp.n2620, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit526.thread, label %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719

.lr.ph.i.i.i.i.i.i.i.i346.preheader2719:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.preheader, %middle.block2619
  %.05.i.i.i.i.i.i.i.i347.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i346.preheader ], [ %n.vec2613, %middle.block2619 ] ; 3 uses
  %xtraiter2976 = and i64 %i.ady, 3               ; 2 uses
  %lcmp.mod2977.not = icmp eq i64 %xtraiter2976, 0
  br i1 %lcmp.mod2977.not, label %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i346.prol

.lr.ph.i.i.i.i.i.i.i.i346.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719, %.lr.ph.i.i.i.i.i.i.i.i346.prol
  %.05.i.i.i.i.i.i.i.i347.prol = phi i64 [ %i.ain, %.lr.ph.i.i.i.i.i.i.i.i346.prol ], [ %.05.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719 ] ; 3 uses
  %prol.iter2978 = phi i64 [ %prol.iter2978.next, %.lr.ph.i.i.i.i.i.i.i.i346.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719 ]
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %.05.i.i.i.i.i.i.i.i347.prol
  %i.aij = mul nsw i64 %.05.i.i.i.i.i.i.i.i347.prol, %i.adz
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.aij
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !53
  %i.aim = fptrunc double %i.ail to float
  store float %i.aim, ptr %i.aii, align 4, !tbaa !68
  %i.ain = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347.prol, 1 ; 2 uses
  %prol.iter2978.next = add i64 %prol.iter2978, 1 ; 2 uses
  %prol.iter2978.cmp.not = icmp eq i64 %prol.iter2978.next, %xtraiter2976
  br i1 %prol.iter2978.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i346.prol, !llvm.loop !256

.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.prol, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719
  %.05.i.i.i.i.i.i.i.i347.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i346.preheader2719 ], [ %i.ain, %.lr.ph.i.i.i.i.i.i.i.i346.prol ]
  %i.aio = sub nsw i64 %.05.i.i.i.i.i.i.i.i347.ph, %i.ady
  %i.aip = icmp ugt i64 %i.aio, -4
  br i1 %i.aip, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit526.thread, label %.lr.ph.i.i.i.i.i.i.i.i346

bb.cq:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i522
  %i.aiq = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aiq, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.aiq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc525 unwind label %.body349

.noexc525:                                        ; preds = %bb.cq
  unreachable

.lr.ph.i.i.i.i.i.i.i.i346:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i346
  %.05.i.i.i.i.i.i.i.i347 = phi i64 [ %i.ajo, %.lr.ph.i.i.i.i.i.i.i.i346 ], [ %.05.i.i.i.i.i.i.i.i347.unr, %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit ] ; 6 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %.05.i.i.i.i.i.i.i.i347
  %i.ais = mul nsw i64 %.05.i.i.i.i.i.i.i.i347, %i.adz
  %i.ait = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.ais
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !53
  %i.aiv = fptrunc double %i.aiu to float
  store float %i.aiv, ptr %i.air, align 4, !tbaa !68
  %i.aiw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 1 ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aiw
  %i.aiy = mul nsw i64 %i.aiw, %i.adz
  %i.aiz = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.aiy
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !53
  %i.ajb = fptrunc double %i.aja to float
  store float %i.ajb, ptr %i.aix, align 4, !tbaa !68
  %i.ajc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 2 ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.ajc
  %i.aje = mul nsw i64 %i.ajc, %i.adz
  %i.ajf = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.aje
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !53
  %i.ajh = fptrunc double %i.ajg to float
  store float %i.ajh, ptr %i.ajd, align 4, !tbaa !68
  %i.aji = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 3 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aji
  %i.ajk = mul nsw i64 %i.aji, %i.adz
  %i.ajl = getelementptr inbounds [8 x i8], ptr %i.ahx, i64 %i.ajk
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !53
  %i.ajn = fptrunc double %i.ajm to float
  store float %i.ajn, ptr %i.ajj, align 4, !tbaa !68
  %i.ajo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i347, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i348.3 = icmp eq i64 %i.ajo, %i.ady
  br i1 %exitcond.not.i.i.i.i.i.i.i.i348.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit526.thread, label %.lr.ph.i.i.i.i.i.i.i.i346, !llvm.loop !257

.body349:                                         ; preds = %bb.cq
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef nonnull %i.agd) #20
  br label %.body339

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit526.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i346, %middle.block2619
  %i.ajq = load <2 x float>, ptr %i.aeg, align 4, !tbaa !68
  %i.ajr = insertelement <2 x float> poison, float %i.adn, i64 0
  %i.ajs = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajt = fmul <2 x float> %i.ajs, %i.ajq
  %i.aju = load <2 x float>, ptr %i.agd, align 4, !tbaa !68
  %i.ajv = insertelement <2 x float> poison, float %i.adp, i64 0
  %i.ajw = shufflevector <2 x float> %i.ajv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajx = fmul <2 x float> %i.ajw, %i.aju
  %i.ajy = fadd <2 x float> %i.ajt, %i.ajx
  %i.ajz = load <2 x float>, ptr %i.ahz, align 4, !tbaa !68
  %i.aka = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.akb = shufflevector <2 x float> %i.aka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akc = fmul <2 x float> %i.akb, %i.ajz
  %i.akd = fadd <2 x float> %i.ajy, %i.akc        ; 2 uses
  %i.ake = getelementptr i8, ptr %i.aeg, i64 8
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !68
  %i.akg = fmul float %i.adn, %i.akf
  %i.akh = getelementptr i8, ptr %i.agd, i64 8
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !68
  %i.akj = fmul float %i.adp, %i.aki
  %i.akk = fadd float %i.akg, %i.akj
  %i.akl = getelementptr i8, ptr %i.ahz, i64 8
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !68
  %i.akn = fmul float %i.adq, %i.akm
  %i.ako = fadd float %i.akk, %i.akn              ; 2 uses
  call void @free(ptr noundef %i.ahz) #20
  call void @free(ptr noundef %i.agd) #20
  call void @free(ptr noundef %i.aeg) #20
  %i.akp = load ptr, ptr %15, align 8, !tbaa !64, !noalias !278
  %i.akq = getelementptr inbounds [8 x i8], ptr %i.akp, i64 %i.adr ; 3 uses
  %i.akr = load i64, ptr %i.qf, align 8, !tbaa !66 ; 2 uses
  %i.aks = load double, ptr %i.akq, align 8, !tbaa !53
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.akq, i64 %i.akr
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !53
  %i.akv = insertelement <2 x double> poison, double %i.aks, i64 0
  %i.akw = insertelement <2 x double> %i.akv, double %i.aku, i64 1
  %.fr = freeze <2 x double> %i.akw
  %i.akx = fptrunc <2 x double> %.fr to <2 x float> ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.akr, 4
  %i.aky = getelementptr inbounds i8, ptr %i.akq, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !53
  %i.ala = fptrunc double %i.akz to float         ; 2 uses
  %i.alb = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.akx)
  %27 = fcmp ugt <2 x float> %i.alb, splat (float f0x3727C5AC)
  %28 = bitcast <2 x i1> %27 to i2
  %or.cond1048.not1055 = icmp eq i2 %28, 0
  %i.alc = call float @llvm.fabs.f32(float %i.ala)
  %i.ald = fcmp ole float %i.alc, f0x3727C5AC
  %or.cond1050 = select i1 %or.cond1048.not1055, i1 %i.ald, i1 false
  br i1 %or.cond1050, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385, label %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread

.body339:                                         ; preds = %.body349, %bb.cp
  %.pn192.pn.pn.pn = phi { ptr, i32 } [ %i.aht, %bb.cp ], [ %i.ajp, %.body349 ]
  call void @free(ptr noundef nonnull %i.aeg) #20
  br label %.body330

_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit526.thread, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZN3igl10random_dirEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.172") align 8 %20)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread
  %i.ale = load <2 x double>, ptr %20, align 16, !tbaa !53
  %i.alf = fptrunc <2 x double> %i.ale to <2 x float> ; 3 uses
  %i.alg = load double, ptr %i.qg, align 16, !tbaa !53
  %i.alh = fptrunc double %i.alg to float         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ali = fmul <2 x float> %i.akx, %i.alf        ; 2 uses
  %i.alj = fmul float %i.ala, %i.alh
  %i.alk = extractelement <2 x float> %i.ali, i64 1
  %i.all = fadd float %i.alk, %i.alj
  %i.alm = extractelement <2 x float> %i.ali, i64 0
  %i.aln = fadd float %i.alm, %i.all              ; 2 uses
  %i.alo = call float @llvm.fabs.f32(float %i.aln)
  %i.alp = fcmp olt float %i.alo, 1.000000e-01
  br i1 %i.alp, label %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread, label %bb.ct, !llvm.loop !260

bb.cs:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE6isZeroERKf.exit.thread
  %i.alq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body330

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369, %bb.di
  %.sroa.19.3.ph = phi ptr [ %.sroa.19.21466, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.19.21466, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.12750.11467, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.19.12, %bb.di ]
  %.sroa.0744.3.ph = phi ptr [ %.sroa.0744.21468, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0744.21468, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0744.21468, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.0744.12, %bb.di ]
  %.sroa.19769.3.ph = phi ptr [ %.sroa.19769.21469, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.12765.11470, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19769.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.19769.12, %bb.di ]
  %.sroa.0759.3.ph = phi ptr [ %.sroa.0759.21471, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0759.21471, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0759.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.0759.12, %bb.di ]
  %.sroa.24.3.ph = phi ptr [ %.sroa.15784.11473, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.24.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.24.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.24.12, %bb.di ]
  %.sroa.0775.3.ph = phi ptr [ %.sroa.0775.21474, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0775.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0775.12, %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i369 ], [ %.sroa.0775.12, %bb.di ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body330

.loopexit.split-lp:                               ; preds = %bb.cw, %bb.db, %bb.df
  %.sroa.19.214661555 = phi ptr [ %.sroa.12750.11467, %bb.df ], [ %.sroa.19.21466, %bb.db ], [ %.sroa.19.21466, %bb.cw ]
  %.sroa.19769.3.ph1058 = phi ptr [ %.sroa.19769.12, %bb.df ], [ %.sroa.12765.11470, %bb.db ], [ %.sroa.19769.21469, %bb.cw ]
  %.sroa.0759.3.ph1059 = phi ptr [ %.sroa.0759.12, %bb.df ], [ %.sroa.0759.21471, %bb.db ], [ %.sroa.0759.21471, %bb.cw ]
  %.sroa.24.3.ph1060 = phi ptr [ %.sroa.24.12, %bb.df ], [ %.sroa.24.12, %bb.db ], [ %.sroa.15784.11473, %bb.cw ]
  %.sroa.0775.3.ph1061 = phi ptr [ %.sroa.0775.12, %bb.df ], [ %.sroa.0775.12, %bb.db ], [ %.sroa.0775.21474, %bb.cw ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body330

bb.ct:                                            ; preds = %bb.cr
  %i.alr = fcmp olt float %i.aln, 0.000000e+00    ; 2 uses
  %i.als = fneg <2 x float> %i.alf
  %i.alt = fneg float %i.alh
  %.sroa.13.0.ph = select i1 %i.alr, float %i.alt, float %i.alh ; 2 uses
  %i.alu = insertelement <2 x i1> poison, i1 %i.alr, i64 0
  %i.alv = shufflevector <2 x i1> %i.alu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.alw = select <2 x i1> %i.alv, <2 x float> %i.als, <2 x float> %i.alf ; 2 uses
  %.not.i352 = icmp eq ptr %.sroa.15784.11473, %.sroa.24.21472
  br i1 %.not.i352, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.xr, ptr %.sroa.15784.11473, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361

bb.cv:                                            ; preds = %bb.ct
  %i.alx = ptrtoint ptr %.sroa.15784.11473 to i64
  %i.aly = ptrtoint ptr %.sroa.0775.21474 to i64
  %i.alz = sub i64 %i.alx, %i.aly                 ; 6 uses
  %i.ama = icmp eq i64 %i.alz, 9223372036854775804
  br i1 %i.ama, label %bb.cw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
          to label %.noexc359 unwind label %.loopexit.split-lp

.noexc359:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.cv
  %i.amb = ashr exact i64 %i.alz, 2               ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.amb, i64 1)
  %i.amc = add nsw i64 %.sroa.speculated.i.i.i354, %i.amb ; 2 uses
  %i.amd = icmp ult i64 %i.amc, %i.amb
  %i.ame = call i64 @llvm.umin.i64(i64 %i.amc, i64 2305843009213693951)
  %i.amf = select i1 %i.amd, i64 2305843009213693951, i64 %i.ame ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.amf, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.amg = shl nuw nsw i64 %i.amf, 2
  %i.amh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amg) #23
          to label %.noexc360 unwind label %.loopexit ; 4 uses

.noexc360:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i353
  %i.ami = getelementptr inbounds i8, ptr %i.amh, i64 %i.alz ; 2 uses
  store i32 %i.xr, ptr %i.ami, align 4, !tbaa !29
  %i.amj = icmp sgt i64 %i.alz, 0
  br i1 %i.amj, label %bb.cx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356

bb.cx:                                            ; preds = %.noexc360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.amh, ptr align 4 %.sroa.0775.21474, i64 %i.alz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356: ; preds = %bb.cx, %.noexc360
  %.not.i17.i.i357 = icmp eq ptr %.sroa.0775.21474, null
  br i1 %.not.i17.i.i357, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0775.21474, i64 noundef %i.alz) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358: ; preds = %bb.cy, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i356
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.amf
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361

_ZNSt6vectorIiSaIiEE9push_backERKi.exit361:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358, %bb.cu
  %.sroa.24.12 = phi ptr [ %i.amk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358 ], [ %.sroa.24.21472, %bb.cu ] ; 8 uses
  %.pn1056 = phi ptr [ %i.ami, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358 ], [ %.sroa.15784.11473, %bb.cu ]
  %.sroa.0775.12 = phi ptr [ %i.amh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i358 ], [ %.sroa.0775.21474, %bb.cu ] ; 9 uses
  %.sroa.15784.5 = getelementptr inbounds nuw i8, ptr %.pn1056, i64 4 ; 4 uses
  %.not.i362 = icmp eq ptr %.sroa.12765.11470, %.sroa.19769.21469
  br i1 %.not.i362, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361
  store <2 x float> %i.akd, ptr %.sroa.12765.11470, align 4
  %.sroa.7715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12765.11470, i64 8
  store float %i.ako, ptr %.sroa.7715.0..sroa_idx, align 4, !tbaa !40
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE9push_backERKS2_.exit

bb.da:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit361
  %i.aml = ptrtoint ptr %.sroa.12765.11470 to i64
  %i.amm = ptrtoint ptr %.sroa.0759.21471 to i64
  %i.amn = sub i64 %i.aml, %i.amm                 ; 4 uses
  %i.amo = icmp eq i64 %i.amn, 9223372036854775800
  br i1 %i.amo, label %bb.db, label %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
          to label %.noexc366 unwind label %.loopexit.split-lp

.noexc366:                                        ; preds = %bb.db
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.da
  %i.amp = sdiv exact i64 %i.amn, 12              ; 3 uses
  %.sroa.speculated.i.i.i363 = call i64 @llvm.umax.i64(i64 %i.amp, i64 1)
  %i.amq = add nsw i64 %.sroa.speculated.i.i.i363, %i.amp ; 2 uses
  %i.amr = icmp ult i64 %i.amq, %i.amp
  %i.ams = call i64 @llvm.umin.i64(i64 %i.amq, i64 768614336404564650)
  %i.amt = select i1 %i.amr, i64 768614336404564650, i64 %i.ams ; 3 uses
  %.not.i.i.i364 = icmp ne i64 %i.amt, 0
  call void @llvm.assume(i1 %.not.i.i.i364)
  %i.amu = mul nuw nsw i64 %i.amt, 12
  %i.amv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amu) #23
          to label %.noexc367 unwind label %.loopexit ; 5 uses

.noexc367:                                        ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amn ; 2 uses
  store <2 x float> %i.akd, ptr %i.amw, align 4
  %.sroa.7715.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  store float %i.ako, ptr %.sroa.7715.0..sroa_idx716, align 4, !tbaa !40
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0759.21471, %.sroa.12765.11470
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc367, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.amy, %.lr.ph.i.i.i.i.i ], [ %i.amv, %.noexc367 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.amx, %.lr.ph.i.i.i.i.i ], [ %.sroa.0759.21471, %.noexc367 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !69, !alias.scope !279
  %i.amx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i365 = icmp eq ptr %i.amx, %.sroa.12765.11470
  br i1 %.not.i.i.i.i.i365, label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc367
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.amv, %.noexc367 ], [ %i.amy, %.lr.ph.i.i.i.i.i ]
  %.not.i33.i.i = icmp eq ptr %.sroa.0759.21471, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0759.21471, i64 noundef %i.amn) #24
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.dc, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i
  %i.amz = getelementptr inbounds nuw [12 x i8], ptr %i.amv, i64 %i.amt
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.cz
  %.sroa.19769.12 = phi ptr [ %i.amz, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.19769.21469, %bb.cz ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.12765.11470, %bb.cz ]
  %.sroa.0759.12 = phi ptr [ %i.amv, %_ZNSt6vectorIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0759.21471, %bb.cz ] ; 6 uses
  %.sroa.12765.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 3 uses
  %.not.i368 = icmp eq ptr %.sroa.12750.11467, %.sroa.19.21466
  br i1 %.not.i368, label %bb.de, label %bb.dd
end_hunk_1
