inline.NumInlined: 47
inline.NumDeleted: 9
begin_hunk_0_@MBType2Value:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6488
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.aa = sext i32 %i.v to i64
  %i.ab = sext i32 %i.t to i64
  %i.ac = add nsw i32 %i.v, 3
  %i.ad = sext i32 %i.ac to i64
  %1 = add nsw i32 %i.t, 3
  %i.ae = sext i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
end_hunk_0
begin_hunk_1_@MBType2Value:bb.a

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %2 = icmp slt i64 %indvars.iv.i, %i.ad
  br i1 %2, label %bb.j, label %bb.k, !llvm.loop !266

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %i.aa, %bb.h ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@MBType2Value:bb.a

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, 1
  %3 = icmp slt i64 %indvars.iv14.i, %i.ae
  br i1 %3, label %bb.h, label %ZeroRef.exit, !llvm.loop !267

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
end_hunk_2
begin_hunk_3_@writeMotionInfo2NAL:bb.a

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6488
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !144
  %i.ae = sext i32 %i.z to i64
  %i.af = sext i32 %i.x to i64
  %i.ag = add nsw i32 %i.z, 3
  %i.ah = sext i32 %i.ag to i64
  %2 = add nsw i32 %i.x, 3
  %i.ai = sext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
end_hunk_3
begin_hunk_4_@writeMotionInfo2NAL:bb.a

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %3 = icmp slt i64 %indvars.iv.i, %i.ah
  br i1 %3, label %bb.e, label %bb.f, !llvm.loop !266

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ %i.ae, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
end_hunk_4
begin_hunk_5_@writeMotionInfo2NAL:bb.a

bb.f:                                             ; preds = %bb.d
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, 1
  %4 = icmp slt i64 %indvars.iv14.i, %i.ai
  br i1 %4, label %bb.c, label %ZeroRef.exit, !llvm.loop !267

ZeroRef.exit:                                     ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 4008
end_hunk_5
