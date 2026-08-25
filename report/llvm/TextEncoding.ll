Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TextEncoding?download=true
inline.NumInlined: 96
inline.NumDeleted: 76
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::ErrorOr" = type <{ %union.anon.29, i8, [7 x i8] }>
%union.anon.29 = type { %"class.std::error_code" }
%"class.std::error_code" = type { i32, ptr }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK5clang12TextEncoding12getConverterENS_16ConversionActionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %.0 = select i1 %cond, ptr %i.b, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN5clang12TextEncoding24setConvertersFromOptionsERS0_RKNS_11LangOptionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1136) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit.thread, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit.thread:             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ @.str, %bb.a ] ; 6 uses
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #9 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  %.not.i12 = icmp eq i64 %i.g, 5
  br i1 %.not.i12, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.h = load i32, ptr %i.f, align 1
  %i.i = xor i32 %i.h, 759583829
  %i.j = getelementptr i8, ptr %i.f, i64 4
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = xor i32 %i.l, 56
  %i.n = or i32 %i.i, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread25

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #10
  br label %bb.g

_ZN4llvmeqENS_9StringRefES0_.exit.thread25:       ; preds = %_ZN4llvm9StringRefC2EPKc.exit.thread, %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.sroa.0.0.i34 = phi i64 [ 0, %_ZN4llvm9StringRefC2EPKc.exit.thread ], [ %i.g, %_ZN4llvm9StringRefC2EPKc.exit ], [ 5, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.s = phi ptr [ null, %_ZN4llvm9StringRefC2EPKc.exit.thread ], [ %i.f, %_ZN4llvm9StringRefC2EPKc.exit ], [ %i.f, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZN4llvm21TextEncodingConverter6createENS_9StringRefES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr nonnull @.str, i64 5, ptr %i.s, i64 %.sroa.0.0.i34) #9
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %_ZNK4llvm7ErrorOrINS_21TextEncodingConverterEE8getErrorEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread25
  %i.w = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #11, !noalias !17 ; 2 uses
  %i.x = load i64, ptr %2, align 8, !tbaa !20, !noalias !17
  store i64 %i.x, ptr %i.w, align 8, !tbaa !20, !noalias !17
  store ptr null, ptr %2, align 8, !tbaa !20, !noalias !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 3 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !22
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm21TextEncodingConverterEEclEPS1_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7details29TextEncodingConverterImplBaseEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7details29TextEncodingConverterImplBaseEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #9, !inline_history !26
  br label %_ZNKSt14default_deleteIN4llvm21TextEncodingConverterEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm21TextEncodingConverterEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7details29TextEncodingConverterImplBaseEEclEPS2_.exit.i.i.i.i.i.i.i, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 8) #12
  br label %_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm21TextEncodingConverterEEclEPS1_.exit.i.i.i.i, %bb.c
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #10
  %.pre = load i8, ptr %i.t, align 8
  br label %bb.e

_ZNK4llvm7ErrorOrINS_21TextEncodingConverterEE8getErrorEv.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread25
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8, !tbaa !27
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit, %_ZNK4llvm7ErrorOrINS_21TextEncodingConverterEE8getErrorEv.exit
  %i.ae = phi i8 [ %.pre, %_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit ], [ %i.u, %_ZNK4llvm7ErrorOrINS_21TextEncodingConverterEE8getErrorEv.exit ]
  %.sroa.021.0 = phi i32 [ 0, %_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit ], [ %.sroa.0.0.copyload.i, %_ZNK4llvm7ErrorOrINS_21TextEncodingConverterEE8getErrorEv.exit ]
  %.sroa.422.0 = phi ptr [ %3, %_ZNSt10unique_ptrIN4llvm21TextEncodingConverterESt14default_deleteIS1_EED2Ev.exit ], [ %.sroa.31.0.copyload.i, %_ZNK4llvm7ErrorOrINS_21TextEncodingConverterEE8getErrorEv.exit ]
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7details29TextEncodingConverterImplBaseEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm7details29TextEncodingConverterImplBaseEEclEPS2_.exit.i.i.i: ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #9, !inline_history !30
  br label %_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit

_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm7details29TextEncodingConverterImplBaseEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.sroa.021.1 = phi i32 [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %.sroa.021.0, %_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit ]
  %.sroa.422.1 = phi ptr [ %i.r, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %.sroa.422.0, %_ZN4llvm7ErrorOrINS_21TextEncodingConverterEED2Ev.exit ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.021.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.422.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN4llvm21TextEncodingConverter6createENS_9StringRefES1_(ptr dead_on_unwind writable sret(%"class.llvm::ErrorOr") align 8, ptr, i64, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { builtin nounwind }

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
!8 = !{!9, !13, i64 8}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !11, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZSt11make_uniqueIN4llvm21TextEncodingConverterEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!19 = distinct !{!19, !"_ZSt11make_uniqueIN4llvm21TextEncodingConverterEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN4llvm7details29TextEncodingConverterImplBaseE", !12, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSN4llvm21TextEncodingConverterE", !12, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = distinct !{null, null, null, null, null, null, null, null}
!27 = !{!5, !5, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSNSt3_V214error_categoryE", !12, i64 0}
!30 = distinct !{null, null, null, null}
end_hunk_0
