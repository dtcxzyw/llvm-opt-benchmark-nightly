inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_read_coc:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57
  %i.s = icmp ult i32 %i.r, 257
  %i.t = select i1 %i.s, i32 1, i32 2             ; 4 uses
  %.not = icmp ugt i32 %2, %i.t
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.200) #21 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.neg = xor i32 %i.t, -1
  %4 = add i32 %2, %.neg
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.t) #21
  %i.v = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !57
  %.not27.a = icmp ult i32 %i.v, %i.w
end_hunk_0
begin_hunk_1_@opj_j2k_read_coc:bb.a
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !109
end_hunk_1
begin_hunk_2_@opj_j2k_read_rgn:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.g = icmp ult i32 %i.f, 257
  %. = select i1 %i.g, i32 1, i32 2               ; 3 uses
  %4 = add nuw nsw i32 %., 2
  %.not = icmp eq i32 %2, %4
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_2
begin_hunk_3_@opj_j2k_read_poc:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = icmp ult i32 %i.e, 257
  %. = select i1 %i.f, i32 1, i32 2               ; 4 uses
  %4 = shl nuw nsw i32 %., 1
  %5 = add nuw nsw i32 %4, 5                      ; 3 uses
  %i.g = udiv i32 %2, %5
  %i.h = urem i32 %2, %5
  %i.i = icmp ugt i32 %5, %2
  %i.j = icmp ne i32 %i.h, 0
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@opj_j2k_write_poc_in_memory:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  %i.n = load i32, ptr %i.m, align 4, !tbaa !108  ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = icmp ult i32 %i.l, 257
  %. = select i1 %i.p, i32 1, i32 2               ; 4 uses
  %3 = shl nuw nsw i32 %., 1
  %4 = add nuw nsw i32 %3, 5
  %i.q = mul i32 %4, %i.o                         ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef %1, i32 noundef 65375, i32 noundef 2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = add i32 %i.q, 2
end_hunk_4
begin_hunk_5_@opj_j2k_write_all_coc:bb.a

opj_j2k_write_coc.exit:                           ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i, %bb.n
  %.0.i.i.i = phi i32 [ %i.bw, %bb.n ], [ 5, %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i ] ; 2 uses
  %i.bx = icmp ult i32 %i.bo, 257
  %i.by = select i1 %i.bx, i32 1, i32 2           ; 3 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.bq, i32 noundef 65363, i32 noundef 2) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %3 = add nuw nsw i32 %i.by, 3
  %i.ca = add i32 %3, %.0.i.i.i
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bz, i32 noundef %i.ca, i32 noundef 2) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv to i32
end_hunk_5
begin_hunk_6_@opj_j2k_write_regions:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw [1080 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = icmp ult i32 %i.k, 257
  %..i = select i1 %i.r, i32 1, i32 2             ; 4 uses
  %3 = add nuw nsw i32 %..i, 6
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !9    ; 3 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.s, i32 noundef 65374, i32 noundef 2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %4 = or disjoint i32 %..i, 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.t, i32 noundef %4, i32 noundef 2) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv to i32
end_hunk_6
begin_hunk_7_@opj_j2k_write_regions:bb.a
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !134
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.y, i32 noundef %i.aa, i32 noundef 1) #21
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !9
  %5 = zext nneg i32 %3 to i64                    ; 2 uses
  %i.ac = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.ab, i64 noundef %5, ptr noundef %2) #21
  %.not.i.not = icmp eq i64 %i.ac, %5
  br i1 %.not.i.not, label %._crit_edge21, label %._crit_edge

._crit_edge21:                                    ; preds = %bb.c
end_hunk_7
