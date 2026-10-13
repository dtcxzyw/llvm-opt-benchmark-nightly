Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/dow?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@timelib_isodate_from_date:bb.a
  %i.r = add i64 %i.q, %i.p
  %i.s = sub i64 %i.r, %i.m
  %i.t = add i64 %i.s, %i.o
  %i.u = srem i64 %i.t, 7                         ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = select i1 %i.v, i64 7, i64 0
  %spec.select.i18.i = add nsw i64 %i.w, %i.u     ; 2 uses
  %.not = icmp eq i64 %spec.select.i18.i, 0
  %.0.i = select i1 %.not, i64 7, i64 %spec.select.i18.i
  store i64 %.0.i, ptr %5, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @timelib_daynr_from_weeknr(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i64 %0, 400                         ; 3 uses
  %i.b = srem i64 %0, 100                         ; 3 uses
  %i.c = and i64 %0, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i64 %i.b, 0
  %i.e = icmp eq i64 %i.a, 0
  %or.cond.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond.i.i, label %timelib_day_of_week.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %timelib_day_of_week.exit

timelib_day_of_week.exit:                         ; preds = %bb.b, %bb.c
  %m_table_common.sink.i.i = phi ptr [ @m_table_common, %bb.c ], [ @m_table_leap, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %m_table_common.sink.i.i, i64 4
  %i.g = icmp slt i64 %i.b, 0
  %i.h = select i1 %i.g, i64 100, i64 0
  %spec.select.i17.i.i = add nsw i64 %i.h, %i.b   ; 2 uses
  %i.i = icmp slt i64 %i.a, 0
  %i.j = select i1 %i.i, i64 400, i64 0
  %spec.select.i.i.i = add nsw i64 %i.j, %i.a
  %.lhs.trunc.i.i = trunc nuw nsw i64 %spec.select.i.i.i to i16
  %i.k = udiv i16 %.lhs.trunc.i.i, 100
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = zext nneg i16 %i.l to i64
  %i.n = load i32, ptr %i.f, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = lshr i64 %spec.select.i17.i.i, 2
  %i.q = add nuw nsw i64 %spec.select.i17.i.i, 7
  %i.r = add nuw nsw i64 %i.q, %i.p
  %i.s = sub nuw nsw i64 %i.r, %i.m
  %i.t = add nsw i64 %i.s, %i.o
  %i.u = srem i64 %i.t, 7                         ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = select i1 %i.v, i64 7, i64 0
  %spec.select.i18.i.i = add nsw i64 %i.w, %i.u   ; 3 uses
  %i.x = icmp sgt i64 %spec.select.i18.i.i, 4
  %i.y = add nsw i64 %spec.select.i18.i.i, -7
  %i.z = select i1 %i.x, i64 %i.y, i64 %spec.select.i18.i.i
  %i.aa = mul i64 %1, 7
  %i.ab = add i64 %i.aa, -7
  %i.ac = add i64 %i.ab, %2
  %i.ad = sub i64 %i.ac, %i.z
  ret i64 %i.ad
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @timelib_date_from_isodate(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = srem i64 %0, 400                         ; 4 uses
  %i.b = srem i64 %0, 100                         ; 4 uses
  %i.c = and i64 %0, 3
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ne i64 %i.b, 0
  %i.e = icmp eq i64 %i.a, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.e
  br i1 %or.cond.i.i.i, label %timelib_daynr_from_weeknr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %timelib_daynr_from_weeknr.exit

timelib_daynr_from_weeknr.exit:                   ; preds = %bb.b, %bb.c
  %m_table_common.sink.i.i.i = phi ptr [ @m_table_common, %bb.c ], [ @m_table_leap, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %m_table_common.sink.i.i.i, i64 4
  %i.g = icmp slt i64 %i.b, 0
  %i.h = select i1 %i.g, i64 100, i64 0
  %spec.select.i17.i.i.i = add nsw i64 %i.h, %i.b ; 2 uses
  %i.i = icmp slt i64 %i.a, 0
  %i.j = select i1 %i.i, i64 400, i64 0
  %spec.select.i.i.i.i = add nsw i64 %i.j, %i.a
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %spec.select.i.i.i.i to i16
  %i.k = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = zext nneg i16 %i.l to i64
  %i.n = load i32, ptr %i.f, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = lshr i64 %spec.select.i17.i.i.i, 2
  %i.q = add nuw nsw i64 %spec.select.i17.i.i.i, 7
  %i.r = add nuw nsw i64 %i.q, %i.p
  %i.s = sub nuw nsw i64 %i.r, %i.m
  %i.t = add nsw i64 %i.s, %i.o
  %i.u = srem i64 %i.t, 7                         ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = select i1 %i.v, i64 7, i64 0
  %spec.select.i18.i.i.i = add nsw i64 %i.w, %i.u ; 3 uses
  %i.x = icmp sgt i64 %spec.select.i18.i.i.i, 4
  %i.y = add nsw i64 %spec.select.i18.i.i.i, -7
  %i.z = select i1 %i.x, i64 %i.y, i64 %spec.select.i18.i.i.i
  %i.aa = mul i64 %1, 7
  %i.ab = add i64 %i.aa, -6
  %i.ac = add i64 %i.ab, %2
  %i.ad = sub i64 %i.ac, %i.z                     ; 3 uses
  store i64 %0, ptr %3, align 8, !tbaa !14
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %timelib_daynr_from_weeknr.exit
  %.not = icmp ne i64 %i.b, 0
  %i.ae = icmp eq i64 %i.a, 0
  %spec.select = or i1 %.not, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %timelib_daynr_from_weeknr.exit
  %i.af = phi i1 [ false, %timelib_daynr_from_weeknr.exit ], [ %spec.select, %bb.d ]
  %i.ag = icmp slt i64 %i.ad, 1
  br i1 %i.ag, label %.lr.ph, label %.preheader

..preheader_crit_edge:                            ; preds = %.thread39
  store i64 %i.aj, ptr %3, align 8, !tbaa !14
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %bb.e
  %.promoted50 = phi i64 [ %i.aj, %..preheader_crit_edge ], [ %0, %bb.e ]
  %.032.lcssa = phi i64 [ %i.ar, %..preheader_crit_edge ], [ %i.ad, %bb.e ] ; 3 uses
  %.0.lcssa = phi i1 [ %i.ap, %..preheader_crit_edge ], [ %i.af, %bb.e ] ; 2 uses
  %i.ah = select i1 %.0.lcssa, i64 366, i64 365   ; 2 uses
  %i.ai = icmp samesign ugt i64 %.032.lcssa, %i.ah
  br i1 %i.ai, label %.lr.ph47, label %bb.j

.lr.ph:                                           ; preds = %bb.e, %.thread39
  %.fr = phi i64 [ %i.aj, %.thread39 ], [ %0, %bb.e ]
  %.03244 = phi i64 [ %i.ar, %.thread39 ], [ %i.ad, %bb.e ]
  %i.aj = add i64 %.fr, -1                        ; 6 uses
  %i.ak = and i64 %i.aj, 3
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.f, label %.thread39

bb.f:                                             ; preds = %.lr.ph
  %i.am = srem i64 %i.aj, 100
  %.not37 = icmp eq i64 %i.am, 0
  br i1 %.not37, label %bb.g, label %.thread39

bb.g:                                             ; preds = %bb.f
  %i.an = srem i64 %i.aj, 400
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %spec.select41 = select i1 %i.ao, i64 366, i64 365
  br label %.thread39

.thread39:                                        ; preds = %bb.g, %bb.f, %.lr.ph
  %i.ap = phi i1 [ true, %bb.f ], [ %i.ao, %bb.g ], [ false, %.lr.ph ]
  %i.aq = phi i64 [ 366, %bb.f ], [ %spec.select41, %bb.g ], [ 365, %.lr.ph ]
  %i.ar = add nsw i64 %i.aq, %.03244              ; 3 uses
  %i.as = icmp slt i64 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %..preheader_crit_edge, !llvm.loop !15

.lr.ph47:                                         ; preds = %.preheader, %.thread76
  %i.at = phi i64 [ %i.aw, %.thread76 ], [ %.promoted50, %.preheader ]
  %i.au = phi i64 [ %i.bd, %.thread76 ], [ %i.ah, %.preheader ]
  %.13346 = phi i64 [ %i.av, %.thread76 ], [ %.032.lcssa, %.preheader ]
  %i.av = sub nuw nsw i64 %.13346, %i.au          ; 3 uses
  %i.aw = add i64 %i.at, 1                        ; 5 uses
  %i.ax = and i64 %i.aw, 3
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %.thread76

bb.h:                                             ; preds = %.lr.ph47
  %i.az = srem i64 %i.aw, 100
  %.not36 = icmp eq i64 %i.az, 0
  br i1 %.not36, label %bb.i, label %.thread76

bb.i:                                             ; preds = %bb.h
  %i.ba = srem i64 %i.aw, 400
  %i.bb = icmp eq i64 %i.ba, 0                    ; 2 uses
  %spec.select85 = select i1 %i.bb, i64 366, i64 365
  br label %.thread76

.thread76:                                        ; preds = %bb.i, %bb.h, %.lr.ph47
  %i.bc = phi i1 [ true, %bb.h ], [ %i.bb, %bb.i ], [ false, %.lr.ph47 ]
  %i.bd = phi i64 [ 366, %bb.h ], [ %spec.select85, %bb.i ], [ 365, %.lr.ph47 ] ; 2 uses
  %i.be = icmp sgt i64 %i.av, %i.bd
  br i1 %i.be, label %.lr.ph47, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.thread76
  store i64 %i.aw, ptr %3, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %.preheader
  %.133.lcssa = phi i64 [ %i.av, %._crit_edge ], [ %.032.lcssa, %.preheader ] ; 3 uses
  %.1.lcssa = phi i1 [ %i.bc, %._crit_edge ], [ %.0.lcssa, %.preheader ]
  %i.bf = select i1 %.1.lcssa, ptr @ml_table_leap, ptr @ml_table_common
  %i.bg = icmp sgt i64 %.133.lcssa, 31
  br i1 %i.bg, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %bb.j, %.lr.ph55
  %i.bh = phi i64 [ %i.bm, %.lr.ph55 ], [ 31, %bb.j ]
  %.253 = phi i64 [ %i.bi, %.lr.ph55 ], [ %.133.lcssa, %bb.j ]
  %storemerge52 = phi i64 [ %i.bj, %.lr.ph55 ], [ 1, %bb.j ]
  %i.bi = sub i64 %.253, %i.bh                    ; 3 uses
  %i.bj = add i64 %storemerge52, 1                ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = icmp sgt i64 %i.bi, %i.bm
  br i1 %i.bn, label %.lr.ph55, label %._crit_edge56, !llvm.loop !17

._crit_edge56:                                    ; preds = %.lr.ph55, %bb.j
  %storemerge.lcssa = phi i64 [ 1, %bb.j ], [ %i.bj, %.lr.ph55 ]
  %.2.lcssa = phi i64 [ %.133.lcssa, %bb.j ], [ %i.bi, %.lr.ph55 ]
  store i64 %storemerge.lcssa, ptr %4, align 8, !tbaa !14
  store i64 %.2.lcssa, ptr %5, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @timelib_valid_time(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ult i64 %0, 24
  %i.a = icmp ult i64 %1, 60
  %or.cond5.not17 = and i1 %or.cond, %i.a
  %i.b = icmp ult i64 %2, 60
  %or.cond9.not = and i1 %or.cond5.not17, %i.b
  %. = zext i1 %or.cond9.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @timelib_valid_date(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -13
  %or.cond = icmp ult i64 %i.a, -12
  %i.b = icmp slt i64 %2, 1
  %or.cond3 = or i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %0, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = srem i64 %0, 100
  %.not.i = icmp ne i64 %i.e, 0
  %i.f = srem i64 %0, 400
  %i.g = icmp eq i64 %i.f, 0
  %or.cond.i = or i1 %.not.i, %i.g
  br i1 %or.cond.i, label %timelib_days_in_month.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %timelib_days_in_month.exit

timelib_days_in_month.exit:                       ; preds = %bb.c, %bb.d
  %ml_table_common.sink.i = phi ptr [ @ml_table_common, %bb.d ], [ @ml_table_leap, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %ml_table_common.sink.i, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12
  %i.j = sext i32 %i.i to i64
  %i.k = icmp sle i64 %2, %i.j
  %spec.select = zext i1 %i.k to i32
  br label %bb.e

bb.e:                                             ; preds = %timelib_days_in_month.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %timelib_days_in_month.exit ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"long long", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !18}
!16 = distinct !{!16, !18}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0
