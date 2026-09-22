Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN2cv7detailsL7polyfitERKNS_3MatES3_RS1_i:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gg = phi i32 [ 6, %bb.p ], [ %i.gf, %bb.q ]
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %i.gg, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret void

bb.t:                                             ; preds = %._crit_edge70
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.u ], [ %i.gh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.gj, %bb.w ], [ %.pn43.pn.pn, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.n
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %bb.x ], [ %.pn41, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.body

.body:                                            ; preds = %bb.i, %bb.y
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.y ], [ %i.u, %bb.i ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3MatC2IdEERKSt6vectorIT_SaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  store i32 1124024326, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.g = load ptr, ptr %1, align 8, !tbaa !239
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.d, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.r, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, i8 0, i64 72, i1 false), !tbaa !86
  %i.u = load i32, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.u, ptr %i.v, align 4, !tbaa !48
  store i64 8, ptr %i.s, align 8, !tbaa !86
  %i.w = load ptr, ptr %1, align 8, !tbaa !470    ; 6 uses
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !470  ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.n, align 8, !tbaa !66
  store ptr %i.w, ptr %i.o, align 8, !tbaa !216
  %i.z = sext i32 %i.u to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !81
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !217
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef nonnull %i.w, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !62
  store ptr %0, ptr %i.ah, align 8, !tbaa !63
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat_", align 8          ; 6 uses
  %6 = alloca %"class.cv::MatCommaInitializer_", align 8 ; 5 uses
  %7 = alloca %"class.cv::Mat_", align 8          ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 23 uses
  %9 = alloca %"class.cv::Mat_", align 8          ; 6 uses
  %10 = alloca %"class.cv::MatCommaInitializer_", align 8 ; 5 uses
  %11 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.std::vector.69", align 8   ; 11 uses
  %16 = alloca %"class.std::vector.69", align 8   ; 11 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %.val136 = load float, ptr %0, align 4, !tbaa !164 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val137 = load float, ptr %i.c, align 4        ; 3 uses
  %.val138 = load float, ptr %1, align 4, !tbaa !164 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val139 = load float, ptr %i.d, align 4        ; 3 uses
  %i.e = fcmp oeq float %.val136, %.val138
  %i.f = fcmp oeq float %.val137, %.val139
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val134 = load float, ptr %2, align 4, !tbaa !164 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val135 = load float, ptr %i.h, align 4        ; 3 uses
  %i.i = fcmp oeq float %.val136, %.val134
  %i.j = fcmp oeq float %.val137, %.val135
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.bg, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val130 = load float, ptr %3, align 4, !tbaa !164 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.val131 = load float, ptr %i.l, align 4        ; 3 uses
  %i.m = fcmp oeq float %.val136, %.val130
  %i.n = fcmp oeq float %.val137, %.val131
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.bg, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fcmp oeq float %.val138, %.val134
  %i.q = fcmp oeq float %.val139, %.val135
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %bb.bg, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = fcmp oeq float %.val138, %.val130
  %i.t = fcmp oeq float %.val139, %.val131
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.bg, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fcmp oeq float %.val134, %.val130
  %i.w = fcmp oeq float %.val135, %.val131
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %bb.bg, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load atomic i8, ptr @_ZGVZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_E3src acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.o, !prof !471

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_E3src) #33
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef 4, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.ap

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %bb.i
  invoke fastcc void @_ZN2cvlsIdiEENS_20MatCommaInitializer_IT_EERKNS_4Mat_IS2_EET0_(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.j unwind label %bb.aq

bb.j:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv20MatCommaInitializer_IdEcmIiEERS1_T_(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 10)
          to label %bb.k unwind label %bb.aq

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv20MatCommaInitializer_IdEcmIiEERS1_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef 20)
          to label %bb.l unwind label %bb.aq

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv20MatCommaInitializer_IdEcmIiEERS1_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i32 noundef 30)
          to label %bb.m unwind label %bb.aq

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK2cv20MatCommaInitializer_IdEcvNS_4Mat_IdEEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat_") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %bb.n unwind label %bb.aq

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) @_ZZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_E3src, ptr noundef nonnull align 8 dereferenceable(208) %5) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ae = call i32 @__cxa_atexit(ptr nonnull @_ZN2cv3MatD1Ev, ptr nonnull @_ZZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_E3src, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_E3src) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.g
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !40 ; 2 uses
  %i.ag = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.aj = load <2 x float>, ptr %3, align 4, !tbaa !40
  %i.ak = load <2 x float>, ptr %0, align 4, !tbaa !40 ; 3 uses
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fsub <2 x float> %i.ah, %i.al
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fsub <2 x float> %i.ai, %i.an
  %i.ap = fsub <2 x float> %i.aj, %i.ak           ; 2 uses
  %i.aq = fpext <2 x float> %i.am to <2 x double> ; 2 uses
  %i.ar = fpext <2 x float> %i.ao to <2 x double> ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ar
  %i.at = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aq, <2 x double> %i.as)
  %i.au = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.at)
  %i.av = fptrunc <2 x double> %i.au to <2 x float> ; 3 uses
  %i.aw = extractelement <2 x float> %i.ap, i64 0
  %i.ax = fpext float %i.aw to double             ; 2 uses
  %i.ay = extractelement <2 x float> %i.ap, i64 1
  %i.az = fpext float %i.ay to double             ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.ba)
  %sqrt.i170 = call noundef double @llvm.sqrt.f64(double %i.bb)
  %i.bc = fptrunc double %sqrt.i170 to float      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 1, i32 noundef 4, i32 noundef 6)
  invoke fastcc void @_ZN2cvlsIdiEENS_20MatCommaInitializer_IT_EERKNS_4Mat_IS2_EET0_(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.p unwind label %bb.as

bb.p:                                             ; preds = %bb.o
  %i.bd = extractelement <2 x float> %i.av, i64 1
  %i.be = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv20MatCommaInitializer_IdEcmIfEERS1_T_(ptr noundef nonnull align 8 dereferenceable(40) %10, float noundef %i.bd)
          to label %bb.q unwind label %bb.as

bb.q:                                             ; preds = %bb.p
  %i.bf = extractelement <2 x float> %i.av, i64 0
  %i.bg = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv20MatCommaInitializer_IdEcmIfEERS1_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.be, float noundef %i.bf)
          to label %bb.r unwind label %bb.as

bb.r:                                             ; preds = %bb.q
  %i.bh = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv20MatCommaInitializer_IdEcmIfEERS1_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, float noundef %i.bc)
          to label %bb.s unwind label %bb.as

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK2cv20MatCommaInitializer_IdEcvNS_4Mat_IdEEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat_") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.bh)
          to label %bb.t unwind label %bb.as

bb.t:                                             ; preds = %bb.s
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.bi, align 8, !tbaa !137
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.bj, align 4, !tbaa !138
  store i32 16842752, ptr %13, align 8, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @_ZZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_E3src, ptr %i.bk, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.bl, align 8, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.bm, align 4, !tbaa !138
  store i32 16842752, ptr %14, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %8, ptr %i.bn, align 8, !tbaa !63
  invoke fastcc void @_ZN2cv7detailsL16findHomography1DERKNS_11_InputArrayES3_(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !139
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !66 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.bt = icmp slt i32 %i.bp, 2
  %i.bu = load i64, ptr %i.bs, align 8
  %.sink.idx.i = select i1 %i.bt, i64 0, i64 %i.bu
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sink.idx.i
  %i.bv = load <2 x double>, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %i.bw = load <2 x double>, ptr %.sink.i, align 8, !tbaa !65 ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> splat (double 4.000000e+01), <2 x double> %i.by) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  %i.cb = extractelement <2 x double> %i.bz, i64 1
  %i.cc = fdiv double %i.ca, %i.cb
  %i.cd = fptrunc double %i.cc to float
  %i.ce = fsub float %i.cd, %i.bc                 ; 3 uses
  %i.cf = load <2 x float>, ptr %2, align 4, !tbaa !40
  %i.cg = load <2 x float>, ptr %3, align 4, !tbaa !40 ; 2 uses
  %i.ch = fsub <2 x float> %i.cg, %i.cf
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ci, %i.ci
  %i.cj = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ck = extractelement <2 x double> %i.ci, i64 0 ; 2 uses
  %i.cl = call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double %i.cj)
  %sqrt.i184 = call noundef double @llvm.sqrt.f64(double %i.cl)
  %i.cm = insertelement <2 x double> poison, double %sqrt.i184, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x double> %i.ci, %i.cn
  %i.cp = fptrunc <2 x double> %i.co to <2 x float> ; 4 uses
  %i.cq = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd <2 x float> %i.cg, %i.cs
  store <2 x float> %i.ct, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !65
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.w unwind label %bb.av

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cu = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fsub <2 x float> %i.cv, %i.av
  %i.cx = load ptr, ptr %15, align 8, !tbaa !239  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = fpext <2 x float> %i.cw to <2 x double>
  store <2 x double> %i.cz, ptr %i.cy, align 8, !tbaa !65
  %i.da = fpext float %i.bc to double
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !65
  %i.dc = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.dd = fneg float %i.dc
  %i.de = load ptr, ptr %16, align 8, !tbaa !239
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.val153 = load float, ptr %3, align 4, !tbaa !164
  %.val154 = load float, ptr %i.l, align 4, !tbaa !165
  %i.dg = load <2 x float>, ptr %1, align 4, !tbaa !40 ; 2 uses
  %i.dh = load <2 x float>, ptr %0, align 4, !tbaa !40 ; 2 uses
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> %i.dh, <2 x i32> <i32 0, i32 2>
  %19 = insertelement <2 x float> poison, float %.val153, i64 0
  %i.dj = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fsub <2 x float> %i.di, %i.dj
  %i.dl = shufflevector <2 x float> %i.dg, <2 x float> %i.dh, <2 x i32> <i32 1, i32 3>
  %20 = insertelement <2 x float> poison, float %.val154, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fsub <2 x float> %i.dl, %21
  %i.dn = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.do = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = fmul <2 x float> %i.dk, %i.do
  %i.dq = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dm, <2 x float> %i.dp)
  %i.dt = fpext <2 x float> %i.ds to <2 x double>
  store <2 x double> %i.dt, ptr %i.df, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  invoke void @_ZN2cv3MatC2IdEERKSt6vectorIT_SaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(24) %15, i1 noundef zeroext false)
          to label %bb.x unwind label %bb.aw

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  invoke void @_ZN2cv3MatC2IdEERKSt6vectorIT_SaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(24) %16, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.ax

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_ZN2cv7detailsL7polyfitERKNS_3MatES3_RS1_i(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.z unwind label %bb.ay

bb.z:                                             ; preds = %bb.y
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !139
  %i.dw = icmp slt i32 %i.dv, 2                   ; 2 uses
  br i1 %i.dw, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = load i32, ptr %8, align 8, !tbaa !67
  %i.dy = and i32 %i.dx, 16384
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = icmp eq i32 %i.eb, 1
  %or.cond.i = select i1 %i.dz, i1 true, i1 %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !66 ; 7 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !65 ; 3 uses
  br i1 %or.cond.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !48
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.ae, label %bb.af

bb.ac:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !66 ; 3 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !65
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  br label %_ZN2cv3Mat2atIdEERT_i.exit199

bb.ad:                                            ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  br label %_ZN2cv3Mat2atIdEERT_i.exit199

bb.ae:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !86
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ep
  br label %_ZN2cv3Mat2atIdEERT_i.exit199

bb.af:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !74
  %.fr = freeze i32 %i.es                         ; 3 uses
  %i.et = add i32 %.fr, 1
  %i.eu = icmp ult i32 %i.et, 3
  %i.ev = select i1 %i.eu, i32 %.fr, i32 0        ; 2 uses
  %i.ew = mul nsw i32 %i.ev, %.fr
  %i.ex = sub nsw i32 1, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !86
  %i.fa = sext i32 %i.ev to i64
  %i.fb = mul i64 %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fb
  %i.fd = sext i32 %i.ex to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd
  br label %_ZN2cv3Mat2atIdEERT_i.exit199

_ZN2cv3Mat2atIdEERT_i.exit199:                    ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %i.ff = phi ptr [ %i.ek, %bb.ac ], [ %i.ee, %bb.ad ], [ %i.ee, %bb.ae ], [ %i.ee, %bb.af ] ; 4 uses
  %i.fg = phi double [ %i.el, %bb.ac ], [ %i.ef, %bb.ad ], [ %i.ef, %bb.ae ], [ %i.ef, %bb.af ]
  %.0.i198 = phi ptr [ %i.em, %bb.ac ], [ %i.en, %bb.ad ], [ %i.eq, %bb.ae ], [ %i.fe, %bb.af ]
  %i.fh = load double, ptr %.0.i198, align 8, !tbaa !65
  %i.fi = call noundef float @llvm.fabs.f32(float %i.ce)
  %i.fj = fpext float %i.fi to double
  %i.fk = fneg double %i.fh
  %i.fl = call double @llvm.fmuladd.f64(double %i.fk, double %i.fj, double %i.fg)
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit199
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  br label %bb.am

bb.ah:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit199
  %i.fn = load i32, ptr %8, align 8, !tbaa !67
  %i.fo = and i32 %i.fn, 16384
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = icmp eq i32 %i.fr, 1
  %or.cond.i200 = select i1 %i.fp, i1 true, i1 %i.fs
  br i1 %or.cond.i200, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !48
  %i.fw = icmp eq i32 %i.fv, 1
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !86
  %i.fz = shl i64 %i.fy, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fz
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !74 ; 3 uses
  %i.gd = sdiv i32 2, %i.gc                       ; 2 uses
  %i.ge = mul nsw i32 %i.gd, %i.gc                ; 0 uses
  %.recomposed = srem i32 2, %i.gc
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !86
  %i.gh = sext i32 %i.gd to i64
  %i.gi = mul i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gi
  %i.gk = sext i32 %.recomposed to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gk
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %bb.ai, %bb.ak, %bb.al
  %.0.i201 = phi ptr [ %i.fm, %bb.ag ], [ %i.ft, %bb.ai ], [ %i.ga, %bb.ak ], [ %i.gl, %bb.al ]
  %i.gm = load double, ptr %.0.i201, align 8, !tbaa !65
  %i.gn = fpext float %i.ce to double             ; 2 uses
  %i.go = fmul double %i.gm, %i.gn
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double %i.gn, double %i.fl)
  %i.gq = fsub float 0.000000e+00, %i.dc
  %i.gr = insertelement <2 x float> %i.dn, float %i.gq, i64 1
  %i.gs = fpext <2 x float> %i.gr to <2 x double>
  %i.gt = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x double> %i.gu, %i.gs
  %i.gw = fptrunc <2 x double> %i.gv to <2 x float>
  %i.gx = load <2 x float>, ptr %4, align 4, !tbaa !40
  %i.gy = fadd <2 x float> %i.gx, %i.gw
  store <2 x float> %i.gy, ptr %4, align 4, !tbaa !40
  %i.gz = load ptr, ptr %16, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !240
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %i.hf = load ptr, ptr %15, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i205 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i205, label %_ZNSt6vectorIdSaIdEED2Ev.exit206, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !240
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit206

_ZNSt6vectorIdSaIdEED2Ev.exit206:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.bg

bb.ap:                                            ; preds = %bb.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN2cv4Mat_IdEC2Eii.exit, %bb.m, %bb.l, %bb.k, %bb.j
end_hunk_0
