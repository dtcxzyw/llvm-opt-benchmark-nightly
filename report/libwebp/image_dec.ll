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
  %2 = load i32, ptr %0, align 1                  ; 3 uses
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i32, ptr %i.c, align 1
  %i.d = icmp eq i32 %2, 1196314761
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = and i32 %3, -256
  %or.cond3 = icmp eq i32 %5, -2556160
  br i1 %or.cond3, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %3, label %bb.e [
    i32 1296891946, label %bb.h
    i32 1229531648, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %2, 1179011410
  %i.f = icmp eq i32 %4, 1346520407
  %or.cond7 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond7, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.mask = and i32 %3, -16777216
  %i.g = icmp eq i32 %.mask, 1342177280
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -53
  %or.cond9 = icmp ult i32 %8, 3
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
  %2 = load i32, ptr %0, align 1                  ; 3 uses
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i32, ptr %i.c, align 1
  %i.d = icmp eq i32 %2, 1196314761
  br i1 %i.d, label %WebPGetImageReader.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = and i32 %3, -256
  %or.cond3.i = icmp eq i32 %5, -2556160
  br i1 %or.cond3.i, label %WebPGetImageReader.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %3, label %bb.e [
    i32 1296891946, label %WebPGetImageReader.exit
    i32 1229531648, label %WebPGetImageReader.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %2, 1179011410
  %i.f = icmp eq i32 %4, 1346520407
  %or.cond7.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond7.i, label %WebPGetImageReader.exit, label %6

6:                                                ; preds = %bb.e
  %.mask.i = and i32 %3, -16777216
  %7 = icmp eq i32 %.mask.i, 1342177280
  br i1 %7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %6
  %8 = lshr i32 %3, 16
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -53
  %or.cond9.i = icmp ult i32 %10, 3
  br i1 %or.cond9.i, label %WebPGetImageReader.exit, label %bb.g

bb.g:                                             ; preds = %bb.a, %6, %bb.f
  br label %WebPGetImageReader.exit

WebPGetImageReader.exit:                          ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.d, %bb.c, %bb.g
  %.0.i = phi ptr [ @FailReader, %bb.g ], [ @ReadWebP, %bb.e ], [ @ReadPNM, %bb.f ], [ @ReadJPEG, %bb.c ], [ @ReadTIFF, %bb.d ], [ @ReadTIFF, %bb.d ], [ @ReadPNG, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
end_hunk_0
