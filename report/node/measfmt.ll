inline.NumInlined: 242
inline.NumDeleted: 115
begin_hunk_0_@_ZNK6icu_7813MeasureFormat14formatMeasuresEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode:bb.a

bb.r:                                             ; preds = %bb.q
  store i64 %i.bi, ptr %i.bn, align 8
  %.ptr64 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 5 uses
  %i.bp = getelementptr inbounds [64 x i8], ptr %.ptr64, i64 %i.bi
  %i.bq = add nsw i64 %i.bi, 288230376151711743
  %i.br = and i64 %i.bq, 288230376151711743
end_hunk_0
begin_hunk_1_@_ZNK6icu_7813MeasureFormat14formatMeasuresEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode:bb.a
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader66
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = add nsw i32 %2, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ct = zext nneg i32 %i.cr to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 7, ptr %5, align 4
  br label %bb.u

._crit_edge:                                      ; preds = %bb.t, %.preheader66
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813ListFormatter6formatEPKNS_13UnicodeStringEiRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull %.ptr64, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #12 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZNK6icu_7813MeasureFormat14formatMeasuresEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode:bb.a
  %.add61 = or disjoint i64 %.idx57, 8
  br label %.preheader

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.cz = load ptr, ptr %i.cq, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.db = icmp eq i64 %indvars.iv, %i.ct
end_hunk_2
begin_hunk_3_@_ZNK6icu_7813MeasureFormat14formatMeasuresEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode:bb.a
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %.ptr64, i64 %indvars.iv
  %i.dg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MeasureFormat13formatMeasureERKNS_7MeasureERKNS_12NumberFormatERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.de, ptr noundef nonnull align 8 dereferenceable(124) %.0, ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !16

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.idx59 = phi i64 [ %.add60, %.preheader ], [ %.add61, %.preheader.preheader ]
end_hunk_3
begin_hunk_4_@_ZNK6icu_7813MeasureFormat13formatNumericEPKNS_11FormattableEiRNS_13UnicodeStringER10UErrorCode:bb.a
  %.176 = phi i8 [ %.075113, %.thread106 ], [ 1, %bb.p ], [ 0, %bb.v ], [ %.075113, %bb.x ], [ %i.dy, %_ZNK6icu_7813UnicodeStringixEi.exit97.thread ]
  %i.ec = add nsw i32 %.279, 1                    ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.bz
  br i1 %i.ed, label %bb.m, label %._crit_edge, !llvm.loop !17

.critedge:                                        ; preds = %bb.k, %._crit_edge
  call void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(312) %6) #12
end_hunk_4
begin_hunk_5_@_ZNK6icu_7813MeasureFormat23formatMeasuresSlowTrackEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.unr = phi ptr [ %i.s, %bb.d ], [ %i.aa, %.prol.preheader ]
end_hunk_5
begin_hunk_6_@_ZNK6icu_7813MeasureFormat23formatMeasuresSlowTrackEPKNS_7MeasureEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode:bb.a
  %.2.ph = phi i32 [ %.04176, %bb.j ], [ %spec.select, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.k, %bb.c, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bq = phi ptr [ %i.aw, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit ], [ %i.s, %bb.c ], [ %i.aw, %bb.k ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6icu_78L31loadNumericDateFormatterPatternEPK15UResourceBundlePKcR10UErrorCode:bb.a
pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %pred.store.continue57
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
end_hunk_7
begin_hunk_8_@_ZN6icu_78L31loadNumericDateFormatterPatternEPK15UResourceBundlePKcR10UErrorCode:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_8
begin_hunk_9_@_ZN6icu_78L31loadNumericDateFormatterPatternEPK15UResourceBundlePKcR10UErrorCode:bb.a
pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %index.next70 = add nuw i64 %index60, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next70, %n.vec59
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %pred.store.continue69
  %cmp.n71 = icmp eq i64 %n.vec59, %wide.trip.count
end_hunk_9
begin_hunk_10_@_ZN6icu_78L31loadNumericDateFormatterPatternEPK15UResourceBundlePKcR10UErrorCode:bb.a
bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.f:                                             ; preds = %bb.b, %._crit_edge
  %.not.i = icmp eq ptr %i.v, null
end_hunk_10
begin_hunk_11_@_ZNK6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEE5cloneEv:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7814LocaleCacheKeyINS_22MeasureFormatCacheDataEEE, i64 16), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h) #12, !inline_history !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_11
begin_hunk_12_@llvm.smin.i32
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !13, !21, !22}
!25 = distinct !{!25, !13, !22, !21}
!26 = distinct !{null}
end_hunk_12
