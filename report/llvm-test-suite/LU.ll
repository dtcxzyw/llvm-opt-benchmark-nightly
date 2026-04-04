begin_hunk_0
  %i.g = sext i32 %i.c to i64
  %i.h = zext nneg i32 %i.d to i64
  %wide.trip.count128 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext i32 %0 to i64           ; 5 uses
  %wide.trip.count113 = zext i32 %0 to i64
  %wide.trip.count123 = zext i32 %0 to i64
  %wide.trip.count118 = zext i32 %1 to i64        ; 5 uses
  %i.i = shl nuw nsw i64 %wide.trip.count118, 3   ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -2
  %i.k = add nsw i64 %wide.trip.count, -2
  %i.l = add nsw i64 %wide.trip.count118, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph102, %.loopexit
  %indvars.iv125 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next126, %.loopexit ] ; 25 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph102 ], [ %indvars.iv.next, %.loopexit ] ; 12 uses
  %4 = xor i64 %indvars.iv125, -1
  %5 = add nsw i64 %4, %wide.trip.count
  %i.m = sub i64 %i.k, %indvars.iv125
  %i.n = xor i64 %indvars.iv125, -1
  %i.o = add nsw i64 %i.n, %wide.trip.count118    ; 3 uses
end_hunk_0
begin_hunk_1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv125
  %i.w = load double, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call double @llvm.fabs.f64(double %i.w) ; 3 uses
  %6 = sub nsw i64 %indvars.iv125, %wide.trip.count
  %i.y = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
end_hunk_1
begin_hunk_2
  %indvars.iv107.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next108.prol, %.lr.ph.prol ]
  %.07690.unr = phi i32 [ %i.u, %.lr.ph.preheader ], [ %.177.prol, %.lr.ph.prol ]
  %.08188.unr = phi double [ %i.x, %.lr.ph.preheader ], [ %.182.prol, %.lr.ph.prol ]
  %i.ag = icmp eq i64 %i.j, %indvars.iv125
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
end_hunk_2
begin_hunk_3
  br i1 %i.t, label %.lr.ph93.preheader, label %.loopexit

.lr.ph93.preheader:                               ; preds = %bb.f
  %xtraiter137 = and i64 %5, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %.lr.ph93.prol.loopexit, label %.lr.ph93.prol

end_hunk_3
