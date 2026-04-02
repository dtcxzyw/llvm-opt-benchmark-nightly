begin_hunk_0
bb.m:                                             ; preds = %bb.a
  %i.z = sext i32 %i.a to i64
  %i.aa = tail call i64 @get_c_long(ptr noundef nonnull %0) #33
  %i.ab = srem i64 %i.z, %i.aa                    ; 3 uses
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = load i64, ptr @inums_dim, align 8, !tbaa !12 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  %1 = icmp ult i64 %i.ab, %i.ad
  %or.cond = select i1 %i.ae, i1 %1, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @inums, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ab
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  br label %flocons.exit

bb.o:                                             ; preds = %bb.m
  %i.ai = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %bb.s
end_hunk_0
