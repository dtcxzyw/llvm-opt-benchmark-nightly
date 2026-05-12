inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_read_tlm:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
end_hunk_0
begin_hunk_1_@opj_j2k_read_tlm:bb.a
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.n
  %i.aq = phi i32 [ %i.bb, %bb.n ], [ %.pre, %.lr.ph.split.us.preheader ] ; 3 uses
  %.06076.us = phi ptr [ %i.au, %bb.n ], [ %i.l, %.lr.ph.split.us.preheader ] ; 2 uses
  %.06375.us = phi i32 [ %i.bc, %bb.n ], [ 0, %.lr.ph.split.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
end_hunk_1
begin_hunk_2_@opj_j2k_read_tlm:bb.a
bb.n:                                             ; preds = %.lr.ph.split.us
  call void @opj_read_bytes_LE(ptr noundef nonnull %.06076.us, ptr noundef nonnull %i.d, i32 noundef %i.t) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.06076.us, i64 %i.ap
  %4 = load i32, ptr %i.c, align 4, !tbaa !3
  %i.av = trunc i32 %4 to i16
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !411 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ax ; 2 uses
end_hunk_2
