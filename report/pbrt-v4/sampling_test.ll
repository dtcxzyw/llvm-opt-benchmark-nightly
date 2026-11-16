Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZNSt17_Function_handlerIFffEZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation":bb.a

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_SmoothStep_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(7) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %1) #30
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !39     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFffEZN20Sampling_Linear_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #20 align 2 {
bb.a:
  %.val = load float, ptr %1, align 4, !tbaa !22
  %i.a = fmul float %.val, 3.000000e+00
  %i.b = fadd float %i.a, 1.000000e+00
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFffEZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN20Sampling_Linear_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Linear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFffEZN18Sampling_Tent_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !672
  %.val2 = load float, ptr %1, align 4, !tbaa !22
  %.val.val = load float, ptr %.val, align 4, !tbaa !22
  %i.a = tail call noundef float @llvm.fabs.f32(float %.val2)
  %i.b = fdiv float %i.a, %.val.val
  %i.c = fsub float 1.000000e+00, %i.b            ; 2 uses
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.d, float %i.c, float 0.000000e+00
  ret float %.sroa.speculated.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFffEZN18Sampling_Tent_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN18Sampling_Tent_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN18Sampling_Tent_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN18Sampling_Tent_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN18Sampling_Tent_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !84
  store i64 %.val.i, ptr %0, align 8, !tbaa !84
  br label %"_ZNSt14_Function_base13_Base_managerIZN18Sampling_Tent_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN18Sampling_Tent_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFffEZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #5 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !674   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !675 ; 2 uses
  %.val3 = load float, ptr %1, align 4, !tbaa !22
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !97 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val4 = load ptr, ptr %i.b, align 8, !tbaa !98
  %.val2.val = load ptr, ptr %.val2, align 8, !tbaa !97 ; 2 uses
  %i.c = getelementptr i8, ptr %.val2, i64 8
  %.val2.val5 = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.d = ptrtoint ptr %.val.val4 to i64
  %i.e = ptrtoint ptr %.val.val to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = ptrtoint ptr %.val2.val5 to i64
  %i.i = ptrtoint ptr %.val2.val to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = tail call noundef float @_ZN4pbrt10CatmullRomEN4pstd4spanIKfEES3_f(ptr %.val.val, i64 %i.g, ptr %.val2.val, i64 %i.k, float noundef %.val3)
  ret float %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFffEZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !676
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN24Sampling_CatmullRom_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef float @_ZN4pbrt10CatmullRomEN4pstd4spanIKfEES3_f(ptr, i64, ptr, i64, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfffEZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOfS7_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !678
  %.val4 = load float, ptr %2, align 4, !tbaa !22 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !84
  %.val3 = load float, ptr %1, align 4, !tbaa !22
  %i.a = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.val3, i64 3 ; 2 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 3, i32 poison, i32 3, i32 7>
  %i.c = insertelement <4 x float> poison, float %.val4, i64 0
  %i.d = insertelement <4 x float> %i.b, float %.val4, i64 1
  %i.e = fsub <4 x float> %i.a, %i.d              ; 2 uses
  %3 = shufflevector <4 x float> %i.e, <4 x float> %i.c, <4 x i32> <i32 1, i32 3, i32 4, i32 4>
  %i.f = fmul <4 x float> %3, %i.e
  %i.g = load <4 x float>, ptr %.val.val, align 4, !tbaa !22
  %i.h = fmul <4 x float> %i.f, %i.g              ; 4 uses
  %shift = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.h, %shift
  %shift6 = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7 = fadd <4 x float> %foldExtExtBinop, %shift6
  %shift9 = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop10 = fadd <4 x float> %foldExtExtBinop7, %shift9
  %i.i = extractelement <4 x float> %foldExtExtBinop10, i64 0
  ret float %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfffEZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN22Sampling_Bilinear_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !103
  store i64 %.val.i, ptr %0, align 8, !tbaa !103
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Bilinear_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFffEZN22Sampling_Logistic_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #24 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !104   ; 3 uses
  %.val2 = load float, ptr %1, align 4, !tbaa !22
  %i.a = load ptr, ptr %.val, align 8, !tbaa !680, !nonnull !30, !align !127
  %i.b = load float, ptr %i.a, align 4, !tbaa !22 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !681, !nonnull !30, !align !127
  %i.e = load float, ptr %i.d, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !682, !nonnull !30, !align !127
  %i.h = load float, ptr %i.g, align 4, !tbaa !22
  %i.i = tail call noundef float @llvm.fabs.f32(float %.val2)
  %i.j = fneg float %i.i
  %i.k = fdiv float %i.j, %i.b
  %i.l = tail call noundef float @expf(float noundef %i.k) #30 ; 2 uses
  %i.m = fadd float %i.l, 1.000000e+00            ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = fmul float %i.b, %i.n
  %i.p = fdiv float %i.l, %i.o
  %i.q = fneg float %i.h
  %i.r = fdiv float %i.q, %i.b
  %i.s = tail call noundef float @expf(float noundef %i.r) #30
  %i.t = fneg float %i.e
  %i.u = fdiv float %i.t, %i.b
  %i.v = tail call noundef float @expf(float noundef %i.u) #30
  %i.w = insertelement <2 x float> poison, float %i.s, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = fadd <2 x float> %i.x, splat (float 1.000000e+00)
  %i.z = fdiv <2 x float> splat (float 1.000000e+00), %i.y ; 2 uses
  %shift = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.z, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fdiv float %i.p, %i.aa
  ret float %i.ab
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFffEZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #5 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN22Sampling_Logistic_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !104
  store ptr %.val, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !683
  store ptr %i.a, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !104 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN22Sampling_Logistic_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFffEZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #24 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !685
  %.val2 = load float, ptr %1, align 4, !tbaa !22
  %.val.val = load float, ptr %.val, align 4, !tbaa !22
  %i.a = fneg float %.val.val
  %i.b = fmul float %.val2, %i.a
  %i.c = tail call noundef float @expf(float noundef %i.b) #30
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFffEZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !84
  store i64 %.val.i, ptr %0, align 8, !tbaa !84
  br label %"_ZNSt14_Function_base13_Base_managerIZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN32Sampling_TrimmedExponential_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFffEZN20Sampling_Normal_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOf"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #24 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !687
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !688
  %.val3 = load float, ptr %1, align 4, !tbaa !22
  %.val.val = load float, ptr %.val, align 4, !tbaa !22 ; 4 uses
  %.val2.val = load float, ptr %.val2, align 4, !tbaa !22
  %i.b = fmul float %.val.val, f0x40C90FDB
  %i.c = fmul float %.val.val, %i.b
  %i.d = tail call noundef float @sqrtf(float noundef %i.c) #30
  %i.e = fdiv float 1.000000e+00, %i.d
  %i.f = fsub float %.val3, %.val2.val            ; 2 uses
  %i.g = fneg float %i.f
  %i.h = fmul float %i.f, %i.g
  %i.i = fmul float %.val.val, 2.000000e+00
  %i.j = fmul float %.val.val, %i.i
  %i.k = fdiv float %i.h, %i.j
  %i.l = tail call noundef float @expf(float noundef %i.k) #30
  %i.m = fmul float %i.e, %i.l
  ret float %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFffEZN20Sampling_Normal_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Normal_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN20Sampling_Normal_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Normal_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !104
  br label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Normal_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !689
  br label %"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Normal_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN20Sampling_Normal_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
end_hunk_0
