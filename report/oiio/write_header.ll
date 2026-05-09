inline.NumInlined: 62
inline.NumDeleted: 7
begin_hunk_0_@internal_exr_calc_header_version_flags:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7
  %.not = icmp eq i8 %i.b, 0                      ; 2 uses
  %spec.store.select = select i1 %.not, i32 2, i32 4098 ; 4 uses
  store i32 %spec.store.select, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 2, !tbaa !23
end_hunk_0
begin_hunk_1_@internal_exr_calc_header_version_flags:bb.a
  br i1 %i.q, label %._crit_edge.thread, label %.thread51

.thread51:                                        ; preds = %._crit_edge, %.loopexit.thread, %bb.d, %bb.c
  %2 = select i1 %.not, i32 1026, i32 5122        ; 2 uses
  store i32 %2, ptr %1, align 4, !tbaa !3
  br label %.critedge

end_hunk_1
begin_hunk_2_@internal_exr_calc_header_version_flags:bb.a
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ao = or disjoint i32 %i.al, 2048             ; 2 uses
  store i32 %i.ao, ptr %1, align 4, !tbaa !3
  br label %bb.j

end_hunk_2
begin_hunk_3_@internal_exr_write_header:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.d, 0                    ; 2 uses
  %spec.store.select.i = select i1 %.not.i, i32 2, i32 4098 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !23
  %i.g = icmp ugt i8 %i.f, 31
end_hunk_3
begin_hunk_4_@internal_exr_write_header:bb.a
  br i1 %i.s, label %._crit_edge.thread.i, label %.thread51.i

.thread51.i:                                      ; preds = %._crit_edge.i, %.loopexit.thread.i, %bb.d, %bb.c
  %1 = select i1 %.not.i, i32 1026, i32 5122
  br label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.thread.i, %.thread51.i, %.preheader.i, %bb.a
end_hunk_4
begin_hunk_5_@internal_exr_write_header:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !44
  %.not45.i = icmp eq i8 %i.ao, 0
  %i.ap = or disjoint i32 %.060, 2048
  %spec.select = select i1 %.not45.i, i32 %.060, i32 %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !45
  %.not46.i = icmp eq i8 %i.ar, 0
  %i.as = or disjoint i32 %spec.select, 512
  %.262 = select i1 %.not46.i, i32 %spec.select, i32 %i.as
  %.262.fr = freeze i32 %.262                     ; 2 uses
  store i32 20000630, ptr %i.a, align 4, !tbaa !3
end_hunk_5
begin_hunk_6_@internal_exr_write_header:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 545 ; 2 uses
  %2 = icmp ult i32 %.262.fr, 2048
  br i1 %2, label %.preheader75.split.us, label %.preheader75.split

.preheader75.split.us:                            ; preds = %.preheader75, %.thread67.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.thread67.us ], [ 0, %.preheader75 ] ; 3 uses
end_hunk_6
