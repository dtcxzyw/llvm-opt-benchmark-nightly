Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/cle?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
begin_hunk_0_@llvm.lifetime.start.p0

; Function Attrs: noredzone optsize
declare dso_local i32 @isatty(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @cle_write(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.e ] ; 3 uses
  %.012 = phi i16 [ %2, %bb.a ], [ %.1, %bb.e ]   ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i16 %.012 to i64
  %i.d = tail call i64 @write(i32 noundef %i.b, ptr noundef %.013, i64 noundef %i.c) #13 ; 4 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno() #13
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ne i64 %i.d, 0
  %i.i = icmp eq i32 %i.g, 4
  %or.cond.not = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.013, i64 %i.d
  %i.k = trunc i64 %i.d to i16
  %i.l = sub i16 %.012, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.114 = phi ptr [ %.013, %bb.c ], [ %i.j, %bb.d ]
  %.1 = phi i16 [ %.012, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.not = icmp eq i16 %.1, 0
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !10

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -5, 1) i32 @cle(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @fileno(ptr noundef %3) #14
  %i.b = tail call i32 @fileno(ptr noundef %4) #14
  %i.c = tail call i32 @cle_fd(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %i.a, i32 noundef %i.b) #14
  ret i32 %i.c
}

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree noredzone optsize
declare dso_local noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @cle_setcursor(ptr nofree noundef nonnull captures(none) %0, i16 noundef signext %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = sext i16 %1 to i32                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = sub nsw i32 %i.e, %i.h                   ; 3 uses
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nsw i32 %i.b, %i.i                   ; 2 uses
  %i.l = add nsw i32 %i.k, %i.e
  %i.m = icmp slt i32 %i.l, %i.h
  %spec.select = select i1 %i.m, i32 %i.i, i32 %i.k ; 2 uses
  %i.n = icmp slt i32 %spec.select, 0
  %i.o = select i1 %i.n, ptr @.str, ptr @.str.1
  %i.p = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull %i.o, i32 noundef %i.p) #13
  %i.r = trunc i32 %i.q to i16
  call fastcc void @cle_write(ptr noundef %0, ptr noundef nonnull %i.a, i16 noundef zeroext %i.r) #14
  %i.s = load i16, ptr %i.f, align 4
  %i.t = add i16 %i.s, %1
  store i16 %i.t, ptr %i.c, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc range(i32 -128, 128) i32 @cle_getch(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = call i64 @read(i32 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1) #13 ; 2 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno() #13
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ne i64 %i.d, 0
  %i.i = icmp eq i32 %i.g, 4
  %or.cond.not = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 1
  %i.k = sext i8 %i.j to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %.3 = phi i32 [ %i.k, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.3
}

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cle_closetext(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #9 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.025 = add nuw nsw i32 %i.a, 1
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = icmp samesign ult i32 %.025, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = zext i16 %1 to i64                       ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv29 = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next30, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv29
  store i8 %i.k, ptr %i.l, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i16, ptr %i.b, align 8              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.m, %bb.b ]
  %i.p = add i16 %.lcssa, -1
  store i16 %i.p, ptr %i.b, align 8
  %i.q = load i16, ptr %0, align 8                ; 2 uses
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp sgt i32 %i.r, %i.a
  br i1 %i.s, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %._crit_edge
  %i.t = sub nuw nsw i32 %i.r, %i.a
  %i.u = icmp samesign ugt i32 %i.t, 1
  %i.v = add i16 %i.q, -1
  %.sink = select i1 %i.u, i16 %i.v, i16 %1
  store i16 %.sink, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %._crit_edge
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @cle_insertch(ptr nofree noundef nonnull captures(none) %0, i8 noundef signext %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp samesign ult i32 %i.e, %i.h
  br i1 %.not.i, label %.preheader.i, label %cle_opentext.exit

.preheader.i:                                     ; preds = %bb.a
  %2 = load i16, ptr %0, align 8                  ; 2 uses
  %3 = zext i16 %2 to i32                         ; 2 uses
  %.017.i = add nsw i32 %i.d, -1                  ; 2 uses
  %.not1618.i = icmp slt i32 %.017.i, %3
  br i1 %.not1618.i, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %.017.i, %.lr.ph.i ], [ %.0.i, %bb.b ] ; 3 uses
  %.0.in19.i = phi i32 [ %i.d, %.lr.ph.i ], [ %.020.i, %bb.b ]
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %4 = zext nneg i32 %.020.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %4
  %i.l = load i8, ptr %i.k, align 1
  %5 = zext nneg i32 %.0.in19.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %5
  store i8 %i.l, ptr %i.m, align 1
  %.0.i = add nsw i32 %.020.i, -1                 ; 2 uses
  %.not16.i = icmp slt i32 %.0.i, %3
  br i1 %.not16.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %.pre.i = load i16, ptr %i.b, align 8
  %.pre = load i16, ptr %0, align 8
  br label %bb.c

cle_opentext.exit:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 7, ptr %i.a, align 1
  call fastcc void @cle_write(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.a, i16 noundef zeroext 1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %i.n = phi i16 [ %.pre, %._crit_edge.loopexit.i ], [ %2, %.preheader.i ] ; 2 uses
  %i.o = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.c, %.preheader.i ]
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = add i16 %i.n, 1
  store i16 %i.s, ptr %0, align 8
  %i.t = sext i16 %i.n to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i8 %1, ptr %i.u, align 1
  br label %bb.d

bb.d:                                             ; preds = %cle_opentext.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn memory(read)
declare dso_local i32 @iscntrl(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree noredzone optsize
declare dso_local noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strlen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse noredzone nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noredzone nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind optsize }
attributes #14 = { noredzone optsize }
attributes #15 = { noredzone nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
end_hunk_0
