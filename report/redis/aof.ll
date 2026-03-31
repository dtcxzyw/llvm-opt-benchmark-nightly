begin_hunk_0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !209 ; 2 uses
  %.not86 = icmp eq ptr %i.cn, null
  br i1 %.not86, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @raxStart(ptr noundef nonnull %5, ptr noundef nonnull %i.cn) #19
  %8 = call i32 @raxSeek(ptr noundef nonnull %5, ptr noundef nonnull @.str.144, ptr noundef null, i64 noundef 0) #19 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = call i32 @raxNext(ptr noundef nonnull %5) #19
  %.not87132 = icmp eq i32 %9, 0
  br i1 %.not87132, label %.thread116, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.ak, %._crit_edge
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !210 ; 3 uses
end_hunk_0
begin_hunk_1
  %i.ea = load ptr, ptr %i.ct, align 8, !tbaa !214
  %i.eb = call i32 @rioWriteStreamPendingEntry(ptr noundef %0, ptr noundef %1, ptr noundef %i.dy, i64 noundef %i.dz, ptr noundef %i.dl, ptr noundef %i.ea, ptr noundef %i.dx)
  %.not98 = icmp eq i32 %i.eb, 0
  br i1 %.not98, label %.loopexit.a, label %.critedge107

bb.aw:                                            ; preds = %.critedge107
  call void @raxStop(ptr noundef nonnull %7) #19
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ed = call i32 @raxNext(ptr noundef nonnull %5) #19
  %.not87 = icmp eq i32 %i.ed, 0
  br i1 %.not87, label %.thread116, label %.lr.ph134, !llvm.loop !221

.loopexit.a:                                      ; preds = %bb.av
  call void @raxStop(ptr noundef nonnull %7) #19
  call void @raxStop(ptr noundef nonnull %6) #19
  call void @raxStop(ptr noundef nonnull %5) #19
  call void @streamIteratorStop(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.loopexit118, !llvm.loop !221

.thread116:                                       ; preds = %._crit_edge, %bb.ak
  call void @raxStop(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ax

.loopexit118:                                     ; preds = %.loopexit.a, %.thread114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ay

bb.ax:                                            ; preds = %.thread116, %bb.aj
  call void @streamIteratorStop(ptr noundef nonnull %3) #19
  br label %bb.ay

end_hunk_2
