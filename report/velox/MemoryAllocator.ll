inline.NumInlined: 1479
inline.NumDeleted: 659
begin_hunk_0_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data"
define internal void @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.84", align 16 ; 7 uses
  %3 = alloca %struct.rusage, align 8             ; 9 uses
  %4 = alloca %"struct.facebook::velox::memory::Stats", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::memory::Stats", align 8 ; 4 uses
  %6 = alloca %struct.timeval, align 8            ; 6 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !405
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #20, !noalias !405 ; 0 uses
  %.sroa.018.0.copyload.i.i.i = load i64, ptr %3, align 8, !tbaa !28, !noalias !405
  %.sroa.219.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.219.0.copyload.i.i.i = load i64, ptr %.sroa.219.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !405
  %.val38.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405 ; 4 uses
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %.val38.i.i.i, align 8, !tbaa !28, !noalias !405
  %.sroa.217.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val38.i.i.i, i64 8
  %.sroa.217.0.copyload.i.i.i = load i64, ptr %.sroa.217.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !405
  %reass.add.i.i.i.i = sub i64 %.sroa.018.0.copyload.i.i.i, %.sroa.016.0.copyload.i.i.i
  %reass.mul.i.i.i.i = mul i64 %reass.add.i.i.i.i, 1000000
  %12 = sub i64 %.sroa.219.0.copyload.i.i.i, %.sroa.217.0.copyload.i.i.i
  %13 = add i64 %12, %reass.mul.i.i.i.i
  %14 = trunc i64 %13 to i32
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %16, align 8, !tbaa !28, !noalias !405
  %.sroa.214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.214.0.copyload.i.i.i = load i64, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !405
  %17 = getelementptr inbounds nuw i8, ptr %.val38.i.i.i, i64 16
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %17, align 8, !tbaa !28, !noalias !405
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val38.i.i.i, i64 24
  %.sroa.212.0.copyload.i.i.i = load i64, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !405
  %reass.add.i39.i.i.i = sub i64 %.sroa.013.0.copyload.i.i.i, %.sroa.011.0.copyload.i.i.i
  %reass.mul.i40.i.i.i = mul i64 %reass.add.i39.i.i.i, 1000000
  %18 = sub i64 %.sroa.214.0.copyload.i.i.i, %.sroa.212.0.copyload.i.i.i
  %19 = add i64 %18, %reass.mul.i40.i.i.i
  %20 = trunc i64 %19 to i32
  %21 = sitofp i32 %20 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !405
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a
  %i.p = sub i64 %.sroa.25.0.copyload.i.i.i, %.sroa.23.0.copyload.i.i.i
  %i.q = add i64 %i.p, %reass.mul.i42.i.i.i
  %i.r = trunc i64 %i.q to i32
  %i.s = sitofp i32 %i.r to float                 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105, !noalias !405
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a

_ZNSolsEPFRSoS_E.exit44.i.i.i:                    ; preds = %.noexc77.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !405
  %22 = fmul nnan float %15, 1.000000e+02
  %23 = fdiv float %22, %i.s
  %24 = fmul nnan float %21, 1.000000e+02
  %25 = fdiv float %24, %i.s
  %26 = fdiv float %i.s, 1.000000e+06
  %27 = fdiv float %i.m, %26
  %28 = fdiv float %.0.i.i.i, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !426
  store float %23, ptr %2, align 16, !tbaa !11, !noalias !426
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %25, ptr %i.bk, align 16, !tbaa !11, !noalias !426
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %27, ptr %i.bl, align 16, !tbaa !11, !noalias !426
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %28, ptr %i.bm, align 16, !tbaa !11, !noalias !426
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.61, i64 41, i64 39321, ptr nonnull %2)
          to label %bb.g unwind label %bb.t, !noalias !405

end_hunk_3
