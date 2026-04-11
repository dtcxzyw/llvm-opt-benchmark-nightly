inline.NumInlined: 107
inline.NumDeleted: 39
begin_hunk_0_@init_fast_fallback_inetsock_internal:bb.a
bb.av:                                            ; preds = %bb.au
  %i.hu = icmp slt i32 %.1456, 0                  ; 2 uses
  %.0477.in.v = select i1 %i.hu, i64 48, i64 24
  %.0477.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0477.in.v
  %.0471.in.v = select i1 %i.hu, i64 40, i64 16
  %.0471.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0471.in.v
  %.0471 = load i64, ptr %.0471.in, align 8, !tbaa !17
  %.0477 = load i64, ptr %.0477.in, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %i.hr, ptr noundef nonnull @.str.25, i64 noundef %.0471, i64 noundef %.0477) #18
  unreachable
end_hunk_0
begin_hunk_1_@init_fast_fallback_inetsock_internal:bb.a
bb.ce:                                            ; preds = %bb.cd
  %i.mg = icmp slt i32 %.2457, 0                  ; 2 uses
  %.2479.in.v = select i1 %i.mg, i64 48, i64 24
  %.2479.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2479.in.v
  %.2473.in.v = select i1 %i.mg, i64 40, i64 16
  %.2473.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2473.in.v
  %.2473 = load i64, ptr %.2473.in, align 8, !tbaa !17
  %.2479 = load i64, ptr %.2479.in, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %i.ma, ptr noundef nonnull @.str.28, i64 noundef %.2473, i64 noundef %.2479) #18
  unreachable
end_hunk_1
begin_hunk_2_@init_fast_fallback_inetsock_internal:bb.a
bb.dp:                                            ; preds = %bb.do
  %i.qg = icmp slt i32 %.44598631001, 0           ; 2 uses
  %.3480.in.v = select i1 %i.qg, i64 48, i64 24
  %.3480.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.3480.in.v
  %.3474.in.v = select i1 %i.qg, i64 40, i64 16
  %.3474.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.3474.in.v
  %.3474 = load i64, ptr %.3474.in, align 8, !tbaa !17
  %.3480 = load i64, ptr %.3480.in, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %i.qd, ptr noundef %.34638601019, i64 noundef %.3474, i64 noundef %.3480) #18
  unreachable
end_hunk_2
begin_hunk_3_@init_fast_fallback_inetsock_internal:bb.a
bb.dy:                                            ; preds = %bb.dw
  %i.ry = icmp slt i32 %.44598631001, 0           ; 2 uses
  %.4475.in.v = select i1 %i.ry, i64 40, i64 16
  %.4475.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.4475.in.v
  %.4481.in.v = select i1 %i.ry, i64 48, i64 24
  %.4481.in.a = getelementptr inbounds nuw i8, ptr %i.f, i64 %.4481.in.v
  %.4475 = load i64, ptr %.4475.in, align 8, !tbaa !17
  %.4481 = load i64, ptr %.4481.in.a, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %.sroa.18.71595, ptr noundef %.34638601019, i64 noundef %.4475, i64 noundef %.4481) #18
  unreachable

end_hunk_3
begin_hunk_4_@init_fast_fallback_inetsock_internal:bb.a
bb.fj:                                            ; preds = %bb.fh
  %i.ve = icmp slt i32 %.44598631001, 0           ; 2 uses
  %.5476.in.v = select i1 %i.ve, i64 40, i64 16
  %.5476.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.5476.in.v
  %.5482.in.v = select i1 %i.ve, i64 48, i64 24
  %.5482.in.a = getelementptr inbounds nuw i8, ptr %i.f, i64 %.5482.in.v
  %.5476 = load i64, ptr %.5476.in, align 8, !tbaa !17
  %.5482 = load i64, ptr %.5482.in.a, align 8, !tbaa !17
  call void @rsock_syserr_fail_host_port(i32 noundef %.sroa.18.22, ptr noundef %.17, i64 noundef %.5476, i64 noundef %.5482) #18
  unreachable

end_hunk_4
