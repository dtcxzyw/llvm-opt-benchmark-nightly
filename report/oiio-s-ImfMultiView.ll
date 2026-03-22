begin_hunk_0
  %65 = getelementptr i8, ptr %64, i64 -64        ; [#uses=2 type=ptr]
  %.val = load ptr, ptr %65, align 8              ; [#uses=1 type=ptr]
  %66 = getelementptr i8, ptr %64, i64 -56        ; [#uses=1 type=ptr]
  %.val13 = load i64, ptr %66, align 8            ; [#uses=7 type=i64]
  %.val14 = load ptr, ptr %2, align 8             ; [#uses=4 type=ptr]
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; [#uses=1 type=ptr]
  %.val15 = load ptr, ptr %67, align 8            ; [#uses=2 type=ptr]
end_hunk_0
begin_hunk_1
  %69 = ptrtoint ptr %.val14 to i64               ; [#uses=1 type=i64]
  %70 = sub i64 %68, %69                          ; [#uses=1 type=i64]
  %71 = ashr exact i64 %70, 5                     ; [#uses=2 type=i64]
  %72 = icmp eq i64 %.val13, 0                    ; [#uses=1 type=i1]
  br i1 %72, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us
end_hunk_1
begin_hunk_2
  %78 = getelementptr inbounds nuw [32 x i8], ptr %.val14, i64 %.089.i ; [#uses=2 type=ptr]
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 8 ; [#uses=1 type=ptr]
  %80 = load i64, ptr %79, align 8, !tbaa !18     ; [#uses=1 type=i64]
  %81 = icmp eq i64 %80, %.val13                  ; [#uses=1 type=i1]
  br i1 %81, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i
  %82 = load ptr, ptr %78, align 8, !tbaa !15     ; [#uses=1 type=ptr]
  %bcmp.i.i = call i32 @bcmp(ptr %82, ptr readonly %.val, i64 %.val13) ; [#uses=1 type=i32]
  %83 = icmp eq i32 %bcmp.i.i, 0                  ; [#uses=1 type=i1]
  br i1 %83, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

end_hunk_2
begin_hunk_3
  store ptr %91, ptr %0, align 8, !tbaa !12
  %92 = load ptr, ptr %65, align 8, !tbaa !15     ; [#uses=2 type=ptr]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.val13, ptr %4, align 8, !tbaa !19
  %93 = icmp ugt i64 %.val13, 15                  ; [#uses=1 type=i1]
  br i1 %93, label %.noexc.i26, label %._crit_edge.i.i25

.noexc.i26:                                       ; preds = %90
end_hunk_3
begin_hunk_4

._crit_edge.i.i25:                                ; preds = %.noexc27, %90
  %96 = phi ptr [ %94, %.noexc27 ], [ %91, %90 ]  ; [#uses=2 type=ptr]
  %cond = icmp eq i64 %.val13, 1                  ; [#uses=1 type=i1]
  br i1 %cond, label %97, label %99

97:                                               ; preds = %._crit_edge.i.i25
end_hunk_4
begin_hunk_5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28

99:                                               ; preds = %._crit_edge.i.i25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %96, ptr align 1 %92, i64 %.val13, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28: ; preds = %._crit_edge.i.i25.thread, %97, %99
end_hunk_5
begin_hunk_6
  %88 = getelementptr i8, ptr %87, i64 -64        ; [#uses=1 type=ptr]
  %.val = load ptr, ptr %88, align 8              ; [#uses=1 type=ptr]
  %89 = getelementptr i8, ptr %87, i64 -56        ; [#uses=1 type=ptr]
  %.val45 = load i64, ptr %89, align 8            ; [#uses=3 type=i64]
  %.val46 = load ptr, ptr %2, align 8             ; [#uses=4 type=ptr]
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; [#uses=1 type=ptr]
  %.val47 = load ptr, ptr %90, align 8            ; [#uses=2 type=ptr]
end_hunk_6
begin_hunk_7
  %92 = ptrtoint ptr %.val46 to i64               ; [#uses=1 type=i64]
  %93 = sub i64 %91, %92                          ; [#uses=1 type=i64]
  %94 = ashr exact i64 %93, 5                     ; [#uses=2 type=i64]
  %95 = icmp eq i64 %.val45, 0                    ; [#uses=1 type=i1]
  br i1 %95, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us
end_hunk_7
begin_hunk_8
  %101 = getelementptr inbounds nuw [32 x i8], ptr %.val46, i64 %.089.i ; [#uses=2 type=ptr]
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 8 ; [#uses=1 type=ptr]
  %103 = load i64, ptr %102, align 8, !tbaa !18   ; [#uses=1 type=i64]
  %104 = icmp eq i64 %103, %.val45                ; [#uses=1 type=i1]
  br i1 %104, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i
  %105 = load ptr, ptr %101, align 8, !tbaa !15   ; [#uses=1 type=ptr]
  %bcmp.i.i = call i32 @bcmp(ptr %105, ptr readonly %.val, i64 %.val45) ; [#uses=1 type=i32]
  %106 = icmp eq i32 %bcmp.i.i, 0                 ; [#uses=1 type=i1]
  br i1 %106, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

end_hunk_8
begin_hunk_9
  %114 = getelementptr i8, ptr %113, i64 -64      ; [#uses=1 type=ptr]
  %.val48 = load ptr, ptr %114, align 8           ; [#uses=1 type=ptr]
  %115 = getelementptr i8, ptr %113, i64 -56      ; [#uses=1 type=ptr]
  %.val49 = load i64, ptr %115, align 8           ; [#uses=3 type=i64]
  %.val50 = load ptr, ptr %2, align 8             ; [#uses=4 type=ptr]
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; [#uses=1 type=ptr]
  %.val51 = load ptr, ptr %116, align 8           ; [#uses=2 type=ptr]
end_hunk_9
begin_hunk_10
  %118 = ptrtoint ptr %.val50 to i64              ; [#uses=1 type=i64]
  %119 = sub i64 %117, %118                       ; [#uses=1 type=i64]
  %120 = ashr exact i64 %119, 5                   ; [#uses=2 type=i64]
  %121 = icmp eq i64 %.val49, 0                   ; [#uses=1 type=i1]
  br i1 %121, label %.lr.ph.i66.us, label %.lr.ph.i66

.lr.ph.i66.us:                                    ; preds = %.lr.ph.preheader.i65, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i68.us
end_hunk_10
begin_hunk_11
  %127 = getelementptr inbounds nuw [32 x i8], ptr %.val50, i64 %.089.i67 ; [#uses=2 type=ptr]
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 8 ; [#uses=1 type=ptr]
  %129 = load i64, ptr %128, align 8, !tbaa !18   ; [#uses=1 type=i64]
  %130 = icmp eq i64 %129, %.val49                ; [#uses=1 type=i1]
  br i1 %130, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i70, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i70: ; preds = %.lr.ph.i66
  %131 = load ptr, ptr %127, align 8, !tbaa !15   ; [#uses=1 type=ptr]
  %bcmp.i.i71 = call i32 @bcmp(ptr %131, ptr readonly %.val48, i64 %.val49) ; [#uses=1 type=i32]
  %132 = icmp eq i32 %bcmp.i.i71, 0               ; [#uses=1 type=i1]
  br i1 %132, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit73, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i68

end_hunk_11
