inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_v8dwt_interleave_h:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !230
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.d ; 11 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = icmp ugt i32 %3, 7                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = sub nsw i64 0, %i.d
end_hunk_0
begin_hunk_1_@opj_v8dwt_interleave_h:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !228
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0113128 = load i32, ptr %5, align 8, !tbaa !3 ; 7 uses
  %i.n = icmp eq i32 %3, 3                        ; 2 uses
  %i.o = icmp eq i32 %3, 4                        ; 2 uses
  %i.p = icmp eq i32 %3, 5                        ; 2 uses
  %i.q = icmp eq i32 %3, 6                        ; 2 uses
  %i.r = icmp eq i32 %3, 7                        ; 2 uses
  %.0113 = load i32, ptr %i.m, align 8, !tbaa !3  ; 7 uses
  %.0114 = load i32, ptr %4, align 4, !tbaa !3    ; 8 uses
  switch i32 %3, label %.split.split.preheader [
    i32 1, label %.preheader122.us.us.preheader
    i32 2, label %.preheader122.us150.us.preheader
end_hunk_1
begin_hunk_2_@opj_v8dwt_interleave_h:bb.a

.loopexit123.us.us:                               ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %.preheader122.us.us.preheader
  %i.aj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l ; 5 uses
  %.0114.us.us.1 = load i32, ptr %6, align 4, !tbaa !3 ; 2 uses
  %i.ak = icmp ult i32 %.0114.us.us.1, %.0113
  br i1 %i.ak, label %.lr.ph.us.us.preheader.1, label %.split138.us

end_hunk_2
begin_hunk_3_@opj_v8dwt_interleave_h:bb.a

.loopexit123.us151.us:                            ; preds = %.lr.ph.us152.us.prol.loopexit, %.lr.ph.us152.us, %.preheader122.us150.us.preheader
  %i.cx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l ; 6 uses
  %.0114.us144.us.1 = load i32, ptr %6, align 4, !tbaa !3 ; 3 uses
  %i.cy = icmp ult i32 %.0114.us144.us.1, %.0113
  br i1 %i.cy, label %.lr.ph.us152.us.preheader.1, label %.split138.us

end_hunk_3
begin_hunk_4_@opj_v8dwt_interleave_h:bb.a

.loopexit:                                        ; preds = %bb.g, %.lr.ph127, %.preheader122, %.preheader
  %i.il = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l ; 17 uses
  %.0114.1 = load i32, ptr %6, align 4, !tbaa !3  ; 3 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = and i64 %i.im, 15
  %i.io = icmp eq i64 %i.in, 0
end_hunk_4
