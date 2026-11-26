Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/SharedObjectImpl?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN18AdobeXMPCommon_Int15ISharedObject_I18GetISharedObject_IEv = comdat any

$_ZN18AdobeXMPCommon_Int15ISharedObject_ID1Ev = comdat any

$_ZN18AdobeXMPCommon_Int15ISharedObject_ID0Ev = comdat any

$_ZTIN18AdobeXMPCommon_Int15ISharedObject_IE = comdat any

$_ZTSN18AdobeXMPCommon_Int15ISharedObject_IE = comdat any

$_ZTIN14AdobeXMPCommon13ISharedObjectE = comdat any

$_ZTSN14AdobeXMPCommon13ISharedObjectE = comdat any

@_ZTVN16AdobeXMPCore_Int16SharedObjectImplE = dso_local constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN16AdobeXMPCore_Int16SharedObjectImplE, ptr @_ZNK16AdobeXMPCore_Int16SharedObjectImpl7AcquireEv, ptr @_ZNK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv, ptr @_ZN18AdobeXMPCommon_Int15ISharedObject_I18GetISharedObject_IEv, ptr @_ZN16AdobeXMPCore_Int16SharedObjectImplD1Ev, ptr @_ZN16AdobeXMPCore_Int16SharedObjectImplD0Ev, ptr @_ZNK16AdobeXMPCore_Int16SharedObjectImpl15AcquireInternalEv] }, align 8
@_ZTTN16AdobeXMPCore_Int16SharedObjectImplE = dso_local unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds inrange(-72, 48) ({ [15 x ptr] }, ptr @_ZTVN16AdobeXMPCore_Int16SharedObjectImplE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 48) ({ [15 x ptr] }, ptr @_ZTVN16AdobeXMPCore_Int16SharedObjectImplE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-72, 48) ({ [15 x ptr] }, ptr @_ZTVN16AdobeXMPCore_Int16SharedObjectImplE, i32 0, i32 0, i32 9), ptr getelementptr inbounds inrange(-64, 48) ({ [14 x ptr] }, ptr @_ZTCN16AdobeXMPCore_Int16SharedObjectImplE0_N18AdobeXMPCommon_Int15ISharedObject_IE, i32 0, i32 0, i32 8), ptr getelementptr inbounds inrange(-64, 48) ({ [14 x ptr] }, ptr @_ZTCN16AdobeXMPCore_Int16SharedObjectImplE0_N18AdobeXMPCommon_Int15ISharedObject_IE, i32 0, i32 0, i32 8)], align 8
@_ZTCN16AdobeXMPCore_Int16SharedObjectImplE0_N18AdobeXMPCommon_Int15ISharedObject_IE = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN18AdobeXMPCommon_Int15ISharedObject_IE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN18AdobeXMPCommon_Int15ISharedObject_I18GetISharedObject_IEv, ptr @_ZN18AdobeXMPCommon_Int15ISharedObject_ID1Ev, ptr @_ZN18AdobeXMPCommon_Int15ISharedObject_ID0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN18AdobeXMPCommon_Int15ISharedObject_IE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN18AdobeXMPCommon_Int15ISharedObject_IE, i32 0, i32 1, ptr @_ZTIN14AdobeXMPCommon13ISharedObjectE, i64 -14333 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN18AdobeXMPCommon_Int15ISharedObject_IE = linkonce_odr dso_local constant [40 x i8] c"N18AdobeXMPCommon_Int15ISharedObject_IE\00", comdat, align 1
@_ZTIN14AdobeXMPCommon13ISharedObjectE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN14AdobeXMPCommon13ISharedObjectE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN14AdobeXMPCommon13ISharedObjectE = linkonce_odr dso_local constant [34 x i8] c"N14AdobeXMPCommon13ISharedObjectE\00", comdat, align 1
@_ZTIN16AdobeXMPCore_Int16SharedObjectImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN16AdobeXMPCore_Int16SharedObjectImplE, i32 0, i32 1, ptr @_ZTIN18AdobeXMPCommon_Int15ISharedObject_IE, i64 -18429 }, align 8
@_ZTSN16AdobeXMPCore_Int16SharedObjectImplE = dso_local constant [39 x i8] c"N16AdobeXMPCore_Int16SharedObjectImplE\00", align 1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZNK16AdobeXMPCore_Int16SharedObjectImpl7AcquireEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 -1 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZTv0_n24_NK16AdobeXMPCore_Int16SharedObjectImpl7AcquireEv(ptr nofree noundef captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %i.e, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZNK16AdobeXMPCore_Int16SharedObjectImpl7AcquireEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNK16AdobeXMPCore_Int16SharedObjectImpl7AcquireEv.exit

_ZNK16AdobeXMPCore_Int16SharedObjectImpl7AcquireEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.a, i64 -1 seq_cst, align 8
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n32_NK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv(ptr noundef %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = atomicrmw add ptr %i.e, i64 -1 seq_cst, align 8
  %.not.i = icmp eq i64 %i.h, 1
  br i1 %.not.i, label %bb.c, label %_ZNK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #8, !inline_history !11
  br label %_ZNK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv.exit

_ZNK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16AdobeXMPCore_Int16SharedObjectImplD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.j = getelementptr i8, ptr %i.i, i64 -56
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16AdobeXMPCore_Int16SharedObjectImplD1Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN16AdobeXMPCore_Int16SharedObjectImplE, i64 72), ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZTv0_n48_N16AdobeXMPCore_Int16SharedObjectImplD1Ev(ptr nofree noundef captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  store ptr getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN16AdobeXMPCore_Int16SharedObjectImplE, i64 72), ptr %i.d, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16AdobeXMPCore_Int16SharedObjectImplD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n48_N16AdobeXMPCore_Int16SharedObjectImplD0Ev(ptr noundef %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #9, !inline_history !12
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZNK16AdobeXMPCore_Int16SharedObjectImpl15AcquireInternalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_ZTv0_n64_NK16AdobeXMPCore_Int16SharedObjectImpl15AcquireInternalEv(ptr nofree noundef captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = atomicrmw add ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 seq_cst, align 8 ; 0 uses
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN18AdobeXMPCommon_Int15ISharedObject_I18GetISharedObject_IEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18AdobeXMPCommon_Int15ISharedObject_ID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18AdobeXMPCommon_Int15ISharedObject_ID0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{ptr @_ZNK16AdobeXMPCore_Int16SharedObjectImpl7ReleaseEv}
!12 = !{ptr @_ZN16AdobeXMPCore_Int16SharedObjectImplD0Ev}
end_hunk_0
