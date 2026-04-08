inline.NumInlined: 52
inline.NumDeleted: 4
begin_hunk_0_@getVerSubImageSixTap:bb.a
  br i1 %.not, label %.preheader231, label %.preheader238

.preheader238:                                    ; preds = %bb.a
  br i1 %i.v, label %.preheader238.split.us, label %.preheader236.thread

.preheader238.split.us:                           ; preds = %.preheader238
  %6 = load ptr, ptr @imgY_sub_tmp, align 8       ; 5 uses
  %i.w = load ptr, ptr @img, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 15520
  %i.y = load ptr, ptr %6, align 8, !tbaa !61     ; 4 uses
end_hunk_0
begin_hunk_1_@getVerSubImageSixTap:bb.a
  br i1 %exitcond318.not, label %.loopexit, label %scalar.ph535, !llvm.loop !103

.preheader236:                                    ; preds = %scalar.ph348, %middle.block363
  %i.xb = add i32 %i.b, 37                        ; 3 uses
  %7 = icmp sgt i32 %i.b, -35
  br i1 %7, label %.lr.ph244, label %.lr.ph248

.preheader236.thread:                             ; preds = %.preheader238
  %i.xc = add i32 %i.b, 37
  br label %.lr.ph248

.lr.ph244:                                        ; preds = %.preheader236
  %8 = load ptr, ptr @imgY_sub_tmp, align 8       ; 3 uses
  %i.xd = load ptr, ptr @img, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 15520
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !63 ; 2 uses
  %smax274 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %smax280 = tail call i32 @llvm.smax.i32(i32 %i.xb, i32 3)
  %wide.trip.count281 = zext nneg i32 %smax280 to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  %wide.trip.count275 = zext nneg i32 %smax274 to i64
  %min.iters.check367 = icmp slt i32 %i.f, 4
end_hunk_1
begin_hunk_2_@getVerSubImageSixTap:bb.a
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv277
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !29 ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 3 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv277 ; 4 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next278
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !61 ; 3 uses
  %i.xm = getelementptr i8, ptr %i.xj, i64 -8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !61 ; 2 uses
end_hunk_2
begin_hunk_3_@getVerSubImageSixTap:bb.a

..loopexit235_crit_edge.us:                       ; preds = %scalar.ph366, %middle.block382
  %exitcond282.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count281
  br i1 %exitcond282.not, label %.lr.ph248, label %.lr.ph.us245, !llvm.loop !106

.lr.ph248:                                        ; preds = %..loopexit235_crit_edge.us, %.preheader236.thread, %.preheader236
  %i.zn = phi i32 [ %i.xc, %.preheader236.thread ], [ %i.xb, %.preheader236 ], [ %i.xb, %..loopexit235_crit_edge.us ]
  %9 = load ptr, ptr @imgY_sub_tmp, align 8       ; 12 uses
  %i.zo = load ptr, ptr @img, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 15520 ; 3 uses
  %smax286 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 3 uses
end_hunk_3
begin_hunk_4_@getVerSubImageSixTap:bb.a
  %i.aab = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aaa)
  %i.aac = trunc nsw i64 %indvars.iv.next290.1 to i32
  %i.aad = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aac)
  %i.aae = getelementptr inbounds [8 x i8], ptr %9, i64 %indvars.iv.next290 ; 3 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !61 ; 2 uses
  %i.aag = sext i32 %i.aad to i64
  %i.aah = getelementptr inbounds [8 x i8], ptr %9, i64 %i.aag
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !61 ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.aae, i64 -8
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !61 ; 2 uses
  %i.aal = sext i32 %i.aab to i64
  %i.aam = getelementptr inbounds [8 x i8], ptr %9, i64 %i.aal
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !61 ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aae, i64 -16
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !61 ; 2 uses
  %i.aaq = sext i32 %i.zy to i64
  %i.aar = getelementptr inbounds [8 x i8], ptr %9, i64 %i.aaq
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !61 ; 2 uses
  %i.aat = load i32, ptr %i.zp, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count287.1 = zext nneg i32 %smax286 to i64
end_hunk_4
begin_hunk_5_@getVerSubImageSixTap:bb.a
  %i.acs = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.acr)
  %i.act = trunc nsw i64 %i.zz to i32
  %i.acu = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.act)
  %i.acv = getelementptr inbounds [8 x i8], ptr %9, i64 %indvars.iv.next290.1 ; 3 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !61 ; 2 uses
  %i.acx = sext i32 %i.acu to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %9, i64 %i.acx
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !61 ; 2 uses
  %i.ada = getelementptr i8, ptr %i.acv, i64 -8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !61 ; 2 uses
  %i.adc = sext i32 %i.acs to i64
  %i.add = getelementptr inbounds [8 x i8], ptr %9, i64 %i.adc
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !61 ; 2 uses
  %i.adf = getelementptr i8, ptr %i.acv, i64 -16
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !61 ; 2 uses
  %i.adh = sext i32 %i.acq to i64
  %i.adi = getelementptr inbounds [8 x i8], ptr %9, i64 %i.adh
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !61 ; 2 uses
  %i.adk = load i32, ptr %i.zp, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count287.2 = zext nneg i32 %smax286 to i64
end_hunk_5
begin_hunk_6_@getVerSubImageSixTap:bb.a
  %i.aff = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.afe)
  %i.afg = trunc nsw i64 %indvars.iv.next290 to i32
  %i.afh = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.afg)
  %i.afi = getelementptr inbounds [8 x i8], ptr %9, i64 %i.zq ; 3 uses
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !61 ; 2 uses
  %i.afk = sext i32 %i.afh to i64
  %i.afl = getelementptr inbounds [8 x i8], ptr %9, i64 %i.afk
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !61 ; 2 uses
  %i.afn = getelementptr i8, ptr %i.afi, i64 -8
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !61 ; 2 uses
  %i.afp = sext i32 %i.g to i64
  %i.afq = getelementptr inbounds [8 x i8], ptr %9, i64 %i.afp
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !61 ; 2 uses
  %i.afs = getelementptr i8, ptr %i.afi, i64 -16
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !61 ; 2 uses
  %i.afu = sext i32 %i.aff to i64
  %i.afv = getelementptr inbounds [8 x i8], ptr %9, i64 %i.afu
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !61 ; 2 uses
  %i.afx = load i32, ptr %i.zp, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count287 = zext nneg i32 %smax286 to i64 ; 7 uses
end_hunk_6
