Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_rotation?download=true
inline.NumInlined: 386
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_0E9_M_invokeERKSt9_Any_dataOS2_":bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !62, !range !39, !noundef !40
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_0JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !63, !nonnull !40, !align !64 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 160
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_0JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #18
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fz, %bb.q ], [ %i.fy, %bb.p ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #18
  unreachable

"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_0JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit": ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZL22CATCH2_INTERNAL_TEST_0vE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !65
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef) unnamed_addr #0

declare void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.b = load i8, ptr %i.a, align 1, !tbaa !62, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63, !nonnull !40, !align !64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(52) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

declare void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch9UnaryExprIbE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(11) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.b = load i8, ptr %i.a, align 2, !tbaa !84, !range !39, !noalias !83, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sink4.i.i.sroa.gep6 = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 1702195828, ptr %i.d, align 8, !alias.scope !85
  br label %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.c:                                             ; preds = %bb.a
  %.sink4.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false)
  br label %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b, %bb.c
  %.sink4.i.i.sroa.phi = phi ptr [ %.sink4.i.i.sroa.gep, %bb.c ], [ %.sink4.i.i.sroa.gep6, %bb.b ]
  %.sink.i.i = phi i64 [ 5, %bb.c ], [ 4, %bb.b ] ; 2 uses
  store i8 0, ptr %.sink4.i.i.sroa.phi, align 1, !tbaa !48, !alias.scope !85
  store ptr %i.d, ptr %2, align 8, !tbaa !46, !alias.scope !85
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i, ptr %i.e, align 8, !tbaa !47, !alias.scope !85
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.sink.i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = load i64, ptr %i.d, align 8, !tbaa !48
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !tbaa !48
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.k
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_1E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.val = load <2 x float>, ptr %1, align 4, !tbaa !23 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load float, ptr %i.a, align 4, !tbaa !23
  %.sroa.013.0.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 0
  %.sroa.013.4.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 1
  %i.b = fpext nsz float %.sroa.013.0.vec.extract.i.i.i to double ; 2 uses
  %i.c = fmul nsz double %i.b, 5.000000e-01
  %sincos.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.c) ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0 ; 2 uses
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1
  %i.d = fpext nsz float %.sroa.013.4.vec.extract.i.i.i to double ; 2 uses
  %i.e = fmul nsz double %i.d, 5.000000e-01
  %sincos34.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin35.i.i.i.i.i = extractvalue { double, double } %sincos34.i.i.i.i.i, 0 ; 2 uses
  %cos36.i.i.i.i.i = extractvalue { double, double } %sincos34.i.i.i.i.i, 1
  %i.f = fpext nsz float %.val2 to double         ; 2 uses
  %i.g = fmul nsz double %i.f, 5.000000e-01
  %sincos37.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.g) ; 2 uses
  %sin38.i.i.i.i.i = extractvalue { double, double } %sincos37.i.i.i.i.i, 0 ; 2 uses
  %cos39.i.i.i.i.i = extractvalue { double, double } %sincos37.i.i.i.i.i, 1 ; 2 uses
  %5 = fmul nsz double %sin35.i.i.i.i.i, %cos39.i.i.i.i.i ; 2 uses
  %6 = fmul nsz double %sin35.i.i.i.i.i, %sin38.i.i.i.i.i ; 2 uses
  %7 = fneg nsz double %6
  %i.h = insertelement <2 x double> poison, double %cos.i.i.i.i.i, i64 0 ; 2 uses
  %8 = insertelement <2 x double> %i.h, double %sin.i.i.i.i.i, i64 1 ; 2 uses
  %i.i = insertelement <2 x double> poison, double %7, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %10 = fneg nsz double %5
  %i.j = insertelement <2 x double> poison, double %cos36.i.i.i.i.i, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x double> poison, double %sin38.i.i.i.i.i, i64 0
  %12 = insertelement <2 x double> %11, double %cos39.i.i.i.i.i, i64 1
  %13 = fmul nsz <2 x double> %i.k, %12           ; 3 uses
  %14 = shufflevector <2 x double> %i.i, <2 x double> %13, <2 x i32> <i32 0, i32 2>
  %i.l = fmul nsz <2 x double> %8, %14
  %15 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x double> %15, double %5, i64 1
  %17 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %16, <2 x double> %i.l) ; 2 uses
  %i.m = insertelement <2 x double> poison, double %sin.i.i.i.i.i, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x double> poison, double %10, i64 0
  %19 = insertelement <2 x double> %18, double %6, i64 1
  %i.o = fmul nsz <2 x double> %i.n, %19
  %i.p = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %13, <2 x double> %i.o) ; 2 uses
  %21 = shufflevector <2 x double> %20, <2 x double> %17, <2 x i32> <i32 0, i32 2>
  %22 = fptrunc nsz <2 x double> %21 to <2 x float> ; 3 uses
  %23 = shufflevector <2 x double> %20, <2 x double> %17, <2 x i32> <i32 1, i32 3>
  %24 = fptrunc nsz <2 x double> %23 to <2 x float> ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %24, %24
  %25 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.q = extractelement <2 x float> %22, i64 1    ; 2 uses
  %i.r = tail call nsz float @llvm.fmuladd.f32(float %i.q, float %i.q, float %25)
  %i.s = extractelement <2 x float> %22, i64 0    ; 2 uses
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %26 = extractelement <2 x float> %24, i64 0     ; 2 uses
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %26, float %26, float %i.t)
  %i.v = fpext nsz float %i.u to double
  %i.w = tail call nsz double @llvm.sqrt.f64(double %i.v)
  %i.x = fdiv nsz double 1.000000e+00, %i.w
  %i.y = fptrunc nsz double %i.x to float
  %27 = insertelement <2 x float> poison, float %i.y, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %29 = fmul nsz <2 x float> %28, %22             ; 6 uses
  %i.z = fmul nsz <2 x float> %28, %24            ; 6 uses
  %30 = extractelement <2 x float> %i.z, i64 0    ; 3 uses
  %foldExtExtBinop4 = fmul nsz <2 x float> %i.z, %i.z
  %31 = extractelement <2 x float> %foldExtExtBinop4, i64 0
  %i.aa = fpext nsz float %31 to double           ; 2 uses
  %i.ab = extractelement <2 x float> %29, i64 1   ; 5 uses
  %i.ac = fmul nsz float %i.ab, %i.ab
  %i.ad = fpext nsz float %i.ac to double         ; 2 uses
  %32 = extractelement <2 x float> %i.z, i64 1    ; 3 uses
  %i.ae = fmul nsz float %32, %32
  %i.af = fpext nsz float %i.ae to double         ; 2 uses
  %i.ag = extractelement <2 x float> %29, i64 0
  %foldExtExtBinop6.a = fmul nsz <2 x float> %29, %29
  %i.ah = extractelement <2 x float> %foldExtExtBinop6.a, i64 0
  %i.ai = fpext nsz float %i.ah to double         ; 2 uses
  %i.aj = fneg nsz float %i.ag
  %i.ak = fmul nsz float %i.ab, %i.aj
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %32, float %30, float %i.ak)
  %i.am = fpext nsz float %i.al to double
  %i.an = fmul nsz double %i.am, 2.000000e+00     ; 4 uses
  %i.ao = fadd nsz double %i.an, -1.000000e+00
  %i.ap = tail call nsz noundef double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp nsz ugt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = fpext nsz float %i.ab to double
  %i.as = fpext nsz float %30 to double
  %i.at = tail call nsz double @llvm.atan2.f64(double %i.ar, double %i.as)
  %i.au = fmul nsz double %i.at, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.av = fadd nsz double %i.an, 1.000000e+00
  %i.aw = tail call nsz noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp nsz ugt double %i.aw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = fpext nsz float %i.ab to double
  %i.az = fpext nsz float %30 to double
  %i.ba = tail call nsz double @llvm.atan2.f64(double %i.ay, double %i.az)
  %i.bb = fmul nsz double %i.ba, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.bc = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.be = fmul nsz <2 x float> %i.bc, %i.bd
  %i.bf = fsub nsz double %i.ad, %i.af
  %i.bg = fsub nsz double %i.bf, %i.ai
  %i.bh = fadd nsz double %i.bg, %i.aa
  %33 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %29, <2 x float> %i.be)
  %i.bj = fpext nsz <2 x float> %i.bi to <2 x double>
  %i.bk = fmul nsz <2 x double> %i.bj, splat (double 2.000000e+00) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1
  %i.bm = tail call nsz double @llvm.atan2.f64(double %i.bl, double %i.bh)
  %i.bn = fadd nsz double %i.ad, %i.af
  %i.bo = fsub nsz double %i.ai, %i.bn
  %i.bp = fadd nsz double %i.bo, %i.aa
  %i.bq = extractelement <2 x double> %i.bk, i64 0
  %i.br = tail call nsz double @llvm.atan2.f64(double %i.bq, double %i.bp)
  %i.bs = fptrunc nsz double %i.br to float
  %.sroa.02.0.vec.insert9.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bs, i64 0
  %i.bt = fcmp nsz olt double %i.an, -1.000000e+00
  %i.bu = select i1 %i.bt, double -1.000000e+00, double %i.an ; 2 uses
  %i.bv = fcmp nsz olt double %i.bu, 1.000000e+00
  %i.bw = select i1 %i.bv, double %i.bu, double 1.000000e+00
  %i.bx = tail call nsz double @llvm.asin.f64(double %i.bw)
  %i.by = fptrunc nsz double %i.bx to float
  %i.bz = fpext nsz float %i.by to double
  %i.ca = tail call nsz { double, double } @llvm.sincos.f64(double %i.bz)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.10.0.in.i.i.i = phi double [ %i.bm, %bb.e ], [ %i.bb, %bb.d ], [ %i.au, %bb.b ]
  %.sroa.02.0.i.i.i = phi nsz <2 x float> [ %.sroa.02.0.vec.insert9.i.i.i, %bb.e ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sink.i.i.i.i = phi { double, double } [ %i.ca, %bb.e ], [ { double f0xBFEFFFFFFFFFFFF7, double f0xBE6777A5CF72CECC }, %bb.d ], [ { double f0x3FEFFFFFFFFFFFF7, double f0xBE6777A5CF72CECC }, %bb.b ] ; 2 uses
  %.sroa.10.0.i.i.i = fptrunc double %.sroa.10.0.in.i.i.i to float
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str, ptr %4, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 82, ptr %i.cb, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.7, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.12, i64 29, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %sincos.i.i16.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin.i.i17.i.i.i = extractvalue { double, double } %sincos.i.i16.i.i.i, 0 ; 3 uses
  %cos.i.i18.i.i.i = extractvalue { double, double } %sincos.i.i16.i.i.i, 1 ; 3 uses
  %sincos36.i.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin37.i.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i.i, 0 ; 3 uses
  %cos38.i.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i.i, 1 ; 4 uses
  %sincos39.i.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.f) ; 2 uses
  %sin40.i.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i.i, 0 ; 5 uses
  %cos41.i.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i.i, 1 ; 5 uses
  %i.cc = fmul nsz double %cos38.i.i.i.i.i, %cos41.i.i.i.i.i
  %i.cd = fptrunc nsz double %i.cc to float
  %i.ce = fptrunc nsz double %sin37.i.i.i.i.i to float
  %i.cf = fmul nsz double %sin.i.i17.i.i.i, %sin37.i.i.i.i.i
  %i.cg = fmul nsz double %cos.i.i18.i.i.i, %sin37.i.i.i.i.i
  %i.ch = fneg nsz double %sin40.i.i.i.i.i
  %i.ci = insertelement <2 x double> poison, double %cos.i.i18.i.i.i, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %cos41.i.i.i.i.i, i64 1
  %i.cm = fmul nsz <2 x double> %i.cj, %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> poison, double %cos41.i.i.i.i.i, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %sin40.i.i.i.i.i, i64 1
  %i.cr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cq, <2 x double> %i.cm)
  %i.cs = fptrunc nsz <2 x double> %i.cr to <2 x float> ; 2 uses
  %i.ct = fmul nsz double %sin.i.i17.i.i.i, %cos38.i.i.i.i.i
  %i.cu = fptrunc nsz double %i.ct to float
  %i.cv = fneg nsz double %cos41.i.i.i.i.i
  %i.cw = insertelement <2 x double> poison, double %sin.i.i17.i.i.i, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x double> poison, double %sin40.i.i.i.i.i, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cv, i64 1
  %i.da = fmul nsz <2 x double> %i.cx, %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x double> poison, double %cos41.i.i.i.i.i, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %sin40.i.i.i.i.i, i64 1
  %i.df = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.de, <2 x double> %i.da)
  %i.dg = fptrunc nsz <2 x double> %i.df to <2 x float> ; 2 uses
  %i.dh = fmul nsz double %cos.i.i18.i.i.i, %cos38.i.i.i.i.i
  %i.di = fptrunc nsz double %i.dh to float
  %.sroa.028.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.02.0.i.i.i, i64 0
  %i.dj = fpext nsz float %.sroa.028.0.vec.extract.i.i.i.i to double
  %sincos.i3.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.dj) ; 2 uses
  %sin.i4.i.i.i.i = extractvalue { double, double } %sincos.i3.i.i.i.i, 0 ; 3 uses
  %cos.i5.i.i.i.i = extractvalue { double, double } %sincos.i3.i.i.i.i, 1 ; 3 uses
  %sin37.i7.i.i.i.i = extractvalue { double, double } %.sink.i.i.i.i, 0 ; 3 uses
  %cos38.i8.i.i.i.i = extractvalue { double, double } %.sink.i.i.i.i, 1 ; 4 uses
  %i.dk = fpext nsz float %.sroa.10.0.i.i.i to double
  %sincos39.i9.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.dk) ; 2 uses
  %sin40.i10.i.i.i.i = extractvalue { double, double } %sincos39.i9.i.i.i.i, 0 ; 5 uses
  %cos41.i11.i.i.i.i = extractvalue { double, double } %sincos39.i9.i.i.i.i, 1 ; 5 uses
  %i.dl = fmul nsz double %cos38.i8.i.i.i.i, %cos41.i11.i.i.i.i
  %i.dm = fptrunc nsz double %i.dl to float
  %i.dn = fptrunc nsz double %sin37.i7.i.i.i.i to float
  %i.do = fmul nsz double %sin37.i7.i.i.i.i, %sin.i4.i.i.i.i
  %i.dp = fmul nsz double %sin37.i7.i.i.i.i, %cos.i5.i.i.i.i
  %i.dq = fneg nsz double %sin40.i10.i.i.i.i
  %i.dr = insertelement <2 x double> poison, double %cos.i5.i.i.i.i, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %cos41.i11.i.i.i.i, i64 1
  %i.dv = fmul nsz <2 x double> %i.ds, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x double> poison, double %cos41.i11.i.i.i.i, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %sin40.i10.i.i.i.i, i64 1
  %i.ea = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dz, <2 x double> %i.dv)
  %i.eb = fptrunc nsz <2 x double> %i.ea to <2 x float> ; 2 uses
  %i.ec = fmul nsz double %cos38.i8.i.i.i.i, %sin.i4.i.i.i.i
  %i.ed = fptrunc nsz double %i.ec to float
  %i.ee = fneg nsz double %cos41.i11.i.i.i.i
  %i.ef = insertelement <2 x double> poison, double %sin.i4.i.i.i.i, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = insertelement <2 x double> poison, double %sin40.i10.i.i.i.i, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = fmul nsz <2 x double> %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> poison, double %cos41.i11.i.i.i.i, i64 0
  %i.en = insertelement <2 x double> %i.em, double %sin40.i10.i.i.i.i, i64 1
  %i.eo = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.en, <2 x double> %i.ej)
  %i.ep = fptrunc nsz <2 x double> %i.eo to <2 x float> ; 2 uses
  %i.eq = fmul nsz double %cos38.i8.i.i.i.i, %cos.i5.i.i.i.i
  %i.er = fptrunc nsz double %i.eq to float
  %i.es = fsub nsz float %i.cd, %i.dm
  %i.et = call nsz noundef float @llvm.fabs.f32(float %i.es)
  %i.eu = fcmp nsz ugt float %i.et, f0x3C23D70A
  br i1 %i.eu, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i
  %i.ev = fmul nsz double %cos38.i8.i.i.i.i, %sin40.i10.i.i.i.i
  %i.ew = fptrunc nsz double %i.ev to float
  %i.ex = fmul nsz double %cos38.i.i.i.i.i, %sin40.i.i.i.i.i
  %i.ey = fptrunc nsz double %i.ex to float
  %i.ez = fsub nsz float %i.ey, %i.ew
  %i.fa = call nsz noundef float @llvm.fabs.f32(float %i.ez)
  %i.fb = fcmp nsz ugt float %i.fa, f0x3C23D70A
  br i1 %i.fb, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fc = fsub nsz float %i.dn, %i.ce
  %i.fd = call nsz noundef float @llvm.fabs.f32(float %i.fc)
  %i.fe = fcmp nsz ugt float %i.fd, f0x3C23D70A
  %foldExtExtBinop8.a = fsub nsz <2 x float> %i.cs, %i.eb
  %i.ff = extractelement <2 x float> %foldExtExtBinop8.a, i64 0
  %i.fg = call nsz float @llvm.fabs.f32(float %i.ff)
  %i.fh = fcmp nsz ugt float %i.fg, f0x3C23D70A
  %or.cond = select i1 %i.fe, i1 true, i1 %i.fh
  br i1 %or.cond, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop10.a = fsub nsz <2 x float> %i.cs, %i.eb
  %i.fi = extractelement <2 x float> %foldExtExtBinop10.a, i64 1
  %i.fj = call nsz noundef float @llvm.fabs.f32(float %i.fi)
  %i.fk = fcmp nsz ugt float %i.fj, f0x3C23D70A
  br i1 %i.fk, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = fsub nsz float %i.cu, %i.ed
  %i.fm = call nsz noundef float @llvm.fabs.f32(float %i.fl)
  %i.fn = fcmp nsz ugt float %i.fm, f0x3C23D70A
  %foldExtExtBinop12 = fsub nsz <2 x float> %i.dg, %i.ep
  %i.fo = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.fp = call nsz float @llvm.fabs.f32(float %i.fo)
  %i.fq = fcmp nsz ugt float %i.fp, f0x3C23D70A
  %or.cond20 = select i1 %i.fn, i1 true, i1 %i.fq
  br i1 %or.cond20, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop14 = fsub nsz <2 x float> %i.dg, %i.ep
  %i.fr = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.fs = call nsz noundef float @llvm.fabs.f32(float %i.fr)
  %i.ft = fcmp nsz ugt float %i.fs, f0x3C23D70A
  br i1 %i.ft, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fu = fsub nsz float %i.di, %i.er
  %i.fv = call nsz noundef float @llvm.fabs.f32(float %i.fu)
  %i.fw = fcmp nsz ole float %i.fv, f0x3C23D70A
  %i.fx = zext i1 %i.fw to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i
  %.lcssa.i.i.i.i.i = phi i8 [ 0, %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.g ], [ %i.fx, %bb.k ], [ 0, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.fy, align 8, !tbaa !52, !alias.scope !89
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.lcssa.i.i.i.i.i, ptr %i.fz, align 1, !tbaa !53, !alias.scope !89
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !50, !alias.scope !89
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.lcssa.i.i.i.i.i, ptr %i.ga, align 2, !tbaa !55, !alias.scope !89
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  %i.gd = call ptr @__cxa_begin_catch(ptr %i.gc) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
end_hunk_0
