Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rarvm?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5RarVM7PrepareEPhjP18VM_PreparedProgram:bb.a
  %i.g = zext <4 x i8> %wide.load to <4 x i32>
  %i.h = zext <4 x i8> %wide.load41 to <4 x i32>
  %i.i = xor <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = xor <4 x i32> %vec.phi40, %i.h           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.01821.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %middle.block ], [ %i.r, %.lr.ph ]
  %i.m = load i8, ptr %1, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32
  %.not = icmp eq i32 %.018.lcssa, %i.n
  br i1 %.not, label %bb.b, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 2 uses
  %.01821 = phi i32 [ %i.r, %.lr.ph ], [ %.01821.ph, %.lr.ph.preheader42 ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i32
  %i.r = xor i32 %.01821, %i.q                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

bb.b:                                             ; preds = %._crit_edge
  %i.s = zext i32 %2 to i64
  %i.t = tail call noundef i32 @_Z5CRC32jPKvm(i32 noundef -1, ptr noundef nonnull %1, i64 noundef %i.s)
  switch i32 %i.t, label %.loopexit [
    i32 1386780536, label %bb.c
    i32 -1020781951, label %bb.e
    i32 -929663296, label %bb.f
    i32 -235276158, label %bb.g
    i32 -472669641, label %bb.h
    i32 1132075262, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %2, 53
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.lcssa = phi ptr [ @_ZZN5RarVM7PrepareEPhjP18VM_PreparedProgramE7StdList, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5RarVM7PrepareEPhjP18VM_PreparedProgramE7StdList, i64 12), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5RarVM7PrepareEPhjP18VM_PreparedProgramE7StdList, i64 24), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5RarVM7PrepareEPhjP18VM_PreparedProgramE7StdList, i64 36), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5RarVM7PrepareEPhjP18VM_PreparedProgramE7StdList, i64 48), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5RarVM7PrepareEPhjP18VM_PreparedProgramE7StdList, i64 60), %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33
  store i32 %i.w, ptr %3, align 8, !tbaa !14
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %2, 57
  br i1 %i.x, label %bb.d, label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %2, 120
  br i1 %i.y, label %bb.d, label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %2, 29
  br i1 %i.z, label %bb.d, label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %2, 149
  br i1 %i.aa, label %bb.d, label %.loopexit

bb.i:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %2, 216
  br i1 %i.ab, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.d, %._crit_edge
  ret void
}

declare noundef i32 @_Z5CRC32jPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 5 uses
  %i.b = lshr i32 %i.a, 14
  %i.c = and i32 %i.b, 3
  switch i32 %i.c, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 6)
  %i.d = lshr i32 %i.a, 10
  %i.e = and i32 %i.d, 15
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.a, 15360
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i32 %i.a, 2
  %i.i = or i32 %i.h, -256
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 14)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = lshr i32 %i.a, 6
  %i.k = and i32 %i.j, 255
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 10)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2)
  %i.l = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 16)
  br label %bb.h

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2)
  %i.m = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.n = shl i32 %i.m, 16
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 16)
  %i.o = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.p = or i32 %i.o, %i.n
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 16)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f, %bb.b
  %.021 = phi i32 [ %i.e, %bb.b ], [ %i.p, %bb.g ], [ %i.l, %bb.f ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i32 %.021
}

declare noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5RarVM9SetMemoryEmPhm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 262144
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1 ; 2 uses
  %.not = icmp eq ptr %2, %i.c
  %.not14 = icmp eq i64 %3, 0
  %or.cond = or i1 %.not14, %.not
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw nsw i64 262144, %1
  %i.e = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.d)
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %2, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5RarVM21FilterItanium_GetBitsEPhjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = lshr i32 %2, 3
  %i.b = and i32 %2, 7
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 1
  %i.f = lshr i32 %i.e, %i.b
  %i.g = sub i32 32, %3
  %i.h = lshr i32 -1, %i.g
  %i.i = and i32 %i.f, %i.h
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5RarVM21FilterItanium_SetBitsEPhjjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = lshr i32 %3, 3
  %i.b = and i32 %3, 7                            ; 2 uses
  %i.c = sub i32 32, %4
  %i.d = lshr i32 -1, %i.c
  %i.e = shl i32 %i.d, %i.b
  %i.f = xor i32 %i.e, -1                         ; 4 uses
  %i.g = shl i32 %2, %i.b                         ; 4 uses
  %i.h = zext nneg i32 %i.a to i64                ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = trunc i32 %i.f to i8
  %8 = and i8 %6, %7
  %9 = trunc i32 %i.g to i8
  %10 = or i8 %8, %9
  store i8 %10, ptr %5, align 1, !tbaa !16
  %11 = lshr i32 %i.f, 8
  %12 = lshr i32 %i.g, 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 2 uses
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = trunc i32 %11 to i8
  %17 = and i8 %15, %16
  %18 = trunc i32 %12 to i8
  %19 = or i8 %17, %18
  store i8 %19, ptr %14, align 1, !tbaa !16
  %20 = lshr i32 %i.f, 16
  %21 = lshr i32 %i.g, 16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 2 ; 2 uses
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %25 = trunc i32 %20 to i8
  %26 = and i8 %24, %25
  %27 = trunc i32 %21 to i8
  %28 = or i8 %26, %27
  store i8 %28, ptr %23, align 1, !tbaa !16
  %29 = lshr i32 %i.f, 24
  %30 = lshr i32 %i.g, 24
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %31, i64 3 ; 2 uses
  %32 = load i8, ptr %i.i, align 1, !tbaa !16
  %33 = trunc nuw i32 %29 to i8
  %34 = and i8 %32, %33
  %35 = trunc nuw i32 %30 to i8
  %36 = or i8 %34, %35
  store i8 %36, ptr %i.i, align 1, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTS5RarVM", !9, i64 0, !4, i64 8}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTS18VM_StandardFilters", !4, i64 0}
!13 = !{!"_ZTS18VM_PreparedProgram", !12, i64 0, !4, i64 4, !9, i64 32, !5, i64 40}
!14 = !{!13, !12, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!13, !9, i64 32}
!19 = !{!13, !5, i64 40}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17, !30, !31}
!29 = distinct !{!29, !17, !31, !30}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"_ZTSZN5RarVM7PrepareEPhjP18VM_PreparedProgramE15StandardFilters", !5, i64 0, !5, i64 4, !12, i64 8}
!33 = !{!32, !12, i64 8}
end_hunk_0
