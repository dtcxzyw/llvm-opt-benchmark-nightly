inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@main:bb.a
  %i.h = call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.58) #39 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %.01595 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.01496 = add nsw i32 %0, -1                    ; 2 uses
  %.not1897 = icmp eq i32 %.01496, 0
  %.pre98 = load ptr, ptr %.01595, align 8, !tbaa !8 ; 2 uses
  br i1 %.not1897, label %.critedge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %.015 = getelementptr inbounds nuw i8, ptr %.01599, i64 8 ; 2 uses
  %.014 = add nsw i32 %.014100, -1                ; 2 uses
  %.not18 = icmp eq i32 %.014, 0
  %.pre = load ptr, ptr %.015, align 8, !tbaa !8  ; 2 uses
  br i1 %.not18, label %.critedge, label %.lr.ph, !llvm.loop !299

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.pre101 = phi ptr [ %.pre, %bb.f ], [ %.pre98, %bb.e ] ; 2 uses
  %.014100 = phi i32 [ %.014, %bb.f ], [ %.01496, %bb.e ]
  %.01599 = phi ptr [ %.015, %bb.f ], [ %.01595, %bb.e ]
  %i.j = load i8, ptr %.pre101, align 1, !tbaa !11
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.f, label %..critedge_crit_edge102, !llvm.loop !299

..critedge_crit_edge102:                          ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !299

.critedge:                                        ; preds = %bb.f, %..critedge_crit_edge102, %bb.e
  %.pre.lcssa = phi ptr [ %.pre98, %bb.e ], [ %.pre101, %..critedge_crit_edge102 ], [ %.pre, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.pre.lcssa)
  %i.l = load i32, ptr %2, align 8, !tbaa !272    ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = sext i1 %i.m to i32
end_hunk_0
