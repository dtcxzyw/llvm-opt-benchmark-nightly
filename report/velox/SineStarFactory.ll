inline.NumInlined: 92
inline.NumDeleted: 77
begin_hunk_0_@_ZNK4geos4geom4util15SineStarFactory14createSineStarEv:bb.a
  %i.s = load double, ptr %i.r, align 8, !tbaa !20
  %i.t = fadd double %i.s, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21   ; 3 uses
  %i.w = add i32 %i.v, 1                          ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
end_hunk_0
begin_hunk_1_@_ZNK4geos4geom4util15SineStarFactory14createSineStarEv:bb.a

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.ax, align 8, !tbaa !31
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.thread, %.loopexit
  %i.ay = phi ptr [ null, %.loopexit.thread ], [ %i.z, %.loopexit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  br label %bb.c
end_hunk_1
begin_hunk_2_@_ZNK4geos4geom4util15SineStarFactory14createSineStarEv:bb.a

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.bl = phi i32 [ %i.v, %.lr.ph ], [ %i.cl, %bb.d ]
  %indvars68 = trunc i64 %indvars.iv to i32
  %i.bm = uitofp i32 %indvars68 to double         ; 2 uses
  %i.bn = uitofp i32 %i.bl to double
end_hunk_2
