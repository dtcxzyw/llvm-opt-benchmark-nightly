inline.NumInlined: 143
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_read_qcc:bb.a

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sink26 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ]
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.d ]
  %.pn = phi i64 [ 1, %bb.b ], [ 2, %bb.d ]
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %.sink26) #22
  %i.l = add i32 %2, %.sink
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@opj_j2k_read_qcc:bb.a
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %i.s = call fastcc i32 @opj_j2k_read_SQcd_SQcc(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef nonnull %i.r, ptr noundef %i.a, ptr noundef %3)
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.i, label %bb.j
end_hunk_1
begin_hunk_2_@opj_j2k_update_image_data:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.01747, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !480  ; 2 uses
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.r, i64 %i.s ; 6 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.t, align 8, !tbaa !481
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !483
  %i.x = getelementptr inbounds nuw i8, ptr %.01747, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !484
  %i.z = add i32 %i.y, -1
end_hunk_2
begin_hunk_3_@opj_j2k_update_image_data:bb.a
bb.d:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !485 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !486 ; 2 uses
  %i.ak = sub i32 %i.aj, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0172 = phi i32 [ %i.u, %bb.c ], [ %i.ah, %bb.d ] ; 5 uses
  %.0171 = phi i32 [ %i.w, %bb.c ], [ %i.aj, %bb.d ] ; 3 uses
  %.sink = phi i64 [ 4, %bb.c ], [ 180, %bb.d ]
  %.pn36 = phi i64 [ 12, %bb.c ], [ 188, %bb.d ]
  %.0171.a = phi i32 [ %i.af, %bb.c ], [ %i.ak, %bb.d ] ; 2 uses
  %.pn = phi i64 [ 48, %bb.c ], [ 80, %bb.d ]
  %.0169.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pn36
  %.0170.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink
  %i.al = getelementptr inbounds nuw i8, ptr %.01747, i64 %.pn
  %.0167 = load ptr, ptr %i.al, align 8, !tbaa !487 ; 2 uses
  %.0169 = load i32, ptr %.0169.in, align 4, !tbaa !3 ; 3 uses
  %.0170 = load i32, ptr %.0170.in, align 4, !tbaa !3 ; 5 uses
end_hunk_3
begin_hunk_4_@opj_j2k_update_image_data:bb.a
  br i1 %i.am, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sub nsw i32 %.0171, %.0172              ; 3 uses
  %i.ao = sub nsw i32 %.0169, %.0170              ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01756, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !272
end_hunk_4
begin_hunk_5_@opj_j2k_update_image_data:bb.a
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !74 ; 5 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 3 uses
  %i.bl = icmp ugt i32 %.0172, %i.ay
  %.not197 = icmp ult i32 %i.bh, %.0171           ; 2 uses
  br i1 %i.bl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
end_hunk_5
begin_hunk_6_@opj_j2k_update_image_data:bb.a
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.br = sub nuw nsw i32 %.0171, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.h
end_hunk_6
begin_hunk_7_@opj_j2k_update_image_data:bb.a
bb.t:                                             ; preds = %bb.s
  %i.cf = zext nneg i32 %.0178 to i64
  %i.cg = zext nneg i32 %.0179 to i64
  %i.ch = zext i32 %.0171.a to i64                ; 6 uses
  %i.ci = mul nuw nsw i64 %i.cg, %i.ch
  %i.cj = add nuw nsw i64 %i.ci, %i.cf            ; 2 uses
  %i.ck = zext i32 %.0183 to i64
end_hunk_7
begin_hunk_8_@opj_j2k_update_image_data:bb.a
  %or.cond9 = select i1 %i.cr, i1 %i.cs, i1 false
  %i.ct = icmp eq i64 %i.co, 0
  %or.cond11 = select i1 %or.cond9, i1 %i.ct, i1 false
  %i.cu = icmp eq i32 %.0171.a, %i.bg
  %or.cond204 = select i1 %or.cond11, i1 %i.cu, i1 false
  %i.cv = icmp eq i32 %.0166, %i.bg
  %or.cond205 = select i1 %or.cond204, i1 %i.cv, i1 false
end_hunk_8
