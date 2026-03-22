begin_hunk_0
  br i1 %.not11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %70
  %72 = load i64, ptr %15, align 8, !tbaa !12     ; [#uses=7 type=i64]
  %73 = load ptr, ptr %7, align 8                 ; [#uses=2 type=ptr]
  %74 = icmp eq i64 %72, 0                        ; [#uses=2 type=i1]
  br i1 %74, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.split.us.i.i
end_hunk_0
begin_hunk_1
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i ], [ %22, %.lr.ph.i.i.i ] ; [#uses=1 type=ptr]
  %78 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40 ; [#uses=1 type=ptr]
  %79 = load i64, ptr %78, align 8, !tbaa !12     ; [#uses=2 type=i64]
  %.not.i.i.i.i = icmp eq i64 %79, %72            ; [#uses=1 type=i1]
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, label %80

80:                                               ; preds = %.lr.ph.i.split.i.i
  %81 = icmp ugt i64 %79, %72                     ; [#uses=1 type=i1]
  br i1 %81, label %86, label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.split.i.i
  %82 = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32 ; [#uses=1 type=ptr]
  %83 = load ptr, ptr %82, align 8, !tbaa !15     ; [#uses=1 type=ptr]
  %84 = call i32 @memcmp(ptr noundef %83, ptr noundef %73, i64 noundef %72) #21 ; [#uses=1 type=i32]
  %85 = icmp slt i32 %84, 0                       ; [#uses=1 type=i1]
  br i1 %85, label %86, label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i

end_hunk_1
begin_hunk_2
  %90 = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 32 ; [#uses=1 type=ptr]
  %91 = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40 ; [#uses=1 type=ptr]
  %92 = load i64, ptr %91, align 8, !tbaa !12     ; [#uses=2 type=i64]
  %.not.i3.i.i = icmp eq i64 %72, %92             ; [#uses=1 type=i1]
  br i1 %.not.i3.i.i, label %94, label %93

93:                                               ; preds = %89
  %.not53 = icmp ugt i64 %72, %92                 ; [#uses=1 type=i1]
  br i1 %.not53, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit

94:                                               ; preds = %89
end_hunk_2
begin_hunk_3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %94
  %95 = load ptr, ptr %90, align 8, !tbaa !15     ; [#uses=1 type=ptr]
  %96 = call i32 @memcmp(ptr noundef %73, ptr noundef %95, i64 noundef %72) #21 ; [#uses=1 type=i32]
  %97 = icmp sgt i32 %96, -1                      ; [#uses=1 type=i1]
  br i1 %97, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

end_hunk_3
begin_hunk_4

.lr.ph:                                           ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; [#uses=1 type=ptr]
  %6 = load i64, ptr %5, align 8, !tbaa !12       ; [#uses=4 type=i64]
  %7 = icmp eq i64 %6, 0                          ; [#uses=1 type=i1]
  %8 = load ptr, ptr %1, align 8                  ; [#uses=1 type=ptr]
  br i1 %7, label %.lr.ph.split.us.preheader, label %.lr.ph.split

end_hunk_4
begin_hunk_5
  %.02837 = phi ptr [ %.028, %18 ], [ %.02835, %.lr.ph ] ; [#uses=6 type=ptr]
  %10 = getelementptr inbounds nuw i8, ptr %.02837, i64 40 ; [#uses=1 type=ptr]
  %11 = load i64, ptr %10, align 8, !tbaa !12     ; [#uses=2 type=i64]
  %.not.i = icmp eq i64 %6, %11                   ; [#uses=1 type=i1]
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %12

12:                                               ; preds = %.lr.ph.split
  %13 = icmp ugt i64 %6, %11                      ; [#uses=1 type=i1]
  br i1 %13, label %18, label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.split
  %14 = getelementptr inbounds nuw i8, ptr %.02837, i64 32 ; [#uses=1 type=ptr]
  %15 = load ptr, ptr %14, align 8, !tbaa !15     ; [#uses=1 type=ptr]
  %16 = tail call i32 @memcmp(ptr noundef %8, ptr noundef %15, i64 noundef %6) #21 ; [#uses=1 type=i32]
  %17 = icmp slt i32 %16, 0                       ; [#uses=1 type=i1]
  br i1 %17, label %18, label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread

end_hunk_5
