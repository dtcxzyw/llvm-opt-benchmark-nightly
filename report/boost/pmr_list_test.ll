Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_list_test?download=true
inline.NumInlined: 94
inline.NumDeleted: 71
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::container::list" = type { %"struct.boost::container::dtl::node_alloc_holder" }
%"struct.boost::container::dtl::node_alloc_holder" = type { %"class.boost::container::pmr::polymorphic_allocator", %"class.boost::intrusive::list_impl" }
%"class.boost::container::pmr::polymorphic_allocator" = type { ptr }
%"class.boost::intrusive::list_impl" = type { %"struct.boost::intrusive::list_impl<boost::intrusive::bhtraits<boost::container::base_node<int, boost::container::dtl::list_hook<void *>>, boost::intrusive::list_node_traits<void *>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 1>, unsigned long, true, void>::data_t" }
%"struct.boost::intrusive::list_impl<boost::intrusive::bhtraits<boost::container::base_node<int, boost::container::dtl::list_hook<void *>>, boost::intrusive::list_node_traits<void *>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 1>, unsigned long, true, void>::data_t" = type { %"struct.boost::intrusive::list_impl<boost::intrusive::bhtraits<boost::container::base_node<int, boost::container::dtl::list_hook<void *>>, boost::intrusive::list_node_traits<void *>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 1>, unsigned long, true, void>::root_plus_size" }
%"struct.boost::intrusive::list_impl<boost::intrusive::bhtraits<boost::container::base_node<int, boost::container::dtl::list_hook<void *>>, boost::intrusive::list_node_traits<void *>, boost::intrusive::normal_link, boost::intrusive::dft_tag, 1>, unsigned long, true, void>::root_plus_size" = type { %"struct.boost::intrusive::detail::size_holder", %"struct.boost::intrusive::detail::default_header_holder" }
%"struct.boost::intrusive::detail::size_holder" = type { i64 }
%"struct.boost::intrusive::detail::default_header_holder" = type { %"struct.boost::intrusive::list_node" }
%"struct.boost::intrusive::list_node" = type { ptr, ptr }

$_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorIiEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev = comdat any

$__clang_call_terminate = comdat any

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::list", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #6
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #6 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i64 0, ptr %i.b, align 8
  store ptr %i.c, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 24, i64 noundef 8)
          to label %bb.b unwind label %bb.e, !inline_history !21 ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.i, align 4, !tbaa !25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !24
  store ptr %i.c, ptr %i.h, align 8, !tbaa !17
  store ptr %i.h, ptr %i.d, align 8, !tbaa !24
  store ptr %i.h, ptr %i.j, align 8, !tbaa !17
  %i.l = load i64, ptr %i.b, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.b, align 8, !tbaa !28
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !17, !noalias !29
  br label %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i.i

_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i, %i.c
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorIiEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i.i
  %i.o = load ptr, ptr %.sroa.04.0.i.i.i, align 8, !tbaa !17
  %i.p = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %.sroa.04.0.i.i.i, i64 noundef 24, i64 noundef 8)
          to label %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i.i unwind label %bb.d, !llvm.loop !0, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #7
  unreachable

_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorIiEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  ret i32 0

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorIiEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  resume { ptr, i32 } %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorIiEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17, !noalias !32
  br label %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i

_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.04.0.i.i = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.04.0.i.i, %i.a
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i
  %i.c = load ptr, ptr %.sroa.04.0.i.i, align 8, !tbaa !17
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %.sroa.04.0.i.i, i64 noundef 24, i64 noundef 8)
          to label %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i unwind label %bb.c, !llvm.loop !0, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #7
  unreachable

bb.d:                                             ; preds = %_ZN5boost9container3dtl24allocator_node_destroyerINS0_3pmr21polymorphic_allocatorINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEEEEEclERKPS9_.exit.i.i
  store ptr %i.a, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !20}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN5boost9container3pmr15memory_resourceE", !11, i64 0}
!13 = !{!"_ZTSN5boost9container3pmr21polymorphic_allocatorINS0_9base_nodeIiNS0_3dtl9list_hookIPvEELb0EEEEE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !11, i64 0}
!16 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !15, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 0}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{null}
!22 = distinct !{!22, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!23 = distinct !{!23, !22, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!24 = !{!16, !15, i64 8}
!25 = !{!8, !8, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!23}
!30 = distinct !{!30, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!31 = distinct !{!31, !30, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!32 = !{!31}
end_hunk_0
