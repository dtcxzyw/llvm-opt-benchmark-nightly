inline.NumInlined: 3
begin_hunk_0_@gx_path_translate:bb.a
  %i.b = load <4 x i64>, ptr %i.a, align 8, !tbaa !16
  %i.c = insertelement <4 x i64> poison, i64 %1, i64 0
  %i.d = insertelement <4 x i64> %i.c, i64 %2, i64 1
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.f = add nsw <4 x i64> %i.b, %i.e
  store <4 x i64> %i.f, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
end_hunk_0
begin_hunk_1_@gx_path_translate:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.028 = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %.not29 = icmp eq ptr %.028, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.030 = phi ptr [ %.0, %bb.c ], [ %.028, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27
  %cond = icmp eq i32 %i.o, 3
end_hunk_1
begin_hunk_2_@gx_path_translate:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 40 ; 2 uses
  %3 = load <4 x i64>, ptr %i.p, align 8, !tbaa !16
  %4 = add nsw <4 x i64> %3, %i.e
  store <4 x i64> %4, ptr %i.p, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.030, i64 24 ; 2 uses
  %5 = load i64, ptr %i.q, align 8, !tbaa !23
  %6 = add nsw i64 %5, %1
  store i64 %6, ptr %i.q, align 8, !tbaa !23
  %7 = getelementptr inbounds nuw i8, ptr %.030, i64 32 ; 2 uses
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %9 = add nsw i64 %8, %2
  store i64 %9, ptr %7, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %.0 = load ptr, ptr %i.r, align 8, !tbaa !50    ; 2 uses
  %.not = icmp eq ptr %.0, null
end_hunk_2
