inline.NumInlined: 299
inline.NumDeleted: 99
begin_hunk_0_@_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi:bb.a

bb.j:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  %.not.i.i.i4 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i4, label %bb.k, label %_ZN10fast_float11uint64_hi64EmRb.exit.i
end_hunk_0
begin_hunk_1_@_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi:bb.a

bb.l:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !25 ; 6 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !25 ; 3 uses
  %.not.i.i6.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i6.i, label %bb.m, label %_ZN10fast_float14leading_zeroesEm.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi:bb.a
.lr.ph.i.i:                                       ; preds = %_ZN10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %gep.i.i) ]
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !25 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE:bb.a
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %.lr.ph.i

end_hunk_3
begin_hunk_4_@_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE:bb.a
.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02434.i.us = phi i64 [ %i.cz, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %gep.i.us) ]
  %i.cp = load i64, ptr %gep.i.us, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02434.i.us
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
end_hunk_4
begin_hunk_5_@_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE:bb.a

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dq = getelementptr i8, ptr %0, i64 -8
  %5 = zext i16 %.promoted.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.i50 ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %6 = getelementptr [8 x i8], ptr %i.dq, i64 %indvars.iv.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  %i.dr = load i64, ptr %6, align 8, !tbaa !25
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i16 ; 2 uses
  store i16 %indvars.i, ptr %i.a, align 8, !tbaa !50
  %.not.i51 = icmp eq i16 %indvars.i, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !79

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit
end_hunk_5
begin_hunk_6_@_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE:bb.a
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

end_hunk_6
begin_hunk_7_@llvm.smin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_7
