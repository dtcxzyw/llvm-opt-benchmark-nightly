Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@start_decoder:bb.a
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 2
  store i16 %i.abk, ptr %i.abl, align 2, !tbaa !368
  %indvars.iv.next1627.3 = add nuw nsw i64 %indvars.iv1626, 4 ; 2 uses
  %exitcond1630.not.3 = icmp eq i64 %indvars.iv.next1627.3, %wide.trip.count1629
  br i1 %exitcond1630.not.3, label %._crit_edge1424, label %.lr.ph1423, !llvm.loop !334

._crit_edge1424:                                  ; preds = %.lr.ph1423.prol.loopexit, %.lr.ph1423, %middle.block1946, %.preheader1260
  %i.abm = phi i32 [ %i.aao, %.preheader1260 ], [ %i.zd, %middle.block1946 ], [ %i.zd, %.lr.ph1423 ], [ %i.zd, %.lr.ph1423.prol.loopexit ]
  %i.abn = sext i32 %i.abm to i64
  call void @qsort(ptr noundef nonnull %1, i64 noundef %i.abn, i64 noundef 4, ptr noundef nonnull @point_compare) #30
  %i.abo = load i32, ptr %i.yy, align 4, !tbaa !115 ; 3 uses
  %i.abp = call i32 @llvm.smax.i32(i32 %i.abo, i32 1)
  %smax = add nsw i32 %i.abp, -1                  ; 2 uses
  %wide.trip.count1634 = zext nneg i32 %smax to i64
  %exitcond1635.not1930 = icmp eq i32 %smax, 0
  br i1 %exitcond1635.not1930, label %.preheader1259, label %.lr.ph1932

bb.fp:                                            ; preds = %.lr.ph1932
  %exitcond1635.not = icmp eq i64 %indvars.iv.next1632, %wide.trip.count1634
  br i1 %exitcond1635.not, label %.preheader1259, label %.lr.ph1932, !llvm.loop !335

.preheader1259:                                   ; preds = %bb.fp, %._crit_edge1424
  %i.abq = icmp sgt i32 %i.abo, 0
  br i1 %i.abq, label %.lr.ph1427, label %._crit_edge1430

.lr.ph1427:                                       ; preds = %.preheader1259
  %i.abr = getelementptr inbounds nuw i8, ptr %i.ww, i64 838
  br label %bb.fq

.lr.ph1932:                                       ; preds = %._crit_edge1424, %bb.fp
  %indvars.iv16311931 = phi i64 [ %indvars.iv.next1632, %bb.fp ], [ 0, %._crit_edge1424 ] ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv16311931
  %i.abt = load i16, ptr %i.abs, align 4, !tbaa !68
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv16311931, 1 ; 3 uses
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1632
  %i.abv = load i16, ptr %i.abu, align 4, !tbaa !68
  %i.abw = icmp eq i16 %i.abt, %i.abv
  br i1 %i.abw, label %.thread1234, label %bb.fp, !llvm.loop !335

.preheader1258:                                   ; preds = %bb.fq
  %i.abx = icmp sgt i32 %i.ace, 2
  br i1 %i.abx, label %.lr.ph1429, label %._crit_edge1430

.lr.ph1429:                                       ; preds = %.preheader1258
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ww, i64 1088
  br label %bb.fr

bb.fq:                                            ; preds = %.lr.ph1427, %bb.fq
  %indvars.iv1636 = phi i64 [ 0, %.lr.ph1427 ], [ %indvars.iv.next1637, %bb.fq ] ; 3 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1636
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !368
  %i.acc = trunc i16 %i.acb to i8
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abr, i64 %indvars.iv1636
  store i8 %i.acc, ptr %i.acd, align 1, !tbaa !49
  %indvars.iv.next1637 = add nuw nsw i64 %indvars.iv1636, 1 ; 2 uses
  %i.ace = load i32, ptr %i.yy, align 4, !tbaa !115 ; 3 uses
  %i.acf = sext i32 %i.ace to i64
  %i.acg = icmp slt i64 %indvars.iv.next1637, %i.acf
  br i1 %i.acg, label %bb.fq, label %.preheader1258, !llvm.loop !336

bb.fr:                                            ; preds = %.lr.ph1429, %neighbors.exit
  %indvars.iv1639 = phi i64 [ 2, %.lr.ph1429 ], [ %indvars.iv.next1640, %neighbors.exit ] ; 4 uses
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv1639 ; 2 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fw, %bb.fr
  %.01201 = phi i8 [ 0, %bb.fr ], [ %.11202, %bb.fw ] ; 2 uses
  %.01199 = phi i8 [ 0, %bb.fr ], [ %.11200, %bb.fw ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.fr ], [ %indvars.iv.next.i, %bb.fw ] ; 4 uses
  %.02431.i = phi i32 [ 65536, %bb.fr ], [ %.1.i, %bb.fw ] ; 3 uses
  %.02530.i = phi i32 [ -1, %bb.fr ], [ %.126.i, %bb.fw ] ; 3 uses
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv.i
  %i.acj = load i16, ptr %i.aci, align 2, !tbaa !58 ; 3 uses
  %i.ack = zext i16 %i.acj to i32                 ; 4 uses
  %i.acl = icmp slt i32 %.02530.i, %i.ack
  br i1 %i.acl, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.acm = load i16, ptr %i.ach, align 2, !tbaa !58
  %i.acn = icmp ult i16 %i.acj, %i.acm            ; 2 uses
  %i.aco = trunc i64 %indvars.iv.i to i8
  %spec.select1242 = select i1 %i.acn, i8 %i.aco, i8 %.01201
  %spec.select1243 = select i1 %i.acn, i32 %i.ack, i32 %.02530.i
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.11202 = phi i8 [ %.01201, %bb.fs ], [ %spec.select1242, %bb.ft ] ; 2 uses
  %.126.i = phi i32 [ %.02530.i, %bb.fs ], [ %spec.select1243, %bb.ft ]
  %i.acp = icmp sgt i32 %.02431.i, %i.ack
  br i1 %i.acp, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.acq = load i16, ptr %i.ach, align 2, !tbaa !58
  %i.acr = icmp ugt i16 %i.acj, %i.acq            ; 2 uses
  %i.acs = trunc i64 %indvars.iv.i to i8
  %spec.select1244 = select i1 %i.acr, i8 %i.acs, i8 %.01199
  %spec.select1245 = select i1 %i.acr, i32 %i.ack, i32 %.02431.i
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.11200 = phi i8 [ %.01199, %bb.fu ], [ %spec.select1244, %bb.fv ] ; 2 uses
  %.1.i = phi i32 [ %.02431.i, %bb.fu ], [ %spec.select1245, %bb.fv ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv1639
  br i1 %exitcond.not.i, label %neighbors.exit, label %bb.fs, !llvm.loop !4

neighbors.exit:                                   ; preds = %bb.fw
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %i.aby, i64 %indvars.iv1639 ; 2 uses
  store i8 %.11202, ptr %i.act, align 2, !tbaa !49
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 1
  store i8 %.11200, ptr %i.acu, align 1, !tbaa !49
  %indvars.iv.next1640 = add nuw nsw i64 %indvars.iv1639, 1 ; 2 uses
  %i.acv = load i32, ptr %i.yy, align 4, !tbaa !115 ; 2 uses
  %i.acw = sext i32 %i.acv to i64
  %i.acx = icmp slt i64 %indvars.iv.next1640, %i.acw
  br i1 %i.acx, label %bb.fr, label %._crit_edge1430, !llvm.loop !337

.thread1234:                                      ; preds = %bb.fk, %.lr.ph1932, %bb.fn
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.acy, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.critedge

._crit_edge1430:                                  ; preds = %neighbors.exit, %.preheader1259, %.preheader1258
  %.lcssa1274 = phi i32 [ %i.ace, %.preheader1258 ], [ %i.abo, %.preheader1259 ], [ %i.acv, %neighbors.exit ]
  %spec.select1167 = call i32 @llvm.smax.i32(i32 %.lcssa1274, i32 %.09701433) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1 ; 2 uses
  %i.acz = load i32, ptr %i.vc, align 8, !tbaa !357
  %i.ada = sext i32 %i.acz to i64
  %i.adb = icmp slt i64 %indvars.iv.next1643, %i.ada
  br i1 %i.adb, label %bb.fc, label %._crit_edge1435.loopexit, !llvm.loop !338

._crit_edge1435.loopexit:                         ; preds = %._crit_edge1430
  %i.adc = shl nuw i32 %spec.select1167, 1
  br label %._crit_edge1435

._crit_edge1435:                                  ; preds = %._crit_edge1435.loopexit, %.preheader1262
  %.0970.lcssa = phi i32 [ 0, %.preheader1262 ], [ %i.adc, %._crit_edge1435.loopexit ]
  %i.add = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.ade = add i32 %i.add, 1                      ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  store i32 %i.ade, ptr %i.adf, align 8, !tbaa !139
  %i.adg = shl i32 %i.ade, 5
  %i.adh = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.adg) ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  store ptr %i.adh, ptr %i.adi, align 8, !tbaa !94
  %i.adj = icmp eq ptr %i.adh, null
  br i1 %i.adj, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %._crit_edge1435
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.adk, align 4
  br label %.critedge

bb.fy:                                            ; preds = %._crit_edge1435
  %i.adl = load i32, ptr %i.adf, align 8, !tbaa !139
  %i.adm = sext i32 %i.adl to i64
  %i.adn = shl nsw i64 %i.adm, 5
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.adh, i8 0, i64 %i.adn, i1 false)
  %i.ado = load i32, ptr %i.adf, align 8, !tbaa !139
  %i.adp = icmp sgt i32 %i.ado, 0
  br i1 %i.adp, label %.lr.ph1454, label %._crit_edge1455

.lr.ph1454:                                       ; preds = %bb.fy
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 340
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph1454, %._crit_edge1451
  %indvars.iv1661 = phi i64 [ 0, %.lr.ph1454 ], [ %indvars.iv.next1662, %._crit_edge1451 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.adr = load ptr, ptr %i.adi, align 8, !tbaa !94
  %i.ads = getelementptr inbounds nuw [32 x i8], ptr %i.adr, i64 %indvars.iv1661 ; 8 uses
  %i.adt = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16) ; 2 uses
  %i.adu = trunc i32 %i.adt to i16
  %i.adv = getelementptr inbounds nuw [2 x i8], ptr %i.adq, i64 %indvars.iv1661
  store i16 %i.adu, ptr %i.adv, align 2, !tbaa !58
  %i.adw = and i32 %i.adt, 65535
  %i.adx = icmp samesign ugt i32 %i.adw, 2
  br i1 %i.adx, label %.critedge1169, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ady = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  store i32 %i.ady, ptr %i.ads, align 8, !tbaa !98
  %i.adz = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24) ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  store i32 %i.adz, ptr %i.aea, align 4, !tbaa !99
  %i.aeb = load i32, ptr %i.ads, align 8, !tbaa !98
  %i.aec = icmp ult i32 %i.adz, %i.aeb
  br i1 %i.aec, label %.critedge1169, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aed = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  %i.aee = add i32 %i.aed, 1
  %i.aef = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  store i32 %i.aee, ptr %i.aef, align 8, !tbaa !100
  %i.aeg = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.aeh = trunc i32 %i.aeg to i8
  %i.aei = add i8 %i.aeh, 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ads, i64 12 ; 9 uses
  store i8 %i.aei, ptr %i.aej, align 4, !tbaa !369
  %i.aek = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ael = trunc i32 %i.aek to i8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ads, i64 13 ; 5 uses
  store i8 %i.ael, ptr %i.aem, align 1, !tbaa !96
  %i.aen = and i32 %i.aek, 255
  %i.aeo = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1116 = icmp slt i32 %i.aen, %i.aeo
  br i1 %.not1116, label %.preheader1257, label %.critedge1169

.preheader1257:                                   ; preds = %bb.gb
  %i.aep = load i8, ptr %i.aej, align 4, !tbaa !369
  %.not1492 = icmp eq i8 %i.aep, 0
  br i1 %.not1492, label %._crit_edge1439, label %.lr.ph1438

.lr.ph1438:                                       ; preds = %.preheader1257, %bb.gd
  %indvars.iv1645 = phi i64 [ %indvars.iv.next1646, %bb.gd ], [ 0, %.preheader1257 ] ; 2 uses
  %i.aeq = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 3)
  %i.aer = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1121 = icmp eq i32 %i.aer, 0
  br i1 %.not1121, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph1438
  %i.aes = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5)
  %i.aet = shl i32 %i.aes, 3
  %i.aeu = and i32 %i.aet, 2040
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.lr.ph1438
  %.0940 = phi i32 [ %i.aeu, %bb.gc ], [ 0, %.lr.ph1438 ]
  %i.aev = add i32 %.0940, %i.aeq
  %i.aew = trunc i32 %i.aev to i8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1645
  store i8 %i.aew, ptr %i.aex, align 1, !tbaa !49
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1 ; 2 uses
  %i.aey = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %i.aez = zext i8 %i.aey to i64
  %i.afa = icmp samesign ult i64 %indvars.iv.next1646, %i.aez
  br i1 %i.afa, label %.lr.ph1438, label %._crit_edge1439.loopexit, !llvm.loop !339

._crit_edge1439.loopexit:                         ; preds = %bb.gd
  %i.afb = zext i8 %i.aey to i32
  %i.afc = shl nuw nsw i32 %i.afb, 4
  br label %._crit_edge1439

._crit_edge1439:                                  ; preds = %._crit_edge1439.loopexit, %.preheader1257
  %.lcssa.in = phi i32 [ 0, %.preheader1257 ], [ %i.afc, %._crit_edge1439.loopexit ]
  %i.afd = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %.lcssa.in) ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.ads, i64 24 ; 9 uses
  store ptr %i.afd, ptr %i.afe, align 8, !tbaa !105
  %i.aff = icmp eq ptr %i.afd, null
  br i1 %i.aff, label %.critedge1169, label %.preheader1256

.preheader1256:                                   ; preds = %._crit_edge1439
  %i.afg = load i8, ptr %i.aej, align 4, !tbaa !369
  %.not1493 = icmp eq i8 %i.afg, 0
  br i1 %.not1493, label %._crit_edge1443, label %.preheader1255

.preheader1255:                                   ; preds = %.preheader1256, %bb.hb
  %i.afh = phi ptr [ %i.air, %bb.hb ], [ %i.afd, %.preheader1256 ] ; 2 uses
  %indvars.iv1652 = phi i64 [ %indvars.iv.next1653, %bb.hb ], [ 0, %.preheader1256 ] ; 18 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1652
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !49 ; 2 uses
  %i.afk = zext i8 %i.afj to i32                  ; 7 uses
  %i.afl = and i32 %i.afk, 1
  %.not1119 = icmp eq i32 %i.afl, 0
  br i1 %.not1119, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.preheader1255
  %i.afm = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.afn = trunc i32 %i.afm to i16
  %i.afo = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.afp = getelementptr inbounds nuw [16 x i8], ptr %i.afo, i64 %indvars.iv1652
  store i16 %i.afn, ptr %i.afp, align 2, !tbaa !58
  %sext = shl i32 %i.afm, 16
  %i.afq = ashr exact i32 %sext, 16
  %i.afr = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120 = icmp sgt i32 %i.afr, %i.afq
  br i1 %.not1120, label %bb.gg, label %.critedge1169

bb.gf:                                            ; preds = %.preheader1255
  %i.afs = getelementptr inbounds nuw [16 x i8], ptr %i.afh, i64 %indvars.iv1652
  store i16 -1, ptr %i.afs, align 2, !tbaa !58
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.aft = phi ptr [ %i.afh, %bb.gf ], [ %i.afo, %bb.ge ] ; 2 uses
  %i.afu = and i32 %i.afk, 2
  %.not1119.1 = icmp eq i32 %i.afu, 0
  br i1 %.not1119.1, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.afv = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.afw = trunc i32 %i.afv to i16
  %i.afx = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.afy = getelementptr inbounds nuw [16 x i8], ptr %i.afx, i64 %indvars.iv1652
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 2
  store i16 %i.afw, ptr %i.afz, align 2, !tbaa !58
  %sext.1 = shl i32 %i.afv, 16
  %i.aga = ashr exact i32 %sext.1, 16
  %i.agb = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.1 = icmp sgt i32 %i.agb, %i.aga
  br i1 %.not1120.1, label %bb.gj, label %.critedge1169

bb.gi:                                            ; preds = %bb.gg
  %i.agc = getelementptr inbounds nuw [16 x i8], ptr %i.aft, i64 %indvars.iv1652
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  store i16 -1, ptr %i.agd, align 2, !tbaa !58
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.age = phi ptr [ %i.aft, %bb.gi ], [ %i.afx, %bb.gh ] ; 2 uses
  %i.agf = and i32 %i.afk, 4
  %.not1119.2 = icmp eq i32 %i.agf, 0
  br i1 %.not1119.2, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.agg = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.agh = trunc i32 %i.agg to i16
  %i.agi = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.agj = getelementptr inbounds nuw [16 x i8], ptr %i.agi, i64 %indvars.iv1652
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  store i16 %i.agh, ptr %i.agk, align 2, !tbaa !58
  %sext.2 = shl i32 %i.agg, 16
  %i.agl = ashr exact i32 %sext.2, 16
  %i.agm = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.2 = icmp sgt i32 %i.agm, %i.agl
  br i1 %.not1120.2, label %bb.gm, label %.critedge1169

bb.gl:                                            ; preds = %bb.gj
  %i.agn = getelementptr inbounds nuw [16 x i8], ptr %i.age, i64 %indvars.iv1652
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 4
  store i16 -1, ptr %i.ago, align 2, !tbaa !58
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.agp = phi ptr [ %i.age, %bb.gl ], [ %i.agi, %bb.gk ] ; 2 uses
  %i.agq = and i32 %i.afk, 8
  %.not1119.3 = icmp eq i32 %i.agq, 0
  br i1 %.not1119.3, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agr = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ags = trunc i32 %i.agr to i16
  %i.agt = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.agu = getelementptr inbounds nuw [16 x i8], ptr %i.agt, i64 %indvars.iv1652
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 6
  store i16 %i.ags, ptr %i.agv, align 2, !tbaa !58
  %sext.3 = shl i32 %i.agr, 16
  %i.agw = ashr exact i32 %sext.3, 16
  %i.agx = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.3 = icmp sgt i32 %i.agx, %i.agw
  br i1 %.not1120.3, label %bb.gp, label %.critedge1169

bb.go:                                            ; preds = %bb.gm
  %i.agy = getelementptr inbounds nuw [16 x i8], ptr %i.agp, i64 %indvars.iv1652
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 6
  store i16 -1, ptr %i.agz, align 2, !tbaa !58
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.aha = phi ptr [ %i.agp, %bb.go ], [ %i.agt, %bb.gn ] ; 2 uses
  %i.ahb = and i32 %i.afk, 16
  %.not1119.4 = icmp eq i32 %i.ahb, 0
  br i1 %.not1119.4, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ahc = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ahd = trunc i32 %i.ahc to i16
  %i.ahe = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.ahf = getelementptr inbounds nuw [16 x i8], ptr %i.ahe, i64 %indvars.iv1652
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store i16 %i.ahd, ptr %i.ahg, align 2, !tbaa !58
  %sext.4 = shl i32 %i.ahc, 16
  %i.ahh = ashr exact i32 %sext.4, 16
  %i.ahi = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.4 = icmp sgt i32 %i.ahi, %i.ahh
  br i1 %.not1120.4, label %bb.gs, label %.critedge1169

bb.gr:                                            ; preds = %bb.gp
  %i.ahj = getelementptr inbounds nuw [16 x i8], ptr %i.aha, i64 %indvars.iv1652
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  store i16 -1, ptr %i.ahk, align 2, !tbaa !58
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ahl = phi ptr [ %i.aha, %bb.gr ], [ %i.ahe, %bb.gq ] ; 2 uses
  %i.ahm = and i32 %i.afk, 32
  %.not1119.5 = icmp eq i32 %i.ahm, 0
  br i1 %.not1119.5, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ahn = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.aho = trunc i32 %i.ahn to i16
  %i.ahp = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.ahp, i64 %indvars.iv1652
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 10
  store i16 %i.aho, ptr %i.ahr, align 2, !tbaa !58
  %sext.5 = shl i32 %i.ahn, 16
  %i.ahs = ashr exact i32 %sext.5, 16
  %i.aht = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.5 = icmp sgt i32 %i.aht, %i.ahs
  br i1 %.not1120.5, label %bb.gv, label %.critedge1169

bb.gu:                                            ; preds = %bb.gs
  %i.ahu = getelementptr inbounds nuw [16 x i8], ptr %i.ahl, i64 %indvars.iv1652
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 10
  store i16 -1, ptr %i.ahv, align 2, !tbaa !58
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.ahw = phi ptr [ %i.ahl, %bb.gu ], [ %i.ahp, %bb.gt ] ; 2 uses
  %i.ahx = and i32 %i.afk, 64
  %.not1119.6 = icmp eq i32 %i.ahx, 0
  br i1 %.not1119.6, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ahy = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.ahz = trunc i32 %i.ahy to i16
  %i.aia = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.aib = getelementptr inbounds nuw [16 x i8], ptr %i.aia, i64 %indvars.iv1652
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 12
  store i16 %i.ahz, ptr %i.aic, align 2, !tbaa !58
  %sext.6 = shl i32 %i.ahy, 16
  %i.aid = ashr exact i32 %sext.6, 16
  %i.aie = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.6 = icmp sgt i32 %i.aie, %i.aid
  br i1 %.not1120.6, label %bb.gy, label %.critedge1169

bb.gx:                                            ; preds = %bb.gv
  %i.aif = getelementptr inbounds nuw [16 x i8], ptr %i.ahw, i64 %indvars.iv1652
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 12
  store i16 -1, ptr %i.aig, align 2, !tbaa !58
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.aih = phi ptr [ %i.ahw, %bb.gx ], [ %i.aia, %bb.gw ] ; 2 uses
  %.not1119.7 = icmp sgt i8 %i.afj, -1
  br i1 %.not1119.7, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aii = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.aij = trunc i32 %i.aii to i16
  %i.aik = load ptr, ptr %i.afe, align 8, !tbaa !105 ; 2 uses
  %i.ail = getelementptr inbounds nuw [16 x i8], ptr %i.aik, i64 %indvars.iv1652
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 14
  store i16 %i.aij, ptr %i.aim, align 2, !tbaa !58
  %sext.7 = shl i32 %i.aii, 16
  %i.ain = ashr exact i32 %sext.7, 16
  %i.aio = load i32, ptr %i.gq, align 8, !tbaa !138
  %.not1120.7 = icmp sgt i32 %i.aio, %i.ain
  br i1 %.not1120.7, label %bb.hb, label %.critedge1169

bb.ha:                                            ; preds = %bb.gy
  %i.aip = getelementptr inbounds nuw [16 x i8], ptr %i.aih, i64 %indvars.iv1652
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 14
  store i16 -1, ptr %i.aiq, align 2, !tbaa !58
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.air = phi ptr [ %i.aih, %bb.ha ], [ %i.aik, %bb.gz ]
  %indvars.iv.next1653 = add nuw nsw i64 %indvars.iv1652, 1 ; 2 uses
  %i.ais = load i8, ptr %i.aej, align 4, !tbaa !369
  %i.ait = zext i8 %i.ais to i64
  %i.aiu = icmp samesign ult i64 %indvars.iv.next1653, %i.ait
  br i1 %i.aiu, label %.preheader1255, label %._crit_edge1443, !llvm.loop !340

._crit_edge1443:                                  ; preds = %bb.hb, %.preheader1256
  %i.aiv = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.aiw = load i8, ptr %i.aem, align 1, !tbaa !96
  %i.aix = zext i8 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [2120 x i8], ptr %i.aiv, i64 %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !61
  %i.ajb = shl i32 %i.aja, 3
  %i.ajc = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.ajb) ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 5 uses
  store ptr %i.ajc, ptr %i.ajd, align 8, !tbaa !102
  %.not1117 = icmp eq ptr %i.ajc, null
  br i1 %.not1117, label %.critedge1169, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge1443
  %i.aje = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.ajf = load i8, ptr %i.aem, align 1, !tbaa !96
  %i.ajg = zext i8 %i.ajf to i64
  %i.ajh = getelementptr inbounds nuw [2120 x i8], ptr %i.aje, i64 %i.ajg
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !61
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = shl nsw i64 %i.ajk, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajc, i8 0, i64 %i.ajl, i1 false)
  %i.ajm = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.ajn = load i8, ptr %i.aem, align 1, !tbaa !96
  %i.ajo = zext i8 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw [2120 x i8], ptr %i.ajm, i64 %i.ajo ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !61
  %i.ajs = icmp sgt i32 %i.ajr, 0
  br i1 %i.ajs, label %.lr.ph1450, label %._crit_edge1451

.lr.ph1450:                                       ; preds = %bb.hc, %._crit_edge1447
  %indvars.iv1658 = phi i64 [ %indvars.iv.next1659, %._crit_edge1447 ], [ 0, %bb.hc ] ; 6 uses
  %i.ajt = phi ptr [ %i.akp, %._crit_edge1447 ], [ %i.ajp, %bb.hc ]
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !90 ; 4 uses
  %i.ajv = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.aju) ; 2 uses
  %i.ajw = load ptr, ptr %i.ajd, align 8, !tbaa !102
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ajw, i64 %indvars.iv1658
  store ptr %i.ajv, ptr %i.ajx, align 8, !tbaa !103
  %.not1118 = icmp eq ptr %i.ajv, null
  br i1 %.not1118, label %.critedge1169, label %.preheader1254

.preheader1254:                                   ; preds = %.lr.ph1450
  %i.ajy = icmp sgt i32 %i.aju, 0
  br i1 %i.ajy, label %.lr.ph1446.preheader, label %._crit_edge1447

.lr.ph1446.preheader:                             ; preds = %.preheader1254
  %i.ajz = zext nneg i32 %i.aju to i64            ; 3 uses
  %i.aka = trunc nuw nsw i64 %indvars.iv1658 to i32 ; 3 uses
  %.pre1707 = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %xtraiter2035 = and i64 %i.ajz, 1
  %lcmp.mod2036.not = icmp eq i64 %xtraiter2035, 0
  br i1 %lcmp.mod2036.not, label %.lr.ph1446.prol.loopexit, label %.lr.ph1446.prol

.lr.ph1446.prol:                                  ; preds = %.lr.ph1446.preheader
  %indvars.iv.next1656.prol = add nsw i64 %i.ajz, -1 ; 2 uses
  %2 = zext i8 %.pre1707 to i32
  %3 = srem i32 %i.aka, %2
  %4 = trunc i32 %3 to i8
  %5 = load ptr, ptr %i.ajd, align 8, !tbaa !102
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1658
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next1656.prol
  store i8 %4, ptr %8, align 1, !tbaa !49
  %9 = load i8, ptr %i.aej, align 4, !tbaa !369   ; 2 uses
  %10 = zext i8 %9 to i32
  %11 = sdiv i32 %i.aka, %10
  br label %.lr.ph1446.prol.loopexit

.lr.ph1446.prol.loopexit:                         ; preds = %.lr.ph1446.prol, %.lr.ph1446.preheader
  %.unr = phi i8 [ %.pre1707, %.lr.ph1446.preheader ], [ %9, %.lr.ph1446.prol ]
  %indvars.iv1655.unr = phi i64 [ %i.ajz, %.lr.ph1446.preheader ], [ %indvars.iv.next1656.prol, %.lr.ph1446.prol ]
  %.09391445.unr = phi i32 [ %i.aka, %.lr.ph1446.preheader ], [ %11, %.lr.ph1446.prol ]
  %12 = icmp eq i32 %i.aju, 1
  br i1 %12, label %._crit_edge1447, label %.lr.ph1446

.lr.ph1446:                                       ; preds = %.lr.ph1446.prol.loopexit, %.lr.ph1446
  %i.akb = phi i8 [ %i.akj, %.lr.ph1446 ], [ %.unr, %.lr.ph1446.prol.loopexit ]
  %indvars.iv1655 = phi i64 [ %indvars.iv.next1656, %.lr.ph1446 ], [ %indvars.iv1655.unr, %.lr.ph1446.prol.loopexit ] ; 3 uses
  %.09391445 = phi i32 [ %i.akl, %.lr.ph1446 ], [ %.09391445.unr, %.lr.ph1446.prol.loopexit ] ; 2 uses
  %13 = zext i8 %i.akb to i32
  %14 = srem i32 %.09391445, %13
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %i.ajd, align 8, !tbaa !102
  %17 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv1658
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = getelementptr i8, ptr %18, i64 %indvars.iv1655
  %20 = getelementptr i8, ptr %19, i64 -1
  store i8 %15, ptr %20, align 1, !tbaa !49
  %21 = load i8, ptr %i.aej, align 4, !tbaa !369  ; 2 uses
  %22 = zext i8 %21 to i32
  %23 = sdiv i32 %.09391445, %22                  ; 2 uses
  %indvars.iv.next1656 = add nsw i64 %indvars.iv1655, -2 ; 2 uses
  %i.akc = zext i8 %21 to i32
  %i.akd = srem i32 %23, %i.akc
  %i.ake = trunc i32 %i.akd to i8
  %i.akf = load ptr, ptr %i.ajd, align 8, !tbaa !102
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %indvars.iv1658
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !103
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 %indvars.iv.next1656
  store i8 %i.ake, ptr %i.aki, align 1, !tbaa !49
  %i.akj = load i8, ptr %i.aej, align 4, !tbaa !369 ; 2 uses
  %i.akk = zext i8 %i.akj to i32
  %i.akl = sdiv i32 %23, %i.akk
  %24 = icmp sgt i64 %indvars.iv1655, 2
  br i1 %24, label %.lr.ph1446, label %._crit_edge1447, !llvm.loop !341

._crit_edge1447:                                  ; preds = %.lr.ph1446.prol.loopexit, %.lr.ph1446, %.preheader1254
  %indvars.iv.next1659 = add nuw nsw i64 %indvars.iv1658, 1 ; 2 uses
  %i.akm = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.akn = load i8, ptr %i.aem, align 1, !tbaa !96
  %i.ako = zext i8 %i.akn to i64
  %i.akp = getelementptr inbounds nuw [2120 x i8], ptr %i.akm, i64 %i.ako ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 4
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !61
  %i.aks = sext i32 %i.akr to i64
  %i.akt = icmp slt i64 %indvars.iv.next1659, %i.aks
  br i1 %i.akt, label %.lr.ph1450, label %._crit_edge1451, !llvm.loop !342

._crit_edge1451:                                  ; preds = %._crit_edge1447, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %indvars.iv.next1662 = add nuw nsw i64 %indvars.iv1661, 1 ; 2 uses
  %i.aku = load i32, ptr %i.adf, align 8, !tbaa !139
  %i.akv = sext i32 %i.aku to i64
  %i.akw = icmp slt i64 %indvars.iv.next1662, %i.akv
  br i1 %i.akw, label %bb.fz, label %._crit_edge1455, !llvm.loop !343

._crit_edge1455:                                  ; preds = %._crit_edge1451, %bb.fy
  %i.akx = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.aky = add i32 %i.akx, 1                      ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 5 uses
  store i32 %i.aky, ptr %i.akz, align 8, !tbaa !140
  %i.ala = mul i32 %i.aky, 48
  %i.alb = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.ala) ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.alb, ptr %i.alc, align 8, !tbaa !121
  %i.ald = icmp eq ptr %i.alb, null
  br i1 %i.ald, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %._crit_edge1455
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.ale, align 4
  br label %.critedge

bb.he:                                            ; preds = %._crit_edge1455
  %i.alf = load i32, ptr %i.akz, align 8, !tbaa !140
  %i.alg = sext i32 %i.alf to i64
  %i.alh = mul nsw i64 %i.alg, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.alb, i8 0, i64 %i.alh, i1 false)
  %i.ali = load i32, ptr %i.akz, align 8, !tbaa !140
  %i.alj = icmp sgt i32 %i.ali, 0
  br i1 %i.alj, label %.lr.ph1469, label %._crit_edge1470

.lr.ph1469:                                       ; preds = %bb.he, %._crit_edge1465
  %indvars.iv1678 = phi i64 [ %indvars.iv.next1679, %._crit_edge1465 ], [ 0, %bb.he ] ; 2 uses
  %i.alk = load ptr, ptr %i.alc, align 8, !tbaa !121
  %i.all = getelementptr inbounds nuw [48 x i8], ptr %i.alk, i64 %indvars.iv1678 ; 7 uses
  %i.alm = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %.not1107 = icmp eq i32 %i.alm, 0
  br i1 %.not1107, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph1469
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.aln, align 4
  br label %.critedge

bb.hg:                                            ; preds = %.lr.ph1469
  %i.alo = load i32, ptr %i.bd, align 4, !tbaa !101
  %i.alp = mul i32 %i.alo, 3
  %i.alq = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.alp) ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.all, i64 8 ; 5 uses
  store ptr %i.alq, ptr %i.alr, align 8, !tbaa !109
  %i.als = icmp eq ptr %i.alq, null
  br i1 %i.als, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.alt, align 4
  br label %.critedge

bb.hi:                                            ; preds = %bb.hg
  %i.alu = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1108 = icmp eq i32 %i.alu, 0
  br i1 %.not1108, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alv = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %i.alw = trunc i32 %i.alv to i8
  %i.alx = add i8 %i.alw, 1
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hi, %bb.hj
  %.sink = phi i8 [ %i.alx, %bb.hj ], [ 1, %bb.hi ]
  %i.aly = getelementptr inbounds nuw i8, ptr %i.all, i64 16 ; 4 uses
  store i8 %.sink, ptr %i.aly, align 8, !tbaa !125
  %i.alz = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %.not1109 = icmp eq i32 %i.alz, 0
  br i1 %.not1109, label %bb.ht, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ama = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.amb = trunc i32 %i.ama to i16
  %i.amc = add i16 %i.amb, 1                      ; 3 uses
  store i16 %i.amc, ptr %i.all, align 8, !tbaa !124
  %i.amd = zext i16 %i.amc to i32
  %i.ame = load i32, ptr %i.bd, align 4, !tbaa !101 ; 2 uses
  %i.amf = icmp slt i32 %i.ame, %i.amd
  br i1 %i.amf, label %bb.hm, label %.preheader1252

.preheader1252:                                   ; preds = %bb.hl
  %.not1494 = icmp eq i16 %i.amc, 0
  br i1 %.not1494, label %.loopexit1253, label %.lr.ph1457

bb.hm:                                            ; preds = %bb.hl
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.amg, align 4
  br label %.critedge

bb.hn:                                            ; preds = %bb.hr
  %indvars.iv.next1665 = add nuw nsw i64 %indvars.iv1664, 1 ; 2 uses
  %i.amh = load i16, ptr %i.all, align 8, !tbaa !124
  %i.ami = zext i16 %i.amh to i64
  %i.amj = icmp samesign ult i64 %indvars.iv.next1665, %i.ami
  br i1 %i.amj, label %.lr.ph1457, label %.loopexit1253, !llvm.loop !344

.lr.ph1457:                                       ; preds = %.preheader1252, %bb.hn
  %i.amk = phi i32 [ %i.anb, %bb.hn ], [ %i.ame, %.preheader1252 ]
  %indvars.iv1664 = phi i64 [ %indvars.iv.next1665, %bb.hn ], [ 0, %.preheader1252 ] ; 3 uses
  %i.aml = add nsw i32 %i.amk, -1
  %i.amm = call i32 @ilog(i32 noundef %i.aml)
  %i.amn = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.amm)
  %i.amo = trunc i32 %i.amn to i8
  %i.amp = load ptr, ptr %i.alr, align 8, !tbaa !109
  %i.amq = getelementptr inbounds nuw [3 x i8], ptr %i.amp, i64 %indvars.iv1664
  store i8 %i.amo, ptr %i.amq, align 1, !tbaa !126
  %i.amr = load i32, ptr %i.bd, align 4, !tbaa !101
  %i.ams = add nsw i32 %i.amr, -1
  %i.amt = call i32 @ilog(i32 noundef %i.ams)
  %i.amu = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.amt) ; 2 uses
  %i.amv = trunc i32 %i.amu to i8                 ; 2 uses
  %i.amw = load ptr, ptr %i.alr, align 8, !tbaa !109
  %i.amx = getelementptr inbounds nuw [3 x i8], ptr %i.amw, i64 %indvars.iv1664 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 1
  store i8 %i.amv, ptr %i.amy, align 1, !tbaa !127
  %i.amz = load i8, ptr %i.amx, align 1, !tbaa !126 ; 2 uses
  %i.ana = zext i8 %i.amz to i32
  %i.anb = load i32, ptr %i.bd, align 4, !tbaa !101 ; 3 uses
  %.not1114 = icmp sgt i32 %i.anb, %i.ana
  br i1 %.not1114, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1457
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.anc, align 4
  br label %.critedge

bb.hp:                                            ; preds = %.lr.ph1457
  %i.and = and i32 %i.amu, 255
  %.not1115 = icmp samesign ugt i32 %i.anb, %i.and
  br i1 %.not1115, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ane, align 4
  br label %.critedge

bb.hr:                                            ; preds = %bb.hp
  %i.anf = icmp eq i8 %i.amz, %i.amv
  br i1 %i.anf, label %bb.hs, label %bb.hn

bb.hs:                                            ; preds = %bb.hr
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ang, align 4
  br label %.critedge

bb.ht:                                            ; preds = %bb.hk
  store i16 0, ptr %i.all, align 8, !tbaa !124
  br label %.loopexit1253

.loopexit1253:                                    ; preds = %bb.hn, %.preheader1252, %bb.ht
  %i.anh = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %.not1110 = icmp eq i32 %i.anh, 0
  br i1 %.not1110, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.loopexit1253
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ani, align 4
  br label %.critedge

bb.hv:                                            ; preds = %.loopexit1253
  %i.anj = load i8, ptr %i.aly, align 8, !tbaa !125 ; 2 uses
  %i.ank = icmp ugt i8 %i.anj, 1
  %i.anl = load i32, ptr %i.bd, align 4, !tbaa !101 ; 3 uses
  %i.anm = icmp sgt i32 %i.anl, 0                 ; 2 uses
  br i1 %i.ank, label %.preheader1249, label %.preheader1250

.preheader1250:                                   ; preds = %bb.hv
  br i1 %i.anm, label %.lr.ph1459, label %.loopexit

.lr.ph1459:                                       ; preds = %.preheader1250
  %i.ann = load ptr, ptr %i.alr, align 8, !tbaa !109 ; 9 uses
  %wide.trip.count1670 = zext nneg i32 %i.anl to i64 ; 2 uses
  %xtraiter2036 = and i64 %wide.trip.count1670, 7 ; 3 uses
  %i.ano = icmp ult i32 %i.anl, 8
  br i1 %i.ano, label %.epil.preheader2035, label %.lr.ph1459.new

.lr.ph1459.new:                                   ; preds = %.lr.ph1459
  %unroll_iter2039 = and i64 %wide.trip.count1670, 2147483640
  br label %bb.hy
end_hunk_0
