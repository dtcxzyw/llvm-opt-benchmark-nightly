Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Scanline?download=true
inline.NumInlined: 156
inline.NumDeleted: 73
begin_hunk_0_@_ZNK7msdfgen8Scanline18countIntersectionsEd:bb.a
bb.c:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader15.i, %bb.c
  %indvars.iv.i13 = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.g, %.preheader15.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i13, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fcmp ult double %1, %i.w
  br i1 %i.x, label %.critedge.loopexit24.split.loop.exit.i, label %bb.c, !llvm.loop !2

.critedge.loopexit.split.loop.exit30.i:           ; preds = %.lr.ph15
  %i.y = trunc nsw i64 %indvars.iv.next20.i to i32 ; 2 uses
  br label %.critedge.i

.critedge.loopexit24.split.loop.exit.i:           ; preds = %.lr.ph
  %i.z = trunc nsw i64 %indvars.iv.i13 to i32     ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader.i, %.preheader15.i, %.preheader.i.preheader, %.critedge.loopexit24.split.loop.exit.i, %.critedge.loopexit.split.loop.exit30.i
  %storemerge.i = phi i32 [ 0, %.preheader.i.preheader ], [ %i.y, %.critedge.loopexit.split.loop.exit30.i ], [ %i.z, %.critedge.loopexit24.split.loop.exit.i ], [ %smax.i, %.preheader15.i ], [ 0, %.preheader.i ], [ %smax.i, %bb.c ]
  %.013.i = phi i32 [ -1, %.preheader.i.preheader ], [ %i.y, %.critedge.loopexit.split.loop.exit30.i ], [ %i.z, %.critedge.loopexit24.split.loop.exit.i ], [ %smax.i, %.preheader15.i ], [ -1, %.preheader.i ], [ %smax.i, %bb.c ]
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !24
  %i.aa = add nsw i32 %.013.i, 1
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit

_ZNK7msdfgen8Scanline6moveToEd.exit:              ; preds = %bb.a, %.critedge.i
  %.114.i = phi i32 [ %i.aa, %.critedge.i ], [ 0, %bb.a ]
  ret i32 %.114.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7msdfgen8Scanline16sumIntersectionsEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, double noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !16
  %i.j = fcmp olt double %1, %i.i
  br i1 %i.j, label %.preheader.i.preheader, label %.preheader15.i

.preheader.i.preheader:                           ; preds = %bb.b
  %i.k = icmp eq i32 %i.f, 0
  br i1 %i.k, label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6, label %.lr.ph19

.preheader15.i:                                   ; preds = %bb.b
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.q) ; 3 uses
  %wide.trip.count.i = sext i32 %smax.i to i64
  %exitcond.not.i16.not = icmp slt i32 %i.f, %i.q
  br i1 %exitcond.not.i16.not, label %.lr.ph, label %_ZNK7msdfgen8Scanline6moveToEd.exit

.preheader.i:                                     ; preds = %.lr.ph19
  %i.r = icmp eq i64 %indvars.iv.next20.i, 0
  br i1 %i.r, label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6, label %.lr.ph19, !llvm.loop !1

_ZNK7msdfgen8Scanline6moveToEd.exit.thread6:      ; preds = %.preheader.i, %.preheader.i.preheader
  store i32 0, ptr %i.e, align 8, !tbaa !24
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread

.lr.ph19:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv19.i18 = phi i64 [ %indvars.iv.next20.i, %.preheader.i ], [ %i.g, %.preheader.i.preheader ]
  %indvars.iv.next20.i = add nsw i64 %indvars.iv19.i18, -1 ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.next20.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !16
  %i.u = fcmp olt double %1, %i.t
  br i1 %i.u, label %.preheader.i, label %.critedge.loopexit.split.loop.exit30.i, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK7msdfgen8Scanline6moveToEd.exit, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader15.i, %bb.c
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.g, %.preheader15.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fcmp ult double %1, %i.w
  br i1 %i.x, label %.critedge.loopexit24.split.loop.exit.i, label %bb.c, !llvm.loop !2

.critedge.loopexit.split.loop.exit30.i:           ; preds = %.lr.ph19
  %i.y = trunc nsw i64 %indvars.iv.next20.i to i32
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit

.critedge.loopexit24.split.loop.exit.i:           ; preds = %.lr.ph
  %i.z = trunc nsw i64 %indvars.iv.i17 to i32
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit

_ZNK7msdfgen8Scanline6moveToEd.exit:              ; preds = %bb.c, %.preheader15.i, %.critedge.loopexit.split.loop.exit30.i, %.critedge.loopexit24.split.loop.exit.i
  %storemerge.i = phi i32 [ %i.z, %.critedge.loopexit24.split.loop.exit.i ], [ %i.y, %.critedge.loopexit.split.loop.exit30.i ], [ %smax.i, %.preheader15.i ], [ %smax.i, %bb.c ] ; 3 uses
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !24
  %i.aa = icmp sgt i32 %storemerge.i, -1
  br i1 %i.aa, label %bb.d, label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread

bb.d:                                             ; preds = %_ZNK7msdfgen8Scanline6moveToEd.exit
  %i.ab = zext nneg i32 %storemerge.i to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !17
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread

_ZNK7msdfgen8Scanline6moveToEd.exit.thread:       ; preds = %bb.a, %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6, %_ZNK7msdfgen8Scanline6moveToEd.exit, %bb.d
  %.0 = phi i32 [ %i.ae, %bb.d ], [ 0, %_ZNK7msdfgen8Scanline6moveToEd.exit ], [ 0, %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !16
  %i.j = fcmp olt double %1, %i.i
  br i1 %i.j, label %.preheader.i.i.preheader, label %.preheader15.i.i

.preheader.i.i.preheader:                         ; preds = %bb.b
  %i.k = icmp eq i32 %i.f, 0
  br i1 %i.k, label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6.i, label %.lr.ph12

.preheader15.i.i:                                 ; preds = %bb.b
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.q) ; 3 uses
  %wide.trip.count.i.i = sext i32 %smax.i.i to i64
  %exitcond.not.i.i9.not = icmp slt i32 %i.f, %i.q
  br i1 %exitcond.not.i.i9.not, label %.lr.ph, label %_ZNK7msdfgen8Scanline6moveToEd.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph12
  %i.r = icmp eq i64 %indvars.iv.next20.i.i, 0
  br i1 %i.r, label %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6.i, label %.lr.ph12, !llvm.loop !1

_ZNK7msdfgen8Scanline6moveToEd.exit.thread6.i:    ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  store i32 0, ptr %i.e, align 8, !tbaa !24
  br label %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit

.lr.ph12:                                         ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv19.i.i11 = phi i64 [ %indvars.iv.next20.i.i, %.preheader.i.i ], [ %i.g, %.preheader.i.i.preheader ]
  %indvars.iv.next20.i.i = add nsw i64 %indvars.iv19.i.i11, -1 ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.next20.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !16
  %i.u = fcmp olt double %1, %i.t
  br i1 %i.u, label %.preheader.i.i, label %.critedge.loopexit.split.loop.exit30.i.i, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK7msdfgen8Scanline6moveToEd.exit.i, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader15.i.i, %bb.c
  %indvars.iv.i.i10 = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.g, %.preheader15.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i10, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fcmp ult double %1, %i.w
  br i1 %i.x, label %.critedge.loopexit24.split.loop.exit.i.i, label %bb.c, !llvm.loop !2

.critedge.loopexit.split.loop.exit30.i.i:         ; preds = %.lr.ph12
  %i.y = trunc nsw i64 %indvars.iv.next20.i.i to i32
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit.i

.critedge.loopexit24.split.loop.exit.i.i:         ; preds = %.lr.ph
  %i.z = trunc nsw i64 %indvars.iv.i.i10 to i32
  br label %_ZNK7msdfgen8Scanline6moveToEd.exit.i

_ZNK7msdfgen8Scanline6moveToEd.exit.i:            ; preds = %bb.c, %.preheader15.i.i, %.critedge.loopexit24.split.loop.exit.i.i, %.critedge.loopexit.split.loop.exit30.i.i
  %storemerge.i.i = phi i32 [ %i.z, %.critedge.loopexit24.split.loop.exit.i.i ], [ %i.y, %.critedge.loopexit.split.loop.exit30.i.i ], [ %smax.i.i, %.preheader15.i.i ], [ %smax.i.i, %bb.c ] ; 3 uses
  store i32 %storemerge.i.i, ptr %i.e, align 8, !tbaa !24
  %i.aa = icmp sgt i32 %storemerge.i.i, -1
  br i1 %i.aa, label %bb.d, label %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit

bb.d:                                             ; preds = %_ZNK7msdfgen8Scanline6moveToEd.exit.i
  %i.ab = zext nneg i32 %storemerge.i.i to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !17
  br label %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit

_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit:   ; preds = %bb.a, %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6.i, %_ZNK7msdfgen8Scanline6moveToEd.exit.i, %bb.d
  %.0.i = phi i32 [ %i.ae, %bb.d ], [ 0, %_ZNK7msdfgen8Scanline6moveToEd.exit.i ], [ 0, %_ZNK7msdfgen8Scanline6moveToEd.exit.thread6.i ], [ 0, %bb.a ] ; 4 uses
  switch i32 %2, label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.e:                                             ; preds = %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit
  %3 = icmp ne i32 %.0.i, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

bb.f:                                             ; preds = %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit
  %4 = trunc i32 %.0.i to i1
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

bb.g:                                             ; preds = %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit
  %5 = icmp sgt i32 %.0.i, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

bb.h:                                             ; preds = %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit
  %6 = icmp slt i32 %.0.i, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit: ; preds = %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i2 = phi i1 [ %6, %bb.h ], [ %3, %bb.e ], [ %4, %bb.f ], [ %5, %bb.g ], [ false, %_ZNK7msdfgen8Scanline16sumIntersectionsEd.exit ]
  ret i1 %.0.i2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN7msdfgen8Scanline12IntersectionE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = !{!"_ZTSN7msdfgen8Scanline12IntersectionE", !14, i64 0, !8, i64 8}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !8, i64 8}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE", !21, i64 0}
!23 = !{!"_ZTSN7msdfgen8ScanlineE", !22, i64 0, !8, i64 24}
!24 = !{!23, !8, i64 24}
!25 = !{!19, !12, i64 0}
!26 = !{!19, !12, i64 16}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = !{!19, !12, i64 8}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!14, !14, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{i64 0, i64 8, !32, i64 8, i64 4, !33}
end_hunk_0
