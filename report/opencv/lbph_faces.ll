Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lbph_faces?download=true
inline.NumInlined: 691
inline.NumDeleted: 285
begin_hunk_0_@_ZN2cv4faceL4elbpERKNS_11_InputArrayEii:bb.a
  %i.agm = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.agf)
  %i.agn = fptosi <2 x double> %i.agm to <2 x i32> ; 3 uses
  %i.ago = sitofp <2 x i32> %i.agn to <2 x float> ; 2 uses
  %foldExtExtBinop131 = fsub <2 x float> %i.age, %i.ago
  %i.agp = extractelement <2 x float> %foldExtExtBinop131, i64 0 ; 3 uses
  %foldExtExtBinop133 = fsub <2 x float> %i.age, %i.ago
  %i.agq = extractelement <2 x float> %foldExtExtBinop133, i64 1 ; 3 uses
  %i.agr = fmul float %i.agp, %i.agq
  %i.ags = fsub float 1.000000e+00, %i.agp        ; 2 uses
  %i.agt = fmul float %i.ags, %i.agq
  %i.agu = fsub float 1.000000e+00, %i.agq        ; 2 uses
  %i.agv = fmul float %i.agp, %i.agu
  %i.agw = fmul float %i.ags, %i.agu
  %i.agx = fpext float %i.agw to double
  %i.agy = load ptr, ptr %i.afj, align 8          ; 3 uses
  %i.agz = fpext float %i.agr to double
  %i.aha = fpext float %i.agt to double
  %i.ahb = fpext float %i.agv to double
  %i.ahc = load ptr, ptr %i.afm, align 8
  %i.ahd = extractelement <2 x i32> %i.agn, i64 0
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = sext i32 %i.agl to i64
  %i.ahg = extractelement <2 x i32> %i.agn, i64 1
  %i.ahh = sext i32 %i.ahg to i64
  %i.ahi = sext i32 %i.agi to i64
  %.pre110.i182.i = load i32, ptr %i.aer, align 4, !tbaa !79
  br label %.preheader.i183.i

.preheader.i183.i:                                ; preds = %._crit_edge.i185.i, %.preheader.lr.ph.i181.i
  %i.ahj = phi i32 [ %i.afs, %.preheader.lr.ph.i181.i ], [ %i.aht, %._crit_edge.i185.i ]
  %i.ahk = phi i32 [ %.pre110.i182.i, %.preheader.lr.ph.i181.i ], [ %i.ahu, %._crit_edge.i185.i ] ; 2 uses
  %indvars.iv107.i184.i = phi i64 [ %i.afo, %.preheader.lr.ph.i181.i ], [ %indvars.iv.next108.i186.i, %._crit_edge.i185.i ] ; 5 uses
  %i.ahl = sub nsw i32 %i.ahk, %2
  %i.ahm = icmp slt i32 %2, %i.ahl
  br i1 %i.ahm, label %.lr.ph.i187.i, label %._crit_edge.i185.i

.lr.ph.i187.i:                                    ; preds = %.preheader.i183.i
  %i.ahn = add nsw i64 %indvars.iv107.i184.i, %i.ahh
  %i.aho = add nsw i64 %indvars.iv107.i184.i, %i.ahi
  %i.ahp = sub nsw i64 %indvars.iv107.i184.i, %i.afo
  br label %bb.ds

._crit_edge101.i179.i:                            ; preds = %._crit_edge.i185.i, %bb.dr
  %i.ahq = phi i32 [ %i.afs, %bb.dr ], [ %i.aht, %._crit_edge.i185.i ]
  %i.ahr = phi i32 [ %i.aft, %bb.dr ], [ %i.aht, %._crit_edge.i185.i ]
  %i.ahs = add nuw nsw i32 %.071102.i178.i, 1     ; 2 uses
  %exitcond.not.i180.i = icmp eq i32 %i.ahs, %3
  br i1 %exitcond.not.i180.i, label %_ZN2cv4faceL5elbp_IdEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, label %bb.dr, !llvm.loop !162

._crit_edge.loopexit.i198.i:                      ; preds = %bb.du
  %.pre111.i199.i = load i32, ptr %i.aen, align 8, !tbaa !87
  br label %._crit_edge.i185.i

._crit_edge.i185.i:                               ; preds = %._crit_edge.loopexit.i198.i, %.preheader.i183.i
  %i.aht = phi i32 [ %.pre111.i199.i, %._crit_edge.loopexit.i198.i ], [ %i.ahj, %.preheader.i183.i ] ; 4 uses
  %i.ahu = phi i32 [ %i.ajl, %._crit_edge.loopexit.i198.i ], [ %i.ahk, %.preheader.i183.i ]
  %indvars.iv.next108.i186.i = add nsw i64 %indvars.iv107.i184.i, 1 ; 2 uses
  %i.ahv = sub nsw i32 %i.aht, %2
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = icmp slt i64 %indvars.iv.next108.i186.i, %i.ahw
  br i1 %i.ahx, label %.preheader.i183.i, label %._crit_edge101.i179.i, !llvm.loop !163

bb.ds:                                            ; preds = %bb.du, %.lr.ph.i187.i
  %indvars.iv.i188.i = phi i64 [ %i.afo, %.lr.ph.i187.i ], [ %indvars.iv.next.i197.i, %bb.du ] ; 5 uses
  %i.ahy = add nsw i64 %indvars.iv.i188.i, %i.ahe ; 2 uses
  %i.ahz = load i32, ptr %i.afi, align 4, !tbaa !77
  %i.aia = icmp slt i32 %i.ahz, 2                 ; 3 uses
  %i.aib = load i64, ptr %i.afk, align 8          ; 3 uses
  %i.aic = mul i64 %i.aib, %i.ahn
  %.sink.idx.i.i189.i = select i1 %i.aia, i64 0, i64 %i.aic
  %.sink.i.i190.i = getelementptr inbounds nuw i8, ptr %i.agy, i64 %.sink.idx.i.i189.i ; 2 uses
  %i.aid = getelementptr inbounds [8 x i8], ptr %.sink.i.i190.i, i64 %i.ahy
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !12
  %i.aif = add nsw i64 %indvars.iv.i188.i, %i.ahf ; 2 uses
  %i.aig = getelementptr inbounds [8 x i8], ptr %.sink.i.i190.i, i64 %i.aif
  %i.aih = load double, ptr %i.aig, align 8, !tbaa !12
  %i.aii = mul i64 %i.aib, %i.aho
  %.sink.idx.i89.i191.i = select i1 %i.aia, i64 0, i64 %i.aii
  %.sink.i90.i192.i = getelementptr inbounds nuw i8, ptr %i.agy, i64 %.sink.idx.i89.i191.i ; 2 uses
  %i.aij = getelementptr inbounds [8 x i8], ptr %.sink.i90.i192.i, i64 %i.ahy
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !12
  %i.ail = getelementptr inbounds [8 x i8], ptr %.sink.i90.i192.i, i64 %i.aif
  %i.aim = fmul double %i.aih, %i.ahb
  %i.ain = call double @llvm.fmuladd.f64(double %i.agx, double %i.aie, double %i.aim)
  %i.aio = call double @llvm.fmuladd.f64(double %i.aha, double %i.aik, double %i.ain)
  %i.aip = load double, ptr %i.ail, align 8, !tbaa !12
  %i.aiq = call double @llvm.fmuladd.f64(double %i.agz, double %i.aip, double %i.aio)
  %i.air = fptrunc double %i.aiq to float
  %i.ais = fpext float %i.air to double           ; 2 uses
  %i.ait = mul i64 %i.aib, %indvars.iv107.i184.i
  %.sink.idx.i93.i193.i = select i1 %i.aia, i64 0, i64 %i.ait
  %.sink.i94.i194.i = getelementptr inbounds nuw i8, ptr %i.agy, i64 %.sink.idx.i93.i193.i
  %i.aiu = getelementptr inbounds [8 x i8], ptr %.sink.i94.i194.i, i64 %indvars.iv.i188.i
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !12 ; 2 uses
  %i.aiw = fcmp olt double %i.aiv, %i.ais
  br i1 %i.aiw, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aix = fsub double %i.ais, %i.aiv
  %i.aiy = call noundef double @llvm.fabs.f64(double %i.aix)
  %i.aiz = fcmp olt double %i.aiy, f0x3E80000000000000
  %i.aja = zext i1 %i.aiz to i32
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.ajb = phi i32 [ 1, %bb.ds ], [ %i.aja, %bb.dt ]
  %i.ajc = sub nsw i64 %indvars.iv.i188.i, %i.afo
  %i.ajd = load i32, ptr %i.afl, align 4, !tbaa !77
  %i.aje = icmp slt i32 %i.ajd, 2
  %i.ajf = load i64, ptr %i.afn, align 8
  %i.ajg = mul i64 %i.ajf, %i.ahp
  %.sink.idx.i97.i195.i = select i1 %i.aje, i64 0, i64 %i.ajg
  %.sink.i98.i196.i = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %.sink.idx.i97.i195.i
  %i.ajh = getelementptr inbounds [4 x i8], ptr %.sink.i98.i196.i, i64 %i.ajc ; 2 uses
  %i.aji = shl nuw i32 %i.ajb, %.071102.i178.i
  %i.ajj = load i32, ptr %i.ajh, align 4, !tbaa !53
  %i.ajk = add nsw i32 %i.ajj, %i.aji
  store i32 %i.ajk, ptr %i.ajh, align 4, !tbaa !53
  %indvars.iv.next.i197.i = add nsw i64 %indvars.iv.i188.i, 1 ; 2 uses
  %i.ajl = load i32, ptr %i.aer, align 4, !tbaa !79 ; 2 uses
  %i.ajm = sub nsw i32 %i.ajl, %2
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = icmp slt i64 %indvars.iv.next.i197.i, %i.ajn
  br i1 %i.ajo, label %bb.ds, label %._crit_edge.loopexit.i198.i, !llvm.loop !164

bb.dv:                                            ; preds = %bb.dq, %bb.dp
  %.pn80.pn.i174.i = phi { ptr, i32 } [ %i.afr, %bb.dq ], [ %i.afq, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.do
  %.pn80.pn.pn.i173.i = phi { ptr, i32 } [ %.pn80.pn.i174.i, %bb.dv ], [ %i.afp, %bb.do ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZN2cv4faceL5elbp_IdEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i: ; preds = %._crit_edge101.i179.i, %bb.dn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN2cv4faceL4elbpERKNS_11_InputArrayERKNS_12_OutputArrayEii.exit

bb.dx:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull @.str.17, i32 noundef %i.j)
          to label %.noexc28 unwind label %bb.ea

.noexc28:                                         ; preds = %bb.dx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv4faceL4elbpERKNS_11_InputArrayERKNS_12_OutputArrayEii, ptr noundef nonnull @.str.11, i32 noundef 265) #23
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %.noexc28
  unreachable

bb.dz:                                            ; preds = %.noexc28
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  %i.ajq = load ptr, ptr %25, align 8, !tbaa !52  ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ajs = icmp eq ptr %i.ajq, %i.ajr
  br i1 %i.ajs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dz
  %i.ajt = load i64, ptr %i.ajr, align 8, !tbaa !51
  %i.aju = add i64 %i.ajt, 1
  call void @_ZdlPvm(ptr noundef %i.ajq, i64 noundef %i.aju) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %.body

_ZN2cv4faceL4elbpERKNS_11_InputArrayERKNS_12_OutputArrayEii.exit: ; preds = %_ZN2cv4faceL5elbp_IdEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, %_ZN2cv4faceL5elbp_IfEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, %_ZN2cv4faceL5elbp_IiEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, %_ZN2cv4faceL5elbp_ItEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, %_ZN2cv4faceL5elbp_IsEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, %_ZN2cv4faceL5elbp_IhEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i, %_ZN2cv4faceL5elbp_IcEEvRKNS_11_InputArrayERKNS_12_OutputArrayEii.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  ret void

bb.ea:                                            ; preds = %bb.dx, %bb.dh, %bb.dg, %bb.df, %bb.cp, %bb.co, %bb.cn, %bb.bx, %bb.bw, %bb.bv, %bb.bf, %bb.be, %bb.bd, %bb.an, %bb.am, %bb.al, %bb.v, %bb.u, %bb.t, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.dw, %bb.de, %bb.cm, %bb.bu, %bb.bc, %bb.ak, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ajp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ajv, %bb.ea ], [ %.pn80.pn.pn.i.i, %bb.s ], [ %.pn80.pn.pn.i33.i, %bb.ak ], [ %.pn80.pn.pn.i61.i, %bb.bc ], [ %.pn80.pn.pn.i89.i, %bb.bu ], [ %.pn80.pn.pn.i117.i, %bb.cm ], [ %.pn80.pn.pn.i145.i, %bb.de ], [ %.pn80.pn.pn.i173.i, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4faceL17spatial_histogramERKNS_11_InputArrayEiiib(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Range", align 4         ; 5 uses
  %6 = alloca %"class.cv::Range", align 8         ; 4 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %8 = alloca %"class.cv::Mat_", align 8          ; 10 uses
  %9 = alloca %"class.cv::Mat_", align 8          ; 10 uses
  %10 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.3", align 1 ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::Range", align 4        ; 6 uses
  %18 = alloca %"class.cv::Range", align 4        ; 6 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 9 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !193
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74, !noalias !193
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8
  %24 = load <2 x i32>, ptr %i.e, align 8, !tbaa !53
  %25 = insertelement <2 x i32> poison, i32 %4, i64 0
  %26 = insertelement <2 x i32> %25, i32 %3, i64 1
  %27 = sdiv <2 x i32> %24, %26                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.f = mul nsw i32 %4, %3
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i32 noundef %i.f, i32 noundef %2, i32 noundef 5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #20
  %i.g = load ptr, ptr %15, align 8, !tbaa !199, !noalias !200 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #20
  br label %bb.h

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #20
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.o = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  br i1 %i.o, label %bb.f, label %.preheader56

.preheader56:                                     ; preds = %bb.e
  %i.p = icmp sgt i32 %4, 0
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge74.split

.preheader.lr.ph:                                 ; preds = %.preheader56
  %i.q = icmp sgt i32 %3, 0
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.w = add nsw i32 %2, -1                       ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 16
  br i1 %i.q, label %.preheader.preheader, label %._crit_edge74.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %28 = extractelement <2 x i32> %27, i64 0       ; 2 uses
  %29 = extractelement <2 x i32> %27, i64 1       ; 2 uses
  br label %.preheader

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 1, i32 noundef 1)
          to label %bb.au unwind label %bb.i

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.k, %.body ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.aw

bb.i:                                             ; preds = %bb.f, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.02473 = phi i32 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.02572 = phi i32 [ %i.bn, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.ac = mul nsw i32 %.02473, %28
  %i.ad = add nuw nsw i32 %.02473, 1              ; 3 uses
  %i.ae = mul nsw i32 %i.ad, %28
  br label %bb.j

._crit_edge74.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader56
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 1, i32 noundef 1)
          to label %bb.au unwind label %bb.at

._crit_edge:                                      ; preds = %bb.aj
  %exitcond78.not = icmp eq i32 %i.ad, %4
  br i1 %exitcond78.not, label %._crit_edge74.split, label %.preheader, !llvm.loop !185

bb.j:                                             ; preds = %.preheader, %bb.aj
  %.071 = phi i32 [ 0, %.preheader ], [ %i.ag, %bb.aj ] ; 2 uses
  %.170 = phi i32 [ %.02572, %.preheader ], [ %i.bn, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store i32 %i.ac, ptr %17, align 4, !tbaa !202
  store i32 %i.ae, ptr %i.r, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.af = mul nsw i32 %.071, %29
  %i.ag = add nuw nsw i32 %.071, 1                ; 3 uses
  %i.ah = mul nsw i32 %i.ag, %29
  store i32 %i.af, ptr %18, align 4, !tbaa !202
  store i32 %i.ah, ptr %i.s, align 4, !tbaa !203
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %bb.k unwind label %bb.ak

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store i32 0, ptr %i.t, align 8, !tbaa !80
  store i32 0, ptr %i.u, align 4, !tbaa !81
  store i32 16842752, ptr %20, align 8, !tbaa !82
  store ptr %16, ptr %i.v, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !204
  %i.ai = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.k
  %i.aj = icmp eq i32 %i.ai, 65536
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !74, !noalias !205
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ak)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.al

bb.m:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.al

_ZNK2cv11_InputArray6getMatEi.exit.i:             ; preds = %bb.m, %bb.l
  %i.al = load i32, ptr %7, align 8, !tbaa !75, !noalias !204
  %i.am = and i32 %i.al, 4095
  switch i32 %i.am, label %bb.aa [
    i32 1, label %bb.n
    i32 0, label %.invoke.i
    i32 3, label %bb.s
    i32 2, label %.invoke.i
    i32 4, label %bb.w
    i32 5, label %.invoke.i
  ]

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !204
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #20, !noalias !204
  %i.an = load i32, ptr %8, align 8, !tbaa !75, !noalias !204
  %i.ao = and i32 %i.an, -4096
  %i.ap = or disjoint i32 %i.ao, 5
  store i32 %i.ap, ptr %8, align 8, !tbaa !75, !noalias !204
  %i.aq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit.i unwind label %bb.o, !noalias !204 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit.i:               ; preds = %bb.n
  invoke fastcc void @_ZN2cv4faceL6histc_ERKNS_3MatEiib(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef range(i32 -2147483648, 2147483647) %i.w)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit.i
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !204
  br label %bb.ag

bb.q:                                             ; preds = %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  %.pn28.i = phi { ptr, i32 } [ %i.as, %bb.q ], [ %i.ar, %bb.o ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !204
  br label %bb.af

bb.r:                                             ; preds = %.invoke.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !204
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #20, !noalias !204
  %i.au = load i32, ptr %9, align 8, !tbaa !75, !noalias !204
  %i.av = and i32 %i.au, -4096
  %i.aw = or disjoint i32 %i.av, 5
  store i32 %i.aw, ptr %9, align 8, !tbaa !75, !noalias !204
  %i.ax = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit35.i unwind label %bb.t, !noalias !204 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit35.i:             ; preds = %bb.s
  invoke fastcc void @_ZN2cv4faceL6histc_ERKNS_3MatEiib(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef range(i32 -2147483648, 2147483647) %i.w)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit35.i
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !204
  br label %bb.ag

bb.v:                                             ; preds = %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit35.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

.body33.i:                                        ; preds = %bb.v, %bb.t
  %.pn26.i = phi { ptr, i32 } [ %i.az, %bb.v ], [ %i.ay, %bb.t ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !204
  br label %bb.af

bb.w:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !204
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #20, !noalias !204
  %i.ba = load i32, ptr %10, align 8, !tbaa !75, !noalias !204
  %i.bb = and i32 %i.ba, -4096
  %i.bc = or disjoint i32 %i.bb, 5
  store i32 %i.bc, ptr %10, align 8, !tbaa !75, !noalias !204
  %i.bd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit38.i unwind label %bb.x, !noalias !204 ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit38.i:             ; preds = %bb.w
  invoke fastcc void @_ZN2cv4faceL6histc_ERKNS_3MatEiib(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef range(i32 -2147483648, 2147483647) %i.w)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit38.i
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !204
  br label %bb.ag

bb.z:                                             ; preds = %_ZN2cv4Mat_IfEC2ERKNS_3MatE.exit38.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

.body36.i:                                        ; preds = %bb.z, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.bf, %bb.z ], [ %i.be, %bb.x ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !204
  br label %bb.af

.invoke.i:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i, %_ZNK2cv11_InputArray6getMatEi.exit.i, %_ZNK2cv11_InputArray6getMatEi.exit.i
  invoke fastcc void @_ZN2cv4faceL6histc_ERKNS_3MatEiib(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef range(i32 -2147483648, 2147483647) %i.w)
          to label %bb.ag unwind label %bb.r

bb.aa:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !204
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ab unwind label %bb.ad, !noalias !204

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -205, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv4faceL5histcERKNS_11_InputArrayEiib, ptr noundef nonnull @.str.11, i32 noundef 311) #23
          to label %bb.ac unwind label %bb.ae, !noalias !204

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %11, align 8, !tbaa !52, !noalias !204 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ae
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !51, !noalias !204
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #22, !noalias !204
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ad
  %.pn30.i = phi { ptr, i32 } [ %i.bg, %bb.ad ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bh, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !204
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body36.i, %.body33.i, %bb.r, %.body.i
  %.pn30.pn.i = phi { ptr, i32 } [ %.pn30.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn28.i, %.body.i ], [ %i.at, %bb.r ], [ %.pn26.i, %.body33.i ], [ %.pn.i, %.body36.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !204
  br label %.body53
end_hunk_0
