begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @FT_Outline_Reverse(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

end_hunk_0
begin_hunk_1
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !138
  %i.k = sext i16 %i.j to i64                     ; 4 uses
  %i.l = icmp slt i64 %i.f, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge44

.lr.ph.preheader:                                 ; preds = %bb.b
  %1 = load ptr, ptr %i.d, align 8, !tbaa !159    ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %1, i64 %i.k
  %i.n = getelementptr inbounds [16 x i8], ptr %1, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03439 = phi ptr [ %i.p, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.03538 = phi ptr [ %i.o, %.lr.ph ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.03538, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03538, ptr noundef nonnull align 8 dereferenceable(16) %.03439, i64 16, i1 false), !tbaa.struct !286
  store <2 x i64> %.sroa.0.0.copyload, ptr %.03439, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.03538, i64 16 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.03439, i64 -16 ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %.lr.ph43.preheader, !llvm.loop !489

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.k
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.f
end_hunk_1
begin_hunk_2
  %i.y = icmp ult ptr %i.w, %i.x
  br i1 %i.y, label %.lr.ph43, label %._crit_edge44, !llvm.loop !490

._crit_edge44:                                    ; preds = %.lr.ph43, %bb.b
  %i.z = add nuw nsw i16 %.046, 1                 ; 2 uses
  %i.aa = load i16, ptr %0, align 8, !tbaa !135
  %i.ab = icmp slt i16 %i.z, %i.aa
end_hunk_2
