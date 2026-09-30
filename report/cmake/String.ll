Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/String?download=true
inline.NumInlined: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isalnum(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, -33
  %i.b = add i8 %i.a, -65
  %i.c = icmp ult i8 %i.b, 26
  %i.d = add i8 %0, -48
  %i.e = icmp ult i8 %i.d, 10
  %i.f = or i1 %i.e, %i.c
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isalpha(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, -33
  %i.b = add i8 %i.a, -65
  %i.c = icmp ult i8 %i.b, 26
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isdigit(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_islower(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -97
  %i.b = icmp ult i8 %i.a, 26
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isupper(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -65
  %i.b = icmp ult i8 %i.a, 26
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 256) i32 @cmsysString_isascii(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, -128
  %i.b = xor i8 %i.a, -128
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isblank(i8 noundef signext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i8 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #4
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = zext nneg i8 %0 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = and i16 %i.f, 1
  %i.h = zext nneg i16 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_iscntrl(i8 noundef signext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i8 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #4
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = zext nneg i8 %0 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = lshr i16 %i.f, 1
  %.lobit = and i16 %i.g, 1
  %i.h = zext nneg i16 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isgraph(i8 noundef signext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i8 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #4
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = zext nneg i8 %0 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %.lobit = lshr i16 %i.f, 15
  %i.g = zext nneg i16 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isprint(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -32
  %i.b = icmp ult i8 %i.a, 95
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_ispunct(i8 noundef signext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i8 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #4
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = zext nneg i8 %0 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = lshr i16 %i.f, 2
  %.lobit = and i16 %i.g, 1
  %i.h = zext nneg i16 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isspace(i8 noundef signext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i8 %0, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #4
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = zext nneg i8 %0 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = lshr i16 %i.f, 13
  %.lobit = and i16 %i.g, 1
  %i.h = zext nneg i16 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @cmsysString_isxdigit(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 3 uses
  %i.b = add nuw nsw i32 %i.a, 198
  %i.c = and i32 %i.b, 254
  %.cmp = icmp samesign ugt i32 %i.c, 245
  %i.d = add nuw nsw i32 %i.a, 185
  %i.e = and i32 %i.d, 254
  %.cmp4 = icmp samesign ugt i32 %i.e, 249
  %i.f = or i1 %.cmp, %.cmp4
  %i.g = add nuw nsw i32 %i.a, 153
  %i.h = and i32 %i.g, 254
  %.cmp5 = icmp samesign ugt i32 %i.h, 249
  %i.i = or i1 %.cmp5, %i.f
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 91, 65) i8 @cmsysString_tolower(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -65
  %i.b = icmp ult i8 %i.a, 26
  %i.c = select i1 %i.b, i8 32, i8 0
  %i.d = xor i8 %i.c, %0
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 123, 97) i8 @cmsysString_toupper(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -97
  %i.b = icmp ult i8 %i.a, 26
  %i.c = select i1 %i.b, i8 32, i8 0
  %i.d = xor i8 %i.c, %0
  ret i8 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -255, 256) i32 @cmsysString_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.03 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.b ]   ; 2 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.l, %bb.b ]    ; 2 uses
  %i.a = load i8, ptr %.03, align 1, !tbaa !14    ; 3 uses
  %i.b = add i8 %i.a, -65
  %i.c = icmp ult i8 %i.b, 26
  %i.d = select i1 %i.c, i8 32, i8 0
  %i.e = xor i8 %i.d, %i.a                        ; 2 uses
  %i.f = load i8, ptr %.0, align 1, !tbaa !14     ; 2 uses
  %i.g = add i8 %i.f, -65
  %i.h = icmp ult i8 %i.g, 26
  %i.i = select i1 %i.h, i8 32, i8 0
  %i.j = xor i8 %i.i, %i.f                        ; 2 uses
  %i.k = icmp ne i8 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.03, i64 1
  %.not = icmp eq i8 %i.a, 0
  %or.cond = or i1 %.not, %i.k
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !16

.critedge:                                        ; preds = %bb.b
  %i.n = zext i8 %i.j to i32
  %i.o = zext i8 %i.e to i32
  %i.p = sub nsw i32 %i.o, %i.n
  ret i32 %i.p
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -255, 256) i32 @cmsysString_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0514 = phi i64 [ %i.q, %bb.b ], [ %2, %bb.a ]
  %.0613 = phi ptr [ %i.o, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0712 = phi ptr [ %i.p, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.a = load i8, ptr %.0712, align 1, !tbaa !14  ; 3 uses
  %i.b = add i8 %i.a, -65
  %i.c = icmp ult i8 %i.b, 26
  %i.d = select i1 %i.c, i8 32, i8 0
  %i.e = xor i8 %i.d, %i.a
  %i.f = zext i8 %i.e to i32
  %i.g = load i8, ptr %.0613, align 1, !tbaa !14  ; 2 uses
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %i.j = select i1 %i.i, i8 32, i8 0
  %i.k = xor i8 %i.j, %i.g
  %i.l = zext i8 %i.k to i32
  %i.m = sub nsw i32 %i.f, %i.l                   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.0613, i64 1
  %.not10 = icmp eq i8 %i.a, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.0712, i64 1
  %i.q = add i64 %.0514, -1                       ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  %or.cond = select i1 %.not10, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !17

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %.lr.ph ]
  ret i32 %.1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 short", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
end_hunk_0
