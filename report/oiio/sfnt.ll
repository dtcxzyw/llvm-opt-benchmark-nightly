inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_face_colr_blend_layer:bb.a
}

; Function Attrs: nounwind uwtable
define internal void @tt_face_get_metrics(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 2)) %3, ptr noundef captures(none) initializes((0, 2)) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
end_hunk_0
begin_hunk_1_@tt_face_get_metrics:bb.a
  br i1 %.not85, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.v = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #27 ; 2 uses
  store i16 %i.v, ptr %3, align 2, !tbaa !298
  %i.w = load i32, ptr %i.a, align 4, !tbaa !3
  %.not86 = icmp eq i32 %i.w, 0
end_hunk_1
begin_hunk_2_@tt_face_get_metrics:bb.a
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #27 ; 2 uses
  store i16 %i.ao, ptr %3, align 2, !tbaa !298
  br label %bb.p

end_hunk_2
begin_hunk_3_@tt_face_get_metrics:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.m, %bb.n, %bb.k, %bb.o
  %5 = phi i16 [ %i.v, %bb.f ], [ 0, %bb.m ], [ %i.ao, %bb.n ], [ 0, %bb.k ], [ 0, %bb.o ]
  %.not87 = icmp eq ptr %i.g, null
  br i1 %.not87, label %bb.z, label %bb.q

end_hunk_3
begin_hunk_4_@tt_face_get_metrics:bb.a
  %i.as = zext i16 %i.ar to i32
  store i32 %i.as, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.at = sext i16 %5 to i32
  store i32 %i.at, ptr %i.c, align 4, !tbaa !3
  br i1 %.not, label %bb.v, label %bb.s
end_hunk_4
begin_hunk_5_@sfnt_get_name_id:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i16, ptr %i.a, align 8, !tbaa !365  ; 2 uses
  %.not26 = icmp eq i16 %i.b, 0
  br i1 %.not26, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584
end_hunk_5
begin_hunk_6_@sfnt_get_name_id:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !572

._crit_edge:                                      ; preds = %.thread
  %i.ab = load i32, ptr %2, align 4, !tbaa !3
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.a, %._crit_edge
  %i.ad = load i32, ptr %3, align 4, !tbaa !3
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = zext i1 %i.ae to i8
end_hunk_6
begin_hunk_7_@sfnt_get_ps_name:bb.a
  br i1 %i.cw, label %sfnt_get_var_ps_name.exit, label %.critedge188.i

.critedge188.i:                                   ; preds = %sfnt_get_name_id.exit235.i, %sfnt_get_name_id.exit222.i, %sfnt_get_name_id.exit.i
  %.0..0.324.i = phi i32 [ %.0..0..0..0..0..pre.pre.i, %sfnt_get_name_id.exit235.i ], [ %.0..0..0..0..0..pre.pre332.i, %sfnt_get_name_id.exit222.i ], [ %.0..0..0..0..0..pre.pre333.i, %sfnt_get_name_id.exit.i ] ; 2 uses
  %.0..0.250.pr.i = phi i32 [ %.0..0..0..0..0.255.pr.i, %sfnt_get_name_id.exit235.i ], [ %.0..0..0..0..0.253.pr.i, %sfnt_get_name_id.exit222.i ], [ %.0..0..0..0..0.251.pr.i, %sfnt_get_name_id.exit.i ] ; 2 uses
  %.not175.i = icmp eq i32 %.0..0.250.pr.i, -1
  br i1 %.not175.i, label %bb.ab, label %.critedge188.thread.i

end_hunk_7
