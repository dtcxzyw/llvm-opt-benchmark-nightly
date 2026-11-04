Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/plane_solver?download=true
inline.NumInlined: 218
inline.NumDeleted: 143
begin_hunk_0_@_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i19) #14
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i19) #14
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 208 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !77

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #15
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !41
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac30PlaneModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac30PlaneModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #14, !inline_history !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac30PlaneModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4usac30PlaneModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac30PlaneModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #14
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac30PlaneModelNonMinimalSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac16NonMinimalSolver8estimateERKNS_3MatERKSt6vectorIiSaIiEEiRS5_IS2_SaIS2_EERKS5_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac30PlaneModelNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::PCA", align 8           ; 10 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = alloca [4 x double], align 16            ; 6 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !41     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #14
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit:      ; preds = %bb.a, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  invoke void @_ZN2cv19copyPointDataByIdxsERKNS_3MatERS0_RKSt6vectorIiSaIiEEiib(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !81
  store i32 16842752, ptr %7, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.j, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #14
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !81
  store i32 16842752, ptr %8, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.m, align 8, !tbaa !84
  invoke void @_ZN2cv3PCAC1ERKNS_11_InputArrayES3_ii(ptr noundef nonnull align 8 dereferenceable(624) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 1, i32 noundef 3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !45
  %.fr53 = freeze <2 x float> %i.q                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !45 ; 4 uses
  %i.t = call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr53)
  %i.u = fcmp oeq <2 x float> %i.t, splat (float +inf)
  %14 = bitcast <2 x i1> %i.u to i2
  %or.cond48 = icmp ne i2 %14, 0
  %i.v = call float @llvm.fabs.f32(float %i.s)
  %i.w = fcmp oeq float %i.v, +inf
  %or.cond50 = select i1 %or.cond48, i1 true, i1 %i.w
  br i1 %or.cond50, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = extractelement <2 x float> %.fr53, i64 0 ; 2 uses
  %i.y = fcmp oeq float %i.x, 0.000000e+00
  %i.z = extractelement <2 x float> %.fr53, i64 1 ; 2 uses
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  %or.cond = and i1 %i.y, %i.aa
  %i.ab = fcmp oeq float %i.s, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 %i.ab, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.x

bb.h:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 416
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %i.ai = fneg float %i.x
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !45
  %i.am = fneg float %i.al
  %i.an = fmul float %i.z, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !45
  %i.aq = fneg float %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ar = fpext <2 x float> %.fr53 to <2 x double>
  store <2 x double> %i.ar, ptr %i.a, align 16, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = call float @llvm.fmuladd.f32(float %i.ai, float %i.aj, float %i.an)
  %i.au = call float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.at)
  %i.av = insertelement <2 x float> poison, float %i.s, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.au, i64 1
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  store <2 x double> %i.ax, ptr %i.as, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 1, i32 noundef 4, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !42  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ay, ptr noundef nonnull align 8 dereferenceable(208) %12) #14
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.r

_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.n, %bb.m
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn40 = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %i.bf, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.s ], [ %i.be, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.t ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #14
  br label %bb.w

bb.v:                                             ; preds = %bb.d, %bb.e, %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.037 = phi i32 [ 1, %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.037

bb.w:                                             ; preds = %bb.u, %bb.h
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.u ], [ %i.ae, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @_ZN2cv3PCAD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %6) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.g
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.w ], [ %i.ad, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.f
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.x ], [ %i.ac, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac30PlaneModelNonMinimalSolverImpl28getMinimumRequiredSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac30PlaneModelNonMinimalSolverImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv4usac30PlaneModelNonMinimalSolverImpl8estimateERKSt6vectorIbSaIbEERS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac30PlaneModelNonMinimalSolverImpl21enforceRankConstraintEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26PlaneModelNonMinimalSolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

declare void @_ZN2cv19copyPointDataByIdxsERKNS_3MatERS0_RKSt6vectorIiSaIiEEiib(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN2cv3PCAC1ERKNS_11_InputArrayES3_ii(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #6

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3PCAD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #14
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { builtin allocsize(0) }
end_hunk_0
