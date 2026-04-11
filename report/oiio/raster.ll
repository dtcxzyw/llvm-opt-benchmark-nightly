inline.NumInlined: 36
inline.NumDeleted: 14
begin_hunk_0_@Conic_To:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.ad, %bb.a
  %.068 = phi ptr [ %5, %bb.a ], [ %.1, %bb.ad ]  ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.068, i64 40 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !159  ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.068, i64 24 ; 4 uses
end_hunk_0
begin_hunk_1_@Conic_To:bb.a
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.068, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !157 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.068, i64 64
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !157
end_hunk_1
begin_hunk_2_@Conic_To:bb.a

bb.d:                                             ; preds = %bb.b
  %i.ay = icmp eq i64 %i.w, %i.aa
  br i1 %i.ay, label %6, label %bb.e

6:                                                ; preds = %bb.d
  %7 = getelementptr inbounds i8, ptr %.068, i64 -32
  br label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.az = icmp slt i64 %i.w, %i.aa                ; 4 uses
end_hunk_2
begin_hunk_3_@Conic_To:bb.a
bb.z:                                             ; preds = %bb.y
  %i.de = call fastcc signext i8 @Bezier_Up(ptr noundef %0, i32 noundef 2, ptr noundef %.068, ptr noundef nonnull @Split_Conic, i64 noundef %i.dc, i64 noundef %i.dd)
  %.not83 = icmp eq i8 %i.de, 0
  br i1 %.not83, label %8, label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.df = load i64, ptr %i.z, align 8, !tbaa !159
end_hunk_3
begin_hunk_4_@Conic_To:bb.a
  %i.dv = sub nsw i64 0, %i.du
  store i64 %i.dv, ptr %i.z, align 8, !tbaa !159
  %.not82 = icmp eq i8 %i.do, 0
  br i1 %.not82, label %8, label %.thread

8:                                                ; preds = %Bezier_Down.exit, %bb.z
  %9 = getelementptr inbounds i8, ptr %.068, i64 -32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.c, %8, %6
  %.1 = phi ptr [ %i.ae, %bb.c ], [ %7, %6 ], [ %9, %8 ] ; 2 uses
  %.not84 = icmp ult ptr %.1, %5
  br i1 %.not84, label %bb.ae, label %bb.b, !llvm.loop !160

end_hunk_4
begin_hunk_5_@Cubic_To:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.ad, %bb.a
  %.079 = phi ptr [ %7, %bb.a ], [ %.1, %bb.ad ]  ; 18 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.079, i64 56 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159  ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.079, i64 40 ; 4 uses
end_hunk_5
begin_hunk_6_@Cubic_To:bb.a
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.079, i64 48 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !157 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.079, i64 96
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !157
end_hunk_6
begin_hunk_7_@Cubic_To:bb.a

bb.d:                                             ; preds = %bb.b
  %i.bq = icmp eq i64 %i.y, %i.ae
  br i1 %i.bq, label %8, label %bb.e

8:                                                ; preds = %bb.d
  %9 = getelementptr inbounds i8, ptr %.079, i64 -48
  br label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.br = select i1 %.not.not, i32 2, i32 1       ; 2 uses
end_hunk_7
begin_hunk_8_@Cubic_To:bb.a
bb.z:                                             ; preds = %bb.y
  %i.dv = call fastcc signext i8 @Bezier_Up(ptr noundef %0, i32 noundef 3, ptr noundef %.079, ptr noundef nonnull @Split_Cubic, i64 noundef %i.dt, i64 noundef %i.du)
  %.not100 = icmp eq i8 %i.dv, 0
  br i1 %.not100, label %10, label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.dw = load i64, ptr %i.ad, align 8, !tbaa !159
end_hunk_8
begin_hunk_9_@Cubic_To:bb.a
  %i.eo = sub nsw i64 0, %i.en
  store i64 %i.eo, ptr %i.ad, align 8, !tbaa !159
  %.not99 = icmp eq i8 %i.eh, 0
  br i1 %.not99, label %10, label %.thread

10:                                               ; preds = %Bezier_Down.exit, %bb.z
  %11 = getelementptr inbounds i8, ptr %.079, i64 -48
  br label %bb.ad

bb.ad:                                            ; preds = %bb.c, %10, %8
  %.1 = phi ptr [ %i.ai, %bb.c ], [ %9, %8 ], [ %11, %10 ] ; 2 uses
  %.not101 = icmp ult ptr %.1, %7
  br i1 %.not101, label %bb.ae, label %bb.b, !llvm.loop !161

end_hunk_9
