inline.NumInlined: 31
inline.NumDeleted: 7
begin_hunk_0_@_ZN7RawRead4GetVEv:bb.a
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %.not = icmp ult i64 %.promoted, %i.c
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %i.e = icmp uge i64 %i.h, %i.c
  %i.f = icmp samesign ugt i64 %indvars.iv, 56
  %.not17 = select i1 %i.e, i1 true, i1 %i.f
  br i1 %.not17, label %._crit_edge, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.01218 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.h = add nuw i64 %i.g, 1                      ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25    ; 2 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64
  %i.m = shl i64 %i.l, %indvars.iv
  %i.n = add i64 %i.m, %.01218                    ; 2 uses
  %i.o = icmp slt i8 %i.j, 0
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %spec.select = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7RawRead8GetVSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0813 = phi i64 [ %1, %.lr.ph ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0813
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.0813, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !28

bb.d:                                             ; preds = %bb.b
  %i.i = sub i64 %.0813, %1
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.d
  %i.l = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN7RawRead4GetBEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = sub i64 %i.b, %i.d                       ; 4 uses
  %i.f = icmp ult i64 %i.e, %2
  %. = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %2) ; 4 uses
  %.not = icmp eq i64 %., 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.h, i64 %., i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.j = sub nuw i64 %2, %i.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load i64, ptr %i.c, align 8, !tbaa !24
  %i.l = add i64 %i.k, %.
  store i64 %i.l, ptr %i.c, align 8, !tbaa !24
  ret i64 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define void @_ZN7RawRead4GetWEPwm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = shl i64 %2, 1
  %i.d = add i64 %i.c, -1
  %i.e = add i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  %i.k = tail call noundef ptr @_Z9RawToWidePKhPwm(ptr noundef nonnull %i.j, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.l = shl i64 %2, 2
  %i.m = load i64, ptr %i.a, align 8, !tbaa !24
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %i.a, align 8, !tbaa !24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = shl i64 %2, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.o, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef ptr @_Z9RawToWidePKhPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 65536) i32 @_ZN7RawRead8GetCRC15Eb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp ult i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.f, align 8
  %i.g = select i1 %1, i64 %.val, i64 %i.b
  %i.h = add i64 %i.g, -2
  %i.i = tail call noundef i32 @_Z5CRC32jPKvm(i32 noundef -1, ptr noundef nonnull %i.e, i64 noundef %i.h)
  %i.j = and i32 %i.i, 65535
  %i.k = xor i32 %i.j, 65535
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_Z5CRC32jPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp ult i64 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = add i64 %i.b, -4
  %i.g = tail call noundef i32 @_Z5CRC32jPKvm(i32 noundef -1, ptr noundef nonnull %i.e, i64 noundef %i.f)
  %i.h = xor i32 %i.g, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_Z7RawGetVPKhRjjRb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) local_unnamed_addr #9 {
bb.a:
  store i8 0, ptr %3, align 1, !tbaa !29
  %.promoted = load i32, ptr %1, align 4, !tbaa !31 ; 2 uses
  %.not21 = icmp ult i32 %.promoted, %2
  br i1 %.not21, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %.promoted to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i32 %.01523, 7
  %exitcond.not = icmp eq i32 %2, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.01523 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.b, %bb.b ] ; 2 uses
  %.01622 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.j, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = trunc i64 %indvars.iv.next to i32        ; 2 uses
  store i32 %i.c, ptr %1, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25    ; 2 uses
  %i.f = and i8 %i.e, 127
  %i.g = zext nneg i8 %i.f to i64
  %i.h = zext nneg i32 %.01523 to i64
  %i.i = shl i64 %i.g, %i.h
  %i.j = add i64 %i.i, %.01622                    ; 2 uses
  %i.k = icmp slt i8 %i.e, 0
  br i1 %i.k, label %bb.b, label %.thread

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i8 1, ptr %3, align 1, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %._crit_edge
  %.3 = phi i64 [ 0, %._crit_edge ], [ %i.j, %.lr.ph ]
  ret i64 %.3
}

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS5ArrayIhE", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !15, i64 32}
!14 = !{!"_ZTS7RawRead", !9, i64 0, !15, i64 32, !12, i64 40, !12, i64 48, !16, i64 56}
!15 = !{!"p1 _ZTS4File", !11, i64 0}
!16 = !{!"p1 _ZTS9CryptData", !11, i64 0}
!17 = !{!14, !16, i64 56}
!18 = !{!14, !12, i64 40}
!19 = !{!9, !12, i64 16}
!20 = !{!9, !10, i64 0}
!21 = !{!9, !12, i64 24}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !7, i64 0}
!24 = !{!14, !12, i64 48}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!30, !30, i64 0}
!30 = !{!"bool", !6, i64 0}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !27}
end_hunk_0
