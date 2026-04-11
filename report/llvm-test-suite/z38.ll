inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0_@fprintf
; Function Attrs: nounwind uwtable
define dso_local ptr @MapSmallCaps(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 15 uses
  %2 = alloca %struct.STYLE, align 4              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
end_hunk_0
begin_hunk_1_@MapSmallCaps:bb.a
  br i1 %.not297322, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
end_hunk_1
begin_hunk_2_@MapSmallCaps:bb.a
  %.0329 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bu ]
  %.0248328 = phi i32 [ undef, %.lr.ph ], [ %.1249, %bb.bu ] ; 10 uses
  %.0250327 = phi i32 [ undef, %.lr.ph ], [ %.1251, %bb.bu ] ; 10 uses
  %.0252326 = phi ptr [ %i.a, %.lr.ph ], [ %.1253.a, %bb.bu ] ; 15 uses
  %.0254325 = phi ptr [ %i.aj, %.lr.ph ], [ %i.sx, %bb.bu ] ; 5 uses
  %.0256324 = phi ptr [ undef, %.lr.ph ], [ %.1257, %bb.bu ] ; 18 uses
  %.0258323 = phi ptr [ undef, %.lr.ph ], [ %.1259, %bb.bu ] ; 8 uses
end_hunk_2
begin_hunk_3_@MapSmallCaps:bb.a
  ]

bb.m:                                             ; preds = %bb.l
  %4 = getelementptr inbounds nuw i8, ptr %.0252326, i64 1 ; 2 uses
  br i1 %.not304, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@MapSmallCaps:bb.a
  br label %bb.bu

bb.ah:                                            ; preds = %bb.p
  %5 = getelementptr inbounds nuw i8, ptr %.0252326, i64 1
  store i8 %i.ax, ptr %.0252326, align 1, !tbaa !16
  br label %bb.bu

end_hunk_4
begin_hunk_5_@MapSmallCaps:bb.a
  br i1 %.not304, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %6 = getelementptr inbounds nuw i8, ptr %.0252326, i64 1
  store i8 %i.ba, ptr %.0252326, align 1, !tbaa !16
  br label %bb.bu

end_hunk_5
begin_hunk_6_@MapSmallCaps:bb.a
  br label %bb.bu

bb.bj:                                            ; preds = %bb.bb
  %7 = getelementptr inbounds nuw i8, ptr %.0252326, i64 1
  store i8 %i.ax, ptr %.0252326, align 1, !tbaa !16
  br label %bb.bu

end_hunk_6
begin_hunk_7_@MapSmallCaps:bb.a
  br i1 %.not304, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %8 = getelementptr inbounds nuw i8, ptr %.0252326, i64 1
  store i8 %i.ba, ptr %.0252326, align 1, !tbaa !16
  br label %bb.bu

end_hunk_7
begin_hunk_8_@MapSmallCaps:bb.a
bb.bu:                                            ; preds = %bb.o, %bb.n, %bb.ah, %bb.ag, %bb.ba, %bb.aj, %bb.bj, %bb.bi, %bb.bt, %bb.bl
  %.1259 = phi ptr [ %.0258323, %bb.bt ], [ %.0258323, %bb.n ], [ %.0258323, %bb.o ], [ %i.eu, %bb.ag ], [ %.0258323, %bb.ah ], [ %.0258323, %bb.aj ], [ %i.kf, %bb.ba ], [ %.0258323, %bb.bi ], [ %.0258323, %bb.bj ], [ %.0258323, %bb.bl ] ; 17 uses
  %.1257 = phi ptr [ %.0256324, %bb.bt ], [ %.0256324, %bb.n ], [ %.0256324, %bb.o ], [ %i.ft, %bb.ag ], [ %.0256324, %bb.ah ], [ %.0256324, %bb.aj ], [ %i.le, %bb.ba ], [ %.0256324, %bb.bi ], [ %.0256324, %bb.bj ], [ %.0256324, %bb.bl ] ; 9 uses
  %.1253.a = phi ptr [ %3, %bb.bt ], [ %4, %bb.n ], [ %4, %bb.o ], [ %3, %bb.ag ], [ %5, %bb.ah ], [ %6, %bb.aj ], [ %3, %bb.ba ], [ %3, %bb.bi ], [ %7, %bb.bj ], [ %8, %bb.bl ] ; 4 uses
  %.1251 = phi i32 [ %.0250327, %bb.bt ], [ %i.ca, %bb.n ], [ %.0250327, %bb.o ], [ %i.df, %bb.ag ], [ %.0250327, %bb.ah ], [ %.0250327, %bb.aj ], [ %.0250327, %bb.ba ], [ %.0250327, %bb.bi ], [ %.0250327, %bb.bj ], [ %.0250327, %bb.bl ] ; 2 uses
  %.1249 = phi i32 [ %.0248328, %bb.bt ], [ %i.cf, %bb.n ], [ %.0248328, %bb.o ], [ %i.dk, %bb.ag ], [ %.0248328, %bb.ah ], [ %.0248328, %bb.aj ], [ %.0248328, %bb.ba ], [ %.0248328, %bb.bi ], [ %.0248328, %bb.bj ], [ %.0248328, %bb.bl ] ; 3 uses
  %.1 = phi i32 [ 3, %bb.bt ], [ 2, %bb.n ], [ 1, %bb.o ], [ 4, %bb.ag ], [ 1, %bb.ah ], [ 2, %bb.aj ], [ 3, %bb.ba ], [ 4, %bb.bi ], [ 3, %bb.bj ], [ 4, %bb.bl ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.0254325, i64 1 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !16  ; 2 uses
  %.not297 = icmp eq i8 %i.sy, 0
end_hunk_8
begin_hunk_9_@MapSmallCaps:bb.a
  ]

bb.bv:                                            ; preds = %._crit_edge
  store i8 0, ptr %.1253.a, align 1, !tbaa !16
  %i.ta = load i8, ptr %i.b, align 8, !tbaa !16
  %i.tb = zext i8 %i.ta to i32
  %i.tc = call ptr @MakeWord(i32 noundef %i.tb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
end_hunk_9
begin_hunk_10_@MapSmallCaps:bb.a
bb.by:                                            ; preds = %._crit_edge
  %i.un = load i32, ptr %i.f, align 8
  %i.uo = and i32 %i.un, 4095
  store i8 0, ptr %.1253.a, align 1, !tbaa !16
  %i.up = load i8, ptr %i.b, align 8, !tbaa !16
  %i.uq = zext i8 %i.up to i32
  %i.ur = call ptr @MakeWord(i32 noundef %i.uq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 5 uses
end_hunk_10
begin_hunk_11_@MapSmallCaps:bb.a
  br label %.loopexit.sink.split

bb.ch:                                            ; preds = %._crit_edge
  store i8 0, ptr %.1253.a, align 1, !tbaa !16
  %i.xg = load i8, ptr %i.b, align 8, !tbaa !16
  %i.xh = zext i8 %i.xg to i32
  %i.xi = call ptr @MakeWord(i32 noundef %i.xh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
end_hunk_11
