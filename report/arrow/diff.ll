inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZN5arrow4DiffERKNS_5ArrayES2_PNS_10MemoryPoolE:bb.a
  %i.s = icmp slt i64 %.val.val, %.val21.val      ; 2 uses
  %.sroa.speculated7.i = tail call i64 @llvm.smin.i64(i64 %.val21.val, i64 %.val.val) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %.val.val, i64 %.val21.val)
  %i.t = sub nsw i64 %.sroa.speculated.i, %.sroa.speculated7.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 16, i1 false), !noalias !442
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
end_hunk_0
begin_hunk_1_@_ZN5arrow4DiffERKNS_5ArrayES2_PNS_10MemoryPoolE:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !442
  %i.z = add nuw nsw i64 %i.t, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !453
  %39 = add nuw i64 %i.t, 8
  %40 = lshr i64 %39, 3
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %9, i64 noundef %40, i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.k, !noalias !442

.noexc.i:                                         ; preds = %bb.f
end_hunk_1
