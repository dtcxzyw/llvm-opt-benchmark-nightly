inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@_ZN15CPercentPrinter12PrintNewLineEv:bb.a
  br label %_ZL9ClearPrevPci.exit.i

_ZL9ClearPrevPci.exit.i:                          ; preds = %.lr.ph25.preheader.i.i, %bb.b
  %.214.lcssa.i.i = phi ptr [ %scevgep30.i.i, %.lr.ph25.preheader.i.i ], [ %i.a, %bb.b ]
  store i8 0, ptr %.214.lcssa.i.i, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.a) ; 0 uses
  store i32 0, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN15CPercentPrinter10ClosePrintEv.exit

_ZN15CPercentPrinter10ClosePrintEv.exit:          ; preds = %bb.a, %_ZL9ClearPrevPci.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter12RePrintRatioEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [114 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = mul i64 %i.g, 100
  %i.i = udiv i64 %i.h, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  call void @_Z21ConvertUInt64ToStringyPcj(i64 noundef %i.j, ptr noundef nonnull %i.a, i32 noundef 10)
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #7 ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = add nsw i32 %i.l, 1                      ; 4 uses
  %sext = shl i64 %i.k, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i8 37, ptr %i.o, align 1, !tbaa !13
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !13
  %i.r = call noundef i32 @llvm.smax.i32(i32 %i.m, i32 4)
  %i.s = add nuw i32 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !8    ; 3 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.u) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.preheader24.preheader, label %bb.d

.preheader24.preheader:                           ; preds = %bb.c
  %i.w = call i32 @llvm.umax.i32(i32 %spec.select, i32 1)
  %umax = zext nneg i32 %i.w to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 32, i64 %umax, i1 false), !tbaa !13
  %scevgep = getelementptr i8, ptr %i.b, i64 %umax
  br label %bb.d

bb.d:                                             ; preds = %.preheader24.preheader, %bb.c
  %i.x = phi i32 [ %spec.select, %.preheader24.preheader ], [ %i.u, %bb.c ] ; 5 uses
  %.118 = phi ptr [ %scevgep, %.preheader24.preheader ], [ %i.b, %bb.c ] ; 6 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %i.z = zext nneg i32 %i.x to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.z, 24
  %n.vec = and i64 %i.z, 2147483616               ; 5 uses
  %i.aa = trunc nuw nsw i64 %n.vec to i32
  %i.ab = getelementptr i8, ptr %.118, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.118, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> splat (i8 8), ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> splat (i8 8), ptr %i.ac, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.z, 2147483640             ; 4 uses
  %i.ae = trunc nuw nsw i64 %n.vec45 to i32
  %i.af = getelementptr i8, ptr %.118, i64 %n.vec45 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %next.gep47 = getelementptr i8, ptr %.118, i64 %index46
  store <8 x i8> splat (i8 8), ptr %next.gep47, align 1, !tbaa !13
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %n.vec45, %i.z
  br i1 %cmp.n49, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.128.ph = phi i32 [ 0, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.227.ph = phi ptr [ %.118, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.128 = phi i32 [ %i.ai, %.lr.ph ], [ %.128.ph, %.lr.ph.preheader ]
  %.227 = phi ptr [ %i.ah, %.lr.ph ], [ %.227.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.227, i64 1 ; 2 uses
  store i8 8, ptr %.227, align 1, !tbaa !13
  %i.ai = add nuw nsw i32 %.128, 1                ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.x
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %.2.lcssa = phi ptr [ %.118, %bb.d ], [ %i.af, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.ah, %.lr.ph ] ; 2 uses
  store i32 %spec.select, ptr %i.t, align 8, !tbaa !8
  %i.ak = icmp slt i32 %i.m, %spec.select
  br i1 %i.ak, label %.lr.ph32, label %.preheader.preheader

.lr.ph32:                                         ; preds = %._crit_edge, %.lr.ph32
  %.330 = phi ptr [ %i.al, %.lr.ph32 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.02029 = phi i32 [ %i.am, %.lr.ph32 ], [ %i.m, %._crit_edge ]
  %i.al = getelementptr inbounds nuw i8, ptr %.330, i64 1 ; 2 uses
  store i8 32, ptr %.330, align 1, !tbaa !13
  %i.am = add nsw i32 %.02029, 1                  ; 2 uses
  %i.an = load i32, ptr %i.t, align 8, !tbaa !8
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph32, label %.preheader.preheader, !llvm.loop !24

.preheader.preheader:                             ; preds = %.lr.ph32, %._crit_edge
  %.0.i.ph = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.al, %.lr.ph32 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.04.i = phi ptr [ %i.ap, %.preheader ], [ %i.a, %.preheader.preheader ] ; 2 uses
  %.0.i = phi ptr [ %i.ar, %.preheader ], [ %.0.i.ph, %.preheader.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.aq = load i8, ptr %.04.i, align 1, !tbaa !13 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.aq, ptr %.0.i, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %.preheader, !llvm.loop !25

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.au = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull %i.b) ; 0 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.aw = call noundef zeroext i1 @_ZN13CStdOutStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @_Z21ConvertUInt64ToStringyPcj(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN13CStdOutStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter10PrintRatioEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.f = add i64 %i.e, %i.d
  %1 = icmp uge i64 %i.b, %i.f
  %i.g = add i64 %i.e, %i.b
  %2 = icmp ule i64 %i.g, %i.d
  %or.cond.not6 = or i1 %1, %2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i32, ptr %3, align 8
  %.not = icmp eq i32 %4, 0
  %or.cond3 = select i1 %or.cond.not6, i1 true, i1 %.not
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15CPercentPrinter12RePrintRatioEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !5, i64 32}
!9 = !{!"_ZTS15CPercentPrinter", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !11, i64 40}
!10 = !{!"long long", !6, i64 0}
!11 = !{!"p1 _ZTS13CStdOutStream", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!9, !11, i64 40}
!15 = !{!9, !10, i64 24}
!16 = !{!9, !10, i64 16}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 8, i32 24}
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !18, !20, !19}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = !{!9, !10, i64 8}
!27 = !{!9, !10, i64 0}
end_hunk_0
