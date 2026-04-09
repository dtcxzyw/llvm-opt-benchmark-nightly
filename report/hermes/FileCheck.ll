inline.NumInlined: 1994
inline.NumDeleted: 840
begin_hunk_0_@_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef 1) #19
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !156
  %.pre49 = load ptr, ptr %i.a, align 8, !tbaa !154
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre49, %bb.b ] ; 5 uses
  %i.n = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not46 = icmp eq ptr %i.n, %i.m
end_hunk_1
begin_hunk_2_@_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE:bb.a
  ret { ptr, i64 } %.fca.1.insert

bb.d:                                             ; preds = %.lr.ph48, %.critedge
  %.047 = phi ptr [ %i.n, %.lr.ph48 ], [ %i.bi, %.critedge ] ; 10 uses
  %.not31 = icmp ugt ptr %.047, %i.o
  br i1 %.not31, label %bb.g, label %bb.e

end_hunk_2
begin_hunk_3_@_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE:bb.a
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !121
  %i.be = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 2 uses
  %.not3442 = icmp eq ptr %i.be, %i.m
  br i1 %.not3442, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, %.critedge2
  %i.bf = phi ptr [ %i.bh, %.critedge2 ], [ %i.be, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40 ] ; 4 uses
  %.143 = phi ptr [ %i.bf, %.critedge2 ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40 ]
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !43
  switch i8 %i.bg, label %.critedge [
    i8 32, label %.critedge2
end_hunk_3
begin_hunk_4_@_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE:bb.a
  br i1 %.not34, label %.critedge, label %.lr.ph, !llvm.loop !160

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, %bb.f, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37
  %.2 = phi ptr [ %.047, %bb.f ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37 ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40 ], [ %i.bf, %.critedge2 ], [ %.143, %.lr.ph ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.m
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !161
end_hunk_4
