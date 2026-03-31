begin_hunk_0
  br i1 %.not11.i.i, label %bb.dy, label %.critedge.thread25.i

bb.dy:                                            ; preds = %bb.dx
  %i.qt = load i32, ptr %i.g, align 4
  switch i32 %i.qt, label %.critedge.thread.i [
    i32 13, label %bb.dz
    i32 38, label %bb.ea
    i32 1, label %bb.eb
end_hunk_0
begin_hunk_1

uv__is_buggy_cephfs.exit.thread.i.i:              ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ee

uv__is_buggy_cephfs.exit.i.i:                     ; preds = %bb.dz
  %i.qx = call i32 @uv__kernel_version() #16
  %i.qy = icmp ugt i32 %i.qx, 267263
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.qy, label %bb.ee, label %.critedge.sink.split.i

bb.ea:                                            ; preds = %bb.dy
  store atomic i32 1, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
end_hunk_1
begin_hunk_2

uv__is_cifs_or_smb.exit.thread.i.i:               ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ec, %bb.ec, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.critedge.sink.split.i

bb.ee:                                            ; preds = %uv__is_cifs_or_smb.exit.thread.i.i, %bb.ea, %uv__is_buggy_cephfs.exit.i.i, %uv__is_buggy_cephfs.exit.thread.i.i
  %.pr.i = load i32, ptr %i.g, align 4
  %i.rd = icmp eq i32 %.pr.i, 38
  br i1 %i.rd, label %.critedge.i, label %.critedge.thread.i

.critedge.sink.split.i:                           ; preds = %bb.dw, %bb.ed, %uv__is_buggy_cephfs.exit.i.i, %bb.dy, %bb.dy
end_hunk_2
begin_hunk_3
  %.not.i111 = icmp eq i64 %i.re, -1
  br i1 %.not.i111, label %.critedge.thread.i, label %.critedge.thread25.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.ee, %bb.dy
  %i.rf = load i64, ptr %i.b, align 8
  %i.rg = load i64, ptr %i.k, align 8
  %i.rh = icmp sgt i64 %i.rf, %i.rg
end_hunk_3
