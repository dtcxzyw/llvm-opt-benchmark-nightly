Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cvL13remapLanczos4INS_4CastIddEEfLi1ELb1EEEvRKNS_3MatERS3_S5_S5_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a
  %.3185254 = phi ptr [ %i.gp, %bb.w ], [ %i.aib, %bb.ap ] ; 9 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv284
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !13 ; 2 uses
  %i.afu = icmp slt i32 %i.aft, 0
  br i1 %i.afu, label %bb.ap, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.afv = zext nneg i32 %i.aft to i64
  %i.afw = mul i64 %i.ch, %i.afv
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %.2193257, i64 %i.afw ; 8 uses
  br i1 %i.aex, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.aey
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !70
  %i.aga = fsub double %i.afz, %i.afp
  %i.agb = load float, ptr %.3185254, align 4, !tbaa !48
  %i.agc = fpext float %i.agb to double
  %i.agd = tail call double @llvm.fmuladd.f64(double %i.aga, double %i.agc, double %.0173255)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi double [ %i.agd, %bb.aa ], [ %.0173255, %bb.z ] ; 2 uses
  br i1 %i.aez, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afa
  %i.agf = load double, ptr %i.age, align 8, !tbaa !70
  %i.agg = fsub double %i.agf, %i.afp
  %i.agh = getelementptr inbounds nuw i8, ptr %.3185254, i64 4
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !48
  %i.agj = fpext float %i.agi to double
  %i.agk = tail call double @llvm.fmuladd.f64(double %i.agg, double %i.agj, double %.1)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2 = phi double [ %i.agk, %bb.ac ], [ %.1, %bb.ab ] ; 2 uses
  br i1 %i.afb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afc
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !70
  %i.agn = fsub double %i.agm, %i.afp
  %i.ago = getelementptr inbounds nuw i8, ptr %.3185254, i64 8
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !48
  %i.agq = fpext float %i.agp to double
  %i.agr = tail call double @llvm.fmuladd.f64(double %i.agn, double %i.agq, double %.2)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3 = phi double [ %i.agr, %bb.ae ], [ %.2, %bb.ad ] ; 2 uses
  br i1 %i.afd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afe
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !70
  %i.agu = fsub double %i.agt, %i.afp
  %i.agv = getelementptr inbounds nuw i8, ptr %.3185254, i64 12
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !48
  %i.agx = fpext float %i.agw to double
  %i.agy = tail call double @llvm.fmuladd.f64(double %i.agu, double %i.agx, double %.3)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi double [ %i.agy, %bb.ag ], [ %.3, %bb.af ] ; 2 uses
  br i1 %i.aff, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afg
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !70
  %i.ahb = fsub double %i.aha, %i.afp
  %i.ahc = getelementptr inbounds nuw i8, ptr %.3185254, i64 16
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !48
  %i.ahe = fpext float %i.ahd to double
  %i.ahf = tail call double @llvm.fmuladd.f64(double %i.ahb, double %i.ahe, double %.4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.5 = phi double [ %i.ahf, %bb.ai ], [ %.4, %bb.ah ] ; 2 uses
  br i1 %i.afh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afi
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !70
  %i.ahi = fsub double %i.ahh, %i.afp
  %i.ahj = getelementptr inbounds nuw i8, ptr %.3185254, i64 20
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !48
  %i.ahl = fpext float %i.ahk to double
  %i.ahm = tail call double @llvm.fmuladd.f64(double %i.ahi, double %i.ahl, double %.5)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.6 = phi double [ %i.ahm, %bb.ak ], [ %.5, %bb.aj ] ; 2 uses
  br i1 %i.afj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afk
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !70
  %i.ahp = fsub double %i.aho, %i.afp
  %i.ahq = getelementptr inbounds nuw i8, ptr %.3185254, i64 24
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !48
  %i.ahs = fpext float %i.ahr to double
  %i.aht = tail call double @llvm.fmuladd.f64(double %i.ahp, double %i.ahs, double %.6)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.7 = phi double [ %i.aht, %bb.am ], [ %.6, %bb.al ] ; 2 uses
  br i1 %i.afl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afm
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !70
  %i.ahw = fsub double %i.ahv, %i.afp
  %i.ahx = getelementptr inbounds nuw i8, ptr %.3185254, i64 28
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !48
  %i.ahz = fpext float %i.ahy to double
  %i.aia = tail call double @llvm.fmuladd.f64(double %i.ahw, double %i.ahz, double %.7)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.y
  %.9 = phi double [ %.0173255, %bb.y ], [ %i.aia, %bb.ao ], [ %.7, %bb.an ] ; 2 uses
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.3185254, i64 32
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, 8
  br i1 %exitcond287.not, label %bb.x, label %bb.y, !llvm.loop !1804

.loopexit250:                                     ; preds = %.preheader249.preheader, %bb.s, %bb.v
  %.3194 = phi ptr [ %i.afn, %bb.v ], [ %.1192268, %bb.s ], [ %.1192268, %.preheader249.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %middle.block649, %.loopexit250
  %.5196 = phi ptr [ %.3194, %.loopexit250 ], [ %.1192268, %middle.block649 ], [ %.1192268, %.preheader ] ; 2 uses
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.aic = getelementptr [8 x i8], ptr %.0187269, i64 %wide.trip.count
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %._crit_edge, label %bb.p, !llvm.loop !1805
}

declare noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN2cvL14initInterTab2DEib(i32 noundef range(i32 1, -32) %0, i1 noundef zeroext %1) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 22 uses
  switch i32 %0, label %bb.c [
    i32 2, label %bb.aa
    i32 1, label %bb.h
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvL14initInterTab2DEib, ptr noundef nonnull @.str.1, i32 noundef 303) #27
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !76     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.f = load i64, ptr %i.d, align 8, !tbaa !50
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.a, %bb.f ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.b, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.z

bb.h:                                             ; preds = %bb.a, %bb.b
  %.0138 = phi ptr [ @_ZN2cvL13Lanczos4Tab_fE, %bb.b ], [ @_ZN2cvL13BilinearTab_fE, %bb.a ] ; 2 uses
  %.0135 = phi ptr [ @_ZN2cvL13Lanczos4Tab_iE, %bb.b ], [ @_ZN2cvL13BilinearTab_iE, %bb.a ] ; 2 uses
  %exitcond.not.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ]
  %.0134 = phi i32 [ 8, %bb.b ], [ 2, %bb.a ]     ; 14 uses
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN2cvL14initInterTab2DEibE7inittab, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !44, !range !1806, !noundef !1807
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !1808
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 256, ptr %i.m, align 8, !tbaa !1810
  switch i32 %0, label %bb.j [
    i32 1, label %.preheader.preheader.i
    i32 2, label %_ZN2cvL14initInterTab1DEiPfi.exit
    i32 4, label %.preheader25.i
  ]

.preheader.preheader.i:                           ; preds = %bb.i
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 9.687500e-01, float 3.125000e-02>, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x float> <float 9.375000e-01, float 6.250000e-02, float 9.062500e-01, float 9.375000e-02>, ptr %i.n, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> <float 8.750000e-01, float 1.250000e-01, float 8.437500e-01, float 1.562500e-01>, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <4 x float> <float 8.125000e-01, float 1.875000e-01, float 7.812500e-01, float 2.187500e-01>, ptr %i.p, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <4 x float> <float 7.500000e-01, float 2.500000e-01, float 7.187500e-01, float 2.812500e-01>, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <4 x float> <float 6.875000e-01, float 3.125000e-01, float 6.562500e-01, float 3.437500e-01>, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x float> <float 6.250000e-01, float 3.750000e-01, float 5.937500e-01, float 4.062500e-01>, ptr %i.s, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 128
  store <4 x float> <float 5.625000e-01, float 4.375000e-01, float 5.312500e-01, float 4.687500e-01>, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 144
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 4.687500e-01, float 5.312500e-01>, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 160
  store <4 x float> <float 4.375000e-01, float 5.625000e-01, float 4.062500e-01, float 5.937500e-01>, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 176
  store <4 x float> <float 3.750000e-01, float 6.250000e-01, float 3.437500e-01, float 6.562500e-01>, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 192
  store <4 x float> <float 3.125000e-01, float 6.875000e-01, float 2.812500e-01, float 7.187500e-01>, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 208
  store <4 x float> <float 2.500000e-01, float 7.500000e-01, float 2.187500e-01, float 7.812500e-01>, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 224
  store <4 x float> <float 1.875000e-01, float 8.125000e-01, float 1.562500e-01, float 8.437500e-01>, ptr %i.z, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 240
  store <4 x float> <float 1.250000e-01, float 8.750000e-01, float 9.375000e-02, float 9.062500e-01>, ptr %i.aa, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 256
  store <4 x float> <float 6.250000e-02, float 9.375000e-01, float 3.125000e-02, float 9.687500e-01>, ptr %i.ab, align 8, !tbaa !48
  br label %_ZN2cvL14initInterTab1DEiPfi.exit

.preheader25.i:                                   ; preds = %bb.i, %_ZN2cvL19interpolateLanczos4EfPf.exit.i
  %.02028.i = phi i32 [ %i.dg, %_ZN2cvL19interpolateLanczos4EfPf.exit.i ], [ 0, %bb.i ] ; 2 uses
  %.127.i = phi ptr [ %i.dh, %_ZN2cvL19interpolateLanczos4EfPf.exit.i ], [ %i.l, %bb.i ] ; 6 uses
  %i.ac = uitofp nneg i32 %.02028.i to float
  %i.ad = fmul nnan float %i.ac, 3.125000e-02     ; 2 uses
  %i.ae = fcmp olt float %i.ad, f0x34000000
  br i1 %i.ae, label %.preheader.preheader.i.i, label %.loopexit.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader25.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.127.i, i8 0, i64 32, i1 false), !tbaa !48
  br label %_ZN2cvL19interpolateLanczos4EfPf.exit.i

.loopexit.loopexit.i.i:                           ; preds = %.preheader25.i
  %i.af = fadd float %i.ad, 3.000000e+00          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.127.i, i64 8
  %i.ah = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = fadd nnan <4 x float> %i.ai, <float -1.000000e+00, float -2.000000e+00, float -3.000000e+00, float -4.000000e+00>
  %i.ak = getelementptr inbounds nuw i8, ptr %.127.i, i64 16
  %i.al = fadd nnan float %i.af, -5.000000e+00
  %i.am = insertelement <2 x float> poison, float %i.af, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd nnan <2 x float> %i.an, <float -6.000000e+00, float -7.000000e+00>
  %i.ap = insertelement <8 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <8 x float> %i.ap, <8 x float> %i.aq, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.as = insertelement <8 x float> %i.ar, float %i.al, i64 5
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x float> %i.as, <8 x float> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.av = fneg <8 x float> %i.au
  %i.aw = fpext nnan <8 x float> %i.av to <8 x double>
  %i.ax = fmul nnan <8 x double> %i.aw, splat (double f0x400921FB54442D18)
  %i.ay = fmul nnan <8 x double> %i.ax, splat (double 2.500000e-01) ; 3 uses
  %i.az = extractelement <8 x double> %i.ay, i64 0 ; 2 uses
  %i.ba = call double @sin(double noundef %i.az) #24 ; 5 uses
  %i.bb = call double @cos(double noundef %i.az) #24 ; 5 uses
  %i.bc = fmul double %i.bb, 0.000000e+00         ; 2 uses
  %i.bd = fadd double %i.ba, %i.bc
  %i.be = fsub double %i.bc, %i.ba
  %i.bf = fmul double %i.bb, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.bg = fmul double %i.bb, f0xBFE6A09E667F3BCD  ; 2 uses
  %i.bh = fneg double %i.bb
  %i.bi = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bf, i64 1
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> <double 0.000000e+00, double f0xBFE6A09E667F3BCD>, <2 x double> %i.bl)
  %i.bn = insertelement <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, double %i.ba, i64 0
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bp = insertelement <4 x double> poison, double %i.bb, i64 0
  %i.bq = insertelement <4 x double> %i.bp, double %i.bg, i64 1
  %i.br = insertelement <4 x double> %i.bq, double %i.be, i64 2
  %i.bs = insertelement <4 x double> %i.br, double %i.bf, i64 3
  %i.bt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bo, <4 x double> <double 0.000000e+00, double f0x3FE6A09E667F3BCD, double 0.000000e+00, double f0x3FE6A09E667F3BCD>, <4 x double> %i.bs)
  %i.bu = call double @llvm.fmuladd.f64(double %i.ba, double f0xBFE6A09E667F3BCD, double %i.bg)
  %i.bv = fmul <8 x double> %i.ay, %i.ay
  %i.bw = insertelement <8 x double> poison, double %i.bd, i64 0
  %i.bx = insertelement <8 x double> %i.bw, double %i.bu, i64 1
  %i.by = shufflevector <4 x double> %i.bt, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = shufflevector <8 x double> %i.bx, <8 x double> %i.by, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.ca = shufflevector <2 x double> %i.bm, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <8 x double> %i.bz, <8 x double> %i.ca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.cc = fdiv <8 x double> %i.cb, %i.bv
  %i.cd = fptrunc <8 x double> %i.cc to <8 x float> ; 10 uses
  %i.ce = extractelement <8 x float> %i.cd, i64 0
  %i.cf = fadd float %i.ce, 0.000000e+00
  %i.cg = extractelement <8 x float> %i.cd, i64 1
  %i.ch = fadd float %i.cf, %i.cg
  %i.ci = extractelement <8 x float> %i.cd, i64 2 ; 2 uses
  %i.cj = fadd float %i.ch, %i.ci
  %i.ck = extractelement <8 x float> %i.cd, i64 3 ; 2 uses
  %i.cl = fadd float %i.cj, %i.ck
  %i.cm = extractelement <8 x float> %i.cd, i64 4
  %i.cn = fadd float %i.cl, %i.cm
  %i.co = extractelement <8 x float> %i.cd, i64 5
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = extractelement <8 x float> %i.cd, i64 6
  %i.cr = fadd float %i.cp, %i.cq
  %i.cs = extractelement <8 x float> %i.cd, i64 7
  %i.ct = fadd float %i.cr, %i.cs
  %i.cu = fdiv float 1.000000e+00, %i.ct          ; 4 uses
  %i.cv = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <8 x float> %i.cd, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  store <2 x float> %i.cy, ptr %.127.i, align 4, !tbaa !48
  %i.cz = fmul float %i.cu, %i.ci
  store float %i.cz, ptr %i.ag, align 4, !tbaa !48
  %i.da = fmul float %i.cu, %i.ck
  %i.db = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = shufflevector <8 x float> %i.cd, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.de = fmul <4 x float> %i.dc, %i.dd
  store <4 x float> %i.de, ptr %i.ak, align 4, !tbaa !48
  br label %_ZN2cvL19interpolateLanczos4EfPf.exit.i

_ZN2cvL19interpolateLanczos4EfPf.exit.i:          ; preds = %.loopexit.loopexit.i.i, %.preheader.preheader.i.i
  %.sink.i = phi float [ 1.000000e+00, %.preheader.preheader.i.i ], [ %i.da, %.loopexit.loopexit.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.127.i, i64 12
  store float %.sink.i, ptr %i.df, align 4, !tbaa !48
  %i.dg = add nuw nsw i32 %.02028.i, 1            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.127.i, i64 32
  %exitcond.not.i = icmp eq i32 %i.dg, 32
  br i1 %exitcond.not.i, label %_ZN2cvL14initInterTab1DEiPfi.exit, label %.preheader25.i, !llvm.loop !1811

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cvL14initInterTab1DEiPfi, ptr noundef nonnull @.str.1, i32 noundef 284) #27
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %2, align 8, !tbaa !76    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !50
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

_ZN2cvL14initInterTab1DEiPfi.exit:                ; preds = %_ZN2cvL19interpolateLanczos4EfPf.exit.i, %bb.i, %.preheader.preheader.i
  %i.do = mul nuw nsw i32 %.0134, %.0134
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = lshr exact i32 %.0134, 1                ; 3 uses
  %i.dr = zext nneg i32 %.0134 to i64             ; 9 uses
  %i.ds = lshr exact i64 %i.dr, 1                 ; 3 uses
  %i.dt = mul nuw nsw i64 %i.ds, %i.dr            ; 2 uses
  %i.du = or disjoint i32 %.0134, 1
  %i.dv = mul nuw nsw i32 %i.dq, %i.du
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = trunc nuw nsw i64 %i.ds to i32          ; 9 uses
  %.pre247 = or disjoint i32 %.0134, 1
  %.pre218 = mul nuw nsw i32 %.pre247, %i.dx
  %.pre220 = zext nneg i32 %.pre218 to i64
  %indvars.iv.next197 = add nuw nsw i64 %i.ds, 1  ; 4 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv.next197 to i32 ; 10 uses
  %.2119.us248 = or disjoint i32 %.0134, 1
  %.pre222 = mul nuw nsw i32 %.0134, %i.dx
  %.pre224 = add nuw nsw i32 %.pre222, %i.dy
  %.pre226 = zext nneg i32 %.pre224 to i64
  %i.dz = mul nuw nsw i64 %indvars.iv.next197, %i.dr ; 2 uses
  %.pre228 = mul nuw nsw i32 %.0134, %i.dy
  %.pre230 = add nuw nsw i32 %.pre228, %i.dx
  %.pre232 = zext nneg i32 %.pre230 to i64
  br label %.preheader156

.preheader156:                                    ; preds = %_ZN2cvL14initInterTab1DEiPfi.exit, %bb.w
  %indvars.iv214 = phi i64 [ 0, %_ZN2cvL14initInterTab1DEiPfi.exit ], [ %indvars.iv.next215, %bb.w ] ; 4 uses
  %.1136186 = phi ptr [ %.0135, %_ZN2cvL14initInterTab1DEiPfi.exit ], [ %i.ka, %bb.w ]
  %.1139185 = phi ptr [ %.0138, %_ZN2cvL14initInterTab1DEiPfi.exit ], [ %i.jz, %bb.w ]
  %i.ea = icmp samesign ult i64 %indvars.iv214, 16
  %i.eb = zext i1 %i.ea to i8
  %i.ec = mul nuw nsw i64 %indvars.iv214, %i.dr
  %.idx = shl nuw nsw i64 %indvars.iv214, 6
  %invariant.gep253 = getelementptr inbounds nuw i8, ptr @_ZN2cvL12NNDeltaTab_iE, i64 %.idx
  %invariant.gep251 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ec
  br label %bb.m

bb.m:                                             ; preds = %.preheader156, %bb.v
  %indvars.iv210 = phi i64 [ 0, %.preheader156 ], [ %indvars.iv.next211, %bb.v ] ; 4 uses
  %.2137183 = phi ptr [ %.1136186, %.preheader156 ], [ %i.ka, %bb.v ] ; 21 uses
  %.2140182 = phi ptr [ %.1139185, %.preheader156 ], [ %i.jz, %bb.v ] ; 9 uses
  %i.ed = icmp samesign ult i64 %indvars.iv210, 16
  %i.ee = zext i1 %i.ed to i8
  %gep254 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep253, i64 %indvars.iv210 ; 2 uses
  store i8 %i.ee, ptr %gep254, align 2, !tbaa !50
  %i.ef = getelementptr inbounds nuw i8, ptr %gep254, i64 1
  store i8 %i.eb, ptr %i.ef, align 1, !tbaa !50
  %i.eg = mul nuw nsw i64 %indvars.iv210, %i.dr
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.eg ; 8 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 20
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.q
  %indvars.iv191 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next192, %bb.q ] ; 3 uses
  %.0120160 = phi i32 [ 0, %bb.m ], [ %.lcssa, %bb.q ]
  %gep252 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep251, i64 %indvars.iv191
  %i.eh = load float, ptr %gep252, align 4, !tbaa !48 ; 8 uses
  %i.ei = mul nuw nsw i64 %indvars.iv191, %i.dr   ; 9 uses
  %i.ej = load float, ptr %invariant.gep, align 8, !tbaa !48
  %i.ek = fmul float %i.eh, %i.ej                 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.ei
  store float %i.ek, ptr %i.el, align 4, !tbaa !48
  %i.em = fmul float %i.ek, 3.276800e+04
  %i.en = insertelement <4 x float> poison, float %i.em, i64 0
  %i.eo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.en)
  %i.ep = call i32 @llvm.smax.i32(i32 %i.eo, i32 -32768)
  %i.eq = call i32 @llvm.smin.i32(i32 %i.ep, i32 32767) ; 2 uses
  %i.er = trunc nsw i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.ei
  store i16 %i.er, ptr %i.es, align 2, !tbaa !56
  %i.et = add nsw i32 %i.eq, %.0120160
  %i.eu = load float, ptr %gep.1, align 4, !tbaa !48
  %i.ev = fmul float %i.eh, %i.eu                 ; 2 uses
  %i.ew = or disjoint i64 %i.ei, 1                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.ew
  store float %i.ev, ptr %i.ex, align 4, !tbaa !48
  %i.ey = fmul float %i.ev, 3.276800e+04
  %i.ez = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fa = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ez)
  %i.fb = call i32 @llvm.smax.i32(i32 %i.fa, i32 -32768)
  %i.fc = call i32 @llvm.smin.i32(i32 %i.fb, i32 32767) ; 2 uses
  %i.fd = trunc nsw i32 %i.fc to i16
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.ew
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !56
  %i.ff = add nsw i32 %i.fc, %i.et                ; 2 uses
  br i1 %exitcond.not.1, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fg = load float, ptr %gep.2, align 8, !tbaa !48
  %i.fh = fmul float %i.eh, %i.fg                 ; 2 uses
  %i.fi = add nuw nsw i64 %i.ei, 2                ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.fi
  store float %i.fh, ptr %i.fj, align 4, !tbaa !48
  %i.fk = fmul float %i.fh, 3.276800e+04
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fl)
  %i.fn = call i32 @llvm.smax.i32(i32 %i.fm, i32 -32768)
  %i.fo = call i32 @llvm.smin.i32(i32 %i.fn, i32 32767) ; 2 uses
  %i.fp = trunc nsw i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.fi
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !56
  %i.fr = load float, ptr %gep.3, align 4, !tbaa !48
  %i.fs = fmul float %i.eh, %i.fr                 ; 2 uses
  %i.ft = add nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.ft
  store float %i.fs, ptr %i.fu, align 4, !tbaa !48
  %i.fv = fmul float %i.fs, 3.276800e+04
  %i.fw = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.fx = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fw)
  %i.fy = call i32 @llvm.smax.i32(i32 %i.fx, i32 -32768)
  %i.fz = call i32 @llvm.smin.i32(i32 %i.fy, i32 32767) ; 2 uses
  %i.ga = trunc nsw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.ft
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !56
  %i.gc = load float, ptr %gep.4, align 8, !tbaa !48
  %i.gd = fmul float %i.eh, %i.gc                 ; 2 uses
  %i.ge = add nuw nsw i64 %i.ei, 4                ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.ge
  store float %i.gd, ptr %i.gf, align 4, !tbaa !48
  %i.gg = fmul float %i.gd, 3.276800e+04
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gh)
  %i.gj = call i32 @llvm.smax.i32(i32 %i.gi, i32 -32768)
  %i.gk = call i32 @llvm.smin.i32(i32 %i.gj, i32 32767) ; 2 uses
  %i.gl = trunc nsw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.ge
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !56
  %i.gn = load float, ptr %gep.5, align 4, !tbaa !48
  %i.go = fmul float %i.eh, %i.gn                 ; 2 uses
  %i.gp = add nuw nsw i64 %i.ei, 5                ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.gp
  store float %i.go, ptr %i.gq, align 4, !tbaa !48
  %i.gr = fmul float %i.go, 3.276800e+04
  %i.gs = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gs)
  %i.gu = call i32 @llvm.smax.i32(i32 %i.gt, i32 -32768)
  %i.gv = call i32 @llvm.smin.i32(i32 %i.gu, i32 32767) ; 2 uses
  %i.gw = trunc nsw i32 %i.gv to i16
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.gp
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !56
  %i.gy = load float, ptr %gep.6, align 8, !tbaa !48
  %i.gz = fmul float %i.eh, %i.gy                 ; 2 uses
  %i.ha = add nuw nsw i64 %i.ei, 6                ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.ha
  store float %i.gz, ptr %i.hb, align 4, !tbaa !48
  %i.hc = fmul float %i.gz, 3.276800e+04
  %i.hd = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.he = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hd)
  %i.hf = call i32 @llvm.smax.i32(i32 %i.he, i32 -32768)
  %i.hg = call i32 @llvm.smin.i32(i32 %i.hf, i32 32767) ; 2 uses
  %i.hh = trunc nsw i32 %i.hg to i16
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.ha
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !56
  %i.hj = add nsw i32 %i.fo, %i.ff
  %i.hk = add nsw i32 %i.fz, %i.hj
  %i.hl = add nsw i32 %i.gk, %i.hk
  %i.hm = add nsw i32 %i.gv, %i.hl
  %i.hn = add nsw i32 %i.hg, %i.hm
  %i.ho = load float, ptr %gep.7, align 4, !tbaa !48
  %i.hp = fmul float %i.eh, %i.ho                 ; 2 uses
  %i.hq = add nuw nsw i64 %i.ei, 7                ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.hq
  store float %i.hp, ptr %i.hr, align 4, !tbaa !48
  %i.hs = fmul float %i.hp, 3.276800e+04
  %i.ht = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ht)
  %i.hv = call i32 @llvm.smax.i32(i32 %i.hu, i32 -32768)
  %i.hw = call i32 @llvm.smin.i32(i32 %i.hv, i32 32767) ; 2 uses
  %i.hx = trunc nsw i32 %i.hw to i16
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.hq
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !56
  %i.hz = add nsw i32 %i.hw, %i.hn
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.n
  %.lcssa = phi i32 [ %i.hz, %bb.o ], [ %i.ff, %bb.n ] ; 4 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %i.dr
  br i1 %exitcond195.not, label %bb.r, label %bb.n, !llvm.loop !1812

bb.r:                                             ; preds = %bb.q
  %.not = icmp eq i32 %.lcssa, 32768
  br i1 %.not, label %bb.v, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.r
  %i.ib = getelementptr inbounds nuw i8, ptr %.2137183, i64 %i.dr
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.dt
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !56 ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.dw
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !56 ; 2 uses
  %i.ig = icmp slt i16 %i.id, %i.if               ; 2 uses
  %.not259 = icmp sgt i16 %i.id, %i.if
  %.pre-phi221 = select i1 %i.ig, i64 %.pre220, i64 %i.dw ; 2 uses
  %.2119.us = select i1 %.not259, i32 %i.dx, i32 %i.dq ; 5 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %indvars.iv.next197
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.dt
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !56 ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %.pre-phi221
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !56
  %i.im = icmp slt i16 %i.ij, %i.il
  br i1 %i.im, label %._crit_edge.us, label %bb.s

bb.s:                                             ; preds = %.preheader.us.preheader
  %.2113.us = select i1 %i.ig, i32 %i.dx, i32 %i.dq ; 2 uses
  %i.in = mul nuw nsw i32 %.2119.us, %.2119.us248
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !56
  %i.ir = icmp sgt i16 %i.ij, %i.iq               ; 2 uses
  %spec.select.us.1 = select i1 %i.ir, i32 %i.dx, i32 %.2119.us
  %spec.select152.us.1 = select i1 %i.ir, i32 %i.dy, i32 %.2119.us
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.preheader.us.preheader, %bb.s
  %.pre-phi227 = phi i64 [ %.pre-phi221, %bb.s ], [ %.pre226, %.preheader.us.preheader ] ; 2 uses
  %.2119.us.1 = phi i32 [ %spec.select.us.1, %bb.s ], [ %.2119.us, %.preheader.us.preheader ] ; 3 uses
  %.2116.us.1 = phi i32 [ %spec.select152.us.1, %bb.s ], [ %.2119.us, %.preheader.us.preheader ] ; 3 uses
  %.2113.us.1 = phi i32 [ %.2113.us, %bb.s ], [ %i.dx, %.preheader.us.preheader ]
  %.2.us.1 = phi i32 [ %.2113.us, %bb.s ], [ %i.dy, %.preheader.us.preheader ]
  %i.is = getelementptr inbounds nuw i8, ptr %.2137183, i64 %i.dr
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.dz
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !56 ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %.pre-phi227
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !56
  %i.ix = icmp slt i16 %i.iu, %i.iw
  br i1 %i.ix, label %._crit_edge.us._crit_edge, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us
  %i.iy = mul nuw nsw i32 %.2119.us.1, %.0134
  %i.iz = add nuw nsw i32 %i.iy, %.2116.us.1
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !56
  %i.jd = icmp sgt i16 %i.iu, %i.jc               ; 2 uses
  %spec.select.us.1204 = select i1 %i.jd, i32 %i.dy, i32 %.2119.us.1
  %spec.select152.us.1205 = select i1 %i.jd, i32 %i.dx, i32 %.2116.us.1
  br label %._crit_edge.us._crit_edge

._crit_edge.us._crit_edge:                        ; preds = %._crit_edge.us, %bb.t
  %.pre-phi233 = phi i64 [ %.pre-phi227, %bb.t ], [ %.pre232, %._crit_edge.us ]
  %.2119.us.1206 = phi i32 [ %spec.select.us.1204, %bb.t ], [ %.2119.us.1, %._crit_edge.us ] ; 3 uses
  %.2116.us.1207 = phi i32 [ %spec.select152.us.1205, %bb.t ], [ %.2116.us.1, %._crit_edge.us ] ; 3 uses
  %.2113.us.1208 = phi i32 [ %.2113.us.1, %bb.t ], [ %i.dy, %._crit_edge.us ]
  %.2.us.1209 = phi i32 [ %.2.us.1, %bb.t ], [ %i.dx, %._crit_edge.us ]
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %indvars.iv.next197
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %i.dz
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !56 ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %.pre-phi233
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !56
  %i.jj = icmp slt i16 %i.jg, %i.ji
  br i1 %i.jj, label %._crit_edge174.split.us, label %bb.u

bb.u:                                             ; preds = %._crit_edge.us._crit_edge
  %i.jk = mul nuw nsw i32 %.2119.us.1206, %.0134
  %i.jl = add nuw nsw i32 %i.jk, %.2116.us.1207
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !56
  %i.jp = icmp sgt i16 %i.jg, %i.jo               ; 2 uses
  %spec.select.us.1.1 = select i1 %i.jp, i32 %i.dy, i32 %.2119.us.1206
  %spec.select152.us.1.1 = select i1 %i.jp, i32 %i.dy, i32 %.2116.us.1207
  br label %._crit_edge174.split.us

._crit_edge174.split.us:                          ; preds = %._crit_edge.us._crit_edge, %bb.u
  %.2119.us.1.1 = phi i32 [ %spec.select.us.1.1, %bb.u ], [ %.2119.us.1206, %._crit_edge.us._crit_edge ]
  %.2116.us.1.1 = phi i32 [ %spec.select152.us.1.1, %bb.u ], [ %.2116.us.1207, %._crit_edge.us._crit_edge ]
  %.2113.us.1.1 = phi i32 [ %.2113.us.1208, %bb.u ], [ %i.dy, %._crit_edge.us._crit_edge ]
  %.2.us.1.1 = phi i32 [ %.2.us.1209, %bb.u ], [ %i.dy, %._crit_edge.us._crit_edge ]
  %i.jq = icmp slt i32 %.lcssa, 32768             ; 2 uses
  %i.jr = trunc i32 %.lcssa to i16
  %i.js = xor i16 %i.jr, -32768
  %.2119.us.1.1..2113.us.1.1 = select i1 %i.jq, i32 %.2119.us.1.1, i32 %.2113.us.1.1
  %.2116.us.1.1..2.us.1.1 = select i1 %i.jq, i32 %.2116.us.1.1, i32 %.2.us.1.1
  %i.jt = mul nuw nsw i32 %.2119.us.1.1..2113.us.1.1, %.0134
  %i.ju = add nuw nsw i32 %i.jt, %.2116.us.1.1..2.us.1.1
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.jv ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !56
  %i.jy = sub i16 %i.jx, %i.js
  store i16 %i.jy, ptr %i.jw, align 2, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge174.split.us, %bb.r
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.2140182, i64 %i.dp ; 3 uses
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.2137183, i64 %i.dp ; 3 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next211, 32
  br i1 %exitcond213.not, label %bb.w, label %bb.m, !llvm.loop !1813

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, 32
  br i1 %exitcond217.not, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %.preheader156, !llvm.loop !1814

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.w
  %i.kb = shl nuw nsw i32 %.0134, 10
  %7 = mul nuw nsw i32 %i.kb, %.0134
  %i.kc = zext nneg i32 %7 to i64
  %i.kd = sub nsw i64 0, %i.kc                    ; 2 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.kd
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.kd
  store i8 1, ptr %i.i, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.y

.body:                                            ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn149 = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ia, %bb.p ]
  %i.kg = load ptr, ptr %6, align 8, !tbaa !1808  ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.kg, %i.l
  %i.kh = icmp eq ptr %i.kg, null
  %or.cond.i154 = or i1 %.not.i.i153, %i.kh
  br i1 %or.cond.i154, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155, label %bb.x

bb.x:                                             ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.kg) #28
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155

_ZN2cv10AutoBufferIfLm264EED2Ev.exit155:          ; preds = %.body, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.z

bb.y:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, %bb.h
  %.3141 = phi ptr [ %.0138, %bb.h ], [ %i.ke, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit ]
  %.3 = phi ptr [ %.0135, %bb.h ], [ %i.kf, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit ]
  %i.ki = select i1 %1, ptr %.3, ptr %.3141
  br label %bb.aa

bb.z:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn149.pn = phi { ptr, i32 } [ %.pn149, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn149.pn

bb.aa:                                            ; preds = %bb.a, %bb.y
  %.0142 = phi ptr [ %i.ki, %bb.y ], [ null, %bb.a ]
  ret ptr %.0142
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !120
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11convertMapsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_ib(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 16 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca [2 x %"class.cv::Mat"], align 16   ; 11 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca [2 x %"class.cv::Mat"], align 16   ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11convertMapsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_ibE26__cv_trace_location_fn1674)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.0268.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %.0268.sroa.gep270 = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %.0268.sroa.gep272 = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.0268.sroa.gep273 = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 3 uses
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79, !noalias !1815
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.s

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.s

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc221 unwind label %bb.t

.noexc221:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc221
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79, !noalias !1818
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit224 unwind label %bb.t

bb.e:                                             ; preds = %.noexc221
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit224 unwind label %bb.t

_ZNK2cv11_InputArray6getMatEi.exit224:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #24
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !91   ; 6 uses
  %i.k = icmp slt i32 %i.j, 3
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit224
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc225 unwind label %bb.u

.noexc225:                                        ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #27
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc225
  unreachable

bb.h:                                             ; preds = %.noexc225
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %6, align 8, !tbaa !76     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !50
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.i:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit224
  %i.r = icmp sgt i32 %i.j, 0
  br i1 %i.r, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  %i.s = icmp eq i32 %i.j, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 84
  %i.v = icmp eq i32 %i.j, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.u, align 4             ; 2 uses
  %i.w = select i1 %i.v, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.x = phi i32 [ %i.t, %.thread.i ], [ %i.w, %bb.j ]
  %i.y = icmp sgt i32 %i.j, -1
  %i.z = zext i1 %i.y to i32
  br label %bb.l
end_hunk_0
