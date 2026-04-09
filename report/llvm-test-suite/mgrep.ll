inline.NumInlined: 11
begin_hunk_0_@m_short:bb.a

.lr.ph113:                                        ; preds = %bb.a, %.thread
  %i.f = phi ptr [ %i.ca, %.thread ], [ %i.d, %bb.a ] ; 3 uses
  %.043111 = phi ptr [ %.4, %.thread ], [ %i.e, %bb.a ] ; 7 uses
  %.043111127 = ptrtoint ptr %.043111 to i64
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @HASH, i64 %i.h
end_hunk_0
begin_hunk_1_@m_short:bb.a
  %i.p = phi i8 [ %i.by, %.loopexit86 ], [ %i.g, %.preheader90 ] ; 2 uses
  %i.q = phi i32 [ %i.bz, %.loopexit86 ], [ %num_of_matched.promoted, %.preheader90 ] ; 2 uses
  %.059 = phi ptr [ %i.t, %.loopexit86 ], [ %i.j, %.preheader90 ] ; 2 uses
  %.154 = phi ptr [ %.7, %.loopexit86 ], [ %i.f, %.preheader90 ] ; 7 uses
  %i.r = load i32, ptr %.059, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
end_hunk_1
begin_hunk_2_@m_short:bb.a
  br i1 %.not80, label %.loopexit86, label %.preheader85, !llvm.loop !20

bb.f:                                             ; preds = %bb.e
  %.154.lcssa129131 = ptrtoint ptr %.154 to i64
  %i.ax = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not72 = icmp eq i32 %i.ax, 0
  br i1 %.not72, label %bb.h, label %bb.g
end_hunk_2
begin_hunk_3_@m_short:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not73 = icmp eq i32 %i.az, 0
  br i1 %.not73, label %.preheader88, label %.preheader89.preheader

.preheader89.preheader:                           ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %.043111, i64 -1
  %3 = sub i64 0, %.043111127
  %scevgep128 = getelementptr i8, ptr %scevgep, i64 %3
  %scevgep132 = getelementptr i8, ptr %scevgep128, i64 %.154.lcssa129131
  br label %.preheader89

.preheader88:                                     ; preds = %bb.h, %.preheader88
  %.356 = phi ptr [ %i.ba, %.preheader88 ], [ %.154, %bb.h ] ; 4 uses
end_hunk_3
begin_hunk_4_@m_short:bb.a
  %i.bl = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bk), !inline_history !24 ; 0 uses
  br label %.thread

.preheader89:                                     ; preds = %.preheader89.preheader, %.preheader89
  %indvars.iv133 = phi ptr [ %scevgep132, %.preheader89.preheader ], [ %scevgep134, %.preheader89 ] ; 2 uses
  %.558 = phi ptr [ %.154, %.preheader89.preheader ], [ %i.bm, %.preheader89 ]
  %i.bm = getelementptr inbounds i8, ptr %.558, i64 -1 ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %.not76 = icmp eq i8 %i.bn, 10
  %scevgep134 = getelementptr i8, ptr %indvars.iv133, i64 -1
  br i1 %.not76, label %bb.i, label %.preheader89, !llvm.loop !26

bb.i:                                             ; preds = %.preheader89
end_hunk_4
begin_hunk_5_@m_short:bb.a
  %i.bq = zext i8 %i.bp to i32
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.bs = tail call noundef i32 @putc(i32 noundef %i.bq, ptr noundef %i.br), !inline_history !24 ; 0 uses
  %exitcond.not = icmp eq ptr %i.bo, %indvars.iv133
  br i1 %exitcond.not, label %bb.j, label %.lr.ph104, !llvm.loop !27

bb.j:                                             ; preds = %.lr.ph104
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !22
end_hunk_5
begin_hunk_6_@monkey1:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %.loopexit134
  %.067159 = phi ptr [ %i.g, %.lr.ph161 ], [ %.572, %.loopexit134 ] ; 9 uses
  %.081158 = phi ptr [ %i.j, %.lr.ph161 ], [ %i.fc, %.loopexit134 ] ; 17 uses
  %.081158178 = ptrtoint ptr %.081158 to i64
  %.067159179 = ptrtoint ptr %.067159 to i64
  %i.o = load i8, ptr %.081158, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.p
end_hunk_6
begin_hunk_7_@monkey1:bb.a
  br label %.preheader194

.preheader194:                                    ; preds = %bb.o, %bb.n
  %scevgep = getelementptr i8, ptr %.067159, i64 -1
  %3 = sub i64 %.081158178, %.067159179
  %scevgep180 = getelementptr i8, ptr %scevgep, i64 %3
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader194
  %indvars.iv181 = phi ptr [ %scevgep182, %bb.p ], [ %scevgep180, %.preheader194 ] ; 2 uses
  %.586 = phi ptr [ %i.ep, %bb.p ], [ %.081158, %.preheader194 ]
  %i.ep = getelementptr inbounds i8, ptr %.586, i64 -1 ; 4 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8
  %.not111 = icmp eq i8 %i.eq, 10
  %scevgep182 = getelementptr i8, ptr %indvars.iv181, i64 -1
  br i1 %.not111, label %bb.q, label %bb.p, !llvm.loop !52

bb.q:                                             ; preds = %bb.p
end_hunk_7
begin_hunk_8_@monkey1:bb.a
  %i.et = zext i8 %i.es to i32
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ev = tail call noundef i32 @putc(i32 noundef %i.et, ptr noundef %i.eu), !inline_history !24 ; 0 uses
  %exitcond183.not = icmp eq ptr %i.er, %indvars.iv181
  br i1 %exitcond183.not, label %bb.r, label %.lr.ph151, !llvm.loop !53

bb.r:                                             ; preds = %.lr.ph151
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !22
end_hunk_8
