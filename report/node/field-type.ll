inline.NumInlined: 103
inline.NumDeleted: 59
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Class(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN2v88internal9FieldType4NoneEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret i64 8589934592
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN2v88internal9FieldType3AnyEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9FieldType4NoneEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #5
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = ptrtoint ptr %.0.i to i64
  %i.h = add i64 %i.g, 8
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.a, align 8
  store i64 8589934592, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9FieldType3AnyEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #5
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = ptrtoint ptr %.0.i to i64
  %i.h = add i64 %i.g, 8
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.a, align 8
  store i64 4294967296, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @_ZN2v88internal9FieldType5ClassENS0_6TaggedINS0_3MapEEE(i64 returned %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal9FieldType5ClassENS0_12DirectHandleINS0_3MapEEEPNS0_7IsolateE(ptr readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #5
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.h = ptrtoint ptr %.0.i to i64
  %i.i = add i64 %i.h, 8
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.b, align 8
  store i64 %i.a, ptr %.0.i, align 8
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE(i64 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %_ZN2v88internal5IsMapENS0_6TaggedINS0_6ObjectEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 276
  br label %_ZN2v88internal5IsMapENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal5IsMapENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @_ZN2v88internal9FieldType7AsClassENS0_6TaggedIS1_EE(i64 returned %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_ZN2v88internal9FieldType7AsClassENS0_12DirectHandleIS1_EE(ptr readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9FieldType9NowStableENS0_6TaggedIS1_EE(i64 %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread

_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit: ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 276
  br i1 %i.h, label %bb.b, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit
  %i.i = add i64 %0, 15
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i32, ptr %i.j acquire, align 4
  %i.l = and i32 %i.k, 33554432
  %.not.i = icmp eq i32 %i.l, 0
  br label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread

_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit
  %i.m = phi i1 [ true, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit ], [ %.not.i, %bb.b ], [ true, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 4294967296
  %i.b = icmp eq i64 %0, 8589934592
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %1, 8589934592
  %i.d = icmp eq i64 %0, %1
  %spec.select = select i1 %i.c, i1 %i.d, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %spec.select, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9FieldType6EqualsENS0_6TaggedIS1_EES3_(i64 %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  switch i64 %0, label %bb.d [
    i64 4294967296, label %bb.b
    i64 8589934592, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %1, 4294967296
  br i1 %i.a, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11.thread, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 8589934592
  br i1 %i.b, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11.thread, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread

_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread: ; preds = %bb.d, %bb.c, %bb.b
  br label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11.thread

_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit: ; preds = %bb.d
  %i.d = add nsw i64 %0, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 276
  %i.k = trunc i64 %1 to i1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11, label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11.thread

_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11: ; preds = %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit
  %i.l = add nsw i64 %1, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 276
  %i.s = icmp eq i64 %0, %1
  %spec.select = select i1 %i.r, i1 %i.s, i1 false
  br label %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11.thread

_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11.thread: ; preds = %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ false, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit.thread ], [ %spec.select, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit11 ], [ false, %_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EENS0_12DirectHandleIS1_EE(i64 %0, ptr readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = icmp eq i64 %i.a, 4294967296
  %i.c = icmp eq i64 %0, 8589934592
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.a, 8589934592
  %i.e = icmp eq i64 %0, %i.a
  %spec.select.i = select i1 %i.d, i1 %i.e, i1 false
  br label %_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EES3_.exit

_ZN2v88internal9FieldType5NowIsENS0_6TaggedIS1_EES3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %spec.select.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9FieldType7PrintToENS0_6TaggedIS1_EERSo(i64 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  switch i64 %0, label %bb.d [
    i64 4294967296, label %bb.b
    i64 8589934592, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 3) #5 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 4) #5 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 6) #5 ; 0 uses
  %i.d = inttoptr i64 %0 to ptr
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d) #5
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.3, i64 noundef 1) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9FieldType11NowContainsENS0_6TaggedIS1_EENS2_INS0_6ObjectEEE(i64 %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  switch i64 %0, label %bb.b [
    i64 4294967296, label %bb.d
    i64 8589934592, label %.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = icmp eq i64 %i.d, %0
  br label %bb.d

.fold.split:                                      ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.fold.split, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.e, %bb.c ], [ false, %.fold.split ]
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
