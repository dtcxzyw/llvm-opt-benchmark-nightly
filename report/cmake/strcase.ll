Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/strcase?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@touppermap = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@tolowermap = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @Curl_raw_toupper(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @touppermap, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @Curl_raw_tolower(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @tolowermap, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  ret i8 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Curl_strntoupper(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.05 = phi ptr [ %i.h, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %.04 = phi ptr [ %i.g, %.preheader ], [ %1, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %i.i, %.preheader ], [ %2, %bb.a ]
  %i.b = load i8, ptr %.04, align 1, !tbaa !9
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @touppermap, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  store i8 %i.e, ptr %.05, align 1, !tbaa !9
  %i.f = load i8, ptr %.04, align 1, !tbaa !9
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.04, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.i = add i64 %.0, -1                          ; 2 uses
  %.not8 = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not8
  br i1 %or.cond, label %.critedge, label %.preheader, !llvm.loop !10

.critedge:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Curl_strntolower(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.05 = phi ptr [ %i.h, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %.04 = phi ptr [ %i.g, %.preheader ], [ %1, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %i.i, %.preheader ], [ %2, %bb.a ]
  %i.b = load i8, ptr %.04, align 1, !tbaa !9
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @tolowermap, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  store i8 %i.e, ptr %.05, align 1, !tbaa !9
  %i.f = load i8, ptr %.04, align 1, !tbaa !9
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.04, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.i = add i64 %.0, -1                          ; 2 uses
  %.not8 = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not8
  br i1 %or.cond, label %.critedge, label %.preheader, !llvm.loop !12

.critedge:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Curl_safecmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %.not = icmp eq i32 %i.c, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %spec.select.demorgan = or i1 %i.a, %i.b
  %spec.select = xor i1 %spec.select.demorgan, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ %spec.select, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @Curl_timestrcmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %.016 = phi i32 [ %i.i, %.preheader ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9     ; 2 uses
  %i.g = xor i8 %i.f, %i.d
  %i.h = sext i8 %i.g to i32
  %i.i = or i32 %.016, %i.h                       ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  %.not18 = icmp eq i8 %i.f, 0
  %or.cond19 = select i1 %.not, i1 true, i1 %.not18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond19, label %.loopexit, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.j = or i1 %i.a, %i.b
  %i.k = zext i1 %i.j to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.017 = phi i32 [ %i.k, %bb.b ], [ %i.i, %.preheader ]
  ret i32 %.017
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
