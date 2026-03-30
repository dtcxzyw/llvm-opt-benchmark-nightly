begin_hunk_0
  %11 = alloca %struct.CF2_ArrStackRec_, align 8  ; 14 uses
  %12 = alloca %struct.CF2_HintMaskRec_, align 8  ; 12 uses
  %13 = alloca %struct.CF2_GlyphPathRec_, align 8 ; 71 uses
  %14 = alloca %struct.FT_Vector_, align 8        ; 5 uses
  %15 = alloca %struct.FT_Vector_, align 8        ; 5 uses
  %16 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %17 = alloca %struct.CF2_BufferRec_, align 8    ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %18 = alloca %struct.CF2_HintMapRec_, align 8   ; 8 uses
  %19 = alloca %struct.CF2_HintMaskRec_, align 8  ; 9 uses
  store i32 %5, ptr %i.c, align 4, !tbaa !3
  store i32 %6, ptr %i.d, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
end_hunk_0
begin_hunk_1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 1080 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 928 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 25
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.df = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 9
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 9 ; 3 uses
end_hunk_1
begin_hunk_2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.fb = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %i.fc = insertelement <2 x ptr> %i.fb, ptr %i.ah, i64 1
  br label %.backedge
end_hunk_2
begin_hunk_3
  br i1 %.not1153, label %cf2_hintmask_read.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.xo = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp) ; 3 uses
  %i.xp = call fastcc i32 @cf2_stack_popInt(ptr noundef %i.cp) ; 3 uses
end_hunk_3
begin_hunk_4
  %i.zr = load ptr, ptr %i.dy, align 8, !tbaa !358
  call void @FT_GlyphLoader_Prepare(ptr noundef %i.zr) #21
  %.val1326.a = load ptr, ptr %i.xm, align 8, !tbaa !284
  %i.zs = call fastcc i32 @cf2_getT1SeacComponent(ptr %.val1326.a, i32 noundef %.01083, ptr noundef %16) ; 2 uses
  %.not1214 = icmp eq i32 %i.zs, 0
  br i1 %.not1214, label %bb.gy, label %bb.he

bb.gy:                                            ; preds = %bb.gx
  %i.zt = load ptr, ptr %i.ds, align 8, !tbaa !603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.zt, i64 16, i1 false), !tbaa.struct !575
  %i.zu = load ptr, ptr %i.dr, align 8, !tbaa !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.zu, i64 16, i1 false), !tbaa.struct !575
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.i)
  %.val1330.a = load ptr, ptr %i.xm, align 8, !tbaa !284
  %i.zv = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.val1331 = load ptr, ptr %i.zv, align 8, !tbaa !252 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.val1332.a = load ptr, ptr %i.zw, align 8, !tbaa !253
  %i.zx = getelementptr i8, ptr %.val1330.a, i64 240
  %.val1330.val = load ptr, ptr %i.zx, align 8, !tbaa !620
end_hunk_4
begin_hunk_5
  br i1 %.not1215, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %cf2_freeT1SeacComponent.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.pre2225.a, i64 16, i1 false), !tbaa.struct !575
  %i.aak = load ptr, ptr %i.dr, align 8, !tbaa !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.aak, i64 16, i1 false), !tbaa.struct !575
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %cf2_freeT1SeacComponent.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.pre2225.a, i8 0, i64 16, i1 false)
  %.val1325 = load ptr, ptr %i.xm, align 8, !tbaa !284
  %i.aal = call fastcc i32 @cf2_getT1SeacComponent(ptr %.val1325, i32 noundef %.01086, ptr noundef %16) ; 2 uses
  %.not1216 = icmp eq i32 %i.aal, 0
  br i1 %.not1216, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.aam = trunc i64 %i.yk to i32
  %i.aan = sub i32 %i.aam, %i.xu
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.aan, i32 noundef %i.xq, ptr noundef %i.i)
  %.val1327.a = load ptr, ptr %i.xm, align 8, !tbaa !284
  %.val1328.a = load ptr, ptr %i.zv, align 8, !tbaa !252 ; 2 uses
  %.val1329.a = load ptr, ptr %i.zw, align 8, !tbaa !253
end_hunk_5
begin_hunk_6
cf2_freeT1SeacComponent.exit1490:                 ; preds = %bb.hc, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.aba = load ptr, ptr %i.ds, align 8, !tbaa !603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aba, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !575
  %i.abb = load ptr, ptr %i.dr, align 8, !tbaa !634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abb, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !575
  br label %bb.he

bb.he:                                            ; preds = %bb.hb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gq, %bb.go, %bb.gn, %cf2_freeT1SeacComponent.exit1490
  %.5 = phi i32 [ 18, %bb.go ], [ 18, %bb.gn ], [ 18, %bb.gq ], [ 18, %bb.gt ], [ %i.yu, %bb.gv ], [ %i.zs, %bb.gx ], [ 0, %cf2_freeT1SeacComponent.exit1490 ], [ 0, %bb.gw ], [ %i.aal, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %cf2_arrstack_setCount.exit.thread

bb.hf:                                            ; preds = %bb.fm
end_hunk_6
begin_hunk_7
  br i1 %.not2063, label %cf2_arrstack_setCount.exit.thread, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %.not1167.a = icmp eq i8 %4, 0
  br i1 %.not1167.a, label %bb.qv, label %bb.qy
end_hunk_7
begin_hunk_8
  store i32 %i.bbd, ptr %i.d, align 4, !tbaa !3
  %i.bbe = call fastcc i32 @cf2_stack_popFixed(ptr noundef %i.cp) ; 2 uses
  store i32 %i.bbe, ptr %i.c, align 4, !tbaa !3
  %i.bbf = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bbb, ptr noundef %17) ; 2 uses
  %.not1168.a = icmp eq i32 %i.bbf, 0
  br i1 %.not1168.a, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef %i.bbe, i32 noundef %i.bbd, ptr noundef %i.j)
  %i.bbg = getelementptr i8, ptr %i.l, i64 8      ; 2 uses
  %.val1335 = load ptr, ptr %i.bbg, align 8, !tbaa !284
  %i.bbh = getelementptr i8, ptr %i.l, i64 1152   ; 2 uses
  %.val1336 = load ptr, ptr %i.bbh, align 8, !tbaa !655
  %i.bbi = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !253
  %i.bbl = load ptr, ptr %i.bbi, align 8, !tbaa !252
  %i.bbm = ptrtoint ptr %i.bbk to i64
  %i.bbn = ptrtoint ptr %i.bbl to i64
  %i.bbo = sub i64 %i.bbm, %i.bbn
  call void %.val1336(ptr noundef %.val1335, ptr noundef nonnull %i.bbi, i64 noundef %i.bbo) #21
  %i.bbp = call fastcc i32 @cf2_getSeacComponent(ptr noundef nonnull %i.l, i32 noundef %i.bbc, ptr noundef %17) ; 2 uses
  %.not1169 = icmp eq i32 %i.bbp, 0
  br i1 %.not1169, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, ptr noundef %i.j)
  %.val1333 = load ptr, ptr %i.bbg, align 8, !tbaa !284
  %.val1334 = load ptr, ptr %i.bbh, align 8, !tbaa !655
  %i.bbq = load ptr, ptr %i.bbj, align 8, !tbaa !253
end_hunk_8
begin_hunk_9
bb.qy:                                            ; preds = %bb.qw, %bb.qv, %bb.qu, %bb.qx
  %.12 = phi i32 [ 0, %bb.qx ], [ 18, %bb.qu ], [ %i.bbf, %bb.qv ], [ %i.bbp, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %cf2_arrstack_setCount.exit.thread

bb.qz:                                            ; preds = %bb.p, %bb.p
end_hunk_9
begin_hunk_10
  br i1 %exitcond.not.i, label %cf2_hintmask_read.exit, label %.lr.ph.i, !llvm.loop !658

bb.rk:                                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6160) %i.fa, i8 0, i64 6160, i1 false)
  %i.bcr = load i8, ptr %i.ak, align 8, !tbaa !309
  store i8 %i.bcr, ptr %i.dd, align 1, !tbaa !568
  store i32 %i.bg, ptr %i.de, align 4, !tbaa !574
  store ptr %0, ptr %18, align 8, !tbaa !569
  store <2 x ptr> %i.fc, ptr %i.df, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i8 0, i64 40, i1 false)
  store ptr %i.m, ptr %19, align 8, !tbaa !556
  %.val1322 = load i64, ptr %i.dh, align 8, !tbaa !646
  %.val1321 = load i64, ptr %i.di, align 8, !tbaa !646
  %i.bcs = add i64 %.val1321, %.val1322           ; 3 uses
end_hunk_10
begin_hunk_11
  br i1 %exitcond.not.i1611, label %cf2_hintmask_read.exit1614, label %.lr.ph.i1605, !llvm.loop !658

cf2_hintmask_read.exit1614:                       ; preds = %cf2_buf_readByte.exit.i1609, %bb.rl, %bb.rm, %cf2_hintmask_setCounts.exit.i1603
  call fastcc void @cf2_hintmap_build(ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %19, i32 noundef 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %cf2_hintmask_read.exit

bb.rr:                                            ; preds = %bb.p
end_hunk_11
