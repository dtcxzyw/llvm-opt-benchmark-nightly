inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_s_sysopen
define internal range(i64 1, 4294967296) i64 @rb_io_s_sysopen(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
end_hunk_0
begin_hunk_1_@rb_io_s_sysopen:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !13
  %i.i = icmp samesign ult i32 %.286.i, %0
end_hunk_1
begin_hunk_2_@rb_io_s_sysopen:bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !13
  %3 = load i64, ptr %i.b, align 8, !tbaa !13     ; 2 uses
  %i.r = icmp eq i64 %3, 4
  br i1 %i.r, label %bb.k, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.s = call i64 @rb_check_to_integer(i64 noundef %3, ptr noundef nonnull @.str.18) #28 ; 4 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.h

end_hunk_2
