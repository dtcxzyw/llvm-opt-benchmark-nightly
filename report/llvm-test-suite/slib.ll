begin_hunk_0
bb.m:                                             ; preds = %bb.a
  %i.z = sext i32 %i.a to i64
  %i.aa = tail call i64 @get_c_long(ptr noundef nonnull %0) #33
  %i.ab = srem i64 %i.z, %i.aa                    ; 2 uses
  %i.ac = sitofp i64 %i.ab to double              ; 3 uses
  %i.ad = load i64, ptr @inums_dim, align 8, !tbaa !12 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %1, label %bb.o

1:                                                ; preds = %bb.m
  %2 = fptosi double %i.ac to i64                 ; 3 uses
  %3 = sitofp i64 %2 to double
  %4 = fcmp oeq double %i.ac, %3
  %5 = icmp sgt i64 %i.ab, -1
  %or.cond.i9 = and i1 %5, %4
  %6 = icmp sgt i64 %i.ad, %2
  %or.cond15.i10 = and i1 %6, %or.cond.i9
  br i1 %or.cond15.i10, label %bb.n, label %bb.o

bb.n:                                             ; preds = %1
  %i.af = load ptr, ptr @inums, align 8, !tbaa !16
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %2
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  br label %flocons.exit

bb.o:                                             ; preds = %1, %bb.m
  %i.ai = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %bb.s
end_hunk_0
