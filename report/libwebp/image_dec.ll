Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/image_dec?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"WebP, JPEG, PNG, PNM (PGM, PPM, PAM), TIFF\00", align 1
@switch.table.WebPGetImageReader = private unnamed_addr constant [5 x ptr] [ptr @ReadPNG, ptr @ReadJPEG, ptr @ReadTIFF, ptr @ReadWebP, ptr @ReadPNM], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @WebPGetEnabledInputFileFormats() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 6) i32 @WebPGuessImageType(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i64 %1, 11
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %2 = load i8, ptr %0, align 1, !tbaa !9         ; 2 uses
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !9         ; 2 uses
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or disjoint i32 %8, %4
  %14 = or disjoint i32 %13, %12                  ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i8, ptr %i.c, align 1, !tbaa !9
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or disjoint i32 %25, %21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or disjoint i32 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  %35 = or disjoint i32 %31, %34
  %i.d = icmp eq i32 %18, -1991225785
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond3 = icmp eq i32 %14, -2556160
  br i1 %or.cond3, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %18, label %bb.e [
    i32 1296891946, label %bb.h
    i32 1229531648, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %18, 1380533830
  %i.f = icmp eq i32 %35, 1464156752
  %or.cond7 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond7, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %2, 80
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %36 = add i8 %6, -53
  %or.cond9 = icmp ult i8 %36, 3
  %spec.select = select i1 %or.cond9, i32 4, i32 5
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.d, %bb.d, %bb.e, %bb.a
  %.2 = phi i32 [ 5, %bb.a ], [ 5, %bb.f ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ %spec.select, %bb.g ], [ 2, %bb.d ], [ 3, %bb.e ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @WebPGetImageReader(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.WebPGetImageReader, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @FailReader, %bb.a ]
  ret ptr %.0
}

declare i32 @ReadPNG(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @ReadJPEG(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @ReadTIFF(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @ReadWebP(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @ReadPNM(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @FailReader(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @WebPGuessImageReader(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i64 %1, 11
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %2 = load i8, ptr %0, align 1, !tbaa !9         ; 2 uses
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !9         ; 2 uses
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or disjoint i32 %8, %4
  %14 = or disjoint i32 %13, %12                  ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i8, ptr %i.c, align 1, !tbaa !9
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or disjoint i32 %25, %21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or disjoint i32 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  %35 = or disjoint i32 %31, %34
  %i.d = icmp eq i32 %18, -1991225785
  br i1 %i.d, label %WebPGetImageReader.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond3.i = icmp eq i32 %14, -2556160
  br i1 %or.cond3.i, label %WebPGetImageReader.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %18, label %bb.e [
    i32 1296891946, label %WebPGetImageReader.exit
    i32 1229531648, label %WebPGetImageReader.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %18, 1380533830
  %i.f = icmp eq i32 %35, 1464156752
  %or.cond7.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond7.i, label %WebPGetImageReader.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %36 = icmp eq i8 %2, 80
  %37 = add i8 %6, -53
  %or.cond9.i = icmp ult i8 %37, 3
  %or.cond = select i1 %36, i1 %or.cond9.i, i1 false
  br i1 %or.cond, label %WebPGetImageReader.exit, label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  br label %WebPGetImageReader.exit

WebPGetImageReader.exit:                          ; preds = %bb.f, %bb.b, %bb.e, %bb.d, %bb.d, %bb.c, %bb.g
  %.0.i = phi ptr [ @FailReader, %bb.g ], [ @ReadWebP, %bb.e ], [ @ReadPNM, %bb.f ], [ @ReadJPEG, %bb.c ], [ @ReadTIFF, %bb.d ], [ @ReadTIFF, %bb.d ], [ @ReadPNG, %bb.b ]
  ret ptr %.0.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
end_hunk_0
