begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer12WritePadDataEi(ptr noundef nonnull align 8 captures(none) dereferenceable(2080) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; [#uses=3 type=ptr]
  %4 = load i64, ptr %3, align 8, !tbaa !25       ; [#uses=1 type=i64]
  %.fr = freeze i64 %4                            ; [#uses=2 type=i64]
  %5 = sext i32 %1 to i64                         ; [#uses=2 type=i64]
  %6 = add nsw i64 %5, -1                         ; [#uses=1 type=i64]
  %7 = add i64 %6, %.fr                           ; [#uses=2 type=i64]
  %8 = srem i64 %7, %5                            ; [#uses=1 type=i64]
  %9 = sub nsw i64 %7, %8                         ; [#uses=2 type=i64]
  %sext = shl i64 %9, 32                          ; [#uses=1 type=i64]
  %10 = ashr exact i64 %sext, 32                  ; [#uses=1 type=i64]
  %11 = sub i64 %9, %.fr                          ; [#uses=2 type=i64]
  %12 = trunc i64 %11 to i32                      ; [#uses=1 type=i32]
  %13 = icmp sgt i32 %12, 0                       ; [#uses=1 type=i1]
  br i1 %13, label %14, label %32
end_hunk_0
begin_hunk_1

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc, %14
  %.sroa.12.0 = phi i64 [ %18, %.noexc ], [ 0, %14 ] ; [#uses=2 type=i64]
  %.sroa.020.0 = phi ptr [ %16, %.noexc ], [ null, %14 ] ; [#uses=5 type=ptr]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; [#uses=1 type=ptr]
  %20 = load ptr, ptr %19, align 8, !tbaa !46     ; [#uses=2 type=ptr]
  %21 = load ptr, ptr %20, align 8, !tbaa !23     ; [#uses=1 type=ptr]
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 24 ; [#uses=1 type=ptr]
  %23 = load ptr, ptr %22, align 8                ; [#uses=1 type=ptr]
  %24 = invoke noundef i64 %23(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %.sroa.020.0, i64 noundef %15)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit19 ; [#uses=1 type=i64]

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %25 = load i64, ptr %3, align 8, !tbaa !25      ; [#uses=1 type=i64]
  %26 = add i64 %25, %24                          ; [#uses=2 type=i64]
  store i64 %26, ptr %3, align 8, !tbaa !25
  %.not = icmp eq i64 %26, %10                    ; [#uses=1 type=i1]
  %27 = ptrtoint ptr %.sroa.020.0 to i64          ; [#uses=1 type=i64]
  %28 = sub i64 %.sroa.12.0, %27                  ; [#uses=1 type=i64]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0, i64 noundef %28) #17
  br i1 %.not, label %32, label %33

_ZNSt6vectorIhSaIhEED2Ev.exit19:                  ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %29 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  %30 = ptrtoint ptr %.sroa.020.0 to i64          ; [#uses=1 type=i64]
  %31 = sub i64 %.sroa.12.0, %30                  ; [#uses=1 type=i64]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0, i64 noundef %31) #17
  resume { ptr, i32 } %29

32:                                               ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %2
end_hunk_1
begin_hunk_2

11:                                               ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; [#uses=5 type=ptr]
  %13 = load i64, ptr %12, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %.fr.i = freeze i64 %13                         ; [#uses=3 type=i64]
  %14 = add i64 %.fr.i, 8191                      ; [#uses=2 type=i64]
  %15 = srem i64 %14, 8192                        ; [#uses=1 type=i64]
  %16 = sub nsw i64 %14, %15                      ; [#uses=2 type=i64]
  %sext.i = shl i64 %16, 32                       ; [#uses=1 type=i64]
  %17 = ashr exact i64 %sext.i, 32                ; [#uses=1 type=i64]
  %18 = sub i64 %16, %.fr.i                       ; [#uses=2 type=i64]
  %19 = trunc i64 %18 to i32                      ; [#uses=1 type=i32]
  %20 = icmp sgt i32 %19, 0                       ; [#uses=1 type=i1]
  br i1 %20, label %.noexc.i, label %_ZN3dpx13GenericHeader13SetDataOffsetEij.exit
end_hunk_2
begin_hunk_3
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 24 ; [#uses=1 type=ptr]
  %27 = load ptr, ptr %26, align 8                ; [#uses=1 type=ptr]
  %28 = invoke noundef i64 %27(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %22, i64 noundef %21)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit19.i ; [#uses=1 type=i64]

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %.noexc.i
  %29 = load i64, ptr %12, align 8, !tbaa !25     ; [#uses=1 type=i64]
end_hunk_3
begin_hunk_4
  %.pre = load i64, ptr %12, align 8, !tbaa !25   ; [#uses=1 type=i64]
  br label %_ZN3dpx13GenericHeader13SetDataOffsetEij.exit

_ZNSt6vectorIhSaIhEED2Ev.exit19.i:                ; preds = %.noexc.i
  %31 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  tail call void @_ZdlPvm(ptr noundef nonnull %22, i64 noundef %21) #17
  resume { ptr, i32 } %31

_ZN3dpx13GenericHeader13SetDataOffsetEij.exit:    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i._ZN3dpx13GenericHeader13SetDataOffsetEij.exit_crit_edge, %11
  %32 = phi i64 [ %.pre, %_ZNSt6vectorIhSaIhEED2Ev.exit.i._ZN3dpx13GenericHeader13SetDataOffsetEij.exit_crit_edge ], [ %.fr.i, %11 ] ; [#uses=2 type=i64]
  %33 = trunc i64 %32 to i32                      ; [#uses=1 type=i32]
  %34 = getelementptr inbounds nuw i8, ptr %7, i64 808 ; [#uses=1 type=ptr]
  store i32 %33, ptr %34, align 8, !tbaa !60
end_hunk_4
begin_hunk_5

12:                                               ; preds = %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; [#uses=8 type=ptr]
  %14 = load i64, ptr %13, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %.fr.i = freeze i64 %14                         ; [#uses=2 type=i64]
  %15 = add i64 %.fr.i, 8191                      ; [#uses=2 type=i64]
  %16 = srem i64 %15, 8192                        ; [#uses=1 type=i64]
  %17 = sub nsw i64 %15, %16                      ; [#uses=2 type=i64]
  %sext.i = shl i64 %17, 32                       ; [#uses=1 type=i64]
  %18 = ashr exact i64 %sext.i, 32                ; [#uses=1 type=i64]
  %19 = sub i64 %17, %.fr.i                       ; [#uses=2 type=i64]
  %20 = trunc i64 %19 to i32                      ; [#uses=1 type=i32]
  %21 = icmp sgt i32 %20, 0                       ; [#uses=1 type=i1]
  br i1 %21, label %.noexc.i, label %33
end_hunk_5
begin_hunk_6
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 24 ; [#uses=1 type=ptr]
  %28 = load ptr, ptr %27, align 8                ; [#uses=1 type=ptr]
  %29 = invoke noundef i64 %28(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %23, i64 noundef %22)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit19.i ; [#uses=1 type=i64]

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %.noexc.i
  %30 = load i64, ptr %13, align 8, !tbaa !25     ; [#uses=1 type=i64]
end_hunk_6
begin_hunk_7
  tail call void @_ZdlPvm(ptr noundef nonnull %23, i64 noundef %22) #17
  br i1 %.not.i, label %33, label %_ZN3dpx6Writer12WritePadDataEi.exit

_ZNSt6vectorIhSaIhEED2Ev.exit19.i:                ; preds = %.noexc.i
  %32 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  tail call void @_ZdlPvm(ptr noundef nonnull %23, i64 noundef %22) #17
end_hunk_7
