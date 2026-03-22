begin_hunk_0
@Fax3DecodeRLE.module = internal constant [14 x i8] c"Fax3DecodeRLE\00", align 1 ; [#uses=20 type=ptr]

; [#uses=1]
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_TIFFFax3fillruns(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = ptrtoint ptr %2 to i64                     ; [#uses=1 type=i64]
  %6 = ptrtoint ptr %1 to i64                     ; [#uses=1 type=i64]
end_hunk_0
begin_hunk_1
  br label %35

35:                                               ; preds = %28, %27
  %.0119 = phi ptr [ %30, %28 ], [ %23, %27 ]     ; [#uses=1 type=ptr]
  %.1113 = phi i32 [ %34, %28 ], [ %.0112, %27 ]  ; [#uses=4 type=i32]
  %.0119.fr = freeze ptr %.0119                   ; [#uses=6 type=ptr]
  %36 = lshr i32 %.1113, 3                        ; [#uses=4 type=i32]
  %.not138 = icmp eq i32 %36, 0                   ; [#uses=1 type=i1]
  br i1 %.not138, label %58, label %37
end_hunk_1
begin_hunk_2
  br i1 %38, label %.preheader156, label %.lr.ph163.preheader

.preheader156:                                    ; preds = %37
  %39 = ptrtoint ptr %.0119.fr to i64             ; [#uses=2 type=i64]
  %40 = and i64 %39, 7                            ; [#uses=1 type=i64]
  %.not140158 = icmp eq i64 %40, 0                ; [#uses=1 type=i1]
  br i1 %.not140158, label %.loopexit155, label %.lr.ph.preheader
end_hunk_2
begin_hunk_3
  %45 = zext nneg i32 %44 to i64                  ; [#uses=1 type=i64]
  %umin = tail call i64 @llvm.umin.i64(i64 %43, i64 %45) ; [#uses=2 type=i64]
  %46 = add nuw nsw i64 %umin, 1                  ; [#uses=1 type=i64]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0119.fr, i8 0, i64 %46, i1 false), !tbaa !7
  %scevgep = getelementptr i8, ptr %.0119.fr, i64 1 ; [#uses=1 type=ptr]
  %scevgep187 = getelementptr i8, ptr %scevgep, i64 %umin ; [#uses=1 type=ptr]
  %47 = zext i3 %42 to i32                        ; [#uses=1 type=i32]
  %48 = tail call i32 @llvm.usub.sat.i32(i32 %44, i32 %47) ; [#uses=1 type=i32]
  br label %.loopexit155

.loopexit155:                                     ; preds = %.preheader156, %.lr.ph.preheader
  %.1120.lcssa = phi ptr [ %.0119.fr, %.preheader156 ], [ %scevgep187, %.lr.ph.preheader ] ; [#uses=2 type=ptr]
  %.0110.lcssa = phi i32 [ %36, %.preheader156 ], [ %48, %.lr.ph.preheader ] ; [#uses=2 type=i32]
  %49 = lshr i32 %.0110.lcssa, 3                  ; [#uses=1 type=i32]
  %50 = add nsw i32 %49, -1                       ; [#uses=1 type=i32]
end_hunk_3
begin_hunk_4
  br i1 %.not179, label %._crit_edge, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %37, %.loopexit155
  %.1111217 = phi i32 [ %54, %.loopexit155 ], [ %36, %37 ] ; [#uses=1 type=i32]
  %.2121216 = phi ptr [ %scevgep190, %.loopexit155 ], [ %.0119.fr, %37 ] ; [#uses=2 type=ptr]
  %55 = zext nneg i32 %.1111217 to i64            ; [#uses=2 type=i64]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2121216, i8 0, i64 %55, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit155, %.lr.ph163.preheader
  %.2121215 = phi ptr [ %.2121216, %.lr.ph163.preheader ], [ %scevgep190, %.loopexit155 ] ; [#uses=1 type=ptr]
  %.pre-phi201 = phi i64 [ %55, %.lr.ph163.preheader ], [ 0, %.loopexit155 ] ; [#uses=1 type=i64]
  %56 = getelementptr inbounds nuw i8, ptr %.2121215, i64 %.pre-phi201 ; [#uses=1 type=ptr]
  %57 = and i32 %.1113, 7                         ; [#uses=1 type=i32]
  br label %58

58:                                               ; preds = %._crit_edge, %35
  %.3122 = phi ptr [ %56, %._crit_edge ], [ %.0119.fr, %35 ] ; [#uses=2 type=ptr]
  %.2114 = phi i32 [ %57, %._crit_edge ], [ %.1113, %35 ] ; [#uses=2 type=i32]
  %.not142 = icmp eq i32 %.2114, 0                ; [#uses=1 type=i1]
  br i1 %.not142, label %74, label %59
end_hunk_4
begin_hunk_5
  br label %101

101:                                              ; preds = %94, %93
  %.4123 = phi ptr [ %96, %94 ], [ %89, %93 ]     ; [#uses=1 type=ptr]
  %.4 = phi i32 [ %100, %94 ], [ %.3115, %93 ]    ; [#uses=4 type=i32]
  %.4123.fr = freeze ptr %.4123                   ; [#uses=6 type=ptr]
  %102 = lshr i32 %.4, 3                          ; [#uses=4 type=i32]
  %.not145 = icmp eq i32 %102, 0                  ; [#uses=1 type=i1]
  br i1 %.not145, label %124, label %103
end_hunk_5
begin_hunk_6
  br i1 %104, label %.preheader, label %.lr.ph172.preheader

.preheader:                                       ; preds = %103
  %105 = ptrtoint ptr %.4123.fr to i64            ; [#uses=2 type=i64]
  %106 = and i64 %105, 7                          ; [#uses=1 type=i64]
  %.not147164 = icmp eq i64 %106, 0               ; [#uses=1 type=i1]
  br i1 %.not147164, label %.loopexit, label %.lr.ph167.preheader
end_hunk_6
begin_hunk_7
  %111 = zext nneg i32 %110 to i64                ; [#uses=1 type=i64]
  %umin192 = tail call i64 @llvm.umin.i64(i64 %109, i64 %111) ; [#uses=2 type=i64]
  %112 = add nuw nsw i64 %umin192, 1              ; [#uses=1 type=i64]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4123.fr, i8 -1, i64 %112, i1 false), !tbaa !7
  %scevgep193 = getelementptr i8, ptr %.4123.fr, i64 1 ; [#uses=1 type=ptr]
  %scevgep195 = getelementptr i8, ptr %scevgep193, i64 %umin192 ; [#uses=1 type=ptr]
  %113 = zext i3 %108 to i32                      ; [#uses=1 type=i32]
  %114 = tail call i32 @llvm.usub.sat.i32(i32 %110, i32 %113) ; [#uses=1 type=i32]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph167.preheader
  %.5124.lcssa = phi ptr [ %.4123.fr, %.preheader ], [ %scevgep195, %.lr.ph167.preheader ] ; [#uses=2 type=ptr]
  %.2.lcssa = phi i32 [ %102, %.preheader ], [ %114, %.lr.ph167.preheader ] ; [#uses=2 type=i32]
  %115 = lshr i32 %.2.lcssa, 3                    ; [#uses=1 type=i32]
  %116 = add nsw i32 %115, -1                     ; [#uses=1 type=i32]
end_hunk_7
begin_hunk_8
  br i1 %.not180, label %._crit_edge173, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %103, %.loopexit
  %.3223 = phi i32 [ %120, %.loopexit ], [ %102, %103 ] ; [#uses=1 type=i32]
  %.6222 = phi ptr [ %scevgep198, %.loopexit ], [ %.4123.fr, %103 ] ; [#uses=2 type=ptr]
  %121 = zext nneg i32 %.3223 to i64              ; [#uses=2 type=i64]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.6222, i8 -1, i64 %121, i1 false), !tbaa !7
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %.loopexit, %.lr.ph172.preheader
  %.6221 = phi ptr [ %.6222, %.lr.ph172.preheader ], [ %scevgep198, %.loopexit ] ; [#uses=1 type=ptr]
  %.pre-phi = phi i64 [ %121, %.lr.ph172.preheader ], [ 0, %.loopexit ] ; [#uses=1 type=i64]
  %122 = getelementptr inbounds nuw i8, ptr %.6221, i64 %.pre-phi ; [#uses=1 type=ptr]
  %123 = and i32 %.4, 7                           ; [#uses=1 type=i32]
  br label %124

124:                                              ; preds = %._crit_edge173, %101
  %.7 = phi ptr [ %122, %._crit_edge173 ], [ %.4123.fr, %101 ] ; [#uses=2 type=ptr]
  %.5 = phi i32 [ %123, %._crit_edge173 ], [ %.4, %101 ] ; [#uses=2 type=i32]
  %.not149 = icmp eq i32 %.5, 0                   ; [#uses=1 type=i1]
  br i1 %.not149, label %137, label %125
end_hunk_8
begin_hunk_9
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_9
