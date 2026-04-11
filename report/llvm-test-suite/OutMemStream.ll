inline.NumInlined: 36
inline.NumDeleted: 21
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13COutMemStream5WriteEPKvjPj(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !35, !range !39, !noundef !40
end_hunk_0
begin_hunk_1_@_ZN13COutMemStream5WriteEPKvjPj:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN13COutMemStream5WriteEPKvjPj:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not45113 = icmp eq i32 %2, 0
  br i1 %.not45113, label %.loopexit.split, label %.outer.split.preheader.preheader

.outer.split.preheader.preheader:                 ; preds = %bb.e
  %4 = insertelement <2 x ptr> poison, ptr %i.o, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.p, i64 1
  br label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %.outer.split.preheader.preheader, %.outer
  %.033.ph115 = phi ptr [ %i.an, %.outer ], [ %1, %.outer.split.preheader.preheader ] ; 3 uses
  %.036.ph114 = phi i32 [ %i.ao, %.outer ], [ %2, %.outer.split.preheader.preheader ] ; 3 uses
  %.pre = load i32, ptr %i.n, align 4, !tbaa !43
  br label %.outer.split

end_hunk_2
begin_hunk_3_@_ZN13COutMemStream5WriteEPKvjPj:bb.a

bb.k:                                             ; preds = %.outer.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store <2 x ptr> %5, ptr %i.a, align 16, !tbaa !49
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store ptr %i.bc, ptr %i.q, align 16, !tbaa !49
end_hunk_3
