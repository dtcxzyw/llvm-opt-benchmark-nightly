inline.NumInlined: 32
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@u_unescape_78:bb.a

bb.q:                                             ; preds = %.split102.us
  store i16 0, ptr %1, align 2
  br label %bb.r

bb.r:                                             ; preds = %.split102.us, %bb.q, %bb.o, %bb.p
  %.062 = phi i32 [ %.5, %bb.o ], [ %.5, %bb.p ], [ 0, %bb.q ], [ 0, %.split102.us ]
  ret i32 %.062
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i16 @_ZL15_charPtr_charAtiPv(i32 noundef %0, ptr noundef %1) #6 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  call void @u_charsToUChars_78(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %i.d = load i16, ptr %i.a, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i16 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @u_asciiToUpper_78(i16 noundef zeroext %0) local_unnamed_addr #10 {
bb.a:
  %i.a = add i16 %0, -97
  %or.cond = icmp ult i16 %i.a, 26
  %i.b = add nsw i16 %0, -32
  %spec.select = select i1 %or.cond, i16 %i.b, i16 %0
  ret i16 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @u_terminateUChars_78(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef returned %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp slt i32 %2, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, %1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e
  store i16 0, ptr %i.f, align 2
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, -124
  br i1 %i.h, label %.sink.split, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, %1
  %. = select i1 %i.i, i32 -124, i32 15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %., %bb.e ], [ 0, %bb.d ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.d
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @u_terminateChars_78(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef returned %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp slt i32 %2, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, %1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  store i8 0, ptr %i.f, align 1
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, -124
  br i1 %i.h, label %.sink.split, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, %1
  %. = select i1 %i.i, i32 -124, i32 15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %., %bb.e ], [ 0, %bb.d ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.d
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @u_terminateUChar32s_78(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef returned %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp slt i32 %2, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, %1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  store i32 0, ptr %i.f, align 4
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, -124
  br i1 %i.h, label %.sink.split, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, %1
  %. = select i1 %i.i, i32 -124, i32 15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %., %bb.e ], [ 0, %bb.d ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.d
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @u_terminateWChars_78(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef returned %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp slt i32 %2, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, %1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  store i32 0, ptr %i.f, align 4
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, -124
  br i1 %i.h, label %.sink.split, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %2, %1
  %. = select i1 %i.i, i32 -124, i32 15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %., %bb.e ], [ 0, %bb.d ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.d
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ustr_hashUCharsN_78(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %.idx = shl nuw nsw i64 %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.d = add nsw i32 %1, -32
  %i.e = sdiv i32 %i.d, 32
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.c ]
  %.01214 = phi ptr [ %0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.g = mul i32 %.015, 37
  %i.h = load i16, ptr %.01214, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = add i32 %i.g, %i.i                       ; 2 uses
  %i.k = getelementptr [2 x i8], ptr %.01214, i64 %i.f
  %i.l = getelementptr i8, ptr %i.k, i64 2        ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.b
  br i1 %i.m, label %bb.c, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ustr_hashCharsN_78(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = zext nneg i32 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.c = add nsw i32 %1, -32
  %i.d = sdiv i32 %i.c, 32
  %i.e = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.c ]
  %.01214 = phi ptr [ %0, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.f = mul i32 %.015, 37
  %i.g = load i8, ptr %.01214, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  %i.j = getelementptr i8, ptr %.01214, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 1        ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.a
  br i1 %i.l, label %bb.c, label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ustr_hashICharsN_78(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = zext nneg i32 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.c = add nsw i32 %1, -32
  %i.d = sdiv i32 %i.c, 32
  %i.e = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.c ]
  %.01214 = phi ptr [ %0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.f = mul i32 %.015, 37
  %i.g = load i8, ptr %.01214, align 1
  %i.h = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.g) #13
  %i.i = zext i8 %i.h to i32
  %i.j = add i32 %i.f, %i.i                       ; 2 uses
  %i.k = getelementptr i8, ptr %.01214, i64 %i.e
  %i.l = getelementptr i8, ptr %i.k, i64 1        ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.a
  br i1 %i.m, label %bb.c, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.1
}

declare signext i8 @uprv_asciitolower_78(i8 noundef signext) local_unnamed_addr #11

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6, !16}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = distinct !{!17, !6, !16}
!18 = distinct !{!18, !6}
!19 = !{ptr @u_memchr_78}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6, !16}
!26 = distinct !{!26, !6}
!27 = !{ptr @u_memrchr_78}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6, !53, !54}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"branch_weights", i32 4, i32 12}
!56 = distinct !{!56, !6, !53, !54}
!57 = distinct !{!57, !6, !54, !53}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
end_hunk_0
