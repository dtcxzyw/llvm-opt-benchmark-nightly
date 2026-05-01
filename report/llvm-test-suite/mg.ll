inline.NumInlined: 7
begin_hunk_0_@create_domain:bb.a
  %.pre.pre.pre = load ptr, ptr %i.ai, align 8, !tbaa !54
  %wide.trip.count984 = zext nneg i32 %5 to i64
  %wide.trip.count979 = zext nneg i32 %4 to i64
  %15 = insertelement <4 x i32> poison, i32 %1, i64 0
  %16 = insertelement <4 x i32> %15, i32 %14, i64 1
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.preheader631.us.us

.preheader631.us.us:                              ; preds = %.preheader631.us.us.preheader, %._crit_edge654.split.us.us.us
end_hunk_0
begin_hunk_1_@create_domain:bb.a
  %indvars978 = trunc i64 %indvars.iv976 to i32   ; 14 uses
  %i.ds = add i32 %reass.mul625.us.us.us, %indvars978
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [256 x i8], ptr %i.dr, i64 %i.dt ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  store i32 %13, ptr %i.dv, align 4, !tbaa !12
  %i.dw = trunc i64 %indvars.iv976 to i32
  %i.dx = add i32 %i.cw, %i.dw
  %i.dy = mul i32 %i.dx, %1                       ; 2 uses
  store i32 %i.dy, ptr %i.du, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 %i.dk, ptr %i.dz, align 4, !tbaa !14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dh, ptr %i.ea, align 8, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store <4 x i32> %17, ptr %i.eb, align 4, !tbaa !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 248 ; 2 uses
  %i.ed = tail call i32 @posix_memalign(ptr noundef nonnull %i.ec, i64 noundef 64, i64 noundef %i.da) #13 ; 0 uses
  br i1 %i.bj, label %.lr.ph.i.us.us.us, label %create_subdomain.exit.us.us.us
end_hunk_1
