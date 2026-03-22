begin_hunk_0
  %13 = fmul <2 x double> %11, %12                ; [#uses=2 type=<2 x double>]
  store <2 x double> %13, ptr %6, align 16, !tbaa !7
  %14 = shufflevector <2 x double> %11, <2 x double> %13, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; [#uses=1 type=<4 x double>]
  %15 = fcmp une <4 x double> %14, <double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00> ; [#uses=1 type=<4 x i1>]
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; [#uses=1 type=ptr]
  %17 = load double, ptr %16, align 8, !tbaa !7   ; [#uses=1 type=double]
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; [#uses=1 type=ptr]
  %19 = load double, ptr %18, align 8, !tbaa !7   ; [#uses=2 type=double]
  %20 = fsub double %17, %19                      ; [#uses=1 type=double]
  %21 = fdiv double 1.000000e+00, %20             ; [#uses=3 type=double]
  %22 = fneg double %19                           ; [#uses=1 type=double]
  %23 = fmul double %21, %22                      ; [#uses=2 type=double]
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; [#uses=1 type=ptr]
end_hunk_0
begin_hunk_1
  %26 = fcmp une double %23, 0.000000e+00         ; [#uses=1 type=i1]
  %27 = bitcast <4 x i1> %15 to i4                ; [#uses=1 type=i4]
  %28 = icmp ne i4 %27, 0                         ; [#uses=1 type=i1]
  %op.rdx = select i1 %28, i1 true, i1 %25        ; [#uses=1 type=i1]
  %op.rdx19 = select i1 %op.rdx, i1 true, i1 %26  ; [#uses=1 type=i1]
  br i1 %op.rdx19, label %29, label %35

end_hunk_1
begin_hunk_2

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18 ; [#uses=1 type=i32]
  %12 = icmp eq i32 %11, 0                        ; [#uses=1 type=i1]
  br i1 %12, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %5, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_2
begin_hunk_3

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18 ; [#uses=1 type=i32]
  %12 = icmp eq i32 %11, 0                        ; [#uses=1 type=i1]
  br i1 %12, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %5, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_3
