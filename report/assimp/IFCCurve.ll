Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCCurve?download=true
inline.NumInlined: 647
inline.NumDeleted: 320
begin_hunk_0_@_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE17_M_realloc_insertIJRS5_bEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %.0911.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !116, !noalias !113
  store ptr null, ptr %i.ab, align 8, !alias.scope !116, !noalias !113
  store <2 x ptr> %i.ac, ptr %.012.i.i.i, align 8, !alias.scope !113, !noalias !116
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !116, !noalias !113
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !14, !alias.scope !116, !noalias !113, !noundef !11
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !113, !noalias !116
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ap, %.lr.ph.i.i.i28 ], [ %i.ai, %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.ao, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !alias.scope !121, !noalias !118
  store ptr null, ptr %i.aj, align 8, !alias.scope !121, !noalias !118
  store <2 x ptr> %i.ak, ptr %.012.i.i.i29, align 8, !alias.scope !118, !noalias !121
  store ptr null, ptr %.0911.i.i.i30, align 8, !alias.scope !121, !noalias !118
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !14, !alias.scope !121, !noalias !118, !noundef !11
  store i8 %i.an, ptr %i.al, align 8, !alias.scope !118, !noalias !121
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !21

_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ai, %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ap, %.lr.ph.i.i.i28 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #33
  br label %_ZNSt12_Vector_baseISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt4pairISt10shared_ptrIN6Assimp3IFC12BoundedCurveEEbESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33, %bb.g
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6Assimp3IFC12_GLOBAL__N_16CircleD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK6Assimp3IFC12_GLOBAL__N_15Conic8IsClosedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define internal void @_ZNK6Assimp3IFC12_GLOBAL__N_16Circle4EvalEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiVector3t) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, double noundef %2) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8
  %i.e = fneg double %i.d
  %i.f = fmul double %2, %i.e                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = tail call double @cos(double noundef %i.f) #30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load double, ptr %i.n, align 8, !noalias !123
  %i.p = fmul double %i.l, %i.o
  %i.q = tail call double @sin(double noundef %i.f) #30 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load double, ptr %i.s, align 8, !noalias !126
  %i.u = fmul double %i.q, %i.t
  %i.v = fadd double %i.p, %i.u
  %i.w = fmul double %i.k, %i.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load double, ptr %i.x, align 8, !noalias !129
  %i.z = fadd double %i.w, %i.y
  %i.aa = load <2 x double>, ptr %i.m, align 8, !noalias !123
  %i.ab = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = load <2 x double>, ptr %i.r, align 8, !noalias !126
  %i.af = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ag, %i.ae
  %i.ai = fadd <2 x double> %i.ad, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ak, %i.ai
  %i.am = load <2 x double>, ptr %i.g, align 8, !noalias !129
  %i.an = fadd <2 x double> %i.al, %i.am
  store <2 x double> %i.an, ptr %0, align 8, !alias.scope !129
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.z, ptr %i.ao, align 8, !alias.scope !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZNK6Assimp3IFC12_GLOBAL__N_15Conic18GetParametricRangeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8
  %i.e = fdiv double f0x401921FB54442D18, %i.d
  %.fca.1.insert.i = insertvalue { double, double } { double 0.000000e+00, double poison }, double %i.e, 1
  ret { double, double } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal noundef i64 @_ZNK6Assimp3IFC12_GLOBAL__N_15Conic19EstimateSampleCountEdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, double noundef %1, double noundef %2) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = fmul double %1, %i.d
  %i.f = fmul double %2, %i.d
  %i.g = tail call double @fmod(double noundef %i.e, double noundef f0x401921FB54442D18) #30
  %i.h = tail call double @fmod(double noundef %i.f, double noundef f0x401921FB54442D18) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !align !132
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.k, align 4
  %i.m = fpext float %i.l to double
  %i.n = fmul double %i.m, f0x400921FB54442D18
  %i.o = fdiv double %i.n, 1.800000e+02
  %i.p = fsub double %i.h, %i.g
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %i.s = fdiv double %i.r, %i.o
  %i.t = fptoui double %i.s to i64
  ret i64 %i.t
}

declare void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #8

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN6Assimp3IFC12_GLOBAL__N_15ConicD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #23 align 2 {
bb.a:
  tail call void @llvm.trap() #34
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6Assimp3IFC12_GLOBAL__N_17EllipseD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @_ZNK6Assimp3IFC12_GLOBAL__N_17Ellipse4EvalEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiVector3t) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, double noundef %2) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8
  %i.e = fneg double %i.d
  %i.f = fmul double %2, %i.e                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = tail call double @cos(double noundef %i.f) #30
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load double, ptr %i.m, align 8, !noalias !133
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load double, ptr %i.o, align 8, !noalias !136
  %i.q = tail call double @sin(double noundef %i.f) #30
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load double, ptr %i.s, align 8, !noalias !139
  %3 = load <2 x double>, ptr %i.l, align 8, !noalias !133
  %4 = load <2 x double>, ptr %i.j, align 8
  %5 = insertelement <2 x double> poison, double %i.k, i64 0
  %i.u = insertelement <2 x double> %5, double %i.q, i64 1
  %6 = fmul <2 x double> %4, %i.u                 ; 4 uses
  %i.v = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %3
  %7 = extractelement <2 x double> %6, i64 0
  %8 = fmul double %7, %i.n
  %i.x = load <2 x double>, ptr %i.g, align 8, !noalias !136
  %i.y = fadd <2 x double> %i.w, %i.x
  %9 = fadd double %8, %i.p
  %i.z = load <2 x double>, ptr %i.r, align 8, !noalias !139
  %10 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %11 = fmul <2 x double> %10, %i.z
  %12 = extractelement <2 x double> %6, i64 1
  %13 = fmul double %12, %i.t
  %i.aa = fadd <2 x double> %i.y, %11
  %14 = fadd double %9, %13
  store <2 x double> %i.aa, ptr %0, align 8, !alias.scope !142
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %14, ptr %i.ab, align 8, !alias.scope !142
  ret void
}

declare void @_ZN6Assimp3IFC13ConvertVectorER10aiVector3tIdERKNS0_10Schema_2x39IfcVectorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x39IfcVectorEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.46", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x39IfcVectorE, i64 -1) #30 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x39IfcVectorEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #32
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x39IfcVectorEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6Assimp3IFC12_GLOBAL__N_14LineD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK6Assimp3IFC12_GLOBAL__N_14Line8IsClosedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_ZNK6Assimp3IFC12_GLOBAL__N_14Line4EvalEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiVector3t) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, double noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load double, ptr %i.c, align 8, !noalias !145
  %i.e = fmul double %2, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load double, ptr %i.f, align 8, !noalias !148
  %i.h = fadd double %i.e, %i.g
  %i.i = load <2 x double>, ptr %i.b, align 8, !noalias !145
  %i.j = insertelement <2 x double> poison, double %2, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i
  %i.m = load <2 x double>, ptr %i.a, align 8, !noalias !148
  %i.n = fadd <2 x double> %i.l, %i.m
  store <2 x double> %i.n, ptr %0, align 8, !alias.scope !148
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.h, ptr %i.o, align 8, !alias.scope !148
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { double, double } @_ZNK6Assimp3IFC12_GLOBAL__N_14Line18GetParametricRangeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret { double, double } { double -inf, double +inf }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 1, 3) i64 @_ZNK6Assimp3IFC12_GLOBAL__N_14Line19EstimateSampleCountEdd(ptr nofree nonnull readnone align 8 captures(none) %0, double noundef %1, double noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = fcmp oeq double %1, %2
  %i.b = select i1 %i.a, i64 1, i64 2
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6Assimp3IFC12_GLOBAL__N_14Line14SampleDiscreteERNS0_8TempMeshEdd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, double noundef %2, double noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.aiVector3t, align 8          ; 5 uses
  %5 = alloca %class.aiVector3t, align 8          ; 5 uses
  %6 = alloca %class.aiVector3t, align 8          ; 5 uses
  %i.a = fcmp oeq double %2, %3
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8                ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #32
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = sdiv exact i64 %i.n, 24                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 384307168202282325)
  %i.t = select i1 %i.r, i64 384307168202282325, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = mul nuw nsw i64 %i.t, 24
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #31 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
end_hunk_0
