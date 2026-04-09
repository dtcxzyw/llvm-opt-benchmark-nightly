inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@main:bb.a
  %i.h = call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.58) #39 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %3 = add i32 %0, -1
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = getelementptr i8, ptr %1, i64 %5
  %.01595 = getelementptr i8, ptr %6, i64 8
  %.01496 = add nsw i32 %0, -1                    ; 2 uses
  %.not1897 = icmp eq i32 %.01496, 0
  br i1 %.not1897, label %..critedge_crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %.014 = add nsw i32 %.01498, -1                 ; 2 uses
  %.not18 = icmp eq i32 %.014, 0
  br i1 %.not18, label %..critedge_crit_edge, label %.lr.ph, !llvm.loop !299

..critedge_crit_edge:                             ; preds = %bb.f, %bb.e
  %.pre = load ptr, ptr %.01595, align 8, !tbaa !8
  br label %.critedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.01498 = phi i32 [ %.014, %bb.f ], [ %.01496, %bb.e ]
  %.pre101 = phi ptr [ %.015, %bb.f ], [ %1, %bb.e ]
  %.015 = getelementptr inbounds nuw i8, ptr %.pre101, i64 8 ; 2 uses
  %7 = load ptr, ptr %.015, align 8, !tbaa !8     ; 2 uses
  %i.j = load i8, ptr %7, align 1, !tbaa !11
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.f, label %.critedge, !llvm.loop !299

.critedge:                                        ; preds = %.lr.ph, %..critedge_crit_edge
  %8 = phi ptr [ %.pre, %..critedge_crit_edge ], [ %7, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %8)
  %i.l = load i32, ptr %2, align 8, !tbaa !272    ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = sext i1 %i.m to i32
end_hunk_0
