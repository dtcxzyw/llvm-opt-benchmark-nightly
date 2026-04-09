inline.NumInlined: 50
inline.NumDeleted: 27
begin_hunk_0_@_ZN5boost9container3pmr25monotonic_buffer_resourceD2Ev:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.g, i64 noundef 16)
          to label %_ZN5boost9container3pmr15memory_resource10deallocateEPvmm.exit.i.i.i unwind label %bb.c, !inline_history !30

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN5boost9container3pmr25monotonic_buffer_resource7releaseEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %.0.i.i, i64 noundef %i.g, i64 noundef 16)
          to label %_ZN5boost9container3pmr15memory_resource10deallocateEPvmm.exit.i.i unwind label %bb.c, !inline_history !30

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZNK5boost9container3pmr25monotonic_buffer_resource17remaining_storageEmRm:bb.a
  %i.f = add i64 %i.a, %i.e
  %i.g = and i64 %i.f, %i.b
  %i.h = sub i64 %i.g, %i.e                       ; 2 uses
  store i64 %i.h, ptr %2, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.h)
end_hunk_2
begin_hunk_3_@_ZN5boost9container3pmr25monotonic_buffer_resource11do_allocateEmm:bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.ac, i64 noundef 16), !inline_history !32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !28
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !19
end_hunk_3
begin_hunk_4_@_ZN5boost9container15throw_bad_allocEv:bb.a
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container9bad_allocE, i64 16), ptr %i.a, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container9bad_allocE, ptr nonnull @_ZNSt9exceptionD2Ev) #18
  unreachable
end_hunk_4
begin_hunk_5_@_ZNK5boost9container9exception4whatEv
define linkonce_odr noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.b
  ret ptr %spec.select
end_hunk_5
begin_hunk_6_@llvm.memset.p0.i64
!27 = !{i64 8}
!28 = !{!29, !16, i64 8}
!29 = !{!"_ZTSN5boost9container3pmr18block_slist_headerE", !12, i64 0, !16, i64 8}
!30 = distinct !{null}
!31 = !{!16, !16, i64 0}
!32 = distinct !{null, null, null}
!33 = !{!34, !36, i64 8}
!34 = !{!"_ZTSN5boost9container9exceptionE", !35, i64 0, !36, i64 8}
!35 = !{!"_ZTSSt9exception"}
!36 = !{!"p1 omnipotent char", !14, i64 0}
end_hunk_6
