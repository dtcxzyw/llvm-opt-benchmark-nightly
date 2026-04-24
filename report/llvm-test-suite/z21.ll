begin_hunk_0_@SizeGalley:bb.a
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !8 ; 7 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32 ; 12 uses
  %i.aib = load i8, ptr %i.aia, align 8, !tbaa !8 ; 4 uses
  %i.aic = icmp ne i8 %i.aib, 32                  ; 10 uses
  %.in564.v = select i1 %i.aic, i64 16, i64 24    ; 2 uses
  %.in564 = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %.in564.v
  %i.aid = load ptr, ptr %.in564, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@SizeGalley:bb.a
  br i1 %i.aig, label %bb.gy, label %.preheader, !llvm.loop !27

.preheader:                                       ; preds = %bb.gy
  %..a = zext i1 %i.aic to i32                    ; 2 uses
  %.602 = select i1 %i.aic, i32 15, i32 16        ; 2 uses
  %.603 = select i1 %i.aic, i32 17, i32 19
  %.604 = select i1 %i.aic, i32 18, i32 19
  %.605 = select i1 %i.aic, i32 31, i32 30        ; 8 uses
  %.606.a = select i1 %i.aic, i8 25, i8 24
  %i.aih = icmp eq i8 %i.aif, 9
  %i.aii = zext i8 %i.aif to i32                  ; 2 uses
end_hunk_1
begin_hunk_2_@SizeGalley:bb.a
  %i.aix = call ptr @Image(i32 noundef %i.aiw) #4
  %i.aiy = call ptr @Image(i32 noundef %.605) #4
  %i.aiz = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 8, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.aix, ptr noundef %i.aiy) #4 ; 0 uses
  %15 = trunc nuw nsw i32 %.605 to i8
  store i8 %15, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hd:                                            ; preds = %bb.hb
  %i.aja = getelementptr inbounds nuw i8, ptr %.0455, i64 48
  %16 = zext i1 %i.aic to i64                     ; 4 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %16
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !8 ; 3 uses
  %i.ajd = icmp eq i32 %i.ajc, 0
  %i.aje = getelementptr inbounds nuw i8, ptr %.0455, i64 56
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %16
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !8 ; 3 uses
  %i.ajh = icmp eq i32 %i.ajg, 0                  ; 2 uses
  br i1 %i.ajd, label %bb.he, label %bb.hg
end_hunk_2
begin_hunk_3_@SizeGalley:bb.a
  %i.ajj = call ptr @Image(i32 noundef %i.aji) #4
  %i.ajk = call ptr @Image(i32 noundef %.605) #4
  %i.ajl = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.ajj, ptr noundef %i.ajk) #4 ; 0 uses
  %17 = trunc nuw nsw i32 %.605 to i8
  store i8 %17, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1457.lcssa, i64 48
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ajm, i64 %16
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !8 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.1457.lcssa, i64 56
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %16
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !8 ; 2 uses
  %i.ajs = sub i32 0, %i.ajr
  %i.ajt = icmp eq i32 %i.ajo, %i.ajs
end_hunk_3
begin_hunk_4_@SizeGalley:bb.a
  %i.ajv = call ptr @Image(i32 noundef %i.aju) #4
  %i.ajw = call ptr @Image(i32 noundef %.605) #4
  %i.ajx = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 10, ptr noundef nonnull @.str.26, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.ajv, ptr noundef %i.ajw) #4 ; 0 uses
  %18 = trunc nuw nsw i32 %.605 to i8
  store i8 %18, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hj:                                            ; preds = %bb.hh
end_hunk_4
begin_hunk_5_@SizeGalley:bb.a
  %i.aku = call ptr @Image(i32 noundef %i.akt) #4
  %i.akv = call ptr @Image(i32 noundef %.605) #4
  %i.akw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 11, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.aku, ptr noundef %i.akv) #4 ; 0 uses
  %19 = trunc nuw nsw i32 %.605 to i8
  store i8 %19, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hf, %bb.hi, %bb.hm, %bb.hl, %.thread623, %bb.hc
end_hunk_5
