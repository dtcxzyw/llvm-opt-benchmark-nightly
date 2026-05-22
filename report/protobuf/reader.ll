inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only:bb.a
  br i1 %i.y, label %.thread20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  br label %bb.g

.thread20:                                        ; preds = %bb.d, %bb.e
  %i.ab = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef %2) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread20
  %.sroa.0.3 = phi ptr [ %i.ab, %.thread20 ], [ %i.aa, %bb.f ]
  %.sroa.3.3 = phi i64 [ 0, %.thread20 ], [ %.lcssa, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: noinline nounwind uwtable
define hidden { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 7
  %i.e = add nsw i64 %i.d, -128
  %i.f = add i64 %i.e, %1                         ; 2 uses
  %.not = icmp slt i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7     ; 2 uses
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 14
  %i.k = add nsw i64 %i.j, -16384
  %i.l = add i64 %i.k, %i.f                       ; 2 uses
  %.not.1 = icmp slt i8 %i.h, 0
  br i1 %.not.1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7     ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 21
  %i.q = add nsw i64 %i.p, -2097152
  %i.r = add i64 %i.q, %i.l                       ; 2 uses
  %.not.2 = icmp slt i8 %i.n, 0
  br i1 %.not.2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7     ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 28
  %i.w = add nsw i64 %i.v, -268435456
  %i.x = add i64 %i.w, %i.r
  %.not.3 = icmp slt i8 %i.t, 0
  br i1 %.not.3, label %.thread20, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa33 = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  %.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.l, %bb.b ], [ %i.r, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.y = icmp ugt i64 %.lcssa, 2147483647
  br i1 %i.y, label %.thread20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  br label %bb.g

.thread20:                                        ; preds = %bb.d, %bb.e
  %i.ab = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef %2) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread20
  %.sroa.0.3 = phi ptr [ %i.ab, %.thread20 ], [ %i.aa, %bb.f ]
  %.sroa.3.3 = phi i64 [ 0, %.thread20 ], [ %.lcssa, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %.thread48.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, -8
  %i.d = or disjoint i32 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr i8, ptr %3, i64 40         ; 2 uses
  br label %_upb_WireReader_SkipValue.exit.thread

_upb_WireReader_SkipValue.exit.thread:            ; preds = %_upb_WireReader_SkipValue.exit.thread.backedge, %bb.b
  %.026 = phi ptr [ %0, %bb.b ], [ %.026.be, %_upb_WireReader_SkipValue.exit.thread.backedge ] ; 4 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !8
  %i.h = ptrtoint ptr %.026 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.m = icmp ult ptr %.026, %i.l
  br i1 %i.m, label %upb_EpsCopyInputStream_IsDone.exit.thread31, label %bb.c, !prof !15

bb.c:                                             ; preds = %_upb_WireReader_SkipValue.exit.thread
  %sext.i.i = shl i64 %i.j, 32
  %i.n = ashr exact i64 %sext.i.i, 32
  %i.o = load i64, ptr %i.f, align 8, !tbaa !16
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %.thread48.sink.split, label %upb_EpsCopyInputStream_IsDone.exit, !prof !15

upb_EpsCopyInputStream_IsDone.exit:               ; preds = %bb.c
  %i.q = tail call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, ptr noundef %.026, i32 noundef %i.k) #3 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.thread48.sink.split, label %upb_EpsCopyInputStream_IsDone.exit.thread31

upb_EpsCopyInputStream_IsDone.exit.thread31:      ; preds = %_upb_WireReader_SkipValue.exit.thread, %upb_EpsCopyInputStream_IsDone.exit
  %.234 = phi ptr [ %i.q, %upb_EpsCopyInputStream_IsDone.exit ], [ %.026, %_upb_WireReader_SkipValue.exit.thread ] ; 3 uses
  %i.r = load i8, ptr %.234, align 1, !tbaa !7    ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.d, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i, !prof !15

bb.d:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread31
  %i.t = zext nneg i8 %i.r to i32
  %i.u = getelementptr inbounds nuw i8, ptr %.234, i64 1
  br label %upb_WireReader_ReadTag.exit.thread

upb_EpsCopyInputStream_HasErrorHandler.exit.i:    ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread31
  %i.v = zext i8 %i.r to i64
  %i.w = tail call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.234, i64 noundef %i.v, ptr noundef nonnull %3) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 1
  %i.y = trunc i64 %i.x to i32
  %i.z = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread48.sink.split, label %upb_WireReader_ReadTag.exit.thread

upb_WireReader_ReadTag.exit.thread:               ; preds = %bb.d, %upb_EpsCopyInputStream_HasErrorHandler.exit.i
  %.0.i39 = phi ptr [ %i.z, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ], [ %i.u, %bb.d ] ; 10 uses
  %.02538 = phi i32 [ %i.y, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ], [ %i.t, %bb.d ] ; 3 uses
  %i.aa = icmp eq i32 %.02538, %i.d
  br i1 %i.aa, label %.thread48, label %bb.e

bb.e:                                             ; preds = %upb_WireReader_ReadTag.exit.thread
  %i.ab = trunc i32 %.02538 to i8
  %i.ac = and i8 %i.ab, 7
  switch i8 %i.ac, label %bb.n [
    i8 0, label %bb.f
    i8 5, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %.0.i39, align 1, !tbaa !7 ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i39, i64 1
  br label %_upb_WireReader_SkipValue.exit.thread.backedge

_upb_WireReader_SkipValue.exit.thread.backedge:   ; preds = %bb.g, %bb.i, %bb.h, %_upb_WireReader_SkipValue.exit
  %.026.be = phi ptr [ %.1.i, %_upb_WireReader_SkipValue.exit ], [ %i.af, %bb.g ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  br label %_upb_WireReader_SkipValue.exit.thread

upb_EpsCopyInputStream_HasErrorHandler.exit.i.i:  ; preds = %bb.f
  %i.ag = zext i8 %i.ad to i64
  %i.ah = tail call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i39, i64 noundef %i.ag, ptr noundef nonnull %3)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_upb_WireReader_SkipValue.exit

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i39, i64 4
  br label %_upb_WireReader_SkipValue.exit.thread.backedge

bb.i:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i39, i64 8
  br label %_upb_WireReader_SkipValue.exit.thread.backedge

bb.j:                                             ; preds = %bb.e
  %i.al = load i8, ptr %.0.i39, align 1, !tbaa !7 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  %i.an = zext i8 %i.al to i64                    ; 2 uses
  br i1 %i.am, label %bb.k, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i19, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i39, i64 1
  br label %upb_WireReader_ReadSize.exit.i.thread

upb_EpsCopyInputStream_HasErrorHandler.exit.i19:  ; preds = %bb.j
  %i.ap = tail call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i39, i64 noundef %i.an, ptr noundef nonnull %3), !inline_history !17 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1
  %i.ar = extractvalue { ptr, i64 } %i.ap, 0      ; 2 uses
  %.not.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i16, label %bb.n, label %upb_WireReader_ReadSize.exit.i.thread

upb_WireReader_ReadSize.exit.i.thread:            ; preds = %bb.k, %upb_EpsCopyInputStream_HasErrorHandler.exit.i19
  %.0.i.i44 = phi ptr [ %i.ar, %upb_EpsCopyInputStream_HasErrorHandler.exit.i19 ], [ %i.ao, %bb.k ] ; 2 uses
  %.02843 = phi i64 [ %i.aq, %upb_EpsCopyInputStream_HasErrorHandler.exit.i19 ], [ %i.an, %bb.k ]
  %.val.i = load ptr, ptr %3, align 8, !tbaa !8
  %.val21.i = load i64, ptr %i.f, align 8, !tbaa !16
  %sext = shl i64 %.02843, 32
  %i.as = ashr exact i64 %sext, 32                ; 2 uses
  %i.at = ptrtoint ptr %.0.i.i44 to i64
  %i.au = ptrtoint ptr %.val.i to i64
  %.neg.i = sub i64 %i.au, %i.at
  %i.av = add i64 %.neg.i, %.val21.i
  %.not54 = icmp slt i64 %i.av, %i.as
  br i1 %.not54, label %bb.n, label %bb.l

bb.l:                                             ; preds = %upb_WireReader_ReadSize.exit.i.thread
  %i.aw = getelementptr inbounds i8, ptr %.0.i.i44, i64 %i.as
  br label %_upb_WireReader_SkipValue.exit

bb.m:                                             ; preds = %bb.e
  %i.ax = tail call ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i39, i32 noundef %.02538, i32 noundef range(i32 0, 2147483647) %i.a, ptr noundef nonnull %3), !inline_history !17
  br label %_upb_WireReader_SkipValue.exit

bb.n:                                             ; preds = %bb.e, %upb_EpsCopyInputStream_HasErrorHandler.exit.i19, %upb_WireReader_ReadSize.exit.i.thread
  %i.ay = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3) #3
  br label %_upb_WireReader_SkipValue.exit

_upb_WireReader_SkipValue.exit:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i, %bb.n, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.ai, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i ], [ %i.ax, %bb.m ], [ %i.aw, %bb.l ], [ %i.ay, %bb.n ] ; 2 uses
  %.not14 = icmp eq ptr %.1.i, null
  br i1 %.not14, label %.thread48.sink.split, label %_upb_WireReader_SkipValue.exit.thread.backedge

.thread48.sink.split:                             ; preds = %upb_EpsCopyInputStream_IsDone.exit, %bb.c, %upb_EpsCopyInputStream_HasErrorHandler.exit.i, %_upb_WireReader_SkipValue.exit, %bb.a
  %i.az = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef %3) #3
  br label %.thread48

.thread48:                                        ; preds = %upb_WireReader_ReadTag.exit.thread, %.thread48.sink.split
  %.3 = phi ptr [ %i.az, %.thread48.sink.split ], [ %.0.i39, %upb_WireReader_ReadTag.exit.thread ]
  ret ptr %.3
}

declare ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !10, i64 0}
!9 = !{!"upb_EpsCopyInputStream", !10, i64 0, !10, i64 8, !12, i64 16, !10, i64 24, !10, i64 32, !12, i64 40, !11, i64 48, !13, i64 56, !5, i64 57}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_Bool", !5, i64 0}
!14 = !{!9, !10, i64 8}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!9, !12, i64 40}
!17 = distinct !{null}
end_hunk_0
