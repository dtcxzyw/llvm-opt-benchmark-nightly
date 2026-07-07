inline.NumInlined: 967
inline.NumDeleted: 447
begin_hunk_0_@_ZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplE:bb.a
          to label %bb.cg unwind label %.body

bb.cg:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit139
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !11 ; 2 uses
  %.not.i140 = icmp eq ptr %i.fo, null
  br i1 %.not.i140, label %_ZNSt14_Function_baseD2Ev.exit141, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fp = invoke noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit141 unwind label %bb.ci ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit141:                ; preds = %bb.cg, %bb.ch
  %i.fs = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %30, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_18E9_M_invokeERKSt9_Any_dataS2_", ptr %i.ft, align 8, !tbaa !12
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.fs, align 8, !tbaa !11
  invoke void @_ZN16OpenColorIO_v2_528BuiltinTransformRegistryImpl10addBuiltinEPKcS2_St8functionIFvRNS_10OpRcPtrVecEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %30)
          to label %bb.cj unwind label %.body

bb.cj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit141
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !11 ; 2 uses
  %.not.i142 = icmp eq ptr %i.fu, null
  br i1 %.not.i142, label %_ZNSt14_Function_baseD2Ev.exit143, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fv = invoke noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit143 unwind label %bb.cl ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit143:                ; preds = %bb.cj, %bb.ck
  %i.fy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %31, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19E9_M_invokeERKSt9_Any_dataS2_", ptr %i.fz, align 8, !tbaa !12
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.fy, align 8, !tbaa !11
  invoke void @_ZN16OpenColorIO_v2_528BuiltinTransformRegistryImpl10addBuiltinEPKcS2_St8functionIFvRNS_10OpRcPtrVecEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull %31)
          to label %bb.cm unwind label %.body

bb.cm:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit143
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !11 ; 2 uses
  %.not.i144 = icmp eq ptr %i.ga, null
  br i1 %.not.i144, label %_ZNSt14_Function_baseD2Ev.exit145, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gb = invoke noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit145 unwind label %bb.co ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit145:                ; preds = %bb.cm, %bb.cn
  %i.ge = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %32, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20E9_M_invokeERKSt9_Any_dataS2_", ptr %i.gf, align 8, !tbaa !12
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.ge, align 8, !tbaa !11
  invoke void @_ZN16OpenColorIO_v2_528BuiltinTransformRegistryImpl10addBuiltinEPKcS2_St8functionIFvRNS_10OpRcPtrVecEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull %32)
          to label %bb.cp unwind label %.body

bb.cp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit145
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !11 ; 2 uses
  %.not.i146 = icmp eq ptr %i.gg, null
  br i1 %.not.i146, label %_ZNSt14_Function_baseD2Ev.exit147, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.gh = invoke noundef zeroext i1 %i.gg(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit147 unwind label %bb.cr ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit147:                ; preds = %bb.cp, %bb.cq
  %i.gk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %33, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21E9_M_invokeERKSt9_Any_dataS2_", ptr %i.gl, align 8, !tbaa !12
  store ptr @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.gk, align 8, !tbaa !11
  invoke void @_ZN16OpenColorIO_v2_528BuiltinTransformRegistryImpl10addBuiltinEPKcS2_St8functionIFvRNS_10OpRcPtrVecEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull %33)
          to label %bb.cs unwind label %.body

bb.cs:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit147
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !11 ; 2 uses
  %.not.i148 = icmp eq ptr %i.gm, null
  br i1 %.not.i148, label %_ZNSt14_Function_baseD2Ev.exit149, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gn = invoke noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit149 unwind label %bb.cu ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit149:                ; preds = %bb.cs, %bb.ct
  ret void

.body:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit147, %_ZNSt14_Function_baseD2Ev.exit145, %_ZNSt14_Function_baseD2Ev.exit143, %_ZNSt14_Function_baseD2Ev.exit141, %_ZNSt14_Function_baseD2Ev.exit139, %_ZNSt14_Function_baseD2Ev.exit137, %_ZNSt14_Function_baseD2Ev.exit135, %_ZNSt14_Function_baseD2Ev.exit133, %_ZNSt14_Function_baseD2Ev.exit131, %_ZNSt14_Function_baseD2Ev.exit129, %_ZNSt14_Function_baseD2Ev.exit127, %_ZNSt14_Function_baseD2Ev.exit125, %bb.bd, %bb.az, %_ZNSt14_Function_baseD2Ev.exit103, %bb.ao, %bb.ak, %bb.ac, %bb.y, %bb.q, %bb.m, %bb.e, %bb.a
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #19
  unreachable
}

declare void @_ZN16OpenColorIO_v2_528BuiltinTransformRegistryImpl10addBuiltinEPKcS2_St8functionIFvRNS_10OpRcPtrVecEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #9 align 2 {
bb.a:
  %.val = load double, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.a = tail call noundef double @llvm.fabs.f64(double %.val)
  %i.b = tail call double @pow(double noundef %i.a, double noundef f0x3F89F9B5860989B1) #20, !tbaa !3 ; 2 uses
  %i.c = fadd double %i.b, f0xBFEAC00000000000    ; 2 uses
  %i.d = fcmp ogt double %i.c, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.d, double %i.c, double 0.000000e+00
  %i.e = tail call double @llvm.fmuladd.f64(double %i.b, double -1.868750e+01, double f0x4032DA0000000000)
  %i.f = fdiv double %.sroa.speculated.i.i.i, %i.e
  %i.g = tail call double @pow(double noundef %i.f, double noundef f0x40191C0D56E7162B) #20, !tbaa !3
  %i.h = fmul double %i.g, 1.000000e+02
  %i.i = tail call double @llvm.copysign.f64(double %i.h, double %.val)
  %i.j = fptrunc double %i.i to float
  ret float %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS_10OpRcPtrVecEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GeneratePQToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #9 align 2 {
bb.a:
  %.val = load double, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.a = fmul double %.val, 1.000000e-02
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = tail call double @pow(double noundef %i.b, double noundef f0x3FC4640000000000) #20, !tbaa !3 ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.c, double f0x4032DA0000000000, double f0x3FEAC00000000000)
  %3 = tail call double @llvm.fmuladd.f64(double %i.c, double 1.868750e+01, double 1.000000e+00)
  %i.d = fdiv double %2, %3                       ; 2 uses
  %i.e = fcmp ogt double %i.d, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.e, double %i.d, double 0.000000e+00
  %i.f = tail call double @pow(double noundef %.sroa.speculated.i.i.i, double noundef f0x4053B60000000000) #20, !tbaa !3
  %i.g = tail call double @llvm.copysign.f64(double %i.f, double %.val)
  %i.h = fptrunc double %i.g to float
  ret float %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS_10OpRcPtrVecEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #11 align 2 {
bb.a:
  %.val = load double, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.a = tail call noundef double @llvm.fabs.f64(double %.val) ; 2 uses
  %i.b = fcmp olt double %i.a, 5.000000e-01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fmul nnan double %.val, %.val
  br label %"_ZSt10__invoke_rIfRZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS0_10OpRcPtrVecEE3$_0JdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = fadd double %i.a, f0xBFE9D9B50D540AEA
  %i.e = fdiv double %i.d, f0x3FC6E3FE014D320D
  %i.f = tail call double @exp(double noundef %i.e) #20, !tbaa !3
  %i.g = fadd double %i.f, f0x3FB23803FD659BE6
  br label %"_ZSt10__invoke_rIfRZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS0_10OpRcPtrVecEE3$_0JdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIfRZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS0_10OpRcPtrVecEE3$_0JdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi double [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call double @llvm.copysign.f64(double %.0.i.i.i, double %.val)
  %i.i = fptrunc double %i.h to float
  ret float %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS_10OpRcPtrVecEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #11 align 2 {
bb.a:
  %.val = load double, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.a = tail call noundef double @llvm.fabs.f64(double %.val) ; 3 uses
  %i.b = fcmp olt double %i.a, 2.500000e-01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.a)
  br label %"_ZSt10__invoke_rIfRZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS0_10OpRcPtrVecEE3$_0JdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = fadd double %i.a, f0xBFB23803FD659BE6
  %i.d = tail call double @log(double noundef %i.c) #20, !tbaa !3
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double f0x3FC6E3FE014D320D, double f0x3FE9D9B50D540AEA)
  br label %"_ZSt10__invoke_rIfRZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS0_10OpRcPtrVecEE3$_0JdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIfRZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS0_10OpRcPtrVecEE3$_0JdEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi double [ %sqrt.i.i.i, %bb.b ], [ %i.e, %bb.c ]
  %i.f = tail call double @llvm.copysign.f64(double %.0.i.i.i, double %.val)
  %i.g = fptrunc double %i.f to float
  ret float %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS_10OpRcPtrVecEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #0 align 2 {
bb.a:
  tail call fastcc void @"_ZZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEENK4$_22clERNS_10OpRcPtrVecENS_11GammaOpData5StyleE"(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEE3$_0", ptr %0, align 8, !tbaa !17
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i8, ptr %1, align 8
  store i8 %.val.i, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEENK4$_22clERNS_10OpRcPtrVecENS_11GammaOpData5StyleE"(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef range(i32 1, 4) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.71", align 8    ; 11 uses
  %4 = alloca %"class.std::vector.71", align 8    ; 9 uses
  %5 = alloca %"class.std::shared_ptr.76", align 8 ; 7 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN16OpenColorIO_v2_536build_conversion_matrix_from_XYZ_D65ERKNS_9PrimariesENS_16AdaptationMethodE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_56REC7099primariesE, i32 noundef 0)
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpData11MatrixArrayEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.c unwind label %bb.v       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %3, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  store double 2.400000e+00, ptr %i.b, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.f = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.d unwind label %bb.w       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %4, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !24
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.j = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #21
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21E9_M_invokeERKSt9_Any_dataS2_":bb.a
bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %4, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !24
  store double f0x3FEAAAAAAAAAAAAB, ptr %i.c, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_521CreateFixedFunctionOpERNS_10OpRcPtrVecENS_19FixedFunctionOpData5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %4, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i:              ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd", ptr %i.m, align 8, !tbaa !7
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.l, align 8, !tbaa !11
  invoke void @_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.n unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #19
  unreachable

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i2.i.i.i.i, label %.body.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #19
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34   ; 8 uses
  %.not.i.i18.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i18.i.i.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.y, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !31
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20, !inline_history !82
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20, !inline_history !82
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.q:                                             ; preds = %bb.o
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i19.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i19.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.r ], [ %i.al, %bb.s ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.t, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", !prof !41

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.u:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.v:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.w:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body.i.i.i

bb.x:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit21.i.i.i

bb.y:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i20.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i20.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit21.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit21.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit21.i.i.i:            ; preds = %bb.z, %bb.y, %bb.x
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.x ], [ %i.ar, %bb.y ], [ %i.ar, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit21.i.i.i, %bb.w, %bb.v, %bb.u, %bb.l, %bb.k
  %.pn15.pn.i.i.i = phi { ptr, i32 } [ %i.an, %bb.u ], [ %i.ap, %bb.w ], [ %.pn.i.i.i, %_ZNSt6vectorIdSaIdEED2Ev.exit21.i.i.i ], [ %i.ao, %bb.v ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn15.pn.i.i.i

"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEE4$_21", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN16OpenColorIO_v2_521CreateFixedFunctionOpERNS_10OpRcPtrVecENS_19FixedFunctionOpData5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 24}
!8 = !{!"_ZTSSt8functionIFfdEE", !9, i64 0, !10, i64 24}
!9 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!9, !10, i64 16}
!12 = !{!13, !10, i64 24}
!13 = !{!"_ZTSSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEE", !9, i64 0, !10, i64 24}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"_ZTSN16OpenColorIO_v2_511GammaOpData5StyleE", !5, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 double", !10, i64 0}
!24 = !{!22, !23, i64 16}
!25 = !{!22, !23, i64 8}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!28 = distinct !{!28, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!29 = !{!30, !4, i64 8}
!30 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!31 = !{!30, !4, i64 12}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !6, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!36 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSN16OpenColorIO_v2_511GammaOpDataE", !10, i64 0}
!39 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!40 = !{!5, !5, i64 0}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!43 = distinct !{null, null}
!44 = distinct !{null}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSSt9type_info", !47, i64 8}
!47 = !{!"p1 omnipotent char", !10, i64 0}
!48 = distinct !{null}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!51 = distinct !{!51, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!54 = distinct !{!54, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!57 = distinct !{!57, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!60 = distinct !{!60, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!61 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!62 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!65 = distinct !{!65, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!68 = distinct !{!68, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!69 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!70 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!74 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!77 = distinct !{!77, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!78 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!79 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!80 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!81 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!82 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
end_hunk_1
