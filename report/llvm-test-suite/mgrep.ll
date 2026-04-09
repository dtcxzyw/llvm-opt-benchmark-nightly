inline.NumInlined: 11
begin_hunk_0_@m_short:bb.a

.lr.ph113:                                        ; preds = %bb.a, %.thread
  %i.f = phi ptr [ %i.ca, %.thread ], [ %i.d, %bb.a ] ; 3 uses
  %.043111 = phi ptr [ %.4, %.thread ], [ %i.e, %bb.a ] ; 5 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @HASH, i64 %i.h
end_hunk_0
begin_hunk_1_@m_short:bb.a
  %i.p = phi i8 [ %i.by, %.loopexit86 ], [ %i.g, %.preheader90 ] ; 2 uses
  %i.q = phi i32 [ %i.bz, %.loopexit86 ], [ %num_of_matched.promoted, %.preheader90 ] ; 2 uses
  %.059 = phi ptr [ %i.t, %.loopexit86 ], [ %i.j, %.preheader90 ] ; 2 uses
  %.154 = phi ptr [ %.7, %.loopexit86 ], [ %i.f, %.preheader90 ] ; 6 uses
  %i.r = load i32, ptr %.059, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
end_hunk_1
begin_hunk_2_@m_short:bb.a
  br i1 %.not80, label %.loopexit86, label %.preheader85, !llvm.loop !20

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not72 = icmp eq i32 %i.ax, 0
  br i1 %.not72, label %bb.h, label %bb.g
end_hunk_2
begin_hunk_3_@m_short:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not73 = icmp eq i32 %i.az, 0
  br i1 %.not73, label %.preheader88, label %.preheader89

.preheader88:                                     ; preds = %bb.h, %.preheader88
  %.356 = phi ptr [ %i.ba, %.preheader88 ], [ %.154, %bb.h ] ; 4 uses
end_hunk_3
begin_hunk_4_@m_short:bb.a
  %i.bl = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bk), !inline_history !24 ; 0 uses
  br label %.thread

.preheader89:                                     ; preds = %bb.h, %.preheader89
  %.558 = phi ptr [ %i.bm, %.preheader89 ], [ %.154, %bb.h ]
  %i.bm = getelementptr inbounds i8, ptr %.558, i64 -1 ; 5 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %.not76 = icmp eq i8 %i.bn, 10
  br i1 %.not76, label %bb.i, label %.preheader89, !llvm.loop !26

bb.i:                                             ; preds = %.preheader89
end_hunk_4
begin_hunk_5_@m_short:bb.a
  %i.bq = zext i8 %i.bp to i32
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.bs = tail call noundef i32 @putc(i32 noundef %i.bq, ptr noundef %i.br), !inline_history !24 ; 0 uses
  %3 = icmp ult ptr %i.bo, %i.bm
  br i1 %3, label %.lr.ph104, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %.lr.ph104
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !22
end_hunk_5
begin_hunk_6_@monkey1:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %.loopexit134
  %.067159 = phi ptr [ %i.g, %.lr.ph161 ], [ %.572, %.loopexit134 ] ; 7 uses
  %.081158 = phi ptr [ %i.j, %.lr.ph161 ], [ %i.fc, %.loopexit134 ] ; 16 uses
  %i.o = load i8, ptr %.081158, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.p
end_hunk_6
begin_hunk_7_@monkey1:bb.a
  br label %.preheader194

.preheader194:                                    ; preds = %bb.o, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %.preheader194, %bb.p
  %.586 = phi ptr [ %i.ep, %bb.p ], [ %.081158, %.preheader194 ]
  %i.ep = getelementptr inbounds i8, ptr %.586, i64 -1 ; 5 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8
  %.not111 = icmp eq i8 %i.eq, 10
  br i1 %.not111, label %bb.q, label %bb.p, !llvm.loop !52

bb.q:                                             ; preds = %bb.p
end_hunk_7
begin_hunk_8_@monkey1:bb.a
  %i.et = zext i8 %i.es to i32
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ev = tail call noundef i32 @putc(i32 noundef %i.et, ptr noundef %i.eu), !inline_history !24 ; 0 uses
  %3 = icmp ult ptr %i.er, %i.ep
  br i1 %3, label %.lr.ph151, label %bb.r, !llvm.loop !53

bb.r:                                             ; preds = %.lr.ph151
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !22
end_hunk_8
