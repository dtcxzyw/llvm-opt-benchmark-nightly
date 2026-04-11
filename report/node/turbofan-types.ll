inline.NumInlined: 682
inline.NumDeleted: 170
begin_hunk_0_@_ZN2v88internal8compiler4Type7OverlapEPKNS1_9RangeTypeES5_
define hidden noundef zeroext i1 @_ZN2v88internal8compiler4Type7OverlapEPKNS1_9RangeTypeES5_(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = load <2 x double>, ptr %i.a, align 8       ; 3 uses
  %3 = load <2 x double>, ptr %i.b, align 8       ; 3 uses
  %4 = shufflevector <2 x double> %2, <2 x double> %3, <2 x i32> <i32 0, i32 3>
  %5 = shufflevector <2 x double> %3, <2 x double> %2, <2 x i32> <i32 0, i32 3>
  %6 = fcmp olt <2 x double> %4, %5
  %7 = select <2 x i1> %6, <2 x double> %3, <2 x double> %2 ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = extractelement <2 x double> %7, i64 1
  %i.c = fcmp ule double %8, %9
  ret i1 %i.c
}

end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler4Type5MaybeES2_:bb.a
  br i1 %i.f, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit.thread, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit

_ZNK2v88internal8compiler4Type7IsUnionEv.exit:    ; preds = %bb.b
  %i.g = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.c, label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit.thread.thread
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler4Type5MaybeES2_:bb.a
  ]

_ZNK2v88internal8compiler4Type7IsUnionEv.exit27.thread57: ; preds = %_ZNK2v88internal8compiler4Type7IsUnionEv.exit.thread.thread
  %i.v = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.d, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread45
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler4Type5MaybeES2_:bb.a

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsRangeEv.exit31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %4 = load <2 x double>, ptr %i.ah, align 8      ; 3 uses
  %5 = load <2 x double>, ptr %i.ai, align 8      ; 3 uses
  %6 = shufflevector <2 x double> %4, <2 x double> %5, <2 x i32> <i32 0, i32 3>
  %7 = shufflevector <2 x double> %5, <2 x double> %4, <2 x i32> <i32 0, i32 3>
  %8 = fcmp olt <2 x double> %6, %7
  %9 = select <2 x i1> %8, <2 x double> %5, <2 x double> %4 ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %11 = extractelement <2 x double> %9, i64 1
  %i.aj = fcmp ule double %10, %11
  br label %_ZNK2v88internal8compiler4Type7IsUnionEv.exit27.thread

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsRangeEv.exit
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler4Type12IntersectAuxES2_S2_PNS1_9UnionTypeEiPNS1_9RangeType6LimitsEPNS0_4ZoneE:bb.a
  br i1 %i.a, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit

_ZNK2v88internal8compiler4Type7IsRangeEv.exit:    ; preds = %bb.f
  %i.aa = inttoptr i64 %.tr to ptr                ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %bb.g, label %_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread.thread
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler4Type12IntersectAuxES2_S2_PNS1_9UnionTypeEiPNS1_9RangeType6LimitsEPNS0_4ZoneE:bb.a
  br label %.loopexit

_ZNK2v88internal8compiler4Type7IsRangeEv.exit66:  ; preds = %bb.g
  %i.bg = inttoptr i64 %.tr89 to ptr              ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %_ZNK2v88internal8compiler4Type7IsRangeEv.exit66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %8 = load <2 x double>, ptr %i.bj, align 8      ; 3 uses
  %9 = load <2 x double>, ptr %i.bk, align 8      ; 3 uses
  %10 = shufflevector <2 x double> %8, <2 x double> %9, <2 x i32> <i32 0, i32 3>
  %11 = shufflevector <2 x double> %9, <2 x double> %8, <2 x i32> <i32 0, i32 3>
  %12 = fcmp olt <2 x double> %10, %11
  %13 = select <2 x i1> %12, <2 x double> %9, <2 x double> %8 ; 6 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = extractelement <2 x double> %13, i64 1
  %i.bl = fcmp ogt double %14, %15
  br i1 %i.bl, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %16 = load <2 x double>, ptr %4, align 8        ; 5 uses
  %17 = extractelement <2 x double> %16, i64 0
  %18 = extractelement <2 x double> %16, i64 1
  %i.bm = fcmp ogt double %17, %18
  br i1 %i.bm, label %_ZN2v88internal8compiler9RangeType6Limits5UnionES3_S3_.exit75, label %bb.t

bb.t:                                             ; preds = %bb.s
  %19 = shufflevector <2 x double> %13, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  %20 = shufflevector <2 x double> %16, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %21 = fcmp ogt <2 x double> %19, %20
  %22 = select <2 x i1> %21, <2 x double> %16, <2 x double> %13
  br label %_ZN2v88internal8compiler9RangeType6Limits5UnionES3_S3_.exit75

_ZN2v88internal8compiler9RangeType6Limits5UnionES3_S3_.exit75: ; preds = %bb.s, %bb.t
  %23 = phi <2 x double> [ %22, %bb.t ], [ %13, %bb.s ]
  store <2 x double> %23, ptr %4, align 8
  br label %.loopexit

_ZNK2v88internal8compiler4Type7IsRangeEv.exit.thread: ; preds = %bb.f
end_hunk_5
