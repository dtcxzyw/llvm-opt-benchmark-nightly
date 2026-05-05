inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_interpT2CharString:bb.a
  %11 = alloca %struct.CF2_ArrStackRec_, align 8  ; 14 uses
  %12 = alloca %struct.CF2_HintMaskRec_, align 8  ; 12 uses
  %13 = alloca %struct.CF2_GlyphPathRec_, align 8 ; 71 uses
  %14 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %15 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %16 = alloca %struct.CF2_HintMapRec_, align 8   ; 9 uses
  %17 = alloca %struct.CF2_HintMaskRec_, align 8  ; 9 uses
  store i32 %5, ptr %i.c, align 4, !tbaa !3
  store i32 %6, ptr %i.d, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
end_hunk_0
begin_hunk_1_@cf2_interpT2CharString:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 1080 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 928 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 25
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 28
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 9
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 9 ; 3 uses
end_hunk_1
begin_hunk_2_@cf2_interpT2CharString:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
end_hunk_2
begin_hunk_3_@cf2_interpT2CharString:bb.a
  br i1 %.not1153, label %cf2_hintmask_read.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.xn = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp) ; 3 uses
  %i.xo = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp) ; 3 uses
end_hunk_3
begin_hunk_4_@cf2_interpT2CharString:bb.a
  %i.zq = load ptr, ptr %i.dz, align 8, !tbaa !361
  call void @FT_GlyphLoader_Prepare(ptr noundef %i.zq) #19
  %.val1326.a = load ptr, ptr %i.xl, align 8, !tbaa !285
  %i.zr = call fastcc i32 @cf2_getT1SeacComponent(ptr %.val1326.a, i32 noundef %.01083, ptr noundef %14) ; 2 uses
  %.not1214 = icmp eq i32 %i.zr, 0
  br i1 %.not1214, label %bb.gy, label %bb.he

bb.gy:                                            ; preds = %bb.gx
  %i.zs = load ptr, ptr %i.dt, align 8, !tbaa !608
  %.sroa.0443.0.copyload = load <2 x i64>, ptr %i.zs, align 8
  %i.zt = load ptr, ptr %i.ds, align 8, !tbaa !640
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.zt, align 8
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.i)
  %.val1330.a = load ptr, ptr %i.xl, align 8, !tbaa !285
  %i.zu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.val1331 = load ptr, ptr %i.zu, align 8, !tbaa !253 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.val1332.a = load ptr, ptr %i.zv, align 8, !tbaa !254
  %i.zw = getelementptr i8, ptr %.val1330.a, i64 240
  %.val1330.val = load ptr, ptr %i.zw, align 8, !tbaa !626
end_hunk_4
begin_hunk_5_@cf2_interpT2CharString:bb.a
  br i1 %.not1215, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %cf2_freeT1SeacComponent.exit
  %.sroa.0443.0.copyload444 = load <2 x i64>, ptr %.pre2225.a, align 8
  %i.aaj = load ptr, ptr %i.ds, align 8, !tbaa !640
  %.sroa.0.0.copyload441 = load <2 x i64>, ptr %i.aaj, align 8
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %cf2_freeT1SeacComponent.exit
  %.sroa.0.0 = phi <2 x i64> [ %.sroa.0.0.copyload, %cf2_freeT1SeacComponent.exit ], [ %.sroa.0.0.copyload441, %bb.ha ]
  %.sroa.0443.0 = phi <2 x i64> [ %.sroa.0443.0.copyload, %cf2_freeT1SeacComponent.exit ], [ %.sroa.0443.0.copyload444, %bb.ha ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.pre2225.a, i8 0, i64 16, i1 false)
  %.val1325 = load ptr, ptr %i.xl, align 8, !tbaa !285
  %i.aak = call fastcc i32 @cf2_getT1SeacComponent(ptr %.val1325, i32 noundef %.01086, ptr noundef %14) ; 2 uses
  %.not1216 = icmp eq i32 %i.aak, 0
  br i1 %.not1216, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.aal = trunc i64 %i.yj to i32
  %i.aam = sub i32 %i.aal, %i.xt
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.aam, i32 noundef %i.xp, ptr noundef %i.i)
  %.val1327.a = load ptr, ptr %i.xl, align 8, !tbaa !285
  %.val1328.a = load ptr, ptr %i.zu, align 8, !tbaa !253 ; 2 uses
  %.val1329.a = load ptr, ptr %i.zv, align 8, !tbaa !254
end_hunk_5
begin_hunk_6_@cf2_interpT2CharString:bb.a
cf2_freeT1SeacComponent.exit1490:                 ; preds = %bb.hc, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.aaz = load ptr, ptr %i.dt, align 8, !tbaa !608
  store <2 x i64> %.sroa.0443.0, ptr %i.aaz, align 8
  %i.aba = load ptr, ptr %i.ds, align 8, !tbaa !640
  store <2 x i64> %.sroa.0.0, ptr %i.aba, align 8
  br label %bb.he

bb.he:                                            ; preds = %bb.hb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gq, %bb.go, %bb.gn, %cf2_freeT1SeacComponent.exit1490
  %.5 = phi i32 [ 18, %bb.go ], [ 18, %bb.gn ], [ 18, %bb.gq ], [ 18, %bb.gt ], [ %i.yt, %bb.gv ], [ %i.zr, %bb.gx ], [ 0, %cf2_freeT1SeacComponent.exit1490 ], [ 0, %bb.gw ], [ %i.aak, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.hf:                                            ; preds = %bb.fm
end_hunk_6
begin_hunk_7_@cf2_interpT2CharString:bb.a
  br i1 %.not2063, label %cf2_arrstack_setCount.exit.thread, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %.not1167.a = icmp eq i8 %4, 0
  br i1 %.not1167.a, label %bb.qv, label %bb.qy
end_hunk_7
begin_hunk_8_@cf2_interpT2CharString:bb.a
  store i32 %i.bbc, ptr %i.d, align 4, !tbaa !3
  %i.bbd = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  store i32 %i.bbd, ptr %i.c, align 4, !tbaa !3
  %i.bbe = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bba, ptr noundef %15) ; 2 uses
  %.not1168.a = icmp eq i32 %i.bbe, 0
  br i1 %.not1168.a, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.bbd, i32 noundef %i.bbc, ptr noundef %i.j)
  %i.bbf = getelementptr i8, ptr %i.l, i64 8      ; 2 uses
  %.val1335 = load ptr, ptr %i.bbf, align 8, !tbaa !285
  %i.bbg = getelementptr i8, ptr %i.l, i64 1152   ; 2 uses
  %.val1336 = load ptr, ptr %i.bbg, align 8, !tbaa !662
  %i.bbh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !254
  %i.bbk = load ptr, ptr %i.bbh, align 8, !tbaa !253
  %i.bbl = ptrtoint ptr %i.bbj to i64
  %i.bbm = ptrtoint ptr %i.bbk to i64
  %i.bbn = sub i64 %i.bbl, %i.bbm
  call void %.val1336(ptr noundef %.val1335, ptr noundef nonnull %i.bbh, i64 noundef %i.bbn) #19, !inline_history !663
  %i.bbo = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bbb, ptr noundef %15) ; 2 uses
  %.not1169 = icmp eq i32 %i.bbo, 0
  br i1 %.not1169, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.j)
  %.val1333 = load ptr, ptr %i.bbf, align 8, !tbaa !285
  %.val1334 = load ptr, ptr %i.bbg, align 8, !tbaa !662
  %i.bbp = load ptr, ptr %i.bbi, align 8, !tbaa !254
end_hunk_8
begin_hunk_9_@cf2_interpT2CharString:bb.a
bb.qy:                                            ; preds = %bb.qw, %bb.qv, %bb.qu, %bb.qx
  %.12 = phi i32 [ 0, %bb.qx ], [ 18, %bb.qu ], [ %i.bbe, %bb.qv ], [ %i.bbo, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %cf2_arrstack_setCount.exit.thread

bb.qz:                                            ; preds = %bb.p, %bb.p
end_hunk_9
begin_hunk_10_@cf2_interpT2CharString:bb.a
  br i1 %exitcond.not.i, label %cf2_hintmask_read.exit, label %.lr.ph.i, !llvm.loop !666

bb.rk:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.fb, i8 0, i64 6160, i1 false)
  %i.bcq = load i8, ptr %i.ak, align 8, !tbaa !312
  store i8 %i.bcq, ptr %i.dd, align 1, !tbaa !573
  store i32 %i.bg, ptr %i.de, align 4, !tbaa !579
  store ptr %0, ptr %16, align 8, !tbaa !574
  store ptr %i.ai, ptr %i.df, align 8, !tbaa !575
  store ptr %i.ae, ptr %i.dg, align 8, !tbaa !576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %17, align 8, !tbaa !561
  %.val1322 = load i64, ptr %i.di, align 8, !tbaa !653
  %.val1321 = load i64, ptr %i.dj, align 8, !tbaa !653
  %i.bcr = add i64 %.val1321, %.val1322           ; 3 uses
end_hunk_10
begin_hunk_11_@cf2_interpT2CharString:bb.a
  br i1 %exitcond.not.i1611, label %cf2_hintmask_read.exit1614, label %.lr.ph.i1605, !llvm.loop !666

cf2_hintmask_read.exit1614:                       ; preds = %cf2_buf_readByte.exit.i1609, %bb.rl, %bb.rm, %cf2_hintmask_setCounts.exit.i1603
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %17, i32 noundef 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %cf2_hintmask_read.exit

bb.rr:                                            ; preds = %bb.p
end_hunk_11
