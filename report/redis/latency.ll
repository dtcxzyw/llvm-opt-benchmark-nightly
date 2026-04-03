begin_hunk_0
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  %i.b = tail call ptr @dictFetchValue(ptr noundef %i.a, ptr noundef %0) #15 ; 3 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %.preheader.a, label %2

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !47
  br label %.preheader.a

.preheader.a:                                     ; preds = %bb.a, %2
  %5 = phi i32 [ %4, %2 ], [ 0, %bb.a ]
  store i32 %5, ptr %1, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
end_hunk_0
begin_hunk_1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  br i1 %.not, label %bb.u, label %.preheader

.preheader:                                       ; preds = %.preheader.a
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.k
  %i.i = phi i64 [ 0, %.preheader ], [ %i.ad, %bb.k ] ; 4 uses
  %i.j = phi i32 [ 0, %.preheader ], [ %i.ae, %bb.k ] ; 3 uses
  %i.k = phi i32 [ 0, %.preheader ], [ %i.af, %bb.k ] ; 3 uses
  %i.l = phi i32 [ 0, %.preheader ], [ %i.ag, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.06581 = phi i64 [ 0, %.preheader ], [ %.1, %bb.k ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.c
end_hunk_1
begin_hunk_2
bb.n:                                             ; preds = %bb.r, %.preheader98
  %indvars.iv85 = phi i64 [ 0, %.preheader98 ], [ %indvars.iv.next86.1, %bb.r ] ; 3 uses
  %.283 = phi i64 [ 0, %.preheader98 ], [ %.3.1, %bb.r ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv85 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %bb.o
end_hunk_2
begin_hunk_3

bb.p:                                             ; preds = %bb.n, %bb.o
  %.3 = phi i64 [ %i.ax, %bb.o ], [ %.283, %bb.n ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv85 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50
  %i.bb = icmp eq i32 %i.ba, 0
end_hunk_3
begin_hunk_4
  store i32 %i.bm, ptr %i.f, align 8, !tbaa !64
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %.preheader.a
  ret void
}

end_hunk_4
