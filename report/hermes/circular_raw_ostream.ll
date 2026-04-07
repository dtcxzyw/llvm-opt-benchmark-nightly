begin_hunk_0_@_ZN4llvh20circular_raw_ostreamD2Ev:bb.a
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.al) #7
  br label %_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit

_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit: ; preds = %_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv.exit, %bb.e
end_hunk_0
begin_hunk_1_@_ZNK4llvh20circular_raw_ostream11current_posEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(36) %i.b) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_1
begin_hunk_2_@llvm.umin.i32
!26 = !{!"vtable pointer", !6, i64 0}
!27 = !{!9, !10, i64 24}
!28 = !{!9, !10, i64 8}
end_hunk_2
