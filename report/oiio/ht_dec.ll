inline.NumInlined: 55
inline.NumDeleted: 13
begin_hunk_0_@mel_init:.critedge
  store ptr %i.v, ptr %0, align 8, !tbaa !113
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !116
  store i32 8, ptr %i.f, align 8, !tbaa !115
  %i.w = icmp eq i64 %spec.select, 255            ; 3 uses
  %i.x = zext i1 %i.w to i32
  store i32 %i.x, ptr %i.h, align 8, !tbaa !117
  %exitcond.not = icmp eq i32 %i.p, 3
end_hunk_0
begin_hunk_1_@mel_init:.critedge
  %i.ah = zext i1 %i.aa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah ; 4 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !113
  %4 = select i1 %i.w, i32 7, i32 8               ; 2 uses
  %5 = zext nneg i32 %4 to i64
  %i.aj = shl i64 %spec.select, %5
  %i.ak = or i64 %i.aj, %spec.select.1            ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !116
  %6 = add nuw nsw i32 %4, 8                      ; 3 uses
  store i32 %6, ptr %i.f, align 8, !tbaa !115
  %i.al = icmp eq i64 %spec.select.1, 255         ; 3 uses
  %i.am = zext i1 %i.al to i32
  store i32 %i.am, ptr %i.h, align 8, !tbaa !117
end_hunk_1
begin_hunk_2_@mel_init:.critedge
  %i.ba = shl i64 %i.ak, %i.az
  %i.bb = or i64 %i.ba, %spec.select.2            ; 3 uses
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !116
  %i.bc = add nuw nsw i32 %6, %i.ay               ; 3 uses
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !115
  %i.bd = icmp eq i64 %spec.select.2, 255         ; 3 uses
  %i.be = zext i1 %i.bd to i32
end_hunk_2
begin_hunk_3_@mel_init:.critedge

bb.m:                                             ; preds = %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.lcssa42 = phi i64 [ %spec.select, %.critedge ], [ %i.ak, %.critedge.1 ], [ %i.bb, %.critedge.2 ], [ %i.bt, %.critedge.3 ]
  %.lcssa = phi i32 [ 8, %.critedge ], [ %6, %.critedge.1 ], [ %i.bc, %.critedge.2 ], [ %i.bu, %.critedge.3 ]
  %i.bx = sub nsw i32 64, %.lcssa
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl i64 %.lcssa42, %i.by
end_hunk_3
