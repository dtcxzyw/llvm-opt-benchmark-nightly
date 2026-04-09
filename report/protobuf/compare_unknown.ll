inline.NumInlined: 75
inline.NumDeleted: 49
begin_hunk_0_@upb_UnknownFields_Build:bb.a

.critedge.preheader.i:                            ; preds = %.critedge.preheader.i.lr.ph, %upb_EpsCopyInputStream_Init.exit
  %i.l = phi i64 [ %i.a, %.critedge.preheader.i.lr.ph ], [ %i.aj, %upb_EpsCopyInputStream_Init.exit ]
  %.011 = phi i64 [ 0, %.critedge.preheader.i.lr.ph ], [ %i.r, %upb_EpsCopyInputStream_Init.exit ] ; 3 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !3
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.011, i64 %i.o)
  %i.q = icmp ult i64 %.011, %i.o
  br i1 %i.q, label %.lr.ph, label %.loopexit

.critedge.i:                                      ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.r, %umax.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader.i, %.critedge.i
  %.017.i17 = phi i64 [ %i.r, %.critedge.i ], [ %.011, %.critedge.preheader.i ] ; 2 uses
  %i.r = add i64 %.017.i17, 1                     ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.017.i17
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !10 ; 3 uses
  %i.t = icmp ne i64 %.sroa.0.0.copyload.i, 0
end_hunk_0
