begin_hunk_0
; Function Attrs: nounwind uwtable
define i32 @FT_Stroker_EndSubPath(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.y, label %bb.b
end_hunk_0
begin_hunk_1
.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i59
  %.04958.i = phi ptr [ %.049.i, %.lr.ph.i60 ], [ %.04956.i, %.lr.ph.preheader.i59 ] ; 3 uses
  %.04857.i = phi ptr [ %.048.i, %.lr.ph.i60 ], [ %.04855.i, %.lr.ph.preheader.i59 ] ; 3 uses
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %.04958.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.04958.i, ptr noundef nonnull align 8 dereferenceable(16) %.04857.i, i64 16, i1 false), !tbaa.struct !45
  store <2 x i64> %.sroa.0.0.copyload.i, ptr %.04857.i, align 8
  %.048.i = getelementptr inbounds i8, ptr %.04857.i, i64 -16 ; 2 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.04958.i, i64 16 ; 2 uses
  %i.fi = icmp ult ptr %.049.i, %.048.i
end_hunk_1
