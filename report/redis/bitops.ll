inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@bitfieldGeneric:bb.a
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [9 x i8], align 1                 ; 20 uses
  %i.g = alloca [21 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
end_hunk_0
begin_hunk_1_@bitfieldGeneric:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next, %bb.bu ] ; 2 uses
  %.0196435 = phi i32 [ 0, %.lr.ph438 ], [ %.3, %bb.bu ] ; 5 uses
  %.0332434 = phi i64 [ undef, %.lr.ph438 ], [ %.2334, %bb.bu ] ; 10 uses
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %.0203.lcssa483, i64 %indvars.iv ; 19 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !158 ; 3 uses
  %.off = add i32 %i.dl, -1
end_hunk_1
begin_hunk_2_@bitfieldGeneric:bb.a
.critedge.i:                                      ; preds = %bb.bi
  %i.le = and i64 %i.lb, 240
  %i.lf = icmp eq i64 %i.le, 16
  %i.lg = load ptr, ptr %i.cz, align 8, !tbaa !47 ; 11 uses
  br i1 %i.lf, label %bb.bk, label %.critedge24.i

bb.bk:                                            ; preds = %.critedge.i
end_hunk_2
begin_hunk_3_@bitfieldGeneric:bb.a
  %i.lk = getelementptr i8, ptr %i.lg, i64 -1
  %.val.i.i = load i8, ptr %i.lk, align 1, !tbaa !13 ; 2 uses
  %i.ll = and i8 %.val.i.i, 7
  switch i8 %i.ll, label %.lr.ph431.split.preheader.thread [
    i8 0, label %bb.bl
    i8 1, label %bb.bm
    i8 2, label %bb.bn
end_hunk_3
begin_hunk_4_@bitfieldGeneric:bb.a
    i8 4, label %bb.bp
  ]

.lr.ph431.split.preheader.thread:                 ; preds = %.critedge24.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %2 = load i64, ptr %i.dj, align 8, !tbaa !155
  br label %._crit_edge432

bb.bl:                                            ; preds = %.critedge24.i
  %i.lm = lshr i8 %.val.i.i, 3
  %i.ln = zext nneg i8 %i.lm to i64
end_hunk_4
begin_hunk_5_@bitfieldGeneric:bb.a
  %i.lz = load i64, ptr %i.dj, align 8, !tbaa !155
  br label %._crit_edge432

.lr.ph431.split.preheader:                        ; preds = %bb.bk, %bb.bp, %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %.0329.ph = phi i64 [ %i.lw, %bb.bo ], [ %i.lt, %bb.bn ], [ %i.lq, %bb.bm ], [ %i.ln, %bb.bl ], [ %i.ly, %bb.bp ], [ %i.lj, %bb.bk ] ; 9 uses
  %.0190.ph = phi ptr [ %i.lg, %bb.bo ], [ %i.lg, %bb.bn ], [ %i.lg, %bb.bm ], [ %i.lg, %bb.bl ], [ %i.lg, %bb.bp ], [ %i.g, %bb.bk ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.f, i8 0, i64 9, i1 false)
  %i.ma = load i64, ptr %i.dj, align 8, !tbaa !155 ; 11 uses
  %i.mb = lshr i64 %i.ma, 3                       ; 10 uses
  %.not231 = icmp ult i64 %i.mb, %.0329.ph
  br i1 %.not231, label %.lr.ph431.split.1, label %._crit_edge432

.lr.ph431.split.1:                                ; preds = %.lr.ph431.split.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !13
  store i8 %i.md, ptr %i.f, align 1, !tbaa !13
  %3 = add nuw nsw i64 %i.mb, 1                   ; 2 uses
  %.not231.1 = icmp ult i64 %3, %.0329.ph
  br i1 %.not231.1, label %.lr.ph431.split.2, label %._crit_edge432

.lr.ph431.split.2:                                ; preds = %.lr.ph431.split.1
  %i.me = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %3
  %4 = load i8, ptr %i.me, align 1, !tbaa !13
  store i8 %4, ptr %i.db, align 1, !tbaa !13
  %5 = add nuw nsw i64 %i.mb, 2                   ; 2 uses
  %.not231.2 = icmp ult i64 %5, %.0329.ph
  br i1 %.not231.2, label %.lr.ph431.split.3, label %._crit_edge432

.lr.ph431.split.3:                                ; preds = %.lr.ph431.split.2
  %i.mf = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %5
  %6 = load i8, ptr %i.mf, align 1, !tbaa !13
  store i8 %6, ptr %i.dc, align 1, !tbaa !13
  %7 = add nuw nsw i64 %i.mb, 3                   ; 2 uses
  %.not231.3 = icmp ult i64 %7, %.0329.ph
  br i1 %.not231.3, label %.lr.ph431.split.4, label %._crit_edge432

.lr.ph431.split.4:                                ; preds = %.lr.ph431.split.3
  %i.mg = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %7
  %8 = load i8, ptr %i.mg, align 1, !tbaa !13
  store i8 %8, ptr %i.dd, align 1, !tbaa !13
  %9 = add nuw nsw i64 %i.mb, 4                   ; 2 uses
  %.not231.4 = icmp ult i64 %9, %.0329.ph
  br i1 %.not231.4, label %.lr.ph431.split.5, label %._crit_edge432

.lr.ph431.split.5:                                ; preds = %.lr.ph431.split.4
  %i.mh = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %9
  %10 = load i8, ptr %i.mh, align 1, !tbaa !13
  store i8 %10, ptr %i.de, align 1, !tbaa !13
  %11 = add nuw nsw i64 %i.mb, 5                  ; 2 uses
  %.not231.5 = icmp ult i64 %11, %.0329.ph
  br i1 %.not231.5, label %.lr.ph431.split.6, label %._crit_edge432

.lr.ph431.split.6:                                ; preds = %.lr.ph431.split.5
  %i.mi = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %11
  %12 = load i8, ptr %i.mi, align 1, !tbaa !13
  store i8 %12, ptr %i.df, align 1, !tbaa !13
  %13 = add nuw nsw i64 %i.mb, 6                  ; 2 uses
  %.not231.6 = icmp ult i64 %13, %.0329.ph
  br i1 %.not231.6, label %.lr.ph431.split.7, label %._crit_edge432

.lr.ph431.split.7:                                ; preds = %.lr.ph431.split.6
  %i.mj = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %13
  %14 = load i8, ptr %i.mj, align 1, !tbaa !13
  store i8 %14, ptr %i.dg, align 1, !tbaa !13
  %15 = add nuw nsw i64 %i.mb, 7                  ; 2 uses
  %.not231.7 = icmp ult i64 %15, %.0329.ph
  br i1 %.not231.7, label %.lr.ph431.split.8, label %._crit_edge432

.lr.ph431.split.8:                                ; preds = %.lr.ph431.split.7
  %i.mk = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %15
  %16 = load i8, ptr %i.mk, align 1, !tbaa !13
  store i8 %16, ptr %i.dh, align 1, !tbaa !13
  %17 = add nuw nsw i64 %i.mb, 8                  ; 2 uses
  %.not231.8 = icmp ult i64 %17, %.0329.ph
  br i1 %.not231.8, label %bb.bq, label %._crit_edge432

bb.bq:                                            ; preds = %.lr.ph431.split.8
  %i.ml = getelementptr inbounds nuw i8, ptr %.0190.ph, i64 %17
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !13
  store i8 %i.mm, ptr %i.di, align 1, !tbaa !13
  br label %._crit_edge432

._crit_edge432:                                   ; preds = %.lr.ph431.split.preheader, %.lr.ph431.split.1, %.lr.ph431.split.2, %.lr.ph431.split.3, %.lr.ph431.split.4, %.lr.ph431.split.5, %.lr.ph431.split.6, %.lr.ph431.split.7, %.lr.ph431.split.8, %bb.bq, %.lr.ph431.split.preheader.thread, %getObjectReadOnlyString.exit
  %18 = phi i64 [ %i.lz, %getObjectReadOnlyString.exit ], [ %2, %.lr.ph431.split.preheader.thread ], [ %i.ma, %bb.bq ], [ %i.ma, %.lr.ph431.split.8 ], [ %i.ma, %.lr.ph431.split.7 ], [ %i.ma, %.lr.ph431.split.6 ], [ %i.ma, %.lr.ph431.split.5 ], [ %i.ma, %.lr.ph431.split.4 ], [ %i.ma, %.lr.ph431.split.3 ], [ %i.ma, %.lr.ph431.split.2 ], [ %i.ma, %.lr.ph431.split.1 ], [ %i.ma, %.lr.ph431.split.preheader ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !161
  %.not232 = icmp eq i32 %i.mo, 0
end_hunk_5
begin_hunk_6_@llvm.smin.i64
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_6
