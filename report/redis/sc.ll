inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0_@je_sc_data_init:bb.a
  %i.ca = trunc nuw i8 %i.bw to i1
  %.2160.i.1 = select i1 %i.ca, i64 %i.bh, i64 %.2160.i
  %i.cb = or i8 %i.bw, %i.av
  %.not = icmp ne i8 %i.cb, 0
  %i.cc = zext nneg i8 %i.bw to i32
  %.8.i.1 = add nsw i32 %.8.i, %i.cc
  %i.cd = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next.i.1 ; 9 uses
end_hunk_0
begin_hunk_1_@je_sc_data_init:bb.a
  br label %size_class.exit178.i.2

size_class.exit178.i.2:                           ; preds = %bb.k, %.thread.i175.i.2
  %i.cy = phi i8 [ 1, %bb.k ], [ 0, %.thread.i175.i.2 ] ; 2 uses
  %.sink.i176.i.2 = phi i32 [ %spec.select.i.2, %bb.k ], [ 0, %.thread.i175.i.2 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i32 %.sink.i176.i.2, ptr %i.cz, align 4, !tbaa !18
end_hunk_1
begin_hunk_2_@je_sc_data_init:bb.a
  %.4.i.2 = select i1 %.not174.i.2, i32 %.4.i.1, i32 %i.da ; 2 uses
  %i.db = zext i1 %i.cl to i32
  %.8147.i.2 = add nsw i32 %.8147.i.1, %i.db      ; 2 uses
  %i.dc = trunc nuw i8 %i.cy to i1                ; 2 uses
  %.2160.i.2 = select i1 %i.dc, i64 %i.cj, i64 %.2160.i.1 ; 2 uses
  %1 = or i1 %.not, %i.dc
  %.2157.i.2 = select i1 %1, i32 %i.z, i32 %.0155194.i ; 2 uses
  %i.dd = zext nneg i8 %i.cy to i32
  %.8.i.2 = add nsw i32 %.8.i.1, %i.dd            ; 2 uses
  br i1 %i.u, label %bb.p, label %bb.l
end_hunk_2
