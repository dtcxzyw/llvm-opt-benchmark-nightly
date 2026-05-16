inline.NumInlined: 53
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::DirectHandle.2" = type { %"class.v8::internal::Handle.3" }
%"class.v8::internal::Handle.3" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"static_cast<uint32_t>(index) <= static_cast<uint32_t>(length_)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Runtime_ShadowRealmWrappedFunctionCreateEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit3
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call ptr @_ZN2v88internal17JSWrappedFunction6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr %1, ptr %i.j) #5 ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.016.0.in = select i1 %.not29, ptr %i.l, ptr %i.k
  %.sroa.016.0 = load i64, ptr %.sroa.016.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.m = load i32, ptr %i.e, align 8
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.e, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  ret i64 %.sroa.016.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_ShadowRealmImportValueEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
_ZN2v88internalL40__RT_impl_Runtime_ShadowRealmImportValueENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal7Isolate38RunHostImportModuleDynamicallyCallbackENS0_17MaybeDirectHandleINS0_6ScriptEEENS0_6HandleINS0_6ObjectEEENS_17ModuleImportPhaseENS2_IS6_EE(ptr noundef nonnull align 8 dereferenceable(64320) %2, ptr null, ptr %1, i32 noundef 1, ptr null) #5 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.014.0.in = select i1 %.not, ptr %i.i, ptr %i.h
  %.sroa.014.0 = load i64, ptr %.sroa.014.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.a, !prof !6

bb.a:                                             ; preds = %_ZN2v88internalL40__RT_impl_Runtime_ShadowRealmImportValueENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.a, %_ZN2v88internalL40__RT_impl_Runtime_ShadowRealmImportValueENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal24Runtime_ShadowRealmThrowEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.2"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i32, ptr %.shift, align 4
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = tail call ptr @_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %i.k, ptr %3, align 8
  %i.l = call ptr @_ZN2v88internal7Factory27ShadowRealmNewTypeErrorCopyENS0_12DirectHandleINS0_6ObjectEEENS0_15MessageTemplateENS_4base6VectorIKS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %i.j, i32 noundef %4, ptr nonnull %3, i64 1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.m = load i64, ptr %i.l, align 8
  %i.n = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.m, ptr noundef null) #5
  store ptr %i.b, ptr %i.a, align 8
  %i.o = load i32, ptr %i.e, align 8
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret i64 %i.n
}

declare ptr @_ZN2v88internal17JSWrappedFunction6CreateEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_10JSReceiverEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Isolate38RunHostImportModuleDynamicallyCallbackENS0_17MaybeDirectHandleINS0_6ScriptEEENS0_6HandleINS0_6ObjectEEENS_17ModuleImportPhaseENS2_IS6_EE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr, i32 noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory27ShadowRealmNewTypeErrorCopyENS0_12DirectHandleINS0_6ObjectEEENS0_15MessageTemplateENS_4base6VectorIKS4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, ptr, i64) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
