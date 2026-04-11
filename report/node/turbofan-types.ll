inline.NumInlined: 682
inline.NumDeleted: 170
begin_hunk_0_@_ZN2v88internal8compiler4Type7OverlapEPKNS1_9RangeTypeES5_
define hidden noundef zeroext i1 @_ZN2v88internal8compiler4Type7OverlapEPKNS1_9RangeTypeES5_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load double, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load double, ptr %i.b, align 8             ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load double, ptr %4, align 8               ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %7 = load double, ptr %6, align 8               ; 2 uses
  %8 = fcmp olt double %2, %5
  %.sroa.05.0.i = select i1 %8, double %5, double %2
  %9 = fcmp ogt double %3, %7
  %.sroa.36.0.i = select i1 %9, double %7, double %3
  %i.c = fcmp ule double %.sroa.05.0.i, %.sroa.36.0.i
  ret i1 %i.c
}

end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler4Type5MaybeES2_:bb.a
  br i1 %i.f, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit.thread, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit

_ZNK2v88internal8compiler4Type7IsUnionEv.exit:    ; preds = %bb.b
  %i.g = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.c, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit.thread.thread
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler4Type5MaybeES2_:bb.a
  ]

_ZNK2v88internal8compiler4Type7IsUnionEv.exit27.thread57: ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit.thread.thread
  %i.v = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.d, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread45
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler4Type5MaybeES2_:bb.a

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsRangeEv.exit31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %4 = load double, ptr %i.ah, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %5 = load double, ptr %i.ai, align 8            ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %7 = load double, ptr %6, align 8               ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %9 = load double, ptr %8, align 8               ; 2 uses
  %10 = fcmp olt double %4, %7
  %.sroa.05.0.i.i = select i1 %10, double %7, double %4
  %11 = fcmp ogt double %5, %9
  %.sroa.36.0.i.i = select i1 %11, double %9, double %5
  %i.aj = fcmp ule double %.sroa.05.0.i.i, %.sroa.36.0.i.i
  br label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit27.thread

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsRangeEv.exit
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler4Type12IntersectAuxES2_S2_PNS1_9UnionTypeEiPNS1_9RangeType6LimitsEPNS0_4ZoneE:bb.a
  br i1 %i.a, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit

_ZNK2v88internal8compiler4Type7IsRangeEv.exit:    ; preds = %bb.f
  %i.aa = inttoptr i64 %.tr to ptr                ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %bb.g, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread.thread
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler4Type12IntersectAuxES2_S2_PNS1_9UnionTypeEiPNS1_9RangeType6LimitsEPNS0_4ZoneE:bb.a
  br label %.loopexit

_ZNK2v88internal8compiler4Type7IsRangeEv.exit66:  ; preds = %bb.g
  %i.bg = inttoptr i64 %.tr89 to ptr              ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsRangeEv.exit66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %8 = load double, ptr %i.bj, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %9 = load double, ptr %i.bk, align 8            ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %11 = load double, ptr %10, align 8             ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %13 = load double, ptr %12, align 8             ; 2 uses
  %14 = fcmp olt double %8, %11
  %.sroa.05.0.i = select i1 %14, double %11, double %8 ; 4 uses
  %15 = fcmp ogt double %9, %13
  %.sroa.36.0.i = select i1 %15, double %13, double %9 ; 4 uses
  %i.bl = fcmp ogt double %.sroa.05.0.i, %.sroa.36.0.i
  br i1 %i.bl, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.05.0.copyload = load double, ptr %4, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %i.bm = fcmp ogt double %.sroa.05.0.copyload, %.sroa.2.0.copyload
  br i1 %i.bm, label %_ZN2v88internal8compiler9RangeType6Limits5UnionES3_S3_.exit75, label %bb.t

bb.t:                                             ; preds = %bb.s
  %16 = fcmp ogt double %.sroa.05.0.i, %.sroa.05.0.copyload
  %.sroa.0.0.i69 = select i1 %16, double %.sroa.05.0.copyload, double %.sroa.05.0.i
  %17 = fcmp olt double %.sroa.36.0.i, %.sroa.2.0.copyload
  %.sroa.5.0.i70 = select i1 %17, double %.sroa.2.0.copyload, double %.sroa.36.0.i
  br label %_ZN2v88internal8compiler9RangeType6Limits5UnionES3_S3_.exit75

_ZN2v88internal8compiler9RangeType6Limits5UnionES3_S3_.exit75: ; preds = %bb.s, %bb.t
  %.sroa.5.1.i71 = phi double [ %.sroa.5.0.i70, %bb.t ], [ %.sroa.36.0.i, %bb.s ]
  %.sroa.0.1.i72 = phi double [ %.sroa.0.0.i69, %bb.t ], [ %.sroa.05.0.i, %bb.s ]
  store double %.sroa.0.1.i72, ptr %4, align 8
  store double %.sroa.5.1.i71, ptr %.sroa.2.0..sroa_idx, align 8
  br label %.loopexit

_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread: ; preds = %bb.f
end_hunk_5
