inline.NumInlined: 1479
inline.NumDeleted: 659
begin_hunk_0_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data"
define internal void @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.84", align 16 ; 7 uses
  %3 = alloca %struct.rusage, align 8             ; 6 uses
  %4 = alloca %"struct.facebook::velox::memory::Stats", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::memory::Stats", align 8 ; 4 uses
  %6 = alloca %struct.timeval, align 8            ; 6 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !405
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #20, !noalias !405 ; 0 uses
  %.val38.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405
  %12 = load <4 x i64>, ptr %3, align 8, !tbaa !28, !noalias !405 ; 2 uses
  %13 = load <4 x i64>, ptr %.val38.i.i.i, align 8, !tbaa !28, !noalias !405 ; 2 uses
  %14 = sub <4 x i64> %12, %13
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %16 = mul <2 x i64> %15, splat (i64 1000000)
  %17 = sub <4 x i64> %12, %13
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %19 = add <2 x i64> %18, %16
  %20 = trunc <2 x i64> %19 to <2 x i32>
  %21 = sitofp <2 x i32> %20 to <2 x float>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !405
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a
  %i.p = sub i64 %.sroa.25.0.copyload.i.i.i, %.sroa.23.0.copyload.i.i.i
  %i.q = add i64 %i.p, %reass.mul.i42.i.i.i
  %i.r = trunc i64 %i.q to i32
  %i.s = sitofp i32 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105, !noalias !405
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a

_ZNSolsEPFRSoS_E.exit44.i.i.i:                    ; preds = %.noexc77.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !405
  %22 = fmul nnan <2 x float> %21, splat (float 1.000000e+02)
  %23 = insertelement <2 x float> poison, float %i.s, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> zeroinitializer
  %25 = fdiv <4 x float> %24, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+06, float 1.000000e+00>
  %26 = insertelement <4 x float> poison, float %i.m, i64 2
  %27 = insertelement <4 x float> %26, float %.0.i.i.i, i64 3
  %28 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> %28, <4 x float> %27, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %30 = fdiv <4 x float> %29, %25                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !426
  %31 = extractelement <4 x float> %30, i64 0
  store float %31, ptr %2, align 16, !tbaa !11, !noalias !426
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = extractelement <4 x float> %30, i64 1
  store float %32, ptr %i.bk, align 16, !tbaa !11, !noalias !426
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %33 = extractelement <4 x float> %30, i64 2
  store float %33, ptr %i.bl, align 16, !tbaa !11, !noalias !426
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %34 = extractelement <4 x float> %30, i64 3
  store float %34, ptr %i.bm, align 16, !tbaa !11, !noalias !426
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.61, i64 41, i64 39321, ptr nonnull %2)
          to label %bb.g unwind label %bb.t, !noalias !405

end_hunk_3
