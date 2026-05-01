inline.NumInlined: 3
begin_hunk_0_@gx_path_translate:bb.a
  %i.b = load <4 x i64>, ptr %i.a, align 8, !tbaa !16
  %i.c = insertelement <4 x i64> poison, i64 %1, i64 0
  %i.d = insertelement <4 x i64> %i.c, i64 %2, i64 1
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.f = add nsw <4 x i64> %i.b, %i.e
  store <4 x i64> %i.f, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
end_hunk_0
begin_hunk_1_@gx_path_translate:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.028 = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %.not29 = icmp eq ptr %.028, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = insertelement <2 x i64> poison, i64 %1, i64 0
  %4 = insertelement <2 x i64> %3, i64 %2, i64 1  ; 2 uses
  %5 = insertelement <2 x i64> poison, i64 %1, i64 0
  %6 = insertelement <2 x i64> %5, i64 %2, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.030 = phi ptr [ %.0, %bb.c ], [ %.028, %.lr.ph.preheader ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27
  %cond = icmp eq i32 %i.o, 3
end_hunk_1
begin_hunk_2_@gx_path_translate:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 40 ; 2 uses
  %7 = load <2 x i64>, ptr %i.p, align 8, !tbaa !16
  %8 = add nsw <2 x i64> %7, %4
  store <2 x i64> %8, ptr %i.p, align 8, !tbaa !16
  %9 = getelementptr inbounds nuw i8, ptr %.030, i64 56 ; 2 uses
  %10 = load <2 x i64>, ptr %9, align 8, !tbaa !16
  %11 = add nsw <2 x i64> %10, %4
  store <2 x i64> %11, ptr %9, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.030, i64 24 ; 2 uses
  %12 = load <2 x i64>, ptr %i.q, align 8, !tbaa !16
  %13 = add nsw <2 x i64> %12, %6
  store <2 x i64> %13, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %.0 = load ptr, ptr %i.r, align 8, !tbaa !50    ; 2 uses
  %.not = icmp eq ptr %.0, null
end_hunk_2
