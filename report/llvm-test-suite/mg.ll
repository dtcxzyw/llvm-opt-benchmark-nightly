inline.NumInlined: 7
begin_hunk_0_@create_domain:bb.a
  %.pre.pre.pre = load ptr, ptr %i.ai, align 8, !tbaa !54
  %wide.trip.count984 = zext nneg i32 %5 to i64
  %wide.trip.count979 = zext nneg i32 %4 to i64
  br label %.preheader631.us.us

.preheader631.us.us:                              ; preds = %.preheader631.us.us.preheader, %._crit_edge654.split.us.us.us
end_hunk_0
begin_hunk_1_@create_domain:bb.a
  %indvars978 = trunc i64 %indvars.iv976 to i32   ; 14 uses
  %i.ds = add i32 %reass.mul625.us.us.us, %indvars978
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [256 x i8], ptr %i.dr, i64 %i.dt ; 9 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i32 %14, ptr %15, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  store i32 %13, ptr %i.dv, align 4, !tbaa !12
  %i.dw = trunc i64 %indvars.iv976 to i32
  %i.dx = add i32 %i.cw, %i.dw
  %i.dy = mul i32 %i.dx, %1                       ; 2 uses
  store i32 %i.dy, ptr %i.du, align 8, !tbaa !13
  %16 = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 %i.dk, ptr %16, align 4, !tbaa !14
  %17 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dh, ptr %17, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %1, ptr %i.dz, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i32 %1, ptr %i.ea, align 8, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  store i32 %1, ptr %i.eb, align 4, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 248 ; 2 uses
  %i.ed = tail call i32 @posix_memalign(ptr noundef nonnull %i.ec, i64 noundef 64, i64 noundef %i.da) #13 ; 0 uses
  br i1 %i.bj, label %.lr.ph.i.us.us.us, label %create_subdomain.exit.us.us.us
end_hunk_1
