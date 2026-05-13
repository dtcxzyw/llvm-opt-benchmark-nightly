inline.NumInlined: 48
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@_ZN6hermes11SNPrintfBufC1Ei = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN6hermes11SNPrintfBufC2Ei

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11SNPrintfBufC2Ei(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 4), (8, 28)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = sext i32 %1 to i64
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #7 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11SNPrintfBuf6printfEPKcz(ptr noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr noundef readonly captures(none) %1, ...) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = sext i32 %i.d to i64
  %i.f = call i32 @vsnprintf(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1, ptr noundef nonnull %2) #8 ; 3 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not = icmp slt i32 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, 1
  %i.i = load i32, ptr %0, align 8, !tbaa !7
  %i.j = shl nsw i32 %i.i, 1
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %i.k = sext i32 %.sroa.speculated.i to i64
  %i.l = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #7 ; 3 uses
  %4 = load i32, ptr %0, align 8, !tbaa !7
  %5 = load i32, ptr %i.c, align 8, !tbaa !19
  %i.m = sub nsw i32 %4, %5                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = add nsw i32 %i.m, 1
  %i.q = sext i32 %i.p to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.o, i64 %i.q, i1 false)
  store i32 %.sroa.speculated.i, ptr %0, align 8, !tbaa !7
  %i.r = sub nsw i32 %.sroa.speculated.i, %i.m    ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !19
  store ptr %i.l, ptr %i.n, align 8, !tbaa !17
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes11SNPrintfBuf7reallocEi.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.o) #9
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !17
  %.pre = load i32, ptr %i.c, align 8, !tbaa !19
  br label %_ZN6hermes11SNPrintfBuf7reallocEi.exit

_ZN6hermes11SNPrintfBuf7reallocEi.exit:           ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i
  %i.s = phi i32 [ %.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.r, %bb.b ]
  %i.t = phi ptr [ %.pre.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.l, %bb.b ]
  %i.u = sext i32 %i.m to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !18
  %i.w = sext i32 %i.s to i64
  %i.x = call i32 @vsnprintf(ptr noundef %i.v, i64 noundef %i.w, ptr noundef %1, ptr noundef nonnull %3) #8
  %.pre7 = load i32, ptr %i.c, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes11SNPrintfBuf7reallocEi.exit, %bb.a
  %i.y = phi i32 [ %.pre7, %_ZN6hermes11SNPrintfBuf7reallocEi.exit ], [ %i.g, %bb.a ]
  %.0 = phi i32 [ %i.x, %_ZN6hermes11SNPrintfBuf7reallocEi.exit ], [ %i.f, %bb.a ] ; 2 uses
  %i.z = sub nsw i32 %i.y, %.0
  store i32 %i.z, ptr %i.c, align 8, !tbaa !19
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = sext i32 %.0 to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !18
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11SNPrintfBuf7reallocEi(ptr noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 24)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = load i32, ptr %0, align 8, !tbaa !7
  %i.c = shl nsw i32 %i.b, 1
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.c) ; 3 uses
  %i.d = sext i32 %.sroa.speculated to i64
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #7 ; 3 uses
  %2 = load i32, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = sub nsw i32 %2, %i.g                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = add nsw i32 %i.h, 1
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.j, i64 %i.l, i1 false)
  store i32 %.sroa.speculated, ptr %0, align 8, !tbaa !7
  %i.m = sub nsw i32 %.sroa.speculated, %i.h
  store i32 %i.m, ptr %i.f, align 8, !tbaa !19
  store ptr %i.e, ptr %i.i, align 8, !tbaa !17
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #9
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ %.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { builtin nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN6hermes11SNPrintfBufE", !4, i64 0, !9, i64 8, !15, i64 16, !4, i64 24}
!9 = !{!"_ZTSSt10unique_ptrIA_cSt14default_deleteIS0_EE", !10, i64 0}
!10 = !{!"_ZTSSt15__uniq_ptr_dataIcSt14default_deleteIA_cELb1ELb1EE", !11, i64 0}
!11 = !{!"_ZTSSt15__uniq_ptr_implIcSt14default_deleteIA_cEE", !12, i64 0}
!12 = !{!"_ZTSSt5tupleIJPcSt14default_deleteIA_cEEE", !13, i64 0}
!13 = !{!"_ZTSSt11_Tuple_implILm0EJPcSt14default_deleteIA_cEEE", !14, i64 0}
!14 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!8, !15, i64 16}
!19 = !{!8, !4, i64 24}
end_hunk_0
