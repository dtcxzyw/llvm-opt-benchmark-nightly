Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDBSymbolExe?download=true
inline.NumInlined: 158
inline.NumDeleted: 133
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr.27" = type { %"struct.std::__uniq_ptr_data.28" }
%"struct.std::__uniq_ptr_data.28" = type { %"class.std::__uniq_ptr_impl.29" }
%"class.std::__uniq_ptr_impl.29" = type { %"class.std::tuple.30" }
%"class.std::tuple.30" = type { %"struct.std::_Tuple_impl.31" }
%"struct.std::_Tuple_impl.31" = type { %"struct.std::_Head_base.34" }
%"struct.std::_Head_base.34" = type { ptr }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }

$_ZN4llvm3pdb12PDBSymbolExeD0Ev = comdat any

$_ZNK4llvm3pdb9PDBSymbol9dumpRightERNS0_12PDBSymDumperE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm3pdb12PDBSymbolExeE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm3pdb9PDBSymbolD2Ev, ptr @_ZN4llvm3pdb12PDBSymbolExeD0Ev, ptr @_ZNK4llvm3pdb12PDBSymbolExe4dumpERNS0_12PDBSymDumperE, ptr @_ZNK4llvm3pdb9PDBSymbol9dumpRightERNS0_12PDBSymDumperE] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3pdb12PDBSymbolExe4dumpERNS0_12PDBSymDumperE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm3pdb12PDBSymbolExe18getPointerByteSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.27", align 8 ; 5 uses
  %2 = alloca %"class.std::unique_ptr.18", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6, !noalias !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15, !noalias !10 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !10
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 14) #6, !noalias !10, !inline_history !26
  %i.f = load ptr, ptr %2, align 8, !noalias !10  ; 5 uses
  %.not.i.i = icmp eq ptr %i.f, null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6, !noalias !10
  br i1 %.not.i.i, label %.thread, label %_ZNKSt14default_deleteIN4llvm3pdb24ConcreteSymbolEnumeratorINS1_20PDBSymbolTypePointerEEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4llvm3pdb24ConcreteSymbolEnumeratorINS1_20PDBSymbolTypePointerEEEEclEPS4_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6, !noalias !27
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8, !noalias !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !27
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.27") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #6, !noalias !27, !inline_history !30
  %i.j = load ptr, ptr %1, align 8, !tbaa !31, !noalias !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4llvm3pdb24ConcreteSymbolEnumeratorINS1_20PDBSymbolTypePointerEEEEclEPS4_.exit.i.i
  %i.k = call noundef i32 @_ZNK4llvm3pdb9PDBSymbol9getSymTagEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #6, !noalias !33
  %i.l = icmp eq i32 %i.k, 14
  %i.m = load ptr, ptr %1, align 8, !tbaa !31, !noalias !27 ; 4 uses
  br i1 %i.l, label %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.i.i

_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit, label %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i.i.i: ; preds = %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8, !noalias !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !27
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #6, !noalias !27, !inline_history !40
  br label %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit

_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit: ; preds = %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.i.i, %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i.i.i, %bb.b, %_ZNKSt14default_deleteIN4llvm3pdb24ConcreteSymbolEnumeratorINS1_20PDBSymbolTypePointerEEEEclEPS4_.exit.i.i
  %.sroa.0.0 = phi ptr [ null, %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i.i.i ], [ null, %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.i.i ], [ null, %_ZNKSt14default_deleteIN4llvm3pdb24ConcreteSymbolEnumeratorINS1_20PDBSymbolTypePointerEEEEclEPS4_.exit.i.i ], [ %i.m, %bb.b ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6, !noalias !27
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !8, !noalias !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !41
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #6, !noalias !41, !inline_history !42
  %.not = icmp eq ptr %.sroa.0.0, null
  br i1 %.not, label %.thread, label %_ZNKSt14default_deleteIN4llvm3pdb20PDBSymbolTypePointerEEclEPS2_.exit.i

.thread:                                          ; preds = %bb.a, %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 736
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #6, !inline_history !43
  %i.y = icmp eq i32 %i.x, 332
  %. = select i1 %i.y, i32 4, i32 8
  br label %_ZNSt10unique_ptrIN4llvm3pdb20PDBSymbolTypePointerESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4llvm3pdb20PDBSymbolTypePointerEEclEPS2_.exit.i: ; preds = %_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 752
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #6, !inline_history !44
  %i.af = trunc i64 %i.ae to i32
  %i.ag = load ptr, ptr %.sroa.0.0, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0) #6, !inline_history !45
  br label %_ZNSt10unique_ptrIN4llvm3pdb20PDBSymbolTypePointerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb20PDBSymbolTypePointerESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN4llvm3pdb20PDBSymbolTypePointerEEclEPS2_.exit.i
  %.09 = phi i32 [ %., %.thread ], [ %i.af, %_ZNKSt14default_deleteIN4llvm3pdb20PDBSymbolTypePointerEEclEPS2_.exit.i ]
  ret i32 %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN4llvm3pdb9PDBSymbolD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb12PDBSymbolExeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm3pdb9PDBSymbolD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm3pdb9PDBSymbol9dumpRightERNS0_12PDBSymDumperE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm3pdb9PDBSymbol9getSymTagEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_ZNK4llvm3pdb9PDBSymbol15findAllChildrenINS0_20PDBSymbolTypePointerEEESt10unique_ptrINS0_24ConcreteSymbolEnumeratorIT_EESt14default_deleteIS7_EEv: argument 0"}
!12 = distinct !{!12, !"_ZNK4llvm3pdb9PDBSymbol15findAllChildrenINS0_20PDBSymbolTypePointerEEESt10unique_ptrINS0_24ConcreteSymbolEnumeratorIT_EESt14default_deleteIS7_EEv"}
!13 = distinct !{!13, !14, !"_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv: argument 0"}
!14 = distinct !{!14, !"_ZNK4llvm3pdb9PDBSymbol12findOneChildINS0_20PDBSymbolTypePointerEEESt10unique_ptrIT_St14default_deleteIS5_EEv"}
!15 = !{!16, !25, i64 24}
!16 = !{!"_ZTSN4llvm3pdb9PDBSymbolE", !17, i64 8, !19, i64 16, !25, i64 24}
!17 = !{!"p1 _ZTSN4llvm3pdb11IPDBSessionE", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt10unique_ptrIN4llvm3pdb13IPDBRawSymbolESt14default_deleteIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm3pdb13IPDBRawSymbolESt14default_deleteIS2_ELb1ELb1EE", !21, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm3pdb13IPDBRawSymbolESt14default_deleteIS2_EE", !22, i64 0}
!22 = !{!"_ZTSSt5tupleIJPN4llvm3pdb13IPDBRawSymbolESt14default_deleteIS2_EEE", !23, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm3pdb13IPDBRawSymbolESt14default_deleteIS2_EEE", !24, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm3pdb13IPDBRawSymbolELb0EE", !25, i64 0}
!25 = !{!"p1 _ZTSN4llvm3pdb13IPDBRawSymbolE", !18, i64 0}
!26 = distinct !{null, null}
!27 = !{!28, !13}
!28 = distinct !{!28, !29, !"_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_20PDBSymbolTypePointerEE7getNextEv: argument 0"}
!29 = distinct !{!29, !"_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_20PDBSymbolTypePointerEE7getNextEv"}
!30 = distinct !{null, null}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN4llvm3pdb9PDBSymbolE", !18, i64 0}
!33 = !{!34, !36, !38, !28, !13}
!34 = distinct !{!34, !35, !"_ZN4llvm15unique_dyn_castINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_: argument 0"}
!35 = distinct !{!35, !"_ZN4llvm15unique_dyn_castINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_"}
!36 = distinct !{!36, !37, !"_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_: argument 0"}
!37 = distinct !{!37, !"_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_"}
!38 = distinct !{!38, !39, !"_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE: argument 0"}
!39 = distinct !{!39, !"_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb20PDBSymbolTypePointerENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE"}
!40 = distinct !{null, null, null, null}
!41 = !{!13}
!42 = distinct !{null, null, null, null, null, null, null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null, null}
end_hunk_0
