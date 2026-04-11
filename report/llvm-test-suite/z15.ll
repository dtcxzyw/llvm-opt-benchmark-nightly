inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0_@RotateConstraint:bb.a
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

end_hunk_0
begin_hunk_1_@RotateConstraint:bb.a
  %i.y = fadd double %.lcssa, 0xBFF921FB54442D18
  %i.z = fptrunc double %i.y to float
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.j

end_hunk_1
begin_hunk_2_@RotateConstraint:bb.a
  %i.ad = fadd double %.lcssa, 0xC00921FB54442D18
  %i.ae = fptrunc double %i.ad to float
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = fadd double %.lcssa, 0xC012D97C7F3321D2
  %i.ai = fptrunc double %i.ah to float
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.sroa.084.0.in = phi ptr [ %i.ak, %bb.i ], [ %i.ag, %bb.h ], [ %3, %bb.f ], [ %4, %bb.d ]
  %.sroa.886.0.in.a = phi ptr [ %13, %bb.i ], [ %11, %bb.h ], [ %9, %bb.f ], [ %7, %bb.d ]
  %.sroa.1488.0.in = phi ptr [ %3, %bb.i ], [ %4, %bb.h ], [ %i.ab, %bb.f ], [ %i.w, %bb.d ]
  %.sroa.090.0.in = phi ptr [ %4, %bb.i ], [ %i.af, %bb.h ], [ %i.aa, %bb.f ], [ %3, %bb.d ]
  %.sroa.892.0.in.a = phi ptr [ %12, %bb.i ], [ %10, %bb.h ], [ %8, %bb.f ], [ %6, %bb.d ]
  %.sroa.1494.0.in = phi ptr [ %i.aj, %bb.i ], [ %3, %bb.h ], [ %4, %bb.f ], [ %i.v, %bb.d ]
  %.2 = phi float [ %i.ai, %bb.i ], [ %i.ae, %bb.h ], [ %i.z, %bb.f ], [ %.1.lcssa, %bb.d ]
  %.sroa.1494.0 = load i32, ptr %.sroa.1494.0.in, align 4, !tbaa !4 ; 2 uses
  %.sroa.892.0 = load i32, ptr %.sroa.892.0.in.a, align 4, !tbaa !10 ; 2 uses
  %.sroa.090.0 = load i32, ptr %.sroa.090.0.in, align 4, !tbaa !4 ; 2 uses
  %.sroa.1488.0 = load i32, ptr %.sroa.1488.0.in, align 4, !tbaa !4 ; 2 uses
  %.sroa.886.0 = load i32, ptr %.sroa.886.0.in.a, align 4, !tbaa !10 ; 2 uses
  %.sroa.084.0 = load i32, ptr %.sroa.084.0.in, align 4, !tbaa !4 ; 2 uses
  %i.al = fpext float %.2 to double               ; 5 uses
  %i.am = fsub double 0x3FF921FB54442D18, %i.al
end_hunk_2
begin_hunk_3_@Constrained:bb.a
  br label %bb.co

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.u = icmp eq i32 %2, 0                        ; 9 uses
  %. = select i1 %i.u, ptr %i.g, ptr %i.f         ; 2 uses
  %i.v = load ptr, ptr %., align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br label %bb.g
end_hunk_3
begin_hunk_4_@Constrained:bb.a

bb.p:                                             ; preds = %bb.g
  call void @Constrained(ptr noundef nonnull %.0269, ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3)
  br i1 %i.u, label %bb.q, label %.critedge301

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.0269, i64 64
end_hunk_4
begin_hunk_5_@Constrained:bb.a
  store i32 8388607, ptr %i.ap, align 4, !tbaa !8
  br label %bb.co

.critedge301:                                     ; preds = %bb.p
  %8 = getelementptr inbounds nuw i8, ptr %.0269, i64 72
  %.pre459 = load i32, ptr %8, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %.critedge301
  %i.aq = phi i32 [ %.pre459, %.critedge301 ], [ %i.am, %bb.q ]
  call void @InvScaleConstraint(ptr noundef %1, i32 noundef %i.aq, ptr noundef nonnull %5)
  br label %bb.co

end_hunk_5
begin_hunk_6_@Constrained:bb.a
  br i1 %or.cond5.i, label %bb.aq, label %CatConstrained.exit.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.fh = load ptr, ptr %., align 8, !tbaa !17
  call void @SetNeighbours(ptr noundef %i.fh, i32 noundef range(i32 0, 2) %.0266, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #7, !inline_history !22
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
end_hunk_6
