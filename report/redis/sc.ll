inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0_@je_sc_data_init:bb.a
  %i.w = ashr exact i64 %sext.i, 32               ; 5 uses
  %i.x = trunc nuw nsw i64 %indvars.iv210.i to i32 ; 8 uses
  %i.y = trunc nuw nsw i64 %indvars.iv212.i to i32 ; 4 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next213.i to i32 ; 2 uses
  %i.aa = getelementptr inbounds [28 x i8], ptr %i.a, i64 %i.w ; 9 uses
  %i.ab = trunc i64 %.3151195.i to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@je_sc_data_init:bb.a
  br label %size_class.exit178.i

size_class.exit178.i:                             ; preds = %bb.e, %.thread.i175.i
  %1 = phi i8 [ 1, %bb.e ], [ 0, %.thread.i175.i ] ; 3 uses
  %.sink.i176.i = phi i32 [ %spec.select.i, %bb.e ], [ 0, %.thread.i175.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %.sink.i176.i, ptr %i.av, align 4, !tbaa !18
end_hunk_1
begin_hunk_2_@je_sc_data_init:bb.a
  %.4.i = select i1 %.not174.i, i32 %.2198.i, i32 %i.aw
  %i.ax = zext i1 %i.ai to i32
  %.8147.i = add nsw i32 %.6145196.i, %i.ax
  %2 = trunc nuw i8 %1 to i1
  %.2160.i = select i1 %2, i64 %i.ag, i64 %.0158193.i
  %3 = zext nneg i8 %1 to i32
  %.8.i = add nsw i32 %.6197.i, %3
  %i.ay = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 9 uses
  %i.az = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !19
end_hunk_2
begin_hunk_3_@je_sc_data_init:bb.a
  br label %size_class.exit178.i.1

size_class.exit178.i.1:                           ; preds = %bb.h, %.thread.i175.i.1
  %4 = phi i8 [ 1, %bb.h ], [ 0, %.thread.i175.i.1 ] ; 3 uses
  %.sink.i176.i.1 = phi i32 [ %spec.select.i.1, %bb.h ], [ 0, %.thread.i175.i.1 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %.sink.i176.i.1, ptr %i.bt, align 4, !tbaa !18
end_hunk_3
begin_hunk_4_@je_sc_data_init:bb.a
  %.4.i.1 = select i1 %.not174.i.1, i32 %.4.i, i32 %i.bu
  %i.bv = zext i1 %i.bg to i32
  %.8147.i.1 = add nsw i32 %.8147.i, %i.bv
  %5 = trunc nuw i8 %4 to i1
  %.2160.i.1 = select i1 %5, i64 %i.be, i64 %.2160.i
  %6 = or i8 %4, %1
  %.not = icmp ne i8 %6, 0
  %7 = zext nneg i8 %4 to i32
  %.8.i.1 = add nsw i32 %.8.i, %7
  %i.bw = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next.i.1 ; 9 uses
  %i.bx = trunc nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !19
end_hunk_4
begin_hunk_5_@je_sc_data_init:bb.a
  br label %size_class.exit178.i.2

size_class.exit178.i.2:                           ; preds = %bb.k, %.thread.i175.i.2
  %8 = phi i8 [ 1, %bb.k ], [ 0, %.thread.i175.i.2 ] ; 2 uses
  %.sink.i176.i.2 = phi i32 [ %spec.select.i.2, %bb.k ], [ 0, %.thread.i175.i.2 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 %.sink.i176.i.2, ptr %i.cr, align 4, !tbaa !18
end_hunk_5
begin_hunk_6_@je_sc_data_init:bb.a
  %.4.i.2 = select i1 %.not174.i.2, i32 %.4.i.1, i32 %i.cs ; 2 uses
  %i.ct = zext i1 %i.ce to i32
  %.8147.i.2 = add nsw i32 %.8147.i.1, %i.ct      ; 2 uses
  %9 = trunc nuw i8 %8 to i1                      ; 2 uses
  %.2160.i.2 = select i1 %9, i64 %i.cc, i64 %.2160.i.1 ; 2 uses
  %10 = or i1 %.not, %9
  %.2157.i.2 = select i1 %10, i32 %i.z, i32 %.0155194.i ; 2 uses
  %11 = zext nneg i8 %8 to i32
  %.8.i.2 = add nsw i32 %.8.i.1, %11              ; 2 uses
  br i1 %i.u, label %bb.p, label %bb.l

bb.l:                                             ; preds = %size_class.exit178.i.2
end_hunk_6
begin_hunk_7_@je_sc_data_init:bb.a
  br label %size_class.exit178.i.3

size_class.exit178.i.3:                           ; preds = %bb.o, %.thread.i175.i.3
  %12 = phi i8 [ 1, %bb.o ], [ 0, %.thread.i175.i.3 ] ; 2 uses
  %.sink.i176.i.3 = phi i32 [ %spec.select.i.3, %bb.o ], [ 0, %.thread.i175.i.3 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i32 %.sink.i176.i.3, ptr %i.dp, align 4, !tbaa !18
end_hunk_7
begin_hunk_8_@je_sc_data_init:bb.a
  %.4.i.3 = select i1 %.not174.i.3, i32 %.4.i.2, i32 %i.dq
  %i.dr = zext i1 %i.dc to i32
  %.8147.i.3 = add nsw i32 %.8147.i.2, %i.dr
  %13 = trunc nuw i8 %12 to i1                    ; 2 uses
  %.2160.i.3 = select i1 %13, i64 %i.da, i64 %.2160.i.2
  %.2157.i.3 = select i1 %13, i32 %i.z, i32 %.2157.i.2
  %14 = zext nneg i8 %12 to i32
  %.8.i.3 = add nsw i32 %.8.i.2, %14
  br label %bb.p

bb.p:                                             ; preds = %size_class.exit178.i.3, %size_class.exit178.i.2
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.3, %size_class.exit178.i.3 ], [ %indvars.iv.next.i.2, %size_class.exit178.i.2 ]
  %.2163.i.lcssa = phi i64 [ %.2163.i.3, %size_class.exit178.i.3 ], [ %.2163.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.4.i.3, %size_class.exit178.i.3 ], [ %.4.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.8147.i.lcssa = phi i32 [ %.8147.i.3, %size_class.exit178.i.3 ], [ %.8147.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.2160.i.lcssa = phi i64 [ %.2160.i.3, %size_class.exit178.i.3 ], [ %.2160.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.2157.i.lcssa = phi i32 [ %.2157.i.3, %size_class.exit178.i.3 ], [ %.2157.i.2, %size_class.exit178.i.2 ] ; 3 uses
  %.8.i.lcssa = phi i32 [ %.8.i.3, %size_class.exit178.i.3 ], [ %.8.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.i.2, %size_class.exit178.i.3 ], [ %indvars.iv.next.i.1, %size_class.exit178.i.2 ]
  %.lcssa = phi i64 [ %i.da, %size_class.exit178.i.3 ], [ %i.cc, %size_class.exit178.i.2 ]
end_hunk_8
