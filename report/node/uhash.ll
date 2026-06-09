inline.NumInlined: 47
inline.NumDeleted: 11
begin_hunk_0_@uhash_equals_78:bb.a
  unreachable

.thread46.i:                                      ; preds = %bb.l, %bb.q, %bb.p
  %.235.i = phi i32 [ %i.al, %bb.q ], [ %.1.i, %bb.p ], [ %spec.select49.i, %bb.l ]
  %i.bd = zext nneg i32 %.235.i to i64
  br label %_ZL11_uhash_findPK10UHashtable8UElementi.exit

_ZL11_uhash_findPK10UHashtable8UElementi.exit:    ; preds = %bb.j, %.thread46.i
  %i.be = phi i64 [ %i.bd, %.thread46.i ], [ %i.am, %bb.j ]
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.h, align 8
  %i.bi = tail call noundef signext i8 %i.bh(ptr %.sroa.06.0.copyload, ptr %.sroa.03.0.copyload) #13
  %.not39 = icmp eq i8 %i.bi, 0
  br i1 %.not39, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %_ZL11_uhash_findPK10UHashtable8UElementi.exit, %bb.f, %.preheader, %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi i8 [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %.preheader ], [ 0, %_ZL11_uhash_findPK10UHashtable8UElementi.exit ], [ 1, %bb.f ]
  ret i8 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @uhash_compareUChars_78(ptr nofree readonly captures(address) %0, ptr nofree readonly captures(address) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 2 uses
  %.not18 = icmp eq i16 %i.d, 0
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi i16 [ %i.j, %bb.c ], [ %i.d, %.preheader ] ; 2 uses
  %.020 = phi ptr [ %i.i, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.01319 = phi ptr [ %i.h, %bb.c ], [ %0, %.preheader ]
  %i.f = load i16, ptr %.020, align 2
  %i.g = icmp eq i16 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01319, i64 2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020, i64 2 ; 2 uses
  %i.j = load i16, ptr %i.h, align 2              ; 2 uses
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %i.i, %bb.c ], [ %.020, %.lr.ph ]
  %.lcssa = phi i16 [ 0, %.preheader ], [ 0, %bb.c ], [ %i.e, %.lr.ph ]
  %i.k = load i16, ptr %.0.lcssa, align 2
  %i.l = icmp eq i16 %.lcssa, %i.k
  %i.m = zext i1 %i.l to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %.critedge
  %.014 = phi i8 [ %i.m, %.critedge ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i8 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @uhash_compareChars_78(ptr nofree readonly captures(address) %0, ptr nofree readonly captures(address) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1                 ; 2 uses
  %.not18 = icmp eq i8 %i.d, 0
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi i8 [ %i.j, %bb.c ], [ %i.d, %.preheader ] ; 2 uses
  %.020 = phi ptr [ %i.i, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.01319 = phi ptr [ %i.h, %bb.c ], [ %0, %.preheader ]
  %i.f = load i8, ptr %.020, align 1
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01319, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.h, align 1               ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !18

.critedge:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %i.i, %bb.c ], [ %.020, %.lr.ph ]
  %.lcssa = phi i8 [ 0, %.preheader ], [ 0, %bb.c ], [ %i.e, %.lr.ph ]
  %i.k = load i8, ptr %.0.lcssa, align 1
  %i.l = icmp eq i8 %.lcssa, %i.k
  %i.m = zext i1 %i.l to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %.critedge
  %.014 = phi i8 [ %i.m, %.critedge ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i8 %.014
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @uhash_compareIChars_78(ptr nofree readonly captures(address) %0, ptr nofree readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1                 ; 2 uses
  %.not17 = icmp eq i8 %i.d, 0
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi i8 [ %i.l, %bb.c ], [ %i.d, %.preheader ]
  %.019 = phi ptr [ %i.k, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.01318 = phi ptr [ %i.j, %bb.c ], [ %0, %.preheader ] ; 2 uses
  %i.f = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.e) #13
  %i.g = load i8, ptr %.019, align 1
  %i.h = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.g) #13
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.lr.ph..critedge.loopexit_crit_edge

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.pre.pre = load i8, ptr %.01318, align 1
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.01318, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.019, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.j, align 1               ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !19

.critedge:                                        ; preds = %bb.c, %.lr.ph..critedge.loopexit_crit_edge, %.preheader
  %i.m = phi i8 [ 0, %.preheader ], [ %.pre.pre, %.lr.ph..critedge.loopexit_crit_edge ], [ 0, %bb.c ]
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %.019, %.lr.ph..critedge.loopexit_crit_edge ], [ %i.k, %bb.c ]
  %i.n = load i8, ptr %.0.lcssa, align 1
  %i.o = icmp eq i8 %i.m, %i.n
  %i.p = zext i1 %i.o to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %.critedge
  %.014 = phi i8 [ %i.p, %.critedge ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i8 %.014
}

declare signext i8 @uprv_asciitolower_78(i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @uhash_compareIStringView_78(ptr nofree readonly captures(address) %0, ptr nofree readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.d, %i.e
  br i1 %.not, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not2324 = icmp eq i64 %i.d, 0
  br i1 %.not2324, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.h = add nuw i64 %.025, 1                     ; 2 uses
  %i.i = load i64, ptr %0, align 8
  %.not23.not = icmp ult i64 %i.h, %i.i
  br i1 %.not23.not, label %bb.e, label %._crit_edge, !llvm.loop !20

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.d ] ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.025
  %i.l = load i8, ptr %i.k, align 1
  %i.m = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.l) #13
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.025
  %i.p = load i8, ptr %i.o, align 1
  %i.q = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.p) #13
  %.not22 = icmp eq i8 %i.m, %i.q
  br i1 %.not22, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.d, %.preheader, %bb.c, %bb.b, %bb.a
  %.2 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %.preheader ], [ 0, %bb.e ], [ 1, %bb.d ]
  ret i8 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @uhash_hashLong_78(ptr %0) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  ret i32 %.sroa.0.0.extract.trunc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i8 0, 2) i8 @uhash_compareLong_78(ptr %0, ptr %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %.sroa.01.0.extract.trunc = trunc i64 %i.a to i32
  %i.b = ptrtoint ptr %1 to i64
  %.sroa.0.0.extract.trunc = trunc i64 %i.b to i32
  %i.c = icmp eq i32 %.sroa.01.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.d = zext i1 %i.c to i8
  ret i8 %i.d
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!9 = distinct !{null}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = distinct !{ptr @uhash_removeElement_78, null, null}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
end_hunk_0
