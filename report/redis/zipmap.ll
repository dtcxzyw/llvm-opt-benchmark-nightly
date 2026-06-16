inline.NumInlined: 36
inline.NumDeleted: 9
begin_hunk_0_@zipmapExists:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.us63.i = phi i32 [ %i.e, %bb.c ], [ %.0.copyload.i.us61.i, %bb.b ] ; 3 uses
  %i.f = icmp ult i32 %.0.i.us63.i, 254
  %i.g = select i1 %i.f, i32 1, i32 5             ; 2 uses
  %i.h = icmp eq i32 %.0.i.us63.i, %2
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.i
  %bcmp.us.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull readonly %1, i64 %i.b)
  %.not42.us.i = icmp eq i32 %bcmp.us.i, 0
  br i1 %.not42.us.i, label %zipmapLookupRaw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = add i32 %i.g, %.0.i.us63.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.033.us60.i, i64 %i.l ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.o = icmp ult i8 %i.n, -2
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.0.copyload.i45.us65.i = load i32, ptr %i.p, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = zext i8 %i.n to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i46.us66.i = phi i32 [ %i.q, %bb.h ], [ %.0.copyload.i45.us65.i, %bb.g ] ; 2 uses
  %i.r = icmp ult i32 %.0.i46.us66.i, 254
  %i.s = select i1 %i.r, i64 1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = add i32 %.0.i46.us66.i, 1
  %i.w = zext i8 %i.u to i32
  %i.x = add i32 %i.v, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  br label %.split.split.us.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %.split.split.us.i, %bb.e, %bb.a
  %.2.i = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %.split.split.us.i ]
  ret i32 %.2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @zipmapLen(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %i.b = icmp ult i8 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.a to i32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %zipmapNext.exit, %bb.c
  %.08 = phi i32 [ 0, %bb.c ], [ %i.ab, %zipmapNext.exit ] ; 5 uses
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.aa, %zipmapNext.exit ] ; 3 uses
  %i.e = load i8, ptr %.0, align 1, !tbaa !13     ; 2 uses
  switch i8 %i.e, label %bb.e [
    i8 -1, label %zipmapNext.exit.thread
    i8 -2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = zext i8 %i.e to i32
  br label %zipmapRawKeyLength.exit.i

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 1
  br label %zipmapRawKeyLength.exit.i

zipmapRawKeyLength.exit.i:                        ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %.0.copyload.i.i.i, %bb.f ] ; 2 uses
  %i.h = icmp ult i32 %.0.i.i.i, 254
  %i.i = select i1 %i.h, i32 1, i32 5
  %i.j = add i32 %i.i, %.0.i.i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 %i.k ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13    ; 2 uses
  %i.n = icmp ult i8 %i.m, -2
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.o = zext i8 %i.m to i32
  br label %zipmapNext.exit

bb.h:                                             ; preds = %zipmapRawKeyLength.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.0.copyload.i.i27.i = load i32, ptr %i.p, align 1
  br label %zipmapNext.exit

zipmapNext.exit:                                  ; preds = %bb.h, %bb.g
  %.0.i.i28.i = phi i32 [ %i.o, %bb.g ], [ %.0.copyload.i.i27.i, %bb.h ] ; 2 uses
  %i.q = add i32 %.0.i.i28.i, 1
  %i.r = icmp ult i32 %.0.i.i28.i, 254
  %i.s = select i1 %i.r, i32 1, i32 5             ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %i.q, %i.w
  %i.y = add i32 %i.x, %i.s
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  %i.ab = add i32 %.08, 1
  br label %bb.d, !llvm.loop !19

zipmapNext.exit.thread:                           ; preds = %bb.d
  %i.ac = icmp ult i32 %.08, 254
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %zipmapNext.exit.thread
  %i.ad = trunc nuw i32 %.08 to i8
  store i8 %i.ad, ptr %0, align 1, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %zipmapNext.exit.thread, %bb.i, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.08, %bb.i ], [ %.08, %zipmapNext.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @zipmapBlobLen(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.f, %bb.a
  %.033.us.i = phi ptr [ %i.v, %bb.f ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.033.us.i, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 -1, label %zipmapLookupRaw.exit
    i8 -2, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us.i
  %i.c = getelementptr inbounds nuw i8, ptr %.033.us.i, i64 1
  %.0.copyload.i.us.i = load i32, ptr %i.c, align 1
  br label %zipmapDecodeLength.exit.us.i

bb.c:                                             ; preds = %.split.us.i
  %i.d = zext i8 %i.b to i32
  br label %zipmapDecodeLength.exit.us.i

zipmapDecodeLength.exit.us.i:                     ; preds = %bb.c, %bb.b
  %.0.i.us.i = phi i32 [ %i.d, %bb.c ], [ %.0.copyload.i.us.i, %bb.b ] ; 2 uses
  %i.e = icmp ult i32 %.0.i.us.i, 254
  %i.f = select i1 %i.e, i32 1, i32 5
  %i.g = add i32 %i.f, %.0.i.us.i
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.033.us.i, i64 %i.h ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 2 uses
  %i.k = icmp ult i8 %i.j, -2
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %zipmapDecodeLength.exit.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload.i45.us.i = load i32, ptr %i.l, align 1
  br label %bb.f

bb.e:                                             ; preds = %zipmapDecodeLength.exit.us.i
  %i.m = zext i8 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i46.us.i = phi i32 [ %i.m, %bb.e ], [ %.0.copyload.i45.us.i, %bb.d ] ; 2 uses
  %i.n = icmp ult i32 %.0.i46.us.i, 254
  %i.o = select i1 %i.n, i64 1, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = add i32 %.0.i46.us.i, 1
  %i.s = zext i8 %i.q to i32
  %i.t = add i32 %i.r, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  br label %.split.us.i, !llvm.loop !14

zipmapLookupRaw.exit:                             ; preds = %.split.us.i
  %i.w = ptrtoint ptr %.033.us.i to i64
  %i.x = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.w, %i.x
  %i.y = add i64 %reass.sub, 1
  %i.z = and i64 %i.y, 4294967295
  ret i64 %i.z
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @zipmapValidateIntegrity(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.not59 = icmp eq i32 %2, 0
  br i1 %.not59, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %3 = add nsw i64 %1, -1                         ; 4 uses
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader, %zipmapDecodeLength.exit78
  %.049 = phi i32 [ %i.r, %zipmapDecodeLength.exit78 ], [ 0, %.preheader ] ; 3 uses
  %.0.idx = phi i64 [ %.add65, %zipmapDecodeLength.exit78 ], [ 1, %.preheader ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx ; 2 uses
  %i.e = load i8, ptr %.0.ptr, align 1, !tbaa !13 ; 3 uses
  %.not60 = icmp eq i8 %i.e, -1
  br i1 %.not60, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.preheader.a
  %.not80 = icmp eq i8 %i.e, -2                   ; 2 uses
  %i.f = select i1 %.not80, i64 5, i64 1
  %.0.add = add nuw nsw i64 %i.f, %.0.idx         ; 3 uses
  %4 = icmp slt i64 %.0.add, 2
  %5 = icmp sgt i64 %.0.add, %3
  %or.cond80 = select i1 %4, i1 true, i1 %5
  br i1 %or.cond80, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not80, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = zext i8 %i.e to i32
  br label %zipmapDecodeLength.exit

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 1
  %.0.copyload.i = load i32, ptr %i.h, align 1
  br label %zipmapDecodeLength.exit

zipmapDecodeLength.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.g, %bb.f ], [ %.0.copyload.i, %bb.g ]
  %i.i = zext i32 %.0.i to i64
  %.add = add nuw nsw i64 %.0.add, %i.i           ; 3 uses
  %.ptr66 = getelementptr inbounds nuw i8, ptr %0, i64 %.add ; 2 uses
  %6 = icmp sgt i64 %.add, %3
  br i1 %6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %zipmapDecodeLength.exit
  %.ptr66.val = load i8, ptr %.ptr66, align 1, !tbaa !13 ; 2 uses
  %i.j = icmp ult i8 %.ptr66.val, -2              ; 2 uses
  %i.k = select i1 %i.j, i64 1, i64 5
  %.add63 = add nuw nsw i64 %i.k, %.add           ; 3 uses
  %.ptr67 = getelementptr inbounds nuw i8, ptr %0, i64 %.add63
  %7 = icmp sgt i64 %.add63, %3
  br i1 %7, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = zext i8 %.ptr66.val to i32
  br label %zipmapDecodeLength.exit78

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr66, i64 1
  %.0.copyload.i76 = load i32, ptr %i.m, align 1
  br label %zipmapDecodeLength.exit78

zipmapDecodeLength.exit78:                        ; preds = %bb.j, %bb.k
  %.0.i77 = phi i32 [ %i.l, %bb.j ], [ %.0.copyload.i76, %bb.k ]
  %.add64 = add nuw nsw i64 %.add63, 1
  %i.n = load i8, ptr %.ptr67, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %.0.i77, %i.o
  %i.q = zext i32 %i.p to i64
  %.add65 = add nuw nsw i64 %.add64, %i.q         ; 2 uses
  %i.r = add i32 %.049, 1
  %8 = icmp sgt i64 %.add65, %3
  br i1 %8, label %.loopexit, label %.preheader.a, !llvm.loop !20

bb.l:                                             ; preds = %.preheader.a
  %i.s = icmp eq i32 %.049, 0
  br i1 %i.s, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %.not61 = icmp eq i8 %i.t, -2
  %i.u = zext i8 %i.t to i32
  %.not62 = icmp eq i32 %.049, %i.u
  %or.cond75 = select i1 %.not61, i1 true, i1 %.not62
  %spec.select = zext i1 %or.cond75 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %zipmapDecodeLength.exit, %bb.h, %zipmapDecodeLength.exit78, %bb.m, %bb.l, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ %spec.select, %bb.m ], [ 0, %bb.l ], [ 0, %zipmapDecodeLength.exit78 ], [ 0, %bb.h ], [ 0, %zipmapDecodeLength.exit ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
end_hunk_0
