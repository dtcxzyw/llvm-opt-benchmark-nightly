inline.NumInlined: 63
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.hermes::vm::VTable" = type { i64, i32, i32, ptr, ptr, ptr }

$_ZN6hermes2vm6GCBase5makeAINS0_11NativeStateELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRPvRPFvRNS0_7HadesGCEPS3_EEEEPT_jDpOT3_ = comdat any

@_ZN6hermes2vm11NativeState2vtE = hidden constant %"struct.hermes::vm::VTable" { i64 -47381121442796770, i32 25, i32 24, ptr @_ZN6hermes2vm11NativeState13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11NativeState13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6hermes2vm20NativeStateBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef readnone captures(none) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm11NativeState2vtE, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm11NativeState6createERNS0_7RuntimeEPvPFvRNS0_7HadesGCEPS1_E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !30
  store ptr %2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = call noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_11NativeStateELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRPvRPFvRNS0_7HadesGCEPS3_EEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %i.c, i32 noundef 24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_11NativeStateELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRPvRPFvRNS0_7HadesGCEPS3_EEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %.not.i.not.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %.not.i4.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !37
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_11NativeStateELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRPvRPFvRS1_PS3_EEEEPT_jDpOT3_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !44   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #10 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !42
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #11
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !44
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !41
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_11NativeStateELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRPvRPFvRS1_PS3_EEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_11NativeStateELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRPvRPFvRS1_PS3_EEEEPT_jDpOT3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !30
  %i.af = load ptr, ptr %3, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !7
  %i.ai = and i32 %1, 16777215
  %i.aj = or disjoint i32 %i.ai, 419430400
  store i32 %i.aj, ptr %i.h, align 8, !tbaa !46
  ret ptr %i.h
}

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { builtin nounwind }

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
!7 = !{!8, !10, i64 16}
!8 = !{!"_ZTSN6hermes2vm11NativeStateE", !9, i64 0, !10, i64 8, !10, i64 16}
!9 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !29, i64 216}
!12 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !13, i64 0, !14, i64 8, !14, i64 56, !14, i64 104, !14, i64 152, !24, i64 200, !28, i64 208, !29, i64 216}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !15, i64 0}
!15 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !16, i64 0}
!16 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !17, i64 0, !19, i64 8}
!17 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !18, i64 0}
!18 = !{!"_ZTSSt4lessIhE"}
!19 = !{!"_ZTSSt15_Rb_tree_header", !20, i64 0, !23, i64 32}
!20 = !{!"_ZTSSt18_Rb_tree_node_base", !21, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!21 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!22 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !25, i64 0, !27, i64 4}
!25 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !26, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!26 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!27 = !{!"bool", !5, i64 0}
!28 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !27, i64 4}
!29 = !{!"p1 _ZTSN6hermes2vm6VTableE", !10, i64 0}
!30 = !{!10, !10, i64 0}
!31 = !{!32, !13, i64 16}
!32 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !33, i64 0, !13, i64 16, !13, i64 24}
!33 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !13, i64 0, !34, i64 8}
!34 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !10, i64 0}
!35 = !{!32, !13, i64 24}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6GCCellESaIS3_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p2 _ZTSN6hermes2vm6GCCellE", !40, i64 0}
!40 = !{!"any p2 pointer", !10, i64 0}
!41 = !{!38, !39, i64 16}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTSN6hermes2vm6GCCellE", !10, i64 0}
!44 = !{!38, !39, i64 0}
!45 = !{!8, !10, i64 8}
!46 = !{!5, !5, i64 0}
end_hunk_0
