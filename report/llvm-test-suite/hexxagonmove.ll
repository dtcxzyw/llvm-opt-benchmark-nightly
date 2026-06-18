inline.NumInlined: 12
inline.NumDeleted: 2
begin_hunk_0_@_Z9alphaBetaR13HexxagonBoardiiiPFvvE:bb.a
  %i.k = icmp eq i8 %i.j, 0
  %i.l = icmp ne ptr %4, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void %4()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = load i32, ptr %i.b, align 8, !tbaa !8
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = icmp sgt i32 %3, -32000
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = add nsw i32 %1, -1
  %i.s = sub nsw i32 0, %3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.03447 = phi i32 [ %2, %.lr.ph ], [ %spec.select, %bb.l ]
  %.03646 = phi i32 [ -32000, %.lr.ph ], [ %.137, %bb.l ] ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.03646, i32 %.03447) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN13HexxagonBoardC1ERKS_(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %0)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = call noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %i.u) ; 0 uses
  %i.w = sub nsw i32 0, %spec.select
  %i.x = call noundef i32 @_Z9alphaBetaR13HexxagonBoardiiiPFvvE(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.w, ptr noundef %4)
  %i.y = sub nsw i32 0, %i.x
  %.137 = call i32 @llvm.smax.i32(i32 %.03646, i32 %i.y) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.b, align 8, !tbaa !8
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  %i.ac = icmp slt i32 %.137, %3
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.l, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.036.lcssa = phi i32 [ -32000, %bb.k ], [ %.137, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN16HexxagonMoveListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 8) #12
  br label %_ZN16HexxagonMoveListD2Ev.exit

_ZN16HexxagonMoveListD2Ev.exit:                   ; preds = %._crit_edge, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #12
  br label %bb.n

bb.n:                                             ; preds = %_ZN16HexxagonMoveListD2Ev.exit, %bb.h, %bb.g, %bb.e, %bb.b
  %.2 = phi i32 [ %i.a, %bb.b ], [ %.036.lcssa, %_ZN16HexxagonMoveListD2Ev.exit ], [ %i.e, %bb.e ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i32 %.2
}

declare noundef i32 @_ZN13HexxagonBoard8evaluateEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

declare noundef ptr @_ZN13HexxagonBoard16generateMoveListEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

declare noundef i32 @_ZN13HexxagonBoard11countBricksEi(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #8

declare void @_ZN13HexxagonBoardC1ERKS_(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #8

declare noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef dead_on_return %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %struct.timeb, align 8              ; 3 uses
  %6 = alloca %class.HexxagonBoard, align 4       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = call i32 @ftime(ptr noundef nonnull %5)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge30

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN16HexxagonMoveList8sortListEv.exit
  %i.d = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.ad, %_ZN16HexxagonMoveList8sortListEv.exit ] ; 2 uses
  %.029 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.ae, %_ZN16HexxagonMoveList8sortListEv.exit ] ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %_ZN16HexxagonMoveList8sortListEv.exit

._crit_edge30:                                    ; preds = %_ZN16HexxagonMoveList8sortListEv.exit, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph
  %i.f = icmp sgt i32 %i.ao, 1
  br i1 %i.f, label %.preheader.i, label %_ZN16HexxagonMoveList8sortListEv.exit

.loopexit.i:                                      ; preds = %bb.c
  %i.g = icmp eq i32 %.2.i, 0
  br i1 %i.g, label %_ZN16HexxagonMoveList8sortListEv.exit, label %.preheader.i, !llvm.loop !17

.preheader.i:                                     ; preds = %._crit_edge, %.loopexit.i
  %i.h = phi i32 [ %i.y, %.loopexit.i ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.i = phi i32 [ %i.z, %.loopexit.i ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph.i, label %_ZN16HexxagonMoveList8sortListEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.k = phi i32 [ %i.y, %bb.c ], [ %i.h, %.preheader.i ]
  %i.l = phi i32 [ %i.z, %bb.c ], [ %i.i, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %.110.i = phi i32 [ %.2.i, %bb.c ], [ 0, %.preheader.i ]
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %i.t = icmp slt i32 %i.p, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = load i64, ptr %i.n, align 4
  %i.v = load i64, ptr %i.q, align 4
  store i64 %i.v, ptr %i.n, align 4
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  store i64 %i.u, ptr %i.x, align 4
  %.pre.i = load i32, ptr %0, align 8, !tbaa !8   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.y = phi i32 [ %.pre.i, %bb.b ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %i.z = phi i32 [ %.pre.i, %bb.b ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %.2.i = phi i32 [ 1, %bb.b ], [ %.110.i, %.lr.ph.i ] ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !19

_ZN16HexxagonMoveList8sortListEv.exit:            ; preds = %.loopexit.i, %.preheader.i, %.preheader, %._crit_edge
  %i.ad = phi i32 [ %i.d, %.preheader ], [ %i.ao, %._crit_edge ], [ %i.h, %.preheader.i ], [ %i.y, %.loopexit.i ]
  %i.ae = add nuw nsw i32 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %2
  br i1 %exitcond.not, label %._crit_edge30, label %.preheader, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.02127 = phi i32 [ %spec.select, %.lr.ph ], [ -32000, %.preheader ]
  %.02226 = phi i32 [ %.123, %.lr.ph ], [ -32000, %.preheader ] ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.02226, i32 %.02127) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN13HexxagonBoardC1ERKS_(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = call noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.ag) ; 0 uses
  %i.ai = sub nsw i32 0, %spec.select
  %i.aj = call noundef i32 @_Z9alphaBetaR13HexxagonBoardiiiPFvvE(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.029, i32 noundef -32000, i32 noundef %i.ai, ptr noundef %3)
  %i.ak = sub nsw i32 0, %i.aj                    ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !15
  %.123 = call i32 @llvm.smax.i32(i32 %.02226, i32 %i.ak) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %0, align 8, !tbaa !8     ; 5 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  %i.ar = icmp slt i32 %.123, 32000
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !28
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN16HexxagonMoveList11getBestMoveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.timeb, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = call i32 @ftime(ptr noundef nonnull %1)  ; 0 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !20
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !24
  %i.f = zext i16 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @srandom(i32 noundef %i.h) #13
  %i.i = load i32, ptr %0, align 8, !tbaa !8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %5, label %2

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  br label %5

5:                                                ; preds = %bb.a, %2
  %.0 = phi ptr [ %4, %2 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @srandom(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTS16HexxagonMoveList", !5, i64 0, !10, i64 8}
!10 = !{!"p1 _ZTS12HexxagonMove", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !5, i64 4}
!16 = !{!"_ZTS12HexxagonMove", !6, i64 0, !6, i64 1, !5, i64 4}
!17 = distinct !{!17, !14, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = distinct !{!19, !14}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTS5timeb", !22, i64 0, !23, i64 8, !23, i64 10, !23, i64 12}
!22 = !{!"long", !6, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!21, !23, i64 8}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
end_hunk_0
