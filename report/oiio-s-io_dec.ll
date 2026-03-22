begin_hunk_0
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; [#uses=6 type=ptr]
  %15 = load ptr, ptr %14, align 8, !tbaa !35     ; [#uses=5 type=ptr]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 52 ; [#uses=1 type=ptr]
  %17 = load i32, ptr %16, align 4, !tbaa !87     ; [#uses=5 type=i32]
  %18 = add i32 %13, -7                           ; [#uses=1 type=i32]
  %narrow.i = icmp ult i32 %18, 4                 ; [#uses=1 type=i1]
  %19 = getelementptr i8, ptr %15, i64 56         ; [#uses=1 type=ptr]
end_hunk_0
begin_hunk_1
  br i1 %.not3.i41, label %WebPRescalerHasPendingOutput.exit.lr.ph, label %WebPRescalerHasPendingOutput.exit.thread.thread

WebPRescalerHasPendingOutput.exit.lr.ph:          ; preds = %3
  %21 = icmp sgt i32 %17, 0                       ; [#uses=1 type=i1]
  br i1 %21, label %WebPRescalerHasPendingOutput.exit.us.preheader, label %WebPRescalerHasPendingOutput.exit

WebPRescalerHasPendingOutput.exit.us.preheader:   ; preds = %WebPRescalerHasPendingOutput.exit.lr.ph
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 1 ; [#uses=1 type=ptr]
  %wide.trip.count = zext nneg i32 %17 to i64     ; [#uses=2 type=i64]
  %xtraiter = and i64 %wide.trip.count, 1         ; [#uses=1 type=i64]
  %23 = icmp eq i32 %17, 1                        ; [#uses=1 type=i1]
  %unroll_iter = and i64 %wide.trip.count, 2147483646 ; [#uses=1 type=i64]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0        ; [#uses=1 type=i1]
  %lcmp.mod61 = trunc i32 %17 to i1               ; [#uses=1 type=i1]
  br label %WebPRescalerHasPendingOutput.exit.us

WebPRescalerHasPendingOutput.exit.us:             ; preds = %WebPRescalerHasPendingOutput.exit.us.preheader, %._crit_edge.us
end_hunk_1
begin_hunk_2
.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; [#uses=2 type=i64]
  %.137.us.epil.init = phi i32 [ %.03543.us, %.lr.ph.us ], [ %55, %._crit_edge.us.unr-lcssa ] ; [#uses=1 type=i32]
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %56 = load ptr, ptr %14, align 8, !tbaa !35     ; [#uses=1 type=ptr]
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 72 ; [#uses=1 type=ptr]
  %58 = load ptr, ptr %57, align 8, !tbaa !86     ; [#uses=1 type=ptr]
end_hunk_2
begin_hunk_3
88:                                               ; preds = %WebPRescalerHasPendingOutput.exit.thread
  %89 = load ptr, ptr @WebPApplyAlphaMultiply4444, align 8, !tbaa !59 ; [#uses=1 type=ptr]
  %90 = load i32, ptr %8, align 8, !tbaa !53      ; [#uses=1 type=i32]
  tail call void %89(ptr noundef %12, i32 noundef %17, i32 noundef %.036.lcssa.ph, i32 noundef %90) #8
  br label %WebPRescalerHasPendingOutput.exit.thread.thread

WebPRescalerHasPendingOutput.exit.thread.thread:  ; preds = %WebPRescalerHasPendingOutput.exit, %82, %3, %88, %WebPRescalerHasPendingOutput.exit.thread
  %.036.lcssa59 = phi i32 [ %.036.lcssa.ph, %WebPRescalerHasPendingOutput.exit.thread ], [ %.036.lcssa.ph, %88 ], [ 0, %3 ], [ %.03642, %WebPRescalerHasPendingOutput.exit ], [ %83, %82 ] ; [#uses=1 type=i32]
  ret i32 %.036.lcssa59
}

; [#uses=1]
end_hunk_3
